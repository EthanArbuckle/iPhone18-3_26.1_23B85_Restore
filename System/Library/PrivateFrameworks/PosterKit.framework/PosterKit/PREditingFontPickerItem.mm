@interface PREditingFontPickerItem
- (PREditingFontPickerItem)initWithFontConfiguration:(id)configuration systemItem:(BOOL)item;
@end

@implementation PREditingFontPickerItem

- (PREditingFontPickerItem)initWithFontConfiguration:(id)configuration systemItem:(BOOL)item
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = PREditingFontPickerItem;
  v8 = [(PREditingFontPickerItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fontConfiguration, configuration);
    v9->_systemItem = item;
  }

  return v9;
}

@end