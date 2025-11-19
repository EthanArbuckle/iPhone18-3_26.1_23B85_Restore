@interface SBUIPluginController
- (SBUIPluginControllerHost)host;
- (void)setVisible:(BOOL)a3;
@end

@implementation SBUIPluginController

- (void)setVisible:(BOOL)a3
{
  if (self->_isVisible != a3)
  {
    self->_isVisible = a3;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"SBUIPluginVisibilityDidChangeNotification" object:self userInfo:0];
  }
}

- (SBUIPluginControllerHost)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end