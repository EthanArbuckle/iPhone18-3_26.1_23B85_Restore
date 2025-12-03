@interface SBDynamicLightingController
- (SBDynamicLightingController)init;
- (SBDynamicLightingController)initWithBacklightController:(id)controller thermalController:(id)thermalController;
- (void)backlightController:(id)controller didTransitionToBacklightState:(int64_t)state source:(int64_t)source;
- (void)backlightController:(id)controller willTransitionToBacklightState:(int64_t)state source:(int64_t)source;
- (void)dealloc;
- (void)didChangePowerMode:(BOOL)mode;
- (void)didChangeThermalLevel:(int64_t)level;
- (void)thermalBlockStatusChanged:(id)changed;
@end

@implementation SBDynamicLightingController

- (SBDynamicLightingController)initWithBacklightController:(id)controller thermalController:(id)thermalController
{
  controllerCopy = controller;
  thermalControllerCopy = thermalController;
  v34.receiver = self;
  v34.super_class = SBDynamicLightingController;
  v9 = [(SBDynamicLightingController *)&v34 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_backlightController, controller);
    [(SBBacklightController *)v10->_backlightController addObserver:v10];
    v11 = objc_alloc_init(MEMORY[0x277CCABD8]);
    queue = v10->_queue;
    v10->_queue = v11;

    [(NSOperationQueue *)v10->_queue setQualityOfService:25];
    v13 = BSDispatchQueueCreateWithQualityOfService();
    underlyingUpdateQueue = v10->_underlyingUpdateQueue;
    v10->_underlyingUpdateQueue = v13;

    [(NSOperationQueue *)v10->_queue setUnderlyingQueue:v10->_underlyingUpdateQueue];
    objc_storeStrong(&v10->_thermalController, thermalController);
    [(SBThermalController *)v10->_thermalController addThermalObserver:v10];
    objc_initWeak(&location, v10);
    underlyingQueue = [(NSOperationQueue *)v10->_queue underlyingQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__SBDynamicLightingController_initWithBacklightController_thermalController___block_invoke;
    block[3] = &unk_2783A9CE8;
    objc_copyWeak(&v32, &location);
    v16 = v10;
    v31 = v16;
    dispatch_async(underlyingQueue, block);

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v18 = v10->_queue;
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __77__SBDynamicLightingController_initWithBacklightController_thermalController___block_invoke_2;
    v28 = &unk_2783AFD98;
    objc_copyWeak(&v29, &location);
    v19 = [defaultCenter addObserverForName:@"SBBatterySaverModeDidChangeNotification" object:0 queue:v18 usingBlock:&v25];

    v20 = [SBDefaults localDefaults:v25];
    homeScreenDefaults = [v20 homeScreenDefaults];
    LODWORD(v18) = [homeScreenDefaults shouldDisableSpecularEverywhereUsingLSSAssertion];

    if (v18)
    {
      v22 = [(SBDynamicLightingController *)v16 disableEffectsForReason:@"Home Screen default set"];
      disableSpecularsForHomeScreenDefaultAssertion = v16->_disableSpecularsForHomeScreenDefaultAssertion;
      v16->_disableSpecularsForHomeScreenDefaultAssertion = v22;
    }

    objc_destroyWeak(&v29);

    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __77__SBDynamicLightingController_initWithBacklightController_thermalController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained didChangePowerMode:{objc_msgSend(SBApp, "isBatterySaverModeActive")}];
    [v3 didChangeThermalLevel:{objc_msgSend(*(*(a1 + 32) + 32), "level")}];
    WeakRetained = v3;
  }
}

void __77__SBDynamicLightingController_initWithBacklightController_thermalController___block_invoke_2(uint64_t a1)
{
  v2 = [SBApp isBatterySaverModeActive];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didChangePowerMode:v2];
}

- (SBDynamicLightingController)init
{
  v3 = +[SBBacklightController sharedInstance];
  v4 = +[SBThermalController sharedInstance];
  v5 = [(SBDynamicLightingController *)self initWithBacklightController:v3 thermalController:v4];

  return v5;
}

