@interface TVRUIViewServiceLog
@end

@implementation TVRUIViewServiceLog

uint64_t ___TVRUIViewServiceLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "ViewService");
  v1 = _TVRUIViewServiceLog_log;
  _TVRUIViewServiceLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end