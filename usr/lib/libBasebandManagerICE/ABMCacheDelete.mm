@interface ABMCacheDelete
+ (void)RegisterCallbackWithID:(__CFString *)a3 withPurgableBlock:(id)a4 withPurgeBlock:(id)a5 withPurgeCancelBlock:(id)a6 withPeriodicPurgeBlock:(id)a7;
@end

@implementation ABMCacheDelete

+ (void)RegisterCallbackWithID:(__CFString *)a3 withPurgableBlock:(id)a4 withPurgeBlock:(id)a5 withPurgeCancelBlock:(id)a6 withPeriodicPurgeBlock:(id)a7
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __118__ABMCacheDelete_RegisterCallbackWithID_withPurgableBlock_withPurgeBlock_withPurgeCancelBlock_withPeriodicPurgeBlock___block_invoke;
  block[3] = &unk_29EE6BFC8;
  block[7] = a7;
  block[8] = a3;
  block[4] = a4;
  block[5] = a5;
  block[6] = a6;
  if (RegisterCallbackWithID_withPurgableBlock_withPurgeBlock_withPurgeCancelBlock_withPeriodicPurgeBlock__once != -1)
  {
    dispatch_once(&RegisterCallbackWithID_withPurgableBlock_withPurgeBlock_withPurgeCancelBlock_withPeriodicPurgeBlock__once, block);
  }
}

@end