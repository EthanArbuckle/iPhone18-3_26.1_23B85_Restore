@interface UIContentUnavailableConstants_TV
+ (id)sharedConstants;
- (NSDirectionalEdgeInsets)defaultDirectionalLayoutMarginsForTraitCollection:(id)collection;
- (id)defaultButtonConfigurationForTraitCollection:(id)collection;
- (id)defaultEmptyImageSymbolConfigurationForTraitCollection:(id)collection;
- (id)defaultLoadingImageSymbolConfigurationForTraitCollection:(id)collection;
@end

@implementation UIContentUnavailableConstants_TV

+ (id)sharedConstants
{
  v3 = sharedConstants___sharedConstants_109;
  if (!sharedConstants___sharedConstants_109)
  {
    v4 = objc_alloc_init(self);
    v5 = sharedConstants___sharedConstants_109;
    sharedConstants___sharedConstants_109 = v4;

    v3 = sharedConstants___sharedConstants_109;
  }

  return v3;
}

- (id)defaultEmptyImageSymbolConfigurationForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = +[UIFontMetrics defaultMetrics];
  [v4 scaledValueForValue:collectionCopy compatibleWithTraitCollection:80.0];
  v6 = v5;

  return [UIImageSymbolConfiguration configurationWithPointSize:v6];
}

- (id)defaultLoadingImageSymbolConfigurationForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = +[UIFontMetrics defaultMetrics];
  [v4 scaledValueForValue:collectionCopy compatibleWithTraitCollection:64.0];
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
  preferredContentSizeCategory = [collection preferredContentSizeCategory];
  v4 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, &cfstr_Uictcontentsiz_9.isa);

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