@interface AXTelephonyNotificationHandler
- (void)_handleNotification:(id)a3;
- (void)_startObserving;
- (void)_stopObserving;
@end

@implementation AXTelephonyNotificationHandler

- (void)_startObserving
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = [(VISAXNotificationHandler *)self _notificationName];
  [v4 addObserver:self selector:sel__handleNotification_ name:v3 object:0];
}

- (void)_handleNotification:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  [v4 defaultCenter];
  observerIdentifier = self->super._observerIdentifier;
  [v5 name];
  [v5 object];
  [v5 userInfo];

  AXPerformBlockSynchronouslyOnMainThread();
}

- (void)_stopObserving
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];
}

@end