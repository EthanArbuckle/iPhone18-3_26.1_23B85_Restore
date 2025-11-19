@interface TVRUIViewControllerLog
@end

@implementation TVRUIViewControllerLog

uint64_t ___TVRUIViewControllerLog_block_invoke()
{
  v0 = os_log_create("com.apple.TVRemoteUI", "ViewController");
  v1 = _TVRUIViewControllerLog_log;
  _TVRUIViewControllerLog_log = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end