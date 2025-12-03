@interface TSUDelayTimer
- (TSUDelayTimer)initWithTargetSerialQueue:(id)queue;
- (void)_reallyCancel;
- (void)afterDelay:(double)delay processBlock:(id)block;
- (void)cancel;
- (void)dealloc;
@end

@implementation TSUDelayTimer

- (TSUDelayTimer)initWithTargetSerialQueue:(id)queue
{
  v12.receiver = self;
  v12.super_class = TSUDelayTimer;
  v4 = [(TSUDelayTimer *)&v12 init];
  v5 = v4;
  if (v4)
  {
    if (queue)
    {
      [(TSUDelayTimer *)v4 _setDispatchQueue:queue];
    }

    else
    {
      v6 = objc_alloc(MEMORY[0x277CCACA8]);
      v7 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
      v8 = objc_opt_class();
      v9 = [v6 initWithFormat:@"%@.%@.TimerQueue", v7, NSStringFromClass(v8)];
      v10 = dispatch_queue_create([v9 UTF8String], 0);

      [(TSUDelayTimer *)v5 _setDispatchQueue:v10];
      if (v10)
      {
        dispatch_release(v10);
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  [(TSUDelayTimer *)self _reallyCancel];
  [(TSUDelayTimer *)self _setDispatchQueue:0];
  v3.receiver = self;
  v3.super_class = TSUDelayTimer;
  [(TSUDelayTimer *)&v3 dealloc];
}

- (void)afterDelay:(double)delay processBlock:(id)block
{
  atomic_store(0, &self->_cancelled);
  _dispatchQueue = [(TSUDelayTimer *)self _dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770B3D78;
  block[3] = &unk_27A702778;
  *&block[6] = delay;
  block[4] = self;
  block[5] = block;
  dispatch_async(_dispatchQueue, block);
}

- (void)_reallyCancel
{
  _dispatchTimer = [(TSUDelayTimer *)self _dispatchTimer];
  if (_dispatchTimer)
  {
    dispatch_source_cancel(_dispatchTimer);

    [(TSUDelayTimer *)self _setDispatchTimer:0];
  }
}

- (void)cancel
{
  atomic_store(1u, &self->_cancelled);
  _dispatchQueue = [(TSUDelayTimer *)self _dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770B3FE8;
  block[3] = &unk_27A701878;
  block[4] = self;
  dispatch_async(_dispatchQueue, block);
}

@end