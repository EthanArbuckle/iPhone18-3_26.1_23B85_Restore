@interface UNSCriticalAlertAuthorizationAlertController
- (void)presentAuthorizationAlertForBundleIdentifier:(id)identifier displayName:(id)name usageDescription:(id)description withResult:(id)result;
@end

@implementation UNSCriticalAlertAuthorizationAlertController

- (void)presentAuthorizationAlertForBundleIdentifier:(id)identifier displayName:(id)name usageDescription:(id)description withResult:(id)result
{
  resultCopy = result;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __133__UNSCriticalAlertAuthorizationAlertController_presentAuthorizationAlertForBundleIdentifier_displayName_usageDescription_withResult___block_invoke;
  v10[3] = &unk_279E10D28;
  v11 = resultCopy;
  v9 = resultCopy;
  UNSShowCriticalAlertAuthorizationAlert(identifier, name, v10);
}

uint64_t __133__UNSCriticalAlertAuthorizationAlertController_presentAuthorizationAlertForBundleIdentifier_displayName_usageDescription_withResult___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end