@interface NSMutableArray(NCCoalescingNotifications)
- (void)_insertOrderedNotificationRequest:()NCCoalescingNotifications;
@end

@implementation NSMutableArray(NCCoalescingNotifications)

- (void)_insertOrderedNotificationRequest:()NCCoalescingNotifications
{
  v4 = a3;
  [a1 insertObject:v4 atIndex:{objc_msgSend(a1, "indexOfObject:inSortedRange:options:usingComparator:", v4, 0, objc_msgSend(a1, "count"), 1024, &__block_literal_global_28)}];
}

@end