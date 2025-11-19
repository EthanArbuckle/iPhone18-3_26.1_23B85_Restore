@interface ATLTimer
- (id)initOnQueue:(void *)a3 withTimerBlock:;
- (void)dealloc;
- (void)onExpire;
- (void)startTimerWithDelay:(uint64_t)a1;
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

- (id)initOnQueue:(void *)a3 withTimerBlock:
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = ATLTimer;
    a1 = objc_msgSendSuper2(&v17, sel_init);
    if (a1)
    {
      v8 = dispatch_source_create(MEMORY[0x277D85D38], 1uLL, 0, v6);
      v9 = *(a1 + 1);
      *(a1 + 1) = v8;

      objc_initWeak(&location, a1);
      v10 = *(a1 + 1);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __39__ATLTimer_initOnQueue_withTimerBlock___block_invoke;
      v14[3] = &unk_278875090;
      objc_copyWeak(&v15, &location);
      dispatch_source_set_event_handler(v10, v14);
      dispatch_activate(*(a1 + 1));
      v11 = _Block_copy(v7);
      v12 = *(a1 + 2);
      *(a1 + 2) = v11;

      objc_storeStrong(a1 + 4, a2);
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

- (void)onExpire
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2 <= 0.0)
    {
      v7 = *(a1 + 16);
      v8 = *(*(a1 + 16) + 16);

      v8();
    }

    else
    {
      OUTLINED_FUNCTION_0_0(v2, 1000000.0);
      v3 = OUTLINED_FUNCTION_1();
      dispatch_source_set_timer(v3, v4, v5, v6);
      *(a1 + 24) = 0;
    }
  }
}

- (void)startTimerWithDelay:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_0(a2, 1000000.0);
    v2 = OUTLINED_FUNCTION_1();

    dispatch_source_set_timer(v2, v3, v4, v5);
  }
}

- (void)stopTimer
{
  if (a1)
  {
    dispatch_source_cancel(a1[1]);
    objc_initWeak(&location, a1);
    v2 = dispatch_source_create(MEMORY[0x277D85D38], 1uLL, 0, a1[4]);
    v3 = a1[1];
    a1[1] = v2;

    v4 = a1[1];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __21__ATLTimer_stopTimer__block_invoke;
    v5[3] = &unk_278875090;
    objc_copyWeak(&v6, &location);
    dispatch_source_set_event_handler(v4, v5);
    dispatch_activate(a1[1]);
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