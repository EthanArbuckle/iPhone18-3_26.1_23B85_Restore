@interface PKApplyRadioPickerRow
- (PKApplyRadioPickerRow)initWithTitle:(id)title submissionValue:(id)value;
- (void)configureCell:(id)cell;
@end

@implementation PKApplyRadioPickerRow

- (PKApplyRadioPickerRow)initWithTitle:(id)title submissionValue:(id)value
{
  titleCopy = title;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = PKApplyRadioPickerRow;
  v9 = [(PKApplyRadioPickerRow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_title, title);
    objc_storeStrong(&v10->_submissionValue, value);
  }

  return v10;
}

- (void)configureCell:(id)cell
{
  cellCopy = cell;
  [(PKApplyRadioPickerRow *)self cellClass];
  if (objc_opt_isKindOfClass())
  {
    selected = self->_selected;
    v5 = cellCopy;
    [v5 setRadioButtonSelected:selected];
    [v5 setTitle:self->_title];
    [v5 setAction:self->_action];
    [v5 setAccessibilityIdentifier:self->_submissionValue];
  }
}

@end