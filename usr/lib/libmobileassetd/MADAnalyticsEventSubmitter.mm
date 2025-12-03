@interface MADAnalyticsEventSubmitter
- (MADAnalyticsEventSubmitter)init;
- (void)_queue_registerSendEvent:(id)event;
- (void)_queue_removeAllEvents;
- (void)_queue_removeEvent:(id)event;
- (void)_queue_removeEventsWithName:(id)name;
- (void)_queue_setEvent:(id)event;
- (void)_queue_submitAllEvents;
- (void)_queue_submitEvent:(id)event;
- (void)setEvent:(id)event;
- (void)submitAllEvents;
- (void)submitEvent:(id)event;
@end

@implementation MADAnalyticsEventSubmitter

- (MADAnalyticsEventSubmitter)init
{
  v9.receiver = self;
  v9.super_class = MADAnalyticsEventSubmitter;
  v2 = [(MADAnalyticsEventSubmitter *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    events = v2->_events;
    v2->_events = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.mobileassetd.MADAnalyticsEventSubmitterQueue", v5);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v6;
  }

  return v2;
}

- (void)setEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __39__MADAnalyticsEventSubmitter_setEvent___block_invoke;
  v7[3] = &unk_4B2B18;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_sync(stateQueue, v7);
}

void __39__MADAnalyticsEventSubmitter_setEvent___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = *(a1 + 40);

    [v3 _queue_setEvent:?];
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v4 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "SET_EVENT: Nil event passed to setEvent", v5, 2u);
    }
  }
}

- (void)submitEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __42__MADAnalyticsEventSubmitter_submitEvent___block_invoke;
  v7[3] = &unk_4B2B18;
  v8 = eventCopy;
  selfCopy = self;
  v6 = eventCopy;
  dispatch_sync(stateQueue, v7);
}

void __42__MADAnalyticsEventSubmitter_submitEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 && ([v2 eventUUID], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    [v4 _queue_submitEvent:v5];
  }

  else
  {
    v6 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "SUBMIT_EVENT: Nil/invalid event passed to submit", v7, 2u);
    }
  }
}

- (void)submitAllEvents
{
  dispatch_assert_queue_not_V2(self->_stateQueue);
  stateQueue = self->_stateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__MADAnalyticsEventSubmitter_submitAllEvents__block_invoke;
  block[3] = &unk_4B2AA0;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (void)_queue_setEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (eventCopy && ([eventCopy eventUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    if (_MAPreferencesIsVerboseLoggingEnabled())
    {
      v6 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = eventCopy;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "SET_EVENT: Adding CoreAnalytics event to submission queue: %{public}@", &v9, 0xCu);
      }
    }

    events = self->_events;
    eventUUID = [eventCopy eventUUID];
    [(NSMutableDictionary *)events setSafeObject:eventCopy forKey:eventUUID];
  }

  else
  {
    eventUUID = _MADLog(@"Analytics");
    if (os_log_type_enabled(eventUUID, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_0, eventUUID, OS_LOG_TYPE_ERROR, "SET_EVENT: Nil event passed to setEvent", &v9, 2u);
    }
  }
}

- (void)_queue_removeEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (eventCopy && ([eventCopy eventUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    events = self->_events;
    eventUUID = [eventCopy eventUUID];
    v8 = [(NSMutableDictionary *)events objectForKey:eventUUID];

    IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled();
    if (v8)
    {
      if (IsVerboseLoggingEnabled)
      {
        v10 = _MADLog(@"Analytics");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138543362;
          v14 = eventCopy;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "REMOVE_EVENT: Successfully removed event %{public}@ from queue", &v13, 0xCu);
        }
      }

      v11 = self->_events;
      eventUUID2 = [v8 eventUUID];
      [(NSMutableDictionary *)v11 removeObjectForKey:eventUUID2];
    }

    else
    {
      if (!IsVerboseLoggingEnabled)
      {
        goto LABEL_12;
      }

      eventUUID2 = _MADLog(@"Analytics");
      if (os_log_type_enabled(eventUUID2, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = eventCopy;
        _os_log_impl(&dword_0, eventUUID2, OS_LOG_TYPE_DEFAULT, "REMOVE_EVENT: Event %{public}@ does not exist. Nothing to do", &v13, 0xCu);
      }
    }
  }

  else
  {
    v8 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "REMOVE_EVENT: Nil event name passed to removeEvent", &v13, 2u);
    }
  }

LABEL_12:
}

