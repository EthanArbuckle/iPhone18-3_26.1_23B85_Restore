@interface UIHoverTouchDeliveryTable
@end

@implementation UIHoverTouchDeliveryTable

void __60___UIHoverTouchDeliveryTable_updateForEvent_forcingHitTest___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 isEnabled] && objc_msgSend(v6, "state") <= 2 && (*(a1 + 56) != 1 || objc_msgSend(v6, "_wantsHoverEventsWhilePointerIsLocked")))
  {
    [*(a1 + 32) addObject:v6];
    if (([*(*(a1 + 40) + 16) containsObject:v6] & 1) == 0)
    {
      v3 = *(a1 + 48);
      v4 = *(*(a1 + 40) + 32);
      v5 = [v4 _responder];
      LODWORD(v3) = [v6 _shouldReceiveTouch:v4 forEvent:v3 recognizerView:v5];

      if (v3)
      {
        [*(*(a1 + 40) + 8) addObject:v6];
      }
    }
  }
}

@end