@interface _UIFocusActiveSceneObserver_KeyboardEventDeferring
- (BOOL)isActive;
- (id)_initWithScene:(id)a3;
- (void)dealloc;
@end

@implementation _UIFocusActiveSceneObserver_KeyboardEventDeferring

- (BOOL)isActive
{
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  v3 = [WeakRetained _isTargetOfKeyboardEventDeferringEnvironment];

  return v3;
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"_UISceneDidBecomeTargetOfKeyboardEventDeferringEnvironmentNotification";
  v6[1] = @"_UISceneDidResignTargetOfKeyboardEventDeferringEnvironmentNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)v3 _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIFocusActiveSceneObserver_KeyboardEventDeferring;
  [(_UIFocusActiveSceneObserver_KeyboardEventDeferring *)&v5 dealloc];
}

- (id)_initWithScene:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIFocusActiveSceneObserver_KeyboardEventDeferring;
  v5 = [(_UIFocusActiveSceneObserver *)&v9 _initWithScene:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v5 selector:sel__activeStateChanged_ name:@"_UISceneDidBecomeTargetOfKeyboardEventDeferringEnvironmentNotification" object:v4];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v5 selector:sel__activeStateChanged_ name:@"_UISceneDidResignTargetOfKeyboardEventDeferringEnvironmentNotification" object:v4];
  }

  return v5;
}

@end