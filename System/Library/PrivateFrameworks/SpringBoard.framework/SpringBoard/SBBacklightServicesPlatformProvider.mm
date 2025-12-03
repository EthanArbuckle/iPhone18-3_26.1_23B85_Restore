@interface SBBacklightServicesPlatformProvider
- (SBBacklightServicesPlatformProvider)init;
- (SBBacklightServicesPlatformProvider)initWithBacklightEnvironmentSessionProvider:(id)provider;
@end

@implementation SBBacklightServicesPlatformProvider

- (SBBacklightServicesPlatformProvider)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithBacklightEnvironmentSessionProvider_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBBacklightServicesPlatformProvider.m" lineNumber:24 description:{@"%s is unavailable; use %@ instead", "-[SBBacklightServicesPlatformProvider init]", v5}];

  return 0;
}

- (SBBacklightServicesPlatformProvider)initWithBacklightEnvironmentSessionProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SBBacklightServicesPlatformProvider;
  v5 = [(SBBacklightServicesPlatformProvider *)&v9 init];
  if (v5)
  {
    v6 = [[SBBacklightPlatformProvider alloc] initWithBacklightEnvironmentSessionProvider:providerCopy];
    backlightPlatformProvider = v5->_backlightPlatformProvider;
    v5->_backlightPlatformProvider = v6;
  }

  return v5;
}

@end