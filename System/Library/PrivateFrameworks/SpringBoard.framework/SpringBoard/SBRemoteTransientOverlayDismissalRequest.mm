@interface SBRemoteTransientOverlayDismissalRequest
- (SBRemoteTransientOverlayDismissalRequest)initWithViewController:(id)controller;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SBRemoteTransientOverlayDismissalRequest

- (SBRemoteTransientOverlayDismissalRequest)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SBRemoteTransientOverlayDismissalRequest;
  v6 = [(SBRemoteTransientOverlayDismissalRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_animated = 1;
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
    v6 = [self->_completionHandler copy];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    *(v5 + 9) = self->_shouldInvalidatePresentation;
  }

  return v5;
}

@end