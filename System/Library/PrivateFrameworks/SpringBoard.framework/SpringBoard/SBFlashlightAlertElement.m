@interface SBFlashlightAlertElement
+ (id)flashlightUnavailableAlert;
- (SAAlertHosting)alertHost;
@end

@implementation SBFlashlightAlertElement

+ (id)flashlightUnavailableAlert
{
  v2 = [[a1 alloc] initWithStyle:1 state:2];

  return v2;
}

- (SAAlertHosting)alertHost
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHost);

  return WeakRetained;
}

@end