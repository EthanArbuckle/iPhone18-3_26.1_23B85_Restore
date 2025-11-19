@interface SBInCallTestRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBInCallTestRecipe

- (void)handleVolumeIncrease
{
  if (!self->_isPresentationActive)
  {
    self->_isPresentationActive = 1;
    v3 = [objc_alloc(MEMORY[0x277D66AE8]) initWithSceneBundleIdentifier:@"com.apple.FakePhone"];
    [MEMORY[0x277D66AF0] performPresentationWithConfiguration:v3 completion:0];
  }
}

- (void)handleVolumeDecrease
{
  if (self->_isPresentationActive)
  {
    self->_isPresentationActive = 0;
    v4 = +[SBWorkspace mainWorkspace];
    v3 = [v4 inCallPresentationManager];
    [v3 _dismissAllPresentations];
  }
}

@end