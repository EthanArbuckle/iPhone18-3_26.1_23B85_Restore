@interface PPLocalEventStore
+ (id)defaultStore;
- (BOOL)iterEventNameRecordsForClient:(id)a3 error:(id *)a4 block:(id)a5;
- (PPLocalEventStore)init;
- (PPLocalEventStore)initWithTrialWrapper:(id)a3 eventStorage:(id)a4;
- (double)_scoreForSecondsRelativeToNow:(double)a1;
- (id)customObjectForKey:(id)a3 eventIdentifier:(id)a4;
- (id)eventHighlightsFrom:(id)a3 to:(id)a4 options:(int)a5;
- (id)eventNameRecordsForClient:(id)a3 error:(id *)a4;
- (id)eventsFromDate:(id)a3 toDate:(id)a4;
- (id)nlEventsFromDate:(id)a3 toDate:(id)a4;
- (id)resolveEventNameRecordChanges:(id)a3 client:(id)a4 error:(id *)a5;
- (id)scoredEventsWithQuery:(id)a3;
- (uint64_t)_isEventQueryRangeValidWithInterval:(double)a3 andDuration:;
- (void)_clearAndReloadAllCachesAndData;
- (void)_preloadEvents;
- (void)clearCaches;
- (void)enumerateEventsFromEKObjectIDs:(id)a3 expandingRecurrencesInRange:(id)a4 usingBlock:(id)a5;
- (void)registerFeedback:(id)a3 completion:(id)a4;
@end

@implementation PPLocalEventStore

+ (id)defaultStore
{
  if (defaultStore__pasOnceToken10 != -1)
  {
    dispatch_once(&defaultStore__pasOnceToken10, &__block_literal_global_132);
  }

  v3 = defaultStore__pasExprOnceResult_16400;

  return v3;
}

- (void)registerFeedback:(id)a3 completion:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = pp_events_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138739971;
    v12 = v5;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "Event feedback received: %{sensitive}@", &v11, 0xCu);
  }

  v8 = [v5 feedbackItems];
  v9 = [v8 count];

  if (v9)
  {
    [PPFeedbackStorage logFeedback:v5 domain:3 domainStatus:2 inBackground:0];
  }

  if (v6)
  {
    v6[2](v6, 1, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)scoredEventsWithQuery:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = pp_events_log_handle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v73 = v4;
    _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore: scoredEventsWithQuery: %@", buf, 0xCu);
  }

  v6 = +[PPSettings sharedInstance];
  v7 = [v6 bundleIdentifierIsEnabledForDonation:*MEMORY[0x277D3A5F0]];

  if ((v7 & 1) == 0)
  {
    v21 = pp_events_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore: ScoredEvents disabled due to settings", buf, 2u);
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v4;
    v65 = v4;
    if (self)
    {
      v66 = objc_opt_new();
      v9 = [v8 fromDate];
      v10 = [v8 toDate];
      v11 = v9;
      v12 = v10;
      [v11 timeIntervalSinceReferenceDate];
      v14 = v13;
      [v12 timeIntervalSinceDate:v11];
      v16 = v15;
      if ([(PPLocalEventStore *)self _isEventQueryRangeValidWithInterval:v14 andDuration:v15])
      {
        v17 = PPNewEKEventStore();
        v18 = [(PPEventStorage *)self->_storage suggestedEventsInRange:v14 ekStore:v16, v17];
        v19 = objc_opt_new();
        v20 = [MEMORY[0x277D3A390] convertBatchOfEKEvents:v18 calendarInternPool:v19];
      }

      else
      {
        v20 = MEMORY[0x277CBEBF8];
      }

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v23 = v20;
      v47 = [v23 countByEnumeratingWithState:&v67 objects:buf count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v68;
        do
        {
          for (i = 0; i != v48; ++i)
          {
            if (*v68 != v49)
            {
              objc_enumerationMutation(v23);
            }

            v51 = *(*(&v67 + 1) + 8 * i);
            if ([v51 suggestedEventCategory])
            {
              v52 = [v8 matchingCategories];
              if (!v52)
              {
                goto LABEL_41;
              }

              v53 = v52;
              v54 = [v8 matchingCategories];
              v55 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v51, "suggestedEventCategory")}];
              v56 = [v54 containsObject:v55];

              if (v56)
              {
LABEL_41:
                v57 = [objc_alloc(MEMORY[0x277D3A4F8]) initWithPPEvent:v51];
                if (v57)
                {
                  [v66 addObject:v57];
                }
              }
            }
          }

          v48 = [v23 countByEnumeratingWithState:&v67 objects:buf count:16];
        }

        while (v48);
      }

LABEL_47:
LABEL_48:

      v4 = v65;
      goto LABEL_49;
    }

    goto LABEL_54;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v4;
      v65 = v4;
      if (self)
      {
        v23 = objc_opt_new();
        v24 = [v8 fromDate];
        v25 = [v24 dateByAddingTimeInterval:-10368000.0];

        v64 = v8;
        v26 = [v8 toDate];
        v27 = [v26 dateByAddingTimeInterval:10368000.0];

        [v25 timeIntervalSinceReferenceDate];
        v29 = v28;
        v63 = v27;
        [v27 timeIntervalSinceDate:v25];
        v31 = v30;
        v62 = PPNewEKEventStore();
        v32 = [(PPEventStorage *)self->_storage suggestedEventsInRange:v29 ekStore:v31];
        v33 = pp_events_log_handle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = [v32 count];
          *buf = 134217984;
          v73 = v34;
          _os_log_impl(&dword_23224A000, v33, OS_LOG_TYPE_DEFAULT, "[PPLocalEventStore tripEventsWithQuery] Found %lu suggested events in the given range", buf, 0xCu);
        }

        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v35 = v32;
        v36 = [v35 countByEnumeratingWithState:&v67 objects:buf count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v68;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v68 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v67 + 1) + 8 * j);
              v41 = +[PPTripAggregator keyForCategory:](PPTripAggregator, "keyForCategory:", [v40 pp_suggestedCategory]);
              if (v41)
              {
                v42 = [v23 objectForKeyedSubscript:v41];

                if (v42)
                {
                  v43 = [v23 objectForKeyedSubscript:v41];
                  v44 = [v43 arrayByAddingObject:v40];
                  [v23 setObject:v44 forKey:v41];
                }

                else
                {
                  v71 = v40;
                  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
                  [v23 setObject:v43 forKey:v41];
                }
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v67 objects:buf count:16];
          }

          while (v37);
        }

        v8 = v64;
        v45 = [v64 fromDate];
        v46 = [v64 toDate];
        v66 = [PPTripAggregator tripEventsWithEvents:v23 from:v45 to:v46];

        goto LABEL_47;
      }

