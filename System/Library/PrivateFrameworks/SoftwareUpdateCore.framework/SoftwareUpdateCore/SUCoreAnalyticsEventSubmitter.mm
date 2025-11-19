@interface SUCoreAnalyticsEventSubmitter
- (BOOL)_queue_registerSendEvent:(id)a3;
- (BOOL)_queue_submitAllEvents;
- (BOOL)_queue_submitEvent:(id)a3;
- (BOOL)_queue_submitEventsWithName:(id)a3;
- (BOOL)submitAllEvents;
- (BOOL)submitEvent:(id)a3;
- (BOOL)submitEventsWithName:(id)a3;
- (NSDictionary)events;
- (SUCoreAnalyticsEventSubmitter)init;
- (void)_queue_removeAllEvents;
- (void)_queue_removeEvent:(id)a3;
- (void)_queue_removeEventsWithName:(id)a3;
- (void)_queue_setEvent:(id)a3;
- (void)removeAllEvents;
- (void)removeEvent:(id)a3;
- (void)removeEventsWithName:(id)a3;
- (void)setEvent:(id)a3;
@end

@implementation SUCoreAnalyticsEventSubmitter

- (SUCoreAnalyticsEventSubmitter)init
{
  v11.receiver = self;
  v11.super_class = SUCoreAnalyticsEventSubmitter;
  v2 = [(SUCoreAnalyticsEventSubmitter *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    events = v2->_events;
    v2->_events = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.SUCore.SUCoreAnalyticsEventSubmitterQueue", v5);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v6;

    v8 = [objc_alloc(MEMORY[0x277D64460]) initWithCategory:@"SUCoreAnalyticsEventSubmitter"];
    eventSubmitterLogger = v2->_eventSubmitterLogger;
    v2->_eventSubmitterLogger = v8;
  }

  return v2;
}

- (void)setEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SUCoreAnalyticsEventSubmitter_setEvent___block_invoke;
  v7[3] = &unk_27892D478;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

void __42__SUCoreAnalyticsEventSubmitter_setEvent___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {

    [v2 _queue_setEvent:?];
  }

  else
  {
    v4 = [v2 eventSubmitterLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __42__SUCoreAnalyticsEventSubmitter_setEvent___block_invoke_cold_1();
    }
  }
}

- (void)removeEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__SUCoreAnalyticsEventSubmitter_removeEvent___block_invoke;
  v7[3] = &unk_27892D478;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

void __45__SUCoreAnalyticsEventSubmitter_removeEvent___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {

    [v2 _queue_removeEvent:?];
  }

  else
  {
    v4 = [v2 eventSubmitterLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __45__SUCoreAnalyticsEventSubmitter_removeEvent___block_invoke_cold_1();
    }
  }
}

- (void)removeEventsWithName:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__SUCoreAnalyticsEventSubmitter_removeEventsWithName___block_invoke;
  v7[3] = &unk_27892D478;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(stateQueue, v7);
}

void __54__SUCoreAnalyticsEventSubmitter_removeEventsWithName___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {

    [v2 _queue_removeEventsWithName:?];
  }

  else
  {
    v4 = [v2 eventSubmitterLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __45__SUCoreAnalyticsEventSubmitter_removeEvent___block_invoke_cold_1();
    }
  }
}

- (void)removeAllEvents
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SUCoreAnalyticsEventSubmitter_removeAllEvents__block_invoke;
  block[3] = &unk_27892C8A8;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (BOOL)submitEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SUCoreAnalyticsEventSubmitter_submitEvent___block_invoke;
  block[3] = &unk_27892D520;
  v9 = v4;
  v10 = self;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(stateQueue, block);
  LOBYTE(v4) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v4;
}

void __45__SUCoreAnalyticsEventSubmitter_submitEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ([v2 eventUUID], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) _queue_submitEvent:*(a1 + 32)];
  }

  else
  {
    v4 = [*(a1 + 40) eventSubmitterLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __45__SUCoreAnalyticsEventSubmitter_submitEvent___block_invoke_cold_1();
    }
  }
}

- (BOOL)submitEventsWithName:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SUCoreAnalyticsEventSubmitter_submitEventsWithName___block_invoke;
  block[3] = &unk_27892D520;
  v9 = v4;
  v10 = self;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(stateQueue, block);
  LOBYTE(v4) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v4;
}

