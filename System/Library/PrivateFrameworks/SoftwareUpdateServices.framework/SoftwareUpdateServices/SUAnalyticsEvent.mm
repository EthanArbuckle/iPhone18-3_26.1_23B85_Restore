@interface SUAnalyticsEvent
- (NSDictionary)eventPayload;
- (SUAnalyticsEvent)initWithCoder:(id)coder;
- (SUAnalyticsEvent)initWithEventName:(id)name;
- (id)description;
- (void)_queue_addEventPayloadEntries:(id)entries;
- (void)_queue_removeEventPayloadEntry:(id)entry;
- (void)_queue_setEventPayloadEntry:(id)entry numberValue:(id)value;
- (void)_queue_setEventPayloadEntry:(id)entry stringValue:(id)value;
- (void)_queue_setEventPayloadEntryToNull:(id)null;
- (void)addEventPayloadEntries:(id)entries;
- (void)encodeWithCoder:(id)coder;
- (void)removeEventPayloadEntry:(id)entry;
- (void)setEventPayloadEntry:(id)entry BOOLValue:(BOOL)value;
- (void)setEventPayloadEntry:(id)entry numberValue:(id)value;
- (void)setEventPayloadEntry:(id)entry stringValue:(id)value;
- (void)setEventPayloadEntryToNull:(id)null;
@end

@implementation SUAnalyticsEvent

- (SUAnalyticsEvent)initWithEventName:(id)name
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = SUAnalyticsEvent;
  v6 = [(SUAnalyticsEvent *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventName, name);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    eventUUID = v7->_eventUUID;
    v7->_eventUUID = uUIDString;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mutableEventPayload = v7->_mutableEventPayload;
    v7->_mutableEventPayload = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.SUServices.CoreAnalyticsEventQueue", v13);
    stateQueue = v7->_stateQueue;
    v7->_stateQueue = v14;
  }

  return v7;
}

- (SUAnalyticsEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = SUAnalyticsEvent;
  v5 = [(SUAnalyticsEvent *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"analyticsEventName"];
    eventName = v5->_eventName;
    v5->_eventName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"analyticsEventUUID"];
    eventUUID = v5->_eventUUID;
    v5->_eventUUID = v8;

    v10 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeDictionaryWithKeysOfClasses:v10 objectsOfClasses:v14 forKey:@"analyticsEventPayload"];
    v16 = [v15 mutableCopy];
    mutableEventPayload = v5->_mutableEventPayload;
    v5->_mutableEventPayload = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.SUServices.CoreAnalyticsEventQueue", v18);
    stateQueue = v5->_stateQueue;
    v5->_stateQueue = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventName = [(SUAnalyticsEvent *)self eventName];
  [coderCopy encodeObject:eventName forKey:@"analyticsEventName"];

  eventPayload = [(SUAnalyticsEvent *)self eventPayload];
  [coderCopy encodeObject:eventPayload forKey:@"analyticsEventPayload"];

  eventUUID = [(SUAnalyticsEvent *)self eventUUID];
  [coderCopy encodeObject:eventUUID forKey:@"analyticsEventUUID"];
}

- (NSDictionary)eventPayload
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__16;
  v11 = __Block_byref_object_dispose__16;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__SUAnalyticsEvent_eventPayload__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __32__SUAnalyticsEvent_eventPayload__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(*(a1 + 32) + 16)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)addEventPayloadEntries:(id)entries
{
  entriesCopy = entries;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SUAnalyticsEvent_addEventPayloadEntries___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = entriesCopy;
  v6 = entriesCopy;
  dispatch_sync(stateQueue, v7);
}

- (void)setEventPayloadEntry:(id)entry BOOLValue:(BOOL)value
{
  entryCopy = entry;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SUAnalyticsEvent_setEventPayloadEntry_BOOLValue___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v10 = entryCopy;
  valueCopy = value;
  v8 = entryCopy;
  dispatch_sync(stateQueue, block);
}

