@interface _UISceneWindowingControlClientSettings
+ (void)configureSetting:(id)setting;
@end

@implementation _UISceneWindowingControlClientSettings

+ (void)configureSetting:(id)setting
{
  settingCopy = setting;
  if ([settingCopy matchesProperty:sel_preferredWindowingControlStyleType])
  {
    [settingCopy setDescriptionProvider:&__block_literal_global_447];
  }
}

@end