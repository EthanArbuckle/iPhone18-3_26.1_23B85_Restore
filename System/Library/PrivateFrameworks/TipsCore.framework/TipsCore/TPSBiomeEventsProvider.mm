@interface TPSBiomeEventsProvider
+ (id)_eventSinceDateForContextualEvent:(id)event;
+ (unint64_t)_limitForContextualBiomeEvent:(id)event;
- (TPSBiomeEventsProvider)init;
- (TPSBiomeEventsProvider)initWithBiomeDataProvider:(id)provider;
- (id)_registrationIDForEvent:(id)event;
- (id)_wakingRegistrationIDForEvent:(id)event;
- (void)_processProviderResults:(id)results bookmark:(id)bookmark forEvent:(id)event;
- (void)_registerToGetNotifiedWithEvents:(id)events clientIdentifier:(id)identifier;
- (void)deregisterEventsForCallback:(id)callback;
- (void)queryEvents:(id)events;
@end

@implementation TPSBiomeEventsProvider

- (TPSBiomeEventsProvider)init
{
  v3 = objc_alloc_init(TPSBiomeDataProvider);
  v4 = [(TPSBiomeEventsProvider *)self initWithBiomeDataProvider:v3];

  return v4;
}

- (TPSBiomeEventsProvider)initWithBiomeDataProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = TPSBiomeEventsProvider;
  v6 = [(TPSBiomeEventsProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_biomeDataProvider, provider);
  }

  return v7;
}

- (void)queryEvents:(id)events
{
  v34 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = events;
  v22 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v22)
  {
    v21 = *v30;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v29 + 1) + 8 * i);
        v6 = [objc_opt_class() _limitForContextualBiomeEvent:v5];
        if (v6 == -1)
        {
          [(TPSBiomeEventsProvider *)self _processProviderResults:0 bookmark:0 forEvent:v5];
          goto LABEL_11;
        }

        v7 = v6;
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v9 = [objc_opt_class() _eventSinceDateForContextualEvent:v5];
        [v9 timeIntervalSinceReferenceDate];
        v11 = v10;

        v12 = [v5 publisherFromStartTime:v11];
        bookmark = [v5 bookmark];
        sinkBookmark = [bookmark sinkBookmark];
        objc_initWeak(&location, self);
        v15 = dispatch_get_global_queue(21, 0);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __38__TPSBiomeEventsProvider_queryEvents___block_invoke;
        block[3] = &unk_1E8102828;
        objc_copyWeak(v27, &location);
        block[4] = v5;
        v24 = v12;
        v25 = sinkBookmark;
        v26 = dictionary;
        v27[1] = v7;
        v16 = dictionary;
        v17 = sinkBookmark;
        v18 = v12;
        dispatch_async(v15, block);

        objc_destroyWeak(v27);
        objc_destroyWeak(&location);
      }

      v22 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v19 = *MEMORY[0x1E69E9840];
}

void __38__TPSBiomeEventsProvider_queryEvents___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__5;
  v24 = __Block_byref_object_dispose__5;
  v25 = 0;
  v3 = [*(a1 + 32) filterHandler];
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = [*(a1 + 32) filterHandler];
    v6 = [v4 filterWithIsIncluded:v5];
  }

  else
  {
    v6 = v4;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __38__TPSBiomeEventsProvider_queryEvents___block_invoke_2;
  v17[3] = &unk_1E81027D8;
  v7 = *(a1 + 32);
  v19 = &v20;
  v17[4] = v7;
  v8 = *(a1 + 48);
  v18 = *(a1 + 56);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __38__TPSBiomeEventsProvider_queryEvents___block_invoke_6;
  v13[3] = &unk_1E8102800;
  v9 = *(a1 + 32);
  v15 = v26;
  v13[4] = v9;
  v10 = *(a1 + 56);
  v11 = *(a1 + 72);
  v14 = v10;
  v16 = v11;
  v12 = [v6 drivableSinkWithBookmark:v8 completion:v17 shouldContinue:v13];
  [WeakRetained _processProviderResults:*(a1 + 56) bookmark:v21[5] forEvent:*(a1 + 32)];

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(v26, 8);
}

void __38__TPSBiomeEventsProvider_queryEvents___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [TPSContextualBiomeEventBookmark bookmarkWithSinkBookmark:a3];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 state];
  if (v9 == 1)
  {
    v10 = +[TPSLogger data];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [v5 error];
      v13 = [*(a1 + 32) identifier];
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = v13;
      _os_log_impl(&dword_1C00A7000, v10, OS_LOG_TYPE_INFO, "Sink completed with error: %@ for event: %@", &v15, 0x16u);

      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  if (!v9)
  {
    v10 = +[TPSLogger data];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 32) identifier];
      v12 = [*(a1 + 40) count];
      v15 = 138412546;
      v16 = v11;
      v17 = 2048;
      v18 = v12;
      _os_log_impl(&dword_1C00A7000, v10, OS_LOG_TYPE_INFO, "Sink completed for event: %@ (%lu events found)", &v15, 0x16u);
LABEL_7:

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

  v14 = *MEMORY[0x1E69E9840];
}

