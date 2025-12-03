@interface PKDashboardPassMessageImageDescriptor
- (BOOL)isEqual:(id)equal;
- (PKDashboardPassMessageImageDescriptor)initWithType:(unint64_t)type tintColor:(id)color backgroundColor:(id)backgroundColor;
@end

@implementation PKDashboardPassMessageImageDescriptor

- (PKDashboardPassMessageImageDescriptor)initWithType:(unint64_t)type tintColor:(id)color backgroundColor:(id)backgroundColor
{
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  v14.receiver = self;
  v14.super_class = PKDashboardPassMessageImageDescriptor;
  v11 = [(PKDashboardPassMessageImageDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = type;
    objc_storeStrong(&v11->_tintColor, color);
    objc_storeStrong(&v12->_backgroundColor, backgroundColor);
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (self->_type == v6->_type && PKEqualObjects())
    {
      v7 = PKEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end