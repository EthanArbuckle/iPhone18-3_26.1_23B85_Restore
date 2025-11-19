@interface _HKSPImmediateScheduler
- (_HKSPImmediateScheduler)init;
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)performCancelableBlock:(id)a3;
- (void)_performOnMainThreadIfNecessary:(id)a3;
- (void)performBlock:(id)a3;
@end

@implementation _HKSPImmediateScheduler

- (_HKSPImmediateScheduler)init
{
  v7.receiver = self;
  v7.super_class = _HKSPImmediateScheduler;
  v2 = [(_HKSPImmediateScheduler *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D2C938] immediateScheduler];
    backingScheduler = v2->_backingScheduler;
    v2->_backingScheduler = v3;

    v5 = v2;
  }

  return v2;
}

- (void)_performOnMainThreadIfNecessary:(id)a3
{
  v3 = MEMORY[0x277CCACC8];
  block = a3;
  if ([v3 isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v6 = a4;
  backingScheduler = self->_backingScheduler;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51___HKSPImmediateScheduler_afterDelay_performBlock___block_invoke;
  v11[3] = &unk_279C75688;
  v11[4] = self;
  v12 = v6;
  v8 = v6;
  v9 = [(NAScheduler *)backingScheduler afterDelay:v11 performBlock:a3];

  return v9;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  backingScheduler = self->_backingScheduler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40___HKSPImmediateScheduler_performBlock___block_invoke;
  v7[3] = &unk_279C75688;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(NAScheduler *)backingScheduler performBlock:v7];
}

- (id)performCancelableBlock:(id)a3
{
  v4 = a3;
  backingScheduler = self->_backingScheduler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50___HKSPImmediateScheduler_performCancelableBlock___block_invoke;
  v9[3] = &unk_279C75F28;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [(NAScheduler *)backingScheduler performCancelableBlock:v9];

  return v7;
}

@end