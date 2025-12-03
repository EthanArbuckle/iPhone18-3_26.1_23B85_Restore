@interface _UIRemoteInputViewHostWindow
- (BOOL)inhibitSetupOrientation;
- (_UIRemoteInputViewHostWindow)initWithWindowScene:(id)scene;
- (_UIRemoteInputViewHostWindowDelegate)hostWindowDelegate;
- (id)firstResponder;
- (void)_didChangeKeyplaneWithContext:(id)context;
@end

@implementation _UIRemoteInputViewHostWindow

- (_UIRemoteInputViewHostWindow)initWithWindowScene:(id)scene
{
  v6.receiver = self;
  v6.super_class = _UIRemoteInputViewHostWindow;
  v3 = [(UIApplicationRotationFollowingWindow *)&v6 initWithWindowScene:scene];
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

- (void)_didChangeKeyplaneWithContext:(id)context
{
  hostWindowDelegate = [(_UIRemoteInputViewHostWindow *)self hostWindowDelegate];
  [hostWindowDelegate updateInputViewsIfNecessary];
}

- (id)firstResponder
{
  keyWindow = [UIApp keyWindow];
  firstResponder = [keyWindow firstResponder];

  return firstResponder;
}

- (BOOL)inhibitSetupOrientation
{
  v2 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  containerRootController = [v2 containerRootController];
  shouldAutorotate = [containerRootController shouldAutorotate];

  return shouldAutorotate;
}

- (_UIRemoteInputViewHostWindowDelegate)hostWindowDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hostWindowDelegate);

  return WeakRetained;
}

@end