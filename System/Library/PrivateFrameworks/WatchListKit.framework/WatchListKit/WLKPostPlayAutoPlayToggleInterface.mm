@interface WLKPostPlayAutoPlayToggleInterface
- (NSNumber)isNextEpisodeSettingEnabled;
- (NSNumber)isRecommendedItemsSettingEnabled;
- (WLKPostPlayAutoPlayToggleInterface)initWithDelegate:(id)a3;
- (WLKPostPlayAutoPlayToggleInterfaceDelegate)delegate;
- (void)_autoPlayNextEpisodeSettingDidChange:(id)a3;
- (void)_autoPlayRecommendedItemsSettingDidChange:(id)a3;
- (void)setIsNextEpisodeSettingEnabled:(id)a3;
- (void)setIsRecommendedItemsSettingEnabled:(id)a3;
@end

@implementation WLKPostPlayAutoPlayToggleInterface

- (WLKPostPlayAutoPlayToggleInterface)initWithDelegate:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WLKPostPlayAutoPlayToggleInterface;
  v5 = [(WLKPostPlayAutoPlayToggleInterface *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v6 selector:sel__autoPlayNextEpisodeSettingDidChange_ name:@"WLKPostPlayAutoPlayNextEpisodeSettingChangedNotification" object:0];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v6 selector:sel__autoPlayRecommendedItemsSettingDidChange_ name:@"WLKPostPlayAutoPlayNextEpisodeSettingChangedNotification" object:0];
  }

  return v6;
}

