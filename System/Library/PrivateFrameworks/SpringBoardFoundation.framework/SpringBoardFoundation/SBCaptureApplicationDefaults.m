@interface SBCaptureApplicationDefaults
- (void)_addStateCaptureHandlers;
- (void)_bindAndRegisterDefaults;
@end

@implementation SBCaptureApplicationDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"ignoreCaptureApplicationLaunchMonitor"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBIgnoreCaptureApplicationLaunchMonitor" toDefaultValue:MEMORY[0x1E695E110] options:4];

  [(SBCaptureApplicationDefaults *)self _addStateCaptureHandlers];
}

- (void)_addStateCaptureHandlers
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69E96A0];
  objc_copyWeak(&v4, &location);
  v3 = BSLogAddStateCaptureBlockWithTitle();

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

__CFString *__56__SBCaptureApplicationDefaults__addStateCaptureHandlers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained description];
  }

  else
  {
    v3 = &stru_1F3D19FF0;
  }

  return v3;
}

@end