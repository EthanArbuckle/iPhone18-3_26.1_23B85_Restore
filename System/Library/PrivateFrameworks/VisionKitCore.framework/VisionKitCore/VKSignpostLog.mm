@interface VKSignpostLog
@end

@implementation VKSignpostLog

void ___VKSignpostLog_block_invoke()
{
  v0 = os_log_create("com.apple.VisionKit", "signposts");
  v1 = _VKSignpostLog____VKSignpostLog;
  _VKSignpostLog____VKSignpostLog = v0;
}

@end