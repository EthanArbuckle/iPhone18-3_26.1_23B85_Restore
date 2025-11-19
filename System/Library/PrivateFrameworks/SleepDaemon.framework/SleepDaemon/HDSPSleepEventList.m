@interface HDSPSleepEventList
- (HDSPSleepEventList)init;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)overdueEventsForDate:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_sortEvents;
- (void)addEvents:(id)a3 provider:(id)a4;
- (void)removeAllEvents;
- (void)removeEvents:(id)a3;
- (void)removeEventsForProvider:(id)a3;
@end

@implementation HDSPSleepEventList

- (HDSPSleepEventList)init
{
  v8.receiver = self;
  v8.super_class = HDSPSleepEventList;
  v2 = [(HDSPSleepEventList *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventsByProvider = v2->_eventsByProvider;
    v2->_eventsByProvider = v3;

    sortedEvents = v2->_sortedEvents;
    v2->_sortedEvents = MEMORY[0x277CBEBF8];

    v6 = v2;
  }

  return v2;
}

- (void)addEvents:(id)a3 provider:(id)a4
{
  v6 = a3;
  v7 = a4;
  eventsByProvider = self->_eventsByProvider;
  v9 = [v7 providerIdentifier];
  v10 = [(NSMutableDictionary *)eventsByProvider objectForKeyedSubscript:v9];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = self->_eventsByProvider;
    v12 = [v7 providerIdentifier];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__HDSPSleepEventList_addEvents_provider___block_invoke;
  v14[3] = &unk_279C7C9B0;
  v15 = v10;
  v13 = v10;
  [v6 na_each:v14];
  [(HDSPSleepEventList *)self _sortEvents];
}

void __41__HDSPSleepEventList_addEvents_provider___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (void)_sortEvents
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_eventsByProvider;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSMutableDictionary *)self->_eventsByProvider objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v8), v15];
        v10 = [v9 allValues];
        [v3 addObjectsFromArray:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v11 = HKSPSleepEventComparator();
  [v3 sortUsingComparator:v11];

  v12 = [v3 copy];
  sortedEvents = self->_sortedEvents;
  self->_sortedEvents = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeEventsForProvider:(id)a3
{
  eventsByProvider = self->_eventsByProvider;
  v5 = [a3 providerIdentifier];
  [(NSMutableDictionary *)eventsByProvider removeObjectForKey:v5];

  [(HDSPSleepEventList *)self _sortEvents];
}

- (void)removeEvents:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_eventsByProvider;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(NSMutableDictionary *)self->_eventsByProvider objectForKeyedSubscript:*(*(&v15 + 1) + 8 * v9)];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __35__HDSPSleepEventList_removeEvents___block_invoke;
        v13[3] = &unk_279C7C9B0;
        v14 = v10;
        v11 = v10;
        [v4 na_each:v13];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(HDSPSleepEventList *)self _sortEvents];
  v12 = *MEMORY[0x277D85DE8];
}

void __35__HDSPSleepEventList_removeEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 removeObjectForKey:v3];
}

- (void)removeAllEvents
{
  [(NSMutableDictionary *)self->_eventsByProvider removeAllObjects];
  sortedEvents = self->_sortedEvents;
  self->_sortedEvents = MEMORY[0x277CBEBF8];
}

- (id)overdueEventsForDate:(id)a3
{
  v4 = a3;
  sortedEvents = self->_sortedEvents;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HDSPSleepEventList_overdueEventsForDate___block_invoke;
  v9[3] = &unk_279C7C768;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)sortedEvents na_filter:v9];

  return v7;
}

uint64_t __43__HDSPSleepEventList_overdueEventsForDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dueDate];
  v4 = [v3 hksp_isBeforeOrSameAsDate:*(a1 + 32)];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(HDSPSleepEventList *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(HDSPSleepEventList *)self allEvents];
  [v3 appendArraySection:v4 withName:@"sleepEvents" multilinePrefix:&stru_287A83178 skipIfEmpty:0];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(HDSPSleepEventList *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end