@interface SBActivityProvidedContentElement
- (SAActivityHosting)activityHost;
@end

@implementation SBActivityProvidedContentElement

- (SAActivityHosting)activityHost
{
  WeakRetained = objc_loadWeakRetained(&self->_activityHost);

  return WeakRetained;
}

@end