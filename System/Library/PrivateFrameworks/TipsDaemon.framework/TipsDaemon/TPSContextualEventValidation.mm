@interface TPSContextualEventValidation
+ (id)_eventProviderForContextualEvent:(id)event;
+ (id)contextualEventFromEventDictionary:(id)dictionary;
- (BOOL)isRegistrable;
- (TPSContextualEventValidation)initWithContextualEvent:(id)event;
- (void)dataProvider:(id)provider didFinishQueryWithResults:(id)results;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSContextualEventValidation

- (TPSContextualEventValidation)initWithContextualEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = TPSContextualEventValidation;
  v6 = [(TPSTargetingValidation *)&v9 initWithTargetContext:MEMORY[0x277CBEC10]];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, event);
  }

  return v7;
}

- (BOOL)isRegistrable
{
  v2 = MEMORY[0x277D71730];
  value = [(TPSTargetingValidation *)self value];
  v4 = [v2 typeFromEventDictionary:value];

  return v4 == 3;
}

- (void)validateWithCompletion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  event = [(TPSContextualEventValidation *)self event];

  if (!event)
  {
    v6 = objc_opt_class();
    value = [(TPSTargetingValidation *)self value];
    v8 = [v6 contextualEventFromEventDictionary:value];
    [(TPSContextualEventValidation *)self setEvent:v8];

    event2 = [(TPSContextualEventValidation *)self event];

    if (!event2)
    {
      targeting = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(targeting, OS_LOG_TYPE_INFO))
      {
        value2 = [(TPSTargetingValidation *)self value];
        *buf = 138412290;
        v29 = value2;
        v24 = "Failed to create event from value: %@";
        goto LABEL_11;
      }

LABEL_12:

      eventSinceDate = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
      completionCopy[2](completionCopy, 0, eventSinceDate);
      goto LABEL_16;
    }
  }

  v10 = objc_opt_class();
  event3 = [(TPSContextualEventValidation *)self event];
  v12 = [v10 _eventProviderForContextualEvent:event3];
  [(TPSContextualEventValidation *)self setEventProvider:v12];

  eventProvider = [(TPSContextualEventValidation *)self eventProvider];

  if (!eventProvider)
  {
    targeting = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting, OS_LOG_TYPE_INFO))
    {
      value2 = [(TPSContextualEventValidation *)self event];
      *buf = 138412290;
      v29 = value2;
      v24 = "Failed to create event provider from event: %@";
LABEL_11:
      _os_log_impl(&dword_232D6F000, targeting, OS_LOG_TYPE_INFO, v24, buf, 0xCu);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  event4 = [(TPSContextualEventValidation *)self event];
  eventSinceDate = [event4 eventSinceDate];

  if (eventSinceDate && ([MEMORY[0x277CBEAA8] now], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "compare:", eventSinceDate), v16, v17 == -1))
  {
    targeting2 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(targeting2, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = eventSinceDate;
      _os_log_impl(&dword_232D6F000, targeting2, OS_LOG_TYPE_INFO, "Event since date (%@) is the future - skipping", buf, 0xCu);
    }

    completionCopy[2](completionCopy, 0, 0);
  }

  else
  {
    [(TPSContextualEventValidation *)self setCompletionHandler:completionCopy];
    eventProvider2 = [(TPSContextualEventValidation *)self eventProvider];
    [eventProvider2 setDelegate:self];

    eventProvider3 = [(TPSContextualEventValidation *)self eventProvider];
    event5 = [(TPSContextualEventValidation *)self event];
    v27 = event5;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    [eventProvider3 queryEvents:v21];
  }

LABEL_16:

  v26 = *MEMORY[0x277D85DE8];
}

