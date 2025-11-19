@interface BYLaunchLogSubsystem
@end

@implementation BYLaunchLogSubsystem

uint64_t ___BYLaunchLogSubsystem_block_invoke()
{
  _BYLaunchLogSubsystem_oslog = os_log_create("com.apple.purplebuddy", "launch");

  return MEMORY[0x1EEE66BB8]();
}

@end