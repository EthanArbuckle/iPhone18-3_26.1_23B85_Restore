@interface NCModeManager
- (NCModeManager)init;
- (void)_fetchCurrentModeConfiguration;
- (void)_notifyObserversWithBlock:(id)a3;
- (void)_updateWithModeConfiguration:(id)a3 previousModeConfiguration:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
- (void)setModeConfiguration:(id)a3;
- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4;
@end

@implementation NCModeManager

- (NCModeManager)init
{
  v13.receiver = self;
  v13.super_class = NCModeManager;
  v2 = [(NCModeManager *)&v13 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v4 = [v3 bundleIdentifier];
    v5 = [v4 isEqualToString:@"com.apple.internal.NotificationsUITool"];

    if (v5)
    {
      v6 = @"com.apple.internal.NotificationsUITool.NCModeManager";
    }

    else
    {
      v6 = @"com.apple.springboard.NCModeManager";
    }

    v7 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:v6];
    stateService = v2->_stateService;
    v2->_stateService = v7;

    [(DNDStateService *)v2->_stateService addStateUpdateListener:v2 withCompletionHandler:0];
    v9 = [MEMORY[0x277D059C8] serviceForClientIdentifier:v6];
    modeConfigurationService = v2->_modeConfigurationService;
    v2->_modeConfigurationService = v9;

    [(DNDModeConfigurationService *)v2->_modeConfigurationService addListener:v2 withCompletionHandler:0];
    currentModeConfiguration = v2->_currentModeConfiguration;
    v2->_currentModeConfiguration = 0;

    [(NCModeManager *)v2 _fetchCurrentModeConfiguration];
  }

  return v2;
}

- (void)dealloc
{
  [(DNDModeConfigurationService *)self->_modeConfigurationService removeListener:self];
  v3.receiver = self;
  v3.super_class = NCModeManager;
  [(NCModeManager *)&v3 dealloc];
}

- (void)setModeConfiguration:(id)a3
{
  modeConfigurationService = self->_modeConfigurationService;
  v4 = 0;
  [(DNDModeConfigurationService *)modeConfigurationService setModeConfiguration:a3 error:&v4];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    observers = self->_observers;
    v10 = v5;
    if (!observers)
    {
      v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      v8 = self->_observers;
      self->_observers = v7;

      observers = self->_observers;
    }

    [(NSHashTable *)observers addObject:v10];
    v9 = [(NCModeManager *)self currentModeConfiguration];
    [v10 modeManager:self didUpdateCurrentModeConfiguration:v9 previousModeConfiguration:0];
  }

  MEMORY[0x2821F96F8](v4);
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSHashTable *)observers removeObject:?];
    }
  }
}

- (void)stateService:(id)a3 didReceiveDoNotDisturbStateUpdate:(id)a4
{
  v5 = a4;
  v6 = [v5 state];
  v9 = [v6 activeModeConfiguration];

  v7 = [v5 previousState];

  v8 = [v7 activeModeConfiguration];

  [(NCModeManager *)self _updateWithModeConfiguration:v9 previousModeConfiguration:v8];
}

- (void)_fetchCurrentModeConfiguration
{
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__NCModeManager__fetchCurrentModeConfiguration__block_invoke;
  block[3] = &unk_27836F6A8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __47__NCModeManager__fetchCurrentModeConfiguration__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v6 = 0;
  v3 = [v2 queryCurrentStateWithError:&v6];
  v4 = v6;
  v5 = [v3 activeModeConfiguration];
  [*(a1 + 32) _updateWithModeConfiguration:v5 previousModeConfiguration:*(*(a1 + 32) + 32)];
}

- (void)_updateWithModeConfiguration:(id)a3 previousModeConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (self->_currentModeConfiguration != v7)
  {
    objc_storeStrong(&self->_currentModeConfiguration, a3);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__NCModeManager__updateWithModeConfiguration_previousModeConfiguration___block_invoke;
    block[3] = &unk_2783715C0;
    block[4] = self;
    v10 = v7;
    v11 = v8;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __72__NCModeManager__updateWithModeConfiguration_previousModeConfiguration___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__NCModeManager__updateWithModeConfiguration_previousModeConfiguration___block_invoke_2;
  v3[3] = &unk_278372D18;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 _notifyObserversWithBlock:v3];
}

- (void)_notifyObserversWithBlock:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    observers = self->_observers;
    if (observers)
    {
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v6 = [(NSHashTable *)observers copy];
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = *v14;
        do
        {
          v9 = 0;
          do
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v13 + 1) + 8 * v9);
            v11 = objc_initWeak(&location, self);
            v4[2](v4, self, v10);

            objc_destroyWeak(&location);
            ++v9;
          }

          while (v7 != v9);
          v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }
  }
}

@end