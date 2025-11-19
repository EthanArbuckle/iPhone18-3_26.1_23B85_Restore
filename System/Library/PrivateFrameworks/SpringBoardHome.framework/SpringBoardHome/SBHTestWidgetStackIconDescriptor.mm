@interface SBHTestWidgetStackIconDescriptor
- (BOOL)isEqual:(id)a3;
- (SBHTestWidgetStackIconDescriptor)initWithWidgetIconDescriptors:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBHTestWidgetStackIconDescriptor

- (SBHTestWidgetStackIconDescriptor)initWithWidgetIconDescriptors:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBHTestWidgetStackIconDescriptor;
  v5 = [(SBHTestWidgetStackIconDescriptor *)&v12 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v4 copyItems:1];
    widgetIconDescriptors = v5->_widgetIconDescriptors;
    v5->_widgetIconDescriptors = v6;

    v8 = [v4 firstObject];
    v9 = [v8 sizeClass];
    sizeClass = v5->_sizeClass;
    v5->_sizeClass = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  widgetIconDescriptors = self->_widgetIconDescriptors;

  return [v4 initWithWidgetIconDescriptors:widgetIconDescriptors];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(SBHTestWidgetStackIconDescriptor *)v6 widgetIconDescriptors];
    v8 = [v7 isEqualToArray:self->_widgetIconDescriptors];

    if (v8)
    {
      v9 = [(SBHTestWidgetStackIconDescriptor *)v6 sizeClass];
      v10 = [(SBHTestWidgetStackIconDescriptor *)self sizeClass];
      v11 = v9 == v10;
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