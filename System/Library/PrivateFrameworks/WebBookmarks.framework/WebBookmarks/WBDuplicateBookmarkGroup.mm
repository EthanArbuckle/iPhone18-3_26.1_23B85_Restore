@interface WBDuplicateBookmarkGroup
- (WBDuplicateBookmarkGroup)initWithOriginalBookmark:(id)bookmark;
- (void)addDuplicateBookmark:(id)bookmark replaceOriginal:(BOOL)original;
@end

@implementation WBDuplicateBookmarkGroup

- (WBDuplicateBookmarkGroup)initWithOriginalBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v13.receiver = self;
  v13.super_class = WBDuplicateBookmarkGroup;
  v6 = [(WBDuplicateBookmarkGroup *)&v13 init];
  if (v6)
  {
    array = [MEMORY[0x277CBEB18] array];
    dupicateBookmarks = v6->_dupicateBookmarks;
    v6->_dupicateBookmarks = array;

    array2 = [MEMORY[0x277CBEB18] array];
    dupicateBookmarksToKeep = v6->_dupicateBookmarksToKeep;
    v6->_dupicateBookmarksToKeep = array2;

    objc_storeStrong(&v6->_originalBookmark, bookmark);
    v11 = v6;
  }

  return v6;
}

- (void)addDuplicateBookmark:(id)bookmark replaceOriginal:(BOOL)original
{
  bookmarkCopy = bookmark;
  self->_foundDuplicates = 1;
  dupicateBookmarks = self->_dupicateBookmarks;
  v9 = bookmarkCopy;
  if (original)
  {
    [(NSMutableArray *)dupicateBookmarks addObject:self->_originalBookmark];
    objc_storeStrong(&self->_originalBookmark, bookmark);
  }

  else
  {
    [(NSMutableArray *)dupicateBookmarks addObject:bookmarkCopy];
  }
}

@end