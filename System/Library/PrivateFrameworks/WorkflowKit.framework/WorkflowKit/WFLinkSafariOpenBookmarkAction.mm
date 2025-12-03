@interface WFLinkSafariOpenBookmarkAction
- (id)localizedCategoryWithContext:(id)context;
@end

@implementation WFLinkSafariOpenBookmarkAction

- (id)localizedCategoryWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"SafariSubcategoryBookmarks", @"Bookmarks");
  v5 = [contextCopy localize:v4];

  return v5;
}

@end