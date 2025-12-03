@interface SBUIPluginController
- (SBUIPluginControllerHost)host;
- (void)setVisible:(BOOL)visible;
@end

@implementation SBUIPluginController

- (void)setVisible:(BOOL)visible
{
  if (self->_isVisible != visible)
  {
    self->_isVisible = visible;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SBUIPluginVisibilityDidChangeNotification" object:self userInfo:0];
  }
}

- (SBUIPluginControllerHost)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end