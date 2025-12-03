@interface PKDashboardPassMessageImageDescriptorSymbol
- (BOOL)isEqual:(id)equal;
- (PKDashboardPassMessageImageDescriptorSymbol)initWithName:(id)name tintColor:(id)color backgroundColor:(id)backgroundColor;
@end

@implementation PKDashboardPassMessageImageDescriptorSymbol

- (PKDashboardPassMessageImageDescriptorSymbol)initWithName:(id)name tintColor:(id)color backgroundColor:(id)backgroundColor
{
  nameCopy = name;
  if (nameCopy)
  {
    v14.receiver = self;
    v14.super_class = PKDashboardPassMessageImageDescriptorSymbol;
    v10 = [(PKDashboardPassMessageImageDescriptor *)&v14 initWithType:1 tintColor:color backgroundColor:backgroundColor];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_name, name);
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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
    v9.receiver = self;
    v9.super_class = PKDashboardPassMessageImageDescriptorSymbol;
    if ([(PKDashboardPassMessageImageDescriptor *)&v9 isEqual:v6])
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