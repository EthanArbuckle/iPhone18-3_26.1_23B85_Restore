@interface SBAmbientWWDCTestRecipe
+ (BOOL)shouldRegisterTestRecipe;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBAmbientWWDCTestRecipe

- (void)handleVolumeIncrease
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = [MEMORY[0x277CCAB88] notificationWithName:@"com.apple.ambient.autoscroll-widgets" object:0];
  [v3 postNotification:v2];
}

- (void)handleVolumeDecrease
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v5 = [WeakRetained ambientPresentationController];

  if (([v5 isPresented] & 1) == 0)
  {
    v3 = v5;
    v4 = 1;
    goto LABEL_5;
  }

  if ([v5 ambientDisplayStyle])
  {
    [v5 _setAmbientDisplayStyle:0];
    v3 = v5;
    v4 = 0;
LABEL_5:
    [v3 _updateAmbientTriggerState:v4 analogousTriggerEvents:0 withReason:@"SBAmbientPresentationReasonTestRecipe"];
    goto LABEL_6;
  }

  [v5 _setAmbientDisplayStyle:1];
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

  v3 = [MEMORY[0x277D75418] currentDevice];
  v2 = [v3 userInterfaceIdiom] != 1;

  return v2;
}

@end