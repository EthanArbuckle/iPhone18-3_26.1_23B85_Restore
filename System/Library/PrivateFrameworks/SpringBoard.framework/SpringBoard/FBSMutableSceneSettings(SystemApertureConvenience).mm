@interface FBSMutableSceneSettings(SystemApertureConvenience)
- (void)SBUI_applySystemApertureTransitionParameters:()SystemApertureConvenience;
@end

@implementation FBSMutableSceneSettings(SystemApertureConvenience)

- (void)SBUI_applySystemApertureTransitionParameters:()SystemApertureConvenience
{
  v4 = a3;
  v6 = [a1 otherSettings];
  v5 = [v4 otherSystemApertureSceneSettingsToApply];

  [v6 applySettings:v5];
}

@end