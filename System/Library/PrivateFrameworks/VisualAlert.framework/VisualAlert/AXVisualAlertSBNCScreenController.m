@interface AXVisualAlertSBNCScreenController
- (void)turnOnScreenForNotificationRequest:(id)a3;
@end

@implementation AXVisualAlertSBNCScreenController

- (void)turnOnScreenForNotificationRequest:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      v14 = v4;
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v17 = v11;
        _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  [v4 _accessibilitySetBoolValue:1 forKey:{@"AXTurnedOnScreen", v14}];
  v12 = +[AXVisualAlertManager sharedVisualAlertManager];
  [v12 addBulletin:v4];

  v15.receiver = self;
  v15.super_class = AXVisualAlertSBNCScreenController;
  [(AXVisualAlertSBNCScreenController *)&v15 turnOnScreenForNotificationRequest:v4];

  v13 = *MEMORY[0x277D85DE8];
}

@end