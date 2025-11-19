@interface AXVisualAlertSBUIFlashlightController
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_turnPowerOff;
- (void)_turnPowerOn;
- (void)setLevel:(unint64_t)a3;
@end

@implementation AXVisualAlertSBUIFlashlightController

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBUIFlashlightController" hasInstanceMethod:@"_turnPowerOff" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBUIFlashlightController" hasInstanceMethod:@"_turnPowerOn" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBUIFlashlightController" hasInstanceMethod:@"setLevel:" withFullSignature:{"v", "Q", 0}];
}

- (void)setLevel:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = AXVisualAlertSBUIFlashlightController;
  [(AXVisualAlertSBUIFlashlightController *)&v17 setLevel:?];
  v5 = [MEMORY[0x277CE6998] sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x277CE6998] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v16 = a3;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v19 = v11;
        _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = v12;
  if (a3)
  {
    v14 = @"AXVisualAlertManagerControlCenterTorchWasEnabledNotification";
  }

  else
  {
    v14 = @"AXVisualAlertManagerControlCenterTorchWasDisabledNotification";
  }

  [v12 postNotificationName:v14 object:self];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_turnPowerOff
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = AXVisualAlertSBUIFlashlightController;
  [(AXVisualAlertSBUIFlashlightController *)&v12 _turnPowerOff];
  v3 = [MEMORY[0x277CE6998] sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v14 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 postNotificationName:@"AXVisualAlertManagerControlCenterTorchWasDisabledNotification" object:self];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_turnPowerOn
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = AXVisualAlertSBUIFlashlightController;
  [(AXVisualAlertSBUIFlashlightController *)&v12 _turnPowerOn];
  v3 = [MEMORY[0x277CE6998] sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x277CE6998] identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v14 = v9;
        _os_log_impl(&dword_27102A000, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 postNotificationName:@"AXVisualAlertManagerControlCenterTorchWasEnabledNotification" object:self];

  v11 = *MEMORY[0x277D85DE8];
}

@end