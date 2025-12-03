@interface REDuetKnowledgeStore
- (id)_createActionsFromDuetEvents:(id)events;
- (id)_createEventsFromDuetEvents:(id)events;
- (id)_createTimelineFromPredictionTimeline:(id)timeline filterEmptyData:(BOOL)data;
- (id)_createTombstonesFromDuetEvents:(id)events;
- (id)_duetChargingEventStream;
- (id)_duetDonationsStreams;
- (id)_duetQueryForDonatedActionsAfterDate:(id)date onStreams:(id)streams withPredicate:(id)predicate;
- (id)_init;
- (id)_queryForDonatedActionsAfterDate:(id)date streams:(id)streams;
- (id)_queryForUnfilteredDonationsForStream:(id)stream;
- (id)queryForAllDonatedActions;
- (id)queryForAllDonatedActionsWithIdentifier:(id)identifier;
- (id)queryForAllRelevantShortcuts;
- (id)queryForDeletedActionsAfterDate:(id)date;
- (id)queryForDonatedActionsAfterDate:(id)date;
- (id)queryForDuetEventWithIdentifier:(id)identifier;
- (id)queryForHistoricChargingEventsWithMinimumDuration:(double)duration inThePastDays:(unint64_t)days;
- (id)queryForPredictedChargingEventsWithMinimumDuration:(double)duration;
- (id)queryForUnfilteredIntentDonations;
- (id)queryForUnfilteredRelevantShortcutDonations;
- (id)queryForUnfilteredUserActivityDonations;
- (id)sleepInterval;
- (void)_executeQuery:(id)query responseQueue:(id)queue synchronouslyWithBatching:(BOOL)batching completion:(id)completion;
@end

@implementation REDuetKnowledgeStore

- (id)_init
{
  v8.receiver = self;
  v8.super_class = REDuetKnowledgeStore;
  _init = [(RESingleton *)&v8 _init];
  if (_init && CoreDuetLibraryCore_0())
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = get_DKKnowledgeStoreClass_softClass;
    v13 = get_DKKnowledgeStoreClass_softClass;
    if (!get_DKKnowledgeStoreClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __get_DKKnowledgeStoreClass_block_invoke;
      v9[3] = &unk_2785F9BC0;
      v9[4] = &v10;
      __get_DKKnowledgeStoreClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    knowledgeStoreWithDirectReadOnlyAccess = [v3 knowledgeStoreWithDirectReadOnlyAccess];
    v6 = _init[1];
    _init[1] = knowledgeStoreWithDirectReadOnlyAccess;
  }

  return _init;
}

RETimeline *__98__REDuetKnowledgeStore_queryForTopNApplications_withLikelihoodGreaterThan_withTemporalResolution___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = get_DKPredictionTimelineClass_softClass;
  v13 = get_DKPredictionTimelineClass_softClass;
  if (!get_DKPredictionTimelineClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __get_DKPredictionTimelineClass_block_invoke;
    v9[3] = &unk_2785F9BC0;
    v9[4] = &v10;
    __get_DKPredictionTimelineClass_block_invoke(v9);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) _createTimelineFromPredictionTimeline:v3 filterEmptyData:1];
  }

  else
  {
    v6 = objc_alloc_init(RETimeline);
  }

  v7 = v6;

  return v7;
}

