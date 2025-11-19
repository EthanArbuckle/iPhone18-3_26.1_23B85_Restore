@interface _UISceneOrientationSettingsExtension
+ (void)configureSetting:(id)a3;
@end

@implementation _UISceneOrientationSettingsExtension

+ (void)configureSetting:(id)a3
{
  v3 = a3;
  if ([v3 matchesProperty:sel_interfaceOrientationLockState])
  {
    [v3 setPropagating:0];
    [v3 setDefaultValue:&unk_1EFE2FE90];
    [v3 setDescriptionProvider:&__block_literal_global_86];
  }
}

@end