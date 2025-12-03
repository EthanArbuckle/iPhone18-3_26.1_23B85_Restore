@interface PKApplyListPickerRow
- (PKApplyListPickerRow)initWithPickerItem:(id)item;
- (void)configureCell:(id)cell;
@end

@implementation PKApplyListPickerRow

- (PKApplyListPickerRow)initWithPickerItem:(id)item
{
  itemCopy = item;
  v13.receiver = self;
  v13.super_class = PKApplyListPickerRow;
  v6 = [(PKApplyListPickerRow *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pickerItem, item);
    localizedDisplayName = [itemCopy localizedDisplayName];
    title = v7->_title;
    v7->_title = localizedDisplayName;

    submissionValue = [itemCopy submissionValue];
    submissionValue = v7->_submissionValue;
    v7->_submissionValue = submissionValue;
  }

  return v7;
}

- (void)configureCell:(id)cell
{
  v13[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  [(PKApplyListPickerRow *)self cellClass];
  if (objc_opt_isKindOfClass())
  {
    cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
    if (self->_selected)
    {
      v6 = objc_alloc_init(MEMORY[0x1E69DC788]);
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      [v6 setTintColor:systemBlueColor];

      v13[0] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
      [cellCopy setAccessories:v8];
    }

    else
    {
      [cellCopy setAccessories:MEMORY[0x1E695E0F0]];
    }

    textProperties = [cellConfiguration textProperties];
    [textProperties setNumberOfLines:0];
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [textProperties setFont:v10];

    [cellConfiguration setText:self->_title];
    listCellConfiguration = [MEMORY[0x1E69DC6E8] listCellConfiguration];
    v12 = PKProvisioningSecondaryBackgroundColor();
    [listCellConfiguration setBackgroundColor:v12];

    [cellCopy setBackgroundConfiguration:listCellConfiguration];
    [cellCopy setContentConfiguration:cellConfiguration];
    [cellCopy setAccessibilityIdentifier:self->_submissionValue];
  }
}

@end