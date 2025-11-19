@interface PKApplyMultilevelPickerRow
- (PKApplyMultilevelPickerRow)initWithPicker:(id)a3;
- (void)configureCell:(id)a3;
@end

@implementation PKApplyMultilevelPickerRow

- (PKApplyMultilevelPickerRow)initWithPicker:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKApplyMultilevelPickerRow;
  v6 = [(PKApplyMultilevelPickerRow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_picker, a3);
  }

  return v7;
}

- (void)configureCell:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(PKApplyMultilevelPickerRow *)self cellClass];
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x1E69DCC28] valueCellConfiguration];
    v6 = [v5 textProperties];
    [v6 setNumberOfLines:0];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [v6 setFont:v7];

    v8 = [(PKPaymentSetupFieldPicker *)self->_picker localizedDisplayName];
    v9 = [(PKPaymentSetupFieldPicker *)self->_picker localizedPlaceholder];
    v10 = [(PKPaymentSetupFieldPicker *)self->_picker currentValue];

    if (v10)
    {
      v11 = [(PKPaymentSetupFieldPicker *)self->_picker currentValue];
      v12 = [v11 localizedDisplayName];

      v9 = 0;
      v8 = v12;
    }

    [v5 setText:v8];
    [v5 setSecondaryText:v9];
    v13 = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    v14 = PKProvisioningSecondaryBackgroundColor();
    [v13 setBackgroundColor:v14];

    [v4 setBackgroundConfiguration:v13];
    [v4 setContentConfiguration:v5];
    v15 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
    v18[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [v4 setAccessories:v16];

    v17 = [(PKApplyMultilevelPickerRow *)self identifier];
    [v4 setAccessibilityIdentifier:v17];
  }
}

@end