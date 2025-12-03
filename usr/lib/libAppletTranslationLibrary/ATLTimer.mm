@interface ATLTimer
- (id)initOnQueue:(void *)queue withTimerBlock:;
- (void)dealloc;
- (void)onExpire;
- (void)startTimerWithDelay:(uint64_t)delay;
- (void)stopTimer;
@end

@implementation ATLTimer

- (void)dealloc
{
  dispatch_source_cancel(self->_src);
  v3.receiver = self;
  v3.super_class = ATLTimer;
  [(ATLTimer *)&v3 dealloc];
}

void __39__ATLTimer_initOnQueue_withTimerBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(ATLTimer *)WeakRetained onExpire];
}

- (id)initOnQueue:(void *)queue withTimerBlock:
{
  v6 = a2;
  queueCopy = queue;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = ATLTimer;
    self = objc_msgSendSuper2(&v17, sel_init);
    if (self)
    {
      v8 = dispatch_source_create(MEMORY[0x277D85D38], 1uLL, 0, v6);
      v9 = *(self + 1);
      *(self + 1) = v8;

      objc_initWeak(&location, self);
      v10 = *(self + 1);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __39__ATLTimer_initOnQueue_withTimerBlock___block_invoke;
      v14[3] = &unk_278875090;
      objc_copyWeak(&v15, &location);
      dispatch_source_set_event_handler(v10, v14);
      dispatch_activate(*(self + 1));
      v11 = _Block_copy(queueCopy);
      v12 = *(self + 2);
      *(self + 2) = v11;

      objc_storeStrong(self + 4, a2);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  return self;
}

- (void)onExpire
{
  if (self)
  {
    v2 = *(self + 24);
    if (v2 <= 0.0)
    {
      v7 = *(self + 16);
      v8 = *(*(self + 16) + 16);

      v8();
    }

    else
    {
      OUTLINED_FUNCTION_0_0(v2, 1000000.0);
      v3 = OUTLINED_FUNCTION_1();
      dispatch_source_set_timer(v3, v4, v5, v6);
      *(self + 24) = 0;
    }
  }
}

- (void)startTimerWithDelay:(uint64_t)delay
{
  if (delay)
  {
    OUTLINED_FUNCTION_0_0(a2, 1000000.0);
    v2 = OUTLINED_FUNCTION_1();

    dispatch_source_set_timer(v2, v3, v4, v5);
  }
}

- (void)stopTimer
{
  if (self)
  {
    dispatch_source_cancel(self[1]);
    objc_initWeak(&location, self);
    v2 = dispatch_source_create(MEMORY[0x277D85D38], 1uLL, 0, self[4]);
    v3 = self[1];
    self[1] = v2;

    v4 = self[1];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __21__ATLTimer_stopTimer__block_invoke;
    v5[3] = &unk_278875090;
    objc_copyWeak(&v6, &location);
    dispatch_source_set_event_handler(v4, v5);
    dispatch_activate(self[1]);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __21__ATLTimer_stopTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(ATLTimer *)WeakRetained onExpire];
}

@end