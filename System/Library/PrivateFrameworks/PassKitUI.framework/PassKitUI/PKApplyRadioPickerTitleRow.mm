@interface PKApplyRadioPickerTitleRow
- (PKApplyRadioPickerTitleRow)initWithTitle:(id)title;
- (void)configureCell:(id)cell;
@end

@implementation PKApplyRadioPickerTitleRow

- (PKApplyRadioPickerTitleRow)initWithTitle:(id)title
{
  titleCopy = title;
  v9.receiver = self;
  v9.super_class = PKApplyRadioPickerTitleRow;
  v6 = [(PKApplyRadioPickerTitleRow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_title, title);
  }

  return v7;
}

- (void)configureCell:(id)cell
{
  v4 = MEMORY[0x1E69DCC28];
  cellCopy = cell;
  cellConfiguration = [v4 cellConfiguration];
  textProperties = [cellConfiguration textProperties];
  [textProperties setNumberOfLines:0];
  v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD00], 0);
  [textProperties setFont:v7];

  v8 = PKTableViewCellTextInset();
  [cellConfiguration setDirectionalLayoutMargins:{v8, v8, 0.0, v8}];
  [cellConfiguration setText:self->_title];
  listCellConfiguration = [MEMORY[0x1E69DC6E8] listCellConfiguration];
  v10 = PKProvisioningSecondaryBackgroundColor();
  [listCellConfiguration setBackgroundColor:v10];

  [cellCopy setBackgroundConfiguration:listCellConfiguration];
  [cellCopy setContentConfiguration:cellConfiguration];
}

@end