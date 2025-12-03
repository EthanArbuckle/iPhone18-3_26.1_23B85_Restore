@interface _UIDelayedPresentationContext
- (UIWindowScene)windowSceneIgnoringEvents;
- (_UIDelayedPresentationContext)initWithTimeout:(double)timeout cancellationHandler:(id)handler;
- (id)delayingController;
- (int64_t)decrementRequestCount;
- (int64_t)incrementRequestCount;
- (void)beginDelayedPresentation;
- (void)dealloc;
@end

@implementation _UIDelayedPresentationContext

- (UIWindowScene)windowSceneIgnoringEvents
{
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneIgnoringEvents);

  return WeakRetained;
}

- (id)delayingController
{
  if (self->_presentInvocation)
  {
    invocationTarget = [(_UIDelayedPresentationContext *)self invocationTarget];
    v3 = objc_getAssociatedObject(invocationTarget, &unk_1ED498592);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_windowSceneIgnoringEvents);

  if (WeakRetained)
  {
    delayingController = [(_UIDelayedPresentationContext *)self delayingController];
    v5 = objc_opt_class();
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid state: deallocating delayed presentation of <%s: %p> while still ignoring events", class_getName(v5), delayingController];
    v7 = *(__UILogGetCategoryCachedImpl("Presentation", &dealloc___s_category_4) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    v8 = objc_loadWeakRetained(&self->_windowSceneIgnoringEvents);
    [v8 _endIgnoringInteractionEventsForReason:v6];

    objc_storeWeak(&self->_windowSceneIgnoringEvents, 0);
  }

  v9.receiver = self;
  v9.super_class = _UIDelayedPresentationContext;
  [(_UIDelayedPresentationContext *)&v9 dealloc];
}

- (int64_t)decrementRequestCount
{
  v2 = self->_reqcnt - 1;
  self->_reqcnt = v2;
  return v2;
}

- (_UIDelayedPresentationContext)initWithTimeout:(double)timeout cancellationHandler:(id)handler
{
  v8.receiver = self;
  v8.super_class = _UIDelayedPresentationContext;
  handlerCopy = handler;
  v6 = [(_UIDelayedPresentationContext *)&v8 init];
  v6->_enableUserInteraction = 0;
  v6->_timeout = timeout;
  [(_UIDelayedPresentationContext *)v6 setCancellationHandler:handlerCopy, v8.receiver, v8.super_class];

  v6->_reqcnt = 1;
  return v6;
}

- (int64_t)incrementRequestCount
{
  v2 = self->_reqcnt + 1;
  self->_reqcnt = v2;
  return v2;
}

- (void)beginDelayedPresentation
{
  if (self)
  {
    if ((*(self + 8) & 1) == 0)
    {
      delayingController = [self delayingController];
      v3 = objc_opt_class();
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Beginning delayed presentation of <%s: %p>", class_getName(v3), delayingController];
      windowSceneIgnoringEvents = [self windowSceneIgnoringEvents];
      [windowSceneIgnoringEvents _beginIgnoringInteractionEventsForReason:v4];
    }

    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    v7 = *(self + 48);
    *(self + 48) = v6;

    objc_initWeak(&location, self);
    v8 = *(self + 48);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __57___UIDelayedPresentationContext_beginDelayedPresentation__block_invoke;
    handler[3] = &unk_1E70F5A28;
    objc_copyWeak(&v12, &location);
    dispatch_source_set_event_handler(v8, handler);
    v9 = *(self + 48);
    v10 = dispatch_time(0, (*(self + 40) * 1000000000.0));
    dispatch_source_set_timer(v9, v10, (*(self + 40) * 10.0 * 1000000000.0), 0);
    dispatch_resume(*(self + 48));
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

@end