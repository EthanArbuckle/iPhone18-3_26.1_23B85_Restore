@interface SXBookmarkActionActivityProvider
- (id)activityGroupForAction:(id)a3;
- (id)initWithBookmarkManager:(id *)a1;
@end

@implementation SXBookmarkActionActivityProvider

- (id)activityGroupForAction:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [[SXActionActivityGroup alloc] initWithTitle:0];
    v6 = [SXBlockActionActivity alloc];
    v7 = SXBundle();
    v8 = [v7 localizedStringForKey:@"Open" value:&stru_1F532F6C0 table:0];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __59__SXBookmarkActionActivityProvider_activityGroupForAction___block_invoke;
    v14 = &unk_1E84FEDD0;
    v15 = self;
    v16 = v4;
    v9 = [(SXBlockActionActivity *)v6 initWithLabel:v8 type:0 block:&v11];
    [(SXActionActivityGroup *)v5 addActivity:v9, v11, v12, v13, v14, v15];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)initWithBookmarkManager:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = SXBookmarkActionActivityProvider;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

void __59__SXBookmarkActionActivityProvider_activityGroupForAction___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[1];
  }

  v2 = *(a1 + 40);
  v3 = v1;
  v4 = [v2 bookmark];
  [v3 applyBookmark:v4];
}

@end