@interface SearchUIAppIconUtilities
+ (CGSize)appIconItemSize;
+ (double)distanceToBottomOfAppIconsForMultiResultCell;
+ (double)distanceToTopOfAppIconsForMultiResultCell;
+ (double)idealHorizontalSpacingBetweenAppIcons;
+ (double)idealHorizontalSpacingBetweenAppIconsForContainerWidth:(double)a3 insets:(UIEdgeInsets)a4;
+ (int64_t)numberOfAppIconsPerRow;
@end

@implementation SearchUIAppIconUtilities

+ (double)distanceToTopOfAppIconsForMultiResultCell
{
  v2 = objc_opt_class();

  [v2 preferredHorizontalPlatterInsetForAppIcons];
  return result;
}

+ (CGSize)appIconItemSize
{
  v2 = *&searchUI_appIconItemSize_0;
  v3 = *&searchUI_appIconItemSize_1;
  if (*&searchUI_appIconItemSize_0 == *MEMORY[0x1E695F060] && *&searchUI_appIconItemSize_1 == *(MEMORY[0x1E695F060] + 8))
  {
    v5 = objc_opt_new();
    [v5 iconViewSize];
    searchUI_appIconItemSize_0 = v6;
    searchUI_appIconItemSize_1 = v7;

    v2 = *&searchUI_appIconItemSize_0;
    v3 = *&searchUI_appIconItemSize_1;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

+ (int64_t)numberOfAppIconsPerRow
{
  if (+[SearchUIUtilities isIpad])
  {
    return 6;
  }

  else
  {
    return 4;
  }
}

+ (double)idealHorizontalSpacingBetweenAppIcons
{
  result = *&idealHorizontalSpacingBetweenAppIcons_spacing;
  if (*&idealHorizontalSpacingBetweenAppIcons_spacing == 0.0)
  {
    v4 = +[SearchUIUtilities isIpad];
    result = 22.0;
    if (!v4)
    {
      v5 = [MEMORY[0x1E69DCEB0] mainScreen];
      [v5 _referenceBounds];
      v7 = v6;

      [a1 preferredHorizontalPlatterInsetForAppIcons];
      v9 = v8;
      +[SearchUIUtilities standardTableCellContentInset];
      [a1 idealHorizontalSpacingBetweenAppIconsForContainerWidth:v7 insets:{0.0, v9 + v10, 0.0, v9 + v10}];
      idealHorizontalSpacingBetweenAppIcons_spacing = *&result;
    }
  }

  return result;
}

+ (double)idealHorizontalSpacingBetweenAppIconsForContainerWidth:(double)a3 insets:(UIEdgeInsets)a4
{
  v5 = a3 - a4.left - a4.right;
  [a1 appIconItemSize];
  v7 = v5 - v6 * [a1 numberOfAppIconsPerRow];
  v8 = MEMORY[0x1E69D91A8];
  v9 = v7 / ([a1 numberOfAppIconsPerRow] - 1);

  [v8 deviceScaledRoundedValue:0 forView:v9];
  return result;
}

+ (double)distanceToBottomOfAppIconsForMultiResultCell
{
  v3 = 0.0;
  if (_UISolariumEnabled())
  {
    [a1 distanceToTopOfAppIconsForMultiResultCell];
    return v4 + 4.0;
  }

  return v3;
}

@end