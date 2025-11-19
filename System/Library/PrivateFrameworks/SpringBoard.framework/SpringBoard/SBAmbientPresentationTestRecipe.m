@interface SBAmbientPresentationTestRecipe
+ (BOOL)shouldRegisterTestRecipe;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBAmbientPresentationTestRecipe

- (void)handleVolumeIncrease
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained ambientPresentationController];

  [v3 _updateAmbientTriggerState:objc_msgSend(v3 analogousTriggerEvents:"isPresented") ^ 1 withReason:{0, @"SBAmbientPresentationReasonTestRecipe"}];
}

- (void)handleVolumeDecrease
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v3 = [WeakRetained ambientPresentationController];

  [v3 _setAmbientDisplayStyle:objc_msgSend(v3 forReason:{"ambientDisplayStyle") == 0, @"Test Recipe"}];
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