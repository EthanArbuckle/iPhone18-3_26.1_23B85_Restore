@interface RMTimedDispatch
+ (id)timedDispatchAfterInterval:(double)interval completionBlock:(id)block;
- (id)initAfterInterval:(double)interval completionBlock:(id)block;
- (void)cancel;
@end

@implementation RMTimedDispatch

+ (id)timedDispatchAfterInterval:(double)interval completionBlock:(id)block
{
  blockCopy = block;
  v6 = [[RMTimedDispatch alloc] initAfterInterval:blockCopy completionBlock:interval];

  return v6;
}

- (id)initAfterInterval:(double)interval completionBlock:(id)block
{
  blockCopy = block;
  v25.receiver = self;
  v25.super_class = RMTimedDispatch;
  v7 = [(RMTimedDispatch *)&v25 init];
  if (v7)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    timerID = v7->_timerID;
    v7->_timerID = uUIDString;

    v7->_complete = 0;
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __53__RMTimedDispatch_initAfterInterval_completionBlock___block_invoke;
    v22 = &unk_1E87062E8;
    v11 = v7;
    v23 = v11;
    v24 = blockCopy;
    v12 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, &v19);
    timerCompletionBlock = v11->_timerCompletionBlock;
    v11->_timerCompletionBlock = v12;

    v14 = [RMLog timeddispatch:v19];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [RMTimedDispatch initAfterInterval:v11 completionBlock:?];
    }

    v15 = dispatch_time(0, (interval * 1000000000.0));
    if (timedDispatchQueue_onceToken != -1)
    {
      [RMTimedDispatch initAfterInterval:completionBlock:];
    }

    v16 = timedDispatchQueue_queue;
    timerCompletionBlock = [(RMTimedDispatch *)v11 timerCompletionBlock];
    dispatch_after(v15, v16, timerCompletionBlock);
  }

  return v7;
}

void __53__RMTimedDispatch_initAfterInterval_completionBlock___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) timerID];

  v4 = +[RMLog timeddispatch];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      __53__RMTimedDispatch_initAfterInterval_completionBlock___block_invoke_cold_1(v2);
    }

    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setComplete:1];
    [*(a1 + 32) setTimerCompletionBlock:0];
  }

  else
  {
    if (v5)
    {
      __53__RMTimedDispatch_initAfterInterval_completionBlock___block_invoke_cold_2(v4);
    }
  }
}

- (void)cancel
{
  v8 = *MEMORY[0x1E69E9840];
  timerID = [self timerID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)initAfterInterval:(void *)a1 completionBlock:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 timerID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __53__RMTimedDispatch_initAfterInterval_completionBlock___block_invoke_cold_1(id *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*a1 timerID];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_6();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end