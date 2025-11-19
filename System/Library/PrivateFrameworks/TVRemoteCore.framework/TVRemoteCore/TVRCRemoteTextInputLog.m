@interface TVRCRemoteTextInputLog
@end

@implementation TVRCRemoteTextInputLog

uint64_t ___TVRCRemoteTextInputLog_block_invoke()
{
  _TVRCRemoteTextInputLog_log = os_log_create("com.apple.TVRemoteCore", "RemoteTextInput");

  return MEMORY[0x2821F96F8]();
}

@end