LABEL_54:
      v66 = 0;
      goto LABEL_48;
    }

    v21 = pp_events_log_handle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      *buf = 138412290;
      v73 = v61;
      _os_log_impl(&dword_23224A000, v21, OS_LOG_TYPE_DEFAULT, "Unsupport event query object of class: %@", buf, 0xCu);
    }

LABEL_10:

    v66 = MEMORY[0x277CBEBF8];
    goto LABEL_49;
  }

  v22 = MEMORY[0x277CBEBF8];
  if (!self)
  {
    v22 = 0;
  }

  v66 = v22;
LABEL_49:

  v58 = *MEMORY[0x277D85DE8];

  return v66;
}

- (uint64_t)_isEventQueryRangeValidWithInterval:(double)a3 andDuration:
{
  v10 = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (a2 >= 0.0)
    {
      if (a3 >= 0.0)
      {
        result = 1;
        goto LABEL_9;
      }

      v4 = pp_events_log_handle();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      v8 = 134217984;
      v9 = a3;
      v5 = "PPLocalEventStore: to date appears to be before from date(duration = %f) which is unsupported.";
    }

    else
    {
      v4 = pp_events_log_handle();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
LABEL_7:

        result = 0;
        goto LABEL_9;
      }

      v8 = 134217984;
      v9 = a2;
      v5 = "PPLocalEventStore: from date appears to be before the reference date(interval = %f) which is unsupported.";
    }

    _os_log_error_impl(&dword_23224A000, v4, OS_LOG_TYPE_ERROR, v5, &v8, 0xCu);
    goto LABEL_7;
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)nlEventsFromDate:(id)a3 toDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v6 timeIntervalSinceReferenceDate];
  v9 = v8;
  [v7 timeIntervalSinceDate:v6];
  v11 = v10;
  if ([(PPLocalEventStore *)self _isEventQueryRangeValidWithInterval:v9 andDuration:v10])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__16315;
    v20 = __Block_byref_object_dispose__16316;
    v21 = 0;
    storage = self->_storage;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __45__PPLocalEventStore_nlEventsFromDate_toDate___block_invoke;
    v15[3] = &unk_278976620;
    v15[6] = v9;
    v15[7] = v11;
    v15[4] = self;
    v15[5] = &v16;
    [(PPEventStorage *)storage runBlockWithPurgerDisabled:v15];
    v13 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v13 = MEMORY[0x277CBEBF8];
  }

  return v13;
}

