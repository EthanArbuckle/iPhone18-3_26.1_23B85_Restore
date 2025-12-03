@interface WFLinkSafariOpenTabAction
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkSafariOpenTabAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryTabs", @"Tabs");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end