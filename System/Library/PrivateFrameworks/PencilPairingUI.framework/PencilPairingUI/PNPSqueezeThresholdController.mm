@interface PNPSqueezeThresholdController
+ (id)sharedController;
- (BOOL)autoCalibrationInProgress;
- (BOOL)squeezeOnboardingModeEnabled;
- (BOOL)startAutoCalibrationIfNecessary;
- (NSNumber)squeezeThreshold;
- (void)disableAutoCalibrationIfNecessary;
- (void)disableSqueezeOnboardingMode;
- (void)initializeToDefaultThreshold;
- (void)initializeToDefaultThresholdIfUninitialized;
- (void)resetAutoCalibration;
- (void)setAutoCalibrationInProgress:(BOOL)a3;
- (void)setSqueezeOnboardingModeEnabled:(BOOL)a3;
- (void)setSqueezeThreshold:(id)a3;
- (void)synchronizeSqueezeThresholdToBackboard;
@end

@implementation PNPSqueezeThresholdController

+ (id)sharedController
{
  if (sharedController_onceToken != -1)
  {
    +[PNPSqueezeThresholdController sharedController];
  }

  v3 = sharedController_sController;

  return v3;
}

uint64_t __49__PNPSqueezeThresholdController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(PNPSqueezeThresholdController);
  v1 = sharedController_sController;
  sharedController_sController = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (BOOL)startAutoCalibrationIfNecessary
{
  v3 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_25E1BC000, v3, OS_LOG_TYPE_DEFAULT, "startAutoCalibrationIfNecessary", v6, 2u);
  }

  v4 = [(PNPSqueezeThresholdController *)self autoCalibrationInProgress];
  if (!v4)
  {
    [(PNPSqueezeThresholdController *)self setAutoCalibrationInProgress:1];
    [(PNPSqueezeThresholdController *)self setSqueezeOnboardingModeEnabled:1];
  }

  return !v4;
}

- (void)resetAutoCalibration
{
  [(PNPSqueezeThresholdController *)self setAutoCalibrationInProgress:0];

  [(PNPSqueezeThresholdController *)self setSqueezeOnboardingModeEnabled:0];
}

- (void)disableSqueezeOnboardingMode
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_25E1BC000, v3, OS_LOG_TYPE_DEFAULT, "Disabling squeeze onboarding mode", &v12, 2u);
  }

  if ([(PNPSqueezeThresholdController *)self squeezeOnboardingModeEnabled])
  {
    [(PNPSqueezeThresholdController *)self setSqueezeOnboardingModeEnabled:0];
    v4 = getOpaqueTouchValue(@"SqueezeThreshold");
    v5 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = *&v4;
      _os_log_impl(&dword_25E1BC000, v5, OS_LOG_TYPE_DEFAULT, "Current squeeze threshold %@", &v12, 0xCu);
    }

    [v4 doubleValue];
    if (v6 >= 9999.0)
    {
      [objc_opt_class() defaultThreshold];
      v9 = v8;
      v10 = os_log_create("com.apple.pencilpairingui", "");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134217984;
        v13 = v9;
        _os_log_impl(&dword_25E1BC000, v10, OS_LOG_TYPE_DEFAULT, "Auto-calibration not done, setting default value: %g", &v12, 0xCu);
      }

      v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
      [(PNPSqueezeThresholdController *)self setSqueezeThreshold:v11];
    }

    else
    {
      v7 = os_log_create("com.apple.pencilpairingui", "");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = *&v4;
        _os_log_impl(&dword_25E1BC000, v7, OS_LOG_TYPE_DEFAULT, "Setting new auto-calibrated value: %@", &v12, 0xCu);
      }

      [(PNPSqueezeThresholdController *)self setSqueezeThreshold:v4];
    }
  }
}

- (void)initializeToDefaultThreshold
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_25E1BC000, v3, OS_LOG_TYPE_DEFAULT, "initializeToDefaultThreshold", &v8, 2u);
  }

  [objc_opt_class() defaultThreshold];
  v5 = v4;
  v6 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = v5;
    _os_log_impl(&dword_25E1BC000, v6, OS_LOG_TYPE_DEFAULT, "Synchronizing squeeze threshold to default value: %g", &v8, 0xCu);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  [(PNPSqueezeThresholdController *)self setSqueezeThreshold:v7];
}

