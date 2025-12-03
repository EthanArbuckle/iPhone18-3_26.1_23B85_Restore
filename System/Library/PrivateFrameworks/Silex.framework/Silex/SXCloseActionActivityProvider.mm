@interface SXCloseActionActivityProvider
- (id)activityGroupForAction:(id)action;
- (id)initWithViewControllerPresenting:(void *)presenting handler:;
@end

@implementation SXCloseActionActivityProvider

- (id)activityGroupForAction:(id)action
{
  v4 = [[SXActionActivityGroup alloc] initWithTitle:0];
  v5 = [SXBlockActionActivity alloc];
  v6 = SXBundle();
  v7 = [v6 localizedStringForKey:@"Close" value:&stru_1F532F6C0 table:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__SXCloseActionActivityProvider_activityGroupForAction___block_invoke;
  v10[3] = &unk_1E84FF668;
  v10[4] = self;
  v8 = [(SXBlockActionActivity *)v5 initWithLabel:v7 type:0 block:v10];
  [(SXActionActivityGroup *)v4 addActivity:v8];

  return v4;
}

- (id)initWithViewControllerPresenting:(void *)presenting handler:
{
  v6 = a2;
  presentingCopy = presenting;
  if (self)
  {
    v10.receiver = self;
    v10.super_class = SXCloseActionActivityProvider;
    v8 = objc_msgSendSuper2(&v10, sel_init);
    self = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 1, a2);
      objc_storeStrong(self + 2, presenting);
    }
  }

  return self;
}

void __56__SXCloseActionActivityProvider_activityGroupForAction___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[2];
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = v1;
  [v4 handleCloseActionOnPresenter:v3];
}

@end