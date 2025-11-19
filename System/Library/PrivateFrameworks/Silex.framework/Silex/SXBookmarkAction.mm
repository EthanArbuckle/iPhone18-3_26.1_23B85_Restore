@interface SXBookmarkAction
- (SXBookmarkAction)initWithBookmark:(id)a3;
@end

@implementation SXBookmarkAction

- (SXBookmarkAction)initWithBookmark:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXBookmarkAction;
  v6 = [(SXBookmarkAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bookmark, a3);
  }

  return v7;
}

@end