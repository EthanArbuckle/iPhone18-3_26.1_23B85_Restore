@interface _UIApplicationSceneKeyboardClientComponent
- (BOOL)isKeyboardDockDisabled;
- (BOOL)suppressKeyboardFocusRequests;
- (UIEdgeInsets)minimumKeyboardPadding;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation _UIApplicationSceneKeyboardClientComponent

- (BOOL)suppressKeyboardFocusRequests
{
  clientScene = [(FBSSceneComponent *)self clientScene];
  settings = [clientScene settings];
  suppressKeyboardFocusRequests = [settings suppressKeyboardFocusRequests];

  return suppressKeyboardFocusRequests;
}

- (UIEdgeInsets)minimumKeyboardPadding
{
  clientScene = [(FBSSceneComponent *)self clientScene];
  settings = [clientScene settings];
  [settings minimumKeyboardPadding];
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
  clientScene = [(FBSSceneComponent *)self clientScene];
  settings = [clientScene settings];
  keyboardDockDisabled = [settings keyboardDockDisabled];

  return keyboardDockDisabled;
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v6 = [settingsDiff containsProperty:sel_hardwareKeyboardExclusivityIdentifier];

  if (v6)
  {
    settings = [settingsCopy settings];
    hardwareKeyboardExclusivityIdentifier = [settings hardwareKeyboardExclusivityIdentifier];

    clientScene = [(FBSSceneComponent *)self clientScene];
    v10 = [(UIScene *)UIWindowScene _sceneForFBSScene:clientScene];

    keyboardSceneDelegate = [v10 keyboardSceneDelegate];
    [keyboardSceneDelegate setHardwareKeyboardExclusivityIdentifier:hardwareKeyboardExclusivityIdentifier];
  }
}

@end