void __45__PPLocalEventStore_nlEventsFromDate_toDate___block_invoke(void *a1)
{
  v6 = [*(a1[4] + 16) nlEventsInRange:{a1[6], a1[7]}];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D3A390] convertBatchOfEKEvents:v6 calendarInternPool:v2];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)eventsFromDate:(id)a3 toDate:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;
  [v6 timeIntervalSinceDate:v7];
  v11 = v10;

  if ([(PPLocalEventStore *)self _isEventQueryRangeValidWithInterval:v9 andDuration:v11])
  {
    if (self)
    {
      v12 = pp_events_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 134218240;
        v22 = v9;
        v23 = 2048;
        v24 = v11;
        _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore queried for range: %tu - %tu", &v21, 0x16u);
      }

      v13 = pp_events_signpost_handle();
      v14 = os_signpost_id_generate(v13);

      v15 = pp_events_signpost_handle();
      v16 = v15;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        LOWORD(v21) = 0;
        _os_signpost_emit_with_name_impl(&dword_23224A000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PPLocalEventStore.eventsInRange", "", &v21, 2u);
      }

      self = [(PPEventCache *)self->_eventCache objectForRange:v9, v11];
      v17 = pp_events_signpost_handle();
      v18 = v17;
      if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
      {
        LOWORD(v21) = 0;
        _os_signpost_emit_with_name_impl(&dword_23224A000, v18, OS_SIGNPOST_INTERVAL_END, v14, "PPLocalEventStore.eventsInRange", "", &v21, 2u);
      }
    }
  }

  else
  {
    self = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)eventHighlightsFrom:(id)a3 to:(id)a4 options:(int)a5
{
  v126 = *MEMORY[0x277D85DE8];
  v67 = a3;
  v66 = a4;
  v7 = +[PPSettings sharedInstance];
  v8 = [v7 bundleIdentifierIsEnabledForDonation:*MEMORY[0x277D3A5F0]];

  if (v8)
  {
    obj = [(PPLocalEventStore *)self eventsFromDate:v67 toDate:v66];
    v68 = objc_opt_new();
    v65 = [PPEventRankerDateUtils dateTwoWeeksPriorToDate:v67];
    v77 = v67;
    if (self)
    {
      v9 = [MEMORY[0x277CBEAA8] now];
      v10 = [v9 dateByAddingTimeInterval:1800.0];
      v11 = objc_opt_new();
      [v11 setFormatOptions:275];
      v12 = objc_opt_new();
      if (eventMetaDataFromDate_toDate__onceToken != -1)
      {
        dispatch_once(&eventMetaDataFromDate_toDate__onceToken, &__block_literal_global_157);
      }

      [eventMetaDataFromDate_toDate__invalidationTimer runAfterDelaySeconds:1 coalescingBehavior:1800.0];
      v13 = [PPEventMetadata eventMetadataWithTitlesAndParticipants:MEMORY[0x277CBEC10] earliestStartTime:0 eventCount:0 eventHasAlarmCount:-1.0];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_4;
      aBlock[3] = &unk_278975B68;
      v14 = v13;
      v113 = v14;
      v15 = _Block_copy(aBlock);
      v106 = 0;
      v107 = &v106;
      v108 = 0x3032000000;
      v109 = __Block_byref_object_copy__16315;
      v110 = __Block_byref_object_dispose__16316;
      v71 = v14;
      v111 = v71;
      v102 = 0;
      v103 = &v102;
      v104 = 0x2020000000;
      v105 = 0;
      v98 = 0;
      v99 = &v98;
      v100 = 0x2020000000;
      v101 = 0;
      v16 = eventMetaDataFromDate_toDate__cacheLock;
      *v83 = MEMORY[0x277D85DD0];
      v84 = 3221225472;
      v85 = __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_5;
      v86 = &unk_278975C00;
      v61 = v9;
      v87 = v61;
      v75 = v65;
      v88 = v75;
      v95 = &v102;
      v96 = &v98;
      v73 = v77;
      v89 = v73;
      v90 = self;
      v72 = v15;
      v94 = v72;
      v62 = v10;
      v91 = v62;
      v17 = v12;
      v92 = v17;
      v63 = v11;
      v93 = v63;
      v97 = &v106;
      [v16 runWithLockAcquired:v83];
      [v107[5] earliestStartTime];
      if (v18 != -1.0)
      {
        v19 = objc_alloc(MEMORY[0x277CBEA80]);
        v20 = [v19 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
        v21 = [v20 components:16 fromDate:v75 toDate:v73 options:0];
        v22 = [v21 day];
        if ([v17 count] < 2 || v22 < 9 || objc_msgSend(v17, "count") / (v22 + 1) < 0.55)
        {
          v23 = [v107[5] titlesAndParticipants];
          v24 = [v107[5] eventCount];
          v25 = +[PPEventMetadata eventMetadataWithTitlesAndParticipants:earliestStartTime:eventCount:eventHasAlarmCount:](PPEventMetadata, "eventMetadataWithTitlesAndParticipants:earliestStartTime:eventCount:eventHasAlarmCount:", v23, v24, [v107[5] eventHasAlarmCount], -1.0);
          v26 = v107[5];
          v107[5] = v25;
        }
      }

      v27 = pp_events_log_handle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v103[3];
        v29 = v99[3];
        [v107[5] earliestStartTime];
        v31 = v30;
        v32 = [v107[5] eventCount];
        v33 = [v107[5] eventHasAlarmCount];
        v34 = [v107[5] titlesAndParticipants];
        v35 = [v34 count];
        v36 = v107[5];
        *buf = 138545411;
        *&buf[4] = v75;
        *&buf[12] = 2114;
        *&buf[14] = v73;
        *&buf[22] = 2048;
        v116 = v28;
        *v117 = 2048;
        *&v117[2] = v29;
        *&v117[10] = 2048;
        *&v117[12] = v31;
        v118 = 2048;
        v119 = v32;
        v120 = 2048;
        v121 = v33;
        v122 = 2048;
        v123 = v35;
        v124 = 2117;
        v125 = v36;
        _os_log_impl(&dword_23224A000, v27, OS_LOG_TYPE_DEFAULT, "eventMetaDataFromDate:%{public}@ toDate:%{public}@ (cached chunks %tu, misses %tu) = earliestStartTime:%f, eventCount:%tu, eventHasAlarmCount:%tu, titlesAndParticipants.count:%tu, %{sensitive}@", buf, 0x5Cu);
      }

      v64 = v107[5];
      _Block_object_dispose(&v98, 8);
      _Block_object_dispose(&v102, 8);
      _Block_object_dispose(&v106, 8);
    }

    else
    {
      v64 = 0;
    }

    v37 = [PPEventScorer alloc];
    v38 = [v64 titlesAndParticipants];
    [v64 earliestStartTime];
    v40 = v39;
    if (v64)
    {
      if ([v64 eventHasAlarmCount] && objc_msgSend(v64, "eventCount"))
      {
        v41 = [v64 eventHasAlarmCount];
        v42 = [v64 eventCount] > v41;
      }

      else
      {
        v42 = 1;
      }
    }

    else
    {
      v42 = 0;
    }

    v45 = +[PPTrialWrapper sharedInstance];
    v76 = [(PPEventScorer *)v37 initWithPastEventTitlesAndParticipants:v38 andEarliestStartTime:v42 shouldConsiderAlarms:a5 withOptions:v45 trialWrapper:v40];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obja = obj;
    v46 = [obja countByEnumeratingWithState:&v79 objects:v114 count:16];
    if (v46)
    {
      v74 = *v80;
      do
      {
        v47 = 0;
        do
        {
          if (*v80 != v74)
          {
            objc_enumerationMutation(obja);
          }

          v48 = *(*(&v79 + 1) + 8 * v47);
          v49 = objc_autoreleasePoolPush();
          LOBYTE(v106) = 0;
          v50 = v48;
          v51 = v76;
          v52 = v77;
          if (self)
          {
            LOBYTE(v106) = 0;
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v116 = __Block_byref_object_copy__16315;
            *v117 = __Block_byref_object_dispose__16316;
            *&v117[8] = [(PPEventCache *)self->_eventCache cachedEventHighlightForEvent:v50 rankingOptions:a5 trialWrapper:self->_trialWrapper];
            v53 = *(*&buf[8] + 40);
            if (!v53)
            {
              v54 = objc_autoreleasePoolPush();
              storage = self->_storage;
              *v83 = MEMORY[0x277D85DD0];
              v84 = 3221225472;
              v85 = __95__PPLocalEventStore_eventHighlightForEvent_usingScorer_date_rankingOptions_loadedFromEventKit___block_invoke;
              v86 = &unk_278975B20;
              v87 = self;
              v56 = v50;
              v91 = buf;
              v92 = &v106;
              v88 = v56;
              v89 = v51;
              v90 = v52;
              [(PPEventStorage *)storage runBlockWithPurgerDisabled:v83];

              objc_autoreleasePoolPop(v54);
              v53 = *(*&buf[8] + 40);
            }

            v57 = v53;
            _Block_object_dispose(buf, 8);
          }

          else
          {
            v57 = 0;
          }

          if (v57 && ((a5 & 1) != 0 || [v57 isExtraordinary]))
          {
            [v68 addObject:v57];
          }

          objc_autoreleasePoolPop(v49);
          ++v47;
        }

        while (v46 != v47);
        v58 = [obja countByEnumeratingWithState:&v79 objects:v114 count:16];
        v46 = v58;
      }

      while (v58);
    }

    v44 = [v68 sortedArrayUsingComparator:&__block_literal_global_151_16327];

    v43 = obja;
  }

  else
  {
    v43 = pp_events_log_handle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *v83 = 0;
      _os_log_impl(&dword_23224A000, v43, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore: EventHighlights disabled due to settings", v83, 2u);
    }

    v44 = MEMORY[0x277CBEBF8];
  }

  v59 = *MEMORY[0x277D85DE8];

  return v44;
}

