@interface TPSContextualEventValidation
+ (id)_eventProviderForContextualEvent:(id)a3;
+ (id)contextualEventFromEventDictionary:(id)a3;
- (BOOL)isRegistrable;
- (TPSContextualEventValidation)initWithContextualEvent:(id)a3;
- (void)dataProvider:(id)a3 didFinishQueryWithResults:(id)a4;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSContextualEventValidation

- (TPSContextualEventValidation)initWithContextualEvent:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPSContextualEventValidation;
  v6 = [(TPSTargetingValidation *)&v9 initWithTargetContext:MEMORY[0x277CBEC10]];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_event, a3);
  }

  return v7;
}

- (BOOL)isRegistrable
{
  v2 = MEMORY[0x277D71730];
  v3 = [(TPSTargetingValidation *)self value];
  v4 = [v2 typeFromEventDictionary:v3];

  return v4 == 3;
}

- (void)validateWithCompletion:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TPSContextualEventValidation *)self event];

  if (!v5)
  {
    v6 = objc_opt_class();
    v7 = [(TPSTargetingValidation *)self value];
    v8 = [v6 contextualEventFromEventDictionary:v7];
    [(TPSContextualEventValidation *)self setEvent:v8];

    v9 = [(TPSContextualEventValidation *)self event];

    if (!v9)
    {
      v22 = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [(TPSTargetingValidation *)self value];
        *buf = 138412290;
        v29 = v23;
        v24 = "Failed to create event from value: %@";
        goto LABEL_11;
      }

LABEL_12:

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
      v4[2](v4, 0, v15);
      goto LABEL_16;
    }
  }

  v10 = objc_opt_class();
  v11 = [(TPSContextualEventValidation *)self event];
  v12 = [v10 _eventProviderForContextualEvent:v11];
  [(TPSContextualEventValidation *)self setEventProvider:v12];

  v13 = [(TPSContextualEventValidation *)self eventProvider];

  if (!v13)
  {
    v22 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [(TPSContextualEventValidation *)self event];
      *buf = 138412290;
      v29 = v23;
      v24 = "Failed to create event provider from event: %@";
LABEL_11:
      _os_log_impl(&dword_232D6F000, v22, OS_LOG_TYPE_INFO, v24, buf, 0xCu);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v14 = [(TPSContextualEventValidation *)self event];
  v15 = [v14 eventSinceDate];

  if (v15 && ([MEMORY[0x277CBEAA8] now], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "compare:", v15), v16, v17 == -1))
  {
    v25 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = v15;
      _os_log_impl(&dword_232D6F000, v25, OS_LOG_TYPE_INFO, "Event since date (%@) is the future - skipping", buf, 0xCu);
    }

    v4[2](v4, 0, 0);
  }

  else
  {
    [(TPSContextualEventValidation *)self setCompletionHandler:v4];
    v18 = [(TPSContextualEventValidation *)self eventProvider];
    [v18 setDelegate:self];

    v19 = [(TPSContextualEventValidation *)self eventProvider];
    v20 = [(TPSContextualEventValidation *)self event];
    v27 = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    [v19 queryEvents:v21];
  }

LABEL_16:

  v26 = *MEMORY[0x277D85DE8];
}

+ (id)contextualEventFromEventDictionary:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D71730] typeFromEventDictionary:v3];
  if (v4 == 3)
  {
    v6 = [MEMORY[0x277D71718] contextualBiomeEventFromDictionary:v3];
    goto LABEL_7;
  }

  v5 = v4;
  if (v4 == 2)
  {
    v6 = [objc_alloc(MEMORY[0x277D71728]) initWithDictionary:v3];
    goto LABEL_7;
  }

  if (!v4)
  {
    v6 = [MEMORY[0x277D71718] contextualBiomeEventFromDuetEventDictionary:v3];
LABEL_7:
    v7 = v6;
    goto LABEL_11;
  }

  v8 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(TPSContextualEventValidation *)v5 contextualEventFromEventDictionary:v8];
  }

  v7 = 0;
LABEL_11:

  return v7;
}

+ (id)_eventProviderForContextualEvent:(id)a3
{
  v3 = [a3 type];
  if (v3 == 3)
  {
    goto LABEL_4;
  }

  v4 = v3;
  if (v3 == 2)
  {
    v5 = MEMORY[0x277D71700];
    goto LABEL_6;
  }

  if (!v3)
  {
LABEL_4:
    v5 = MEMORY[0x277D716C0];
LABEL_6:
    v6 = objc_alloc_init(v5);
    goto LABEL_10;
  }

  v7 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [(TPSContextualEventValidation *)v4 _eventProviderForContextualEvent:v7];
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (void)dataProvider:(id)a3 didFinishQueryWithResults:(id)a4
{
  v5 = [a4 firstObject];
  v6 = [(TPSContextualEventValidation *)self event];
  v7 = [v6 status];

  if (v7 == 1)
  {
    v8 = [v5 observationMap];
    v10 = [v8 count];
    v11 = [(TPSContextualEventValidation *)self event];
    v9 = v10 >= [v11 minObservationCount];

    goto LABEL_5;
  }

  if (!v7)
  {
    v8 = [v5 observationMap];
    v9 = [v8 count] == 0;
LABEL_5:

    goto LABEL_9;
  }

  v12 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [TPSContextualEventValidation dataProvider:v12 didFinishQueryWithResults:?];
  }

  v9 = 0;
LABEL_9:
  v13 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [(TPSContextualEventValidation *)self dataProvider:v9 didFinishQueryWithResults:v13];
  }

  v14 = [(TPSContextualEventValidation *)self completionHandler];
  v14[2](v14, v9, 0);

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