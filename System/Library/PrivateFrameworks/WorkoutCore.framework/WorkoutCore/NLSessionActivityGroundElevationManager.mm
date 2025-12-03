@interface NLSessionActivityGroundElevationManager
- (NLSessionActivityGroundElevationManager)initWithDelegate:(id)delegate;
- (NLSessionActivityGroundElevationManagerDelegate)delegate;
- (void)_setup;
- (void)_startRequestingGroundElevation;
- (void)_updateElevation:(id)elevation;
- (void)elevationError:(id)error;
- (void)sessionActivity:(id)activity didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)setActive:(BOOL)active;
@end

@implementation NLSessionActivityGroundElevationManager

- (NLSessionActivityGroundElevationManager)initWithDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = NLSessionActivityGroundElevationManager;
  v6 = [(NLSessionActivityGroundElevationManager *)&v7 init];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    [(NLSessionActivityGroundElevationManager *)selfCopy setDelegate:location[0]];
    [(NLSessionActivityGroundElevationManager *)selfCopy _setup];
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)_setup
{
  selfCopy = self;
  v8[1] = a2;
  queue = dispatch_get_global_queue(25, 0);
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __49__NLSessionActivityGroundElevationManager__setup__block_invoke;
  v7 = &unk_277D88890;
  v8[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v3);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v8, 0);
}

void __49__NLSessionActivityGroundElevationManager__setup__block_invoke(void *a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = 0;
  if ([MEMORY[0x277CC1C18] authorizationStatus] == 3)
  {
    _HKInitializeLogging();
    location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v19;
      __os_log_helper_16_0_0(v18);
      _os_log_impl(&dword_20AEA4000, log, type, "[CMAltimeterManager] CMAltimeter manager initialized", v18, 2u);
    }

    objc_storeStrong(&location, 0);
    v1 = objc_alloc_init(MEMORY[0x277CC1C18]);
    v2 = v21[0];
    v21[0] = v1;
    MEMORY[0x277D82BD8](v2);
  }

  else
  {
    _HKInitializeLogging();
    v17 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v22, [MEMORY[0x277CC1C18] authorizationStatus]);
      _os_log_impl(&dword_20AEA4000, v17, v16, "[CMAltimeterManager] Device is not authorized. Current Authorized status is %tu", v22, 0xCu);
    }

    objc_storeStrong(&v17, 0);
    objc_storeStrong(v21, 0);
  }

  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __49__NLSessionActivityGroundElevationManager__setup__block_invoke_295;
  v13 = &unk_277D88998;
  v14 = MEMORY[0x277D82BE0](a1[4]);
  v15 = MEMORY[0x277D82BE0](v21[0]);
  dispatch_async(queue, &v9);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v21, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __49__NLSessionActivityGroundElevationManager__setup__block_invoke_295(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained groundElevationManagerDidFinishSetup];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)setActive:(BOOL)active
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v5 = a2;
  activeCopy = active;
  if (self->_active != active)
  {
    selfCopy->_active = activeCopy;
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v7, selfCopy->_active);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[CMAltimeterManager] setActive=%{BOOL}d", v7, 8u);
    }

    objc_storeStrong(&oslog, 0);
    if (activeCopy)
    {
      [(NLSessionActivityGroundElevationManager *)selfCopy _startRequestingGroundElevation];
    }

    else
    {
      [(NLSessionActivityGroundElevationManager *)selfCopy _stopRequestingGroundElevation];
    }
  }

  *MEMORY[0x277D85DE8];
}

- (void)_startRequestingGroundElevation
{
  selfCopy = self;
  location[1] = a2;
  objc_initWeak(location, self);
  _HKInitializeLogging();
  v14 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    __os_log_helper_16_0_0(v12);
    _os_log_impl(&dword_20AEA4000, log, type, "[CMAltimeterManager] Starting elevation updates", v12, 2u);
  }

  objc_storeStrong(&v14, 0);
  altimeterManager = selfCopy->_altimeterManager;
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __74__NLSessionActivityGroundElevationManager__startRequestingGroundElevation__block_invoke;
  v10 = &unk_277D88E58;
  objc_copyWeak(&v11, location);
  [(CMAltimeter *)altimeterManager startAbsoluteAltitudeUpdatesToQueue:mainQueue withHandler:&v6];
  MEMORY[0x277D82BD8](mainQueue);
  objc_destroyWeak(&v11);
  objc_destroyWeak(location);
}

