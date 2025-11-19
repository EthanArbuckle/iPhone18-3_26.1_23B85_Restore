@interface PUIFontConfiguration
+ (PUIFontConfiguration)defaultFontConfiguration;
+ (PUIFontConfiguration)fontConfigurationWithPUIFont:(id)a3 extensionBundleIdentifier:(id)a4 systemItem:(BOOL)a5;
+ (PUIFontConfiguration)fontConfigurationWithPUIFont:(id)a3 extensionBundleURL:(id)a4 systemItem:(BOOL)a5;
- (NSString)description;
- (PUIFontConfiguration)init;
- (id)PUIFontWithExtensionBundle:(id)a3;
- (id)PUIFontWithExtensionBundleIdentifier:(id)a3;
@end

@implementation PUIFontConfiguration

+ (PUIFontConfiguration)fontConfigurationWithPUIFont:(id)a3 extensionBundleURL:(id)a4 systemItem:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = [v7 fontIdentifier];
  [v7 weight];
  if (v9)
  {
    v11 = [[PUISystemFontConfiguration alloc] initWithFontIdentifier:v9 weight:v5 systemItem:v10];
  }

  else
  {
    v12 = [v7 customFont];
    if (v12)
    {
      v11 = [[PUICustomFontConfiguration alloc] initWithFont:v12 extensionBundleURL:v8];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

+ (PUIFontConfiguration)fontConfigurationWithPUIFont:(id)a3 extensionBundleIdentifier:(id)a4 systemItem:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = MEMORY[0x1E69635D0];
  v10 = a4;
  v11 = [[v9 alloc] initWithBundleIdentifier:v10 error:0];

  v12 = [v11 URL];
  if (v12)
  {
    v13 = [a1 fontConfigurationWithPUIFont:v8 extensionBundleURL:v12 systemItem:v5];
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

- (id)PUIFontWithExtensionBundle:(id)a3
{
  v4 = [a3 bundleURL];
  v5 = [(PUIFontConfiguration *)self PUIFontWithExtensionBundleURL:v4];

  return v5;
}

- (id)PUIFontWithExtensionBundleIdentifier:(id)a3
{
  v4 = MEMORY[0x1E69635D0];
  v5 = a3;
  v6 = [[v4 alloc] initWithBundleIdentifier:v5 error:0];

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
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

@end