@interface WFLinkSafariFindReadingListItemsAction
- (id)localizedCategoryWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
@end

@implementation WFLinkSafariFindReadingListItemsAction

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Find Reading List Items", @"Find Reading List Items");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryReadingList", @"Reading List");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end