void __74__NLSessionActivityGroundElevationManager__startRequestingGroundElevation__block_invoke(id *a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v7[1] = a1;
  v7[0] = objc_loadWeakRetained(a1 + 4);
  if (v7[0])
  {
    if (location[0])
    {
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v3 = [location[0] absoluteAltitude];
        __os_log_helper_16_2_1_8_64(v10, v3);
        _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[CMAltimeterManager] Received elevation %@ ", v10, 0xCu);
        MEMORY[0x277D82BD8](v3);
      }

      objc_storeStrong(&oslog, 0);
      [v7[0] _updateElevation:location[0]];
    }

    if (v8)
    {
      [v7[0] elevationError:v8];
    }
  }

  objc_storeStrong(v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateElevation:(id)elevation
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, elevation);
  [location[0] absoluteAltitudeAccuracy];
  if (v3 <= 15.0)
  {
    absoluteAltitude = [location[0] absoluteAltitude];
    [absoluteAltitude doubleValue];
    v22 = v5;
    v23 = v5;
    if (fabs(v5) == INFINITY)
    {
      _HKInitializeLogging();
      v15 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v14 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v24, absoluteAltitude);
        _os_log_impl(&dword_20AEA4000, v15, v14, "[CMAltimeterManager] Ignoring elevation value. Value is not finite: %@", v24, 0xCu);
      }

      objc_storeStrong(&v15, 0);
      v17 = 1;
    }

    else
    {
      objc_storeStrong(&selfCopy->_altitude, absoluteAltitude);
      v7 = MEMORY[0x277CBEAA8];
      [location[0] timestamp];
      v13 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
      v8 = MEMORY[0x277CCD7E8];
      meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
      [(NSNumber *)selfCopy->_altitude doubleValue];
      v12 = [v8 quantityWithUnit:meterUnit doubleValue:?];
      MEMORY[0x277D82BD8](meterUnit);
      v6 = [WOElevationSample alloc];
      v11 = [(WOElevationSample *)v6 initWithDate:v13 value:v12];
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
      [WeakRetained groundElevationDidUpdate:v11];
      MEMORY[0x277D82BD8](WeakRetained);
      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
      v17 = 0;
    }

    objc_storeStrong(&absoluteAltitude, 0);
  }

  else
  {
    _HKInitializeLogging();
    v19 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v18 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [location[0] absoluteAltitudeAccuracy];
      __os_log_helper_16_0_2_8_0_8_0(v25, v4, 0x402E000000000000);
      _os_log_impl(&dword_20AEA4000, v19, v18, "[CMAltimeterManager] Ignoring elevation value. Accuracy: %f is greater than threshhold %f", v25, 0x16u);
    }

    objc_storeStrong(&v19, 0);
    v17 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)elevationError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, error);
  _HKInitializeLogging();
  v11 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v10 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v13, location[0]);
    _os_log_impl(&dword_20AEA4000, v11, v10, "[CMAltimeterManager] Elevation Update Error: %@", v13, 0xCu);
  }

  objc_storeStrong(&v11, 0);
  domain = [location[0] domain];
  v5 = *MEMORY[0x277CC1BC0];
  MEMORY[0x277D82BD8](domain);
  if (domain == v5 && ([location[0] code] == 109 || objc_msgSend(location[0], "code") == 110 || objc_msgSend(location[0], "code") == 111 || objc_msgSend(location[0], "code") == 104 || objc_msgSend(location[0], "code") == 106 || objc_msgSend(location[0], "code") == 105))
  {
    _HKInitializeLogging();
    v9 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v9;
      v4 = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_20AEA4000, v3, v4, "[CMAltimeterManager] Elevation Not Supported", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)sessionActivity:(id)activity didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  if (toState - 3 <= 2)
  {
LABEL_6:
    [(NLSessionActivityGroundElevationManager *)selfCopy setActive:0];
    goto LABEL_7;
  }

  if (toState != 6)
  {
    if (toState - 8 > 1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  [(NLSessionActivityGroundElevationManager *)selfCopy setActive:1];
LABEL_7:
  objc_storeStrong(location, 0);
}

- (NLSessionActivityGroundElevationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end