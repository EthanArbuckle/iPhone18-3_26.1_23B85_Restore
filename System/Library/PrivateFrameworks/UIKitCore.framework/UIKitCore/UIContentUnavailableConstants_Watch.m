@interface UIContentUnavailableConstants_Watch
+ (id)sharedConstants;
- (NSDirectionalEdgeInsets)defaultDirectionalLayoutMarginsForTraitCollection:(id)a3;
- (id)defaultButtonConfigurationForTraitCollection:(id)a3;
- (id)defaultEmptyImageSymbolConfigurationForTraitCollection:(id)a3;
- (id)defaultLoadingImageSymbolConfigurationForTraitCollection:(id)a3;
@end

@implementation UIContentUnavailableConstants_Watch

+ (id)sharedConstants
{
  v3 = sharedConstants___sharedConstants_105;
  if (!sharedConstants___sharedConstants_105)
  {
    v4 = objc_alloc_init(a1);
    v5 = sharedConstants___sharedConstants_105;
    sharedConstants___sharedConstants_105 = v4;

    v3 = sharedConstants___sharedConstants_105;
  }

  return v3;
}

- (id)defaultEmptyImageSymbolConfigurationForTraitCollection:(id)a3
{
  v3 = a3;
  v4 = +[UIFontMetrics defaultMetrics];
  [v4 scaledValueForValue:v3 compatibleWithTraitCollection:24.0];
  v6 = v5;

  return [UIImageSymbolConfiguration configurationWithPointSize:v6];
}

- (id)defaultLoadingImageSymbolConfigurationForTraitCollection:(id)a3
{
  v3 = a3;
  v4 = +[UIFontMetrics defaultMetrics];
  [v4 scaledValueForValue:v3 compatibleWithTraitCollection:32.0];
  v6 = v5;

  return [UIImageSymbolConfiguration configurationWithPointSize:v6];
}

- (id)defaultButtonConfigurationForTraitCollection:(id)a3
{
  v3 = +[UIButtonConfiguration borderedButtonConfiguration];
  [v3 setButtonSize:1];
  [v3 setTitleAlignment:2];
  [v3 _setAlwaysApplyTitleAlignment:1];

  return v3;
}

- (NSDirectionalEdgeInsets)defaultDirectionalLayoutMarginsForTraitCollection:(id)a3
{
  v3 = 8.0;
  v4 = 8.0;
  v5 = 8.0;
  v6 = 8.0;
  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

@end