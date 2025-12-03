@interface ProfileActivationSceneExtension.SettingsExtension
+ (void)configureSetting:(id)setting;
@end

@implementation ProfileActivationSceneExtension.SettingsExtension

+ (void)configureSetting:(id)setting
{
  swift_unknownObjectRetain();
  if ([setting matchesProperty_])
  {
    [setting setPropagating_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

@end