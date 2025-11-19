@interface WFLinkSafariCloseTabAction
- (id)localizedCategoryWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
@end

@implementation WFLinkSafariCloseTabAction

- (id)localizedCategoryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryTabs", @"Tabs");
  v5 = [v3 localize:v4];

  return v5;
}

- (id)localizedNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"WFLinkSafariCloseTabAction - Action Name", @"Close Tab");
  v5 = [v3 localize:v4];

  return v5;
}

@end