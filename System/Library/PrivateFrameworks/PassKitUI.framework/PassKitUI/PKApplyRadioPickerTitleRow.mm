@interface PKApplyRadioPickerTitleRow
- (PKApplyRadioPickerTitleRow)initWithTitle:(id)a3;
- (void)configureCell:(id)a3;
@end

@implementation PKApplyRadioPickerTitleRow

- (PKApplyRadioPickerTitleRow)initWithTitle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKApplyRadioPickerTitleRow;
  v6 = [(PKApplyRadioPickerTitleRow *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_title, a3);
  }

  return v7;
}

- (void)configureCell:(id)a3
{
  v4 = MEMORY[0x1E69DCC28];
  v5 = a3;
  v11 = [v4 cellConfiguration];
  v6 = [v11 textProperties];
  [v6 setNumberOfLines:0];
  v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD00], 0);
  [v6 setFont:v7];

  v8 = PKTableViewCellTextInset();
  [v11 setDirectionalLayoutMargins:{v8, v8, 0.0, v8}];
  [v11 setText:self->_title];
  v9 = [MEMORY[0x1E69DC6E8] listCellConfiguration];
  v10 = PKProvisioningSecondaryBackgroundColor();
  [v9 setBackgroundColor:v10];

  [v5 setBackgroundConfiguration:v9];
  [v5 setContentConfiguration:v11];
}

@end