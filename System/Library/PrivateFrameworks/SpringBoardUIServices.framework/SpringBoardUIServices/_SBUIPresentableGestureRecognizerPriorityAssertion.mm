@interface _SBUIPresentableGestureRecognizerPriorityAssertion
- (_SBUIPresentableGestureRecognizerPriorityAssertion)initWithReason:(id)a3 invalidationHandler:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SBUIPresentableGestureRecognizerPriorityAssertion

- (void)dealloc
{
  [(_SBUIPresentableGestureRecognizerPriorityAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = _SBUIPresentableGestureRecognizerPriorityAssertion;
  [(_SBUIPresentableGestureRecognizerPriorityAssertion *)&v3 dealloc];
}

- (_SBUIPresentableGestureRecognizerPriorityAssertion)initWithReason:(id)a3 invalidationHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
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
    [_SBUIPresentableGestureRecognizerPriorityAssertion initWithReason:a2 invalidationHandler:self];
    if (v9)
    {
      goto LABEL_3;
    }
  }

  [_SBUIPresentableGestureRecognizerPriorityAssertion initWithReason:a2 invalidationHandler:self];
LABEL_3:
  v17.receiver = self;
  v17.super_class = _SBUIPresentableGestureRecognizerPriorityAssertion;
  v10 = [(_SBUIPresentableGestureRecognizerPriorityAssertion *)&v17 init];
  if (v10)
  {
    v11 = [v7 copy];
    reason = v10->_reason;
    v10->_reason = v11;

    v13 = [v9 copy];
    invalidationHandler = v10->_invalidationHandler;
    v10->_invalidationHandler = v13;

    v15 = SBLogBanners();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v19 = v10;
      _os_log_impl(&dword_1A9A79000, v15, OS_LOG_TYPE_DEFAULT, "Acquired gesture recognizer priority assertion: %{public}@", buf, 0xCu);
    }
  }

  return v10;
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    v4 = [invalidationHandler copy];
    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    (v4)[2](v4, self);
    v6 = SBLogBanners();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = self;
      _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "Invalidated gesture recognizer priority assertion: %{public}@", &v7, 0xCu);
    }
  }
}

- (void)initWithReason:(uint64_t)a1 invalidationHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIPresentableGestureRecognizerPriorityAssertion.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

- (void)initWithReason:(uint64_t)a1 invalidationHandler:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIPresentableGestureRecognizerPriorityAssertion.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"invalidationHandler"}];
}

@end