@interface PKDashboardPassMessageImageDescriptorSymbol
- (BOOL)isEqual:(id)a3;
- (PKDashboardPassMessageImageDescriptorSymbol)initWithName:(id)a3 tintColor:(id)a4 backgroundColor:(id)a5;
@end

@implementation PKDashboardPassMessageImageDescriptorSymbol

- (PKDashboardPassMessageImageDescriptorSymbol)initWithName:(id)a3 tintColor:(id)a4 backgroundColor:(id)a5
{
  v9 = a3;
  if (v9)
  {
    v14.receiver = self;
    v14.super_class = PKDashboardPassMessageImageDescriptorSymbol;
    v10 = [(PKDashboardPassMessageImageDescriptor *)&v14 initWithType:1 tintColor:a4 backgroundColor:a5];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_name, a3);
    }

    self = v11;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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