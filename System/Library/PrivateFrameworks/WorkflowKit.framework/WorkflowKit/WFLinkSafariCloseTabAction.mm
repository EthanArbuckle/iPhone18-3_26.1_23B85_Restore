@interface WFLinkSafariCloseTabAction
- (id)localizedCategoryWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
@end

@implementation WFLinkSafariCloseTabAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryTabs", @"Tabs");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"WFLinkSafariCloseTabAction - Action Name", @"Close Tab");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end