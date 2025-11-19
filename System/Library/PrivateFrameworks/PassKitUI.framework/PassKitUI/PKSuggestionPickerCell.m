@interface PKSuggestionPickerCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKSuggestionPickerCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5;
- (void)setValues:(id)a3;
- (void)updateSelectedValue:(id)a3;
@end

@implementation PKSuggestionPickerCell

- (PKSuggestionPickerCell)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = PKSuggestionPickerCell;
  v3 = [(PKSuggestionPickerCell *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCD78]);
    pickerView = v3->_pickerView;
    v3->_pickerView = v4;

    [(UIPickerView *)v3->_pickerView setDelegate:v3];
    [(UIPickerView *)v3->_pickerView setDataSource:v3];
    v6 = *MEMORY[0x1E69B9CD8];
    [(UIPickerView *)v3->_pickerView setAccessibilityIdentifier:*MEMORY[0x1E69B9CD8]];
    v7 = [(PKSuggestionPickerCell *)v3 contentView];
    [v7 addSubview:v3->_pickerView];
    v8 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [v7 setBackgroundColor:v8];

    [(PKSuggestionPickerCell *)v3 setAccessibilityIdentifier:v6];
  }

  return v3;
}

- (void)setValues:(id)a3
{
  objc_storeStrong(&self->_values, a3);
  v5 = a3;
  [(UIPickerView *)self->_pickerView reloadAllComponents];
}

- (void)updateSelectedValue:(id)a3
{
  v4 = [(NSArray *)self->_values indexOfObject:a3];
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
  v3 = [(PKSuggestionPickerCell *)self contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6 + 11.0;
  v9 = v8 + 0.0;
  v11 = v10 + -22.0;

  [(UIPickerView *)self->_pickerView setFrame:v7, v9, v11, v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIPickerView *)self->_pickerView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)pickerView:(id)a3 didSelectRow:(int64_t)a4 inComponent:(int64_t)a5
{
  selectionChanged = self->_selectionChanged;
  if (selectionChanged)
  {
    selectionChanged[2](selectionChanged, a4);
  }
}

@end