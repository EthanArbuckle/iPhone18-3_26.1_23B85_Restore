@interface PPMetricsDispatcher
+ (void)logPayloadForEvent:(id)event payload:(id)payload inBackground:(BOOL)background;
@end

@implementation PPMetricsDispatcher

+ (void)logPayloadForEvent:(id)event payload:(id)payload inBackground:(BOOL)background
{
  backgroundCopy = background;
  eventCopy = event;
  payloadCopy = payload;
  v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-172800.0];
  v10 = +[PPTrialWrapper sharedInstance];
  lastTreatmentUpdate = [v10 lastTreatmentUpdate];

  if (!lastTreatmentUpdate || [lastTreatmentUpdate compare:v9] != 1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__16715;
    v22 = __Block_byref_object_dispose__16716;
    v23 = 0;
    v12 = +[PPMetricsUtils loggingQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __63__PPMetricsDispatcher_logPayloadForEvent_payload_inBackground___block_invoke;
    v13[3] = &unk_278975C50;
    v17 = backgroundCopy;
    v16 = &v18;
    v14 = payloadCopy;
    v15 = eventCopy;
    dispatch_sync(v12, v13);

    if (backgroundCopy)
    {
      dispatch_block_wait(v19[5], 0xFFFFFFFFFFFFFFFFLL);
    }

    _Block_object_dispose(&v18, 8);
  }
}

void __63__PPMetricsDispatcher_logPayloadForEvent_payload_inBackground___block_invoke(uint64_t a1)
{
  v2 = kPPActiveTreatmentsKey_block_invoke_previousLogging;
  if (!kPPActiveTreatmentsKey_block_invoke_previousLogging)
  {
    v3 = MEMORY[0x277CBEA60];
    v4 = [MEMORY[0x277CBEAA8] distantPast];
    v5 = [v3 _pas_proxyArrayWithObject:v4 repetitions:20];
    v6 = [v5 mutableCopy];
    v7 = kPPActiveTreatmentsKey_block_invoke_previousLogging;
    kPPActiveTreatmentsKey_block_invoke_previousLogging = v6;

    v2 = kPPActiveTreatmentsKey_block_invoke_previousLogging;
  }

  v8 = 0.0;
  if (*(a1 + 56) == 1)
  {
    v9 = [v2 firstObject];
    [v9 timeIntervalSinceNow];
    v11 = v10;
    v12 = -v10;

    if (v11 >= -0.5)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0.5;
    }

    v8 = 0.5 - fmax(v13, 0.0);
    v2 = kPPActiveTreatmentsKey_block_invoke_previousLogging;
  }

  [v2 removeObjectAtIndex:0];
  v14 = kPPActiveTreatmentsKey_block_invoke_previousLogging;
  v15 = [MEMORY[0x277CBEAA8] now];
  [v14 addObject:v15];

  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __63__PPMetricsDispatcher_logPayloadForEvent_payload_inBackground___block_invoke_2;
  v24 = &unk_2789797E0;
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v16 = dispatch_block_create(0, &v21);
  v17 = *(*(a1 + 48) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  if (v8 <= 0.0)
  {
    v20 = [PPMetricsUtils loggingQueue:v21];
    dispatch_async(v20, *(*(*(a1 + 48) + 8) + 40));
  }

  else
  {
    if (v8 <= 9223372040.0)
    {
      v19 = dispatch_time(0, (v8 * 1000000000.0));
    }

    else
    {
      v19 = -1;
    }

    v20 = [PPMetricsUtils loggingQueue:v21];
    dispatch_after(v19, v20, *(*(*(a1 + 48) + 8) + 40));
  }
}

void __63__PPMetricsDispatcher_logPayloadForEvent_payload_inBackground___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) mutableCopy];
  v2 = +[PPTrialWrapper sharedInstance];
  v3 = [v2 concatenatedTreatmentNames];
  v4 = [v3 _pas_stringBackedByUTF8CString];
  [v6 setObject:v4 forKeyedSubscript:@"activeTreatments"];

  v5 = [*(a1 + 40) _pas_stringBackedByUTF8CString];
  AnalyticsSendEvent();
}

@end