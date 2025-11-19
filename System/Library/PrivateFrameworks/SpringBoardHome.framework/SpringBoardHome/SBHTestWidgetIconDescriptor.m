@interface SBHTestWidgetIconDescriptor
+ (id)widgetIconDescriptorFromDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SBHTestWidgetIconDescriptor)initWithBundleIdentifier:(id)a3 containerBundleIdentifier:(id)a4 widgetIdentifier:(id)a5 sizeClass:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SBHTestWidgetIconDescriptor

+ (id)widgetIconDescriptorFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"containerBundleIdentifier"];
  v5 = [v3 objectForKeyedSubscript:@"bundleIdentifier"];
  v6 = [v3 objectForKeyedSubscript:@"widgetIdentifier"];
  v7 = [v3 objectForKeyedSubscript:@"gridSize"];

  v8 = [SBHTestWidgetIconDescriptor alloc];
  v9 = SBHIconGridSizeClassForString(v7);
  v10 = [(SBHTestWidgetIconDescriptor *)v8 initWithBundleIdentifier:v5 containerBundleIdentifier:v4 widgetIdentifier:v6 sizeClass:v9];

  return v10;
}

- (SBHTestWidgetIconDescriptor)initWithBundleIdentifier:(id)a3 containerBundleIdentifier:(id)a4 widgetIdentifier:(id)a5 sizeClass:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = SBHTestWidgetIconDescriptor;
  v14 = [(SBHTestWidgetIconDescriptor *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v15;

    v17 = [v11 copy];
    containerBundleIdentifier = v14->_containerBundleIdentifier;
    v14->_containerBundleIdentifier = v17;

    v19 = [v12 copy];
    widgetIdentifier = v14->_widgetIdentifier;
    v14->_widgetIdentifier = v19;

    objc_storeStrong(&v14->_sizeClass, a6);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  bundleIdentifier = self->_bundleIdentifier;
  containerBundleIdentifier = self->_containerBundleIdentifier;
  widgetIdentifier = self->_widgetIdentifier;
  sizeClass = self->_sizeClass;

  return [v4 initWithBundleIdentifier:bundleIdentifier containerBundleIdentifier:containerBundleIdentifier widgetIdentifier:widgetIdentifier sizeClass:sizeClass];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v12 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(SBHTestWidgetIconDescriptor *)v6 bundleIdentifier];
    if ([v7 isEqualToString:self->_bundleIdentifier])
    {
      v8 = [(SBHTestWidgetIconDescriptor *)v6 containerBundleIdentifier];
      if ([v8 isEqualToString:self->_containerBundleIdentifier])
      {
        v9 = [(SBHTestWidgetIconDescriptor *)v6 widgetIdentifier];
        if ([v9 isEqualToString:self->_widgetIdentifier])
        {
          v10 = [(SBHTestWidgetIconDescriptor *)v6 sizeClass];
          if (v10 == self->_sizeClass)
          {
            v12 = 1;
          }

          else
          {
            v11 = [(SBHTestWidgetIconDescriptor *)v6 sizeClass];
            v12 = [v11 isEqualToString:self->_sizeClass];
          }
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end