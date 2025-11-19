@interface SBCaptureButtonDefaults
- (void)_addStateCaptureHandlers;
- (void)_bindAndRegisterDefaults;
@end

@implementation SBCaptureButtonDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"simulateCaptureButtonUsingActionButton"];
  v4 = MEMORY[0x1E695E110];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"SBSimulateCaptureButtonUsingActionButton" toDefaultValue:MEMORY[0x1E695E110] options:4];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disablePreLaunchCaptureButtonSuppression"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"SBDisablePreLaunchCaptureButtonSuppression" toDefaultValue:v4 options:4];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"captureButtonAssociatedAppBundleIdentifier"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"SBCaptureButtonAssociatedAppBundleIdentifier" toDefaultValue:@"com.apple.camera" options:1];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableCaptureButton"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v7 withDefaultKey:@"SBDisableCaptureButton" toDefaultValue:v4 options:4];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"captureButtonClickCount"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v8 withDefaultKey:@"SBCaptureButtonClickCount" toDefaultValue:&unk_1F3D3E7F0 options:4];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableWakeWhenDim"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v9 withDefaultKey:@"SBCaptureButtonDisableWakeWhenDim" toDefaultValue:v4 options:4];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableStationaryDetection"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v10 withDefaultKey:@"SBCaptureButtonDisableStationaryDetection" toDefaultValue:v4 options:4];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableDirectLaunchAfterUnsuppress"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v11 withDefaultKey:@"SBCaptureButtonDisableDirectLaunchAfterUnsuppress" toDefaultValue:v4 options:4];

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"allowLaunchIfUnobstructionOccursWhileButtonDown"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v12 withDefaultKey:@"SBCaptureButtonAllowLaunchIfUnobstructionOccursWhileButtonDown" toDefaultValue:v4 options:4];

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"allowLaunchIfUnobstructionOccursPromptlyAfterButtonUp"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v13 withDefaultKey:@"SBCaptureButtonAllowLaunchIfUnobstructionOccursPromptlyAfterButtonUp" toDefaultValue:v4 options:4];

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"enableCameraPose"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v14 withDefaultKey:@"SBCaptureButtonEnableCameraPose" toDefaultValue:v4 options:4];

  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"cameraLaunchCounter"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v15 withDefaultKey:@"SBCaptureButtonCameraLaunchCounter" toDefaultValue:&unk_1F3D3E808 options:4];

  [(SBCaptureButtonDefaults *)self _addStateCaptureHandlers];
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

__CFString *__51__SBCaptureButtonDefaults__addStateCaptureHandlers__block_invoke(uint64_t a1)
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