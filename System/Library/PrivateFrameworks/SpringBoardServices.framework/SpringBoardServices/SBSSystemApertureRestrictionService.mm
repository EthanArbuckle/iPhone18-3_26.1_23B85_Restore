@interface SBSSystemApertureRestrictionService
- (SBSSystemApertureRestrictionService)init;
- (id)acquireRestrictSystemApertureLayoutToInertAssertionWithReason:(id)a3;
- (id)acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithReason:(id)a3;
- (id)acquireSystemApertureCompleteSuppressionAssertionWithReason:(id)a3;
- (void)init;
- (void)invalidate;
@end

@implementation SBSSystemApertureRestrictionService

- (SBSSystemApertureRestrictionService)init
{
  v19.receiver = self;
  v19.super_class = SBSSystemApertureRestrictionService;
  v2 = [(SBSSystemApertureRestrictionService *)&v19 init];
  if (v2)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    v3 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v3 bundleIdentifier];
    v5 = [v4 isEqualToString:@"com.apple.springboard"];

    if (v5)
    {
      [SBSSystemApertureRestrictionService init];
    }

    v2->_isValid = 1;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = BSDispatchQueueCreateWithQualityOfService();
    connectionQueue = v2->_connectionQueue;
    v2->_connectionQueue = v7;

    v9 = MEMORY[0x1E698F498];
    v10 = [MEMORY[0x1E698F498] defaultShellMachName];
    v11 = +[SBSSystemApertureRestrictionServiceSpecification identifier];
    v12 = [v9 endpointForMachName:v10 service:v11 instance:0];

    v13 = [MEMORY[0x1E698F490] connectionWithEndpoint:v12];
    connection = v2->_connection;
    v2->_connection = v13;

    v15 = v2->_connection;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __43__SBSSystemApertureRestrictionService_init__block_invoke;
    v17[3] = &unk_1E735ED88;
    v18 = v2;
    [(BSServiceConnection *)v15 configureConnection:v17];
    [(BSServiceConnection *)v2->_connection activate];
  }

  return v2;
}

void __43__SBSSystemApertureRestrictionService_init__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[SBSSystemApertureRestrictionServiceSpecification interface];
  [v5 setInterface:v3];

  [v5 setInterfaceTarget:*(a1 + 32)];
  v4 = +[SBSSystemApertureRestrictionServiceSpecification serviceQuality];
  [v5 setServiceQuality:v4];

  [v5 setTargetQueue:*(*(a1 + 32) + 16)];
  [v5 setInvalidationHandler:&__block_literal_global_9];
  [v5 setInterruptionHandler:&__block_literal_global_15];
}

void __43__SBSSystemApertureRestrictionService_init__block_invoke_2()
{
  v0 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __43__SBSSystemApertureRestrictionService_init__block_invoke_2_cold_1(v0);
  }
}

void __43__SBSSystemApertureRestrictionService_init__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = SBLogSystemApertureHosting();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __43__SBSSystemApertureRestrictionService_init__block_invoke_13_cold_1(v3);
  }

  [v2 activate];
}

- (void)invalidate
{
  [(BSServiceConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  WeakRetained = objc_loadWeakRetained(&self->_restrictToInertAssertion);
  [WeakRetained invalidate];

  v5 = objc_loadWeakRetained(&self->_completeSuppressionAssertion);
  [v5 invalidate];

  self->_isValid = 0;
}

- (id)acquireRestrictSystemApertureLayoutToInertAssertionWithReason:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!v4)
  {
    [SBSSystemApertureRestrictionService acquireRestrictSystemApertureLayoutToInertAssertionWithReason:];
  }

  if (!self->_isValid)
  {
    [SBSSystemApertureRestrictionService acquireRestrictSystemApertureLayoutToInertAssertionWithReason:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_restrictToInertAssertion);
  if (!WeakRetained)
  {
    objc_initWeak(&location, self);
    v6 = [(BSServiceConnection *)self->_connection remoteTarget];
    v7 = [v6 acquireRestrictSystemApertureLayoutToInertAssertionIdentifierWithReason:v4];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x1E698E778]);
      v9 = [v7 UUIDString];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __101__SBSSystemApertureRestrictionService_acquireRestrictSystemApertureLayoutToInertAssertionWithReason___block_invoke;
      v11[3] = &unk_1E735F278;
      objc_copyWeak(&v12, &location);
      WeakRetained = [v8 initWithIdentifier:v9 forReason:v4 invalidationBlock:v11];

      objc_storeWeak(&self->_restrictToInertAssertion, WeakRetained);
      objc_destroyWeak(&v12);
    }

    else
    {
      WeakRetained = 0;
    }

    objc_destroyWeak(&location);
  }

  return WeakRetained;
}

void __101__SBSSystemApertureRestrictionService_acquireRestrictSystemApertureLayoutToInertAssertionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  BSDispatchMain();

  objc_destroyWeak(&v5);
}

