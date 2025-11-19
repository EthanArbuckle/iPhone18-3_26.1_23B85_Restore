@interface PLSandbox
+ (int64_t)checkOperation:(id)a3 forPath:(id)a4;
@end

@implementation PLSandbox

+ (int64_t)checkOperation:(id)a3 forPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 isCurrentProcessInSandbox])
  {
    getpid();
    [v6 UTF8String];
    v8 = *MEMORY[0x277D861D8];
    [v7 UTF8String];
    v9 = sandbox_check();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end