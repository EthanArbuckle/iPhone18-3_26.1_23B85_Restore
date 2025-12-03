@interface _IOUIAngelServiceAssertions
- (BOOL)_invalidateCallingHandler:(BOOL)handler withError:(id *)error;
- (BOOL)acquireWithError:(id *)error;
- (BOOL)invalidateAndKillWithExplanation:(id)explanation code:(unint64_t)code error:(id *)error;
- (BOOL)isValid;
- (NSString)description;
- (id)_initWithUnderlyingAssertion:(id)assertion forPid:(int)pid;
- (void)_callWarningHandler;
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
- (void)assertionWillInvalidate:(id)invalidate;
- (void)dealloc;
@end

@implementation _IOUIAngelServiceAssertions

- (id)_initWithUnderlyingAssertion:(id)assertion forPid:(int)pid
{
  assertionCopy = assertion;
  v11.receiver = self;
  v11.super_class = _IOUIAngelServiceAssertions;
  v8 = [(_IOUIAngelServiceAssertions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_underlyingAssertion, assertion);
    v9->_pid = pid;
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (BOOL)acquireWithError:(id *)error
{
  underlyingAssertion = [(_IOUIAngelServiceAssertions *)self underlyingAssertion];
  LOBYTE(error) = [underlyingAssertion acquireWithError:error];

  return error;
}

- (BOOL)_invalidateCallingHandler:(BOOL)handler withError:(id *)error
{
  handlerCopy = handler;
  if (![(_IOUIAngelServiceAssertions *)self isValid])
  {
    return 1;
  }

  underlyingAssertion = [(_IOUIAngelServiceAssertions *)self underlyingAssertion];
  v8 = [underlyingAssertion invalidateWithError:error];

  if (handlerCopy)
  {
    objc_initWeak(&location, self);
    v9 = dispatch_get_global_queue(0, 0);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __67___IOUIAngelServiceAssertions__invalidateCallingHandler_withError___block_invoke;
    v11[3] = &unk_59710;
    objc_copyWeak(&v12, &location);
    dispatch_async(v9, v11);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (BOOL)invalidateAndKillWithExplanation:(id)explanation code:(unint64_t)code error:(id *)error
{
  explanationCopy = explanation;
  if ([(_IOUIAngelServiceAssertions *)self isValid])
  {
    v9 = [[RBSTerminateContext alloc] initWithExplanation:explanationCopy];
    v10 = 1;
    [v9 setReportType:1];
    [v9 setExceptionCode:code];
    [v9 setMaximumTerminationResistance:20];
    v11 = [RBSProcessIdentifier identifierWithPid:[(_IOUIAngelServiceAssertions *)self pid]];
    v12 = [RBSProcessPredicate predicateMatchingIdentifier:v11];

    v13 = [[RBSTerminateRequest alloc] initWithPredicate:v12 context:v9];
    v17 = 0;
    v14 = [v13 execute:&v17];
    v15 = v17;
    if ((v14 & 1) == 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        [_IOUIAngelServiceAssertions invalidateAndKillWithExplanation:? code:? error:?];
      }

      v10 = [(_IOUIAngelServiceAssertions *)self invalidateWithError:error];
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (BOOL)isValid
{
  underlyingAssertion = [(_IOUIAngelServiceAssertions *)self underlyingAssertion];
  isValid = [underlyingAssertion isValid];

  return isValid;
}

- (void)_callWarningHandler
{
  os_unfair_lock_lock(&self->_lock);
  warningHandler = [(_IOUIAngelServiceAssertions *)self warningHandler];

  if (warningHandler)
  {
    warningHandler2 = [(_IOUIAngelServiceAssertions *)self warningHandler];
    [(_IOUIAngelServiceAssertions *)self setWarningHandler:0];
    os_unfair_lock_unlock(&self->_lock);
    if (warningHandler2)
    {
      warningHandler2[2](warningHandler2);
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    assertionCopy = assertion;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Did invalidate assertion %@", &v6, 0xCu);
  }

  [(_IOUIAngelServiceAssertions *)self _callInvalidationHandler:1];
}

- (void)assertionWillInvalidate:(id)invalidate
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    invalidateCopy = invalidate;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Will invalidate assertion %@", &v5, 0xCu);
  }

  [(_IOUIAngelServiceAssertions *)self _callWarningHandler];
}

- (NSString)description
{
  underlyingAssertion = [(_IOUIAngelServiceAssertions *)self underlyingAssertion];
  v3 = [NSString stringWithFormat:@"_IOUIAngelServiceAssertions for underlying assertion: %@", underlyingAssertion];

  return v3;
}

- (void)dealloc
{
  v1 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_FAULT, "_IOUIAngelServiceAssertions dealloced before being invalidated! %@", &v1, 0xCu);
}

- (void)invalidateAndKillWithExplanation:(void *)a1 code:error:.cold.1(void *a1)
{
  [a1 pid];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end