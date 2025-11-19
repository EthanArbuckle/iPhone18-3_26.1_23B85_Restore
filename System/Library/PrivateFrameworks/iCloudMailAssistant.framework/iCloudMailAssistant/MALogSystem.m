@interface MALogSystem
@end

@implementation MALogSystem

uint64_t ___MALogSystem_block_invoke()
{
  _MALogSystem_log = os_log_create("com.apple.icloudMCCKit", "icloudMailAssistant");

  return MEMORY[0x2821F96F8]();
}

@end