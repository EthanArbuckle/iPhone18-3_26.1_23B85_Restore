@interface SXBookmarkManager
- (SXBookmarkManager)init;
- (void)applyBookmark:(id)a3;
- (void)registerApplicator:(id)a3 bookmarkType:(Class)a4;
@end

@implementation SXBookmarkManager

- (SXBookmarkManager)init
{
  v6.receiver = self;
  v6.super_class = SXBookmarkManager;
  v2 = [(SXBookmarkManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    applicators = v2->_applicators;
    v2->_applicators = v3;
  }

  return v2;
}

- (void)registerApplicator:(id)a3 bookmarkType:(Class)a4
{
  if (a3 && a4)
  {
    v6 = a3;
    v8 = [(SXBookmarkManager *)self applicators];
    v7 = NSStringFromClass(a4);
    [v8 setObject:v6 forKey:v7];
  }
}

- (void)applyBookmark:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SXBookmarkManager *)self applicators];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 objectForKey:v7];

    [v8 applyBookmark:v4];
  }
}

@end