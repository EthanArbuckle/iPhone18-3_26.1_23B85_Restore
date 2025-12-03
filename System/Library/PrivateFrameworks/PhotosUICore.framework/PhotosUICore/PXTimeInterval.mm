@interface PXTimeInterval
- (PXTimeInterval)init;
- (double)beginTime;
- (double)duration;
- (double)endTime;
- (id)addStateTransitionHandler:(id)handler;
- (void)_notifyStateTransitionHandlersOfTransitionFromState:(int64_t)state;
- (void)beginInterval;
- (void)beginIntervalWithTimeOverride:(double)override;
- (void)endInterval;
- (void)endIntervalWithTimeOverride:(double)override;
- (void)removeStateTransitionHandler:(id)handler;
- (void)reset;
- (void)setState:(int64_t)state;
@end

@implementation PXTimeInterval

- (void)_notifyStateTransitionHandlersOfTransitionFromState:(int64_t)state
{
  v16 = *MEMORY[0x1E69E9840];
  tokenToTransitionHandler = [(PXTimeInterval *)self tokenToTransitionHandler];
  allValues = [tokenToTransitionHandler allValues];
  v5 = [allValues copy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        (*(*(*(&v11 + 1) + 8 * v10) + 16))(*(*(&v11 + 1) + 8 * v10));
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)reset
{
  if (([(PXTimeInterval *)self state]- 1) <= 1)
  {

    [(PXTimeInterval *)self setState:0];
  }
}

- (void)endIntervalWithTimeOverride:(double)override
{
  if ([(PXTimeInterval *)self state]== 1)
  {
    [(PXTimeInterval *)self setEndTime:override];

    [(PXTimeInterval *)self setState:2];
  }
}

- (void)endInterval
{
  Current = CFAbsoluteTimeGetCurrent();

  [(PXTimeInterval *)self endIntervalWithTimeOverride:Current];
}

- (void)beginIntervalWithTimeOverride:(double)override
{
  if (([(PXTimeInterval *)self state]| 2) == 2)
  {
    [(PXTimeInterval *)self setBeginTime:override];

    [(PXTimeInterval *)self setState:1];
  }
}

- (void)beginInterval
{
  Current = CFAbsoluteTimeGetCurrent();

  [(PXTimeInterval *)self beginIntervalWithTimeOverride:Current];
}

- (void)removeStateTransitionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTimeInterval.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"token != nil"}];
  }

  tokenToTransitionHandler = [(PXTimeInterval *)self tokenToTransitionHandler];
  [tokenToTransitionHandler removeObjectForKey:handlerCopy];
}

- (id)addStateTransitionHandler:(id)handler
{
  handlerCopy = handler;
  if (!handlerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXTimeInterval.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"handler != nil"}];
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  v7 = [handlerCopy copy];
  v8 = _Block_copy(v7);
  tokenToTransitionHandler = [(PXTimeInterval *)self tokenToTransitionHandler];
  [tokenToTransitionHandler setObject:v8 forKeyedSubscript:uUID];

  return uUID;
}

- (double)duration
{
  [(PXTimeInterval *)self endTime];
  v4 = v3;
  [(PXTimeInterval *)self beginTime];
  return v4 - v5;
}

- (double)endTime
{
  state = [(PXTimeInterval *)self state];
  if (state == 2)
  {
    return self->_endTime;
  }

  result = 0.0;
  if (state == 1)
  {

    return CFAbsoluteTimeGetCurrent();
  }

  return result;
}

- (double)beginTime
{
  state = [(PXTimeInterval *)self state];
  result = 0.0;
  if ((state - 1) <= 1)
  {
    return self->_beginTime;
  }

  return result;
}

- (void)setState:(int64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
    [(PXTimeInterval *)self _notifyStateTransitionHandlersOfTransitionFromState:?];
  }
}

- (PXTimeInterval)init
{
  v7.receiver = self;
  v7.super_class = PXTimeInterval;
  v2 = [(PXTimeInterval *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    v2->_beginTime = 0.0;
    v2->_endTime = 0.0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tokenToTransitionHandler = v3->_tokenToTransitionHandler;
    v3->_tokenToTransitionHandler = v4;
  }

  return v3;
}

@end