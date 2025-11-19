@interface TSUDelayTimer
- (TSUDelayTimer)initWithTargetSerialQueue:(id)a3;
- (void)_reallyCancel;
- (void)afterDelay:(double)a3 processBlock:(id)a4;
- (void)cancel;
- (void)dealloc;
@end

@implementation TSUDelayTimer

- (TSUDelayTimer)initWithTargetSerialQueue:(id)a3
{
  v12.receiver = self;
  v12.super_class = TSUDelayTimer;
  v4 = [(TSUDelayTimer *)&v12 init];
  v5 = v4;
  if (v4)
  {
    if (a3)
    {
      [(TSUDelayTimer *)v4 _setDispatchQueue:a3];
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

- (void)afterDelay:(double)a3 processBlock:(id)a4
{
  atomic_store(0, &self->_cancelled);
  v7 = [(TSUDelayTimer *)self _dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770B3D78;
  block[3] = &unk_27A702778;
  *&block[6] = a3;
  block[4] = self;
  block[5] = a4;
  dispatch_async(v7, block);
}

- (void)_reallyCancel
{
  v3 = [(TSUDelayTimer *)self _dispatchTimer];
  if (v3)
  {
    dispatch_source_cancel(v3);

    [(TSUDelayTimer *)self _setDispatchTimer:0];
  }
}

- (void)cancel
{
  atomic_store(1u, &self->_cancelled);
  v3 = [(TSUDelayTimer *)self _dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770B3FE8;
  block[3] = &unk_27A701878;
  block[4] = self;
  dispatch_async(v3, block);
}

@end