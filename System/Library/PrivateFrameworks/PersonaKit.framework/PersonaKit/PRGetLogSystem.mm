@interface PRGetLogSystem
@end

@implementation PRGetLogSystem

uint64_t ___PRGetLogSystem_block_invoke()
{
  _PRGetLogSystem_log = os_log_create("com.apple.persona", "core");

  return MEMORY[0x2821F96F8]();
}

@end