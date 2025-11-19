@interface ISSoftwareMapXPC
@end

@implementation ISSoftwareMapXPC

uint64_t ____ISSoftwareMapXPC_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D69D68]);
  result = [v0 initWithServiceName:*MEMORY[0x277D6A6A8]];
  __ISSoftwareMapXPC_sConnection = result;
  return result;
}

@end