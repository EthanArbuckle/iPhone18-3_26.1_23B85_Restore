@interface WBBookmarksDatabaseHealthInformation
- (WBBookmarksDatabaseHealthInformation)initWithTopLevelDuplicateBookmarksCount:(unint64_t)count allDuplicateBookmarksCount:(unint64_t)bookmarksCount;
@end

@implementation WBBookmarksDatabaseHealthInformation

- (WBBookmarksDatabaseHealthInformation)initWithTopLevelDuplicateBookmarksCount:(unint64_t)count allDuplicateBookmarksCount:(unint64_t)bookmarksCount
{
  v10.receiver = self;
  v10.super_class = WBBookmarksDatabaseHealthInformation;
  v6 = [(WBBookmarksDatabaseHealthInformation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_topLevelDuplicateBookmarksCount = count;
    v6->_allDuplicateBookmarksCount = bookmarksCount;
    v8 = v6;
  }

  return v7;
}

@end