@interface AXLocalNotificationHandler
- (void)_startObservingWithObject:(id)object;
- (void)_stopObservingWithObject:(id)object;
@end

@implementation AXLocalNotificationHandler

- (void)_startObservingWithObject:(id)object
{
  v4 = MEMORY[0x277CCAB98];
  objectCopy = object;
  defaultCenter = [v4 defaultCenter];
  observerIdentifier = self->super._observerIdentifier;
  _notificationName = [(VISAXNotificationHandler *)self _notificationName];
  mainQueue = [MEMORY[0x277CCABD8] mainQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__AXLocalNotificationHandler__startObservingWithObject___block_invoke;
  v11[3] = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
  v11[4] = observerIdentifier;
  v10 = [defaultCenter addObserverForName:_notificationName object:objectCopy queue:mainQueue usingBlock:v11];

  [(AXLocalNotificationHandler *)self _setOpaqueObserver:v10];
}

void __56__AXLocalNotificationHandler__startObservingWithObject___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v7 = [VISAXNotificationHandler _safelyGetObserverForIdentifier:v2];
  v4 = [v3 name];
  v5 = [v3 object];
  v6 = [v3 userInfo];

  [v7 _handleNotificationWithName:v4 object:v5 userInfo:v6];
}

- (void)_stopObservingWithObject:(id)object
{
  v4 = MEMORY[0x277CCAB98];
  objectCopy = object;
  defaultCenter = [v4 defaultCenter];
  _opaqueObserver = [(AXLocalNotificationHandler *)self _opaqueObserver];
  _notificationName = [(VISAXNotificationHandler *)self _notificationName];
  [defaultCenter removeObserver:_opaqueObserver name:_notificationName object:objectCopy];

  [(AXLocalNotificationHandler *)self _setOpaqueObserver:0];
}

@end