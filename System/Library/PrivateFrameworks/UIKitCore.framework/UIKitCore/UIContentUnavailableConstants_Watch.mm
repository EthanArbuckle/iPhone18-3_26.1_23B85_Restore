@interface UIContentUnavailableConstants_Watch
+ (id)sharedConstants;
- (NSDirectionalEdgeInsets)defaultDirectionalLayoutMarginsForTraitCollection:(id)collection;
- (id)defaultButtonConfigurationForTraitCollection:(id)collection;
- (id)defaultEmptyImageSymbolConfigurationForTraitCollection:(id)collection;
- (id)defaultLoadingImageSymbolConfigurationForTraitCollection:(id)collection;
@end

@implementation UIContentUnavailableConstants_Watch

+ (id)sharedConstants
{
  v3 = sharedConstants___sharedConstants_105;
  if (!sharedConstants___sharedConstants_105)
  {
    v4 = objc_alloc_init(self);
    v5 = sharedConstants___sharedConstants_105;
    sharedConstants___sharedConstants_105 = v4;

    v3 = sharedConstants___sharedConstants_105;
  }

  return v3;
}

- (id)defaultEmptyImageSymbolConfigurationForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = +[UIFontMetrics defaultMetrics];
  [v4 scaledValueForValue:collectionCopy compatibleWithTraitCollection:24.0];
  v6 = v5;

  return [UIImageSymbolConfiguration configurationWithPointSize:v6];
}

- (id)defaultLoadingImageSymbolConfigurationForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = +[UIFontMetrics defaultMetrics];
  [v4 scaledValueForValue:collectionCopy compatibleWithTraitCollection:32.0];
  v6 = v5;

  return [UIImageSymbolConfiguration configurationWithPointSize:v6];
}

- (id)defaultButtonConfigurationForTraitCollection:(id)collection
{
  v3 = +[UIButtonConfiguration borderedButtonConfiguration];
  [v3 setButtonSize:1];
  [v3 setTitleAlignment:2];
  [v3 _setAlwaysApplyTitleAlignment:1];

  return v3;
}

- (NSDirectionalEdgeInsets)defaultDirectionalLayoutMarginsForTraitCollection:(id)collection
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