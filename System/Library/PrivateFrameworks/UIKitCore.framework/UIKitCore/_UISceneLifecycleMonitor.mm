@interface _UISceneLifecycleMonitor
- (UIScene)_scene;
- (_UISceneLifecycleMonitor)initWithScene:(id)scene;
- (void)didBecomeActive;
- (void)didConnect;
- (void)didEnterBackground;
- (void)didResignActive;
- (void)transitionToTargetState:(id)state fromState:(id)fromState withTransitionContext:(id)context preparations:(id)preparations;
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
      delegate = [v5 delegate];
      v7 = objc_loadWeakRetained(&self->__scene);
      [delegate sceneWillEnterForeground:v7];

      kdebug_trace();
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = objc_loadWeakRetained(&self->__scene);
  [defaultCenter postNotificationName:@"UISceneWillEnterForegroundNotification" object:v8];
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
      delegate = [v5 delegate];
      v7 = objc_loadWeakRetained(&self->__scene);
      [delegate sceneDidBecomeActive:v7];

      kdebug_trace();
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = objc_loadWeakRetained(&self->__scene);
  [defaultCenter postNotificationName:@"UISceneDidActivateNotification" object:v8];
}

- (void)didResignActive
{
  WeakRetained = objc_loadWeakRetained(&self->__scene);
  _allowsEventUIWindowRouting = [WeakRetained _allowsEventUIWindowRouting];

  if (_allowsEventUIWindowRouting)
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
      delegate = [v5 delegate];
      v7 = objc_loadWeakRetained(&self->__scene);
      [delegate sceneWillResignActive:v7];

      kdebug_trace();
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v8 = objc_loadWeakRetained(&self->__scene);
  [defaultCenter postNotificationName:@"UISceneWillDeactivateNotification" object:v8];
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
      delegate = [v5 delegate];
      v7 = objc_loadWeakRetained(&self->__scene);
      [delegate sceneDidEnterBackground:v7];

      kdebug_trace();
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = objc_loadWeakRetained(&self->__scene);
  [defaultCenter postNotificationName:@"UISceneDidEnterBackgroundNotification" object:v9];

  v10 = objc_loadWeakRetained(&self->__scene);
  _allowsEventUIWindowRouting = [v10 _allowsEventUIWindowRouting];

  if (_allowsEventUIWindowRouting)
  {
    v12 = objc_loadWeakRetained(&self->__scene);
    [UIApp _cancelAllInputsOnEventRoutingScene:v12];
  }
}

- (_UISceneLifecycleMonitor)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = _UISceneLifecycleMonitor;
  v5 = [(_UISceneLifecycleMonitor *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->__scene, sceneCopy);
  }

  return v6;
}

- (void)transitionToTargetState:(id)state fromState:(id)fromState withTransitionContext:(id)context preparations:(id)preparations
{
  if (preparations)
  {
    (*(preparations + 2))(preparations, &__block_literal_global_87);
  }
}

@end