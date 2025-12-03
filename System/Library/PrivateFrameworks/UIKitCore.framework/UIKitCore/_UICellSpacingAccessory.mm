@interface _UICellSpacingAccessory
+ (id)accessoryWithIdentifier:(id)identifier size:(CGSize)size;
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)view;
@end

@implementation _UICellSpacingAccessory

+ (id)accessoryWithIdentifier:(id)identifier size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS____UICellSpacingAccessory;
  v6 = objc_msgSendSuper2(&v8, sel_accessoryWithIdentifier_, identifier);
  v6[5] = width;
  v6[6] = height;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = _UICellSpacingAccessory;
  if ([(_UICellAccessory *)&v7 isEqual:equalCopy])
  {
    v5 = equalCopy[6] == self->_size.height && equalCopy[5] == self->_size.width;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)view
{
  view = self->super._view;
  if (!view)
  {
    v4 = [[UIView alloc] initWithFrame:0.0, 0.0, self->_size.width, self->_size.height];
    v5 = self->super._view;
    self->super._view = v4;

    view = self->super._view;
  }

  return view;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end