- (void)_queue_removeEventsWithName:(id)name
{
  nameCopy = name;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (nameCopy)
  {
    allValues = [(NSMutableDictionary *)self->_events allValues];
    IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = allValues;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v21;
      *&v9 = 138543362;
      v19 = v9;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          eventName = [v13 eventName];
          v15 = [eventName isEqualToString:nameCopy];

          if (v15)
          {
            if (IsVerboseLoggingEnabled)
            {
              v16 = _MADLog(@"Analytics");
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v19;
                v25 = v13;
                _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "REMOVE_EVENTS_WITH_NAME: Removing %{public}@", buf, 0xCu);
              }
            }

            events = self->_events;
            eventUUID = [v13 eventUUID];
            [(NSMutableDictionary *)events removeObjectForKey:eventUUID];
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "REMOVE_EVENTS_WITH_NAME: Nil event name passed to removeEvent", buf, 2u);
    }
  }
}

- (void)_queue_removeAllEvents
{
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = _MADLog(@"Analytics");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "REMOVE_ALL_EVENTS: Removing all events from submission queue", v4, 2u);
  }

  [(NSMutableDictionary *)self->_events removeAllObjects];
}

- (void)_queue_submitEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (eventCopy && ([eventCopy eventUUID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    events = self->_events;
    eventUUID = [eventCopy eventUUID];
    v8 = [(NSMutableDictionary *)events objectForKey:eventUUID];

    IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled();
    if (v8)
    {
      if (IsVerboseLoggingEnabled)
      {
        v10 = _MADLog(@"Analytics");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 138543362;
          v13 = v8;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "SUBMIT: Found event %{public}@. Sending", &v12, 0xCu);
        }
      }

      [(MADAnalyticsEventSubmitter *)self _queue_registerSendEvent:v8];
      [(MADAnalyticsEventSubmitter *)self _queue_removeEvent:v8];
    }

    else if (IsVerboseLoggingEnabled)
    {
      v11 = _MADLog(@"Analytics");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543362;
        v13 = eventCopy;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "SUBMIT: No event found matching %{public}@. Skipping", &v12, 0xCu);
      }
    }
  }

  else
  {
    v8 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "SUBMIT: nil event/uuid passed to submit", &v12, 2u);
    }
  }
}

- (void)_queue_submitAllEvents
{
  dispatch_assert_queue_V2(self->_stateQueue);
  allValues = [(NSMutableDictionary *)self->_events allValues];
  v4 = _MADLog(@"Analytics");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = [allValues count];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics]: SUBMIT_ALL_EVENTS: Will submit %lu total events", buf, 0xCu);
  }

  IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = allValues;
  v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138543362;
    v15 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if (IsVerboseLoggingEnabled)
        {
          v13 = _MADLog(@"Analytics");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            eventName = [v11 eventName];
            *buf = v15;
            v23 = eventName;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics]: SUBMIT_ALL_EVENT: Sending event %{public}@", buf, 0xCu);
          }
        }

        [(MADAnalyticsEventSubmitter *)self _queue_registerSendEvent:v11, v15];
        [(MADAnalyticsEventSubmitter *)self _queue_removeEvent:v11];
        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)_queue_registerSendEvent:(id)event
{
  eventCopy = event;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (!eventCopy)
  {
    v8 = _MADLog(@"Analytics");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v9 = "[CoreAnalytics] SUBMIT: NO -- Unable to register sending null CoreAnalytics event. ";
    v10 = v8;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 2;
LABEL_12:
    _os_log_impl(&dword_0, v10, v11, v9, buf, v12);
    goto LABEL_13;
  }

  IsVerboseLoggingEnabled = _MAPreferencesIsVerboseLoggingEnabled();
  if (!&_AnalyticsSendEventLazy)
  {
    v8 = _MADLog(@"Analytics");
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *buf = 138543362;
    v15 = eventCopy;
    v9 = "[CoreAnalytics] SUBMIT: NO -- Unable to invoke CoreAnalytics on this OS for event %{public}@";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
    goto LABEL_12;
  }

  if (IsVerboseLoggingEnabled)
  {
    v6 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = eventCopy;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics] SUBMIT: Calling SendEventLazy for %{public}@", buf, 0xCu);
    }
  }

  eventName = [eventCopy eventName];
  v13 = eventCopy;
  AnalyticsSendEventLazy();

  v8 = v13;
LABEL_13:
}

id __55__MADAnalyticsEventSubmitter__queue_registerSendEvent___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = _MADLog(@"Analytics");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[CoreAnalytics] SUBMIT: YES -- Submitting CoreAnalytics event: %{public}@", &v6, 0xCu);
    }
  }

  v4 = [*(a1 + 32) eventPayload];

  return v4;
}

@end