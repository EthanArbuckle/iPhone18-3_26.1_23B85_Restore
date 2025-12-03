@interface WFLinkSafariFindTabGroupsAction
- (id)localizedCategoryWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
@end

@implementation WFLinkSafariFindTabGroupsAction

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Find Tab Groups", @"Find Tab Groups");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryTabGroups", @"Tab Groups");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end