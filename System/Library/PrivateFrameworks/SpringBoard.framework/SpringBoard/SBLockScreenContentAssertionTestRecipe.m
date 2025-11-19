@interface SBLockScreenContentAssertionTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBLockScreenContentAssertionTestRecipe

- (void)handleVolumeIncrease
{
  if (!self->_currentAssertion)
  {
    v7 = xpc_null_create();
    v4 = [objc_alloc(MEMORY[0x277D66C18]) initWithServiceName:@"com.apple.TestRemoteAlert" viewControllerClassName:@"RemoteContentViewController" xpcEndpoint:v7 userInfo:0];
    v5 = [MEMORY[0x277D66B28] acquireRemoteContentAssertionWithDefinition:v4 errorHandler:&__block_literal_global_428];
    currentAssertion = self->_currentAssertion;
    self->_currentAssertion = v5;
  }
}

- (void)handleVolumeDecrease
{
  [(SBSLockScreenRemoteContentAssertion *)self->_currentAssertion invalidate];
  currentAssertion = self->_currentAssertion;
  self->_currentAssertion = 0;
}

@end