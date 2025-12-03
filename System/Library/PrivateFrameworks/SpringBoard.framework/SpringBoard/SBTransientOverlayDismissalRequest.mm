@interface SBTransientOverlayDismissalRequest
+ (id)dismissalRequestForAllViewControllers;
+ (id)dismissalRequestForAllViewControllersInWindowScene:(id)scene;
+ (id)dismissalRequestForViewController:(id)controller;
- (SBWindowScene)windowScene;
- (id)_copyWithClass:(Class)class;
- (id)_init;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation SBTransientOverlayDismissalRequest

+ (id)dismissalRequestForAllViewControllers
{
  _init = [[self alloc] _init];
  if (_init)
  {
    _init[3] = 2;
  }

  return _init;
}

+ (id)dismissalRequestForAllViewControllersInWindowScene:(id)scene
{
  sceneCopy = scene;
  _init = [[self alloc] _init];
  v6 = _init;
  if (_init)
  {
    *(_init + 24) = 3;
    objc_storeWeak((_init + 40), sceneCopy);
  }

  return v6;
}

+ (id)dismissalRequestForViewController:(id)controller
{
  controllerCopy = controller;
  _init = [[self alloc] _init];
  v7 = _init;
  if (_init)
  {
    *(_init + 24) = 1;
    objc_storeStrong((_init + 32), controller);
  }

  return v7;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SBTransientOverlayDismissalRequest;
  result = [(SBTransientOverlayDismissalRequest *)&v3 init];
  if (result)
  {
    *(result + 8) = 1;
  }

  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBTransientOverlayDismissalRequest *)self _copyWithClass:v4];
}

- (id)_copyWithClass:(Class)class
{
  _init = [[class alloc] _init];
  v5 = _init;
  if (_init)
  {
    *(_init + 8) = self->_animated;
    v6 = [self->_completionHandler copy];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    *(v5 + 24) = self->_requestType;
    objc_storeStrong((v5 + 32), self->_viewController);
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    objc_storeWeak((v5 + 40), WeakRetained);
  }

  return v5;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end