uint64_t __52__PPLocalEventStore_eventHighlightsFrom_to_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D3A578];
  v5 = a3;
  [a2 score];
  v7 = v6;
  [v5 score];
  v9 = v8;

  return [v4 reverseCompareDouble:v7 withDouble:v9];
}

void __95__PPLocalEventStore_eventHighlightForEvent_usingScorer_date_rankingOptions_loadedFromEventKit___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) eventIdentifier];
  v4 = [v2 eventWithIdentifier:v3];

  if (v4)
  {
    v5 = *(a1 + 72);
    if (v5)
    {
      *v5 = 1;
    }

    v6 = [*(a1 + 48) scoreEvent:v4 usingDate:*(a1 + 56)];
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    [*(*(a1 + 32) + 8) setEventHighlight:*(*(*(a1 + 64) + 8) + 40)];
    if ([*(*(*(a1 + 64) + 8) + 40) isExtraordinary])
    {
      v9 = [*(*(*(a1 + 64) + 8) + 40) endDate];
      [v9 timeIntervalSinceNow];
      v11 = v10;

      if (v11 <= 0.0)
      {
        v13 = pp_events_log_handle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *v14 = 0;
          _os_log_debug_impl(&dword_23224A000, v13, OS_LOG_TYPE_DEBUG, "Suppressing metrics logging of past event", v14, 2u);
        }
      }

      else
      {
        v12 = +[PPEventMetricsLogger defaultLogger];
        [v12 logEventInteractionForEventHighlight:*(*(*(a1 + 64) + 8) + 40) interface:0 actionType:0];
      }
    }
  }
}

void *__50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ([*(a1 + 32) isEqual:v3])
  {
    v4 = *(a1 + 32);
  }

  v5 = v4;

  return v4;
}

