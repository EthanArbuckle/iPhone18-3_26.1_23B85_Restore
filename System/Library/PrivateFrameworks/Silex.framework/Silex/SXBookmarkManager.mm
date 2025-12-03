@interface SXBookmarkManager
- (SXBookmarkManager)init;
- (void)applyBookmark:(id)bookmark;
- (void)registerApplicator:(id)applicator bookmarkType:(Class)type;
@end

@implementation SXBookmarkManager

- (SXBookmarkManager)init
{
  v6.receiver = self;
  v6.super_class = SXBookmarkManager;
  v2 = [(SXBookmarkManager *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    applicators = v2->_applicators;
    v2->_applicators = dictionary;
  }

  return v2;
}

- (void)registerApplicator:(id)applicator bookmarkType:(Class)type
{
  if (applicator && type)
  {
    applicatorCopy = applicator;
    applicators = [(SXBookmarkManager *)self applicators];
    v7 = NSStringFromClass(type);
    [applicators setObject:applicatorCopy forKey:v7];
  }
}

- (void)applyBookmark:(id)bookmark
{
  if (bookmark)
  {
    bookmarkCopy = bookmark;
    applicators = [(SXBookmarkManager *)self applicators];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [applicators objectForKey:v7];

    [v8 applyBookmark:bookmarkCopy];
  }
}

@end