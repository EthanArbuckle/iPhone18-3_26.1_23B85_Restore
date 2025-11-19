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
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)setScene:(id)a3;
@end

@implementation _UISceneHostingViewControllerPreferencePropagationHostComponent

- (void)setScene:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UISceneHostingViewControllerPreferencePropagationHostComponent;
  [(FBSSceneComponent *)&v6 setScene:a3];
  v4 = [(FBSSceneComponent *)self scene];
  v5 = [v4 clientSettings];
  self->_settingsAreUISubclass = [v5 isUISubclass];
}

- (id)uiClientSettings
{
  if (a1 && a1[24] == 1)
  {
    v1 = [a1 scene];
    v2 = [v1 clientSettings];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (int64_t)statusBarStyle
{
  v2 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self uiClientSettings];
  v3 = [v2 statusBarStyle];

  return v3;
}

- (int)statusBarVisibility
{
  v2 = [(FBSSceneComponent *)self scene];
  v3 = [v2 clientSettings];
  v4 = [v3 preferredStatusBarVisibility];

  return v4;
}

- (int64_t)whitePointAdaptivityStyle
{
  v2 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self uiClientSettings];
  v3 = [v2 whitePointAdaptivityStyle];

  return v3;
}

- (NSArray)multitaskingDragExclusionRects
{
  v2 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self uiClientSettings];
  v3 = [v2 multitaskingDragExclusionRects];

  return v3;
}

- (unint64_t)screenEdgesDeferringSystemGestures
{
  v2 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self uiClientSettings];
  v3 = [v2 screenEdgesDeferringSystemGestures];

  return v3;
}

- (BOOL)homeIndicatorAutoHidden
{
  v2 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self uiClientSettings];
  v3 = [v2 homeIndicatorAutoHidden];

  return v3;
}

- (int64_t)preferredPointerLockStatus
{
  v2 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self uiClientSettings];
  v3 = [v2 preferredPointerLockStatus];

  return v3;
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v11 = [a4 settingsDiff];
  if (([v11 containsProperty:sel_statusBarStyle] & 1) != 0 || objc_msgSend(v11, "containsProperty:", sel_preferredStatusBarVisibility))
  {
    v5 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self delegate];
    [v5 sceneDidUpdateStatusBarAppearance];
  }

  if ([v11 containsProperty:sel_whitePointAdaptivityStyle])
  {
    v6 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self delegate];
    [v6 sceneDidUpdateWhitePointAdaptivityStyle];
  }

  if ([v11 containsProperty:sel_multitaskingDragExclusionRects])
  {
    v7 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self delegate];
    [v7 sceneDidUpdateMultitaskingDragExclusionRects];
  }

  if ([v11 containsProperty:sel_screenEdgesDeferringSystemGestures])
  {
    v8 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self delegate];
    [v8 sceneDidUpdateScreenEdgesDeferringSystemGestures];
  }

  if ([v11 containsProperty:sel_homeIndicatorAutoHidden])
  {
    v9 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self delegate];
    [v9 sceneDidUpdateHomeIndicatorAutoHidden];
  }

  if ([v11 containsProperty:sel_preferredPointerLockStatus])
  {
    v10 = [(_UISceneHostingViewControllerPreferencePropagationHostComponent *)self delegate];
    [v10 sceneDidUpdatePreferredPointerLockStatus];
  }
}

- (_UISceneHostingViewControllerPreferencePropagationHostComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end