@interface Staging
@end

@implementation Staging

void __keyboardPerfLog_Staging_block_invoke()
{
  v0 = os_log_create("com.apple.TextInputUI", "keyboardPerf.UI");
  v1 = keyboardPerfLog_Staging_log;
  keyboardPerfLog_Staging_log = v0;
}

@end