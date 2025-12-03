@interface PUSlideshowSettingsPersistency
+ (id)createSlideshowSettingsViewModel;
+ (void)saveSlideshowSettingsViewModel:(id)model;
@end

@implementation PUSlideshowSettingsPersistency

+ (void)saveSlideshowSettingsViewModel:(id)model
{
  v3 = MEMORY[0x1E695E000];
  modelCopy = model;
  standardUserDefaults = [v3 standardUserDefaults];
  propertyDictionary = [modelCopy propertyDictionary];

  [standardUserDefaults setObject:propertyDictionary forKey:@"PUSlideshowSettingsManagerSettingsUserDefaultsKey"];
  [standardUserDefaults synchronize];
}

+ (id)createSlideshowSettingsViewModel
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"PUSlideshowSettingsManagerSettingsUserDefaultsKey"];
  v4 = [[PUSlideshowSettingsViewModel alloc] initWithPropertyDictionary:v3];

  return v4;
}

@end