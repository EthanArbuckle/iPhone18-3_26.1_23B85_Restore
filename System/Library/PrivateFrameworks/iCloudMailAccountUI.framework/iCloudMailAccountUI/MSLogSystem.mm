@interface MSLogSystem
@end

@implementation MSLogSystem

uint64_t ___MSLogSystem_block_invoke()
{
  _MSLogSystem_log = os_log_create("com.apple.icloudMCCKit", "icloudMailSettings");

  return MEMORY[0x2821F96F8]();
}

@end