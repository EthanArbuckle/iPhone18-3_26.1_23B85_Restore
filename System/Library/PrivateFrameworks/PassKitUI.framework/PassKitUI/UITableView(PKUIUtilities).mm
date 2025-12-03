@interface UITableView(PKUIUtilities)
+ (uint64_t)pkui_groupedStyleDefaultRoundedCornerBehavior;
+ (uint64_t)pkui_groupedStyleWithRoundedCorners:()PKUIUtilities;
- (uint64_t)pkui_setupForReadableContentGuide;
@end

@implementation UITableView(PKUIUtilities)

+ (uint64_t)pkui_groupedStyleDefaultRoundedCornerBehavior
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__UITableView_PKUIUtilities__pkui_groupedStyleDefaultRoundedCornerBehavior__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (pkui_groupedStyleDefaultRoundedCornerBehavior_onceToken != -1)
  {
    dispatch_once(&pkui_groupedStyleDefaultRoundedCornerBehavior_onceToken, block);
  }

  return pkui_groupedStyleDefaultRoundedCornerBehavior_groupedStyle;
}

+ (uint64_t)pkui_groupedStyleWithRoundedCorners:()PKUIUtilities
{
  if (a3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (uint64_t)pkui_setupForReadableContentGuide
{
  result = [self pkui_userInterfaceIdiomSupportsLargeLayouts];
  if (result)
  {
    result = [self style];
    if ((result - 1) <= 1)
    {
      [self _setSectionContentInsetFollowsLayoutMargins:1];

      return [self setCellLayoutMarginsFollowReadableWidth:1];
    }
  }

  return result;
}

@end