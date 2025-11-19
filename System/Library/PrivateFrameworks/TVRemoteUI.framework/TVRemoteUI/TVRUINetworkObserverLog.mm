@interface TVRUINetworkObserverLog
@end

@implementation TVRUINetworkObserverLog

uint64_t ___TVRUINetworkObserverLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "NetworkObserver");
  v1 = _TVRUINetworkObserverLog_log;
  _TVRUINetworkObserverLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end