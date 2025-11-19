@interface UIApplication(PXNotificationSuppressionContextManager)
- (id)notificationSuppressionContextManager;
@end

@implementation UIApplication(PXNotificationSuppressionContextManager)

- (id)notificationSuppressionContextManager
{
  if ([a1 conformsToProtocol:&unk_1F1B45CE0])
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end