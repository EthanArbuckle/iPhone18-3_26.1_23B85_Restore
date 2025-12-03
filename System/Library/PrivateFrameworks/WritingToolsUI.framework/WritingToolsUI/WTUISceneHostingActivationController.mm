@interface WTUISceneHostingActivationController
- (WTUISceneHostingActivationController)initWithStartupAction:(id)action invalidationHandler:(id)handler;
- (void)activationHandleDidUpdate:(id)update forHostingController:(id)controller;
- (void)hostingController:(id)controller isMovingToParentScene:(id)scene;
@end

@implementation WTUISceneHostingActivationController

- (WTUISceneHostingActivationController)initWithStartupAction:(id)action invalidationHandler:(id)handler
{
  actionCopy = action;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = WTUISceneHostingActivationController;
  v9 = [(WTUISceneHostingActivationController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_startupAction, action);
    v11 = MEMORY[0x1DA6D90E0](handlerCopy);
    invalidationHandler = v10->_invalidationHandler;
    v10->_invalidationHandler = v11;
  }

  return v10;
}

- (void)hostingController:(id)controller isMovingToParentScene:(id)scene
{
  activationHandle = [(WTUISceneHostingActivationController *)self activationHandle];
  isActive = [activationHandle isActive];

  if (scene)
  {
    if ((isActive & 1) == 0)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __80__WTUISceneHostingActivationController_hostingController_isMovingToParentScene___block_invoke;
      v10[3] = &unk_1E8481228;
      v10[4] = self;
      v8 = MEMORY[0x1DA6D90E0](v10);
      activationHandle2 = [(WTUISceneHostingActivationController *)self activationHandle];
      [activationHandle2 activate:v8];
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

- (void)activationHandleDidUpdate:(id)update forHostingController:(id)controller
{
  controllerCopy = controller;
  activationHandle = [(WTUISceneHostingActivationController *)self activationHandle];
  isActive = [activationHandle isActive];

  if ((isActive & 1) == 0)
  {
    invalidationHandler = [(WTUISceneHostingActivationController *)self invalidationHandler];

    if (invalidationHandler)
    {
      invalidationHandler2 = [(WTUISceneHostingActivationController *)self invalidationHandler];
      invalidationHandler2[2]();
    }

    [controllerCopy invalidate];
  }
}

@end