@interface SXSubscribeActionActivityProvider
- (SXActionManager)actionManager;
- (SXSubscribeActionActivityProvider)initWithHandler:(id)handler viewControllerPresenting:(id)presenting actionManager:(id)manager;
- (id)activityGroupForAction:(id)action;
@end

@implementation SXSubscribeActionActivityProvider

- (SXSubscribeActionActivityProvider)initWithHandler:(id)handler viewControllerPresenting:(id)presenting actionManager:(id)manager
{
  handlerCopy = handler;
  presentingCopy = presenting;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = SXSubscribeActionActivityProvider;
  v12 = [(SXSubscribeActionActivityProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_handler, handler);
    objc_storeStrong(&v13->_viewControllerPresenting, presenting);
    objc_storeWeak(&v13->_actionManager, managerCopy);
  }

  return v13;
}

- (id)activityGroupForAction:(id)action
{
  v4 = [[SXActionActivityGroup alloc] initWithTitle:0];
  v5 = [SXBlockActionActivity alloc];
  v6 = SXBundle();
  v7 = [v6 localizedStringForKey:@"Subscribe" value:&stru_1F532F6C0 table:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__SXSubscribeActionActivityProvider_activityGroupForAction___block_invoke;
  v10[3] = &unk_1E84FF668;
  v10[4] = self;
  v8 = [(SXBlockActionActivity *)v5 initWithLabel:v7 type:0 block:v10];
  [(SXActionActivityGroup *)v4 addActivity:v8];

  return v4;
}

void __60__SXSubscribeActionActivityProvider_activityGroupForAction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 inAppPurchaseIdKey];

  v5 = [*(a1 + 32) handler];
  v6 = [*(a1 + 32) viewControllerPresenting];
  if (v4)
  {
    v7 = [v3 inAppPurchaseIdKey];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__SXSubscribeActionActivityProvider_activityGroupForAction___block_invoke_2;
    v15[3] = &unk_1E8500C38;
    v8 = v16;
    v9 = v3;
    v10 = *(a1 + 32);
    v16[0] = v9;
    v16[1] = v10;
    [v5 handleSubscribeActionOnPresenter:v6 inAppPurchaseIdKey:v7 completionBlock:v15];
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__SXSubscribeActionActivityProvider_activityGroupForAction___block_invoke_3;
    v13[3] = &unk_1E8500C38;
    v8 = v14;
    v11 = v3;
    v12 = *(a1 + 32);
    v14[0] = v11;
    v14[1] = v12;
    [v5 handleSubscribeActionOnPresenter:v6 completionBlock:v13];
  }
}

uint64_t __60__SXSubscribeActionActivityProvider_activityGroupForAction___block_invoke_2(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) postPurchaseAction];
  v5 = v4;
  v6 = 1;
  if (a2 && v4)
  {
    v7 = [*(a1 + 40) actionManager];
    [v7 performAction:v5 postActionHandlers:MEMORY[0x1E695E0F0]];

    v6 = 0;
  }

  return v6;
}

uint64_t __60__SXSubscribeActionActivityProvider_activityGroupForAction___block_invoke_3(uint64_t a1, int a2)
{
  v4 = [*(a1 + 32) postPurchaseAction];
  v5 = v4;
  v6 = 1;
  if (a2 && v4)
  {
    v7 = [*(a1 + 40) actionManager];
    [v7 performAction:v5 postActionHandlers:MEMORY[0x1E695E0F0]];

    v6 = 0;
  }

  return v6;
}

- (SXActionManager)actionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_actionManager);

  return WeakRetained;
}

@end