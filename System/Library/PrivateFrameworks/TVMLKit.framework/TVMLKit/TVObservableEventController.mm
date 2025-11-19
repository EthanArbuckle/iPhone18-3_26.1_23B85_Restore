@interface TVObservableEventController
- (void)addObserver:(id)a3 forEvent:(id)a4;
- (void)dispatchEvent:(id)a3 sender:(id)a4 withUserInfo:(id)a5;
- (void)removeObserver:(id)a3;
- (void)removeObserver:(id)a3 forEvent:(id)a4;
@end

@implementation TVObservableEventController

- (void)dispatchEvent:(id)a3 sender:(id)a4 withUserInfo:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_observerRecords objectForKeyedSubscript:v8];
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

        [*(*(&v16 + 1) + 8 * v15++) handleEvent:v8 sender:v9 withUserInfo:v10];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (void)addObserver:(id)a3 forEvent:(id)a4
{
  v15 = a3;
  v6 = a4;
  observerRecords = self->_observerRecords;
  if (!observerRecords)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    v9 = self->_observerRecords;
    self->_observerRecords = v8;

    v10 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    eventsByObserver = self->_eventsByObserver;
    self->_eventsByObserver = v10;

    observerRecords = self->_observerRecords;
  }

  v12 = [(NSMutableDictionary *)observerRecords objectForKeyedSubscript:v6];
  if (!v12)
  {
    v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(NSMutableDictionary *)self->_observerRecords setObject:v12 forKeyedSubscript:v6];
  }

  [v12 addObject:v15];
  v13 = [(NSMapTable *)self->_eventsByObserver objectForKey:v15];
  if (!v13)
  {
    v14 = self->_eventsByObserver;
    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    [(NSMapTable *)v14 setObject:v13 forKey:v15];
  }

  [v13 addObject:v6];
}

- (void)removeObserver:(id)a3 forEvent:(id)a4
{
  observerRecords = self->_observerRecords;
  v6 = a3;
  v7 = [(NSMutableDictionary *)observerRecords objectForKeyedSubscript:a4];
  [v7 removeObject:v6];
}

- (void)removeObserver:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSMapTable *)self->_eventsByObserver objectForKey:v4];
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

        [(TVObservableEventController *)self removeObserver:v4 forEvent:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end