void __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_5(id *a1, void *a2)
{
  v84 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_6;
  v74[3] = &unk_278975B90;
  v59 = a1;
  v75 = a1[4];
  v57 = v3;
  v54 = [v3 indexesOfObjectsPassingTest:v74];
  [v3 removeObjectsAtIndexes:v54];
  v55 = objc_opt_new();
  [a1[5] timeIntervalSinceReferenceDate];
  v5 = v4;
  [a1[6] timeIntervalSinceReferenceDate];
  v58 = vcvtmd_u64_f64(v5 / 14400.0);
  for (i = vcvtpd_u64_f64(v6 / 14400.0); v58 <= i; ++v58)
  {
    v60 = objc_opt_new();
    [v60 setChunkIndex:v58];
    v8 = [v57 indexOfObject:v60 inSortedRange:0 options:objc_msgSend(v57 usingComparator:{"count"), 1024, &__block_literal_global_170}];
    if (v8 < [v57 count] && (objc_msgSend(v57, "objectAtIndexedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "chunkIndex") == v58, v9, v10))
    {
      ++*(*(v59[12] + 1) + 24);
      [v57 objectAtIndexedSubscript:v8];
      v60 = v11 = v60;
    }

    else
    {
      ++*(*(v59[13] + 1) + 24);
      v12 = objc_opt_new();
      v80 = 0;
      v81 = &v80;
      v82 = 0x2020000000;
      v83 = 0xBFF0000000000000;
      *&v76 = 0;
      *(&v76 + 1) = &v76;
      v77 = 0x2020000000uLL;
      v70 = 0;
      v71 = &v70;
      v72 = 0x2020000000;
      v73 = 0;
      v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v58 * 14400.0];
      v14 = [v13 dateByAddingTimeInterval:14400.0];
      v15 = *(v59[7] + 2);
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_8;
      v63[3] = &unk_278975BD8;
      v16 = v13;
      v64 = v16;
      v11 = v12;
      v65 = v11;
      v66 = v55;
      v67 = &v80;
      v68 = &v76;
      v69 = &v70;
      [v15 iterateEventsFrom:v16 to:v14 inChunks:1 withBlock:v63];
      if (v71[3])
      {
        [*(v59[7] + 2) attemptToPurgeImmediately];
      }

      v17 = v59[11];
      v18 = [v11 copy];
      v19 = [PPEventMetadata eventMetadataWithTitlesAndParticipants:v18 earliestStartTime:v71[3] eventCount:*(*(&v76 + 1) + 24) eventHasAlarmCount:v81[3]];

      v20 = v17[2](v17, v19);
      [v60 setMetadata:v20];

      [v60 setExpiration:v59[8]];
      [v57 insertObject:v60 atIndex:v8];

      _Block_object_dispose(&v70, 8);
      _Block_object_dispose(&v76, 8);
      _Block_object_dispose(&v80, 8);
    }

    v21 = [v60 metadata];
    v22 = [v21 eventCount] == 0;

    if (!v22)
    {
      v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v58 * 14400.0 + 7200.0];
      v24 = v59[9];
      v25 = [v59[10] stringFromDate:v23];
      [v24 addObject:v25];
    }

    v61 = *(*(v59[14] + 1) + 40);
    v26 = [v60 metadata];
    v62 = v26;
    if (v61)
    {
      v27 = [v26 titlesAndParticipants];
      v28 = [v27 count] == 0;

      v29 = [v61 titlesAndParticipants];
      v30 = v29;
      if (!v28)
      {
        v31 = [v29 count] == 0;

        if (v31)
        {
          v30 = [v62 titlesAndParticipants];
        }

        else
        {
          v32 = [v61 titlesAndParticipants];
          v33 = [v32 mutableCopy];

          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v34 = [v62 titlesAndParticipants];
          v35 = [v34 countByEnumeratingWithState:&v76 objects:&v80 count:16];
          if (v35)
          {
            v36 = *v77;
            do
            {
              for (j = 0; j != v35; ++j)
              {
                if (*v77 != v36)
                {
                  objc_enumerationMutation(v34);
                }

                v38 = *(*(&v76 + 1) + 8 * j);
                v39 = [v61 titlesAndParticipants];
                v40 = [v39 objectForKeyedSubscript:v38];

                v41 = [v62 titlesAndParticipants];
                v42 = [v41 objectForKeyedSubscript:v38];

                if (v40)
                {
                  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v42, "unsignedIntegerValue") + objc_msgSend(v40, "unsignedIntegerValue")}];
                  [v33 setObject:v43 forKeyedSubscript:v38];
                }

                else
                {
                  [v33 setObject:v42 forKeyedSubscript:v38];
                }
              }

              v35 = [v34 countByEnumeratingWithState:&v76 objects:&v80 count:16];
            }

            while (v35);
          }

          v30 = [v33 copy];
        }
      }

      [v61 earliestStartTime];
      v45 = v44 == -1.0;
      [v62 earliestStartTime];
      v47 = v46 != -1.0;
      [v61 earliestStartTime];
      v49 = v48;
      [v62 earliestStartTime];
      if ((v49 < v50) ^ v45 ^ v47)
      {
        v49 = v50;
      }

      v51 = +[PPEventMetadata eventMetadataWithTitlesAndParticipants:earliestStartTime:eventCount:eventHasAlarmCount:](PPEventMetadata, "eventMetadataWithTitlesAndParticipants:earliestStartTime:eventCount:eventHasAlarmCount:", v30, [v62 eventCount] + objc_msgSend(v61, "eventCount"), objc_msgSend(v62, "eventHasAlarmCount") + objc_msgSend(v61, "eventHasAlarmCount"), v49);
    }

    else
    {
      v51 = 0;
    }

    v52 = *(v59[14] + 1);
    v53 = *(v52 + 40);
    *(v52 + 40) = v51;
  }

  v7 = *MEMORY[0x277D85DE8];
}

BOOL __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 expiration];
  v4 = [v2 compare:v3] != -1;

  return v4;
}

uint64_t __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_8(void *a1, void *a2)
{
  v13 = a2;
  v3 = a1[4];
  v4 = [v13 startDate];
  v5 = [v3 compare:v4];

  if (v5 != 1)
  {
    [PPEventScorer enrichDictionary:a1[5] withEvent:v13 interningSet:a1[6]];
    if (([v13 isAllDay] & 1) == 0)
    {
      v6 = [v13 startDate];
      [PPEventRankerDateUtils secondsFromMidnight:v6];
      v8 = v7;

      v9 = *(a1[7] + 8);
      v10 = *(v9 + 24);
      if (v8 < v10 || v10 == -1.0)
      {
        *(v9 + 24) = v8;
      }
    }

    if ([v13 hasAlarms])
    {
      ++*(*(a1[8] + 8) + 24);
    }

    ++*(*(a1[9] + 8) + 24);
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 chunkIndex];
  if (v6 == [v5 chunkIndex])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 chunkIndex];
    if (v8 < [v5 chunkIndex])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

void __50__PPLocalEventStore_eventMetaDataFromDate_toDate___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277D425F8]);
  v1 = objc_opt_new();
  v2 = [v0 initWithGuardedData:v1];
  v3 = eventMetaDataFromDate_toDate__cacheLock;
  eventMetaDataFromDate_toDate__cacheLock = v2;

  v6 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"eventMetaDataFromDate:toDate: cache clearing queue" qosClass:9];
  v4 = [objc_alloc(MEMORY[0x277D42628]) initWithQueue:v6 leewaySeconds:&__block_literal_global_161 operation:60.0];
  v5 = eventMetaDataFromDate_toDate__invalidationTimer;
  eventMetaDataFromDate_toDate__invalidationTimer = v4;
}

- (void)enumerateEventsFromEKObjectIDs:(id)a3 expandingRecurrencesInRange:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  storage = self->_storage;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__PPLocalEventStore_enumerateEventsFromEKObjectIDs_expandingRecurrencesInRange_usingBlock___block_invoke;
  v15[3] = &unk_278977290;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [(PPEventStorage *)storage runBlockWithPurgerDisabled:v15];
}

