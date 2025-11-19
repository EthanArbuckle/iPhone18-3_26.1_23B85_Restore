@interface TVRUIIntentManagerLog
@end

@implementation TVRUIIntentManagerLog

uint64_t ___TVRUIIntentManagerLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "IntentManager");
  v1 = _TVRUIIntentManagerLog_log;
  _TVRUIIntentManagerLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end