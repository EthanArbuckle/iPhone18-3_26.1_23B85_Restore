@interface WFLinkSafariOpenReadingListItemAction
- (id)localizedCategoryWithContext:(id)a3;
@end

@implementation WFLinkSafariOpenReadingListItemAction

- (id)localizedCategoryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryReadingList", @"Reading List");
  v5 = [v3 localize:v4];

  return v5;
}

@end