- (id)customObjectForKey:(id)a3 eventIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__16315;
  v21 = __Block_byref_object_dispose__16316;
  v22 = 0;
  storage = self->_storage;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__PPLocalEventStore_customObjectForKey_eventIdentifier___block_invoke;
  v13[3] = &unk_2789763B0;
  v13[4] = self;
  v9 = v7;
  v14 = v9;
  v16 = &v17;
  v10 = v6;
  v15 = v10;
  [(PPEventStorage *)storage runBlockWithPurgerDisabled:v13];
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __56__PPLocalEventStore_customObjectForKey_eventIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) eventWithIdentifier:a1[5]];
  if (v2)
  {
    v7 = v2;
    v3 = objc_autoreleasePoolPush();
    v4 = [v7 customObjectForKey:a1[6]];
    v5 = *(a1[7] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    objc_autoreleasePoolPop(v3);
    v2 = v7;
  }
}

- (id)resolveEventNameRecordChanges:(id)a3 client:(id)a4 error:(id *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v20 = a4;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        if ([(PPEventStorage *)self->_storage eventKitChangeIsEvent:v14])
        {
          storage = self->_storage;
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __64__PPLocalEventStore_resolveEventNameRecordChanges_client_error___block_invoke;
          v21[3] = &unk_278975A60;
          v21[4] = self;
          v21[5] = v14;
          v22 = v8;
          [(PPEventStorage *)storage runBlockWithPurgerDisabled:v21];
        }

        else
        {
          v17 = pp_events_log_handle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v28 = v14;
            _os_log_debug_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEBUG, "skipping non-event change: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

void __64__PPLocalEventStore_resolveEventNameRecordChanges_client_error___block_invoke(uint64_t a1)
{
  v1 = a1;
  v46 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 16) resolveEventFromEKChange:*(a1 + 40)];
  if (!v2)
  {
    v30 = pp_events_log_handle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v34 = *(v1 + 40);
      *buf = 138412290;
      v45 = v34;
      _os_log_debug_impl(&dword_23224A000, v30, OS_LOG_TYPE_DEBUG, "deleted event: %@", buf, 0xCu);
    }

    if (*(v1 + 32))
    {
      v31 = MEMORY[0x277D3A3A0];
      v32 = [*(v1 + 40) stringRepresentation];
      v29 = [v31 eventNameRecordWithScore:v32 eventIdentifier:3 changeType:&stru_284759D38 title:&stru_284759D38 location:MEMORY[0x277CBEBF8] participantNames:0.0];
    }

    else
    {
      v29 = 0;
    }

    goto LABEL_24;
  }

  if ([*(*(v1 + 32) + 16) shouldIngestEvent:v2])
  {
    v3 = pp_events_log_handle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v35 = [v2 eventIdentifier];
      *buf = 138412290;
      v45 = v35;
      _os_log_debug_impl(&dword_23224A000, v3, OS_LOG_TYPE_DEBUG, "modified event: %@", buf, 0xCu);
    }

    v38 = v1;
    v39 = v2;
    v4 = *(v1 + 32);
    v5 = v2;
    if (v4)
    {
      v6 = objc_opt_new();
      v7 = [v5 startDate];
      v36 = v6;
      [v7 timeIntervalSinceDate:v6];
      v9 = [PPLocalEventStore _scoreForSecondsRelativeToNow:v8];

      v10 = objc_alloc(MEMORY[0x277CBEB18]);
      v11 = [v5 attendees];
      v12 = [v10 initWithCapacity:{objc_msgSend(v11, "count")}];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v37 = v5;
      v13 = [v5 attendees];
      v14 = [v13 countByEnumeratingWithState:&v40 objects:buf count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v41;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v41 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v40 + 1) + 8 * i);
            v19 = objc_autoreleasePoolPush();
            v20 = [v18 name];
            if (v20)
            {
              v21 = v20;
              v22 = [v18 name];
              v23 = [v22 length];

              if (v23)
              {
                v24 = [v18 name];
                [v12 addObject:v24];
              }
            }

            objc_autoreleasePoolPop(v19);
          }

          v15 = [v13 countByEnumeratingWithState:&v40 objects:buf count:16];
        }

        while (v15);
      }

      v5 = v37;
      v25 = [v37 locationWithoutPrediction];
      if (![v25 length])
      {

        v25 = 0;
      }

      v1 = v38;
      v26 = MEMORY[0x277D3A3A0];
      v27 = [v37 eventIdentifier];
      v28 = [v37 title];
      v29 = [v26 eventNameRecordWithScore:v27 eventIdentifier:0 changeType:v28 title:v25 location:v12 participantNames:v9];

      v2 = v39;
    }

    else
    {
      v29 = 0;
      v1 = v38;
    }

    [v29 setChangeType:1];
