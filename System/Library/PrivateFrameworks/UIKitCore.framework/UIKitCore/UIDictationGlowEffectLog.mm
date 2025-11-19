@interface UIDictationGlowEffectLog
@end

@implementation UIDictationGlowEffectLog

void ___UIDictationGlowEffectLog_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "DictationGlowEffect");
  v1 = _MergedGlobals_1295;
  _MergedGlobals_1295 = v0;
}

@end