- (void)dealloc
{
  [(SBBacklightController *)self->_backlightController removeObserver:self];
  [(LSSAssertion *)self->_pauseDynamicLightingAssertion invalidate];
  pauseDynamicLightingAssertion = self->_pauseDynamicLightingAssertion;
  self->_pauseDynamicLightingAssertion = 0;

  [(LSSAssertion *)self->_lowPowerDynamicLightingAssertion invalidate];
  lowPowerDynamicLightingAssertion = self->_lowPowerDynamicLightingAssertion;
  self->_lowPowerDynamicLightingAssertion = 0;

  [(LSSAssertion *)self->_disableSpecularsForHomeScreenDefaultAssertion invalidate];
  disableSpecularsForHomeScreenDefaultAssertion = self->_disableSpecularsForHomeScreenDefaultAssertion;
  self->_disableSpecularsForHomeScreenDefaultAssertion = 0;

  [(SBThermalController *)self->_thermalController removeThermalObserver:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBBatterySaverModeDidChangeNotification" object:0];

  v7.receiver = self;
  v7.super_class = SBDynamicLightingController;
  [(SBDynamicLightingController *)&v7 dealloc];
}

- (void)didChangePowerMode:(BOOL)mode
{
  lowPowerDynamicLightingAssertion = self->_lowPowerDynamicLightingAssertion;
  if (mode)
  {
    if (lowPowerDynamicLightingAssertion)
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277D23418] acquire:1 reason:@"Low Power Mode"];
  }

  else
  {
    [(LSSAssertion *)lowPowerDynamicLightingAssertion invalidate];
    v6 = 0;
  }

  v7 = self->_lowPowerDynamicLightingAssertion;
  self->_lowPowerDynamicLightingAssertion = v6;

LABEL_6:
  v8 = SBLogDynamicLighting();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(SBDynamicLightingController *)mode didChangePowerMode:v8];
  }
}

- (void)didChangeThermalLevel:(int64_t)level
{
  v13 = *MEMORY[0x277D85DE8];
  criticalThermalLevelDynamicLightingAssertion = self->_criticalThermalLevelDynamicLightingAssertion;
  if (level == 3)
  {
    if (criticalThermalLevelDynamicLightingAssertion)
    {
      return;
    }

    v5 = SBLogDynamicLighting();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Thermal state is critical, acquiring assertion to disable dynamic lighting output", &v11, 2u);
    }

    v6 = [MEMORY[0x277D23418] acquire:1 reason:@"Critical Thermal State"];
  }

  else
  {
    if (!criticalThermalLevelDynamicLightingAssertion)
    {
      return;
    }

    v8 = SBLogDynamicLighting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSBThermalLevel(level);
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "Thermal state is %{public}@, releasing assertion to disable dynamic lighting output", &v11, 0xCu);
    }

    [(LSSAssertion *)self->_criticalThermalLevelDynamicLightingAssertion invalidate];
    v6 = 0;
  }

  v10 = self->_criticalThermalLevelDynamicLightingAssertion;
  self->_criticalThermalLevelDynamicLightingAssertion = v6;
}

- (void)backlightController:(id)controller willTransitionToBacklightState:(int64_t)state source:(int64_t)source
{
  controllerCopy = controller;
  if (self->_pauseDynamicLightingAssertion && SBBacklightStateIsActive(state))
  {
    v8 = SBLogDynamicLighting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [SBDynamicLightingController backlightController:v8 willTransitionToBacklightState:? source:?];
    }

    [(LSSAssertion *)self->_pauseDynamicLightingAssertion invalidate];
    pauseDynamicLightingAssertion = self->_pauseDynamicLightingAssertion;
    self->_pauseDynamicLightingAssertion = 0;
  }
}

- (void)backlightController:(id)controller didTransitionToBacklightState:(int64_t)state source:(int64_t)source
{
  if (!self->_pauseDynamicLightingAssertion && !SBBacklightStateIsActive(state))
  {
    v6 = SBLogDynamicLighting();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [SBDynamicLightingController backlightController:v6 didTransitionToBacklightState:? source:?];
    }

    v7 = [MEMORY[0x277D23418] acquire:0 reason:@"Device display is inactive"];
    pauseDynamicLightingAssertion = self->_pauseDynamicLightingAssertion;
    self->_pauseDynamicLightingAssertion = v7;
  }
}

- (void)thermalBlockStatusChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  underlyingQueue = [(NSOperationQueue *)self->_queue underlyingQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__SBDynamicLightingController_thermalBlockStatusChanged___block_invoke;
  v6[3] = &unk_2783A8C68;
  objc_copyWeak(&v7, &location);
  dispatch_async(underlyingQueue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __57__SBDynamicLightingController_thermalBlockStatusChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didChangeThermalLevel:{objc_msgSend(WeakRetained[4], "level")}];
}

- (void)didChangePowerMode:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = "NORMAL";
  if (a1)
  {
    v2 = "LOW";
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "Battery power mode: %s", &v3, 0xCu);
}

@end