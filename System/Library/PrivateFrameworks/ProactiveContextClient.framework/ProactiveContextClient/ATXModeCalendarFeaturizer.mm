@interface ATXModeCalendarFeaturizer
+ (BOOL)isCalendarLikelyWork:(id)work;
- (ATXModeCalendarFeaturizer)initWithLocationManager:(id)manager;
- (ATXModeCalendarFeaturizer)initWithLocationManager:(id)manager andMiloProvider:(id)provider;
- (ATXModeFeaturizerDelegate)delegate;
- (BOOL)_isDate:(id)date betweenStartDate:(id)startDate andEndDate:(id)endDate;
- (BOOL)_shouldConsiderEventBasedOnParticipantStatus:(int64_t)status;
- (BOOL)_shouldInitiateMicrolocationLocalizationWithMostRecentWorkEvent:(id)event upcomingWorkEvent:(id)workEvent now:(id)now;
- (BOOL)_shouldStayInWorkModeInBetweenMostRecentWorkEvent:(id)event andUpcomingWorkEvent:(id)workEvent;
- (id)_fetchEligibleEventsForDay;
- (id)provideFeatures;
- (void)_addTimerForDate:(id)date;
- (void)_eventsDidChange:(id)change;
- (void)_setFeaturesForEventsCurrentlyIn:(id)in now:(id)now featureSet:(id)set;
- (void)_updateFeatures;
- (void)beginListening;
- (void)dealloc;
@end

@implementation ATXModeCalendarFeaturizer

- (ATXModeCalendarFeaturizer)initWithLocationManager:(id)manager
{
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = ATXModeCalendarFeaturizer;
  v5 = [(ATXModeCalendarFeaturizer *)&v19 init];
  if (v5)
  {
    v6 = objc_opt_new();
    timers = v5->_timers;
    v5->_timers = v6;

    objc_initWeak(&location, v5);
    v8 = objc_alloc(MEMORY[0x277D42628]);
    v9 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__ATXModeCalendarFeaturizer_initWithLocationManager___block_invoke;
    v16[3] = &unk_279AB7B90;
    objc_copyWeak(&v17, &location);
    v11 = [v8 initWithQueue:v9 operation:v16];
    featureUpdateTimer = v5->_featureUpdateTimer;
    v5->_featureUpdateTimer = v11;

    v5->_calendarRefreshCoalesceTimerIsEnabled = 1;
    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      keyExistsAndHasValidFormat = 0;
      if (CFPreferencesGetAppBooleanValue(@"RemoveCalendarRefreshCoalesce", *MEMORY[0x277CEBD00], &keyExistsAndHasValidFormat))
      {
        v5->_calendarRefreshCoalesceTimerIsEnabled = 0;
      }
    }

    v13 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:128];
    eventStore = v5->_eventStore;
    v5->_eventStore = v13;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __53__ATXModeCalendarFeaturizer_initWithLocationManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateFeatures];
}

- (ATXModeCalendarFeaturizer)initWithLocationManager:(id)manager andMiloProvider:(id)provider
{
  providerCopy = provider;
  v8 = [(ATXModeCalendarFeaturizer *)self initWithLocationManager:manager];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_miloProvider, provider);
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ATXModeCalendarFeaturizer;
  [(ATXModeCalendarFeaturizer *)&v4 dealloc];
}

- (void)_eventsDidChange:(id)change
{
  featureUpdateTimer = self->_featureUpdateTimer;
  v4 = 120.0;
  if (!self->_calendarRefreshCoalesceTimerIsEnabled)
  {
    v4 = 0.0;
  }

  [(_PASSimpleCoalescingTimer *)self->_featureUpdateTimer runAfterDelaySeconds:1 coalescingBehavior:v4];
}

- (void)_updateFeatures
{
  v3 = __atxlog_handle_modes();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_260C9F000, v3, OS_LOG_TYPE_DEFAULT, "ATXModeCalendarClassifier: Refreshing due to event change", v6, 2u);
  }

  provideFeatures = [(ATXModeCalendarFeaturizer *)self provideFeatures];
  delegate = [(ATXModeCalendarFeaturizer *)self delegate];
  [delegate featurizer:self didUpdateFeatures:provideFeatures];
}

