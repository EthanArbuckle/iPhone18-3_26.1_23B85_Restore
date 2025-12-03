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
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)sendActions:(id)actions;
@end

@implementation SBSUIFeaturePolicyHostComponent

- (BOOL)shouldDisableBanners
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  disablesBanners = [clientSettings disablesBanners];

  return disablesBanners;
}

- (BOOL)shouldDisableAlertItems
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  disablesAlertItems = [clientSettings disablesAlertItems];

  return disablesAlertItems;
}

- (BOOL)shouldDisableControlCenter
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  disablesControlCenter = [clientSettings disablesControlCenter];

  return disablesControlCenter;
}

- (BOOL)shouldDisableSiri
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  disablesSiri = [clientSettings disablesSiri];

  return disablesSiri;
}

- (BOOL)shouldDisableInteractiveScreenshotGesture
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  disablesInteractiveScreenshotGesture = [clientSettings disablesInteractiveScreenshotGesture];

  return disablesInteractiveScreenshotGesture;
}

- (BOOL)shouldDisableReachability
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  disablesReachability = [clientSettings disablesReachability];

  return disablesReachability;
}

- (BOOL)allowsMenuButtonDismissal
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  allowsMenuButtonDismissal = [clientSettings allowsMenuButtonDismissal];

  return allowsMenuButtonDismissal;
}

- (unint64_t)desiredHardwareButtonEvents
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  desiredHardwareButtonEvents = [clientSettings desiredHardwareButtonEvents];

  return desiredHardwareButtonEvents;
}

- (NSSet)desiredBackgroundActivities
{
  hostScene = [(FBSSceneComponent *)self hostScene];
  clientSettings = [hostScene clientSettings];
  desiredBackgroundActivities = [clientSettings desiredBackgroundActivities];

  return desiredBackgroundActivities;
}

- (void)sendActions:(id)actions
{
  actionsCopy = actions;
  hostScene = [(FBSSceneComponent *)self hostScene];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SBSUIFeaturePolicyHostComponent_sendActions___block_invoke;
  v7[3] = &unk_1E789EDF8;
  v8 = actionsCopy;
  v6 = actionsCopy;
  [hostScene performUpdate:v7];
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  settingsDiff = [settings settingsDiff];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([settingsDiff containsProperty:sel_disablesBanners])
  {
    [WeakRetained featurePolicyHostComponentDidChangeShouldDisableBanners:self];
  }

  if ([settingsDiff containsProperty:sel_disablesAlertItems])
  {
    [WeakRetained featurePolicyHostComponentDidChangeShouldDisableAlertItems:self];
  }

  if ([settingsDiff containsProperty:sel_disablesControlCenter])
  {
    [WeakRetained featurePolicyHostComponentDidChangeShouldDisableControlCenter:self];
  }

  if ([settingsDiff containsProperty:sel_disablesSiri])
  {
    [WeakRetained featurePolicyHostComponentDidChangeShouldDisableSiri:self];
  }

  if ([settingsDiff containsProperty:sel_disablesInteractiveScreenshotGesture])
  {
    [WeakRetained featurePolicyHostComponentDidChangeShouldDisableInteractiveScreenshotGesture:self];
  }

  if ([settingsDiff containsProperty:sel_disablesReachability])
  {
    [WeakRetained featurePolicyHostComponentDidChangeShouldDisableReachability:self];
  }

  if ([settingsDiff containsProperty:sel_allowsMenuButtonDismissal])
  {
    [WeakRetained featurePolicyHostComponentDidChangeAllowsMenuButtonDismissal:self];
  }

  if ([settingsDiff containsProperty:sel_desiredHardwareButtonEvents])
  {
    [WeakRetained featurePolicyHostComponentDidChangeDesiredHardwareButtonEvents:self];
  }

  if ([settingsDiff containsProperty:sel_desiredBackgroundActivities])
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