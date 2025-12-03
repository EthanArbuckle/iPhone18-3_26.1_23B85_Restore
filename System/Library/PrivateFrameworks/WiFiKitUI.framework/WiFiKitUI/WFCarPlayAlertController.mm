@interface WFCarPlayAlertController
+ (id)carPlayAlertControllerWithNetworkName:(id)name carName:(id)carName completionHandler:(id)handler;
@end

@implementation WFCarPlayAlertController

+ (id)carPlayAlertControllerWithNetworkName:(id)name carName:(id)carName completionHandler:(id)handler
{
  nameCopy = name;
  carNameCopy = carName;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (!nameCopy)
  {
    +[WFHotspotAlertController hotspotAlertControllerWithNetworkName:completionHandler:];
LABEL_10:
    v22 = 0;
    v20 = 0;
    carNameCopy = 0;
    nameCopy = 0;
    v23 = 0;
    goto LABEL_7;
  }

  if (!handlerCopy)
  {
    +[WFHotspotAlertController hotspotAlertControllerWithNetworkName:completionHandler:];
    goto LABEL_10;
  }

  if (carNameCopy)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"kWFLocDisableCarPlayAlertTitle" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
    carNameCopy = [v11 stringWithFormat:v13, carNameCopy];
  }

  else
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    carNameCopy = [v12 localizedStringForKey:@"kWFLocDisableCarPlayAlertTitleNoCarName" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  }

  v15 = MEMORY[0x277CCACA8];
  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v17 = [v16 localizedStringForKey:@"kWFLocDisableCarPlayAlertMessage" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  nameCopy = [v15 stringWithFormat:v17, nameCopy];

  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"kWFLocPromptAlertCancelButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"kWFLocPromptAlertJoinButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v23 = [(WFPromptAlertController *)WFCarPlayAlertController promptAlertControllerWithTitle:carNameCopy message:nameCopy cancelTitle:v20 successTitle:v22 completionHandler:v10];
LABEL_7:
  v24 = v23;

  return v23;
}

@end