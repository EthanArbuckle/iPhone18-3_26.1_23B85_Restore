@interface SXBookmarkAction
- (SXBookmarkAction)initWithBookmark:(id)bookmark;
@end

@implementation SXBookmarkAction

- (SXBookmarkAction)initWithBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  v9.receiver = self;
  v9.super_class = SXBookmarkAction;
  v6 = [(SXBookmarkAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bookmark, bookmark);
  }

  return v7;
}

@end