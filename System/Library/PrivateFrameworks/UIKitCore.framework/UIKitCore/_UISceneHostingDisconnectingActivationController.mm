@interface _UISceneHostingDisconnectingActivationController
- (void)activationHandleDidUpdate:(id)update forHostingController:(id)controller;
- (void)endManagingHostedSceneActivationForHostingController:(id)controller;
- (void)hostingController:(id)controller isMovingToParentScene:(id)scene;
@end

@implementation _UISceneHostingDisconnectingActivationController

- (void)endManagingHostedSceneActivationForHostingController:(id)controller
{
  activationHandle = self->_activationHandle;
  self->_activationHandle = 0;
}

- (void)hostingController:(id)controller isMovingToParentScene:(id)scene
{
  isActive = [(_UISceneHostingActivationHandle *)self->_activationHandle isActive];
  if (scene && !isActive)
  {
    activationHandle = self->_activationHandle;

    [(_UISceneHostingActivationHandle *)activationHandle activate:0];
  }
}

- (void)activationHandleDidUpdate:(id)update forHostingController:(id)controller
{
  controllerCopy = controller;
  if (([update isActive] & 1) == 0)
  {
    [controllerCopy invalidate];
  }
}

@end