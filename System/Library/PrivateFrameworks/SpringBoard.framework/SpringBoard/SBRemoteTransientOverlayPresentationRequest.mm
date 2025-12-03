@interface SBRemoteTransientOverlayPresentationRequest
- (SBRemoteTransientOverlayPresentationRequest)initWithViewController:(id)controller;
- (SBWindowScene)windowScene;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBRemoteTransientOverlayPresentationRequest

- (SBRemoteTransientOverlayPresentationRequest)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SBRemoteTransientOverlayPresentationRequest;
  v6 = [(SBRemoteTransientOverlayPresentationRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_animated = 1;
    v6->_shouldDismissSiri = 1;
    v6->_shouldPresentEmbeddedInTargetScene = 1;
    objc_storeStrong(&v6->_viewController, controller);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithViewController:self->_viewController];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_animated;
    objc_storeStrong((v4 + 24), self->_presentationTarget);
    *(v5 + 10) = self->_shouldDismissSiri;
    *(v5 + 11) = self->_shouldDismissPresentedBanners;
    *(v5 + 12) = self->_shouldStashPictureInPictureIfNeeded;
    *(v5 + 13) = self->_shouldPresentEmbeddedInTargetScene;
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    objc_storeWeak((v5 + 32), WeakRetained);
  }

  return v5;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end