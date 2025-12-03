@interface HDSPSleepEventList
- (HDSPSleepEventList)init;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)overdueEventsForDate:(id)date;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)_sortEvents;
- (void)addEvents:(id)events provider:(id)provider;
- (void)removeAllEvents;
- (void)removeEvents:(id)events;
- (void)removeEventsForProvider:(id)provider;
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

- (void)addEvents:(id)events provider:(id)provider
{
  eventsCopy = events;
  providerCopy = provider;
  eventsByProvider = self->_eventsByProvider;
  providerIdentifier = [providerCopy providerIdentifier];
  v10 = [(NSMutableDictionary *)eventsByProvider objectForKeyedSubscript:providerIdentifier];

  if (!v10)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11 = self->_eventsByProvider;
    providerIdentifier2 = [providerCopy providerIdentifier];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:providerIdentifier2];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __41__HDSPSleepEventList_addEvents_provider___block_invoke;
  v14[3] = &unk_279C7C9B0;
  v15 = v10;
  v13 = v10;
  [eventsCopy na_each:v14];
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
        allValues = [v9 allValues];
        [v3 addObjectsFromArray:allValues];

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

- (void)removeEventsForProvider:(id)provider
{
  eventsByProvider = self->_eventsByProvider;
  providerIdentifier = [provider providerIdentifier];
  [(NSMutableDictionary *)eventsByProvider removeObjectForKey:providerIdentifier];

  [(HDSPSleepEventList *)self _sortEvents];
}

- (void)removeEvents:(id)events
{
  v20 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
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
        [eventsCopy na_each:v13];

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

- (id)overdueEventsForDate:(id)date
{
  dateCopy = date;
  sortedEvents = self->_sortedEvents;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HDSPSleepEventList_overdueEventsForDate___block_invoke;
  v9[3] = &unk_279C7C768;
  v10 = dateCopy;
  v6 = dateCopy;
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
  succinctDescriptionBuilder = [(HDSPSleepEventList *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  allEvents = [(HDSPSleepEventList *)self allEvents];
  [v3 appendArraySection:allEvents withName:@"sleepEvents" multilinePrefix:&stru_287A83178 skipIfEmpty:0];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(HDSPSleepEventList *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end