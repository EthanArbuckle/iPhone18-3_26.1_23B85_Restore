@interface WFMISDisablePromptOperation
+ (id)misDisablePromptOperation;
@end

@implementation WFMISDisablePromptOperation

+ (id)misDisablePromptOperation
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"kWFLocDisableMISAlertTitle" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  [v2 setObject:v4 forKey:*MEMORY[0x277CBF188]];

  WFCurrentDeviceCapability();
  LODWORD(v3) = WFCapabilityIsChinaDevice();
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v3)
  {
    v7 = @"kWFLocDisableMISAlertMessageCH";
  }

  else
  {
    v7 = @"kWFLocDisableMISAlertMessage";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  [v2 setObject:v8 forKey:*MEMORY[0x277CBF198]];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"kWFLocDisableMISAlertCancelButton" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  [v2 setObject:v10 forKey:*MEMORY[0x277CBF1C0]];

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"kWFLocDisableMISAlertEnableButton" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  [v2 setObject:v12 forKey:*MEMORY[0x277CBF1E8]];

  v13 = MEMORY[0x277CBEC38];
  [v2 setObject:MEMORY[0x277CBEC38] forKey:@"SBUserNotificationDismissOnLock"];
  [v2 setObject:&stru_2882E4AD8 forKey:@"SBUserNotificationAlertMessageDelimiterKey"];
  [v2 setObject:v13 forKey:*MEMORY[0x277CBF1B0]];
  [v2 setObject:v13 forKey:@"SBUserNotificationForcesModalAlertAppearance"];
  [v2 setObject:v13 forKey:@"SBUserNotificationDisplayActionButtonOnLockScreen"];
  v14 = [objc_alloc(objc_opt_class()) initWithOptions:v2 timeout:0.0];

  return v14;
}

@end