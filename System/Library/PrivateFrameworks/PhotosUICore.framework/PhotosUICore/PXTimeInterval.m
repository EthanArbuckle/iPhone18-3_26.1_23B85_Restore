@interface PXTimeInterval
- (PXTimeInterval)init;
- (double)beginTime;
- (double)duration;
- (double)endTime;
- (id)addStateTransitionHandler:(id)a3;
- (void)_notifyStateTransitionHandlersOfTransitionFromState:(int64_t)a3;
- (void)beginInterval;
- (void)beginIntervalWithTimeOverride:(double)a3;
- (void)endInterval;
- (void)endIntervalWithTimeOverride:(double)a3;
- (void)removeStateTransitionHandler:(id)a3;
- (void)reset;
- (void)setState:(int64_t)a3;
@end

@implementation PXTimeInterval

- (void)_notifyStateTransitionHandlersOfTransitionFromState:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(PXTimeInterval *)self tokenToTransitionHandler];
  v4 = [v3 allValues];
  v5 = [v4 copy];

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

- (void)endIntervalWithTimeOverride:(double)a3
{
  if ([(PXTimeInterval *)self state]== 1)
  {
    [(PXTimeInterval *)self setEndTime:a3];

    [(PXTimeInterval *)self setState:2];
  }
}

- (void)endInterval
{
  Current = CFAbsoluteTimeGetCurrent();

  [(PXTimeInterval *)self endIntervalWithTimeOverride:Current];
}

- (void)beginIntervalWithTimeOverride:(double)a3
{
  if (([(PXTimeInterval *)self state]| 2) == 2)
  {
    [(PXTimeInterval *)self setBeginTime:a3];

    [(PXTimeInterval *)self setState:1];
  }
}

- (void)beginInterval
{
  Current = CFAbsoluteTimeGetCurrent();

  [(PXTimeInterval *)self beginIntervalWithTimeOverride:Current];
}

- (void)removeStateTransitionHandler:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXTimeInterval.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"token != nil"}];
  }

  v5 = [(PXTimeInterval *)self tokenToTransitionHandler];
  [v5 removeObjectForKey:v7];
}

- (id)addStateTransitionHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXTimeInterval.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"handler != nil"}];
  }

  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v5 copy];
  v8 = _Block_copy(v7);
  v9 = [(PXTimeInterval *)self tokenToTransitionHandler];
  [v9 setObject:v8 forKeyedSubscript:v6];

  return v6;
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
  v3 = [(PXTimeInterval *)self state];
  if (v3 == 2)
  {
    return self->_endTime;
  }

  result = 0.0;
  if (v3 == 1)
  {

    return CFAbsoluteTimeGetCurrent();
  }

  return result;
}

- (double)beginTime
{
  v3 = [(PXTimeInterval *)self state];
  result = 0.0;
  if ((v3 - 1) <= 1)
  {
    return self->_beginTime;
  }

  return result;
}

- (void)setState:(int64_t)a3
{
  if (self->_state != a3)
  {
    self->_state = a3;
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