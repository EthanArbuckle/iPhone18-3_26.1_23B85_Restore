@interface UNSNotificationAuthorizationAlertController
- (void)presentAuthorizationAlertForBundleIdentifier:(id)a3 displayName:(id)a4 usageDescription:(id)a5 withResult:(id)a6;
@end

@implementation UNSNotificationAuthorizationAlertController

- (void)presentAuthorizationAlertForBundleIdentifier:(id)a3 displayName:(id)a4 usageDescription:(id)a5 withResult:(id)a6
{
  v9 = a6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __132__UNSNotificationAuthorizationAlertController_presentAuthorizationAlertForBundleIdentifier_displayName_usageDescription_withResult___block_invoke;
  v11[3] = &unk_279E10D28;
  v12 = v9;
  v10 = v9;
  UNSShowNotificationAuthorizationAlert(a3, a4, a5, v11);
}

uint64_t __132__UNSNotificationAuthorizationAlertController_presentAuthorizationAlertForBundleIdentifier_displayName_usageDescription_withResult___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end