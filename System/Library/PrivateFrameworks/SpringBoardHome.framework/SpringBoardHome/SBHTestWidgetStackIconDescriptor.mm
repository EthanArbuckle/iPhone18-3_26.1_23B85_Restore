@interface SBHTestWidgetStackIconDescriptor
- (BOOL)isEqual:(id)equal;
- (SBHTestWidgetStackIconDescriptor)initWithWidgetIconDescriptors:(id)descriptors;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBHTestWidgetStackIconDescriptor

- (SBHTestWidgetStackIconDescriptor)initWithWidgetIconDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v12.receiver = self;
  v12.super_class = SBHTestWidgetStackIconDescriptor;
  v5 = [(SBHTestWidgetStackIconDescriptor *)&v12 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:descriptorsCopy copyItems:1];
    widgetIconDescriptors = v5->_widgetIconDescriptors;
    v5->_widgetIconDescriptors = v6;

    firstObject = [descriptorsCopy firstObject];
    sizeClass = [firstObject sizeClass];
    sizeClass = v5->_sizeClass;
    v5->_sizeClass = sizeClass;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  widgetIconDescriptors = self->_widgetIconDescriptors;

  return [v4 initWithWidgetIconDescriptors:widgetIconDescriptors];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    widgetIconDescriptors = [(SBHTestWidgetStackIconDescriptor *)v6 widgetIconDescriptors];
    v8 = [widgetIconDescriptors isEqualToArray:self->_widgetIconDescriptors];

    if (v8)
    {
      sizeClass = [(SBHTestWidgetStackIconDescriptor *)v6 sizeClass];
      sizeClass2 = [(SBHTestWidgetStackIconDescriptor *)self sizeClass];
      v11 = sizeClass == sizeClass2;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end