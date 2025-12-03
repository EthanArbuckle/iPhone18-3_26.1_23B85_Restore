@interface AXTelephonyNotificationHandler
- (void)_handleNotification:(id)notification;
- (void)_startObserving;
- (void)_stopObserving;
@end

@implementation AXTelephonyNotificationHandler

- (void)_startObserving
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  _notificationName = [(VISAXNotificationHandler *)self _notificationName];
  [defaultCenter addObserver:self selector:sel__handleNotification_ name:_notificationName object:0];
}

- (void)_handleNotification:(id)notification
{
  v4 = MEMORY[0x277CCAB98];
  notificationCopy = notification;
  [v4 defaultCenter];
  observerIdentifier = self->super._observerIdentifier;
  [notificationCopy name];
  [notificationCopy object];
  [notificationCopy userInfo];

  AXPerformBlockSynchronouslyOnMainThread();
}

- (void)_stopObserving
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
}

@end