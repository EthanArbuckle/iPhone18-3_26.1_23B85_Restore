@interface PKApplyMultilevelPickerRow
- (PKApplyMultilevelPickerRow)initWithPicker:(id)picker;
- (void)configureCell:(id)cell;
@end

@implementation PKApplyMultilevelPickerRow

- (PKApplyMultilevelPickerRow)initWithPicker:(id)picker
{
  pickerCopy = picker;
  v9.receiver = self;
  v9.super_class = PKApplyMultilevelPickerRow;
  v6 = [(PKApplyMultilevelPickerRow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_picker, picker);
  }

  return v7;
}

- (void)configureCell:(id)cell
{
  v18[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  [(PKApplyMultilevelPickerRow *)self cellClass];
  if (objc_opt_isKindOfClass())
  {
    valueCellConfiguration = [MEMORY[0x1E69DCC28] valueCellConfiguration];
    textProperties = [valueCellConfiguration textProperties];
    [textProperties setNumberOfLines:0];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [textProperties setFont:v7];

    localizedDisplayName = [(PKPaymentSetupFieldPicker *)self->_picker localizedDisplayName];
    localizedPlaceholder = [(PKPaymentSetupFieldPicker *)self->_picker localizedPlaceholder];
    currentValue = [(PKPaymentSetupFieldPicker *)self->_picker currentValue];

    if (currentValue)
    {
      currentValue2 = [(PKPaymentSetupFieldPicker *)self->_picker currentValue];
      localizedDisplayName2 = [currentValue2 localizedDisplayName];

      localizedPlaceholder = 0;
      localizedDisplayName = localizedDisplayName2;
    }

    [valueCellConfiguration setText:localizedDisplayName];
    [valueCellConfiguration setSecondaryText:localizedPlaceholder];
    listCellConfiguration = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    v14 = PKProvisioningSecondaryBackgroundColor();
    [listCellConfiguration setBackgroundColor:v14];

    [cellCopy setBackgroundConfiguration:listCellConfiguration];
    [cellCopy setContentConfiguration:valueCellConfiguration];
    v15 = objc_alloc_init(MEMORY[0x1E69DC7A8]);
    v18[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    [cellCopy setAccessories:v16];

    identifier = [(PKApplyMultilevelPickerRow *)self identifier];
    [cellCopy setAccessibilityIdentifier:identifier];
  }
}

@end