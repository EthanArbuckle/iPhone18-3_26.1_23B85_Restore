@interface UIContentUnavailableConstants_Mac
+ (id)sharedConstants;
- (NSDirectionalEdgeInsets)defaultDirectionalLayoutMarginsForTraitCollection:(id)a3;
- (double)defaultEmptyImageToTextPaddingForTraitCollection:(id)a3;
- (double)defaultEmptyTextToButtonPaddingForTraitCollection:(id)a3;
- (double)defaultEmptyTextToSecondaryTextPaddingForTraitCollection:(id)a3;
- (id)defaultButtonConfigurationForTraitCollection:(id)a3;
- (id)defaultEmptyImageSymbolConfigurationForTraitCollection:(id)a3;
- (id)defaultEmptySecondaryTextFontForTraitCollection:(id)a3;
- (id)defaultEmptyTextColorForTraitCollection:(id)a3;
- (id)defaultEmptyTextFontForTraitCollection:(id)a3;
- (id)defaultLoadingImageSymbolConfigurationForTraitCollection:(id)a3;
@end

@implementation UIContentUnavailableConstants_Mac

+ (id)sharedConstants
{
  v3 = sharedConstants___sharedConstants_101;
  if (!sharedConstants___sharedConstants_101)
  {
    v4 = objc_alloc_init(a1);
    v5 = sharedConstants___sharedConstants_101;
    sharedConstants___sharedConstants_101 = v4;

    v3 = sharedConstants___sharedConstants_101;
  }

  return v3;
}

- (id)defaultEmptyImageSymbolConfigurationForTraitCollection:(id)a3
{
  v3 = a3;
  if ([v3 horizontalSizeClass] == 2)
  {
    v4 = 36.0;
  }

  else
  {
    v4 = 52.0;
  }

  v5 = +[UIFontMetrics defaultMetrics];
  [v5 scaledValueForValue:v3 compatibleWithTraitCollection:v4];
  v7 = v6;

  return [UIImageSymbolConfiguration configurationWithPointSize:v7];
}

- (id)defaultLoadingImageSymbolConfigurationForTraitCollection:(id)a3
{
  v3 = a3;
  v4 = +[UIFontMetrics defaultMetrics];
  [v4 scaledValueForValue:v3 compatibleWithTraitCollection:32.0];
  v6 = v5;

  return [UIImageSymbolConfiguration configurationWithPointSize:v6];
}

- (id)defaultEmptyTextFontForTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 horizontalSizeClass];
  v5 = UIFontTextStyleEmphasizedLargeTitle;
  if (v4 != 2)
  {
    v5 = UIFontTextStyleEmphasizedTitle2;
  }

  v6 = [off_1E70ECC18 preferredFontForTextStyle:*v5 compatibleWithTraitCollection:v3];

  return v6;
}

- (id)defaultEmptyTextColorForTraitCollection:(id)a3
{
  if ([a3 horizontalSizeClass] == 2)
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

- (id)defaultEmptySecondaryTextFontForTraitCollection:(id)a3
{
  v3 = a3;
  v4 = [v3 horizontalSizeClass];
  v5 = &UIFontTextStyleBody;
  if (v4 != 2)
  {
    v5 = &UIFontTextStyleSubheadline;
  }

  v6 = [off_1E70ECC18 preferredFontForTextStyle:*v5 compatibleWithTraitCollection:v3];

  return v6;
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

- (double)defaultEmptyImageToTextPaddingForTraitCollection:(id)a3
{
  v3 = [a3 horizontalSizeClass];
  result = 10.0;
  if (v3 == 2)
  {
    return 22.0;
  }

  return result;
}

- (double)defaultEmptyTextToSecondaryTextPaddingForTraitCollection:(id)a3
{
  v3 = [a3 horizontalSizeClass];
  result = 3.0;
  if (v3 == 2)
  {
    return 12.0;
  }

  return result;
}

- (double)defaultEmptyTextToButtonPaddingForTraitCollection:(id)a3
{
  v3 = [a3 horizontalSizeClass];
  result = 10.0;
  if (v3 == 2)
  {
    return 12.0;
  }

  return result;
}

- (NSDirectionalEdgeInsets)defaultDirectionalLayoutMarginsForTraitCollection:(id)a3
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