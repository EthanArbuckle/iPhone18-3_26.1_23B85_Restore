@interface SBBacklightServicesPlatformProvider
- (SBBacklightServicesPlatformProvider)init;
- (SBBacklightServicesPlatformProvider)initWithBacklightEnvironmentSessionProvider:(id)a3;
@end

@implementation SBBacklightServicesPlatformProvider

- (SBBacklightServicesPlatformProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithBacklightEnvironmentSessionProvider_);
  [v4 handleFailureInMethod:a2 object:self file:@"SBBacklightServicesPlatformProvider.m" lineNumber:24 description:{@"%s is unavailable; use %@ instead", "-[SBBacklightServicesPlatformProvider init]", v5}];

  return 0;
}

- (SBBacklightServicesPlatformProvider)initWithBacklightEnvironmentSessionProvider:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBBacklightServicesPlatformProvider;
  v5 = [(SBBacklightServicesPlatformProvider *)&v9 init];
  if (v5)
  {
    v6 = [[SBBacklightPlatformProvider alloc] initWithBacklightEnvironmentSessionProvider:v4];
    backlightPlatformProvider = v5->_backlightPlatformProvider;
    v5->_backlightPlatformProvider = v6;
  }

  return v5;
}

@end