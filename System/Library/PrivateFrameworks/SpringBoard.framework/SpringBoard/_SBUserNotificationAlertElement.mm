@interface _SBUserNotificationAlertElement
- (id)alertHost;
- (void)setAlertHost:(id)host;
@end

@implementation _SBUserNotificationAlertElement

- (void)setAlertHost:(id)host
{
  obj = host;
  if ([(_SBUserNotificationAlertElement *)self preventsAutomaticDismissal])
  {
    objc_storeWeak(&self->_alertHost, obj);
    alertAssertion = [obj alertAssertion];
    [alertAssertion setAutomaticallyInvalidatable:0 lockingWithKey:@"_SBUserNotificationAlertElement" reason:@"_SBUserNotificationAlertElement.preventsAutomaticDismissal is YES"];
  }
}

- (id)alertHost
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHost);

  return WeakRetained;
}

@end