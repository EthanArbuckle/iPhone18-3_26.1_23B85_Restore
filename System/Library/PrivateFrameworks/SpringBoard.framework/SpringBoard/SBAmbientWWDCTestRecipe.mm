@interface SBAmbientWWDCTestRecipe
+ (BOOL)shouldRegisterTestRecipe;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBAmbientWWDCTestRecipe

- (void)handleVolumeIncrease
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [MEMORY[0x277CCAB88] notificationWithName:@"com.apple.ambient.autoscroll-widgets" object:0];
  [defaultCenter postNotification:v2];
}

- (void)handleVolumeDecrease
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  ambientPresentationController = [WeakRetained ambientPresentationController];

  if (([ambientPresentationController isPresented] & 1) == 0)
  {
    v3 = ambientPresentationController;
    v4 = 1;
    goto LABEL_5;
  }

  if ([ambientPresentationController ambientDisplayStyle])
  {
    [ambientPresentationController _setAmbientDisplayStyle:0];
    v3 = ambientPresentationController;
    v4 = 0;
LABEL_5:
    [v3 _updateAmbientTriggerState:v4 analogousTriggerEvents:0 withReason:@"SBAmbientPresentationReasonTestRecipe"];
    goto LABEL_6;
  }

  [ambientPresentationController _setAmbientDisplayStyle:1];
LABEL_6:
}

+ (BOOL)shouldRegisterTestRecipe
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  if (__sb__runningInSpringBoard())
  {
    return SBFEffectiveDeviceClass() != 2;
  }

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v2 = [currentDevice userInterfaceIdiom] != 1;

  return v2;
}

@end