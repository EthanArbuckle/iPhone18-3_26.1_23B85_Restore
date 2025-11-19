@interface _SBHardwareButtonLaunchZoomUpAnimationToken
- (CGPoint)preludeAnimationVelocity;
- (_SBHardwareButtonLaunchZoomUpAnimationToken)initWithPreludeAnimating:(id)a3 invalidationBlock:(id)a4;
- (id)associatedBezelEffectsCoordinator;
- (void)associatedBezelEffectsCoordinator;
- (void)dealloc;
- (void)invalidate;
- (void)preludeAnimationVelocity;
- (void)setRequestedDropletWindowLevel:(double)a3;
@end

@implementation _SBHardwareButtonLaunchZoomUpAnimationToken

- (_SBHardwareButtonLaunchZoomUpAnimationToken)initWithPreludeAnimating:(id)a3 invalidationBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SBHardwareButtonLaunchZoomUpAnimationToken initWithPreludeAnimating:invalidationBlock:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [_SBHardwareButtonLaunchZoomUpAnimationToken initWithPreludeAnimating:invalidationBlock:];
LABEL_3:
  v20.receiver = self;
  v20.super_class = _SBHardwareButtonLaunchZoomUpAnimationToken;
  v10 = [(_SBHardwareButtonLaunchZoomUpAnimationToken *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bezelEffectsCoordinator, a3);
    v12 = objc_alloc(MEMORY[0x277CF0CE8]);
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v13 UUIDString];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90___SBHardwareButtonLaunchZoomUpAnimationToken_initWithPreludeAnimating_invalidationBlock___block_invoke;
    v18[3] = &unk_2783A8A70;
    v19 = v9;
    v15 = [v12 initWithIdentifier:v14 forReason:@"Zoom Up" queue:MEMORY[0x277D85CD0] invalidationBlock:v18];
    underlyingAssertion = v11->_underlyingAssertion;
    v11->_underlyingAssertion = v15;

    v11->_valid = 1;
  }

  return v11;
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (CGPoint)preludeAnimationVelocity
{
  if (!self->_valid)
  {
    [_SBHardwareButtonLaunchZoomUpAnimationToken preludeAnimationVelocity];
  }

  bezelEffectsCoordinator = self->_bezelEffectsCoordinator;

  [(SBCaptureButtonPreludeAnimatingPrivate *)bezelEffectsCoordinator preludeAnimationVelocity];
  result.y = v5;
  result.x = v4;
  return result;
}

- (void)setRequestedDropletWindowLevel:(double)a3
{
  if (!self->_valid)
  {
    [_SBHardwareButtonLaunchZoomUpAnimationToken setRequestedDropletWindowLevel:];
  }

  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_requestedWindowLevel = a3;
    bezelEffectsCoordinator = self->_bezelEffectsCoordinator;

    [(SBCaptureButtonPreludeAnimatingPrivate *)bezelEffectsCoordinator updateLaunchAnimationWindowLevelBasedOnRequests];
  }
}

- (id)associatedBezelEffectsCoordinator
{
  if (!self->_valid)
  {
    [_SBHardwareButtonLaunchZoomUpAnimationToken associatedBezelEffectsCoordinator];
  }

  bezelEffectsCoordinator = self->_bezelEffectsCoordinator;

  return bezelEffectsCoordinator;
}

- (void)invalidate
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)initWithPreludeAnimating:invalidationBlock:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"coordinator != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithPreludeAnimating:invalidationBlock:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"invalidationBlock != nil" object:? file:? lineNumber:? description:?];
}

- (void)preludeAnimationVelocity
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)setRequestedDropletWindowLevel:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)associatedBezelEffectsCoordinator
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end