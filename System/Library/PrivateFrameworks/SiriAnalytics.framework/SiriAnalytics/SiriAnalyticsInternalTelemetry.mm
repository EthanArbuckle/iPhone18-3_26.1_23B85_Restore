@interface SiriAnalyticsInternalTelemetry
- (SiriAnalyticsInternalTelemetry)initWithPreferences:(id)preferences;
- (void)_trackLogicalClock:(id)clock isDerivativeClock:(BOOL)derivativeClock;
- (void)trackAnyEventEmitted:(id)emitted;
- (void)trackEmittedEvents:(id)events;
- (void)trackEventEmitted:(id)emitted;
- (void)trackFBFError:(int)error forEventData:(id)data;
- (void)trackLogicalClock:(id)clock;
- (void)trackMessageStreamProcessed:(int64_t)processed timeToFirstMessage:(int64_t)message messageCount:(unint64_t)count processingReason:(id)reason failureReason:(id)failureReason;
@end

@implementation SiriAnalyticsInternalTelemetry

id __85__SiriAnalyticsInternalTelemetry_trackRuntimeBootstrapCompleteWithBootstrapTimeInNs___block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v12[0] = @"hourOfDay";
  v2 = MEMORY[0x1E696AD98];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v4 components:32 fromDate:v3];
  v6 = [v5 hour];

  v7 = [v2 numberWithInteger:v6];
  v12[1] = @"bootstrapTimeInNs";
  v13[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 32)];
  v13[1] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __77__SiriAnalyticsInternalTelemetry_trackRuntimeBootstrapWithKillSwitchEnabled___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11[0] = @"killSwitchEnabled";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v11[1] = @"hourOfDay";
  v12[0] = v1;
  v2 = MEMORY[0x1E696AD98];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v4 components:32 fromDate:v3];
  v6 = [v5 hour];

  v7 = [v2 numberWithInteger:v6];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __64__SiriAnalyticsInternalTelemetry_trackMessageStagedWithSuccess___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v5 = @"success";
  v1 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)trackFBFError:(int)error forEventData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  AnalyticsSendEventLazy();
}

id __61__SiriAnalyticsInternalTelemetry_trackFBFError_forEventData___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"eventSize";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "length")}];
  v7[1] = @"errorEnum";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithInt:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)trackMessageStreamProcessed:(int64_t)processed timeToFirstMessage:(int64_t)message messageCount:(unint64_t)count processingReason:(id)reason failureReason:(id)failureReason
{
  reasonCopy = reason;
  failureReasonCopy = failureReason;
  v9 = failureReasonCopy;
  v10 = reasonCopy;
  AnalyticsSendEventLazy();
}

id __125__SiriAnalyticsInternalTelemetry_trackMessageStreamProcessed_timeToFirstMessage_messageCount_processingReason_failureReason___block_invoke(void *a1)
{
  v13[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF90]);
  v12[0] = @"processedInNanoseconds";
  v3 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
  v13[0] = v3;
  v12[1] = @"timeToFirstMessage";
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a1[7]];
  v13[1] = v4;
  v12[2] = @"messageCount";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1[8]];
  v12[3] = @"reason";
  v6 = a1[4];
  v13[2] = v5;
  v13[3] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
  v8 = [v2 initWithDictionary:v7];

  v9 = a1[5];
  if (v9)
  {
    [v8 setValue:v9 forKey:@"failureReason"];
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)_trackLogicalClock:(id)clock isDerivativeClock:(BOOL)derivativeClock
{
  clockCopy = clock;
  v4 = clockCopy;
  AnalyticsSendEventLazy();
}