- (id)_createTimelineFromPredictionTimeline:(id)timeline filterEmptyData:(BOOL)data
{
  dataCopy = data;
  v39 = *MEMORY[0x277D85DE8];
  timelineCopy = timeline;
  startDate = [timelineCopy startDate];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3042000000;
  v35 = __Block_byref_object_copy__27;
  v36 = __Block_byref_object_dispose__27;
  v37 = 0;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __78__REDuetKnowledgeStore__createTimelineFromPredictionTimeline_filterEmptyData___block_invoke;
  v31[3] = &unk_2785FD388;
  v31[4] = &v32;
  v5 = MEMORY[0x22AABC5E0](v31);
  objc_storeWeak(v33 + 5, v5);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  transitionDates = [timelineCopy transitionDates];
  v7 = [transitionDates countByEnumeratingWithState:&v27 objects:v38 count:16];
  if (v7)
  {
    v8 = *v28;
    do
    {
      v9 = 0;
      v10 = startDate;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(transitionDates);
        }

        v11 = *(*(&v27 + 1) + 8 * v9);
        [v11 timeIntervalSinceDate:v10];
        v13 = v12;
        v14 = [v10 dateByAddingTimeInterval:v12 * 0.5];
        v15 = [timelineCopy valueAtDate:v14];
        if (dataCopy)
        {
          v16 = (v5)[2](v5, v15);

          v15 = v16;
        }

        if (v15)
        {
          [array addObject:v15];
          v17 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
          [array2 addObject:v17];
        }

        startDate = v11;

        ++v9;
        v10 = startDate;
      }

      while (v7 != v9);
      v7 = [transitionDates countByEnumeratingWithState:&v27 objects:v38 count:16];
    }

    while (v7);
  }

  v18 = [RETimeline alloc];
  startDate2 = [timelineCopy startDate];
  v20 = [(RETimeline *)v18 initWithStartDate:startDate2 values:array durations:array2];

  _Block_object_dispose(&v32, 8);
  objc_destroyWeak(&v37);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

id __78__REDuetKnowledgeStore__createTimelineFromPredictionTimeline_filterEmptyData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    if (fabs(v4) < 0.00000011920929)
    {
      v5 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
      v10 = MEMORY[0x277D85DD0];
      v11 = 3221225472;
      v12 = __78__REDuetKnowledgeStore__createTimelineFromPredictionTimeline_filterEmptyData___block_invoke_2;
      v13 = &unk_2785FD360;
      v7 = *(a1 + 32);
      v14 = v6;
      v15 = v7;
      v8 = v6;
      [v3 enumerateKeysAndObjectsUsingBlock:&v10];
      v5 = [v8 copy];

      goto LABEL_7;
    }
  }

  v5 = v3;
LABEL_7:

  return v5;
}

void __78__REDuetKnowledgeStore__createTimelineFromPredictionTimeline_filterEmptyData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(*(a1 + 40) + 8);
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((v5 + 40));
  v8 = WeakRetained[2](WeakRetained, v6);

  if (v8)
  {
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }
}

- (id)sleepInterval
{
  if (CoreDuetLibraryCore_0())
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v3 = get_DKPredictorClass_softClass;
    v17 = get_DKPredictorClass_softClass;
    if (!get_DKPredictorClass_softClass)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __get_DKPredictorClass_block_invoke;
      v13[3] = &unk_2785F9BC0;
      v13[4] = &v14;
      __get_DKPredictorClass_block_invoke(v13);
      v3 = v15[3];
    }

    v4 = v3;
    _Block_object_dispose(&v14, 8);
    v5 = [v3 predictorWithKnowledgeStore:self->_knowledgeStore];
    expectedInBedPeriod = [v5 expectedInBedPeriod];
    v7 = expectedInBedPeriod;
    if (expectedInBedPeriod)
    {
      startDate = [expectedInBedPeriod startDate];

      if (startDate)
      {
        v9 = objc_alloc(MEMORY[0x277CCA970]);
        startDate2 = [v7 startDate];
        endDate = [v7 endDate];
        startDate = [v9 initWithStartDate:startDate2 endDate:endDate];
      }
    }

    else
    {
      startDate = 0;
    }
  }

  else
  {
    startDate = 0;
  }

  return startDate;
}

