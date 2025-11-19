@interface WTUISceneHostingActivationController
- (WTUISceneHostingActivationController)initWithStartupAction:(id)a3 invalidationHandler:(id)a4;
- (void)activationHandleDidUpdate:(id)a3 forHostingController:(id)a4;
- (void)hostingController:(id)a3 isMovingToParentScene:(id)a4;
@end

@implementation WTUISceneHostingActivationController

- (WTUISceneHostingActivationController)initWithStartupAction:(id)a3 invalidationHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = WTUISceneHostingActivationController;
  v9 = [(WTUISceneHostingActivationController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startupAction, a3);
    v11 = MEMORY[0x1DA6D90E0](v8);
    invalidationHandler = v10->_invalidationHandler;
    v10->_invalidationHandler = v11;
  }

  return v10;
}

- (void)hostingController:(id)a3 isMovingToParentScene:(id)a4
{
  v6 = [(WTUISceneHostingActivationController *)self activationHandle];
  v7 = [v6 isActive];

  if (a4)
  {
    if ((v7 & 1) == 0)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __80__WTUISceneHostingActivationController_hostingController_isMovingToParentScene___block_invoke;
      v10[3] = &unk_1E8481228;
      v10[4] = self;
      v8 = MEMORY[0x1DA6D90E0](v10);
      v9 = [(WTUISceneHostingActivationController *)self activationHandle];
      [v9 activate:v8];
    }
  }
}

void __80__WTUISceneHostingActivationController_hostingController_isMovingToParentScene___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 startupAction];
  v5 = [v2 setWithObject:v6];
  [v4 setActions:v5];
}

- (void)activationHandleDidUpdate:(id)a3 forHostingController:(id)a4
{
  v9 = a4;
  v5 = [(WTUISceneHostingActivationController *)self activationHandle];
  v6 = [v5 isActive];

  if ((v6 & 1) == 0)
  {
    v7 = [(WTUISceneHostingActivationController *)self invalidationHandler];

    if (v7)
    {
      v8 = [(WTUISceneHostingActivationController *)self invalidationHandler];
      v8[2]();
    }

    [v9 invalidate];
  }
}

@end