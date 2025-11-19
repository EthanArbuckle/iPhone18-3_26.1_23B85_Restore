@interface WFLinkSafariFindBookmarksAction
- (id)localizedCategoryWithContext:(id)a3;
- (id)localizedNameWithContext:(id)a3;
@end

@implementation WFLinkSafariFindBookmarksAction

- (id)localizedNameWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Find Bookmarks", @"Find Bookmarks");
  v5 = [v3 localize:v4];

  return v5;
}

- (id)localizedCategoryWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryBookmarks", @"Bookmarks");
  v5 = [v3 localize:v4];

  return v5;
}

@end