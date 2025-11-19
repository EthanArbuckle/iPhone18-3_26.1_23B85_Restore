@interface _UIKeyShortcutHUDWindow
- (_UIKeyShortcutHUDWindow)initWithWindowScene:(id)a3;
- (_UIKeyShortcutHUDWindowDelegate)delegate;
- (void)_hudWindowSceneDidResignTargetOfKeyboardEventDeferringEnvironment:(id)a3;
- (void)resignKeyWindow;
@end

@implementation _UIKeyShortcutHUDWindow

- (_UIKeyShortcutHUDWindow)initWithWindowScene:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UIKeyShortcutHUDWindow;
  v5 = [(UIWindow *)&v11 initWithWindowScene:v4];
  v6 = v5;
  if (v5)
  {
    [(UIView *)v5 setOpaque:0];
    v7 = +[UIColor clearColor];
    [(UIView *)v6 setBackgroundColor:v7];

    [(UIWindow *)v6 setWindowLevel:2200.0];
    v8 = [(UIView *)v6 layer];
    [v8 setHitTestsAsOpaque:1];

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 addObserver:v6 selector:sel__hudWindowSceneDidResignTargetOfKeyboardEventDeferringEnvironment_ name:@"_UISceneDidResignTargetOfKeyboardEventDeferringEnvironmentNotification" object:v4];
  }

  return v6;
}

- (void)resignKeyWindow
{
  v4.receiver = self;
  v4.super_class = _UIKeyShortcutHUDWindow;
  [(UIWindow *)&v4 resignKeyWindow];
  v3 = [(_UIKeyShortcutHUDWindow *)self delegate];
  [v3 keyShortcutHUDWindowDidResignKey:self];
}

- (void)_hudWindowSceneDidResignTargetOfKeyboardEventDeferringEnvironment:(id)a3
{
  v4 = [(_UIKeyShortcutHUDWindow *)self delegate];
  [v4 keyShortcutHUDWindowSceneDidResignKeyboardFocus:self];
}

- (_UIKeyShortcutHUDWindowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end