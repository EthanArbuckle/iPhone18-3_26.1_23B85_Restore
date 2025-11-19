@interface ProfileActivationSceneExtension.SettingsExtension
+ (void)configureSetting:(id)a3;
@end

@implementation ProfileActivationSceneExtension.SettingsExtension

+ (void)configureSetting:(id)a3
{
  swift_unknownObjectRetain();
  if ([a3 matchesProperty_])
  {
    [a3 setPropagating_];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

@end