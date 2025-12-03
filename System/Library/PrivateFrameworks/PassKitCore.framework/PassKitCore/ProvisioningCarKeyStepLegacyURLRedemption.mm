@interface ProvisioningCarKeyStepLegacyURLRedemption
- (void)passLibraryDidChangeWithNotification:(id)notification;
@end

@implementation ProvisioningCarKeyStepLegacyURLRedemption

- (void)passLibraryDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_1AD4C1B14(notificationCopy);
}

@end