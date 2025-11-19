@interface WFHotspotAlertController
+ (id)hotspotAlertControllerWithNetworkName:(id)a3 completionHandler:(id)a4;
@end

@implementation WFHotspotAlertController

+ (id)hotspotAlertControllerWithNetworkName:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    +[WFHotspotAlertController hotspotAlertControllerWithNetworkName:completionHandler:];
LABEL_7:
    v17 = 0;
    v15 = 0;
    v13 = 0;
    v9 = 0;
    v18 = 0;
    goto LABEL_4;
  }

  if (!v6)
  {
    +[WFHotspotAlertController hotspotAlertControllerWithNetworkName:completionHandler:];
    goto LABEL_7;
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"kWFLocDisablePersonalHotspotAlertTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"kWFLocDisablePersonalHotspotAlertMessage" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v13 = [v10 stringWithFormat:v12, v5];

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"kWFLocPromptAlertCancelButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"kWFLocPromptAlertJoinButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v18 = [(WFPromptAlertController *)WFHotspotAlertController promptAlertControllerWithTitle:v9 message:v13 cancelTitle:v15 successTitle:v17 completionHandler:v7];
LABEL_4:
  v19 = v18;

  return v18;
}

+ (void)hotspotAlertControllerWithNetworkName:completionHandler:.cold.1()
{
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1();
  if (WFCurrentLogLevel() && v0 && OUTLINED_FUNCTION_2())
  {
    OUTLINED_FUNCTION_0(&dword_273FB9000, v1, v2, "Missing completion handler", v3, v4, v5, v6, 0);
  }
}

+ (void)hotspotAlertControllerWithNetworkName:completionHandler:.cold.2()
{
  WFLogForCategory(0);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1();
  if (WFCurrentLogLevel() && v0 && OUTLINED_FUNCTION_2())
  {
    OUTLINED_FUNCTION_0(&dword_273FB9000, v1, v2, "Missing network name", v3, v4, v5, v6, 0);
  }
}

@end