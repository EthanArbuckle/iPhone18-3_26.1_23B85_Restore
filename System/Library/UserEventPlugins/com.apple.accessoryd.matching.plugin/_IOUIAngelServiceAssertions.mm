@interface _IOUIAngelServiceAssertions
- (BOOL)_invalidateCallingHandler:(BOOL)a3 withError:(id *)a4;
- (BOOL)acquireWithError:(id *)a3;
- (BOOL)invalidateAndKillWithExplanation:(id)a3 code:(unint64_t)a4 error:(id *)a5;
- (BOOL)isValid;
- (NSString)description;
- (id)_initWithUnderlyingAssertion:(id)a3 forPid:(int)a4;
- (void)_callWarningHandler;
- (void)assertion:(id)a3 didInvalidateWithError:(id)a4;
- (void)assertionWillInvalidate:(id)a3;
- (void)dealloc;
@end

@implementation _IOUIAngelServiceAssertions

- (id)_initWithUnderlyingAssertion:(id)a3 forPid:(int)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _IOUIAngelServiceAssertions;
  v8 = [(_IOUIAngelServiceAssertions *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_underlyingAssertion, a3);
    v9->_pid = a4;
    v9->_lock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (BOOL)acquireWithError:(id *)a3
{
  v4 = [(_IOUIAngelServiceAssertions *)self underlyingAssertion];
  LOBYTE(a3) = [v4 acquireWithError:a3];

  return a3;
}

- (BOOL)_invalidateCallingHandler:(BOOL)a3 withError:(id *)a4
{
  v5 = a3;
  if (![(_IOUIAngelServiceAssertions *)self isValid])
  {
    return 1;
  }

  v7 = [(_IOUIAngelServiceAssertions *)self underlyingAssertion];
  v8 = [v7 invalidateWithError:a4];

  if (v5)
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

- (BOOL)invalidateAndKillWithExplanation:(id)a3 code:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  if ([(_IOUIAngelServiceAssertions *)self isValid])
  {
    v9 = [[RBSTerminateContext alloc] initWithExplanation:v8];
    v10 = 1;
    [v9 setReportType:1];
    [v9 setExceptionCode:a4];
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

      v10 = [(_IOUIAngelServiceAssertions *)self invalidateWithError:a5];
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
  v2 = [(_IOUIAngelServiceAssertions *)self underlyingAssertion];
  v3 = [v2 isValid];

  return v3;
}

- (void)_callWarningHandler
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(_IOUIAngelServiceAssertions *)self warningHandler];

  if (v3)
  {
    v4 = [(_IOUIAngelServiceAssertions *)self warningHandler];
    [(_IOUIAngelServiceAssertions *)self setWarningHandler:0];
    os_unfair_lock_unlock(&self->_lock);
    if (v4)
    {
      v4[2](v4);
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)assertion:(id)a3 didInvalidateWithError:(id)a4
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a3;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Did invalidate assertion %@", &v6, 0xCu);
  }

  [(_IOUIAngelServiceAssertions *)self _callInvalidationHandler:1];
}

- (void)assertionWillInvalidate:(id)a3
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = a3;
    _os_log_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Will invalidate assertion %@", &v5, 0xCu);
  }

  [(_IOUIAngelServiceAssertions *)self _callWarningHandler];
}

- (NSString)description
{
  v2 = [(_IOUIAngelServiceAssertions *)self underlyingAssertion];
  v3 = [NSString stringWithFormat:@"_IOUIAngelServiceAssertions for underlying assertion: %@", v2];

  return v3;
}

- (void)dealloc
{
  v1 = 138412290;
  v2 = a1;
  _os_log_fault_impl(&def_3A0E8, &_os_log_default, OS_LOG_TYPE_FAULT, "_IOUIAngelServiceAssertions dealloced before being invalidated! %@", &v1, 0xCu);
}

- (void)invalidateAndKillWithExplanation:(void *)a1 code:error:.cold.1(void *a1)
{
  [a1 pid];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

@end