@interface UIAlertController
@end

@implementation UIAlertController

uint64_t __148__UIAlertController_SensorKitUI__skui_alertControllerForRequiredAuthorizationIfNeccesaryForBundle_authGroup_tableView_indexPath_destructiveHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cellForRowAtIndexPath:*(a1 + 40)];
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v3 = [v1 toggle];

    return [v3 setOn:1];
  }

  return result;
}

@end