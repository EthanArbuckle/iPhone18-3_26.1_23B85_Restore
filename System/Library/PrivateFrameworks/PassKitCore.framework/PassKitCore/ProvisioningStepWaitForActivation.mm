@interface ProvisioningStepWaitForActivation
- (void)passLibraryDidChangeWithNotification:(id)notification;
@end

@implementation ProvisioningStepWaitForActivation

- (void)passLibraryDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_1AD4C341C(notificationCopy);
}

@end