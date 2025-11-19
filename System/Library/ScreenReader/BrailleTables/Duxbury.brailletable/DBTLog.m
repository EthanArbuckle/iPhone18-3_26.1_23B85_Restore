@interface DBTLog
@end

@implementation DBTLog

void __DBTLog_block_invoke(id a1)
{
  DBTLog_log = os_log_create("com.apple.Accessibility", "BRLTranslation.duxbury");

  _objc_release_x1();
}

@end