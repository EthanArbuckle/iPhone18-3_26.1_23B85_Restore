@interface PBLog
@end

@implementation PBLog

uint64_t ___PBLog_block_invoke()
{
  _PBLog_log = os_log_create("com.apple.Pasteboard", "Pasteboard");

  return MEMORY[0x2821F96F8]();
}

@end