@interface WFLinkSafariFindTabsAction
- (id)localizedCategoryWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
@end

@implementation WFLinkSafariFindTabsAction

- (id)localizedNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Find Tabs", @"Find Tabs");
  v5 = [v3 localize:v4];

  return v5;
}

- (id)localizedCategoryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryTabs", @"Tabs");
  v5 = [v3 localize:v4];

  return v5;
}

@end