@interface _UISceneHostingViewControllerPreferencePropagationHostComponent
- (BOOL)homeIndicatorAutoHidden;
- (NSArray)multitaskingDragExclusionRects;
- (_UISceneHostingViewControllerPreferencePropagationHostComponentDelegate)delegate;
- (id)uiClientSettings;
- (int)statusBarVisibility;
- (int64_t)preferredPointerLockStatus;
- (int64_t)statusBarStyle;
- (int64_t)whitePointAdaptivityStyle;
- (unint64_t)screenEdgesDeferringSystemGestures;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)setScene:(id)scene;
@end

@implementation _UISceneHostingViewControllerPreferencePropagationHostComponent

- (void)setScene:(id)scene
{
  v6.receiver = self;
  v6.super_class = _UISceneHostingViewControllerPreferencePropagationHostComponent;
  [(FBSSceneComponent *)&v6 setScene:scene];
  scene = [(FBSSceneComponent *)self scene];
  clientSettings = [scene clientSettings];
  self->_settingsAreUISubclass = [clientSettings isUISubclass];
}

- (id)uiClientSettings
{
  if (self && self[24] == 1)
  {
    scene = [self scene];
    clientSettings = [scene clientSettings];
  }

  else
  {
    clientSettings = 0;
  }

  return clientSettings;
}

- (int64_t)statusBarStyle
{
  uiClientSettings = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self uiClientSettings];
  statusBarStyle = [uiClientSettings statusBarStyle];

  return statusBarStyle;
}

- (int)statusBarVisibility
{
  scene = [(FBSSceneComponent *)self scene];
  clientSettings = [scene clientSettings];
  preferredStatusBarVisibility = [clientSettings preferredStatusBarVisibility];

  return preferredStatusBarVisibility;
}

- (int64_t)whitePointAdaptivityStyle
{
  uiClientSettings = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self uiClientSettings];
  whitePointAdaptivityStyle = [uiClientSettings whitePointAdaptivityStyle];

  return whitePointAdaptivityStyle;
}

- (NSArray)multitaskingDragExclusionRects
{
  uiClientSettings = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self uiClientSettings];
  multitaskingDragExclusionRects = [uiClientSettings multitaskingDragExclusionRects];

  return multitaskingDragExclusionRects;
}

- (unint64_t)screenEdgesDeferringSystemGestures
{
  uiClientSettings = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self uiClientSettings];
  screenEdgesDeferringSystemGestures = [uiClientSettings screenEdgesDeferringSystemGestures];

  return screenEdgesDeferringSystemGestures;
}

- (BOOL)homeIndicatorAutoHidden
{
  uiClientSettings = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self uiClientSettings];
  homeIndicatorAutoHidden = [uiClientSettings homeIndicatorAutoHidden];

  return homeIndicatorAutoHidden;
}

- (int64_t)preferredPointerLockStatus
{
  uiClientSettings = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self uiClientSettings];
  preferredPointerLockStatus = [uiClientSettings preferredPointerLockStatus];

  return preferredPointerLockStatus;
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsDiff = [settings settingsDiff];
  if (([settingsDiff containsProperty:sel_statusBarStyle] & 1) != 0 || objc_msgSend(settingsDiff, "containsProperty:", sel_preferredStatusBarVisibility))
  {
    delegate = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self delegate];
    [delegate sceneDidUpdateStatusBarAppearance];
  }

  if ([settingsDiff containsProperty:sel_whitePointAdaptivityStyle])
  {
    delegate2 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self delegate];
    [delegate2 sceneDidUpdateWhitePointAdaptivityStyle];
  }

  if ([settingsDiff containsProperty:sel_multitaskingDragExclusionRects])
  {
    delegate3 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self delegate];
    [delegate3 sceneDidUpdateMultitaskingDragExclusionRects];
  }

  if ([settingsDiff containsProperty:sel_screenEdgesDeferringSystemGestures])
  {
    delegate4 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self delegate];
    [delegate4 sceneDidUpdateScreenEdgesDeferringSystemGestures];
  }

  if ([settingsDiff containsProperty:sel_homeIndicatorAutoHidden])
  {
    delegate5 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self delegate];
    [delegate5 sceneDidUpdateHomeIndicatorAutoHidden];
  }

  if ([settingsDiff containsProperty:sel_preferredPointerLockStatus])
  {
    delegate6 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self delegate];
    [delegate6 sceneDidUpdatePreferredPointerLockStatus];
  }
}

- (_UISceneHostingViewControllerPreferencePropagationHostComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end