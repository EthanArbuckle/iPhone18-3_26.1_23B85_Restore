@interface SBSystemApertureProminentCompactTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBSystemApertureProminentCompactTestRecipe

- (void)handleVolumeIncrease
{
  if (!self->_elementAssertion)
  {
    v19[1] = v5;
    v19[2] = v4;
    v19[9] = v2;
    v19[10] = v3;
    v7 = objc_alloc_init(SBPrototypeProminentPresentingActivityElementViewProvider);
    systemApertureControllerForMainDisplay = [SBApp systemApertureControllerForMainDisplay];
    v9 = [systemApertureControllerForMainDisplay registerElement:v7];
    elementAssertion = self->_elementAssertion;
    self->_elementAssertion = v9;

    objc_initWeak(v19, v7);
    v11 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__SBSystemApertureProminentCompactTestRecipe_handleVolumeIncrease__block_invoke;
    block[3] = &unk_2783A8C68;
    objc_copyWeak(&v18, v19);
    v12 = MEMORY[0x277D85CD0];
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
    objc_initWeak(&location, self);
    v13 = dispatch_time(0, 3000000000);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__SBSystemApertureProminentCompactTestRecipe_handleVolumeIncrease__block_invoke_2;
    v14[3] = &unk_2783A8C68;
    objc_copyWeak(&v15, &location);
    dispatch_after(v13, v12, v14);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    objc_destroyWeak(&v18);
    objc_destroyWeak(v19);
  }
}

void __66__SBSystemApertureProminentCompactTestRecipe_handleVolumeIncrease__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setProminent:0];
  [WeakRetained setShowsTrailing:1];
}

void __66__SBSystemApertureProminentCompactTestRecipe_handleVolumeIncrease__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[1] invalidateWithReason:@"timeout"];
  v1 = WeakRetained[1];
  WeakRetained[1] = 0;
}

- (void)handleVolumeDecrease
{
  elementAssertion = self->_elementAssertion;
  if (elementAssertion)
  {
    [(SAInvalidatable *)elementAssertion invalidateWithReason:@"volume decrease"];
    v4 = self->_elementAssertion;
    self->_elementAssertion = 0;
  }
}

@end