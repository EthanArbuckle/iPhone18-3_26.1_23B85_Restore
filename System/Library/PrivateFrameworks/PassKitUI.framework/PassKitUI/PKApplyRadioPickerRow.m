@interface PKApplyRadioPickerRow
- (PKApplyRadioPickerRow)initWithTitle:(id)a3 submissionValue:(id)a4;
- (void)configureCell:(id)a3;
@end

@implementation PKApplyRadioPickerRow

- (PKApplyRadioPickerRow)initWithTitle:(id)a3 submissionValue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKApplyRadioPickerRow;
  v9 = [(PKApplyRadioPickerRow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, a3);
    objc_storeStrong(&v10->_submissionValue, a4);
  }

  return v10;
}

- (void)configureCell:(id)a3
{
  v6 = a3;
  [(PKApplyRadioPickerRow *)self cellClass];
  if (objc_opt_isKindOfClass())
  {
    selected = self->_selected;
    v5 = v6;
    [v5 setRadioButtonSelected:selected];
    [v5 setTitle:self->_title];
    [v5 setAction:self->_action];
    [v5 setAccessibilityIdentifier:self->_submissionValue];
  }
}

@end