@interface NSMutableArray(NCCoalescingNotifications)
- (void)_insertOrderedNotificationRequest:()NCCoalescingNotifications;
@end

@implementation NSMutableArray(NCCoalescingNotifications)

- (void)_insertOrderedNotificationRequest:()NCCoalescingNotifications
{
  v4 = a3;
  [self insertObject:v4 atIndex:{objc_msgSend(self, "indexOfObject:inSortedRange:options:usingComparator:", v4, 0, objc_msgSend(self, "count"), 1024, &__block_literal_global_28)}];
}

@end