LABEL_24:
    [*(v1 + 48) addObject:v29];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (double)_scoreForSecondsRelativeToNow:(double)a1
{
  v1 = a1 / 3600.0;
  if (a1 / 3600.0 <= -3.0)
  {
    return 0.3;
  }

  if (v1 <= -2.0)
  {
    return 0.4;
  }

  result = 0.5;
  if (v1 > -1.0)
  {
    result = 0.7;
    if (v1 > 0.0)
    {
      if (v1 <= 1.0)
      {
        return 0.9;
      }

      else if (v1 <= 2.0)
      {
        return 0.85;
      }

      else if (v1 <= 3.0)
      {
        return 0.8;
      }

      else if (v1 > 4.0)
      {
        if (v1 <= 5.0)
        {
          return 0.6;
        }

        else
        {
          result = 0.5;
          if (v1 > 6.0)
          {
            result = 0.4;
            if (v1 > 7.0)
            {
              result = 0.3;
              if (v1 > 8.0)
              {
                if (v1 <= 9.0)
                {
                  return 0.2;
                }

                else if (v1 <= 10.0)
                {
                  return 0.15;
                }

                else if (v1 <= 11.0)
                {
                  return 0.12;
                }

                else
                {
                  return dbl_232418590[v1 > 12.0];
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (id)eventNameRecordsForClient:(id)a3 error:(id *)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v5 = objc_opt_new();
  v6 = [v5 dateByAddingTimeInterval:-7200.0];
  v40 = v5;
  v7 = [v5 dateByAddingTimeInterval:43200.0];
  v44 = self;
  v8 = [(PPLocalEventStore *)self eventsFromDate:v6 toDate:v7];

  v45 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v8;
  v46 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v46)
  {
    v43 = *v52;
    do
    {
      v9 = 0;
      do
      {
        if (*v52 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v51 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = v10;
        if (v44)
        {
          v49 = v11;
          v50 = v9;
          v13 = objc_opt_new();
          v14 = [v12 startDate];
          v47 = v13;
          [v14 timeIntervalSinceDate:v13];
          v16 = [PPLocalEventStore _scoreForSecondsRelativeToNow:v15];

          v17 = objc_alloc(MEMORY[0x277CBEB18]);
          v18 = [v12 attendees];
          v19 = [v17 initWithCapacity:{objc_msgSend(v18, "count")}];

          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v48 = v12;
          v20 = [v12 attendees];
          v21 = [v20 countByEnumeratingWithState:&v55 objects:v60 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v56;
            do
            {
              for (i = 0; i != v22; ++i)
              {
                if (*v56 != v23)
                {
                  objc_enumerationMutation(v20);
                }

                v25 = *(*(&v55 + 1) + 8 * i);
                v26 = objc_autoreleasePoolPush();
                v27 = [v25 name];
                if (v27)
                {
                  v28 = v27;
                  v29 = [v25 name];
                  v30 = [v29 length];

                  if (v30)
                  {
                    v31 = [v25 name];
                    [v19 addObject:v31];
                  }
                }

                objc_autoreleasePoolPop(v26);
              }

              v22 = [v20 countByEnumeratingWithState:&v55 objects:v60 count:16];
            }

            while (v22);
          }

          v32 = MEMORY[0x277D3A3A0];
          v12 = v48;
          v33 = [v48 eventIdentifier];
          v34 = [v48 title];
          v35 = [v48 location];
          v36 = [v32 eventNameRecordWithScore:v33 eventIdentifier:0 changeType:v34 title:v35 location:v19 participantNames:v16];

          v11 = v49;
          v9 = v50;
        }

        else
        {
          v36 = 0;
        }

        [v45 addObject:v36];
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v9 != v46);
      v37 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
      v46 = v37;
    }

    while (v37);
  }

  v38 = *MEMORY[0x277D85DE8];

  return v45;
}

- (BOOL)iterEventNameRecordsForClient:(id)a3 error:(id *)a4 block:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(PPLocalEventStore *)self eventNameRecordsForClient:a3 error:a4];
  v10 = v9;
  if (v9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
LABEL_4:
      v15 = 0;
      while (1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        v19 = 0;
        v8[2](v8, v16, &v19);
        if (v19)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v13)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (PPLocalEventStore)init
{
  v3 = +[PPTrialWrapper sharedInstance];
  v4 = +[PPEventStorage defaultStorage];
  v5 = [(PPLocalEventStore *)self initWithTrialWrapper:v3 eventStorage:v4];

  return v5;
}

- (PPLocalEventStore)initWithTrialWrapper:(id)a3 eventStorage:(id)a4
{
  v8 = a3;
  v9 = a4;
  v39.receiver = self;
  v39.super_class = PPLocalEventStore;
  v10 = [(PPLocalEventStore *)&v39 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_storage, a4);
    v12 = [[PPEventCache alloc] initWithEventStorage:v11->_storage];
    eventCache = v11->_eventCache;
    v11->_eventCache = v12;

    objc_storeStrong(&v11->_trialWrapper, a3);
    v14 = objc_alloc(MEMORY[0x277D425F8]);
    v15 = objc_opt_new();
    v16 = [v14 initWithGuardedData:v15];
    lock = v11->_lock;
    v11->_lock = v16;

    v18 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"PPLocalEventStore-bufferedChanges" qosClass:9];
    objc_initWeak(&location, v11);
    v19 = objc_alloc(MEMORY[0x277D42568]);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __55__PPLocalEventStore_initWithTrialWrapper_eventStorage___block_invoke;
    v35[3] = &unk_2789759F0;
    v37 = a2;
    v20 = v11;
    v36 = v20;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __55__PPLocalEventStore_initWithTrialWrapper_eventStorage___block_invoke_2;
    v33[3] = &unk_278975A38;
    objc_copyWeak(&v34, &location);
    v21 = [v19 initWithQueue:v18 leewaySeconds:v35 coalesceData:v33 operation:10.0];
    v22 = v20[6];
    v20[6] = v21;

    objc_initWeak(&from, v20);
    v23 = MEMORY[0x277D3A458];
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __52__PPLocalEventStore__setupCalendarVisibilityManager__block_invoke;
    v44 = &unk_278975AD8;
    objc_copyWeak(&v45, &from);
    v24 = [v23 addCalendarVisibilityObserverForLifetimeOfObject:v20 block:&v41];
    [(PPEventStorage *)v11->_storage setInvisibleCalendarIdentifiers:v24];
    objc_destroyWeak(&v45);

    objc_destroyWeak(&from);
    v25 = v20[6];
    v26 = v11->_lock;
    v27 = MEMORY[0x277D3A458];
    v41 = MEMORY[0x277D85DD0];
    v42 = 3221225472;
    v43 = __46__PPLocalEventStore__registerForNotifications__block_invoke;
    v44 = &unk_278975AB0;
    v45 = v26;
    v46 = v25;
    v28 = v25;
    v29 = v26;
    [v27 addEventKitObserverForLifetimeOfObject:v20 block:&v41];
    v30 = +[PPTrialWrapper sharedInstance];
    v31 = [v30 addUpdateHandlerForNamespaceName:@"PERSONALIZATION_PORTRAIT_EVENTS" block:&__block_literal_global_145_16370];

    [(PPLocalEventStore *)v20 _preloadEvents];
    objc_destroyWeak(&v34);

    objc_destroyWeak(&location);
  }

  return v11;
}

id __55__PPLocalEventStore_initWithTrialWrapper_eventStorage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 count])
    {
      if ([v6 count])
      {
        [v5 removeObjectsInArray:v6];
        [v5 addObjectsFromArray:v6];
      }

      else
      {
        [v5 removeAllObjects];
      }
    }
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:v6];
    if (!v5)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PPLocalEventStore.m" lineNumber:179 description:{@"Invalid parameter not satisfying: %@", @"accumulatedData"}];

      v5 = 0;
    }
  }

  return v5;
}

