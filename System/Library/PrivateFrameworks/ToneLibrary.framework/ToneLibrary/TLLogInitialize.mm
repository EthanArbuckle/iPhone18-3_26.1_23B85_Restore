@interface TLLogInitialize
@end

@implementation TLLogInitialize

os_log_t ___TLLogInitialize_block_invoke()
{
  _TLLogGeneralHandle = os_log_create("com.apple.ToneLibrary", "General");
  _TLLogPlaybackHandle = os_log_create("com.apple.ToneLibrary", "Playback");
  _TLLogToneManagementHandle = os_log_create("com.apple.ToneLibrary", "ToneManagement");
  result = os_log_create("com.apple.ToneLibrary", "VibrationManagement");
  _TLLogVibrationManagementHandle = result;
  return result;
}

@end