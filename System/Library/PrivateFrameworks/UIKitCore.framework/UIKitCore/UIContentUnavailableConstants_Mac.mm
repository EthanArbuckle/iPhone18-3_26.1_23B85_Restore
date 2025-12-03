@interface UIContentUnavailableConstants_Mac
+ (id)sharedConstants;
- (NSDirectionalEdgeInsets)defaultDirectionalLayoutMarginsForTraitCollection:(id)collection;
- (double)defaultEmptyImageToTextPaddingForTraitCollection:(id)collection;
- (double)defaultEmptyTextToButtonPaddingForTraitCollection:(id)collection;
- (double)defaultEmptyTextToSecondaryTextPaddingForTraitCollection:(id)collection;
- (id)defaultButtonConfigurationForTraitCollection:(id)collection;
- (id)defaultEmptyImageSymbolConfigurationForTraitCollection:(id)collection;
- (id)defaultEmptySecondaryTextFontForTraitCollection:(id)collection;
- (id)defaultEmptyTextColorForTraitCollection:(id)collection;
- (id)defaultEmptyTextFontForTraitCollection:(id)collection;
- (id)defaultLoadingImageSymbolConfigurationForTraitCollection:(id)collection;
@end

@implementation UIContentUnavailableConstants_Mac

+ (id)sharedConstants
{
  v3 = sharedConstants___sharedConstants_101;
  if (!sharedConstants___sharedConstants_101)
  {
    v4 = objc_alloc_init(self);
    v5 = sharedConstants___sharedConstants_101;
    sharedConstants___sharedConstants_101 = v4;

    v3 = sharedConstants___sharedConstants_101;
  }

  return v3;
}

- (id)defaultEmptyImageSymbolConfigurationForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy horizontalSizeClass] == 2)
  {
    v4 = 36.0;
  }

  else
  {
    v4 = 52.0;
  }

  v5 = +[UIFontMetrics defaultMetrics];
  [v5 scaledValueForValue:collectionCopy compatibleWithTraitCollection:v4];
  v7 = v6;

  return [UIImageSymbolConfiguration configurationWithPointSize:v7];
}

- (id)defaultLoadingImageSymbolConfigurationForTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = +[UIFontMetrics defaultMetrics];
  [v4 scaledValueForValue:collectionCopy compatibleWithTraitCollection:32.0];
  v6 = v5;

  return [UIImageSymbolConfiguration configurationWithPointSize:v6];
}

- (id)defaultEmptyTextFontForTraitCollection:(id)collection
{
  collectionCopy = collection;
  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  v5 = UIFontTextStyleEmphasizedLargeTitle;
  if (horizontalSizeClass != 2)
  {
    v5 = UIFontTextStyleEmphasizedTitle2;
  }

  v6 = [off_1E70ECC18 preferredFontForTextStyle:*v5 compatibleWithTraitCollection:collectionCopy];

  return v6;
}

- (id)defaultEmptyTextColorForTraitCollection:(id)collection
{
  if ([collection horizontalSizeClass] == 2)
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v3 = ;

  return v3;
}

- (id)defaultEmptySecondaryTextFontForTraitCollection:(id)collection
{
  collectionCopy = collection;
  horizontalSizeClass = [collectionCopy horizontalSizeClass];
  v5 = &UIFontTextStyleBody;
  if (horizontalSizeClass != 2)
  {
    v5 = &UIFontTextStyleSubheadline;
  }

  v6 = [off_1E70ECC18 preferredFontForTextStyle:*v5 compatibleWithTraitCollection:collectionCopy];

  return v6;
}

- (id)defaultButtonConfigurationForTraitCollection:(id)collection
{
  v3 = +[UIButtonConfiguration plainButtonConfiguration];
  [v3 setButtonSize:1];
  [v3 setMacIdiomStyle:1];
  [v3 setTitleAlignment:2];
  [v3 _setAlwaysApplyTitleAlignment:1];

  return v3;
}

- (double)defaultEmptyImageToTextPaddingForTraitCollection:(id)collection
{
  horizontalSizeClass = [collection horizontalSizeClass];
  result = 10.0;
  if (horizontalSizeClass == 2)
  {
    return 22.0;
  }

  return result;
}

- (double)defaultEmptyTextToSecondaryTextPaddingForTraitCollection:(id)collection
{
  horizontalSizeClass = [collection horizontalSizeClass];
  result = 3.0;
  if (horizontalSizeClass == 2)
  {
    return 12.0;
  }

  return result;
}

- (double)defaultEmptyTextToButtonPaddingForTraitCollection:(id)collection
{
  horizontalSizeClass = [collection horizontalSizeClass];
  result = 10.0;
  if (horizontalSizeClass == 2)
  {
    return 12.0;
  }

  return result;
}

- (NSDirectionalEdgeInsets)defaultDirectionalLayoutMarginsForTraitCollection:(id)collection
{
  v3 = 20.0;
  v4 = 20.0;
  v5 = 20.0;
  v6 = 20.0;
  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

@end