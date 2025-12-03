@interface _UIKeyShortcutHUDWindow
- (_UIKeyShortcutHUDWindow)initWithWindowScene:(id)scene;
- (_UIKeyShortcutHUDWindowDelegate)delegate;
- (void)_hudWindowSceneDidResignTargetOfKeyboardEventDeferringEnvironment:(id)environment;
- (void)resignKeyWindow;
@end

@implementation _UIKeyShortcutHUDWindow

- (_UIKeyShortcutHUDWindow)initWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v11.receiver = self;
  v11.super_class = _UIKeyShortcutHUDWindow;
  v5 = [(UIWindow *)&v11 initWithWindowScene:sceneCopy];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5 setOpaque:0];
    v7 = +[UIColor clearColor];
    [(UIView *)v6 setBackgroundColor:v7];

    [(UIWindow *)v6 setWindowLevel:2200.0];
    layer = [(UIView *)v6 layer];
    [layer setHitTestsAsOpaque:1];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__hudWindowSceneDidResignTargetOfKeyboardEventDeferringEnvironment_ name:@"_UISceneDidResignTargetOfKeyboardEventDeferringEnvironmentNotification" object:sceneCopy];
  }

  return v6;
}

- (void)resignKeyWindow
{
  v4.receiver = self;
  v4.super_class = _UIKeyShortcutHUDWindow;
  [(UIWindow *)&v4 resignKeyWindow];
  delegate = [(_UIKeyShortcutHUDWindow *)self delegate];
  [delegate keyShortcutHUDWindowDidResignKey:self];
}

- (void)_hudWindowSceneDidResignTargetOfKeyboardEventDeferringEnvironment:(id)environment
{
  delegate = [(_UIKeyShortcutHUDWindow *)self delegate];
  [delegate keyShortcutHUDWindowSceneDidResignKeyboardFocus:self];
}

- (_UIKeyShortcutHUDWindowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end