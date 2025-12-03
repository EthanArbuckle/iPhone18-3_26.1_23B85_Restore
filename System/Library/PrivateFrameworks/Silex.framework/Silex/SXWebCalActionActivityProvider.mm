@interface SXWebCalActionActivityProvider
- (id)activityGroupForAction:(id)action;
@end

@implementation SXWebCalActionActivityProvider

- (id)activityGroupForAction:(id)action
{
  actionCopy = action;
  v4 = [SXActionActivityGroup alloc];
  v5 = SXBundle();
  v6 = [v5 localizedStringForKey:@"Calendar" value:&stru_1F532F6C0 table:0];
  v7 = [(SXActionActivityGroup *)v4 initWithTitle:v6];

  v8 = [SXBlockActionActivity alloc];
  v9 = SXBundle();
  v10 = [v9 localizedStringForKey:@"Subscribe" value:&stru_1F532F6C0 table:0];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__SXWebCalActionActivityProvider_activityGroupForAction___block_invoke;
  v14[3] = &unk_1E84FF668;
  v15 = actionCopy;
  v11 = actionCopy;
  v12 = [(SXBlockActionActivity *)v8 initWithLabel:v10 type:0 block:v14];
  [(SXActionActivityGroup *)v7 addActivity:v12];

  return v7;
}

void __57__SXWebCalActionActivityProvider_activityGroupForAction___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E69998A8] sharedConnection];
  v2 = [*(a1 + 32) URL];
  [v3 handleURL:v2];
}

@end