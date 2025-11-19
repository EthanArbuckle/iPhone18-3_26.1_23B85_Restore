@interface _UITextEffectsRemoteView
- (int)textEffectsVisibilityLevel;
@end

@implementation _UITextEffectsRemoteView

- (int)textEffectsVisibilityLevel
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 responder];
  v5 = [v4 _window];

  v6 = [(_UIRemoteView *)self remoteViewController];
  v7 = [v6 view];
  v8 = [v7 window];

  if (v5)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || ([v5 level], v11 = v10, objc_msgSend(v8, "level"), v11 <= v12))
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