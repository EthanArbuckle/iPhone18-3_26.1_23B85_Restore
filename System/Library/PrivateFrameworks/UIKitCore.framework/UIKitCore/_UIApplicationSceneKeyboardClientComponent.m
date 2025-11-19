@interface _UIApplicationSceneKeyboardClientComponent
- (BOOL)isKeyboardDockDisabled;
- (BOOL)suppressKeyboardFocusRequests;
- (UIEdgeInsets)minimumKeyboardPadding;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation _UIApplicationSceneKeyboardClientComponent

- (BOOL)suppressKeyboardFocusRequests
{
  v2 = [(FBSSceneComponent *)self clientScene];
  v3 = [v2 settings];
  v4 = [v3 suppressKeyboardFocusRequests];

  return v4;
}

- (UIEdgeInsets)minimumKeyboardPadding
{
  v2 = [(FBSSceneComponent *)self clientScene];
  v3 = [v2 settings];
  [v3 minimumKeyboardPadding];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (BOOL)isKeyboardDockDisabled
{
  v2 = [(FBSSceneComponent *)self clientScene];
  v3 = [v2 settings];
  v4 = [v3 keyboardDockDisabled];

  return v4;
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v12 = a4;
  v5 = [v12 settingsDiff];
  v6 = [v5 containsProperty:sel_hardwareKeyboardExclusivityIdentifier];

  if (v6)
  {
    v7 = [v12 settings];
    v8 = [v7 hardwareKeyboardExclusivityIdentifier];

    v9 = [(FBSSceneComponent *)self clientScene];
    v10 = [(UIScene *)UIWindowScene _sceneForFBSScene:v9];

    v11 = [v10 keyboardSceneDelegate];
    [v11 setHardwareKeyboardExclusivityIdentifier:v8];
  }
}

@end