@interface _UILegibilitySettings(SBUILegibilitySettingsAdditions)
- (void)shadowSettings;
@end

@implementation _UILegibilitySettings(SBUILegibilitySettingsAdditions)

- (void)shadowSettings
{
  [self shadowRadius];
  v5 = v4;
  [self shadowAlpha];
  v7 = v6;
  [self imageOutset];
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v8;
  shadowCompositingFilterName = [self shadowCompositingFilterName];
  a2[3] = SBUILegibilityShadowCompositingFilterForCAFilterName(shadowCompositingFilterName);
}

@end