@interface _UISceneOrientationClientSettingsExtension
+ (void)configureSetting:(id)a3;
@end

@implementation _UISceneOrientationClientSettingsExtension

+ (void)configureSetting:(id)a3
{
  v3 = a3;
  if ([v3 matchesProperty:sel_interfaceOrientationLockPreference])
  {
    [v3 setPropagating:0];
    [v3 setDefaultValue:&unk_1EFE30928];
    [v3 setDescriptionProvider:&__block_literal_global_268];
  }
}

@end