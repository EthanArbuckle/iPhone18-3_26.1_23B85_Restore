@interface SBTransientOverlayDismissalRequest
+ (id)dismissalRequestForAllViewControllers;
+ (id)dismissalRequestForAllViewControllersInWindowScene:(id)a3;
+ (id)dismissalRequestForViewController:(id)a3;
- (SBWindowScene)windowScene;
- (id)_copyWithClass:(Class)a3;
- (id)_init;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation SBTransientOverlayDismissalRequest

+ (id)dismissalRequestForAllViewControllers
{
  v2 = [[a1 alloc] _init];
  if (v2)
  {
    v2[3] = 2;
  }

  return v2;
}

+ (id)dismissalRequestForAllViewControllersInWindowScene:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 24) = 3;
    objc_storeWeak((v5 + 40), v4);
  }

  return v6;
}

+ (id)dismissalRequestForViewController:(id)a3
{
  v5 = a3;
  v6 = [[a1 alloc] _init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 24) = 1;
    objc_storeStrong((v6 + 32), a3);
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

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();

  return [(SBTransientOverlayDismissalRequest *)self _copyWithClass:v4];
}

- (id)_copyWithClass:(Class)a3
{
  v4 = [[a3 alloc] _init];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_animated;
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