void __54__SUCoreAnalyticsEventSubmitter_submitEventsWithName___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    *(*(a1[6] + 8) + 24) = [v2 _queue_submitEventsWithName:?];
  }

  else
  {
    v4 = [v2 eventSubmitterLogger];
    v5 = [v4 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __54__SUCoreAnalyticsEventSubmitter_submitEventsWithName___block_invoke_cold_1();
    }
  }
}

- (BOOL)submitAllEvents
{
  v2 = self;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = v2->_stateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__SUCoreAnalyticsEventSubmitter_submitAllEvents__block_invoke;
  v5[3] = &unk_27892C8D0;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __48__SUCoreAnalyticsEventSubmitter_submitAllEvents__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_submitAllEvents];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSDictionary)events
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__5;
  v11 = __Block_byref_object_dispose__5;
  v12 = 0;
  stateQueue = self->_stateQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__SUCoreAnalyticsEventSubmitter_events__block_invoke;
  v6[3] = &unk_27892C8D0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(stateQueue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __39__SUCoreAnalyticsEventSubmitter_events__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(*(a1 + 32) + 8)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)_queue_setEvent:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (v4 && ([v4 eventUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    v7 = [v6 oslog];

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = v4;
      _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "SET_EVENT: Adding CoreAnalytics event to submission queue: %{public}@", &v12, 0xCu);
    }

    events = self->_events;
    v9 = [v4 eventUUID];
    [(NSMutableDictionary *)events setSafeObject:v4 forKey:v9];
  }

  else
  {
    v10 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    v9 = [v10 oslog];

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __42__SUCoreAnalyticsEventSubmitter_setEvent___block_invoke_cold_1();
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeEvent:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (v4 && ([v4 eventUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    events = self->_events;
    v7 = [v4 eventUUID];
    v8 = [(NSMutableDictionary *)events objectForKey:v7];

    v9 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    v10 = [v9 oslog];

    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v11)
      {
        v15 = 138543362;
        v16 = v4;
        _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "REMOVE_EVENT: Successfully removed event %{public}@ from queue", &v15, 0xCu);
      }

      v12 = self->_events;
      v10 = [v8 eventUUID];
      [(NSMutableDictionary *)v12 removeObjectForKey:v10];
    }

    else if (v11)
    {
      v15 = 138543362;
      v16 = v4;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "REMOVE_EVENT: Event %{public}@ does not exist. Nothing to do", &v15, 0xCu);
    }
  }

  else
  {
    v13 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    v8 = [v13 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __45__SUCoreAnalyticsEventSubmitter_removeEvent___block_invoke_cold_1();
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeEventsWithName:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_events allValues];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v22;
      *&v7 = 138543362;
      v20 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [v11 eventName];
          v13 = [v12 isEqualToString:v4];

          if (v13)
          {
            v14 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
            v15 = [v14 oslog];

            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v20;
              v26 = v11;
              _os_log_impl(&dword_23193C000, v15, OS_LOG_TYPE_DEFAULT, "REMOVE_EVENTS_WITH_NAME: Removing %{public}@", buf, 0xCu);
            }

            events = self->_events;
            v17 = [v11 eventUUID];
            [(NSMutableDictionary *)events removeObjectForKey:v17];
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v18 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    v5 = [v18 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SUCoreAnalyticsEventSubmitter _queue_removeEventsWithName:];
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_queue_removeAllEvents
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
  v4 = [v3 oslog];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23193C000, v4, OS_LOG_TYPE_DEFAULT, "REMOVE_ALL_EVENTS: Removing all events from submission queue", v5, 2u);
  }

  [(NSMutableDictionary *)self->_events removeAllObjects];
}

