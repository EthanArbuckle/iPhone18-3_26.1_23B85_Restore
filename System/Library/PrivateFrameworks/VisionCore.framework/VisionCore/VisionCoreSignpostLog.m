@interface VisionCoreSignpostLog
@end

@implementation VisionCoreSignpostLog

uint64_t ___VisionCoreSignpostLog_block_invoke()
{
  _VisionCoreSignpostLog____VisionCoreSignpostLog = os_log_create("com.apple.VisionCore", "signposts");

  return MEMORY[0x1EEE66BB8]();
}

@end