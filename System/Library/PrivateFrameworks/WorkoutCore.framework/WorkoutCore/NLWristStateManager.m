@interface NLWristStateManager
- (NLWristStateManager)init;
- (NLWristStateManagerDelegate)delegate;
- (void)startTrackingWristState;
@end

@implementation NLWristStateManager

- (NLWristStateManager)init
{
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = NLWristStateManager;
  v4 = [(NLWristStateManager *)&v5 init];
  v7 = v4;
  objc_storeStrong(&v7, v4);
  if (v4)
  {
    v7->_wristDetectDisabled = 0;
    v7->_forceOnWristEnabled = 0;
    v7->_onCharger = 0;
    v7->_onWristState = 2;
  }

  v3 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v3;
}

- (void)startTrackingWristState
{
  location[2] = self;
  location[1] = a2;
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_impl(&dword_20AEA4000, log, type, "[WristStateManager] Ignoring start tracking wrist state, wrist state not supported on non-watchOS.", v4, 2u);
  }

  objc_storeStrong(location, 0);
}

- (NLWristStateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end