@interface WFSecurityMismatchAlertController
+ (id)securityMismatchAlertControllerWithNetworkName:(id)a3 previousSecurity:(id)a4 newSecurity:(id)a5 completionHandler:(id)a6;
@end

@implementation WFSecurityMismatchAlertController

+ (id)securityMismatchAlertControllerWithNetworkName:(id)a3 previousSecurity:(id)a4 newSecurity:(id)a5 completionHandler:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v31 = a4;
  v30 = a5;
  v10 = a6;
  v11 = v10;
  if (!v9)
  {
    v23 = WFLogForCategory(0);
    v28 = OSLogForWFLogLevel(1uLL);
    v21 = 0;
    if (WFCurrentLogLevel() && v23)
    {
      if (os_log_type_enabled(v23, v28))
      {
        *buf = 0;
        v29 = "Missing network name";
LABEL_16:
        _os_log_impl(&dword_273FB9000, v23, v28, v29, buf, 2u);
      }

LABEL_17:
      v21 = 0;
      v19 = 0;
      v15 = 0;
      v17 = 0;
      v22 = 0;
      goto LABEL_7;
    }

LABEL_18:
    v19 = 0;
    v15 = 0;
    v17 = 0;
    v22 = 0;
    goto LABEL_7;
  }

  if (!v10)
  {
    v23 = WFLogForCategory(0);
    v28 = OSLogForWFLogLevel(1uLL);
    v21 = 0;
    if (WFCurrentLogLevel() && v23)
    {
      if (os_log_type_enabled(v23, v28))
      {
        *buf = 0;
        v29 = "Missing completion handler";
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"kCWLocSecurityMismatchPromptTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v15 = [v12 stringWithFormat:v14, v9, v31, v30];

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"kCWLocSecurityMismatchPromptDescription" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"kWFLocPromptAlertCancelButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v21 = [v20 localizedStringForKey:@"kWFLocPromptAlertJoinButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v22 = [(WFPromptAlertController *)WFSecurityMismatchAlertController promptAlertControllerWithTitle:v15 message:v17 cancelTitle:v19 successTitle:v21 completionHandler:v11];
  v23 = WFLogForCategory(0);
  v24 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v23 && os_log_type_enabled(v23, v24))
  {
    *buf = 136315650;
    v33 = "+[WFSecurityMismatchAlertController securityMismatchAlertControllerWithNetworkName:previousSecurity:newSecurity:completionHandler:]";
    v34 = 2112;
    v35 = v15;
    v36 = 2112;
    v37 = v17;
    _os_log_impl(&dword_273FB9000, v23, v24, "%s: title='%@' message='%@'", buf, 0x20u);
  }

LABEL_7:

  v25 = v22;
  v26 = *MEMORY[0x277D85DE8];
  return v22;
}

@end