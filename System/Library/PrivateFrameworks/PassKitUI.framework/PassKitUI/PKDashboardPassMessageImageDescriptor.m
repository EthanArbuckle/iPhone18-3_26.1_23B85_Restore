@interface PKDashboardPassMessageImageDescriptor
- (BOOL)isEqual:(id)a3;
- (PKDashboardPassMessageImageDescriptor)initWithType:(unint64_t)a3 tintColor:(id)a4 backgroundColor:(id)a5;
@end

@implementation PKDashboardPassMessageImageDescriptor

- (PKDashboardPassMessageImageDescriptor)initWithType:(unint64_t)a3 tintColor:(id)a4 backgroundColor:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PKDashboardPassMessageImageDescriptor;
  v11 = [(PKDashboardPassMessageImageDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_type = a3;
    objc_storeStrong(&v11->_tintColor, a4);
    objc_storeStrong(&v12->_backgroundColor, a5);
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