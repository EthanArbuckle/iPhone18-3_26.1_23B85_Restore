@interface WFHotspotAlertController
+ (id)hotspotAlertControllerWithNetworkName:(id)name completionHandler:(id)handler;
@end

@implementation WFHotspotAlertController

+ (id)hotspotAlertControllerWithNetworkName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (!nameCopy)
  {
    +[WFHotspotAlertController hotspotAlertControllerWithNetworkName:completionHandler:];
LABEL_7:
    v17 = 0;
    v15 = 0;
    nameCopy = 0;
    v9 = 0;
    v18 = 0;
    goto LABEL_4;
  }

  if (!handlerCopy)
  {
    +[WFHotspotAlertController hotspotAlertControllerWithNetworkName:completionHandler:];
    goto LABEL_7;
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"kWFLocDisablePersonalHotspotAlertTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"kWFLocDisablePersonalHotspotAlertMessage" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  nameCopy = [v10 stringWithFormat:v12, nameCopy];

  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v14 localizedStringForKey:@"kWFLocPromptAlertCancelButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"kWFLocPromptAlertJoinButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v18 = [(WFPromptAlertController *)WFHotspotAlertController promptAlertControllerWithTitle:v9 message:nameCopy cancelTitle:v15 successTitle:v17 completionHandler:v7];
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