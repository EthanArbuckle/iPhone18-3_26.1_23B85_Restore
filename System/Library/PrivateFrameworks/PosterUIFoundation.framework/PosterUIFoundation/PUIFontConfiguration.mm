@interface PUIFontConfiguration
+ (PUIFontConfiguration)defaultFontConfiguration;
+ (PUIFontConfiguration)fontConfigurationWithPUIFont:(id)font extensionBundleIdentifier:(id)identifier systemItem:(BOOL)item;
+ (PUIFontConfiguration)fontConfigurationWithPUIFont:(id)font extensionBundleURL:(id)l systemItem:(BOOL)item;
- (NSString)description;
- (PUIFontConfiguration)init;
- (id)PUIFontWithExtensionBundle:(id)bundle;
- (id)PUIFontWithExtensionBundleIdentifier:(id)identifier;
@end

@implementation PUIFontConfiguration

+ (PUIFontConfiguration)fontConfigurationWithPUIFont:(id)font extensionBundleURL:(id)l systemItem:(BOOL)item
{
  itemCopy = item;
  fontCopy = font;
  lCopy = l;
  fontIdentifier = [fontCopy fontIdentifier];
  [fontCopy weight];
  if (fontIdentifier)
  {
    v11 = [[PUISystemFontConfiguration alloc] initWithFontIdentifier:fontIdentifier weight:itemCopy systemItem:v10];
  }

  else
  {
    customFont = [fontCopy customFont];
    if (customFont)
    {
      v11 = [[PUICustomFontConfiguration alloc] initWithFont:customFont extensionBundleURL:lCopy];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (PUIFontConfiguration)fontConfigurationWithPUIFont:(id)font extensionBundleIdentifier:(id)identifier systemItem:(BOOL)item
{
  itemCopy = item;
  fontCopy = font;
  v9 = MEMORY[0x1E69635D0];
  identifierCopy = identifier;
  v11 = [[v9 alloc] initWithBundleIdentifier:identifierCopy error:0];

  v12 = [v11 URL];
  if (v12)
  {
    v13 = [self fontConfigurationWithPUIFont:fontCopy extensionBundleURL:v12 systemItem:itemCopy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (PUIFontConfiguration)defaultFontConfiguration
{
  v2 = objc_alloc_init(PUISystemFontConfiguration);

  return v2;
}

- (id)PUIFontWithExtensionBundle:(id)bundle
{
  bundleURL = [bundle bundleURL];
  v5 = [(PUIFontConfiguration *)self PUIFontWithExtensionBundleURL:bundleURL];

  return v5;
}

- (id)PUIFontWithExtensionBundleIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E69635D0];
  identifierCopy = identifier;
  v6 = [[v4 alloc] initWithBundleIdentifier:identifierCopy error:0];

  v7 = [v6 URL];
  if (v7)
  {
    v8 = [(PUIFontConfiguration *)self PUIFontWithExtensionBundleURL:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PUIFontConfiguration)init
{
  v3 = objc_opt_self();
  v4 = [(PUIFontConfiguration *)self isMemberOfClass:v3];

  if (v4)
  {
    v5 = objc_alloc_init(PUISystemFontConfiguration);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PUIFontConfiguration;
    v5 = [(PUIFontConfiguration *)&v8 init];
    self = &v5->super;
  }

  p_super = &v5->super;

  return p_super;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __35__PUIFontConfiguration_description__block_invoke;
  v10 = &unk_1E78548A0;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

@end