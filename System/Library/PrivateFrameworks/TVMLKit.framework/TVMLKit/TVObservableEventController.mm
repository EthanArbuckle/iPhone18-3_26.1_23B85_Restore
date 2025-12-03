@interface TVObservableEventController
- (void)addObserver:(id)observer forEvent:(id)event;
- (void)dispatchEvent:(id)event sender:(id)sender withUserInfo:(id)info;
- (void)removeObserver:(id)observer;
- (void)removeObserver:(id)observer forEvent:(id)event;
@end

@implementation TVObservableEventController

- (void)dispatchEvent:(id)event sender:(id)sender withUserInfo:(id)info
{
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  senderCopy = sender;
  infoCopy = info;
  v11 = [(NSMutableDictionary *)self->_observerRecords objectForKeyedSubscript:eventCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * v15++) handleEvent:eventCopy sender:senderCopy withUserInfo:infoCopy];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)addObserver:(id)observer forEvent:(id)event
{
  observerCopy = observer;
  eventCopy = event;
  observerRecords = self->_observerRecords;
  if (!observerRecords)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    v9 = self->_observerRecords;
    self->_observerRecords = v8;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    eventsByObserver = self->_eventsByObserver;
    self->_eventsByObserver = weakToStrongObjectsMapTable;

    observerRecords = self->_observerRecords;
  }

  weakObjectsHashTable = [(NSMutableDictionary *)observerRecords objectForKeyedSubscript:eventCopy];
  if (!weakObjectsHashTable)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_observerRecords setObject:weakObjectsHashTable forKeyedSubscript:eventCopy];
  }

  [weakObjectsHashTable addObject:observerCopy];
  v13 = [(NSMapTable *)self->_eventsByObserver objectForKey:observerCopy];
  if (!v13)
  {
    v14 = self->_eventsByObserver;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    [(NSMapTable *)v14 setObject:v13 forKey:observerCopy];
  }

  [v13 addObject:eventCopy];
}

- (void)removeObserver:(id)observer forEvent:(id)event
{
  observerRecords = self->_observerRecords;
  observerCopy = observer;
  v7 = [(NSMutableDictionary *)observerRecords objectForKeyedSubscript:event];
  [v7 removeObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  v15 = *MEMORY[0x277D85DE8];
  observerCopy = observer;
  v5 = [(NSMapTable *)self->_eventsByObserver objectForKey:observerCopy];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(TVObservableEventController *)self removeObserver:observerCopy forEvent:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end