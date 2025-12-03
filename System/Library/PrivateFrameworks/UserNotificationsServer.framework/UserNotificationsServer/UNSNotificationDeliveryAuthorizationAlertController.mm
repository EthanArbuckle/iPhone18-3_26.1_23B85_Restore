@interface UNSNotificationDeliveryAuthorizationAlertController
- (void)presentAuthorizationAlertForBundleIdentifier:(id)identifier displayName:(id)name usageDescription:(id)description withResult:(id)result;
@end

@implementation UNSNotificationDeliveryAuthorizationAlertController

- (void)presentAuthorizationAlertForBundleIdentifier:(id)identifier displayName:(id)name usageDescription:(id)description withResult:(id)result
{
  resultCopy = result;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __140__UNSNotificationDeliveryAuthorizationAlertController_presentAuthorizationAlertForBundleIdentifier_displayName_usageDescription_withResult___block_invoke;
  v11[3] = &unk_279E10D28;
  v12 = resultCopy;
  v10 = resultCopy;
  UNSShowNotificationDeliveryAuthorizationAlert(identifier, name, description, v11);
}

uint64_t __140__UNSNotificationDeliveryAuthorizationAlertController_presentAuthorizationAlertForBundleIdentifier_displayName_usageDescription_withResult___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end