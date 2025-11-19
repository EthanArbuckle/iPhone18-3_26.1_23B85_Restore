@interface TVRUIVolumeControllerLog
@end

@implementation TVRUIVolumeControllerLog

uint64_t ___TVRUIVolumeControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "VolumeController");
  v1 = _TVRUIVolumeControllerLog_log;
  _TVRUIVolumeControllerLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end