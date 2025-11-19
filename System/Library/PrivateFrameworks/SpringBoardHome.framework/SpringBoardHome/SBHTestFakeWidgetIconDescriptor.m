@interface SBHTestFakeWidgetIconDescriptor
- (BOOL)isEqual:(id)a3;
- (SBHTestFakeWidgetIconDescriptor)initWithElement:(id)a3 sizeClass:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBHTestFakeWidgetIconDescriptor

- (SBHTestFakeWidgetIconDescriptor)initWithElement:(id)a3 sizeClass:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBHTestFakeWidgetIconDescriptor;
  v9 = [(SBHTestFakeWidgetIconDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_element, a3);
    objc_storeStrong(&v10->_sizeClass, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  element = self->_element;
  sizeClass = self->_sizeClass;

  return [v4 initWithElement:element sizeClass:sizeClass];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(SBHTestFakeWidgetIconDescriptor *)v6 element];
    if ([v7 isEqual:self->_element])
    {
      v8 = [(SBHTestFakeWidgetIconDescriptor *)v6 sizeClass];
      if (v8 == self->_sizeClass)
      {
        v10 = 1;
      }

      else
      {
        v9 = [(SBHTestFakeWidgetIconDescriptor *)v6 sizeClass];
        v10 = [v9 isEqualToString:self->_sizeClass];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end