BOOL __38__TPSBiomeEventsProvider_queryEvents___block_invoke_6(uint64_t a1, void *a2)
{
  ++*(*(*(a1 + 48) + 8) + 24);
  v3 = MEMORY[0x1E696AFB0];
  v4 = a2;
  v5 = [v3 UUID];
  v6 = [v5 UUIDString];

  v7 = *(a1 + 32);
  v8 = [objc_opt_class() observationDateFromEvent:v4];

  [*(a1 + 40) setObject:v8 forKeyedSubscript:v6];
  v9 = *(*(*(a1 + 48) + 8) + 24) < *(a1 + 56);

  return v9;
}

- (void)_processProviderResults:(id)results bookmark:(id)bookmark forEvent:(id)event
{
  v18[1] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  eventCopy = event;
  bookmarkCopy = bookmark;
  v11 = objc_alloc_init(TPSEventProviderResult);
  identifier = [eventCopy identifier];

  [(TPSEventProviderResult *)v11 setIdentifier:identifier];
  if (resultsCopy)
  {
    v13 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:resultsCopy];
    [(TPSEventProviderResult *)v11 setObservationMap:v13];
  }

  else
  {
    [(TPSEventProviderResult *)v11 setObservationMap:MEMORY[0x1E695E0F8]];
  }

  [(TPSEventProviderResult *)v11 setBookmark:bookmarkCopy];

  date = [MEMORY[0x1E695DF00] date];
  [(TPSEventProviderResult *)v11 setResultDate:date];

  delegate = [(TPSEventsProvider *)self delegate];
  v18[0] = v11;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [delegate dataProvider:self didFinishQueryWithResults:v16];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)deregisterEventsForCallback:(id)callback
{
  v16 = *MEMORY[0x1E69E9840];
  callbackCopy = callback;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [callbackCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(callbackCopy);
        }

        v9 = [(TPSBiomeEventsProvider *)self _registrationIDForEvent:*(*(&v11 + 1) + 8 * v8)];
        [(TPSBiomeDataProvider *)self->_biomeDataProvider deregisterWakingForRegistrationID:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [callbackCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_registerToGetNotifiedWithEvents:(id)events clientIdentifier:(id)identifier
{
  v24 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  identifierCopy = identifier;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = eventsCopy;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        objc_initWeak(&location, self);
        if (identifierCopy)
        {
          [(TPSBiomeEventsProvider *)self _wakingRegistrationIDForEvent:v11];
        }

        else
        {
          [(TPSBiomeEventsProvider *)self _registrationIDForEvent:v11];
        }
        v12 = ;
        biomeDataProvider = self->_biomeDataProvider;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __76__TPSBiomeEventsProvider__registerToGetNotifiedWithEvents_clientIdentifier___block_invoke;
        v16[3] = &unk_1E8102850;
        objc_copyWeak(&v17, &location);
        v16[4] = v11;
        [(TPSBiomeDataProvider *)biomeDataProvider registerWakingForEventWithEvent:v11 registrationID:v12 clientIdentifier:identifierCopy completion:v16];
        objc_destroyWeak(&v17);

        objc_destroyWeak(&location);
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __76__TPSBiomeEventsProvider__registerToGetNotifiedWithEvents_clientIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[TPSLogger default];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1C00A7000, v5, OS_LOG_TYPE_INFO, "Got waking callback for identifier: %@", buf, 0xCu);
  }

  v6 = objc_alloc_init(TPSEventProviderResult);
  v7 = [MEMORY[0x1E695DF00] date];
  v8 = [*(a1 + 32) identifier];
  [(TPSEventProviderResult *)v6 setIdentifier:v8];
  v12 = v8;
  v13 = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [(TPSEventProviderResult *)v6 setObservationMap:v9];

  [(TPSEventProviderResult *)v6 setResultDate:v7];
  v10 = [WeakRetained delegate];
  [v10 dataProvider:WeakRetained didReceiveCallbackWithResult:v6];

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_registrationIDForEvent:(id)event
{
  eventCopy = event;
  v5 = +[TPSCommonDefines mainBundleIdentifier];
  v6 = MEMORY[0x1E696AEC0];
  identifier = [eventCopy identifier];

  v8 = [v6 stringWithFormat:@"%@-%p%@%@", v5, self, @"-event-", identifier];

  return v8;
}

- (id)_wakingRegistrationIDForEvent:(id)event
{
  eventCopy = event;
  v4 = +[TPSCommonDefines mainBundleIdentifier];
  v5 = MEMORY[0x1E696AEC0];
  identifier = [eventCopy identifier];

  v7 = [v5 stringWithFormat:@"%@%@%@", v4, @"-event-", identifier];

  return v7;
}

+ (unint64_t)_limitForContextualBiomeEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy status])
  {
    currentObservationCount = [eventCopy currentObservationCount];
    if (currentObservationCount >= [eventCopy minObservationCount])
    {
      minObservationCount = -1;
    }

    else
    {
      minObservationCount = [eventCopy minObservationCount];
      if (([eventCopy hasLookBackDays] & 1) == 0)
      {
        minObservationCount -= [eventCopy currentObservationCount];
      }
    }
  }

  else
  {
    minObservationCount = 1;
  }

  return minObservationCount;
}

+ (id)_eventSinceDateForContextualEvent:(id)event
{
  eventSinceDate = [event eventSinceDate];
  if (!eventSinceDate)
  {
    date = [MEMORY[0x1E695DF00] date];
    eventSinceDate = [date dateByAddingTimeInterval:-63072000.0];
  }

  return eventSinceDate;
}

@end