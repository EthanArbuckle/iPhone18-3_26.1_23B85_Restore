@interface PKApplyRequiredFieldRow
- (PKApplyRequiredFieldRow)initWithField:(id)field cellDelegate:(id)delegate;
- (void)configureCell:(id)cell;
@end

@implementation PKApplyRequiredFieldRow

- (PKApplyRequiredFieldRow)initWithField:(id)field cellDelegate:(id)delegate
{
  fieldCopy = field;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = PKApplyRequiredFieldRow;
  v9 = [(PKApplyRequiredFieldRow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_field, field);
    objc_storeWeak(&v10->_cellDelegate, delegateCopy);
  }

  return v10;
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  [(PKApplyRequiredFieldRow *)self cellClass];
  if (objc_opt_isKindOfClass())
  {
    v4 = cellCopy;
    v5 = +[PKListTextFieldContentConfiguration valueCellConfiguration];
    currentValue = [(PKPaymentSetupField *)self->_field currentValue];
    [v5 setText:currentValue];

    localizedPlaceholder = [(PKPaymentSetupField *)self->_field localizedPlaceholder];
    [v5 setPlaceholderText:localizedPlaceholder];

    [v5 setClearsOnBeginEditing:0];
    [v5 directionalLayoutMargins];
    [v5 setDirectionalLayoutMargins:10.0];
    [v5 setKeyboardType:1];
    [v5 setReturnKeyType:9];
    secondaryTextProperties = [v5 secondaryTextProperties];
    v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC70]);
    [secondaryTextProperties setFont:v9];

    [v4 setContentConfiguration:v5];
    WeakRetained = objc_loadWeakRetained(&self->_cellDelegate);
    [v4 setDelegate:WeakRetained];

    listCellConfiguration = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
    [listCellConfiguration setBackgroundColor:secondarySystemBackgroundColor];

    [v4 setBackgroundConfiguration:listCellConfiguration];
    [v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9B78]];
  }
}

@end