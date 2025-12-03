@interface PKSuggestionPickerCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKSuggestionPickerCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component;
- (void)setValues:(id)values;
- (void)updateSelectedValue:(id)value;
@end

@implementation PKSuggestionPickerCell

- (PKSuggestionPickerCell)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PKSuggestionPickerCell;
  v3 = [(PKSuggestionPickerCell *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCD78]);
    pickerView = v3->_pickerView;
    v3->_pickerView = v4;

    [(UIPickerView *)v3->_pickerView setDelegate:v3];
    [(UIPickerView *)v3->_pickerView setDataSource:v3];
    v6 = *MEMORY[0x1E69B9CD8];
    [(UIPickerView *)v3->_pickerView setAccessibilityIdentifier:*MEMORY[0x1E69B9CD8]];
    contentView = [(PKSuggestionPickerCell *)v3 contentView];
    [contentView addSubview:v3->_pickerView];
    secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [contentView setBackgroundColor:secondarySystemGroupedBackgroundColor];

    [(PKSuggestionPickerCell *)v3 setAccessibilityIdentifier:v6];
  }

  return v3;
}

- (void)setValues:(id)values
{
  objc_storeStrong(&self->_values, values);
  valuesCopy = values;
  [(UIPickerView *)self->_pickerView reloadAllComponents];
}

- (void)updateSelectedValue:(id)value
{
  v4 = [(NSArray *)self->_values indexOfObject:value];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    pickerView = self->_pickerView;

    [(UIPickerView *)pickerView selectRow:v5 inComponent:0 animated:1];
  }
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PKSuggestionPickerCell;
  [(PKSuggestionPickerCell *)&v12 layoutSubviews];
  contentView = [(PKSuggestionPickerCell *)self contentView];
  [contentView frame];
  v5 = v4;
  v7 = v6 + 11.0;
  v9 = v8 + 0.0;
  v11 = v10 + -22.0;

  [(UIPickerView *)self->_pickerView setFrame:v7, v9, v11, v5];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIPickerView *)self->_pickerView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)pickerView:(id)view didSelectRow:(int64_t)row inComponent:(int64_t)component
{
  selectionChanged = self->_selectionChanged;
  if (selectionChanged)
  {
    selectionChanged[2](selectionChanged, row);
  }
}

@end