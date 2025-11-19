@interface SiriTTSTrainerGetLog
@end

@implementation SiriTTSTrainerGetLog

void __SiriTTSTrainerGetLog_block_invoke(id a1)
{
  _MergedGlobals = os_log_create("com.apple.siri.tts.trainer", "default");

  _objc_release_x1();
}

@end