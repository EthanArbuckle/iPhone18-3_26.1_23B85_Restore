@interface TUGameOverlayController
- (BOOL)overlayOpen;
- (TUGameOverlayController)init;
- (TUGameOverlayControllerDelegate)delegate;
- (void)dealloc;
@end

@implementation TUGameOverlayController

- (TUGameOverlayController)init
{
  v10.receiver = self;
  v10.super_class = TUGameOverlayController;
  v2 = [(TUGameOverlayController *)&v10 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v2->_gameOverlayVisibilityChangedNotificationToken = 0;
    v3 = objc_alloc_init(TUFeatureFlags);
    if ([(TUFeatureFlags *)v3 gameOverlayEnabled])
    {
      v4 = MEMORY[0x1E69E96A0];
      v5 = MEMORY[0x1E69E96A0];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __31__TUGameOverlayController_init__block_invoke;
      v7[3] = &unk_1E7424C60;
      objc_copyWeak(&v8, &location);
      notify_register_dispatch("com.apple.GameOverlayUI.dashboardVisibilityChanged", &v2->_gameOverlayVisibilityChangedNotificationToken, v4, v7);

      objc_destroyWeak(&v8);
    }

    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  gameOverlayVisibilityChangedNotificationToken = self->_gameOverlayVisibilityChangedNotificationToken;
  if (gameOverlayVisibilityChangedNotificationToken)
  {
    notify_cancel(gameOverlayVisibilityChangedNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = TUGameOverlayController;
  [(TUGameOverlayController *)&v4 dealloc];
}

void __31__TUGameOverlayController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [WeakRetained overlayOpen];
    v3 = [v5 delegate];
    v4 = v3;
    if (v3)
    {
      if (v2)
      {
        [v3 didOpenGameOverlay];
      }

      else
      {
        [v3 didCloseGameOverlay];
      }
    }

    WeakRetained = v5;
  }
}

- (BOOL)overlayOpen
{
  v3 = objc_alloc_init(TUFeatureFlags);
  if ([(TUFeatureFlags *)v3 gameOverlayEnabled])
  {
    state64 = 0;
    if (notify_get_state(self->_gameOverlayVisibilityChangedNotificationToken, &state64))
    {
      v4 = 0;
    }

    else
    {
      v4 = state64 == 1;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TUGameOverlayControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end