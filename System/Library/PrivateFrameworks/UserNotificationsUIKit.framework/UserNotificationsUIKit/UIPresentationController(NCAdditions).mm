@interface UIPresentationController(NCAdditions)
- (id)presentedNotificationViewController;
@end

@implementation UIPresentationController(NCAdditions)

- (id)presentedNotificationViewController
{
  objc_opt_class();
  presentedViewController = [self presentedViewController];
  v3 = UNSafeCast();

  return v3;
}

@end