void __101__SBSSystemApertureRestrictionService_acquireRestrictSystemApertureLayoutToInertAssertionWithReason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 3);
    v4 = *(a1 + 32);

    WeakRetained = v7;
    if (v3 == v4)
    {
      v5 = [v7[1] remoteTarget];
      v6 = [*(a1 + 32) identifier];
      [v5 invalidateRestrictSystemApertureLayoutToInertAssertionWithIdentifier:v6];

      objc_storeWeak(v7 + 3, 0);
      WeakRetained = v7;
    }
  }
}

- (id)acquireSystemApertureCompleteSuppressionAssertionWithReason:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!v4)
  {
    [SBSSystemApertureRestrictionService acquireSystemApertureCompleteSuppressionAssertionWithReason:];
  }

  if (!self->_isValid)
  {
    [SBSSystemApertureRestrictionService acquireSystemApertureCompleteSuppressionAssertionWithReason:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_completeSuppressionAssertion);
  if (!WeakRetained)
  {
    objc_initWeak(&location, self);
    v6 = [(BSServiceConnection *)self->_connection remoteTarget];
    v7 = [v6 acquireSystemApertureCompleteSuppressionAssertionIdentifierWithReason:v4];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x1E698E778]);
      v9 = [v7 UUIDString];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __99__SBSSystemApertureRestrictionService_acquireSystemApertureCompleteSuppressionAssertionWithReason___block_invoke;
      v11[3] = &unk_1E735F278;
      objc_copyWeak(&v12, &location);
      WeakRetained = [v8 initWithIdentifier:v9 forReason:v4 invalidationBlock:v11];

      objc_storeWeak(&self->_completeSuppressionAssertion, WeakRetained);
      objc_destroyWeak(&v12);
    }

    else
    {
      WeakRetained = 0;
    }

    objc_destroyWeak(&location);
  }

  return WeakRetained;
}

void __99__SBSSystemApertureRestrictionService_acquireSystemApertureCompleteSuppressionAssertionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  BSDispatchMain();

  objc_destroyWeak(&v5);
}

void __99__SBSSystemApertureRestrictionService_acquireSystemApertureCompleteSuppressionAssertionWithReason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 4);
    v4 = *(a1 + 32);

    WeakRetained = v7;
    if (v3 == v4)
    {
      v5 = [v7[1] remoteTarget];
      v6 = [*(a1 + 32) identifier];
      [v5 invalidateSystemApertureCompleteSuppressionAssertionWithIdentifier:v6];

      objc_storeWeak(v7 + 4, 0);
      WeakRetained = v7;
    }
  }
}

- (id)acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithReason:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (!v4)
  {
    [SBSSystemApertureRestrictionService acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithReason:];
  }

  if (!self->_isValid)
  {
    [SBSSystemApertureRestrictionService acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithReason:];
  }

  WeakRetained = objc_loadWeakRetained(&self->_emptyHidingSuppressionAssertion);
  if (!WeakRetained)
  {
    objc_initWeak(&location, self);
    v6 = [(BSServiceConnection *)self->_connection remoteTarget];
    v7 = [v6 acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionIdentifierWithReason:v4];

    if (v7)
    {
      v8 = objc_alloc(MEMORY[0x1E698E778]);
      v9 = [v7 UUIDString];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __115__SBSSystemApertureRestrictionService_acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithReason___block_invoke;
      v11[3] = &unk_1E735F278;
      objc_copyWeak(&v12, &location);
      WeakRetained = [v8 initWithIdentifier:v9 forReason:v4 invalidationBlock:v11];

      objc_storeWeak(&self->_emptyHidingSuppressionAssertion, WeakRetained);
      objc_destroyWeak(&v12);
    }

    else
    {
      WeakRetained = 0;
    }

    objc_destroyWeak(&location);
  }

  return WeakRetained;
}

void __115__SBSSystemApertureRestrictionService_acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&v5, (a1 + 32));
  v4 = v3;
  BSDispatchMain();

  objc_destroyWeak(&v5);
}

void __115__SBSSystemApertureRestrictionService_acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithReason___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = objc_loadWeakRetained(WeakRetained + 5);
    v4 = *(a1 + 32);

    WeakRetained = v7;
    if (v3 == v4)
    {
      v5 = [v7[1] remoteTarget];
      v6 = [*(a1 + 32) identifier];
      [v5 invalidateSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithIdentifier:v6];

      objc_storeWeak(v7 + 5, 0);
      WeakRetained = v7;
    }
  }
}

- (void)init
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)acquireRestrictSystemApertureLayoutToInertAssertionWithReason:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)acquireRestrictSystemApertureLayoutToInertAssertionWithReason:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)acquireSystemApertureCompleteSuppressionAssertionWithReason:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)acquireSystemApertureCompleteSuppressionAssertionWithReason:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithReason:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"reason" object:? file:? lineNumber:? description:?];
}

- (void)acquireSuppressHidingEmptySystemApertureOnClonedDisplaysAssertionWithReason:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end