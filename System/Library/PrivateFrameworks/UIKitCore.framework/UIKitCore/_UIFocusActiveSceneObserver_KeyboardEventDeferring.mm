@interface _UIFocusActiveSceneObserver_KeyboardEventDeferring
- (BOOL)isActive;
- (id)_initWithScene:(id)scene;
- (void)dealloc;
@end

@implementation _UIFocusActiveSceneObserver_KeyboardEventDeferring

- (BOOL)isActive
{
  WeakRetained = objc_loadWeakRetained(&self->super._scene);
  _isTargetOfKeyboardEventDeferringEnvironment = [WeakRetained _isTargetOfKeyboardEventDeferringEnvironment];

  return _isTargetOfKeyboardEventDeferringEnvironment;
}

- (void)dealloc
{
  v6[2] = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"_UISceneDidBecomeTargetOfKeyboardEventDeferringEnvironmentNotification";
  v6[1] = @"_UISceneDidResignTargetOfKeyboardEventDeferringEnvironmentNotification";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v4 names:?];

  v5.receiver = self;
  v5.super_class = _UIFocusActiveSceneObserver_KeyboardEventDeferring;
  [(_UIFocusActiveSceneObserver_KeyboardEventDeferring *)&v5 dealloc];
}

- (id)_initWithScene:(id)scene
{
  sceneCopy = scene;
  v9.receiver = self;
  v9.super_class = _UIFocusActiveSceneObserver_KeyboardEventDeferring;
  v5 = [(_UIFocusActiveSceneObserver *)&v9 _initWithScene:sceneCopy];
  if (v5)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__activeStateChanged_ name:@"_UISceneDidBecomeTargetOfKeyboardEventDeferringEnvironmentNotification" object:sceneCopy];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel__activeStateChanged_ name:@"_UISceneDidResignTargetOfKeyboardEventDeferringEnvironmentNotification" object:sceneCopy];
  }

  return v5;
}

@end