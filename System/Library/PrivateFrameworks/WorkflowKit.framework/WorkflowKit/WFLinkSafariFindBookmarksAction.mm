@interface WFLinkSafariFindBookmarksAction
- (id)localizedCategoryWithContext:(id)context;
- (id)localizedNameWithContext:(id)context;
@end

@implementation WFLinkSafariFindBookmarksAction

- (id)localizedNameWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Find Bookmarks", @"Find Bookmarks");
  v5 = [contextCopy localize:v4];

  return v5;
}

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryBookmarks", @"Bookmarks");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end