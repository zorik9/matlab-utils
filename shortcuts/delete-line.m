currentEditor = matlab.desktop.editor.getActive;
originalSelection =currentEditor.Selection;
row = originalSelection(1)-1;% get row of cursor
C = strsplit(currentEditor.Text,'\n','CollapseDelimiters',false) % Split text of editor by lines
C(row) = [];%remove current row
currentEditor.Text = strjoin(C,'\n');%join it together
currentEditor.Selection =  [originalSelection(1)-1 1  originalSelection(1) 0 ];
  % make sure cursor is on the same line and on first position