id __71__SiriAnalyticsInternalTelemetry__trackLogicalClock_isDerivativeClock___block_invoke(uint64_t a1)
{
  v16[4] = *MEMORY[0x1E69E9840];
  v15[0] = @"isolated";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v16[0] = v2;
  v15[1] = @"messageCount";
  v3 = MEMORY[0x1E696AD98];
  v4 = [*(a1 + 32) clockStatistics];
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(v4, "messagesEmitted")}];
  v16[1] = v5;
  v15[2] = @"clockAge";
  v6 = MEMORY[0x1E696AD98];
  v7 = [*(a1 + 32) clockStatistics];
  v8 = [v6 numberWithUnsignedLongLong:{objc_msgSend(v7, "clockAgeInNanoseconds")}];
  v16[2] = v8;
  v15[3] = @"utilizationLifetime";
  v9 = MEMORY[0x1E696AD98];
  v10 = [*(a1 + 32) clockStatistics];
  v11 = [v9 numberWithUnsignedLongLong:{objc_msgSend(v10, "utilizationLifetimeInNanoseconds")}];
  v16[3] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)trackLogicalClock:(id)clock
{
  clockCopy = clock;
  [(SiriAnalyticsInternalTelemetry *)self _trackLogicalClock:clockCopy isDerivativeClock:0];
  derivativeClocks = [clockCopy derivativeClocks];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__SiriAnalyticsInternalTelemetry_trackLogicalClock___block_invoke;
  v6[3] = &unk_1E8586C68;
  v6[4] = self;
  [derivativeClocks enumerateObjectsUsingBlock:v6];
}

- (void)trackAnyEventEmitted:(id)emitted
{
  emittedCopy = emitted;
  isInternal = self->_isInternal;
  v4 = emittedCopy;
  AnalyticsSendEventLazy();
}

id __55__SiriAnalyticsInternalTelemetry_trackAnyEventEmitted___block_invoke(uint64_t a1)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v21[0] = @"hourOfDay";
  v2 = MEMORY[0x1E696AD98];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v4 components:32 fromDate:v3];
  v6 = [v5 hour];

  v7 = [v2 numberWithInteger:v6];
  v21[1] = @"byteSize";
  v22[0] = v7;
  v8 = MEMORY[0x1E696AD98];
  v9 = [*(a1 + 32) payload];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "length")}];
  v22[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v12 = [v11 mutableCopy];

  if (*(a1 + 40) == 1)
  {
    v13 = [*(a1 + 32) unwrap];
    v14 = [v13 qualifiedMessageName];

    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = @"unknown";
    }
  }

  else
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = [*(a1 + 32) anyEventType] - 1;
    if (v17 > 0x70)
    {
      v18 = @"UNKNOWN_EVENT";
    }

    else
    {
      v18 = off_1E8586D18[v17];
    }

    v15 = [v16 stringWithFormat:@"anyEvent.%@", v18];
  }

  [v12 setObject:v15 forKey:@"messageType"];

  v19 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)trackEventEmitted:(id)emitted
{
  emittedCopy = emitted;
  isInternal = self->_isInternal;
  v4 = emittedCopy;
  AnalyticsSendEventLazy();
}

id __52__SiriAnalyticsInternalTelemetry_trackEventEmitted___block_invoke(uint64_t a1)
{
  v19[2] = *MEMORY[0x1E69E9840];
  v18[0] = @"hourOfDay";
  v2 = MEMORY[0x1E696AD98];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [v4 components:32 fromDate:v3];
  v6 = [v5 hour];

  v7 = [v2 numberWithInteger:v6];
  v18[1] = @"messageType";
  v19[0] = v7;
  v8 = [*(a1 + 32) underlyingMessage];
  v9 = [v8 qualifiedMessageName];
  v19[1] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v11 = [v10 mutableCopy];

  if (*(a1 + 40) == 1)
  {
    v12 = [*(a1 + 32) storageRepresentation];
    v13 = MEMORY[0x1E696AD98];
    v14 = [v12 payload];
    v15 = [v13 numberWithUnsignedInteger:{objc_msgSend(v14, "length")}];
    [v11 setObject:v15 forKey:@"byteSize"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)trackEmittedEvents:(id)events
{
  v15 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [eventsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        [(SiriAnalyticsInternalTelemetry *)self trackEventEmitted:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [eventsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (SiriAnalyticsInternalTelemetry)initWithPreferences:(id)preferences
{
  preferencesCopy = preferences;
  v8.receiver = self;
  v8.super_class = SiriAnalyticsInternalTelemetry;
  v5 = [(SiriAnalyticsInternalTelemetry *)&v8 init];
  if (v5)
  {
    if (SiriAnalyticsIsInternalInstall_onceToken != -1)
    {
      dispatch_once(&SiriAnalyticsIsInternalInstall_onceToken, &__block_literal_global_884);
    }

    v6 = SiriAnalyticsIsInternalInstall_isInternal;
    v5->_isInternal = SiriAnalyticsIsInternalInstall_isInternal;
    if (v6 == 1 && [preferencesCopy simulateCustomerImage])
    {
      v5->_isInternal = 0;
    }
  }

  return v5;
}

@end