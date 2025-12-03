@interface SBAirplaneModeController
+ (id)sharedInstance;
- (SBAirplaneModeController)init;
- (SBAirplaneModeDelegate)delegate;
- (void)airplaneModeChanged;
@end

@implementation SBAirplaneModeController

+ (id)sharedInstance
{
  if (sharedInstance___sharedAirplaneToken != -1)
  {
    +[SBAirplaneModeController sharedInstance];
  }

  v3 = sharedInstance___airplaneModeController;

  return v3;
}

void __42__SBAirplaneModeController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBAirplaneModeController);
  v1 = sharedInstance___airplaneModeController;
  sharedInstance___airplaneModeController = v0;
}

- (SBAirplaneModeController)init
{
  v8.receiver = self;
  v8.super_class = SBAirplaneModeController;
  v2 = [(SBAirplaneModeController *)&v8 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    radioQueue = v2->_radioQueue;
    v2->_radioQueue = Serial;

    v5 = [objc_alloc(MEMORY[0x277CEC5D0]) initWithQueue:v2->_radioQueue];
    radioPrefs = v2->_radioPrefs;
    v2->_radioPrefs = v5;

    [(RadiosPreferences *)v2->_radioPrefs setDelegate:v2];
    [(RadiosPreferences *)v2->_radioPrefs refresh];
    v2->_cachedInAirplaneMode = [(RadiosPreferences *)v2->_radioPrefs airplaneMode];
  }

  return v2;
}

- (void)airplaneModeChanged
{
  [(RadiosPreferences *)self->_radioPrefs refresh];
  airplaneMode = [(RadiosPreferences *)self->_radioPrefs airplaneMode];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__SBAirplaneModeController_airplaneModeChanged__block_invoke;
  v4[3] = &unk_2783A9F58;
  v5 = airplaneMode;
  v4[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __47__SBAirplaneModeController_airplaneModeChanged__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) != *(*(a1 + 32) + 16))
  {
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:*MEMORY[0x277D679F8] object:0 userInfo:0];
    *(*(a1 + 32) + 16) = *(a1 + 40);
    v3 = [*(a1 + 32) delegate];
    [v3 airplaneModeDidChange:*(a1 + 40)];

    [v2 postNotificationName:*MEMORY[0x277D679E8] object:0 userInfo:0];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = +[SBApplicationController sharedInstance];
    v5 = [v4 allApplications];

    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setHasDisplayedLaunchAlert:0 forType:2];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [v2 postNotificationName:*MEMORY[0x277D679F0] object:0 userInfo:0];
  }
}

- (SBAirplaneModeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end