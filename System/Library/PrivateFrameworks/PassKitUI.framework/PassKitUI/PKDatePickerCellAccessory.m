@interface PKDatePickerCellAccessory
+ (id)accessoryWithDatePicker:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)_initWithDatePicker:(id)a3;
- (void)layoutSubviews;
@end

@implementation PKDatePickerCellAccessory

+ (id)accessoryWithDatePicker:(id)a3
{
  v3 = a3;
  v4 = [[PKDatePickerCellAccessory alloc] _initWithDatePicker:v3];

  v5 = [objc_alloc(MEMORY[0x1E69DC790]) initWithCustomView:v4 placement:1];
  [v5 setMaintainsFixedSize:1];
  [v5 setReservedLayoutWidth:0.0];

  return v5;
}

- (id)_initWithDatePicker:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PKDatePickerCellAccessory;
  v6 = [(PKDatePickerCellAccessory *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_datePicker, a3);
    [(PKDatePickerCellAccessory *)v7 addSubview:v5];
    [(PKDatePickerCellAccessory *)v7 sizeThatFits:1.79769313e308, 1.79769313e308];
    [(PKDatePickerCellAccessory *)v7 setFrame:0.0, 0.0, v8, v9];
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)a3
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