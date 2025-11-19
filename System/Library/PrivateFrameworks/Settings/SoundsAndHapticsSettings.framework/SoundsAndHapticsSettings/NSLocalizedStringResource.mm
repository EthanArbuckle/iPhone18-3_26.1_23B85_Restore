@interface NSLocalizedStringResource
@end

@implementation NSLocalizedStringResource

id __76___NSLocalizedStringResource_SHSNavigationComponents__shs_rootPaneComponent__block_invoke()
{
  if (_block_invoke_na_once_token_7 != -1)
  {
    __76___NSLocalizedStringResource_SHSNavigationComponents__shs_rootPaneComponent__block_invoke_cold_1();
  }

  v1 = _block_invoke_na_once_object_7;

  return v1;
}

void __76___NSLocalizedStringResource_SHSNavigationComponents__shs_rootPaneComponent__block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277CCAEB8]);
  if (MGGetBoolAnswer())
  {
    v1 = @"SOUNDS_AND_HAPTICS";
  }

  else
  {
    v1 = @"Sounds";
  }

  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = SHS_BundleForSoundsAndHapticsSettingsFramework();
  v3 = [v2 bundleURL];
  v4 = [v0 initWithKey:v1 table:@"Sounds" locale:v6 bundleURL:v3];
  v5 = _block_invoke_na_once_object_7;
  _block_invoke_na_once_object_7 = v4;
}

@end