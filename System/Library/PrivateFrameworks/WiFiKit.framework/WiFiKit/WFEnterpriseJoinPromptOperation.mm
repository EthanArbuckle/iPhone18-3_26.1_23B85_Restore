@interface WFEnterpriseJoinPromptOperation
+ (id)enterpriseJoinPromptOperationWithDeviceCapability:(int64_t)capability;
@end

@implementation WFEnterpriseJoinPromptOperation

+ (id)enterpriseJoinPromptOperationWithDeviceCapability:(int64_t)capability
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(3uLL);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v22 = 136315394;
    v23 = "+[WFEnterpriseJoinPromptOperation enterpriseJoinPromptOperationWithDeviceCapability:]";
    v24 = 2048;
    capabilityCopy = capability;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: creating enterprise prompt with capability %ld", &v22, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  IsChinaDevice = WFCapabilityIsChinaDevice();
  v8 = @"kWFLocEnterpriseJoinAlertTitle";
  if (IsChinaDevice)
  {
    v8 = @"kWFLocEnterpriseJoinAlertTitle_CH";
  }

  v9 = MEMORY[0x277CCA8D8];
  v10 = v8;
  v11 = [v9 bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v10 value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];

  [v6 setObject:v12 forKey:*MEMORY[0x277CBF188]];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"kWFLocEnterpriseJoinAlertBody" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  [v6 setObject:v14 forKey:*MEMORY[0x277CBF198]];

  v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"kWFLocEnterpriseJoinAlertButtonOk" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  [v6 setObject:v16 forKey:*MEMORY[0x277CBF1E8]];

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:@"kWFLocEnterpriseJoinAlertButtonCancel" value:&stru_2882E4AD8 table:@"WiFiKitLocalizableStrings"];
  [v6 setObject:v18 forKey:*MEMORY[0x277CBF1C0]];

  [v6 setObject:MEMORY[0x277CBEC38] forKey:@"SBUserNotificationDismissOnLock"];
  [v6 setObject:&stru_2882E4AD8 forKey:@"SBUserNotificationAlertMessageDelimiterKey"];
  v19 = [objc_alloc(objc_opt_class()) initWithOptions:v6 timeout:0 flags:0.0];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end