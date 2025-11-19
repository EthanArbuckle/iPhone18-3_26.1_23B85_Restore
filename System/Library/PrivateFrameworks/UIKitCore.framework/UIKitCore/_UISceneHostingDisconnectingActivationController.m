@interface _UISceneHostingDisconnectingActivationController
- (void)activationHandleDidUpdate:(id)a3 forHostingController:(id)a4;
- (void)endManagingHostedSceneActivationForHostingController:(id)a3;
- (void)hostingController:(id)a3 isMovingToParentScene:(id)a4;
@end

@implementation _UISceneHostingDisconnectingActivationController

- (void)endManagingHostedSceneActivationForHostingController:(id)a3
{
  activationHandle = self->_activationHandle;
  self->_activationHandle = 0;
}

- (void)hostingController:(id)a3 isMovingToParentScene:(id)a4
{
  v6 = [(_UISceneHostingActivationHandle *)self->_activationHandle isActive];
  if (a4 && !v6)
  {
    activationHandle = self->_activationHandle;

    [(_UISceneHostingActivationHandle *)activationHandle activate:0];
  }
}

- (void)activationHandleDidUpdate:(id)a3 forHostingController:(id)a4
{
  v5 = a4;
  if (([a3 isActive] & 1) == 0)
  {
    [v5 invalidate];
  }
}

@end