+ (BOOL)isCalendarLikelyWork:(id)work
{
  workCopy = work;
  title = [workCopy title];
  v5 = [title localizedCaseInsensitiveContainsString:@"work"];

  if (v5)
  {
    isAffectingAvailability = 1;
  }

  else
  {
    source = [workCopy source];
    v8 = source;
    if (source && [source supportsLocationDirectorySearches])
    {
      isAffectingAvailability = [workCopy isAffectingAvailability];
    }

    else
    {
      isAffectingAvailability = 0;
    }
  }

  return isAffectingAvailability;
}

- (void)_setFeaturesForEventsCurrentlyIn:(id)in now:(id)now featureSet:(id)set
{
  v67 = *MEMORY[0x277D85DE8];
  inCopy = in;
  nowCopy = now;
  setCopy = set;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__6;
  v57 = __Block_byref_object_dispose__6;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__6;
  v51 = __Block_byref_object_dispose__6;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__6;
  v41 = __Block_byref_object_dispose__6;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__6;
  v35 = __Block_byref_object_dispose__6;
  v36 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__ATXModeCalendarFeaturizer__setFeaturesForEventsCurrentlyIn_now_featureSet___block_invoke;
  v22[3] = &unk_279AB8248;
  v22[4] = self;
  v26 = &v53;
  v27 = &v47;
  v28 = &v43;
  v12 = nowCopy;
  v23 = v12;
  v13 = setCopy;
  v24 = v13;
  v29 = &v37;
  v14 = inCopy;
  v25 = v14;
  v30 = &v31;
  [v14 enumerateObjectsUsingBlock:v22];
  [v13 setValue:-[ATXModeCalendarFeaturizer _shouldStayInWorkModeInBetweenMostRecentWorkEvent:andUpcomingWorkEvent:](self forBinaryFeatureOfType:{"_shouldStayInWorkModeInBetweenMostRecentWorkEvent:andUpcomingWorkEvent:", v38[5], v32[5]), 27}];
  if ([(ATXModeCalendarFeaturizer *)self _shouldInitiateMicrolocationLocalizationWithMostRecentWorkEvent:v38[5] upcomingWorkEvent:v32[5] now:v12])
  {
    v15 = __atxlog_handle_modes();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromSelector(a2);
      startDate = [v38[5] startDate];
      startDate2 = [v32[5] startDate];
      *buf = 138413058;
      v60 = v16;
      v61 = 2112;
      v62 = v17;
      v63 = 2112;
      v64 = startDate;
      v65 = 2112;
      v66 = startDate2;
      _os_log_impl(&dword_260C9F000, v15, OS_LOG_TYPE_DEFAULT, "[%@][%@] Last work event just ended at %@, and the next one doesn't start until %@, initiating microlocation localization", buf, 0x2Au);
    }

    [(ATXMiloProvider *)self->_miloProvider requestPrediction];
  }

  if (v54[5] && v48[5] && [ATXModeCalendarFeaturizer _isDate:"_isDate:betweenStartDate:andEndDate:" betweenStartDate:v12 andEndDate:?])
  {
    [v13 setValue:1 forBinaryFeatureOfType:13];
    v20 = *(v44 + 24);
  }

  else
  {
    [v13 setValue:0 forBinaryFeatureOfType:13];
    v20 = 0;
  }

  [v13 setValue:v20 & 1 forBinaryFeatureOfType:14];

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __77__ATXModeCalendarFeaturizer__setFeaturesForEventsCurrentlyIn_now_featureSet___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) _shouldConsiderEventBasedOnParticipantStatus:{objc_msgSend(v5, "participationStatus")}])
  {
    v6 = *(*(*(a1 + 64) + 8) + 40);
    v7 = [v5 startDate];
    v8 = [v6 earlierDate:v7];
    v9 = v8;
    if (!v8)
    {
      v9 = [v5 startDate];
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v9);
    if (!v8)
    {
    }

    v10 = *(*(*(a1 + 72) + 8) + 40);
    v11 = [v5 endDate];
    v12 = [v10 laterDate:v11];
    v13 = v12;
    if (!v12)
    {
      v13 = [v5 endDate];
    }

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), v13);
    if (!v12)
    {
    }

    v14 = [v5 calendar];
    v15 = *(a1 + 32);
    *(*(*(a1 + 80) + 8) + 24) |= [objc_opt_class() isCalendarLikelyWork:v14];
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = [v5 startDate];
    v19 = [v5 endDate];
    if ([v16 _isDate:v17 betweenStartDate:v18 andEndDate:v19])
    {
      v20 = *(*(*(a1 + 80) + 8) + 24);

      if (v20 == 1)
      {
        v21 = (a1 + 48);
        v22 = 1;
        goto LABEL_19;
      }
    }

    else
    {
    }

    v21 = (a1 + 48);
    v24 = [*(a1 + 48) valueForFeatureType:26];

    if (v24)
    {
LABEL_20:
      if (*(*(*(a1 + 80) + 8) + 24) != 1 || *(*(*(a1 + 88) + 8) + 40))
      {
        goto LABEL_27;
      }

      [*(a1 + 40) timeIntervalSinceReferenceDate];
      v26 = v25;
      v27 = [v5 endDate];
      [v27 timeIntervalSinceReferenceDate];
      if (v26 > v28 + -120.0)
      {
        v29 = a3 + 1;
        v30 = [*(a1 + 56) count];

        if (v29 >= v30)
        {
          goto LABEL_27;
        }

        v31 = [*(a1 + 56) objectAtIndex:v29];
        v32 = *(*(a1 + 96) + 8);
        v33 = *(v32 + 40);
        *(v32 + 40) = v31;

        [*(a1 + 40) timeIntervalSinceReferenceDate];
        v35 = v34;
        v36 = [*(*(*(a1 + 96) + 8) + 40) startDate];
        [v36 timeIntervalSinceReferenceDate];
        v38 = v37;

        if (v35 >= v38)
        {
          goto LABEL_27;
        }

        v39 = *(*(a1 + 88) + 8);
        v40 = v5;
        v27 = *(v39 + 40);
        *(v39 + 40) = v40;
      }

LABEL_27:
      goto LABEL_28;
    }

    v22 = 0;
