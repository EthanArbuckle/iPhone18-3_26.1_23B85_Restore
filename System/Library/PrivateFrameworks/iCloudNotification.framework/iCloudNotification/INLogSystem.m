@interface INLogSystem
@end

@implementation INLogSystem

uint64_t ___INLogSystem_block_invoke()
{
  _INLogSystem_log = os_log_create("com.apple.icloudnotification", "log");

  return MEMORY[0x2821F96F8]();
}

@end