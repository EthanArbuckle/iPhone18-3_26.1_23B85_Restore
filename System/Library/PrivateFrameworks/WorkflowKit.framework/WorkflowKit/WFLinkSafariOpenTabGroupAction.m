@interface WFLinkSafariOpenTabGroupAction
- (id)localizedCategoryWithContext:(id)a3;
@end

@implementation WFLinkSafariOpenTabGroupAction

- (id)localizedCategoryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryTabGroups", @"Tab Groups");
  v5 = [v3 localize:v4];

  return v5;
}

@end