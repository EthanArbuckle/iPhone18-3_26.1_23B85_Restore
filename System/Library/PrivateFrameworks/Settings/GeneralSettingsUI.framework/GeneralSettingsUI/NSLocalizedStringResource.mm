@interface NSLocalizedStringResource
@end

@implementation NSLocalizedStringResource

id __84___NSLocalizedStringResource_GeneralNavigationComponents__general_rootPaneComponent__block_invoke()
{
  if (_block_invoke_na_once_token_0 != -1)
  {
    __84___NSLocalizedStringResource_GeneralNavigationComponents__general_rootPaneComponent__block_invoke_cold_1();
  }

  v1 = _block_invoke_na_once_object_0;

  return v1;
}

void __84___NSLocalizedStringResource_GeneralNavigationComponents__general_rootPaneComponent__block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277CCAEB8]);
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = PSG_BundleForGeneralSettingsUIFramework();
  v2 = [v1 bundleURL];
  v3 = [v0 initWithKey:@"General" table:@"General" locale:v5 bundleURL:v2];
  v4 = _block_invoke_na_once_object_0;
  _block_invoke_na_once_object_0 = v3;
}

id __85___NSLocalizedStringResource_GeneralNavigationComponents__general_aboutPaneComponent__block_invoke()
{
  if (_block_invoke_2_na_once_token_1 != -1)
  {
    __85___NSLocalizedStringResource_GeneralNavigationComponents__general_aboutPaneComponent__block_invoke_cold_1();
  }

  v1 = _block_invoke_2_na_once_object_1;

  return v1;
}

void __85___NSLocalizedStringResource_GeneralNavigationComponents__general_aboutPaneComponent__block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277CCAEB8]);
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v1 = PSG_BundleForGeneralSettingsUIFramework();
  v2 = [v1 bundleURL];
  v3 = [v0 initWithKey:@"About" table:@"General" locale:v5 bundleURL:v2];
  v4 = _block_invoke_2_na_once_object_1;
  _block_invoke_2_na_once_object_1 = v3;
}

@end