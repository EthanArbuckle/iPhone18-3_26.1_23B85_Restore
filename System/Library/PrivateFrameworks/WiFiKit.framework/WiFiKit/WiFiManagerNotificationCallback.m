@interface WiFiManagerNotificationCallback
@end

@implementation WiFiManagerNotificationCallback

void ___WiFiManagerNotificationCallback_block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _trustNotificationWithID:*(a1 + 56) network:*(*(*(a1 + 48) + 8) + 24) data:*(a1 + 40)];
  v2 = *(*(*(a1 + 48) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void ___WiFiManagerNotificationCallback_block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _joinRecommendationWithID:*(a1 + 48) network:*(*(*(a1 + 40) + 8) + 24)];
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

@end