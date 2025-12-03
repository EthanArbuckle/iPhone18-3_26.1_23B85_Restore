@interface PKDatePickerCellAccessory
+ (id)accessoryWithDatePicker:(id)picker;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)_initWithDatePicker:(id)picker;
- (void)layoutSubviews;
@end

@implementation PKDatePickerCellAccessory

+ (id)accessoryWithDatePicker:(id)picker
{
  pickerCopy = picker;
  v4 = [[PKDatePickerCellAccessory alloc] _initWithDatePicker:pickerCopy];

  v5 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v4 placement:1];
  [v5 setMaintainsFixedSize:1];
  [v5 setReservedLayoutWidth:0.0];

  return v5;
}

- (id)_initWithDatePicker:(id)picker
{
  pickerCopy = picker;
  v11.receiver = self;
  v11.super_class = PKDatePickerCellAccessory;
  v6 = [(PKDatePickerCellAccessory *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_datePicker, picker);
    [(PKDatePickerCellAccessory *)v7 addSubview:pickerCopy];
    [(PKDatePickerCellAccessory *)v7 sizeThatFits:1.79769313e308, 1.79769313e308];
    [(PKDatePickerCellAccessory *)v7 setFrame:0.0, 0.0, v8, v9];
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIDatePicker *)self->_datePicker systemLayoutSizeFittingSize:50.0, 1.79769313e308];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  [(PKDatePickerCellAccessory *)self bounds];
  [(PKDatePickerCellAccessory *)self sizeThatFits:v3, v4];
  datePicker = self->_datePicker;

  [(UIDatePicker *)datePicker setFrame:0.0, 0.0, v5, v6];
}

@end