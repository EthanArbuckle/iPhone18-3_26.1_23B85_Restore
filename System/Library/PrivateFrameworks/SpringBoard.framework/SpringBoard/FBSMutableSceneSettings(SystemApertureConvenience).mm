@interface FBSMutableSceneSettings(SystemApertureConvenience)
- (void)SBUI_applySystemApertureTransitionParameters:()SystemApertureConvenience;
@end

@implementation FBSMutableSceneSettings(SystemApertureConvenience)

- (void)SBUI_applySystemApertureTransitionParameters:()SystemApertureConvenience
{
  v4 = a3;
  otherSettings = [self otherSettings];
  otherSystemApertureSceneSettingsToApply = [v4 otherSystemApertureSceneSettingsToApply];

  [otherSettings applySettings:otherSystemApertureSceneSettingsToApply];
}

@end