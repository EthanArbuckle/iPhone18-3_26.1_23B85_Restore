@interface WFRemoteExecutionSession
- (WFRemoteExecutionSession)initWithService:(id)service;
- (WFRemoteExecutionSessionDelegate)delegate;
- (id)invalidAceCommandError;
- (id)sessionTimedOutError;
- (void)cancelTimeout;
- (void)finish;
- (void)restartTimeout;
- (void)sendToDestinations:(id)destinations options:(id)options;
- (void)setState:(unint64_t)state;
@end

@implementation WFRemoteExecutionSession

- (WFRemoteExecutionSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)invalidAceCommandError
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v3 = WFLocalizedString(@"Unable to run action");
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:@"WFRemoteExecutionCoordinatorErrorDomain" code:2 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)sessionTimedOutError
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A578];
  v3 = WFLocalizedString(@"Remote execution timed out");
  v9[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v2 errorWithDomain:@"WFRemoteExecutionCoordinatorErrorDomain" code:0 userInfo:v4];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)cancelTimeout
{
  timeoutTimer = [(WFRemoteExecutionSession *)self timeoutTimer];

  if (timeoutTimer)
  {
    timeoutTimer2 = [(WFRemoteExecutionSession *)self timeoutTimer];
    dispatch_source_cancel(timeoutTimer2);

    [(WFRemoteExecutionSession *)self setTimeoutTimer:0];
  }
}

- (void)restartTimeout
{
  v20 = *MEMORY[0x1E69E9840];
  [(WFRemoteExecutionSession *)self cancelTimeout];
  v3 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    [(WFRemoteExecutionSession *)self timeoutLimitInSeconds];
    *buf = 136315650;
    v15 = "[WFRemoteExecutionSession restartTimeout]";
    v16 = 2048;
    v17 = v4;
    v18 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_1CA256000, v3, OS_LOG_TYPE_INFO, "%s Starting %f second timer for session %{public}@", buf, 0x20u);
  }

  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, 0);
  [(WFRemoteExecutionSession *)self setTimeoutTimer:v5];

  [(WFRemoteExecutionSession *)self timeoutLimitInSeconds];
  v7 = (v6 * 1000000000.0);
  timeoutTimer = [(WFRemoteExecutionSession *)self timeoutTimer];
  v9 = dispatch_time(0, v7);
  dispatch_source_set_timer(timeoutTimer, v9, v7, 0x3B9ACA00uLL);

  timeoutTimer2 = [(WFRemoteExecutionSession *)self timeoutTimer];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __42__WFRemoteExecutionSession_restartTimeout__block_invoke;
  handler[3] = &unk_1E837FA70;
  handler[4] = self;
  dispatch_source_set_event_handler(timeoutTimer2, handler);

  timeoutTimer3 = [(WFRemoteExecutionSession *)self timeoutTimer];
  dispatch_activate(timeoutTimer3);

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t __42__WFRemoteExecutionSession_restartTimeout__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) cancelTimeout];
  v2 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    [v3 timeoutLimitInSeconds];
    v7 = 136315650;
    v8 = "[WFRemoteExecutionSession restartTimeout]_block_invoke";
    v9 = 2114;
    v10 = v3;
    v11 = 2048;
    v12 = v4;
    _os_log_impl(&dword_1CA256000, v2, OS_LOG_TYPE_INFO, "%s %{public}@ hit timeout (%f)", &v7, 0x20u);
  }

  result = [*(a1 + 32) handleTimeout];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setState:(unint64_t)state
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = getWFRemoteExecutionLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    state = self->_state;
    v8 = 136315650;
    v9 = "[WFRemoteExecutionSession setState:]";
    v10 = 2048;
    stateCopy = state;
    v12 = 2048;
    stateCopy2 = state;
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_INFO, "%s Transitioning from state %lu to %lu", &v8, 0x20u);
  }

  self->_state = state;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)finish
{
  [(WFRemoteExecutionSession *)self cancelTimeout];
  delegate = [(WFRemoteExecutionSession *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(WFRemoteExecutionSession *)self delegate];
    [delegate2 sessionDidFinish:self];
  }
}

- (void)sendToDestinations:(id)destinations options:(id)options
{
  if (!destinations)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionSession.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"destinations"}];
  }
}

- (WFRemoteExecutionSession)initWithService:(id)service
{
  serviceCopy = service;
  if (!serviceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRemoteExecutionSession.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"service"}];
  }

  v12.receiver = self;
  v12.super_class = WFRemoteExecutionSession;
  v7 = [(WFRemoteExecutionSession *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_state = 0;
    objc_storeStrong(&v7->_service, service);
    v9 = v8;
  }

  return v8;
}

@end