void __55__PPLocalEventStore_initWithTrialWrapper_eventStorage___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      [*(WeakRetained + 5) runWithLockAcquired:&__block_literal_global_16380];
      v6 = pp_events_log_handle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 134217984;
        v21 = [v3 count];
        _os_log_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore: processing %tu EventKit changes", &v20, 0xCu);
      }

      v7 = [v3 count];
      v8 = objc_autoreleasePoolPush();
      if (v7)
      {
        v9 = v5[1];
        v10 = [v3 array];
        v11 = [v9 refreshCacheWithChanges:v10];

        v12 = pp_events_log_handle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [v11 first];
          v14 = [v13 count];
          v20 = 134217984;
          v21 = v14;
          _os_log_impl(&dword_23224A000, v12, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore: changed event count is %tu", &v20, 0xCu);
        }

        v15 = +[PPEventKitImporter defaultInstance];
        [v15 importChangedEvents:v11];
      }

      else
      {
        [(PPLocalEventStore *)v5 _clearAndReloadAllCachesAndData];
      }

      objc_autoreleasePoolPop(v8);
      v17 = pp_events_log_handle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v3 count];
        v20 = 134217984;
        v21 = v18;
        _os_log_impl(&dword_23224A000, v17, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore: finished processing %tu EventKit changes", &v20, 0xCu);
      }
    }
  }

  else
  {
    v16 = pp_events_log_handle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v20) = 0;
      _os_log_fault_impl(&dword_23224A000, v16, OS_LOG_TYPE_FAULT, "accumulatedData was unexpectedly nil", &v20, 2u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_preloadEvents
{
  v2 = pp_events_signpost_handle();
  v3 = os_signpost_id_generate(v2);

  v4 = pp_events_signpost_handle();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "PPLocalEventStore.preloadEvents", "", buf, 2u);
  }

  v6 = objc_opt_new();
  v7 = [v6 dateByAddingTimeInterval:-600.0];
  v8 = [v6 dateByAddingTimeInterval:176400.0];
  v9 = [a1 eventsFromDate:v7 toDate:v8];

  v10 = pp_events_signpost_handle();
  v11 = v10;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_23224A000, v11, OS_SIGNPOST_INTERVAL_END, v3, "PPLocalEventStore.preloadEvents", "", v12, 2u);
  }
}

void __46__PPLocalEventStore__registerForNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__16315;
  v16 = __Block_byref_object_dispose__16316;
  v17 = 0;
  v4 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __46__PPLocalEventStore__registerForNotifications__block_invoke_2;
  v11[3] = &unk_278975A88;
  v11[4] = &v12;
  [v4 runWithLockAcquired:v11];
  v5 = [MEMORY[0x277CBEAA8] now];
  [v5 timeIntervalSinceDate:v13[5]];
  v7 = v6;

  v8 = [v3 count] != 0;
  v9 = v7 <= 300.0;
  v10 = 120.0;
  if (!v8 || !v9)
  {
    v10 = 1.0;
  }

  [*(a1 + 40) processData:v3 afterDelaySeconds:v8 & v9 coalescingBehavior:v10];
  _Block_object_dispose(&v12, 8);
}

void __46__PPLocalEventStore__registerForNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = v5[1];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEAA8] distantPast];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v4);
  if (!v3)
  {
  }
}

void __52__PPLocalEventStore__setupCalendarVisibilityManager__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = pp_events_log_handle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = [v3 count];
      _os_log_impl(&dword_23224A000, v5, OS_LOG_TYPE_DEFAULT, "PPLocalEventStore: reloading events due to EKCalendarVisibilityManager visibilityChanged (%tu invisible calendars)", &v7, 0xCu);
    }

    [WeakRetained[2] setInvisibleCalendarIdentifiers:v3];
    [(PPLocalEventStore *)WeakRetained _clearAndReloadAllCachesAndData];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_clearAndReloadAllCachesAndData
{
  [a1 clearCaches];
  [(PPLocalEventStore *)a1 _preloadEvents];
  v2 = +[PPEventKitImporter defaultInstance];
  [v2 deleteAndReimportAllData];
}

void __55__PPLocalEventStore_initWithTrialWrapper_eventStorage___block_invoke_123(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 now];
  v5 = v3[1];
  v3[1] = v4;
}

void __33__PPLocalEventStore_defaultStore__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = defaultStore__pasExprOnceResult_16400;
  defaultStore__pasExprOnceResult_16400 = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)clearCaches
{
  [(PPEventCache *)self->_eventCache removeAllObjects];
  storage = self->_storage;

  [(PPEventStorage *)storage clearCaches];
}

@end