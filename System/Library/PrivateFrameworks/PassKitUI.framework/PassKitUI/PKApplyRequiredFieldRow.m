@interface PKApplyRequiredFieldRow
- (PKApplyRequiredFieldRow)initWithField:(id)a3 cellDelegate:(id)a4;
- (void)configureCell:(id)a3;
@end

@implementation PKApplyRequiredFieldRow

- (PKApplyRequiredFieldRow)initWithField:(id)a3 cellDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKApplyRequiredFieldRow;
  v9 = [(PKApplyRequiredFieldRow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_field, a3);
    objc_storeWeak(&v10->_cellDelegate, v8);
  }

  return v10;
}

- (void)configureCell:(id)a3
{
  v13 = a3;
  [(PKApplyRequiredFieldRow *)self cellClass];
  if (objc_opt_isKindOfClass())
  {
    v4 = v13;
    v5 = +[PKListTextFieldContentConfiguration valueCellConfiguration];
    v6 = [(PKPaymentSetupField *)self->_field currentValue];
    [v5 setText:v6];

    v7 = [(PKPaymentSetupField *)self->_field localizedPlaceholder];
    [v5 setPlaceholderText:v7];

    [v5 setClearsOnBeginEditing:0];
    [v5 directionalLayoutMargins];
    [v5 setDirectionalLayoutMargins:10.0];
    [v5 setKeyboardType:1];
    [v5 setReturnKeyType:9];
    v8 = [v5 secondaryTextProperties];
    v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC70]);
    [v8 setFont:v9];

    [v4 setContentConfiguration:v5];
    WeakRetained = objc_loadWeakRetained(&self->_cellDelegate);
    [v4 setDelegate:WeakRetained];

    v11 = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    v12 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [v11 setBackgroundColor:v12];

    [v4 setBackgroundConfiguration:v11];
    [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9B78]];
  }
}

@end