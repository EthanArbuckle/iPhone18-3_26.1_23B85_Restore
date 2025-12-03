@interface WFCoreDataShortcutBookmark
- (id)descriptor;
@end

@implementation WFCoreDataShortcutBookmark

- (id)descriptor
{
  v3 = [WFShortcutBookmarksDescriptor alloc];
  identifier = [(WFCoreDataShortcutBookmark *)self identifier];
  path = [(WFCoreDataShortcutBookmark *)self path];
  bookmarkData = [(WFCoreDataShortcutBookmark *)self bookmarkData];
  v7 = [(WFShortcutBookmarksDescriptor *)v3 initWithWorkflowID:identifier path:path bookmarkData:bookmarkData];

  return v7;
}

@end