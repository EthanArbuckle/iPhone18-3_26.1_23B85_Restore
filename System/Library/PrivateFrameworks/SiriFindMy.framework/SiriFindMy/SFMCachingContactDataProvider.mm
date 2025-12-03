@interface SFMCachingContactDataProvider
- (void)contactStoreChangedWithNotification:(id)notification;
@end

@implementation SFMCachingContactDataProvider

- (void)contactStoreChangedWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_266D9987C(v4);
}

@end