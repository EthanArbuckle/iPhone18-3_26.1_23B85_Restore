@interface SBAlertProvidedContentElement
- (SAAlertHosting)alertHost;
@end

@implementation SBAlertProvidedContentElement

- (SAAlertHosting)alertHost
{
  WeakRetained = objc_loadWeakRetained(&self->_alertHost);

  return WeakRetained;
}

@end