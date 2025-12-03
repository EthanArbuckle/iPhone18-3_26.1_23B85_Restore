@interface _UIKBRTTimerBlock
- (_UIKBRTTimerBlock)initWithTimeInterval:(double)interval onQueue:(id)queue do:(id)do owner:(id)owner;
- (void)dealloc;
- (void)fireNow;
- (void)invalidate;
- (void)timerFired:(id)fired;
@end

@implementation _UIKBRTTimerBlock

- (_UIKBRTTimerBlock)initWithTimeInterval:(double)interval onQueue:(id)queue do:(id)do owner:(id)owner
{
  queueCopy = queue;
  doCopy = do;
  ownerCopy = owner;
  v23.receiver = self;
  v23.super_class = _UIKBRTTimerBlock;
  v14 = [(_UIKBRTTimerBlock *)&v23 init];
  if (v14)
  {
    v15 = dispatch_queue_create("UIKBRTTouchInfoQueue", 0);
    selfQueue = v14->_selfQueue;
    v14->_selfQueue = v15;

    objc_storeStrong(&v14->_queue, queue);
    v17 = _Block_copy(doCopy);
    onTimer = v14->_onTimer;
    v14->_onTimer = v17;

    objc_storeStrong(&v14->_owner, owner);
    v19 = [MEMORY[0x1E695DFF0] timerWithTimeInterval:v14 target:sel_timerFired_ selector:0 userInfo:0 repeats:interval];
    timer = v14->_timer;
    v14->_timer = v19;

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [mainRunLoop addTimer:v14->_timer forMode:*MEMORY[0x1E695D918]];
  }

  return v14;
}

- (void)dealloc
{
  [(_UIKBRTTimerBlock *)self invalidate];
  v3.receiver = self;
  v3.super_class = _UIKBRTTimerBlock;
  [(_UIKBRTTimerBlock *)&v3 dealloc];
}

- (void)fireNow
{
  selfQueue = self->_selfQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28___UIKBRTTimerBlock_fireNow__block_invoke;
  v3[3] = &unk_1E70F32F0;
  v3[4] = self;
  v3[5] = a2;
  dispatch_sync(selfQueue, v3);
}

- (void)invalidate
{
  selfQueue = self->_selfQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31___UIKBRTTimerBlock_invalidate__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_sync(selfQueue, block);
}

- (void)timerFired:(id)fired
{
  firedCopy = fired;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__141;
  v27 = __Block_byref_object_dispose__141;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__108;
  v21 = __Block_byref_object_dispose__109;
  v22 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__141;
  v15[4] = __Block_byref_object_dispose__141;
  v16 = 0;
  selfQueue = self->_selfQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32___UIKBRTTimerBlock_timerFired___block_invoke;
  block[3] = &unk_1E7118888;
  v6 = firedCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v23;
  v13 = &v17;
  v14 = v15;
  dispatch_sync(selfQueue, block);
  if (v18[5])
  {
    v7 = v24[5];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32___UIKBRTTimerBlock_timerFired___block_invoke_2;
    v8[3] = &unk_1E71188B0;
    v8[4] = &v17;
    v8[5] = v15;
    dispatch_async(v7, v8);
  }

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
}

@end