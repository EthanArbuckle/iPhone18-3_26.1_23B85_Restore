@interface UIFeedbackBackBoardEngine
@end

@implementation UIFeedbackBackBoardEngine

void __44___UIFeedbackBackBoardEngine__internalQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("com.apple.UIKit.FeedbackBackBoardEngineInternal", v2);
  v1 = _MergedGlobals_1_19;
  _MergedGlobals_1_19 = v0;
}

void __42___UIFeedbackBackBoardEngine_sharedEngine__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED4993C8;
  qword_1ED4993C8 = v1;
}

@end