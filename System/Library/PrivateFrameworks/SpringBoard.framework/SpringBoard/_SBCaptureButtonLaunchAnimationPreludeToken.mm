@interface _SBCaptureButtonLaunchAnimationPreludeToken
- (CGRect)preludeAnimationRectPresentationValue;
- (_SBCaptureButtonLaunchAnimationPreludeToken)initWithPreludeAnimating:(id)a3 invalidationBlock:(id)a4;
- (id)associatedBezelEffectsCoordinator;
- (void)associatedBezelEffectsCoordinator;
- (void)cancel;
- (void)dealloc;
- (void)invalidate;
- (void)preludeAnimationRectPresentationValue;
@end

@implementation _SBCaptureButtonLaunchAnimationPreludeToken

- (_SBCaptureButtonLaunchAnimationPreludeToken)initWithPreludeAnimating:(id)a3 invalidationBlock:(id)a4
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
    [_SBCaptureButtonLaunchAnimationPreludeToken initWithPreludeAnimating:invalidationBlock:];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [_SBCaptureButtonLaunchAnimationPreludeToken initWithPreludeAnimating:invalidationBlock:];
LABEL_3:
  v20.receiver = self;
  v20.super_class = _SBCaptureButtonLaunchAnimationPreludeToken;
  v10 = [(_SBCaptureButtonLaunchAnimationPreludeToken *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_bezelEffectsCoordinator, a3);
    v12 = objc_alloc(MEMORY[0x277CF0CE8]);
    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v13 UUIDString];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90___SBCaptureButtonLaunchAnimationPreludeToken_initWithPreludeAnimating_invalidationBlock___block_invoke;
    v18[3] = &unk_2783A8A70;
    v19 = v9;
    v15 = [v12 initWithIdentifier:v14 forReason:@"Prelude" queue:MEMORY[0x277D85CD0] invalidationBlock:v18];
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

- (void)cancel
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (CGRect)preludeAnimationRectPresentationValue
{
  if (!self->_valid)
  {
    [_SBCaptureButtonLaunchAnimationPreludeToken preludeAnimationRectPresentationValue];
  }

  bezelEffectsCoordinator = self->_bezelEffectsCoordinator;

  [(SBCaptureButtonPreludeAnimatingPrivate *)bezelEffectsCoordinator preludeAnimationRectPresentationValue];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)associatedBezelEffectsCoordinator
{
  if (!self->_valid)
  {
    [_SBCaptureButtonLaunchAnimationPreludeToken associatedBezelEffectsCoordinator];
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

- (void)preludeAnimationRectPresentationValue
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