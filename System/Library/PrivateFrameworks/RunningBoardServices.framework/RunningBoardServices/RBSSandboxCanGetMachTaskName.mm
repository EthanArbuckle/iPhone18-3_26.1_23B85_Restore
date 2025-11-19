@interface RBSSandboxCanGetMachTaskName
@end

@implementation RBSSandboxCanGetMachTaskName

uint64_t ___RBSSandboxCanGetMachTaskName_block_invoke()
{
  getpid();
  v0 = *MEMORY[0x1E69E9BD0];
  result = sandbox_check();
  _RBSSandboxCanGetMachTaskName_allowed = result == 0;
  return result;
}

@end