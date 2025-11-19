@interface UIKBRTTouchInfo
@end

@implementation UIKBRTTouchInfo

void __29___UIKBRTTouchInfo_touchDict__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:5 capacity:0];
  v1 = _MergedGlobals_9_5;
  _MergedGlobals_9_5 = v0;
}

void __56___UIKBRTTouchInfo_setTimerWithTimeInterval_onQueue_do___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 80) invalidate];
  v2 = [[_UIKBRTTimerBlock alloc] initWithTimeInterval:*(a1 + 40) onQueue:*(a1 + 48) do:*(a1 + 32) owner:*(a1 + 56)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;
}

void __35___UIKBRTTouchInfo_invalidateTimer__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 80) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;
}

@end