@interface STUIStatusBarDataAggregatorUpdateDelayToken
- (STUIStatusBarDataAggregatorUpdateDelayToken)initWithEntryKeys:(id)keys timeout:(double)timeout timeoutBlock:(id)block;
- (void)dealloc;
- (void)invalidate;
@end

@implementation STUIStatusBarDataAggregatorUpdateDelayToken

- (void)invalidate
{
  self->_invalidated = 1;
  [(NSTimer *)self->_timeoutTimer invalidate];
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = 0;

  timeoutBlock = self->_timeoutBlock;
  self->_timeoutBlock = 0;
}

- (void)dealloc
{
  timeoutBlock = self->_timeoutBlock;
  if (timeoutBlock)
  {
    timeoutBlock[2](timeoutBlock, self);
    [(NSTimer *)self->_timeoutTimer invalidate];
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = 0;

    v5 = self->_timeoutBlock;
    self->_timeoutBlock = 0;
  }

  v6.receiver = self;
  v6.super_class = STUIStatusBarDataAggregatorUpdateDelayToken;
  [(STUIStatusBarDataAggregatorUpdateDelayToken *)&v6 dealloc];
}

- (STUIStatusBarDataAggregatorUpdateDelayToken)initWithEntryKeys:(id)keys timeout:(double)timeout timeoutBlock:(id)block
{
  keysCopy = keys;
  blockCopy = block;
  v22.receiver = self;
  v22.super_class = STUIStatusBarDataAggregatorUpdateDelayToken;
  v10 = [(STUIStatusBarDataAggregatorUpdateDelayToken *)&v22 init];
  if (v10)
  {
    v11 = [keysCopy copy];
    delayedKeys = v10->_delayedKeys;
    v10->_delayedKeys = v11;

    v13 = [blockCopy copy];
    timeoutBlock = v10->_timeoutBlock;
    v10->_timeoutBlock = v13;

    objc_initWeak(&location, v10);
    v15 = MEMORY[0x277CBEBB8];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __86__STUIStatusBarDataAggregatorUpdateDelayToken_initWithEntryKeys_timeout_timeoutBlock___block_invoke;
    v19[3] = &unk_279D38178;
    objc_copyWeak(&v20, &location);
    v16 = [v15 scheduledTimerWithTimeInterval:0 repeats:v19 block:timeout];
    timeoutTimer = v10->_timeoutTimer;
    v10->_timeoutTimer = v16;

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __86__STUIStatusBarDataAggregatorUpdateDelayToken_initWithEntryKeys_timeout_timeoutBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = _Block_copy(WeakRetained[4]);
  v2 = v1;
  if (v1)
  {
    (*(v1 + 2))(v1, WeakRetained);
  }
}

@end