@interface UIImage(PSIconImageCacheDeprecationCompatibility)
+ (id)ps_settingsIconImageDescriptor;
+ (id)ps_synchronousIconWithApplicationBundleIdentifier:()PSIconImageCacheDeprecationCompatibility;
+ (id)ps_synchronousIconWithTypeIdentifier:()PSIconImageCacheDeprecationCompatibility;
@end

@implementation UIImage(PSIconImageCacheDeprecationCompatibility)

+ (id)ps_settingsIconImageDescriptor
{
  v0 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8AA0]];
  [v0 setDrawBorder:1];
  currentTraitCollection = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  [v0 setAppearance:{objc_msgSend(currentTraitCollection, "userInterfaceStyle") != 1}];

  currentTraitCollection2 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  if ([currentTraitCollection2 layoutDirection])
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  [v0 setLanguageDirection:v3];

  currentTraitCollection3 = [MEMORY[0x1E69DD1B8] currentTraitCollection];
  [v0 setContrast:{objc_msgSend(currentTraitCollection3, "accessibilityContrast") == 1}];

  return v0;
}

+ (id)ps_synchronousIconWithApplicationBundleIdentifier:()PSIconImageCacheDeprecationCompatibility
{
  v4 = MEMORY[0x1E69A8A00];
  v5 = a3;
  v6 = [[v4 alloc] initWithBundleIdentifier:v5];

  ps_settingsIconImageDescriptor = [self ps_settingsIconImageDescriptor];
  v8 = [v6 prepareImageForDescriptor:ps_settingsIconImageDescriptor];

  v9 = MEMORY[0x1E69DCAB8];
  cGImage = [v8 CGImage];
  [v8 scale];
  v11 = [v9 imageWithCGImage:cGImage scale:0 orientation:?];

  return v11;
}

+ (id)ps_synchronousIconWithTypeIdentifier:()PSIconImageCacheDeprecationCompatibility
{
  v4 = MEMORY[0x1E69A8A00];
  v5 = a3;
  v6 = [[v4 alloc] initWithType:v5];

  ps_settingsIconImageDescriptor = [self ps_settingsIconImageDescriptor];
  v8 = [v6 prepareImageForDescriptor:ps_settingsIconImageDescriptor];

  v9 = MEMORY[0x1E69DCAB8];
  cGImage = [v8 CGImage];
  [v8 scale];
  v11 = [v9 imageWithCGImage:cGImage scale:0 orientation:?];

  return v11;
}

@end