LABEL_19:
    [*v21 setValue:v22 forBinaryFeatureOfType:26];
    goto LABEL_20;
  }

  v23 = __atxlog_handle_modes();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v42 = 134217984;
    v43 = [v5 participationStatus];
    _os_log_impl(&dword_260C9F000, v23, OS_LOG_TYPE_DEFAULT, "ATXModeCalendarClassifier: skipping event due to participation status: %lu", &v42, 0xCu);
  }

LABEL_28:
  v41 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldStayInWorkModeInBetweenMostRecentWorkEvent:(id)event andUpcomingWorkEvent:(id)workEvent
{
  result = 0;
  if (event && workEvent)
  {
    eventCopy = event;
    startDate = [workEvent startDate];
    [startDate timeIntervalSince1970];
    v9 = v8;
    endDate = [eventCopy endDate];

    [endDate timeIntervalSince1970];
    v12 = v9 - v11;

    return v12 <= 4500.0 && v12 > 0.0;
  }

  return result;
}

- (BOOL)_shouldInitiateMicrolocationLocalizationWithMostRecentWorkEvent:(id)event upcomingWorkEvent:(id)workEvent now:(id)now
{
  workEventCopy = workEvent;
  nowCopy = now;
  v10 = 0;
  if (event && workEventCopy)
  {
    eventCopy = event;
    endDate = [eventCopy endDate];
    v13 = MEMORY[0x277CBEAA8];
    endDate2 = [eventCopy endDate];

    [endDate2 timeIntervalSinceReferenceDate];
    v16 = [v13 dateWithTimeIntervalSinceReferenceDate:v15 + 120.0];
    if ([(ATXModeCalendarFeaturizer *)self _isDate:nowCopy betweenStartDate:endDate andEndDate:v16])
    {
      startDate = [workEventCopy startDate];
      [startDate timeIntervalSinceReferenceDate];
      v19 = v18;
      [nowCopy timeIntervalSinceReferenceDate];
      v10 = v19 - v20 > 1800.0;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)_isDate:(id)date betweenStartDate:(id)startDate andEndDate:(id)endDate
{
  endDateCopy = endDate;
  startDateCopy = startDate;
  [date timeIntervalSinceReferenceDate];
  v10 = v9;
  [startDateCopy timeIntervalSinceReferenceDate];
  v12 = v11;

  if (v10 >= v12)
  {
    [endDateCopy timeIntervalSinceReferenceDate];
    v13 = v10 < v14;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_shouldConsiderEventBasedOnParticipantStatus:(int64_t)status
{
  if (status >= 8)
  {
    v5 = __atxlog_handle_modes();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(ATXModeCalendarFeaturizer *)status _shouldConsiderEventBasedOnParticipantStatus:v5];
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0xC4u >> status;
  }

  return v4 & 1;
}

- (id)_fetchEligibleEventsForDay
{
  v3 = objc_opt_new();
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [currentCalendar startOfDayForDate:v3];
  v6 = [currentCalendar dateByAddingUnit:16 value:1 toDate:v5 options:0];
  v7 = [(EKEventStore *)self->_eventStore predicateForEventsWithStartDate:v5 endDate:v6 calendars:0];
  v8 = [(EKEventStore *)self->_eventStore eventsMatchingPredicate:v7];
  v9 = [v8 _pas_filteredArrayWithTest:&__block_literal_global_7];

  return v9;
}

uint64_t __55__ATXModeCalendarFeaturizer__fetchEligibleEventsForDay__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 status] == 3 || (objc_msgSend(v2, "isAllDay") & 1) != 0 || !objc_msgSend(v2, "hasAttendees"))
  {
    goto LABEL_6;
  }

  v3 = [v2 attendees];
  if ([v3 count] != 1)
  {

    goto LABEL_9;
  }

  v4 = [v2 attendees];
  v5 = [v4 firstObject];
  v6 = [v5 isCurrentUser];

  if ((v6 & 1) == 0)
  {
LABEL_9:
    v9 = [v2 customObjectForKey:@"SGEventMetadataKey"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = isKindOfClass ^ 1;
    goto LABEL_7;
  }

LABEL_6:
  v7 = 0;
LABEL_7:

  return v7 & 1;
}

- (void)_addTimerForDate:(id)date
{
  v16 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = objc_opt_new();
  v6 = [dateCopy earlierDate:v5];

  if (v6 != dateCopy)
  {
    v7 = __atxlog_handle_modes();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = dateCopy;
      _os_log_impl(&dword_260C9F000, v7, OS_LOG_TYPE_DEFAULT, "ATXModeCalendarClassifier: Scheduling calendar refresh timer for: %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v8 = MEMORY[0x277CEBCE8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__ATXModeCalendarFeaturizer__addTimerForDate___block_invoke;
    v12[3] = &unk_279AB7B90;
    objc_copyWeak(&v13, buf);
    v9 = [v8 fireAtDate:dateCopy block:v12];
    v10 = self->_timers;
    objc_sync_enter(v10);
    [(NSHashTable *)self->_timers addObject:v9];
    objc_sync_exit(v10);

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __46__ATXModeCalendarFeaturizer__addTimerForDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = __atxlog_handle_modes();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_260C9F000, v2, OS_LOG_TYPE_DEFAULT, "ATXModeCalendarClassifier: Refreshing due to event start / end date passing", v5, 2u);
    }

    v3 = [WeakRetained provideFeatures];
    v4 = [WeakRetained delegate];
    [v4 featurizer:WeakRetained didUpdateFeatures:v3];
  }
}

