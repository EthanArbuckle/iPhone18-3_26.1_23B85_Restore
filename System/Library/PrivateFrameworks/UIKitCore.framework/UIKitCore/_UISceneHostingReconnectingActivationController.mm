@interface _UISceneHostingReconnectingActivationController
- (_UISceneHostingReconnectingActivationController)init;
- (_UISceneHostingReconnectingActivationControllerDelegate)delegate;
- (void)_performActivationForHostingController:(id)controller;
- (void)_setupActivationInhibitor;
- (void)activationHandleDidUpdate:(id)update forHostingController:(id)controller;
- (void)endManagingHostedSceneActivationForHostingController:(id)controller;
- (void)hostingController:(id)controller isMovingToParentScene:(id)scene;
- (void)setMaxRetryCount:(unint64_t)count;
- (void)setRetryTimeout:(double)timeout;
@end

@implementation _UISceneHostingReconnectingActivationController

- (_UISceneHostingReconnectingActivationController)init
{
  v5.receiver = self;
  v5.super_class = _UISceneHostingReconnectingActivationController;
  v2 = [(_UISceneHostingReconnectingActivationController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_maxRetryCount = 3;
    v2->_retryTimeout = 0.5;
    [(_UISceneHostingReconnectingActivationController *)v2 _setupActivationInhibitor];
  }

  return v3;
}

- (void)_setupActivationInhibitor
{
  v3 = [_UISimpleTimedInhibitor alloc];
  maxRetryCount = [(_UISceneHostingReconnectingActivationController *)self maxRetryCount];
  [(_UISceneHostingReconnectingActivationController *)self retryTimeout];
  v5 = [(_UISimpleTimedInhibitor *)v3 initWithClockType:0 maxAttempts:maxRetryCount inPeriod:?];
  activationInhibitor = self->_activationInhibitor;
  self->_activationInhibitor = v5;
}

- (void)setMaxRetryCount:(unint64_t)count
{
  if (self->_maxRetryCount != count)
  {
    self->_maxRetryCount = count;
    [(_UISceneHostingReconnectingActivationController *)self _setupActivationInhibitor];
  }
}

- (void)setRetryTimeout:(double)timeout
{
  if (self->_retryTimeout != timeout)
  {
    self->_retryTimeout = timeout;
    [(_UISceneHostingReconnectingActivationController *)self _setupActivationInhibitor];
  }
}

- (void)endManagingHostedSceneActivationForHostingController:(id)controller
{
  activationHandle = self->_activationHandle;
  self->_activationHandle = 0;
}

- (void)hostingController:(id)controller isMovingToParentScene:(id)scene
{
  controllerCopy = controller;
  objc_storeWeak(&self->_parentScene, scene);
  isActive = [(_UISceneHostingActivationHandle *)self->_activationHandle isActive];
  if (scene && !isActive)
  {
    [(_UISceneHostingReconnectingActivationController *)self _performActivationForHostingController:controllerCopy];
  }
}

- (void)activationHandleDidUpdate:(id)update forHostingController:(id)controller
{
  controllerCopy = controller;
  if (([update isActive] & 1) == 0)
  {
    if ([(_UISimpleTimedInhibitor *)self->_activationInhibitor attempt])
    {
      WeakRetained = objc_loadWeakRetained(&self->_parentScene);

      if (WeakRetained)
      {
        [(_UISceneHostingReconnectingActivationController *)self _performActivationForHostingController:controllerCopy];
      }
    }
  }
}

- (void)_performActivationForHostingController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      WeakRetained = [v7 transitionerForConnectingHostingController:controllerCopy];
    }

    else
    {
      WeakRetained = 0;
    }
  }

  [(_UISceneHostingActivationHandle *)self->_activationHandle activate:WeakRetained];
}

- (_UISceneHostingReconnectingActivationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end