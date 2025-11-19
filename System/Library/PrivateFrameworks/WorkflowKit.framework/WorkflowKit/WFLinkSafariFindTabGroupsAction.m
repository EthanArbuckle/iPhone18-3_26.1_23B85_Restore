@interface WFLinkSafariFindTabGroupsAction
- (id)localizedCategoryWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
@end

@implementation WFLinkSafariFindTabGroupsAction

- (id)localizedNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Find Tab Groups", @"Find Tab Groups");
  v5 = [v3 localize:v4];

  return v5;
}

- (id)localizedCategoryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryTabGroups", @"Tab Groups");
  v5 = [v3 localize:v4];

  return v5;
}

@end