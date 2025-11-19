@interface NSMutableArray
@end

@implementation NSMutableArray

uint64_t __79__NSMutableArray_NCCoalescingNotifications___insertOrderedNotificationRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 timestamp];
  v6 = [v4 timestamp];

  v7 = [v5 compare:v6];
  return v7;
}

@end