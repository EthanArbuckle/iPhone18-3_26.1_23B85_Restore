@interface WFDeveloperOutrankAlertController
+ (id)messageForChinaDevice:(BOOL)device;
+ (id)okButtonTitle;
+ (id)settingsButtonTitle;
+ (id)titleForNetworkName:(id)name chinaDevice:(BOOL)device;
@end

@implementation WFDeveloperOutrankAlertController

void __114__WFDeveloperOutrankAlertController_developerOutrankAlertControllerWithNetworkName_chinaDevice_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) completionHandler];
  v1[2](v1, 0);
}

void __114__WFDeveloperOutrankAlertController_developerOutrankAlertControllerWithNetworkName_chinaDevice_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) completionHandler];
  v1[2](v1, 1);
}

+ (id)titleForNetworkName:(id)name chinaDevice:(BOOL)device
{
  deviceCopy = device;
  v5 = MEMORY[0x277CCACA8];
  v6 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v9 = v8;
  if (deviceCopy)
  {
    v10 = @"kWFLocDeveloperOutrankAlertTitle_CH";
  }

  else
  {
    v10 = @"kWFLocDeveloperOutrankAlertTitle";
  }

  v11 = [v8 localizedStringForKey:v10 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  nameCopy = [v5 stringWithFormat:v11, nameCopy];

  return nameCopy;
}

+ (id)messageForChinaDevice:(BOOL)device
{
  deviceCopy = device;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (deviceCopy)
  {
    v6 = @"kWFLocDeveloperOutrankAlertMessage_CH";
  }

  else
  {
    v6 = @"kWFLocDeveloperOutrankAlertMessage";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v7;
}

+ (id)okButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"kWFLocPromptAlertDeveloperOutrankOKButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v3;
}

+ (id)settingsButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"kWFLocPromptAlertDeveloperOutrankSettingsButton" value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v3;
}

@end