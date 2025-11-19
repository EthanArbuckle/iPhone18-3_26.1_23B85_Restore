@interface UIContentUnavailableConstants_IOS
+ (id)sharedConstants;
- (NSDirectionalEdgeInsets)defaultDirectionalLayoutMarginsForTraitCollection:(id)a3;
- (id)defaultButtonConfigurationForTraitCollection:(id)a3;
- (id)defaultEmptyImageSymbolConfigurationForTraitCollection:(id)a3;
- (id)defaultLoadingImageSymbolConfigurationForTraitCollection:(id)a3;
@end

@implementation UIContentUnavailableConstants_IOS

+ (id)sharedConstants
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"UIContentUnavailableConstants.m" lineNumber:48 description:@"Attempted to instantiate an instance of UIContentUnavailableConstants_IOS - use UIContentUnavailableConstants_Phone or UIContentUnavailableConstants_Pad instead"];

  return 0;
}

- (id)defaultEmptyImageSymbolConfigurationForTraitCollection:(id)a3
{
  v3 = a3;
  v4 = +[UIFontMetrics defaultMetrics];
  [v4 scaledValueForValue:v3 compatibleWithTraitCollection:48.0];
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
  v3 = +[UIButtonConfiguration plainButtonConfiguration];
  [v3 setButtonSize:1];
  [v3 setMacIdiomStyle:1];
  [v3 setTitleAlignment:2];
  [v3 _setAlwaysApplyTitleAlignment:1];

  return v3;
}

- (NSDirectionalEdgeInsets)defaultDirectionalLayoutMarginsForTraitCollection:(id)a3
{
  v3 = [a3 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(v3, &cfstr_Uictcontentsiz_9.isa);

  v5 = 16.0;
  if (v4 == NSOrderedAscending)
  {
    v5 = 32.0;
  }

  v6 = 16.0;
  v7 = 16.0;
  v8 = v5;
  result.trailing = v8;
  result.bottom = v7;
  result.leading = v5;
  result.top = v6;
  return result;
}

@end