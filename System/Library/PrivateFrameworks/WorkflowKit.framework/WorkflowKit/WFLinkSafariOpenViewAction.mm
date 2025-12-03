@interface WFLinkSafariOpenViewAction
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkSafariOpenViewAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategorySafari", @"Safari");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end