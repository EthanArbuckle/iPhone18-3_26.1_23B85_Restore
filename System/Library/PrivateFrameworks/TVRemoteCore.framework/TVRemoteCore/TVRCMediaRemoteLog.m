@interface TVRCMediaRemoteLog
@end

@implementation TVRCMediaRemoteLog

uint64_t ___TVRCMediaRemoteLog_block_invoke()
{
  _TVRCMediaRemoteLog_log = os_log_create("com.apple.TVRemoteCore", "MediaRemote");

  return MEMORY[0x2821F96F8]();
}

@end