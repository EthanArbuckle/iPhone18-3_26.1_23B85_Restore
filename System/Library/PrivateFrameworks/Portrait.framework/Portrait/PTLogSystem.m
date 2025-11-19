@interface PTLogSystem
@end

@implementation PTLogSystem

uint64_t ___PTLogSystem_block_invoke()
{
  _PTLogSystem_log = os_log_create("com.apple.portrait", "core");

  return MEMORY[0x2821F96F8]();
}

@end