@interface LTOSLogLID
@end

@implementation LTOSLogLID

uint64_t ___LTOSLogLID_block_invoke()
{
  _LTOSLogLID_log = os_log_create("com.apple.Translation", "LID");

  return MEMORY[0x2821F96F8]();
}

@end