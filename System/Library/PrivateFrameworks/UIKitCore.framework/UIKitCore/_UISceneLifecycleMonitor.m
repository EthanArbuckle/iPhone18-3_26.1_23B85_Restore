@interface _UISceneLifecycleMonitor
- (UIScene)_scene;
- (_UISceneLifecycleMonitor)initWithScene:(id)a3;
- (void)didBecomeActive;
- (void)didConnect;
- (void)didEnterBackground;
- (void)didResignActive;
- (void)transitionToTargetState:(id)a3 fromState:(id)a4 withTransitionContext:(id)a5 preparations:(id)a6;
- (void)willEnterForeground;
- (void)willResignActive;
@end

@implementation _UISceneLifecycleMonitor

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->__scene);

  return WeakRetained;
}

- (void)didConnect
{
  WeakRetained = objc_loadWeakRetained(&self->__scene);
  [WeakRetained _finishSceneConnection];
}

- (void)willEnterForeground
{
  WeakRetained = objc_loadWeakRetained(&self->__scene);
  if (WeakRetained)
  {
    v4 = WeakRetained[52];

    if ((v4 & 0x20) != 0)
    {
      kdebug_trace();
      v5 = objc_loadWeakRetained(&self->__scene);
      v6 = [v5 delegate];
      v7 = objc_loadWeakRetained(&self->__scene);
      [v6 sceneWillEnterForeground:v7];

      kdebug_trace();
    }
  }

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = objc_loadWeakRetained(&self->__scene);
  [v9 postNotificationName:@"UISceneWillEnterForegroundNotification" object:v8];
}

- (void)didBecomeActive
{
  WeakRetained = objc_loadWeakRetained(&self->__scene);
  if (WeakRetained)
  {
    v4 = WeakRetained[52];

    if ((v4 & 8) != 0)
    {
      kdebug_trace();
      v5 = objc_loadWeakRetained(&self->__scene);
      v6 = [v5 delegate];
      v7 = objc_loadWeakRetained(&self->__scene);
      [v6 sceneDidBecomeActive:v7];

      kdebug_trace();
    }
  }

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = objc_loadWeakRetained(&self->__scene);
  [v9 postNotificationName:@"UISceneDidActivateNotification" object:v8];
}

- (void)didResignActive
{
  WeakRetained = objc_loadWeakRetained(&self->__scene);
  v4 = [WeakRetained _allowsEventUIWindowRouting];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->__scene);
    [UIApp _cancelAllEventsOfType:11 onEventRoutingScene:v5];
    [UIApp _cancelAllEventsOfType:10 onEventRoutingScene:v5];
  }
}

- (void)willResignActive
{
  WeakRetained = objc_loadWeakRetained(&self->__scene);
  if (WeakRetained)
  {
    v4 = WeakRetained[52];

    if ((v4 & 0x10) != 0)
    {
      kdebug_trace();
      v5 = objc_loadWeakRetained(&self->__scene);
      v6 = [v5 delegate];
      v7 = objc_loadWeakRetained(&self->__scene);
      [v6 sceneWillResignActive:v7];

      kdebug_trace();
    }
  }

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = objc_loadWeakRetained(&self->__scene);
  [v9 postNotificationName:@"UISceneWillDeactivateNotification" object:v8];
}

- (void)didEnterBackground
{
  WeakRetained = objc_loadWeakRetained(&self->__scene);
  if (WeakRetained)
  {
    v4 = WeakRetained[52];

    if ((v4 & 0x40) != 0)
    {
      kdebug_trace();
      v5 = objc_loadWeakRetained(&self->__scene);
      v6 = [v5 delegate];
      v7 = objc_loadWeakRetained(&self->__scene);
      [v6 sceneDidEnterBackground:v7];

      kdebug_trace();
    }
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = objc_loadWeakRetained(&self->__scene);
  [v8 postNotificationName:@"UISceneDidEnterBackgroundNotification" object:v9];

  v10 = objc_loadWeakRetained(&self->__scene);
  v11 = [v10 _allowsEventUIWindowRouting];

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->__scene);
    [UIApp _cancelAllInputsOnEventRoutingScene:v12];
  }
}

- (_UISceneLifecycleMonitor)initWithScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UISceneLifecycleMonitor;
  v5 = [(_UISceneLifecycleMonitor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->__scene, v4);
  }

  return v6;
}

- (void)transitionToTargetState:(id)a3 fromState:(id)a4 withTransitionContext:(id)a5 preparations:(id)a6
{
  if (a6)
  {
    (*(a6 + 2))(a6, &__block_literal_global_87);
  }
}

@end