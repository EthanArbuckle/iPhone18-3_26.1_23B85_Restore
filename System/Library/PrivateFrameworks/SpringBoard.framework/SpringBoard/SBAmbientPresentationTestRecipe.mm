@interface SBAmbientPresentationTestRecipe
+ (BOOL)shouldRegisterTestRecipe;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBAmbientPresentationTestRecipe

- (void)handleVolumeIncrease
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  ambientPresentationController = [WeakRetained ambientPresentationController];

  [ambientPresentationController _updateAmbientTriggerState:objc_msgSend(ambientPresentationController analogousTriggerEvents:"isPresented") ^ 1 withReason:{0, @"SBAmbientPresentationReasonTestRecipe"}];
}

- (void)handleVolumeDecrease
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  ambientPresentationController = [WeakRetained ambientPresentationController];

  [ambientPresentationController _setAmbientDisplayStyle:objc_msgSend(ambientPresentationController forReason:{"ambientDisplayStyle") == 0, @"Test Recipe"}];
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