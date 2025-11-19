@interface UIPresentationController(NCAdditions)
- (id)presentedNotificationViewController;
@end

@implementation UIPresentationController(NCAdditions)

- (id)presentedNotificationViewController
{
  objc_opt_class();
  v2 = [a1 presentedViewController];
  v3 = UNSafeCast();

  return v3;
}

@end