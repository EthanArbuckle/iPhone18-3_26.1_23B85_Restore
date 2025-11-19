@interface _SBUIPresentableDismissalPreventionAssertion
- (NSString)description;
- (_SBUIPresentableDismissalPreventionAssertion)initWithDismissalSource:(int64_t)a3 reason:(id)a4 invalidationHandler:(id)a5;
- (void)dealloc;
- (void)invalidate;
@end

@implementation _SBUIPresentableDismissalPreventionAssertion

- (void)dealloc
{
  [(_SBUIPresentableDismissalPreventionAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = _SBUIPresentableDismissalPreventionAssertion;
  [(_SBUIPresentableDismissalPreventionAssertion *)&v3 dealloc];
}

- (_SBUIPresentableDismissalPreventionAssertion)initWithDismissalSource:(int64_t)a3 reason:(id)a4 invalidationHandler:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a5;
  if ([objc_opt_class() _isValidBannerDismissalSource:a3])
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:
    [_SBUIPresentableDismissalPreventionAssertion initWithDismissalSource:a2 reason:self invalidationHandler:?];
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [_SBUIPresentableDismissalPreventionAssertion initWithDismissalSource:a2 reason:self invalidationHandler:?];
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v10)
  {
    goto LABEL_4;
  }

LABEL_11:
  [_SBUIPresentableDismissalPreventionAssertion initWithDismissalSource:a2 reason:self invalidationHandler:?];
LABEL_4:
  v19.receiver = self;
  v19.super_class = _SBUIPresentableDismissalPreventionAssertion;
  v11 = [(_SBUIPresentableDismissalPreventionAssertion *)&v19 init];
  v12 = v11;
  if (v11)
  {
    v11->_dismissalSource = a3;
    v13 = [v9 copy];
    reason = v12->_reason;
    v12->_reason = v13;

    v15 = [v10 copy];
    invalidationHandler = v12->_invalidationHandler;
    v12->_invalidationHandler = v15;

    v17 = SBLogBanners();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v12;
      _os_log_impl(&dword_1A9A79000, v17, OS_LOG_TYPE_DEFAULT, "Acquired banner dismissal prevention assertion: %{public}@", buf, 0xCu);
    }
  }

  return v12;
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
      _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "Invalidated banner dismissal prevention assertion: %{public}@", &v7, 0xCu);
    }
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = @"[INVALID]";
  dismissalSource = self->_dismissalSource;
  if (dismissalSource == 1)
  {
    v5 = @"transition";
  }

  if (!dismissalSource)
  {
    v5 = @"none";
  }

  return [v3 stringWithFormat:@"<%@: %p; dismissalSource: %@; reason: %@>", v4, self, v5, self->_reason];
}

- (void)initWithDismissalSource:(uint64_t)a1 reason:(uint64_t)a2 invalidationHandler:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIPresentableDismissalPreventionAssertion.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"[[self class] _isValidBannerDismissalSource:dismissalSource]"}];
}

- (void)initWithDismissalSource:(uint64_t)a1 reason:(uint64_t)a2 invalidationHandler:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIPresentableDismissalPreventionAssertion.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

- (void)initWithDismissalSource:(uint64_t)a1 reason:(uint64_t)a2 invalidationHandler:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIPresentableDismissalPreventionAssertion.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"invalidationHandler"}];
}

@end