- (BOOL)_queue_submitEvent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (!v4 || ([v4 eventUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v13 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    v8 = [v13 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SUCoreAnalyticsEventSubmitter _queue_submitEvent:];
    }

    goto LABEL_16;
  }

  events = self->_events;
  v7 = [v4 eventUUID];
  v8 = [(NSMutableDictionary *)events objectForKey:v7];

  v9 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
  v10 = [v9 oslog];

  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v8)
  {
    if (v11)
    {
      v18 = 138543362;
      v19 = v4;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "SUBMIT: No event found matching %{public}@. Skipping", &v18, 0xCu);
    }

    goto LABEL_16;
  }

  if (v11)
  {
    v18 = 138543362;
    v19 = v8;
    _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "SUBMIT: Found event %{public}@. Sending", &v18, 0xCu);
  }

  if (![(SUCoreAnalyticsEventSubmitter *)self _queue_registerSendEvent:v8])
  {
    v14 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    v15 = [v14 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreAnalyticsEventSubmitter *)v4 _queue_submitEvent:v15];
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  [(SUCoreAnalyticsEventSubmitter *)self _queue_removeEvent:v8];
  v12 = 1;
LABEL_17:

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_queue_submitEventsWithName:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_events allValues];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v24;
      v10 = 1;
      *&v7 = 138543362;
      v22 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [v12 eventName];
          v14 = [v13 isEqualToString:v4];

          if (v14)
          {
            v15 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
            v16 = [v15 oslog];

            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v22;
              v28 = v12;
              _os_log_impl(&dword_23193C000, v16, OS_LOG_TYPE_DEFAULT, "SUBMIT_EVENTS_WITH_NAME: Submitting %{public}@", buf, 0xCu);
            }

            if ([(SUCoreAnalyticsEventSubmitter *)self _queue_registerSendEvent:v12])
            {
              [(SUCoreAnalyticsEventSubmitter *)self _queue_removeEvent:v12];
            }

            else
            {
              v17 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
              v18 = [v17 oslog];

              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = v22;
                v28 = v12;
                _os_log_error_impl(&dword_23193C000, v18, OS_LOG_TYPE_ERROR, "SUBMIT_EVENTS_WITH_NAME: Failed to send event: %{public}@", buf, 0xCu);
              }

              v10 = 0;
            }
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v8);
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v19 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
    v5 = [v19 oslog];

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [SUCoreAnalyticsEventSubmitter _queue_submitEventsWithName:];
    }

    v10 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (BOOL)_queue_submitAllEvents
{
  v29 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = [(NSMutableDictionary *)self->_events allValues];
  v4 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
  v5 = [v4 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349056;
    v28 = [v3 count];
    _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics]: SUBMIT_ALL_EVENTS: Will submit %{public}lu total events", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    v11 = 1;
    *&v8 = 138543362;
    v21 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger:v21];
        v15 = [v14 oslog];

        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = [v13 eventName];
          *buf = v21;
          v28 = v16;
          _os_log_impl(&dword_23193C000, v15, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics]: SUBMIT_ALL_EVENT: Sending event %{public}@", buf, 0xCu);
        }

        if ([(SUCoreAnalyticsEventSubmitter *)self _queue_registerSendEvent:v13])
        {
          [(SUCoreAnalyticsEventSubmitter *)self _queue_removeEvent:v13];
        }

        else
        {
          v17 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
          v18 = [v17 oslog];

          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v28 = v13;
            _os_log_error_impl(&dword_23193C000, v18, OS_LOG_TYPE_ERROR, "[CoreAnalytics]: SUBMIT_ALL_EVENT: Failed to send event: %{public}@", buf, 0xCu);
          }

          v11 = 0;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

- (BOOL)_queue_registerSendEvent:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = [(SUCoreAnalyticsEventSubmitter *)self eventSubmitterLogger];
  v6 = [v5 oslog];

  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = v4;
      _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics] SUBMIT: Calling SendEventLazy for %{public}@", buf, 0xCu);
    }

    v7 = [v4 eventName];
    v11 = v4;
    v8 = AnalyticsSendEventLazy();
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SUCoreAnalyticsEventSubmitter _queue_registerSendEvent:];
    }

    v8 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

id __58__SUCoreAnalyticsEventSubmitter__queue_registerSendEvent___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) eventSubmitterLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_23193C000, v3, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics] SUBMIT: Submitting CoreAnalytics event: %{public}@", &v8, 0xCu);
  }

  v5 = [*(a1 + 40) eventPayload];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_queue_submitEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_23193C000, a2, OS_LOG_TYPE_ERROR, "SUBMIT: failed to send event: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end