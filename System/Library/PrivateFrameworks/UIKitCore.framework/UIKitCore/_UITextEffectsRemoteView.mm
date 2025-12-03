@interface _UITextEffectsRemoteView
- (int)textEffectsVisibilityLevel;
@end

@implementation _UITextEffectsRemoteView

- (int)textEffectsVisibilityLevel
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  responder = [v3 responder];
  _window = [responder _window];

  remoteViewController = [(_UIRemoteView *)self remoteViewController];
  view = [remoteViewController view];
  window = [view window];

  if (_window)
  {
    v9 = window == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || ([_window level], v11 = v10, objc_msgSend(window, "level"), v11 <= v12))
  {
    v13 = 500;
  }

  else
  {
    v13 = 9;
  }

  return v13;
}

@end