- (NSNumber)isNextEpisodeSettingEnabled
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&__accessLock_0);
  if (!self->_isNextEpisodeSettingEnabled)
  {
    v3 = +[WLKPostPlayAutoPlayManager defaultManager];
    v4 = [v3 isEnabledForType:1];

    v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    isNextEpisodeSettingEnabled = self->_isNextEpisodeSettingEnabled;
    self->_isNextEpisodeSettingEnabled = v5;
  }

  v7 = WLKSystemLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_isNextEpisodeSettingEnabled;
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlayToggleInterface - isNextEpisodeSettingEnabled returns %@", &v12, 0xCu);
  }

  v9 = self->_isNextEpisodeSettingEnabled;
  os_unfair_lock_unlock(&__accessLock_0);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setIsNextEpisodeSettingEnabled:(id)a3
{
  v5 = a3;
  if (self->_isNextEpisodeSettingEnabled != v5)
  {
    os_unfair_lock_lock(&__accessLock_0);
    objc_storeStrong(&self->_isNextEpisodeSettingEnabled, a3);
    os_unfair_lock_unlock(&__accessLock_0);
    if (v5)
    {
      [(NSTimer *)self->_nextEpisodeBouncer invalidate];
      objc_initWeak(&location, self);
      v6 = MEMORY[0x277CBEBB8];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __69__WLKPostPlayAutoPlayToggleInterface_setIsNextEpisodeSettingEnabled___block_invoke;
      v9[3] = &unk_279E5FAF8;
      objc_copyWeak(&v11, &location);
      v10 = v5;
      v7 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:0.5];
      nextEpisodeBouncer = self->_nextEpisodeBouncer;
      self->_nextEpisodeBouncer = v7;

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __69__WLKPostPlayAutoPlayToggleInterface_setIsNextEpisodeSettingEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_initWeak(&location, WeakRetained);
  v5 = [*(a1 + 32) BOOLValue];
  v6 = objc_alloc_init(WLKPostPlayAutoPlaySettings);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [(WLKPostPlayAutoPlaySettings *)v6 setNextEpisodeSettingValue:v7];

  v8 = +[WLKPostPlayAutoPlayManager defaultManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__WLKPostPlayAutoPlayToggleInterface_setIsNextEpisodeSettingEnabled___block_invoke_2;
  v9[3] = &unk_279E5FAD0;
  v11 = v5;
  objc_copyWeak(&v10, &location);
  [v8 setSettings:v6 completion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __69__WLKPostPlayAutoPlayToggleInterface_setIsNextEpisodeSettingEnabled___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [v10 nextEpisodeSettingValue];

    if (v6)
    {
      v7 = [v10 nextEpisodeSettingValue];
      v8 = [v7 BOOLValue];

      if (*(a1 + 40) != v8)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        [WeakRetained _autoPlayNextEpisodeSettingDidChange:0];
      }
    }
  }
}

- (NSNumber)isRecommendedItemsSettingEnabled
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&__accessLock_0);
  if (!self->_isRecommendedItemsSettingEnabled)
  {
    v3 = +[WLKPostPlayAutoPlayManager defaultManager];
    v4 = [v3 isEnabledForType:2];

    v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];
    isRecommendedItemsSettingEnabled = self->_isRecommendedItemsSettingEnabled;
    self->_isRecommendedItemsSettingEnabled = v5;
  }

  v7 = WLKSystemLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = self->_isRecommendedItemsSettingEnabled;
    v12 = 138412290;
    v13 = v8;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlayToggleInterface - isRecommendedItemsSettingEnabled returns %@", &v12, 0xCu);
  }

  v9 = self->_isRecommendedItemsSettingEnabled;
  os_unfair_lock_unlock(&__accessLock_0);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)setIsRecommendedItemsSettingEnabled:(id)a3
{
  v5 = a3;
  if (self->_isRecommendedItemsSettingEnabled != v5)
  {
    os_unfair_lock_lock(&__accessLock_0);
    objc_storeStrong(&self->_isRecommendedItemsSettingEnabled, a3);
    os_unfair_lock_unlock(&__accessLock_0);
    if (v5)
    {
      [(NSTimer *)self->_recommendedItemsBouncer invalidate];
      objc_initWeak(&location, self);
      v6 = MEMORY[0x277CBEBB8];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __74__WLKPostPlayAutoPlayToggleInterface_setIsRecommendedItemsSettingEnabled___block_invoke;
      v9[3] = &unk_279E5FAF8;
      objc_copyWeak(&v11, &location);
      v10 = v5;
      v7 = [v6 scheduledTimerWithTimeInterval:0 repeats:v9 block:0.5];
      recommendedItemsBouncer = self->_recommendedItemsBouncer;
      self->_recommendedItemsBouncer = v7;

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __74__WLKPostPlayAutoPlayToggleInterface_setIsRecommendedItemsSettingEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_initWeak(&location, WeakRetained);
  v5 = [*(a1 + 32) BOOLValue];
  v6 = objc_alloc_init(WLKPostPlayAutoPlaySettings);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [(WLKPostPlayAutoPlaySettings *)v6 setRecommendedItemsSettingValue:v7];

  v8 = +[WLKPostPlayAutoPlayManager defaultManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__WLKPostPlayAutoPlayToggleInterface_setIsRecommendedItemsSettingEnabled___block_invoke_2;
  v9[3] = &unk_279E5FAD0;
  v11 = v5;
  objc_copyWeak(&v10, &location);
  [v8 setSettings:v6 completion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __74__WLKPostPlayAutoPlayToggleInterface_setIsRecommendedItemsSettingEnabled___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [v10 recommendedItemsSettingValue];

    if (v6)
    {
      v7 = [v10 recommendedItemsSettingValue];
      v8 = [v7 BOOLValue];

      if (*(a1 + 40) != v8)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        [WeakRetained _autoPlayRecommendedItemsSettingDidChange:0];
      }
    }
  }
}

- (void)_autoPlayNextEpisodeSettingDidChange:(id)a3
{
  isNextEpisodeSettingEnabled = self->_isNextEpisodeSettingEnabled;
  self->_isNextEpisodeSettingEnabled = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 nextEpisodeSettingDidChange];
  }
}

- (void)_autoPlayRecommendedItemsSettingDidChange:(id)a3
{
  isRecommendedItemsSettingEnabled = self->_isRecommendedItemsSettingEnabled;
  self->_isRecommendedItemsSettingEnabled = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 recommendedItemsSettingDidChange];
  }
}

- (WLKPostPlayAutoPlayToggleInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end