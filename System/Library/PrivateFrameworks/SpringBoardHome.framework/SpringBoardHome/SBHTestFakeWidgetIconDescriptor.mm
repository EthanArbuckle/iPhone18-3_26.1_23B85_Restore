@interface SBHTestFakeWidgetIconDescriptor
- (BOOL)isEqual:(id)equal;
- (SBHTestFakeWidgetIconDescriptor)initWithElement:(id)element sizeClass:(id)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBHTestFakeWidgetIconDescriptor

- (SBHTestFakeWidgetIconDescriptor)initWithElement:(id)element sizeClass:(id)class
{
  elementCopy = element;
  classCopy = class;
  v12.receiver = self;
  v12.super_class = SBHTestFakeWidgetIconDescriptor;
  v9 = [(SBHTestFakeWidgetIconDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_element, element);
    objc_storeStrong(&v10->_sizeClass, class);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  element = self->_element;
  sizeClass = self->_sizeClass;

  return [v4 initWithElement:element sizeClass:sizeClass];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    element = [(SBHTestFakeWidgetIconDescriptor *)v6 element];
    if ([element isEqual:self->_element])
    {
      sizeClass = [(SBHTestFakeWidgetIconDescriptor *)v6 sizeClass];
      if (sizeClass == self->_sizeClass)
      {
        v10 = 1;
      }

      else
      {
        sizeClass2 = [(SBHTestFakeWidgetIconDescriptor *)v6 sizeClass];
        v10 = [sizeClass2 isEqualToString:self->_sizeClass];
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