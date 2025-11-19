@interface LTOSLogSignpost
@end

@implementation LTOSLogSignpost

uint64_t ___LTOSLogSignpost_block_invoke()
{
  _LTOSLogSignpost_log = os_log_create("com.apple.Translation", "Signpost");

  return MEMORY[0x2821F96F8]();
}

@end