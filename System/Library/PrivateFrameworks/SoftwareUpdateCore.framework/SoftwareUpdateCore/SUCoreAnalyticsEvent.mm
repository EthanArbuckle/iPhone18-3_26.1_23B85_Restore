@interface SUCoreAnalyticsEvent
- (NSDictionary)eventPayload;
- (SUCoreAnalyticsEvent)initWithEventName:(id)a3;
- (id)description;
- (void)_queue_removeEventPayloadEntry:(id)a3;
- (void)_queue_setEventPayloadEntry:(id)a3 value:(id)a4;
- (void)_queue_setEventPayloadEntryToNull:(id)a3;
- (void)removeEventPayloadEntry:(id)a3;
- (void)setEventPayloadEntry:(id)a3 value:(id)a4;
- (void)setEventPayloadEntryToNull:(id)a3;
@end

@implementation SUCoreAnalyticsEvent

- (SUCoreAnalyticsEvent)initWithEventName:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = SUCoreAnalyticsEvent;
  v6 = [(SUCoreAnalyticsEvent *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventName, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mutableEventPayload = v7->_mutableEventPayload;
    v7->_mutableEventPayload = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.SUCore.CoreAnalyticsEventQueue", v10);
    stateQueue = v7->_stateQueue;
    v7->_stateQueue = v11;

    v13 = [MEMORY[0x277CCAD78] UUID];
    v14 = [v13 UUIDString];
    eventUUID = v7->_eventUUID;
    v7->_eventUUID = v14;
  }

  return v7;
}

- (NSDictionary)eventPayload
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__SUCoreAnalyticsEvent_eventPayload__block_invoke;
  v6[3] = &unk_27892C8D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __36__SUCoreAnalyticsEvent_eventPayload__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(*(a1 + 32) + 16)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setEventPayloadEntry:(id)a3 value:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    stateQueue = self->_stateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__SUCoreAnalyticsEvent_setEventPayloadEntry_value___block_invoke;
    block[3] = &unk_27892D340;
    block[4] = self;
    v15 = v6;
    v16 = v7;
    dispatch_sync(stateQueue, block);
  }

  else
  {
    v10 = [MEMORY[0x277D64460] sharedLogger];
    v11 = [v10 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v18 = v6;
      v19 = 2114;
      v20 = v13;
      _os_log_impl(&dword_23193C000, v11, OS_LOG_TYPE_DEFAULT, "Event payload data %{public}@ is unsupported type %{public}@. Supported Types: NSString, NSNumber, NSData, NSDate", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setEventPayloadEntryToNull:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__SUCoreAnalyticsEvent_setEventPayloadEntryToNull___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

- (void)removeEventPayloadEntry:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SUCoreAnalyticsEvent_removeEventPayloadEntry___block_invoke;
  v7[3] = &unk_27892D478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

- (void)_queue_setEventPayloadEntry:(id)a3 value:(id)a4
{
  stateQueue = self->_stateQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(stateQueue);
  [(NSMutableDictionary *)self->_mutableEventPayload setSafeObject:v7 forKey:v8];
}

- (void)_queue_setEventPayloadEntryToNull:(id)a3
{
  stateQueue = self->_stateQueue;
  v5 = a3;
  dispatch_assert_queue_V2(stateQueue);
  mutableEventPayload = self->_mutableEventPayload;
  v7 = [MEMORY[0x277CBEB68] null];
  [(NSMutableDictionary *)mutableEventPayload setSafeObject:v7 forKey:v5];
}

- (void)_queue_removeEventPayloadEntry:(id)a3
{
  stateQueue = self->_stateQueue;
  v5 = a3;
  dispatch_assert_queue_V2(stateQueue);
  [(NSMutableDictionary *)self->_mutableEventPayload setObject:0 forKeyedSubscript:v5];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUCoreAnalyticsEvent *)self eventName];
  v5 = [(SUCoreAnalyticsEvent *)self eventUUID];
  v6 = [(SUCoreAnalyticsEvent *)self eventPayload];
  v7 = [v3 stringWithFormat:@"EventName: %@ EventUUID: %@ EventPayload: %@", v4, v5, v6];

  return v7;
}

@end