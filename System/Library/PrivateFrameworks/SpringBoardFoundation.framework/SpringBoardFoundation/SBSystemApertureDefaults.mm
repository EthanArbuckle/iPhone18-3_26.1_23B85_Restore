@interface SBSystemApertureDefaults
- (void)_addStateCaptureHandlers;
- (void)_bindAndRegisterDefaults;
@end

@implementation SBSystemApertureDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"suppressDynamicIslandCompletely"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBSuppressDynamicIslandCompletely" toDefaultValue:MEMORY[0x1E695E110] options:4];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"alwaysShowSystemApertureOnClonedDisplays"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBAlwaysShowSystemApertureOnClonedDisplays" toDefaultValue:v4 options:4];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"alwaysShowSystemApertureInSnapshots"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBAlwaysShowSystemApertureInSnapshots" toDefaultValue:v4 options:4];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"alwaysRenderSystemApertureFillOnGPU"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBAlwaysRenderSystemApertureFillOnGPU" toDefaultValue:v4 options:4];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"neverRenderSystemApertureFillOnGPU"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBNeverRenderSystemApertureFillOnGPU" toDefaultValue:v4 options:4];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"enableSystemApertureStateCollection"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBEnableSystemApertureStateCollection" toDefaultValue:MEMORY[0x1E695E118] options:4];

  [(SBSystemApertureDefaults *)self _addStateCaptureHandlers];
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

__CFString *__52__SBSystemApertureDefaults__addStateCaptureHandlers__block_invoke(uint64_t a1)
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