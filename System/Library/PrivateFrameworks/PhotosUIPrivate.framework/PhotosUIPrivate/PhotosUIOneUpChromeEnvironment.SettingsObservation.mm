@interface PhotosUIOneUpChromeEnvironment.SettingsObservation
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation PhotosUIOneUpChromeEnvironment.SettingsObservation

- (void)settings:(id)settings changedValueForKey:(id)key
{
  v6 = sub_1B3C9C5E8();
  v8 = v7;
  settingsCopy = settings;
  selfCopy = self;
  sub_1B37AA8B4(settingsCopy, v6, v8);
}

@end