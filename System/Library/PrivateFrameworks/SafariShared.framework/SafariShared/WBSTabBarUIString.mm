@interface WBSTabBarUIString
+ (id)accessibilityLabelForNumberOfTabs:(unint64_t)tabs andNumberOfPinnedTabs:(unint64_t)pinnedTabs;
@end

@implementation WBSTabBarUIString

+ (id)accessibilityLabelForNumberOfTabs:(unint64_t)tabs andNumberOfPinnedTabs:(unint64_t)pinnedTabs
{
  if (tabs)
  {
    v6 = MEMORY[0x1E696AEC0];
    if (pinnedTabs)
    {
      v7 = _WBSLocalizedString();
      pinnedTabs = [v6 localizedStringWithFormat:v7, tabs, pinnedTabs];
    }

    else
    {
      v9 = _WBSLocalizedString();
      pinnedTabs = [v6 localizedStringWithFormat:v9, tabs];
    }
  }

  else
  {
    pinnedTabs = _WBSLocalizedString();
  }

  return pinnedTabs;
}

@end