- (void)initializeToDefaultThresholdIfUninitialized
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_25E1BC000, v3, OS_LOG_TYPE_DEFAULT, "initializeToDefaultThresholdIfUninitialized", &v6, 2u);
  }

  v4 = [(PNPSqueezeThresholdController *)self squeezeThreshold];
  if (v4)
  {
    v5 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_25E1BC000, v5, OS_LOG_TYPE_DEFAULT, "Squeeze threshold already set in backboard: %@", &v6, 0xCu);
    }
  }

  else
  {
    [(PNPSqueezeThresholdController *)self initializeToDefaultThreshold];
  }
}

- (void)synchronizeSqueezeThresholdToBackboard
{
  v3 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E1BC000, v3, OS_LOG_TYPE_DEFAULT, "synchronizeSqueezeThresholdToBackboard", v4, 2u);
  }

  [(PNPSqueezeThresholdController *)self initializeToDefaultThresholdIfUninitialized];
}

- (void)disableAutoCalibrationIfNecessary
{
  v3 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_25E1BC000, v3, OS_LOG_TYPE_DEFAULT, "disableAutoCalibrationIfNecessary", v4, 2u);
  }

  if ([(PNPSqueezeThresholdController *)self autoCalibrationInProgress])
  {
    [(PNPSqueezeThresholdController *)self setAutoCalibrationInProgress:0];
    [(PNPSqueezeThresholdController *)self synchronizeSqueezeThresholdToBackboard];
  }

  if ([(PNPSqueezeThresholdController *)self squeezeOnboardingModeEnabled])
  {
    [(PNPSqueezeThresholdController *)self setSqueezeOnboardingModeEnabled:0];
  }
}

- (void)setAutoCalibrationInProgress:(BOOL)a3
{
  v3 = a3;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v12 = @"SqueezeAutoCalibrationEnabled";
  v13[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v7 = [(PNPSqueezeThresholdController *)self opaqueTouchSenderDescriptor];
  BKSHIDServicesSetPersistentServiceProperties();

  v8 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = v3;
    v10 = 1024;
    v11 = [(PNPSqueezeThresholdController *)self autoCalibrationInProgress];
    _os_log_impl(&dword_25E1BC000, v8, OS_LOG_TYPE_DEFAULT, "setAutoCalibrationInProgress: %d (readback: %d)", v9, 0xEu);
  }
}

- (BOOL)autoCalibrationInProgress
{
  v2 = getOpaqueTouchValue(@"SqueezeAutoCalibrationEnabled");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setSqueezeOnboardingModeEnabled:(BOOL)a3
{
  v3 = a3;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v12 = @"SqueezeOnboardingModeEnabled";
  v13[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v7 = [(PNPSqueezeThresholdController *)self opaqueTouchSenderDescriptor];
  BKSHIDServicesSetPersistentServiceProperties();

  v8 = os_log_create("com.apple.pencilpairingui", "");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = v3;
    v10 = 1024;
    v11 = [(PNPSqueezeThresholdController *)self squeezeOnboardingModeEnabled];
    _os_log_impl(&dword_25E1BC000, v8, OS_LOG_TYPE_DEFAULT, "setSqueezeOnboardingModeEnabled: %d (readback: %d)", v9, 0xEu);
  }
}

- (BOOL)squeezeOnboardingModeEnabled
{
  v2 = getOpaqueTouchValue(@"SqueezeOnboardingModeEnabled");
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSNumber)squeezeThreshold
{
  v2 = [(PNPSqueezeThresholdController *)self opaqueTouchSenderDescriptor];
  v3 = [MEMORY[0x277CBEB98] setWithObject:@"SqueezeThreshold"];
  v4 = BKSHIDServicesGetPersistentServiceProperties();

  v5 = [v4 objectForKeyedSubscript:@"SqueezeThreshold"];

  return v5;
}

- (void)setSqueezeThreshold:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.pencilpairingui", "");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&dword_25E1BC000, v5, OS_LOG_TYPE_DEFAULT, "Setting squeeze threshold: %@", buf, 0xCu);
    }

    v8 = @"SqueezeThreshold";
    v9 = v4;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v7 = [(PNPSqueezeThresholdController *)self opaqueTouchSenderDescriptor];
    BKSHIDServicesSetPersistentServiceProperties();
  }
}

@end