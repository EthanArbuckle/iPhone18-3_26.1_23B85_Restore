@interface VisionCoreLogger
@end

@implementation VisionCoreLogger

uint64_t ___VisionCoreLogger_block_invoke()
{
  _VisionCoreLogger__visionLogger = os_log_create([@"com.apple.VisionCore" UTF8String], objc_msgSend(@"VisionCoreLog", "UTF8String"));

  return MEMORY[0x1EEE66BB8]();
}

@end