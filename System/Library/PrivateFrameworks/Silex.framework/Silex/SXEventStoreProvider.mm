@interface SXEventStoreProvider
- (EKEventStore)eventStore;
@end

@implementation SXEventStoreProvider

- (EKEventStore)eventStore
{
  eventStore = self->_eventStore;
  if (!eventStore)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6966A18]);
    v5 = self->_eventStore;
    self->_eventStore = v4;

    eventStore = self->_eventStore;
  }

  return eventStore;
}

@end