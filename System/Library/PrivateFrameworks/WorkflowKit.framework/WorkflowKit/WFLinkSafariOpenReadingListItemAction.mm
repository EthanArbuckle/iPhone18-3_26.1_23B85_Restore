@interface WFLinkSafariOpenReadingListItemAction
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkSafariOpenReadingListItemAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryReadingList", @"Reading List");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end