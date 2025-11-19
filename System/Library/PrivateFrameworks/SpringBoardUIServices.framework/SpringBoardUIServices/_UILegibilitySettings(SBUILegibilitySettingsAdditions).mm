@interface _UILegibilitySettings(SBUILegibilitySettingsAdditions)
- (void)shadowSettings;
@end

@implementation _UILegibilitySettings(SBUILegibilitySettingsAdditions)

- (void)shadowSettings
{
  [a1 shadowRadius];
  v5 = v4;
  [a1 shadowAlpha];
  v7 = v6;
  [a1 imageOutset];
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v8;
  v9 = [a1 shadowCompositingFilterName];
  a2[3] = SBUILegibilityShadowCompositingFilterForCAFilterName(v9);
}

@end