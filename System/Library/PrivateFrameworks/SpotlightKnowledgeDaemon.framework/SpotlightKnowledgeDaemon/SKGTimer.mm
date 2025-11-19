@interface SKGTimer
- (BOOL)isValid;
- (SKGTimer)initWithTimeIntervalSinceNow:(double)a3 tolerance:(double)a4 queue:(id)a5 block:(id)a6;
- (void)dealloc;
- (void)reset;
- (void)suspend;
@end

@implementation SKGTimer

- (SKGTimer)initWithTimeIntervalSinceNow:(double)a3 tolerance:(double)a4 queue:(id)a5 block:(id)a6
{
  v11 = a5;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = SKGTimer;
  v13 = [(SKGTimer *)&v22 init];
  v14 = v13;
  if (v13)
  {
    v13->_interval = (a3 * 1000000000.0);
    v13->_leeway = (a4 * 1000000000.0);
    objc_storeStrong(&v13->_queue, a5);
    v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v14->_queue);
    timer = v14->_timer;
    v14->_timer = v15;

    v17 = v14->_timer;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__SKGTimer_initWithTimeIntervalSinceNow_tolerance_queue_block___block_invoke;
    v19[3] = &unk_27893F768;
    v21 = v12;
    v20 = v14;
    dispatch_source_set_event_handler(v17, v19);
  }

  return v14;
}

uint64_t __63__SKGTimer_initWithTimeIntervalSinceNow_tolerance_queue_block___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)reset
{
  v3 = [(SKGTimer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __17__SKGTimer_reset__block_invoke;
  block[3] = &unk_27893CE68;
  block[4] = self;
  dispatch_async(v3, block);
}

void __17__SKGTimer_reset__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2)
  {
    v4 = dispatch_time(0, *(v1 + 16));
    dispatch_source_set_timer(v2, v4, 0xFFFFFFFFFFFFFFFFLL, *(*(a1 + 32) + 24));
    v5 = *(*(a1 + 32) + 8);

    dispatch_activate(v5);
  }
}

- (void)suspend
{
  v3 = [(SKGTimer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__SKGTimer_suspend__block_invoke;
  block[3] = &unk_27893CE68;
  block[4] = self;
  dispatch_async(v3, block);
}

void __19__SKGTimer_suspend__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    dispatch_suspend(v1);
  }
}

- (BOOL)isValid
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(SKGTimer *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __19__SKGTimer_isValid__block_invoke;
  v5[3] = &unk_27893F660;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_async(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

NSObject *__19__SKGTimer_isValid__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  if (result)
  {
    result = dispatch_source_testcancel(result);
    *(*(*(a1 + 40) + 8) + 24) = result == 0;
  }

  return result;
}

- (void)dealloc
{
  v3 = [(SKGTimer *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__SKGTimer_dealloc__block_invoke;
  block[3] = &unk_27893CE68;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = SKGTimer;
  [(SKGTimer *)&v4 dealloc];
}

void __19__SKGTimer_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  if (v1)
  {
    dispatch_source_cancel(v1);
  }
}

@end