- (void)setEventPayloadEntry:(id)entry numberValue:(id)value
{
  entryCopy = entry;
  valueCopy = value;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUAnalyticsEvent_setEventPayloadEntry_numberValue___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = entryCopy;
  v13 = valueCopy;
  v9 = valueCopy;
  v10 = entryCopy;
  dispatch_sync(stateQueue, block);
}

- (void)setEventPayloadEntry:(id)entry stringValue:(id)value
{
  entryCopy = entry;
  valueCopy = value;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SUAnalyticsEvent_setEventPayloadEntry_stringValue___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = entryCopy;
  v13 = valueCopy;
  v9 = valueCopy;
  v10 = entryCopy;
  dispatch_sync(stateQueue, block);
}

- (void)setEventPayloadEntryToNull:(id)null
{
  nullCopy = null;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SUAnalyticsEvent_setEventPayloadEntryToNull___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = nullCopy;
  v6 = nullCopy;
  dispatch_sync(stateQueue, v7);
}

- (void)removeEventPayloadEntry:(id)entry
{
  entryCopy = entry;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__SUAnalyticsEvent_removeEventPayloadEntry___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = entryCopy;
  v6 = entryCopy;
  dispatch_sync(stateQueue, v7);
}

- (void)_queue_addEventPayloadEntries:(id)entries
{
  stateQueue = self->_stateQueue;
  entriesCopy = entries;
  dispatch_assert_queue_V2(stateQueue);
  [(NSMutableDictionary *)self->_mutableEventPayload addEntriesFromDictionary:entriesCopy];
}

- (void)_queue_setEventPayloadEntry:(id)entry numberValue:(id)value
{
  entryCopy = entry;
  valueCopy = value;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (entryCopy && valueCopy)
  {
    [(NSMutableDictionary *)self->_mutableEventPayload setObject:valueCopy forKeyedSubscript:entryCopy];
  }

  else
  {
    v7 = SULogAnalytics();
    SULogErrorForSubsystem(v7, @"invalid key/numberValue passed to setEventPayloadEntry", v8, v9, v10, v11, v12, v13, v14);
  }
}

- (void)_queue_setEventPayloadEntry:(id)entry stringValue:(id)value
{
  entryCopy = entry;
  valueCopy = value;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (entryCopy && valueCopy)
  {
    [(NSMutableDictionary *)self->_mutableEventPayload setObject:valueCopy forKeyedSubscript:entryCopy];
  }

  else
  {
    v7 = SULogAnalytics();
    SULogErrorForSubsystem(v7, @"invalid key/stringValue passed to setEventPayloadEntry", v8, v9, v10, v11, v12, v13, v14);
  }
}

- (void)_queue_setEventPayloadEntryToNull:(id)null
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v4 = SULogAnalytics();
  v13 = v4;
  if (null)
  {
    v11 = @"not supported";
  }

  else
  {
    v11 = @"invalid key passed to setEventPayloadEntrytoNull";
  }

  SULogErrorForSubsystem(v4, v11, v5, v6, v7, v8, v9, v10, v12);
}

- (void)_queue_removeEventPayloadEntry:(id)entry
{
  entryCopy = entry;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (entryCopy)
  {
    [(NSMutableDictionary *)self->_mutableEventPayload setObject:0 forKeyedSubscript:entryCopy];
  }

  else
  {
    v4 = SULogAnalytics();
    SULogErrorForSubsystem(v4, @"invalid key passed to removePayloadEntry", v5, v6, v7, v8, v9, v10, v11);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  eventName = [(SUAnalyticsEvent *)self eventName];
  eventUUID = [(SUAnalyticsEvent *)self eventUUID];
  eventPayload = [(SUAnalyticsEvent *)self eventPayload];
  v7 = [v3 stringWithFormat:@"EventName: %@ EventUUID: %@ EventPayload: %@", eventName, eventUUID, eventPayload];

  return v7;
}

@end