- (void)beginListening
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__eventsDidChange_ name:*MEMORY[0x277CC5948] object:0];
}

- (id)provideFeatures
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = self->_timers;
  objc_sync_enter(v3);
  [(NSHashTable *)self->_timers removeAllObjects];
  objc_sync_exit(v3);

  v4 = objc_opt_new();
  _fetchEligibleEventsForDay = [(ATXModeCalendarFeaturizer *)self _fetchEligibleEventsForDay];
  v6 = objc_alloc_init(ATXModeFeatureSet);
  -[ATXModeFeatureSet setValue:forBinaryFeatureOfType:](v6, "setValue:forBinaryFeatureOfType:", [_fetchEligibleEventsForDay count] != 0, 12);
  [(ATXModeCalendarFeaturizer *)self _setFeaturesForEventsCurrentlyIn:_fetchEligibleEventsForDay now:v4 featureSet:v6];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = _fetchEligibleEventsForDay;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        startDate = [v11 startDate];
        if (startDate)
        {
          [(ATXModeCalendarFeaturizer *)self _addTimerForDate:startDate];
        }

        endDate = [v11 endDate];
        if (endDate)
        {
          [(ATXModeCalendarFeaturizer *)self _addTimerForDate:endDate];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (ATXModeFeaturizerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_shouldConsiderEventBasedOnParticipantStatus:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_260C9F000, a2, OS_LOG_TYPE_FAULT, "ATXModeCalendarClassifier: unknown participation status: %lu", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end