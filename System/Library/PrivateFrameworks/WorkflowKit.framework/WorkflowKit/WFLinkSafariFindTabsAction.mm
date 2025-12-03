@interface WFLinkSafariFindTabsAction
- (id)localizedCategoryWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
@end

@implementation WFLinkSafariFindTabsAction

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Find Tabs", @"Find Tabs");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryTabs", @"Tabs");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end