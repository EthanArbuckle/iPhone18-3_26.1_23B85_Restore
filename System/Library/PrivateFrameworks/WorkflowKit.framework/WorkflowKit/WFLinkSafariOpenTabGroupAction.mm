@interface WFLinkSafariOpenTabGroupAction
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkSafariOpenTabGroupAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryTabGroups", @"Tab Groups");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end