- (id)queryForPredictedChargingEventsWithMinimumDuration:(double)duration
{
  v21[3] = *MEMORY[0x277D85DE8];
  if (CoreDuetLibraryCore_0())
  {
    v5 = [get_DKQueryClass() predicateForEventsWithIntegerValue:1];
    v6 = [get_DKEventQueryClass() predicateForEventsOfMinimumDuration:duration];
    DKQueryClass = get_DKQueryClass();
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    date = [MEMORY[0x277CBEAA8] date];
    v10 = [DKQueryClass predicateForEventsWithStartInDateRangeFrom:distantPast to:date];

    v11 = MEMORY[0x277CCA920];
    v21[0] = v5;
    v21[1] = v6;
    v21[2] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
    v13 = [v11 andPredicateWithSubpredicates:v12];

    DKPredictionQueryClass = get_DKPredictionQueryClass();
    _duetChargingEventStream = [(REDuetKnowledgeStore *)self _duetChargingEventStream];
    v16 = [DKPredictionQueryClass predictionQueryForStream:_duetChargingEventStream withPredicate:v13 withPredictionType:1];

    v17 = objc_alloc_init(REDuetQuery);
    [(REDuetQuery *)v17 setQuery:v16];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __75__REDuetKnowledgeStore_queryForPredictedChargingEventsWithMinimumDuration___block_invoke;
    v20[3] = &unk_2785FD338;
    v20[4] = self;
    [(REDuetQuery *)v17 setTransformBlock:v20];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)queryForHistoricChargingEventsWithMinimumDuration:(double)duration inThePastDays:(unint64_t)days
{
  v28[3] = *MEMORY[0x277D85DE8];
  if (CoreDuetLibraryCore_0())
  {
    date = [MEMORY[0x277CBEAA8] date];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v24 = [currentCalendar dateByAddingUnit:16 value:-days toDate:date options:0];

    v23 = [get_DKQueryClass() predicateForEventsWithIntegerValue:1];
    v22 = [get_DKEventQueryClass() predicateForEventsOfMinimumDuration:duration];
    v9 = [get_DKQueryClass() predicateForEventsWithStartInDateRangeFrom:v24 to:date];
    v10 = MEMORY[0x277CCA920];
    v28[0] = v23;
    v28[1] = v22;
    v28[2] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
    v12 = [v10 andPredicateWithSubpredicates:v11];

    v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    DKEventQueryClass = get_DKEventQueryClass();
    _duetChargingEventStream = [(REDuetKnowledgeStore *)self _duetChargingEventStream];
    v27 = _duetChargingEventStream;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    v26 = v13;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
    v18 = [DKEventQueryClass eventQueryWithPredicate:v12 eventStreams:v16 offset:0 limit:1000 sortDescriptors:v17];

    [v18 setDeduplicateValues:1];
    v19 = objc_alloc_init(REDuetQuery);
    [(REDuetQuery *)v19 setQuery:v18];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __88__REDuetKnowledgeStore_queryForHistoricChargingEventsWithMinimumDuration_inThePastDays___block_invoke;
    v25[3] = &unk_2785FD338;
    v25[4] = self;
    [(REDuetQuery *)v19 setTransformBlock:v25];
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_duetChargingEventStream
{
  DKSystemEventStreamsClass_0 = get_DKSystemEventStreamsClass_0();

  return [DKSystemEventStreamsClass_0 deviceIsPluggedInStream];
}

- (id)_createEventsFromDuetEvents:(id)events
{
  v44 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = eventsCopy;
  v5 = [obj countByEnumeratingWithState:&v30 objects:v43 count:16];
  if (v5)
  {
    v6 = *v31;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = objc_alloc(MEMORY[0x277CCA970]);
        startDate = [v8 startDate];
        endDate = [v8 endDate];
        v12 = [v9 initWithStartDate:startDate endDate:endDate];

        [v8 confidence];
        v14 = v13;
        v15 = [REFeatureValue featureValueWithBool:1];
        v39 = 0;
        v40 = &v39;
        v41 = 0x2050000000;
        v16 = get_DKIdentifierClass_softClass;
        v42 = get_DKIdentifierClass_softClass;
        if (!get_DKIdentifierClass_softClass)
        {
          v34 = MEMORY[0x277D85DD0];
          v35 = 3221225472;
          v36 = __get_DKIdentifierClass_block_invoke;
          v37 = &unk_2785F9BC0;
          v38 = &v39;
          __get_DKIdentifierClass_block_invoke(&v34);
          v16 = v40[3];
        }

        v17 = v16;
        _Block_object_dispose(&v39, 8);
        if (objc_opt_isKindOfClass())
        {
          stringValue = [v8 stringValue];
          v19 = [REFeatureValue featureValueWithString:stringValue];

          v15 = v19;
          goto LABEL_19;
        }

        v39 = 0;
        v40 = &v39;
        v41 = 0x2050000000;
        v20 = get_DKCategoryClass_softClass;
        v42 = get_DKCategoryClass_softClass;
        if (!get_DKCategoryClass_softClass)
        {
          v34 = MEMORY[0x277D85DD0];
          v35 = 3221225472;
          v36 = __get_DKCategoryClass_block_invoke;
          v37 = &unk_2785F9BC0;
          v38 = &v39;
          __get_DKCategoryClass_block_invoke(&v34);
          v20 = v40[3];
        }

        v21 = v20;
        _Block_object_dispose(&v39, 8);
        if (objc_opt_isKindOfClass())
        {
          v22 = +[REFeatureValue featureValueWithInt64:](REFeatureValue, "featureValueWithInt64:", [v8 integerValue]);
          goto LABEL_18;
        }

        v39 = 0;
        v40 = &v39;
        v41 = 0x2050000000;
        v23 = get_DKQuantityClass_softClass;
        v42 = get_DKQuantityClass_softClass;
        if (!get_DKQuantityClass_softClass)
        {
          v34 = MEMORY[0x277D85DD0];
          v35 = 3221225472;
          v36 = __get_DKQuantityClass_block_invoke;
          v37 = &unk_2785F9BC0;
          v38 = &v39;
          __get_DKQuantityClass_block_invoke(&v34);
          v23 = v40[3];
        }

        v24 = v23;
        _Block_object_dispose(&v39, 8);
        if (objc_opt_isKindOfClass())
        {
          [v8 doubleValue];
          v22 = [REFeatureValue featureValueWithDouble:?];
LABEL_18:
          stringValue = v15;
          v15 = v22;
LABEL_19:
        }

        v25 = [REDuetEvent eventWithInterval:v12 value:v15 confidence:v14];
        [v4 addObject:v25];
      }

      v5 = [obj countByEnumeratingWithState:&v30 objects:v43 count:16];
    }

    while (v5);
  }

  v26 = [v4 copy];
  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)queryForAllDonatedActions
{
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [(REDuetKnowledgeStore *)self queryForDonatedActionsAfterDate:distantPast];

  return v4;
}

- (id)queryForAllDonatedActionsWithIdentifier:(id)identifier
{
  v29[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  appRelevantShortcutsStream = [get_DKSystemEventStreamsClass_0() appRelevantShortcutsStream];
  appIntentsStream = [get_DKSystemEventStreamsClass_0() appIntentsStream];
  v29[0] = appIntentsStream;
  appActivityStream = [get_DKSystemEventStreamsClass_0() appActivityStream];
  v29[1] = appActivityStream;
  v29[2] = appRelevantShortcutsStream;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];

  v7 = MEMORY[0x277CCA920];
  DKEventQueryClass = get_DKEventQueryClass();
  name = [appRelevantShortcutsStream name];
  v10 = [DKEventQueryClass predicateForEventsWithStreamName:name];
  v28[0] = v10;
  identifierCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"valueString == %@", identifierCopy];
  v28[1] = identifierCopy;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v13 = [v7 andPredicateWithSubpredicates:v12];

  identifierCopy2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"source.bundleID == %@", identifierCopy];

  v15 = MEMORY[0x277CCA920];
  v27[0] = identifierCopy2;
  v27[1] = v13;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v17 = [v15 orPredicateWithSubpredicates:v16];

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v19 = [v24 copy];
  v20 = [(REDuetKnowledgeStore *)self _duetQueryForDonatedActionsAfterDate:distantPast onStreams:v19 withPredicate:v17];

  v21 = objc_alloc_init(REDuetQuery);
  [(REDuetQuery *)v21 setQuery:v20];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __64__REDuetKnowledgeStore_queryForAllDonatedActionsWithIdentifier___block_invoke;
  v26[3] = &unk_2785FD338;
  v26[4] = self;
  [(REDuetQuery *)v21 setTransformBlock:v26];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)queryForDonatedActionsAfterDate:(id)date
{
  dateCopy = date;
  _duetDonationsStreams = [(REDuetKnowledgeStore *)self _duetDonationsStreams];
  v6 = [(REDuetKnowledgeStore *)self _queryForDonatedActionsAfterDate:dateCopy streams:_duetDonationsStreams];

  return v6;
}

