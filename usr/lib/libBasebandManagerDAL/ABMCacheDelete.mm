@interface ABMCacheDelete
+ (void)RegisterCallbackWithID:(__CFString *)d withPurgableBlock:(id)block withPurgeBlock:(id)purgeBlock withPurgeCancelBlock:(id)cancelBlock withPeriodicPurgeBlock:(id)periodicPurgeBlock;
@end

@implementation ABMCacheDelete

+ (void)RegisterCallbackWithID:(__CFString *)d withPurgableBlock:(id)block withPurgeBlock:(id)purgeBlock withPurgeCancelBlock:(id)cancelBlock withPeriodicPurgeBlock:(id)periodicPurgeBlock
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __118__ABMCacheDelete_RegisterCallbackWithID_withPurgableBlock_withPurgeBlock_withPurgeCancelBlock_withPeriodicPurgeBlock___block_invoke;
  block[3] = &unk_29EE68128;
  block[7] = periodicPurgeBlock;
  block[8] = d;
  block[4] = block;
  block[5] = purgeBlock;
  block[6] = cancelBlock;
  if (RegisterCallbackWithID_withPurgableBlock_withPurgeBlock_withPurgeCancelBlock_withPeriodicPurgeBlock__once != -1)
  {
    dispatch_once(&RegisterCallbackWithID_withPurgableBlock_withPurgeBlock_withPurgeCancelBlock_withPeriodicPurgeBlock__once, block);
  }
}

@end