@interface PNPSignpostLog
@end

@implementation PNPSignpostLog

uint64_t ___PNPSignpostLog_block_invoke()
{
  v0 = os_log_create("com.apple.pencilpairingui", "signposts");
  v1 = _PNPSignpostLog____PNPSignpostLog;
  _PNPSignpostLog____PNPSignpostLog = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end