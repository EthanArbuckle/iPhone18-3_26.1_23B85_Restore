@interface PSGDeviceNameTextEditCell
- (void)layoutSubviews;
- (void)textFieldDidBeginEditing:(id)editing;
@end

@implementation PSGDeviceNameTextEditCell

- (void)textFieldDidBeginEditing:(id)editing
{
  v5.receiver = self;
  v5.super_class = PSGDeviceNameTextEditCell;
  [(PSEditableTableCell *)&v5 textFieldDidBeginEditing:editing];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76730] object:0];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PSGDeviceNameTextEditCell;
  [(PSEditableTableCell *)&v5 layoutSubviews];
  editableTextField = [(PSGDeviceNameTextEditCell *)self editableTextField];
  v4 = editableTextField;
  if (editableTextField)
  {
    [editableTextField frame];
    [v4 setFrame:?];
  }
}

@end