@interface _SBUserNotificationAlertElement
- (id)alertHost;
- (void)setAlertHost:(id)a3;
@end

@implementation _SBUserNotificationAlertElement

- (void)setAlertHost:(id)a3
{
  obj = a3;
  if ([(_SBUserNotificationAlertElement *)self preventsAutomaticDismissal])
  {
    objc_storeWeak(&self->_alertHost, obj);
    v4 = [obj alertAssertion];
    [v4 setAutomaticallyInvalidatable:0 lockingWithKey:@"_SBUserNotificationAlertElement" reason:@"_SBUserNotificationAlertElement.preventsAutomaticDismissal is YES"];
  }
}

- (id)alertHost
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHost);

  return WeakRetained;
}

@end