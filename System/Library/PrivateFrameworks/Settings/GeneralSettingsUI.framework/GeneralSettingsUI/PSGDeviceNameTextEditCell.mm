@interface PSGDeviceNameTextEditCell
- (void)layoutSubviews;
- (void)textFieldDidBeginEditing:(id)a3;
@end

@implementation PSGDeviceNameTextEditCell

- (void)textFieldDidBeginEditing:(id)a3
{
  v5.receiver = self;
  v5.super_class = PSGDeviceNameTextEditCell;
  [(PSEditableTableCell *)&v5 textFieldDidBeginEditing:a3];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76730] object:0];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PSGDeviceNameTextEditCell;
  [(PSEditableTableCell *)&v5 layoutSubviews];
  v3 = [(PSGDeviceNameTextEditCell *)self editableTextField];
  v4 = v3;
  if (v3)
  {
    [v3 frame];
    [v4 setFrame:?];
  }
}

@end