@interface PUSlideshowSettingsPersistency
+ (id)createSlideshowSettingsViewModel;
+ (void)saveSlideshowSettingsViewModel:(id)a3;
@end

@implementation PUSlideshowSettingsPersistency

+ (void)saveSlideshowSettingsViewModel:(id)a3
{
  v3 = MEMORY[0x1E695E000];
  v4 = a3;
  v6 = [v3 standardUserDefaults];
  v5 = [v4 propertyDictionary];

  [v6 setObject:v5 forKey:@"PUSlideshowSettingsManagerSettingsUserDefaultsKey"];
  [v6 synchronize];
}

+ (id)createSlideshowSettingsViewModel
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 objectForKey:@"PUSlideshowSettingsManagerSettingsUserDefaultsKey"];
  v4 = [[PUSlideshowSettingsViewModel alloc] initWithPropertyDictionary:v3];

  return v4;
}

@end