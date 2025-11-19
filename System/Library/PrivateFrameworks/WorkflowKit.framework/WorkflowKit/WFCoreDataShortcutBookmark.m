@interface WFCoreDataShortcutBookmark
- (id)descriptor;
@end

@implementation WFCoreDataShortcutBookmark

- (id)descriptor
{
  v3 = [WFShortcutBookmarksDescriptor alloc];
  v4 = [(WFCoreDataShortcutBookmark *)self identifier];
  v5 = [(WFCoreDataShortcutBookmark *)self path];
  v6 = [(WFCoreDataShortcutBookmark *)self bookmarkData];
  v7 = [(WFShortcutBookmarksDescriptor *)v3 initWithWorkflowID:v4 path:v5 bookmarkData:v6];

  return v7;
}

@end