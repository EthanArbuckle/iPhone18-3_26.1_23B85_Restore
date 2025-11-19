@interface WFCellularOutrankAlertController
+ (id)cancelButtonTitleForPrivateCellular:(BOOL)a3;
+ (id)defaultButtonTitleForChinaDevice:(BOOL)a3;
+ (id)messageForChinaDevice:(BOOL)a3 privateCellular:(BOOL)a4;
+ (id)titleForNetworkName:(id)a3 chinaDevice:(BOOL)a4 privateCellular:(BOOL)a5;
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

+ (id)titleForNetworkName:(id)a3 chinaDevice:(BOOL)a4 privateCellular:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = MEMORY[0x277CCACA8];
  v8 = MEMORY[0x277CCA8D8];
  v9 = a3;
  v10 = [v8 bundleForClass:objc_opt_class()];
  v11 = v10;
  v12 = @"kWFLocCellularOutrankAlertTitle";
  if (v6)
  {
    v12 = @"kWFLocCellularOutrankAlertTitle_CH";
  }

  v13 = @"kWFLocPrivateCellularOutrankAlertTitle_CH";
  if (!v6)
  {
    v13 = @"kWFLocPrivateCellularOutrankAlertTitle";
  }

  if (v5)
  {
    v14 = v13;
  }

  else
  {
    v14 = v12;
  }

  v15 = [v10 localizedStringForKey:v14 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];
  v16 = [v7 stringWithFormat:v15, v9];

  return v16;
}

+ (id)messageForChinaDevice:(BOOL)a3 privateCellular:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = v6;
  v8 = @"kWFLocCellularOutrankAlertMessage";
  if (v5)
  {
    v8 = @"kWFLocCellularOutrankAlertMessage_CH";
  }

  v9 = @"kWFLocPrivateCellularOutrankAlertMessage_CH";
  if (!v5)
  {
    v9 = @"kWFLocPrivateCellularOutrankAlertMessage";
  }

  if (v4)
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

+ (id)cancelButtonTitleForPrivateCellular:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
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

+ (id)defaultButtonTitleForChinaDevice:(BOOL)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (v3)
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