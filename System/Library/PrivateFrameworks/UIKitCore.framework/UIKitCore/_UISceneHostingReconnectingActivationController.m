@interface _UISceneHostingReconnectingActivationController
- (_UISceneHostingReconnectingActivationController)init;
- (_UISceneHostingReconnectingActivationControllerDelegate)delegate;
- (void)_performActivationForHostingController:(id)a3;
- (void)_setupActivationInhibitor;
- (void)activationHandleDidUpdate:(id)a3 forHostingController:(id)a4;
- (void)endManagingHostedSceneActivationForHostingController:(id)a3;
- (void)hostingController:(id)a3 isMovingToParentScene:(id)a4;
- (void)setMaxRetryCount:(unint64_t)a3;
- (void)setRetryTimeout:(double)a3;
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
  v4 = [(_UISceneHostingReconnectingActivationController *)self maxRetryCount];
  [(_UISceneHostingReconnectingActivationController *)self retryTimeout];
  v5 = [(_UISimpleTimedInhibitor *)v3 initWithClockType:0 maxAttempts:v4 inPeriod:?];
  activationInhibitor = self->_activationInhibitor;
  self->_activationInhibitor = v5;
}

- (void)setMaxRetryCount:(unint64_t)a3
{
  if (self->_maxRetryCount != a3)
  {
    self->_maxRetryCount = a3;
    [(_UISceneHostingReconnectingActivationController *)self _setupActivationInhibitor];
  }
}

- (void)setRetryTimeout:(double)a3
{
  if (self->_retryTimeout != a3)
  {
    self->_retryTimeout = a3;
    [(_UISceneHostingReconnectingActivationController *)self _setupActivationInhibitor];
  }
}

- (void)endManagingHostedSceneActivationForHostingController:(id)a3
{
  activationHandle = self->_activationHandle;
  self->_activationHandle = 0;
}

- (void)hostingController:(id)a3 isMovingToParentScene:(id)a4
{
  v7 = a3;
  objc_storeWeak(&self->_parentScene, a4);
  v6 = [(_UISceneHostingActivationHandle *)self->_activationHandle isActive];
  if (a4 && !v6)
  {
    [(_UISceneHostingReconnectingActivationController *)self _performActivationForHostingController:v7];
  }
}

- (void)activationHandleDidUpdate:(id)a3 forHostingController:(id)a4
{
  v7 = a4;
  if (([a3 isActive] & 1) == 0)
  {
    if ([(_UISimpleTimedInhibitor *)self->_activationInhibitor attempt])
    {
      WeakRetained = objc_loadWeakRetained(&self->_parentScene);

      if (WeakRetained)
      {
        [(_UISceneHostingReconnectingActivationController *)self _performActivationForHostingController:v7];
      }
    }
  }
}

- (void)_performActivationForHostingController:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      WeakRetained = [v7 transitionerForConnectingHostingController:v8];
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