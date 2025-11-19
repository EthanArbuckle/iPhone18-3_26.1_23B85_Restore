@interface WBDuplicateBookmarkGroup
- (WBDuplicateBookmarkGroup)initWithOriginalBookmark:(id)a3;
- (void)addDuplicateBookmark:(id)a3 replaceOriginal:(BOOL)a4;
@end

@implementation WBDuplicateBookmarkGroup

- (WBDuplicateBookmarkGroup)initWithOriginalBookmark:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = WBDuplicateBookmarkGroup;
  v6 = [(WBDuplicateBookmarkGroup *)&v13 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    dupicateBookmarks = v6->_dupicateBookmarks;
    v6->_dupicateBookmarks = v7;

    v9 = [MEMORY[0x277CBEB18] array];
    dupicateBookmarksToKeep = v6->_dupicateBookmarksToKeep;
    v6->_dupicateBookmarksToKeep = v9;

    objc_storeStrong(&v6->_originalBookmark, a3);
    v11 = v6;
  }

  return v6;
}

- (void)addDuplicateBookmark:(id)a3 replaceOriginal:(BOOL)a4
{
  v7 = a3;
  self->_foundDuplicates = 1;
  dupicateBookmarks = self->_dupicateBookmarks;
  v9 = v7;
  if (a4)
  {
    [(NSMutableArray *)dupicateBookmarks addObject:self->_originalBookmark];
    objc_storeStrong(&self->_originalBookmark, a3);
  }

  else
  {
    [(NSMutableArray *)dupicateBookmarks addObject:v7];
  }
}

@end