@interface AXVisualAlertSBUIFlashlightController
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_turnPowerOff;
- (void)_turnPowerOn;
- (void)setLevel:(unint64_t)level;
@end

@implementation AXVisualAlertSBUIFlashlightController

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBUIFlashlightController" hasInstanceMethod:@"_turnPowerOff" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBUIFlashlightController" hasInstanceMethod:@"_turnPowerOn" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBUIFlashlightController" hasInstanceMethod:@"setLevel:" withFullSignature:{"v", "Q", 0}];
}

- (void)setLevel:(unint64_t)level
{
  v20 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = AXVisualAlertSBUIFlashlightController;
  [(AXVisualAlertSBUIFlashlightController *)&v17 setLevel:?];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      levelCopy = level;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v19 = v11;
        _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v13 = defaultCenter;
  if (level)
  {
    v14 = @"AXVisualAlertManagerControlCenterTorchWasEnabledNotification";
  }

  else
  {
    v14 = @"AXVisualAlertManagerControlCenterTorchWasDisabledNotification";
  }

  [defaultCenter postNotificationName:v14 object:self];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_turnPowerOff
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = AXVisualAlertSBUIFlashlightController;
  [(AXVisualAlertSBUIFlashlightController *)&v12 _turnPowerOff];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AXVisualAlertManagerControlCenterTorchWasDisabledNotification" object:self];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_turnPowerOn
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = AXVisualAlertSBUIFlashlightController;
  [(AXVisualAlertSBUIFlashlightController *)&v12 _turnPowerOn];
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"AXVisualAlertManagerControlCenterTorchWasEnabledNotification" object:self];

  v11 = *MEMORY[0x277D85DE8];
}

@end