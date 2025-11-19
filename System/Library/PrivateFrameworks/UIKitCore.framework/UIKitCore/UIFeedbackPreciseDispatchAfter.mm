@interface UIFeedbackPreciseDispatchAfter
@end

@implementation UIFeedbackPreciseDispatchAfter

void ___UIFeedbackPreciseDispatchAfter_block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_source_cancel(v2);
}

@end