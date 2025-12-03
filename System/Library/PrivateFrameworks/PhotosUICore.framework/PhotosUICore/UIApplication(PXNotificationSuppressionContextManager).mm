@interface UIApplication(PXNotificationSuppressionContextManager)
- (id)notificationSuppressionContextManager;
@end

@implementation UIApplication(PXNotificationSuppressionContextManager)

- (id)notificationSuppressionContextManager
{
  if ([self conformsToProtocol:&unk_1F1B45CE0])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end