+ (id)contextualEventFromEventDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [MEMORY[0x277D71730] typeFromEventDictionary:dictionaryCopy];
  if (v4 == 3)
  {
    v6 = [MEMORY[0x277D71718] contextualBiomeEventFromDictionary:dictionaryCopy];
    goto LABEL_7;
  }

  v5 = v4;
  if (v4 == 2)
  {
    v6 = [objc_alloc(MEMORY[0x277D71728]) initWithDictionary:dictionaryCopy];
    goto LABEL_7;
  }

  if (!v4)
  {
    v6 = [MEMORY[0x277D71718] contextualBiomeEventFromDuetEventDictionary:dictionaryCopy];
LABEL_7:
    v7 = v6;
    goto LABEL_11;
  }

  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_ERROR))
  {
    [(TPSContextualEventValidation *)v5 contextualEventFromEventDictionary:targeting];
  }

  v7 = 0;
LABEL_11:

  return v7;
}

+ (id)_eventProviderForContextualEvent:(id)event
{
  type = [event type];
  if (type == 3)
  {
    goto LABEL_4;
  }

  v4 = type;
  if (type == 2)
  {
    v5 = MEMORY[0x277D71700];
    goto LABEL_6;
  }

  if (!type)
  {
LABEL_4:
    v5 = MEMORY[0x277D716C0];
LABEL_6:
    v6 = objc_alloc_init(v5);
    goto LABEL_10;
  }

  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_ERROR))
  {
    [(TPSContextualEventValidation *)v4 _eventProviderForContextualEvent:targeting];
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (void)dataProvider:(id)provider didFinishQueryWithResults:(id)results
{
  firstObject = [results firstObject];
  event = [(TPSContextualEventValidation *)self event];
  status = [event status];

  if (status == 1)
  {
    observationMap = [firstObject observationMap];
    v10 = [observationMap count];
    event2 = [(TPSContextualEventValidation *)self event];
    v9 = v10 >= [event2 minObservationCount];

    goto LABEL_5;
  }

  if (!status)
  {
    observationMap = [firstObject observationMap];
    v9 = [observationMap count] == 0;
LABEL_5:

    goto LABEL_9;
  }

  targeting = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting, OS_LOG_TYPE_ERROR))
  {
    [TPSContextualEventValidation dataProvider:targeting didFinishQueryWithResults:?];
  }

  v9 = 0;
LABEL_9:
  targeting2 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(targeting2, OS_LOG_TYPE_DEBUG))
  {
    [(TPSContextualEventValidation *)self dataProvider:v9 didFinishQueryWithResults:targeting2];
  }

  completionHandler = [(TPSContextualEventValidation *)self completionHandler];
  completionHandler[2](completionHandler, v9, 0);

  [(TPSContextualEventValidation *)self setCompletionHandler:0];
}

+ (void)contextualEventFromEventDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_232D6F000, a2, OS_LOG_TYPE_ERROR, "Failed creating contextualEvent. Unsupported/unrecognized eventType: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_eventProviderForContextualEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_232D6F000, a2, OS_LOG_TYPE_ERROR, "Failed finding event provider. Unsupported/unrecognized eventType: %ld", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)dataProvider:(void *)a1 didFinishQueryWithResults:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = [a1 name];
  v5 = [a1 targetContext];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_232D6F000, a2, OS_LOG_TYPE_ERROR, "%@ - targetContext: %@. Unknown Event Status", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dataProvider:(NSObject *)a3 didFinishQueryWithResults:.cold.2(void *a1, char a2, NSObject *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = [a1 name];
  v7 = [a1 targetContext];
  v8 = [a1 event];
  v9 = [v8 debugDescription];
  v11 = 138413058;
  v12 = v6;
  v13 = 2112;
  v14 = v7;
  v15 = 2112;
  v16 = v9;
  v17 = 1024;
  v18 = a2 & 1;
  _os_log_debug_impl(&dword_232D6F000, a3, OS_LOG_TYPE_DEBUG, "%@ - targetContext: %@. Event: %@, Valid: %d", &v11, 0x26u);

  v10 = *MEMORY[0x277D85DE8];
}

@end