@interface PLSandbox
+ (int64_t)checkOperation:(id)operation forPath:(id)path;
@end

@implementation PLSandbox

+ (int64_t)checkOperation:(id)operation forPath:(id)path
{
  operationCopy = operation;
  pathCopy = path;
  if ([self isCurrentProcessInSandbox])
  {
    getpid();
    [operationCopy UTF8String];
    v8 = *MEMORY[0x277D861D8];
    [pathCopy UTF8String];
    v9 = sandbox_check();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end