@interface WFLockdownModeAlertController
+ (id)lockdownModeAlertControllerWithNetworkName:(id)name securityType:(unint64_t)type completionHandler:(id)handler;
@end

@implementation WFLockdownModeAlertController

+ (id)lockdownModeAlertControllerWithNetworkName:(id)name securityType:(unint64_t)type completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (!nameCopy)
  {
    +[WFHotspotAlertController hotspotAlertControllerWithNetworkName:completionHandler:];
LABEL_10:
    v22 = 0;
    v20 = 0;
    v18 = 0;
    nameCopy = 0;
    v23 = 0;
    goto LABEL_7;
  }

  if (!handlerCopy)
  {
    +[WFHotspotAlertController hotspotAlertControllerWithNetworkName:completionHandler:];
    goto LABEL_10;
  }

  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = v11;
  if (type > 7)
  {
    v14 = @"kWFLocLockdownModeOtherAlertMessage";
    v13 = @"kWFLocLockdownModeOtherAlertTitle";
  }

  else
  {
    v13 = off_279EC5488[type];
    v14 = off_279EC54C8[type];
  }

  v15 = [v11 localizedStringForKey:v13 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  nameCopy = [v10 stringWithFormat:v15, nameCopy];

  v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v18 = [v17 localizedStringForKey:v14 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = [v19 localizedStringForKey:@"kWFLocPromptAlertCancelButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"kWFLocPromptAlertJoinButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  v23 = [(WFPromptAlertController *)WFLockdownModeAlertController promptAlertControllerWithTitle:nameCopy message:v18 cancelTitle:v20 successTitle:v22 completionHandler:v9];
LABEL_7:
  v24 = v23;

  return v23;
}

@end