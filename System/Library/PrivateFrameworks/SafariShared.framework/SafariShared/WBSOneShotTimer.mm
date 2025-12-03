@interface WBSOneShotTimer
- (WBSOneShotTimer)initWithFireDate:(id)date queue:(id)queue block:(id)block;
- (WBSOneShotTimer)initWithFireDate:(id)date queue:(id)queue target:(id)target selector:(SEL)selector;
@end

@implementation WBSOneShotTimer

- (WBSOneShotTimer)initWithFireDate:(id)date queue:(id)queue block:(id)block
{
  dateCopy = date;
  queueCopy = queue;
  blockCopy = block;
  v20.receiver = self;
  v20.super_class = WBSOneShotTimer;
  v12 = [(WBSOneShotTimer *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_fireDate, date);
    v14 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, blockCopy);
    block = v13->_block;
    v13->_block = v14;

    [dateCopy timeIntervalSinceNow];
    if (v16 < 0.0)
    {
      v16 = 0.0;
    }

    v17 = dispatch_time(0, (v16 * 1000000000.0));
    dispatch_after(v17, queueCopy, v13->_block);
    v18 = v13;
  }

  return v13;
}

- (WBSOneShotTimer)initWithFireDate:(id)date queue:(id)queue target:(id)target selector:(SEL)selector
{
  dateCopy = date;
  queueCopy = queue;
  targetCopy = target;
  objc_initWeak(&location, self);
  objc_initWeak(&from, targetCopy);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__WBSOneShotTimer_initWithFireDate_queue_target_selector___block_invoke;
  v15[3] = &unk_1E7FC89B8;
  objc_copyWeak(&v16, &from);
  v17[1] = selector;
  objc_copyWeak(v17, &location);
  v13 = [(WBSOneShotTimer *)self initWithFireDate:dateCopy queue:queueCopy block:v15];
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