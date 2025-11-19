@interface PKAddressPickerField
- (PKAddressPickerField)initWithFrame:(CGRect)a3 addressTextField:(id)a4;
@end

@implementation PKAddressPickerField

- (PKAddressPickerField)initWithFrame:(CGRect)a3 addressTextField:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v11 = [v10 contactFieldConfiguration];
  if ([v11 type] == 2)
  {
    v16.receiver = self;
    v16.super_class = PKAddressPickerField;
    v12 = [(PKAddressPickerField *)&v16 initWithFrame:x, y, width, height];
    p_isa = &v12->super.super.super.super.isa;
    if (v12)
    {
      objc_storeStrong(&v12->_addressTextField, a4);
      objc_storeStrong(p_isa + 69, v11);
    }

    self = p_isa;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end