@interface PKApplyListPickerRow
- (PKApplyListPickerRow)initWithPickerItem:(id)a3;
- (void)configureCell:(id)a3;
@end

@implementation PKApplyListPickerRow

- (PKApplyListPickerRow)initWithPickerItem:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PKApplyListPickerRow;
  v6 = [(PKApplyListPickerRow *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pickerItem, a3);
    v8 = [v5 localizedDisplayName];
    title = v7->_title;
    v7->_title = v8;

    v10 = [v5 submissionValue];
    submissionValue = v7->_submissionValue;
    v7->_submissionValue = v10;
  }

  return v7;
}

- (void)configureCell:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PKApplyListPickerRow *)self cellClass];
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E69DCC28] cellConfiguration];
    if (self->_selected)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DC788]);
      v7 = [MEMORY[0x1E69DC888] systemBlueColor];
      [v6 setTintColor:v7];

      v13[0] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [v4 setAccessories:v8];
    }

    else
    {
      [v4 setAccessories:MEMORY[0x1E695E0F0]];
    }

    v9 = [v5 textProperties];
    [v9 setNumberOfLines:0];
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [v9 setFont:v10];

    [v5 setText:self->_title];
    v11 = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    v12 = PKProvisioningSecondaryBackgroundColor();
    [v11 setBackgroundColor:v12];

    [v4 setBackgroundConfiguration:v11];
    [v4 setContentConfiguration:v5];
    [v4 setAccessibilityIdentifier:self->_submissionValue];
  }
}

@end