@interface SBFAlwaysOnLiveRenderingAssertion
- (NSString)description;
- (SBFAlwaysOnLiveRenderingAssertion)initWithReason:(id)reason timeout:(double)timeout invalidationHandler:(id)handler;
- (void)_startAutoInvalidationTimer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBFAlwaysOnLiveRenderingAssertion

- (void)_startAutoInvalidationTimer
{
  objc_initWeak(&location, self);
  v3 = dispatch_time(0, (self->_timeout * 1000000000.0));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__SBFAlwaysOnLiveRenderingAssertion__startAutoInvalidationTimer__block_invoke;
  v4[3] = &unk_1E80807B8;
  objc_copyWeak(&v5, &location);
  dispatch_after(v3, MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)invalidate
{
  if (self->_valid)
  {
    self->_valid = 0;
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, self);
      v4 = self->_invalidationHandler;
      self->_invalidationHandler = 0;
    }
  }
}

- (void)dealloc
{
  [(SBFAlwaysOnLiveRenderingAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SBFAlwaysOnLiveRenderingAssertion;
  [(SBFAlwaysOnLiveRenderingAssertion *)&v3 dealloc];
}

- (SBFAlwaysOnLiveRenderingAssertion)initWithReason:(id)reason timeout:(double)timeout invalidationHandler:(id)handler
{
  reasonCopy = reason;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = SBFAlwaysOnLiveRenderingAssertion;
  v10 = [(SBFAlwaysOnLiveRenderingAssertion *)&v18 init];
  if (v10)
  {
    v11 = [reasonCopy copy];
    reason = v10->_reason;
    v10->_reason = v11;

    v13 = [handlerCopy copy];
    invalidationHandler = v10->_invalidationHandler;
    v10->_invalidationHandler = v13;

    v15 = [MEMORY[0x1E695DF00] now];
    createdAt = v10->_createdAt;
    v10->_createdAt = v15;

    v10->_timeout = timeout;
    v10->_valid = 1;
    if (timeout > 0.0)
    {
      [(SBFAlwaysOnLiveRenderingAssertion *)v10 _startAutoInvalidationTimer];
    }
  }

  return v10;
}

void __64__SBFAlwaysOnLiveRenderingAssertion__startAutoInvalidationTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained invalidate];
    WeakRetained = v2;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  reason = [(SBFAlwaysOnLiveRenderingAssertion *)self reason];
  createdAt = [(SBFAlwaysOnLiveRenderingAssertion *)self createdAt];
  [createdAt timeIntervalSince1970];
  v8 = [v3 stringWithFormat:@"<%@: %p reason: %@; createdAt: %f>", v4, self, reason, v7];;

  return v8;
}

@end