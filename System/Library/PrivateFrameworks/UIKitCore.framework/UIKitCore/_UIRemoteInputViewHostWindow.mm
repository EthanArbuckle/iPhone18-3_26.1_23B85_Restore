@interface _UIRemoteInputViewHostWindow
- (BOOL)inhibitSetupOrientation;
- (_UIRemoteInputViewHostWindow)initWithWindowScene:(id)a3;
- (_UIRemoteInputViewHostWindowDelegate)hostWindowDelegate;
- (id)firstResponder;
- (void)_didChangeKeyplaneWithContext:(id)a3;
@end

@implementation _UIRemoteInputViewHostWindow

- (_UIRemoteInputViewHostWindow)initWithWindowScene:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIRemoteInputViewHostWindow;
  v3 = [(UIApplicationRotationFollowingWindow *)&v6 initWithWindowScene:a3];
  v4 = v3;
  if (v3)
  {
    [(UIWindow *)v3 setWindowLevel:-1.79769313e308];
    [(UIView *)v4 setBackgroundColor:0];
    [(UIView *)v4 setOpaque:0];
    [(UIView *)v4 setClipsToBounds:1];
  }

  return v4;
}

- (void)_didChangeKeyplaneWithContext:(id)a3
{
  v3 = [(_UIRemoteInputViewHostWindow *)self hostWindowDelegate];
  [v3 updateInputViewsIfNecessary];
}

- (id)firstResponder
{
  v2 = [UIApp keyWindow];
  v3 = [v2 firstResponder];

  return v3;
}

- (BOOL)inhibitSetupOrientation
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v3 = [v2 containerRootController];
  v4 = [v3 shouldAutorotate];

  return v4;
}

- (_UIRemoteInputViewHostWindowDelegate)hostWindowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hostWindowDelegate);

  return WeakRetained;
}

@end