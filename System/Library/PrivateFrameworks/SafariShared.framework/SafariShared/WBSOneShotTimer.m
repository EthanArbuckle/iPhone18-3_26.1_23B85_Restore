@interface WBSOneShotTimer
- (WBSOneShotTimer)initWithFireDate:(id)a3 queue:(id)a4 block:(id)a5;
- (WBSOneShotTimer)initWithFireDate:(id)a3 queue:(id)a4 target:(id)a5 selector:(SEL)a6;
@end

@implementation WBSOneShotTimer

- (WBSOneShotTimer)initWithFireDate:(id)a3 queue:(id)a4 block:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = WBSOneShotTimer;
  v12 = [(WBSOneShotTimer *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, a4);
    objc_storeStrong(&v13->_fireDate, a3);
    v14 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, v11);
    block = v13->_block;
    v13->_block = v14;

    [v9 timeIntervalSinceNow];
    if (v16 < 0.0)
    {
      v16 = 0.0;
    }

    v17 = dispatch_time(0, (v16 * 1000000000.0));
    dispatch_after(v17, v10, v13->_block);
    v18 = v13;
  }

  return v13;
}

- (WBSOneShotTimer)initWithFireDate:(id)a3 queue:(id)a4 target:(id)a5 selector:(SEL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_initWeak(&location, self);
  objc_initWeak(&from, v12);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__WBSOneShotTimer_initWithFireDate_queue_target_selector___block_invoke;
  v15[3] = &unk_1E7FC89B8;
  objc_copyWeak(&v16, &from);
  v17[1] = a6;
  objc_copyWeak(v17, &location);
  v13 = [(WBSOneShotTimer *)self initWithFireDate:v10 queue:v11 block:v15];
  objc_destroyWeak(v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v13;
}

void __58__WBSOneShotTimer_initWithFireDate_queue_target_selector___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = *(a1 + 48);
    v5 = WeakRetained;
    v4 = objc_loadWeakRetained((a1 + 40));
    [v5 v3];

    WeakRetained = v5;
  }
}

@end