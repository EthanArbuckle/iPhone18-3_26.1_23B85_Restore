@interface _NSLocalizedStringResource(SHSNavigationComponents)
+ (id)shs_localizedPathComponentForTonePickerSpecifier:()SHSNavigationComponents;
@end

@implementation _NSLocalizedStringResource(SHSNavigationComponents)

+ (id)shs_localizedPathComponentForTonePickerSpecifier:()SHSNavigationComponents
{
  v3 = a3;
  identifier = NSStringFromClass([v3 detailControllerClass]);
  v5 = objc_opt_class();
  currentLocale = NSStringFromClass(v5);
  if (![identifier isEqualToString:currentLocale])
  {
    v14 = 0;
    goto LABEL_5;
  }

  v7 = NSStringFromClass([v3 detailControllerClass]);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CCAEB8]);
    identifier = [v3 identifier];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v12 = SHS_BundleForSoundsAndHapticsSettingsFramework();
    bundleURL = [v12 bundleURL];
    v14 = [v11 initWithKey:identifier table:@"Sounds" locale:currentLocale bundleURL:bundleURL];

LABEL_5:
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

@end