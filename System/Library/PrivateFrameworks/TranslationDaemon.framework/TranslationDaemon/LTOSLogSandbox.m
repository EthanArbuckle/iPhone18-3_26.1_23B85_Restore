@interface LTOSLogSandbox
@end

@implementation LTOSLogSandbox

uint64_t ___LTOSLogSandbox_block_invoke()
{
  _LTOSLogSandbox_log = os_log_create("com.apple.Translation", "Sandbox");

  return MEMORY[0x2821F96F8]();
}

@end