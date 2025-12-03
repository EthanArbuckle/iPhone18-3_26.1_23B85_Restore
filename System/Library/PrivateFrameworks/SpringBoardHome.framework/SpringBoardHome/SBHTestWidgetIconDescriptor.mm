@interface SBHTestWidgetIconDescriptor
+ (id)widgetIconDescriptorFromDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (SBHTestWidgetIconDescriptor)initWithBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier widgetIdentifier:(id)widgetIdentifier sizeClass:(id)class;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBHTestWidgetIconDescriptor

+ (id)widgetIconDescriptorFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"containerBundleIdentifier"];
  v5 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"widgetIdentifier"];
  v7 = [dictionaryCopy objectForKeyedSubscript:@"gridSize"];

  v8 = [SBHTestWidgetIconDescriptor alloc];
  v9 = SBHIconGridSizeClassForString(v7);
  v10 = [(SBHTestWidgetIconDescriptor *)v8 initWithBundleIdentifier:v5 containerBundleIdentifier:v4 widgetIdentifier:v6 sizeClass:v9];

  return v10;
}

- (SBHTestWidgetIconDescriptor)initWithBundleIdentifier:(id)identifier containerBundleIdentifier:(id)bundleIdentifier widgetIdentifier:(id)widgetIdentifier sizeClass:(id)class
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  widgetIdentifierCopy = widgetIdentifier;
  classCopy = class;
  v22.receiver = self;
  v22.super_class = SBHTestWidgetIconDescriptor;
  v14 = [(SBHTestWidgetIconDescriptor *)&v22 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    bundleIdentifier = v14->_bundleIdentifier;
    v14->_bundleIdentifier = v15;

    v17 = [bundleIdentifierCopy copy];
    containerBundleIdentifier = v14->_containerBundleIdentifier;
    v14->_containerBundleIdentifier = v17;

    v19 = [widgetIdentifierCopy copy];
    widgetIdentifier = v14->_widgetIdentifier;
    v14->_widgetIdentifier = v19;

    objc_storeStrong(&v14->_sizeClass, class);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  bundleIdentifier = self->_bundleIdentifier;
  containerBundleIdentifier = self->_containerBundleIdentifier;
  widgetIdentifier = self->_widgetIdentifier;
  sizeClass = self->_sizeClass;

  return [v4 initWithBundleIdentifier:bundleIdentifier containerBundleIdentifier:containerBundleIdentifier widgetIdentifier:widgetIdentifier sizeClass:sizeClass];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    bundleIdentifier = [(SBHTestWidgetIconDescriptor *)v6 bundleIdentifier];
    if ([bundleIdentifier isEqualToString:self->_bundleIdentifier])
    {
      containerBundleIdentifier = [(SBHTestWidgetIconDescriptor *)v6 containerBundleIdentifier];
      if ([containerBundleIdentifier isEqualToString:self->_containerBundleIdentifier])
      {
        widgetIdentifier = [(SBHTestWidgetIconDescriptor *)v6 widgetIdentifier];
        if ([widgetIdentifier isEqualToString:self->_widgetIdentifier])
        {
          sizeClass = [(SBHTestWidgetIconDescriptor *)v6 sizeClass];
          if (sizeClass == self->_sizeClass)
          {
            v12 = 1;
          }

          else
          {
            sizeClass2 = [(SBHTestWidgetIconDescriptor *)v6 sizeClass];
            v12 = [sizeClass2 isEqualToString:self->_sizeClass];
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