- (id)_queryForDonatedActionsAfterDate:(id)date streams:(id)streams
{
  v21[2] = *MEMORY[0x277D85DE8];
  streamsCopy = streams;
  dateCopy = date;
  appRelevantShortcutsStream = [get_DKSystemEventStreamsClass_0() appRelevantShortcutsStream];
  DKEventQueryClass = get_DKEventQueryClass();
  name = [appRelevantShortcutsStream name];
  v11 = [DKEventQueryClass predicateForEventsWithStreamName:name];

  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT source.bundleID IN {'com.apple.MobileSMS', 'com.apple.InCallService', 'com.apple.mobilesafari', 'com.apple.weather', 'com.apple.mobilephone', 'com.apple.news', 'com.apple.Maps'}"];
  v13 = MEMORY[0x277CCA920];
  v21[0] = v11;
  v21[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  v15 = [v13 orPredicateWithSubpredicates:v14];

  v16 = [(REDuetKnowledgeStore *)self _duetQueryForDonatedActionsAfterDate:dateCopy onStreams:streamsCopy withPredicate:v15];

  v17 = objc_alloc_init(REDuetQuery);
  [(REDuetQuery *)v17 setQuery:v16];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __65__REDuetKnowledgeStore__queryForDonatedActionsAfterDate_streams___block_invoke;
  v20[3] = &unk_2785FD338;
  v20[4] = self;
  [(REDuetQuery *)v17 setTransformBlock:v20];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)queryForAllRelevantShortcuts
{
  v11[1] = *MEMORY[0x277D85DE8];
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  appRelevantShortcutsStream = [get_DKSystemEventStreamsClass_0() appRelevantShortcutsStream];
  v11[0] = appRelevantShortcutsStream;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v6 = [(REDuetKnowledgeStore *)self _duetQueryForDonatedActionsAfterDate:distantPast onStreams:v5 withPredicate:0];

  v7 = objc_alloc_init(REDuetQuery);
  [(REDuetQuery *)v7 setQuery:v6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__REDuetKnowledgeStore_queryForAllRelevantShortcuts__block_invoke;
  v10[3] = &unk_2785FD338;
  v10[4] = self;
  [(REDuetQuery *)v7 setTransformBlock:v10];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)queryForDeletedActionsAfterDate:(id)date
{
  v30 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  _duetDonationsStreams = [(REDuetKnowledgeStore *)self _duetDonationsStreams];
  v7 = [_duetDonationsStreams countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(_duetDonationsStreams);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        DKQueryClass = get_DKQueryClass();
        eventStreamName = [get_DKTombstoneMetadataKeyClass() eventStreamName];
        name = [v11 name];
        v15 = [DKQueryClass predicateForObjectsWithMetadataKey:eventStreamName andStringValue:name];
        [array addObject:v15];
      }

      v8 = [_duetDonationsStreams countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v16 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:array];
  tombstoneStream = [get_DKSystemEventStreamsClass_0() tombstoneStream];
  v28 = tombstoneStream;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v19 = [(REDuetKnowledgeStore *)self _duetQueryForDonatedActionsAfterDate:dateCopy onStreams:v18 withPredicate:v16];

  v20 = objc_alloc_init(REDuetQuery);
  [(REDuetQuery *)v20 setQuery:v19];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__REDuetKnowledgeStore_queryForDeletedActionsAfterDate___block_invoke;
  v23[3] = &unk_2785FD338;
  v23[4] = self;
  [(REDuetQuery *)v20 setTransformBlock:v23];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_duetDonationsStreams
{
  v8[3] = *MEMORY[0x277D85DE8];
  appIntentsStream = [get_DKSystemEventStreamsClass_0() appIntentsStream];
  appActivityStream = [get_DKSystemEventStreamsClass_0() appActivityStream];
  v8[1] = appActivityStream;
  appRelevantShortcutsStream = [get_DKSystemEventStreamsClass_0() appRelevantShortcutsStream];
  v8[2] = appRelevantShortcutsStream;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_duetQueryForDonatedActionsAfterDate:(id)date onStreams:(id)streams withPredicate:(id)predicate
{
  v44[2] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  streamsCopy = streams;
  predicateCopy = predicate;
  if (CoreDuetLibraryCore_0())
  {
    if (dateCopy)
    {
      distantPast = dateCopy;
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
    }

    date = [MEMORY[0x277CBEAA8] date];
    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"((localCreationDate > %@) AND (localCreationDate <= %@))", distantPast, date];
    v13 = v12;
    if (predicateCopy)
    {
      v14 = MEMORY[0x277CCA920];
      v44[0] = v12;
      v44[1] = predicateCopy;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
      v16 = [v14 andPredicateWithSubpredicates:v15];

      v13 = v16;
    }

    v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"localCreationDate" ascending:1];
    DKEventQueryClass = get_DKEventQueryClass();
    v43 = v17;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v20 = [DKEventQueryClass eventQueryWithPredicate:v13 eventStreams:streamsCopy offset:0 limit:10 sortDescriptors:v19];

    [v20 setDeduplicateValues:0];
    if (REProcessIsRelevanced())
    {
      v38 = 0;
      v39 = &v38;
      v40 = 0x2050000000;
      v21 = get_DKIntentMetadataKeyClass_softClass;
      v41 = get_DKIntentMetadataKeyClass_softClass;
      if (!get_DKIntentMetadataKeyClass_softClass)
      {
        v33 = MEMORY[0x277D85DD0];
        v34 = 3221225472;
        v35 = __get_DKIntentMetadataKeyClass_block_invoke;
        v36 = &unk_2785F9BC0;
        v37 = &v38;
        __get_DKIntentMetadataKeyClass_block_invoke(&v33);
        v21 = v39[3];
      }

      v22 = v21;
      _Block_object_dispose(&v38, 8);
      serializedKeyImage = [v21 serializedKeyImage];
      v38 = 0;
      v39 = &v38;
      v40 = 0x2050000000;
      v24 = get_DKRelevantShortcutMetadataKeyClass_softClass;
      v41 = get_DKRelevantShortcutMetadataKeyClass_softClass;
      v42[0] = serializedKeyImage;
      if (!get_DKRelevantShortcutMetadataKeyClass_softClass)
      {
        v33 = MEMORY[0x277D85DD0];
        v34 = 3221225472;
        v35 = __get_DKRelevantShortcutMetadataKeyClass_block_invoke;
        v36 = &unk_2785F9BC0;
        v37 = &v38;
        __get_DKRelevantShortcutMetadataKeyClass_block_invoke(&v33);
        v24 = v39[3];
      }

      v25 = v24;
      _Block_object_dispose(&v38, 8);
      serializedKeyImage2 = [v24 serializedKeyImage];
      v42[1] = serializedKeyImage2;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
      [v20 setExcludedMetadataKeys:v27];
    }

    v10 = v20;
    if (v10)
    {
      get_DKEventQueryClass();
      if (objc_opt_isKindOfClass())
      {
        v28 = v10;
        allDevices = [get_DKEventQueryClass() allDevices];
        [v28 setDeviceIDs:allDevices];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_createActionsFromDuetEvents:(id)events
{
  v21 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [REDonatedAction alloc];
        v13 = [(REDonatedAction *)v12 initWithEvent:v10 filtered:1, v16];
        if (v13)
        {
          [v4 addObject:v13];
        }

        [MEMORY[0x277CD4000] _resetCache];

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_createTombstonesFromDuetEvents:(id)events
{
  v31 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = eventsCopy;
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        value = [v9 value];
        stringValue = [value stringValue];

        metadata = [v9 metadata];
        eventStreamName = [get_DKTombstoneMetadataKeyClass() eventStreamName];
        v15 = [metadata objectForKeyedSubscript:eventStreamName];

        localCreationDate = [v9 localCreationDate];
        v17 = localCreationDate;
        if (stringValue)
        {
          v18 = v15 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (!v18 && localCreationDate != 0)
        {
          v28[0] = @"uuid";
          v28[1] = @"streamName";
          v29[0] = stringValue;
          v29[1] = v15;
          v28[2] = @"localSaveDate";
          v29[2] = localCreationDate;
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3];
          [v23 addObject:v20];
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v6);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_executeQuery:(id)query responseQueue:(id)queue synchronouslyWithBatching:(BOOL)batching completion:(id)completion
{
  queryCopy = query;
  queueCopy = queue;
  completionCopy = completion;
  v13 = CoreDuetLibraryCore_0();
  if (completionCopy && v13)
  {
    if (!queueCopy)
    {
      queueCopy = MEMORY[0x277D85CD0];
      v14 = MEMORY[0x277D85CD0];
    }

    query = [queryCopy query];
    if (query)
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __89__REDuetKnowledgeStore__executeQuery_responseQueue_synchronouslyWithBatching_completion___block_invoke_2;
      v29[3] = &unk_2785FD3B0;
      v16 = &v30;
      v17 = queryCopy;
      v30 = v17;
      v31 = completionCopy;
      v18 = MEMORY[0x22AABC5E0](v29);
      if (batching)
      {
        v26 = queueCopy;
        v27 = queryCopy;
        v19 = v17;
        v20 = 10;
        do
        {
          v21 = objc_autoreleasePoolPush();
          knowledgeStore = self->_knowledgeStore;
          v28 = 0;
          v23 = [(_DKKnowledgeQuerying *)knowledgeStore executeQuery:query error:&v28];
          v24 = v28;
          v25 = [v23 count];
          (v18)[2](v18, v23, v24);
          [v19 setOffset:v20];

          objc_autoreleasePoolPop(v21);
          if (v24)
          {
            break;
          }

          v20 += 10;
        }

        while (v25 == 10);

        queueCopy = v26;
        queryCopy = v27;
        v16 = &v30;
      }

      else
      {
        [(_DKKnowledgeQuerying *)self->_knowledgeStore executeQuery:query responseQueue:queueCopy withCompletion:v18];
      }
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __89__REDuetKnowledgeStore__executeQuery_responseQueue_synchronouslyWithBatching_completion___block_invoke;
      block[3] = &unk_2785FA040;
      v16 = &v33;
      v33 = completionCopy;
      dispatch_async(queueCopy, block);
    }
  }
}

void __89__REDuetKnowledgeStore__executeQuery_responseQueue_synchronouslyWithBatching_completion___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void __89__REDuetKnowledgeStore__executeQuery_responseQueue_synchronouslyWithBatching_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v6)
  {
    v8 = RELogForDomain(14);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __89__REDuetKnowledgeStore__executeQuery_responseQueue_synchronouslyWithBatching_completion___block_invoke_2_cold_1(v6, v8);
    }
  }

  else
  {
    v10 = [*(a1 + 32) transformBlock];

    if (v10)
    {
      v11 = [*(a1 + 32) transformBlock];
      v9 = (v11)[2](v11, v5);

      goto LABEL_7;
    }

    v8 = RELogForDomain(14);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __89__REDuetKnowledgeStore__executeQuery_responseQueue_synchronouslyWithBatching_completion___block_invoke_2_cold_2(v8);
    }
  }

  v9 = 0;
LABEL_7:
  (*(*(a1 + 40) + 16))();

  objc_autoreleasePoolPop(v7);
}

- (id)queryForDuetEventWithIdentifier:(id)identifier
{
  v19[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (CoreDuetLibraryCore_0())
  {
    DKQueryClass = get_DKQueryClass();
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:identifierCopy];
    v7 = [DKQueryClass predicateForObjectWithUUID:v6];

    v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    DKEventQueryClass = get_DKEventQueryClass();
    _duetDonationsStreams = [(REDuetKnowledgeStore *)self _duetDonationsStreams];
    v19[0] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v12 = [DKEventQueryClass eventQueryWithPredicate:v7 eventStreams:_duetDonationsStreams offset:0 limit:1 sortDescriptors:v11];

    [v12 setReadMetadata:1];
    v13 = v12;
    if (v13)
    {
      get_DKEventQueryClass();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
        allDevices = [get_DKEventQueryClass() allDevices];
        [v14 setDeviceIDs:allDevices];
      }
    }

    v16 = objc_opt_new();
    [v16 setQuery:v13];
    [v16 setTransformBlock:&__block_literal_global_65];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __72__REDuetKnowledgeStore_PrivateQueries__queryForDuetEventWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 firstObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)queryForUnfilteredUserActivityDonations
{
  appActivityStream = [get_DKSystemEventStreamsClass_0() appActivityStream];
  v4 = [(REDuetKnowledgeStore *)self _queryForUnfilteredDonationsForStream:appActivityStream];

  return v4;
}

- (id)queryForUnfilteredIntentDonations
{
  appIntentsStream = [get_DKSystemEventStreamsClass_0() appIntentsStream];
  v4 = [(REDuetKnowledgeStore *)self _queryForUnfilteredDonationsForStream:appIntentsStream];

  return v4;
}

- (id)queryForUnfilteredRelevantShortcutDonations
{
  appRelevantShortcutsStream = [get_DKSystemEventStreamsClass_0() appRelevantShortcutsStream];
  v4 = [(REDuetKnowledgeStore *)self _queryForUnfilteredDonationsForStream:appRelevantShortcutsStream];

  return v4;
}

- (id)_queryForUnfilteredDonationsForStream:(id)stream
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEAA8];
  streamCopy = stream;
  distantPast = [v4 distantPast];
  v15[0] = streamCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v8 = [(REDuetKnowledgeStore *)self _queryForDonatedActionsAfterDate:distantPast streams:v7];

  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"localCreationDate" ascending:0];
  query = [v8 query];
  v14 = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];

  [query setSortDescriptors:v11];
  [v8 setTransformBlock:&__block_literal_global_106_0];

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

id __78__REDuetKnowledgeStore_PrivateQueries___queryForUnfilteredDonationsForStream___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [REDonatedAction alloc];
        v12 = [(REDonatedAction *)v11 initWithEvent:v9 filtered:0, v15];
        if (v12)
        {
          [v3 addObject:v12];
        }

        objc_autoreleasePoolPop(v10);
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

void __89__REDuetKnowledgeStore__executeQuery_responseQueue_synchronouslyWithBatching_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Error executing query: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end