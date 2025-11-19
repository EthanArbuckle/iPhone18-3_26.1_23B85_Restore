@interface SBSUIFeaturePolicyHostComponent
- (BOOL)allowsMenuButtonDismissal;
- (BOOL)shouldDisableAlertItems;
- (BOOL)shouldDisableBanners;
- (BOOL)shouldDisableControlCenter;
- (BOOL)shouldDisableInteractiveScreenshotGesture;
- (BOOL)shouldDisableReachability;
- (BOOL)shouldDisableSiri;
- (NSSet)desiredBackgroundActivities;
- (SBSUIFeaturePolicyHostComponentDelegate)delegate;
- (unint64_t)desiredHardwareButtonEvents;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)sendActions:(id)a3;
@end

@implementation SBSUIFeaturePolicyHostComponent

- (BOOL)shouldDisableBanners
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 disablesBanners];

  return v4;
}

- (BOOL)shouldDisableAlertItems
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 disablesAlertItems];

  return v4;
}

- (BOOL)shouldDisableControlCenter
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 disablesControlCenter];

  return v4;
}

- (BOOL)shouldDisableSiri
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 disablesSiri];

  return v4;
}

- (BOOL)shouldDisableInteractiveScreenshotGesture
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 disablesInteractiveScreenshotGesture];

  return v4;
}

- (BOOL)shouldDisableReachability
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 disablesReachability];

  return v4;
}

- (BOOL)allowsMenuButtonDismissal
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 allowsMenuButtonDismissal];

  return v4;
}

- (unint64_t)desiredHardwareButtonEvents
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 desiredHardwareButtonEvents];

  return v4;
}

- (NSSet)desiredBackgroundActivities
{
  v2 = [(FBSSceneComponent *)self hostScene];
  v3 = [v2 clientSettings];
  v4 = [v3 desiredBackgroundActivities];

  return v4;
}

- (void)sendActions:(id)a3
{
  v4 = a3;
  v5 = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SBSUIFeaturePolicyHostComponent_sendActions___block_invoke;
  v7[3] = &unk_1E789EDF8;
  v8 = v4;
  v6 = v4;
  [v5 performUpdate:v7];
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = [a4 settingsDiff];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([v6 containsProperty:sel_disablesBanners])
  {
    [WeakRetained featurePolicyHostComponentDidChangeShouldDisableBanners:self];
  }

  if ([v6 containsProperty:sel_disablesAlertItems])
  {
    [WeakRetained featurePolicyHostComponentDidChangeShouldDisableAlertItems:self];
  }

  if ([v6 containsProperty:sel_disablesControlCenter])
  {
    [WeakRetained featurePolicyHostComponentDidChangeShouldDisableControlCenter:self];
  }

  if ([v6 containsProperty:sel_disablesSiri])
  {
    [WeakRetained featurePolicyHostComponentDidChangeShouldDisableSiri:self];
  }

  if ([v6 containsProperty:sel_disablesInteractiveScreenshotGesture])
  {
    [WeakRetained featurePolicyHostComponentDidChangeShouldDisableInteractiveScreenshotGesture:self];
  }

  if ([v6 containsProperty:sel_disablesReachability])
  {
    [WeakRetained featurePolicyHostComponentDidChangeShouldDisableReachability:self];
  }

  if ([v6 containsProperty:sel_allowsMenuButtonDismissal])
  {
    [WeakRetained featurePolicyHostComponentDidChangeAllowsMenuButtonDismissal:self];
  }

  if ([v6 containsProperty:sel_desiredHardwareButtonEvents])
  {
    [WeakRetained featurePolicyHostComponentDidChangeDesiredHardwareButtonEvents:self];
  }

  if ([v6 containsProperty:sel_desiredBackgroundActivities])
  {
    [WeakRetained featurePolicyHostComponentDidChangeDesiredBackgroundActivities:self];
  }
}

- (SBSUIFeaturePolicyHostComponentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end