@interface WFLinkSafariFindReadingListItemsAction
- (id)localizedCategoryWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
@end

@implementation WFLinkSafariFindReadingListItemsAction

- (id)localizedNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Find Reading List Items", @"Find Reading List Items");
  v5 = [v3 localize:v4];

  return v5;
}

- (id)localizedCategoryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryReadingList", @"Reading List");
  v5 = [v3 localize:v4];

  return v5;
}

@end