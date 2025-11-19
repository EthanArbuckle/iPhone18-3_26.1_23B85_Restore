@interface WFCarPlayAlertController
+ (id)carPlayAlertControllerWithNetworkName:(id)a3 carName:(id)a4 completionHandler:(id)a5;
@end

@implementation WFCarPlayAlertController

+ (id)carPlayAlertControllerWithNetworkName:(id)a3 carName:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7)
  {
    +[WFHotspotAlertController hotspotAlertControllerWithNetworkName:completionHandler:];
LABEL_10:
    v22 = 0;
    v20 = 0;
    v14 = 0;
    v18 = 0;
    v23 = 0;
    goto LABEL_7;
  }

  if (!v9)
  {
    +[WFHotspotAlertController hotspotAlertControllerWithNetworkName:completionHandler:];
    goto LABEL_10;
  }

  if (v8)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"kWFLocDisableCarPlayAlertTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    v14 = [v11 stringWithFormat:v13, v8];
  }

  else
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v12 localizedStringForKey:@"kWFLocDisableCarPlayAlertTitleNoCarName" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"kWFLocDisableCarPlayAlertMessage" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v18 = [v15 stringWithFormat:v17, v7];

  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"kWFLocPromptAlertCancelButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"kWFLocPromptAlertJoinButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v23 = [(WFPromptAlertController *)WFCarPlayAlertController promptAlertControllerWithTitle:v14 message:v18 cancelTitle:v20 successTitle:v22 completionHandler:v10];
LABEL_7:
  v24 = v23;

  return v23;
}

@end