@interface UIKBEventDeferralPolicyAssistantLogger
@end

@implementation UIKBEventDeferralPolicyAssistantLogger

void ___UIKBEventDeferralPolicyAssistantLogger_block_invoke()
{
  v0 = os_log_create("com.apple.UIKit", "KBEventDeferralPolicyAssistant");
  v1 = _MergedGlobals_1362;
  _MergedGlobals_1362 = v0;
}

@end