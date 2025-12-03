@interface SBTransientOverlayPresentationRequest
- (SBTransientOverlayPresentationRequest)initWithViewController:(id)controller;
- (SBWindowScene)windowScene;
- (id)_copyWithClass:(Class)class;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation SBTransientOverlayPresentationRequest

- (SBTransientOverlayPresentationRequest)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SBTransientOverlayPresentationRequest;
  v6 = [(SBTransientOverlayPresentationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_animated = 1;
    v6->_shouldDismissSiri = 1;
    objc_storeStrong(&v6->_viewController, controller);
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBTransientOverlayPresentationRequest *)self _copyWithClass:v4];
}

- (id)_copyWithClass:(Class)class
{
  v4 = [[class alloc] initWithViewController:self->_viewController];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_animated;
    v6 = [self->_completionHandler copy];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    *(v5 + 24) = self->_shouldDismissSiri;
    objc_storeStrong((v5 + 40), self->_originatingProcess);
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    objc_storeWeak((v5 + 48), WeakRetained);
  }

  return v5;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end