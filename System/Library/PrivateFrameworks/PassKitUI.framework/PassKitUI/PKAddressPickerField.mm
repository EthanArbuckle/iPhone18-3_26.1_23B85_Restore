@interface PKAddressPickerField
- (PKAddressPickerField)initWithFrame:(CGRect)frame addressTextField:(id)field;
@end

@implementation PKAddressPickerField

- (PKAddressPickerField)initWithFrame:(CGRect)frame addressTextField:(id)field
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  fieldCopy = field;
  contactFieldConfiguration = [fieldCopy contactFieldConfiguration];
  if ([contactFieldConfiguration type] == 2)
  {
    v16.receiver = self;
    v16.super_class = PKAddressPickerField;
    height = [(PKAddressPickerField *)&v16 initWithFrame:x, y, width, height];
    p_isa = &height->super.super.super.super.isa;
    if (height)
    {
      objc_storeStrong(&height->_addressTextField, field);
      objc_storeStrong(p_isa + 69, contactFieldConfiguration);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end