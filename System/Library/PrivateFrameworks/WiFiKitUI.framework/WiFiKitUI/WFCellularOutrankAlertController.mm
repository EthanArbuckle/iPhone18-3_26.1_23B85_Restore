@interface WFCellularOutrankAlertController
+ (id)cancelButtonTitleForPrivateCellular:(BOOL)cellular;
+ (id)defaultButtonTitleForChinaDevice:(BOOL)device;
+ (id)messageForChinaDevice:(BOOL)device privateCellular:(BOOL)cellular;
+ (id)titleForNetworkName:(id)name chinaDevice:(BOOL)device privateCellular:(BOOL)cellular;
@end

@implementation WFCellularOutrankAlertController

void __128__WFCellularOutrankAlertController_cellularOutrankAlertControllerWithNetworkName_chinaDevice_privateCellular_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) completionHandler];
  v1[2](v1, 1);
}

void __128__WFCellularOutrankAlertController_cellularOutrankAlertControllerWithNetworkName_chinaDevice_privateCellular_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) completionHandler];
  v1[2](v1, 0);
}

+ (id)titleForNetworkName:(id)name chinaDevice:(BOOL)device privateCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  deviceCopy = device;
  v7 = MEMORY[0x277CCACA8];
  v8 = MEMORY[0x277CCA8D8];
  nameCopy = name;
  v10 = [v8 bundleForClass:objc_opt_class()];
  v11 = v10;
  v12 = @"kWFLocCellularOutrankAlertTitle";
  if (deviceCopy)
  {
    v12 = @"kWFLocCellularOutrankAlertTitle_CH";
  }

  v13 = @"kWFLocPrivateCellularOutrankAlertTitle_CH";
  if (!deviceCopy)
  {
    v13 = @"kWFLocPrivateCellularOutrankAlertTitle";
  }

  if (cellularCopy)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v15 = [v10 localizedStringForKey:v14 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  nameCopy = [v7 stringWithFormat:v15, nameCopy];

  return nameCopy;
}

+ (id)messageForChinaDevice:(BOOL)device privateCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  deviceCopy = device;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  v8 = @"kWFLocCellularOutrankAlertMessage";
  if (deviceCopy)
  {
    v8 = @"kWFLocCellularOutrankAlertMessage_CH";
  }

  v9 = @"kWFLocPrivateCellularOutrankAlertMessage_CH";
  if (!deviceCopy)
  {
    v9 = @"kWFLocPrivateCellularOutrankAlertMessage";
  }

  if (cellularCopy)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = [v6 localizedStringForKey:v10 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v11;
}

+ (id)cancelButtonTitleForPrivateCellular:(BOOL)cellular
{
  cellularCopy = cellular;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (cellularCopy)
  {
    v6 = @"kWFLocPromptAlertPrivateCellularOutrankCancelButton";
  }

  else
  {
    v6 = @"kWFLocPromptAlertCellularOutrankCancelButton";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v7;
}

+ (id)defaultButtonTitleForChinaDevice:(BOOL)device
{
  deviceCopy = device;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (deviceCopy)
  {
    v6 = @"kWFLocPromptAlertCellularOutrankAcceptButton_CH";
  }

  else
  {
    v6 = @"kWFLocPromptAlertCellularOutrankAcceptButton";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v7;
}

@end