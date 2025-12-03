@interface NLActivityUpNextRelevanceEngineDataSource
- (BOOL)_shouldShowWalkSuggestion;
- (BOOL)enumerateActivitySummariesFromDateComponents:(id)components toDateComponents:(id)dateComponents error:(id *)error handler:(id)handler;
- (NLActivityUpNextRelevanceEngineDataSource)init;
- (id)_activitySummaryPredicateForTypicalDateInterval;
- (id)_createWalkSuggestionElement;
- (id)_typicalDayDateInterval;
- (id)_wristOffDate;
- (id)firstOnWristDateToday;
- (id)supportedSections;
- (void)_addNotificationObservers;
- (void)_executeQuery:(id)query;
- (void)_queryActivitySummaryHistoryWithRemainingRetries:(unint64_t)retries;
- (void)_queue_handleNewActivitySummaries:(id)summaries;
- (void)_queue_handleUpdatedCurrentActivitySummary:(id)summary;
- (void)_queue_updateCachedTypicalDayValues;
- (void)_rebuildTypicalDayModel;
- (void)_removeNotificationObservers;
- (void)_significantTimeChangeOccurred;
- (void)_startCurrentActivitySummaryQueryWithRemainingRetries:(unint64_t)retries;
- (void)_stopQueries;
- (void)_typicalDayTodayActivityChanged;
- (void)dealloc;
- (void)fetchProjectedOffWristDateTodayWithDateInterval:(id)interval completion:(id)completion;
- (void)getElementsInSection:(id)section withHandler:(id)handler;
- (void)pause;
- (void)periodOfDayPredictorDidUpdatePredictedIntervals:(id)intervals;
- (void)resume;
@end

@implementation NLActivityUpNextRelevanceEngineDataSource

- (NLActivityUpNextRelevanceEngineDataSource)init
{
  v18.receiver = self;
  v18.super_class = NLActivityUpNextRelevanceEngineDataSource;
  v2 = [(NLActivityUpNextRelevanceEngineDataSource *)&v18 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UNSPECIFIED, 0);

    v5 = dispatch_queue_attr_make_with_overcommit();

    v6 = dispatch_queue_create([@"com.apple.Activity.UpNext.Serial" UTF8String], v5);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v6;

    v8 = +[NSDictionary dictionary];
    [(NLActivityUpNextRelevanceEngineDataSource *)v2 setHistoricalSummariesByIndex:v8];

    v9 = +[HKHealthStore fiui_sharedHealthStoreForCarousel];
    [(NLActivityUpNextRelevanceEngineDataSource *)v2 setHealthStore:v9];

    v10 = [FIActivitySettingsController alloc];
    healthStore = [(NLActivityUpNextRelevanceEngineDataSource *)v2 healthStore];
    v12 = [v10 initWithHealthStore:healthStore];
    [(NLActivityUpNextRelevanceEngineDataSource *)v2 setSettingsController:v12];

    v13 = +[NSSet set];
    [(NLActivityUpNextRelevanceEngineDataSource *)v2 setQueries:v13];

    [(NLActivityUpNextRelevanceEngineDataSource *)v2 setProgressUpdatesEnabled:_CoachingProgressUpdatesEnabled()];
    v14 = [FITypicalDayActivityModel alloc];
    _typicalDayDateInterval = [(NLActivityUpNextRelevanceEngineDataSource *)v2 _typicalDayDateInterval];
    v16 = [v14 initForDateInterval:_typicalDayDateInterval delegate:v2];
    [(NLActivityUpNextRelevanceEngineDataSource *)v2 setTypicalDayModel:v16];
  }

  return v2;
}

- (void)_addNotificationObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_significantTimeChangeOccurred" name:NSCalendarDayChangedNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_typicalDayTodayActivityChanged" name:FITypicalDayActivityModelTodayActivityDidChangeNotification object:0];

  v5 = +[REPeriodOfDayPredictor sharedInstance];
  [v5 addObserver:self];
}

- (void)_removeNotificationObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSCalendarDayChangedNotification object:0];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:FITypicalDayActivityModelTodayActivityDidChangeNotification object:0];

  v5 = +[REPeriodOfDayPredictor sharedInstance];
  [v5 removeObserver:self];
}

- (void)dealloc
{
  if (notify_is_valid_token(self->_significantTimeChangeToken))
  {
    notify_cancel(self->_significantTimeChangeToken);
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[REPeriodOfDayPredictor sharedInstance];
  [v4 removeObserver:self];

  if (notify_is_valid_token(self->_preferenceChangeNotifyToken))
  {
    notify_cancel(self->_preferenceChangeNotifyToken);
  }

  v5.receiver = self;
  v5.super_class = NLActivityUpNextRelevanceEngineDataSource;
  [(NLActivityUpNextRelevanceEngineDataSource *)&v5 dealloc];
}

- (void)fetchProjectedOffWristDateTodayWithDateInterval:(id)interval completion:(id)completion
{
  completionCopy = completion;
  _wristOffDate = [(NLActivityUpNextRelevanceEngineDataSource *)self _wristOffDate];
  (*(completion + 2))(completionCopy, _wristOffDate);
}

- (id)firstOnWristDateToday
{
  currentCalendar = [(NLActivityUpNextRelevanceEngineDataSource *)self currentCalendar];
  currentDate = [(NLActivityUpNextRelevanceEngineDataSource *)self currentDate];
  v5 = [currentCalendar startOfDayForDate:currentDate];

  v6 = +[REPeriodOfDayPredictor sharedInstance];
  v7 = [v6 dateIntervalForPreviousPeriodOfDay:0];

  currentCalendar2 = [(NLActivityUpNextRelevanceEngineDataSource *)self currentCalendar];
  endDate = [v7 endDate];
  currentDate2 = [(NLActivityUpNextRelevanceEngineDataSource *)self currentDate];
  v11 = [currentCalendar2 isDate:endDate inSameDayAsDate:currentDate2];

  if (v11)
  {
    startDate = [v7 startDate];
LABEL_5:
    startDate2 = startDate;
    goto LABEL_6;
  }

  v13 = +[REPeriodOfDayPredictor sharedInstance];
  currentPeriodOfDay = [v13 currentPeriodOfDay];

  if (currentPeriodOfDay)
  {
    startDate = v5;
    goto LABEL_5;
  }

  v26 = +[REPeriodOfDayPredictor sharedInstance];
  intervalForCurrentPeriodOfDay = [v26 intervalForCurrentPeriodOfDay];
  startDate2 = [intervalForCurrentPeriodOfDay startDate];

LABEL_6:
  v16 = [startDate2 laterDate:v5];
  [v16 timeIntervalSinceReferenceDate];
  v18 = v17;
  _wristOffDate = [(NLActivityUpNextRelevanceEngineDataSource *)self _wristOffDate];
  [_wristOffDate timeIntervalSinceReferenceDate];
  v21 = v20;

  if (v18 >= v21)
  {
    currentCalendar3 = [(NLActivityUpNextRelevanceEngineDataSource *)self currentCalendar];
    currentDate3 = [(NLActivityUpNextRelevanceEngineDataSource *)self currentDate];
    v22 = [currentCalendar3 startOfDayForDate:currentDate3];
  }

  else
  {
    v22 = v16;
  }

  return v22;
}

- (BOOL)enumerateActivitySummariesFromDateComponents:(id)components toDateComponents:(id)dateComponents error:(id *)error handler:(id)handler
{
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  handlerCopy = handler;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_1B90;
  v46 = sub_1BA0;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1B90;
  serialQueue = self->_serialQueue;
  v40 = sub_1BA0;
  v41 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1BA8;
  block[3] = &unk_C3B0;
  block[4] = self;
  block[5] = &v42;
  block[6] = &v36;
  dispatch_sync(serialQueue, block);
  v29 = componentsCopy;
  v12 = [v43[5] dateFromComponents:componentsCopy];
  v13 = [v43[5] dateFromComponents:dateComponentsCopy];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v37[5];
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v48 count:16];
  if (v15)
  {
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v19 = v43[5];
        v20 = [v18 dateComponentsForCalendar:v19];
        v21 = [v19 dateFromComponents:v20];

        [v21 timeIntervalSinceReferenceDate];
        v23 = v22;
        [v12 timeIntervalSinceReferenceDate];
        if (v23 >= v24)
        {
          [v21 timeIntervalSinceReferenceDate];
          v26 = v25;
          [v13 timeIntervalSinceReferenceDate];
          if (v26 <= v27)
          {
            handlerCopy[2](handlerCopy, v18);
          }
        }
      }

      v15 = [v14 countByEnumeratingWithState:&v31 objects:v48 count:16];
    }

    while (v15);
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);

  return 1;
}

- (void)pause
{
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEBUG))
  {
    sub_4DE8();
  }

  [(NLActivityUpNextRelevanceEngineDataSource *)self _stopQueries];
  notify_suspend(self->_significantTimeChangeToken);
  notify_suspend(self->_preferenceChangeNotifyToken);
  [(NLActivityUpNextRelevanceEngineDataSource *)self _removeNotificationObservers];
}

- (void)resume
{
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEBUG))
  {
    sub_4E1C();
  }

  [(NLActivityUpNextRelevanceEngineDataSource *)self _startCurrentActivitySummaryQuery];
  [(NLActivityUpNextRelevanceEngineDataSource *)self _queryActivitySummaryHistory];
  if (notify_is_valid_token(self->_significantTimeChangeToken))
  {
    notify_resume(self->_significantTimeChangeToken);
  }

  else
  {
    objc_initWeak(&location, self);
    uTF8String = [@"SignificantTimeChangeNotification" UTF8String];
    v4 = &_dispatch_main_q;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1F10;
    handler[3] = &unk_C3D8;
    objc_copyWeak(&v10, &location);
    notify_register_dispatch(uTF8String, &self->_significantTimeChangeToken, &_dispatch_main_q, handler);

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  if (notify_is_valid_token(self->_preferenceChangeNotifyToken))
  {
    notify_resume(self->_preferenceChangeNotifyToken);
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = FINanoLifestylePreferencesChangedNotificationKey;
    v6 = &_dispatch_main_q;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1F50;
    v7[3] = &unk_C3D8;
    objc_copyWeak(&v8, &location);
    notify_register_dispatch(v5, &self->_preferenceChangeNotifyToken, &_dispatch_main_q, v7);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  [(NLActivityUpNextRelevanceEngineDataSource *)self _addNotificationObservers];
}

- (id)supportedSections
{
  v4 = REDefaultSectionIdentifier;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)getElementsInSection:(id)section withHandler:(id)handler
{
  sectionCopy = section;
  handlerCopy = handler;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEBUG))
  {
    sub_4E50();
  }

  if ([(NLActivityUpNextRelevanceEngineDataSource *)self _shouldShowWalkSuggestion])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_2260;
    v8[3] = &unk_C400;
    v8[4] = self;
    v9 = handlerCopy;
    dispatch_async(&_dispatch_main_q, v8);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEBUG))
    {
      sub_4EC4();
    }

    (*(handlerCopy + 2))(handlerCopy, &__NSArray0__struct);
  }
}

- (void)periodOfDayPredictorDidUpdatePredictedIntervals:(id)intervals
{
  _HKInitializeLogging();
  v4 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[Supergreen] Routines changed, so wrist-off time may have changed.", buf, 2u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2448;
  block[3] = &unk_C428;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (BOOL)_shouldShowWalkSuggestion
{
  progressUpdatesEnabled = self->_progressUpdatesEnabled;
  _HKInitializeLogging();
  v4 = HKLogCoaching;
  v5 = os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT);
  if (!progressUpdatesEnabled)
  {
    if (!v5)
    {
      return v5;
    }

    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[Supergreen] Walk suggestion not appropriate because progress updates are disabled by user setting.", v8, 2u);
LABEL_8:
    LOBYTE(v5) = 0;
    return v5;
  }

  if (v5)
  {
    v6 = v4;
    v8[0] = 67109376;
    v8[1] = [(NLActivityUpNextRelevanceEngineDataSource *)self willCompleteGoal];
    v9 = 1024;
    shouldSuggestWalk = [(NLActivityUpNextRelevanceEngineDataSource *)self shouldSuggestWalk];
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[Supergreen] Checking if walk is appropriate to suggest: willCompleteGoal=%{BOOL}d, shouldSuggestWalk=%{BOOL}d.", v8, 0xEu);
  }

  if ([(NLActivityUpNextRelevanceEngineDataSource *)self willCompleteGoal])
  {
    goto LABEL_8;
  }

  LOBYTE(v5) = [(NLActivityUpNextRelevanceEngineDataSource *)self shouldSuggestWalk];
  return v5;
}

- (id)_createWalkSuggestionElement
{
  currentSummary = [(NLActivityUpNextRelevanceEngineDataSource *)self currentSummary];
  activityMoveMode = [currentSummary activityMoveMode];

  if (activityMoveMode == &dword_0 + 2)
  {
    _HKInitializeLogging();
    v5 = HKLogCoaching;
    if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      currentSummary2 = [(NLActivityUpNextRelevanceEngineDataSource *)self currentSummary];
      *buf = 138412290;
      v54 = currentSummary2;
      v8 = "[Supergreen] Not creating walk suggestion element for user in move minutes mode. Current summary = %@";
LABEL_11:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  settingsController = [(NLActivityUpNextRelevanceEngineDataSource *)self settingsController];
  experienceType = [settingsController experienceType];

  _HKInitializeLogging();
  v11 = HKLogCoaching;
  if (experienceType != &dword_0 + 1)
  {
    if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v11;
      currentSummary2 = [(NLActivityUpNextRelevanceEngineDataSource *)self currentSummary];
      *buf = 138412290;
      v54 = currentSummary2;
      v8 = "[Supergreen] Not creating walk suggestion element for user in fitness jr. experience. Current summary = %@";
      goto LABEL_11;
    }

LABEL_12:
    v25 = 0;
    goto LABEL_15;
  }

  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEBUG))
  {
    sub_4FA0(v11, self);
  }

  _walkSuggestionDurationInMinutes = [(NLActivityUpNextRelevanceEngineDataSource *)self _walkSuggestionDurationInMinutes];
  currentSummary3 = [(NLActivityUpNextRelevanceEngineDataSource *)self currentSummary];
  activeEnergyBurnedGoal = [currentSummary3 activeEnergyBurnedGoal];
  v15 = +[HKUnit kilocalorieUnit];
  [activeEnergyBurnedGoal doubleValueForUnit:v15];
  v17 = v16;
  currentSummary4 = [(NLActivityUpNextRelevanceEngineDataSource *)self currentSummary];
  activeEnergyBurned = [currentSummary4 activeEnergyBurned];
  v20 = +[HKUnit kilocalorieUnit];
  [activeEnergyBurned doubleValueForUnit:v20];
  v22 = v17 - v21;

  _wristOffDate = [(NLActivityUpNextRelevanceEngineDataSource *)self _wristOffDate];
  v49 = NLActivityUpNextRelevanceEngineContent(_walkSuggestionDurationInMinutes);
  v24 = objc_alloc_init(NSURLComponents);
  [v24 setScheme:@"SessionTrackerApp"];
  if (v22 >= 1.0)
  {
    [v24 setHost:@"startworkout"];
    v26 = [NSString stringWithFormat:@"%lu", 52];
    v27 = [NSURLQueryItem queryItemWithName:@"activityType" value:v26];
    v52 = v27;
    v28 = [NSArray arrayWithObjects:&v52 count:1];
    [v24 setQueryItems:v28];

    v29 = [NSString stringWithFormat:@"%lu", 3];
    v30 = [NSURLQueryItem queryItemWithName:@"goalType" value:v29];
    v51[0] = v30;
    v31 = [NSString stringWithFormat:@"%lf", *&v22];
    v32 = [NSURLQueryItem queryItemWithName:@"goalValue" value:v31];
    v51[1] = v32;
    v33 = [NSURLQueryItem queryItemWithName:@"presentConfiguration" value:@"1"];
    v51[2] = v33;
    v34 = [NSArray arrayWithObjects:v51 count:3];

    queryItems = [v24 queryItems];
    v36 = [queryItems arrayByAddingObjectsFromArray:v34];
    [v24 setQueryItems:v36];
  }

  else
  {
    [v24 setHost:@"startworkoutwithpicker"];
  }

  v37 = [REElementOpenAction alloc];
  v38 = [v24 URL];
  v39 = [v37 initWithURL:v38 applicationID:@"com.apple.SessionTrackerApp"];

  v40 = [_wristOffDate dateByAddingTimeInterval:-10800.0];
  v41 = [_wristOffDate dateByAddingTimeInterval:10800.0 * -0.33];
  v42 = [[NSDateInterval alloc] initWithStartDate:v41 endDate:_wristOffDate];
  v43 = [[REDateRelevanceProvider alloc] initWithEventInterval:v42 becomesIrrelevantDate:_wristOffDate firstBecomesRelevantDate:v40 recentDuration:0.0];
  [v43 providerWithPriority:1];
  v44 = v48 = _wristOffDate;
  v45 = [REElement alloc];
  v50 = v44;
  v46 = [NSArray arrayWithObjects:&v50 count:1];
  v25 = [v45 initWithIdentifier:@"com.apple.SessionTrackerApp.WalkSuggestion" content:v49 action:v39 relevanceProviders:v46 privacyBehavior:1];

LABEL_15:

  return v25;
}

- (void)_typicalDayTodayActivityChanged
{
  _HKInitializeLogging();
  v3 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[Supergreen] Did receive typical day activity model update notification.", buf, 2u);
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2C34;
  block[3] = &unk_C428;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (void)_significantTimeChangeOccurred
{
  _HKInitializeLogging();
  v3 = HKLogCoaching;
  if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[Supergreen] Significant time change occurred.", v4, 2u);
  }

  [(NLActivityUpNextRelevanceEngineDataSource *)self _rebuildTypicalDayModel];
}

- (void)_queue_updateCachedTypicalDayValues
{
  dispatch_assert_queue_V2(self->_serialQueue);
  isUpdatingTypicalDayCachedValues = [(NLActivityUpNextRelevanceEngineDataSource *)self isUpdatingTypicalDayCachedValues];
  _HKInitializeLogging();
  v4 = HKLogCoaching;
  if (isUpdatingTypicalDayCachedValues)
  {
    if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "[Supergreen] Cache update in progress, skipping.", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "[Supergreen] No cache update in progress, updating cached values.", buf, 2u);
    }

    [(NLActivityUpNextRelevanceEngineDataSource *)self setIsUpdatingTypicalDayCachedValues:1];
    v5 = dispatch_get_global_queue(21, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2DF8;
    block[3] = &unk_C428;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

- (void)_rebuildTypicalDayModel
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_31CC;
  block[3] = &unk_C428;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

- (id)_wristOffDate
{
  currentCalendar = [(NLActivityUpNextRelevanceEngineDataSource *)self currentCalendar];
  currentDate = [(NLActivityUpNextRelevanceEngineDataSource *)self currentDate];
  v5 = [currentCalendar hk_startOfDateByAddingDays:1 toDate:currentDate];

  v6 = +[REPeriodOfDayPredictor sharedInstance];
  v7 = [v6 dateIntervalForNextPeriodOfDay:1];

  currentCalendar2 = [(NLActivityUpNextRelevanceEngineDataSource *)self currentCalendar];
  startDate = [v7 startDate];
  currentDate2 = [(NLActivityUpNextRelevanceEngineDataSource *)self currentDate];
  v11 = [currentCalendar2 isDate:startDate inSameDayAsDate:currentDate2];

  if (v11)
  {
    endDate = [v7 endDate];
  }

  else
  {
    v13 = +[REPeriodOfDayPredictor sharedInstance];
    currentPeriodOfDay = [v13 currentPeriodOfDay];

    if (currentPeriodOfDay == &dword_0 + 1)
    {
      v15 = +[REPeriodOfDayPredictor sharedInstance];
      intervalForCurrentPeriodOfDay = [v15 intervalForCurrentPeriodOfDay];
      endDate2 = [intervalForCurrentPeriodOfDay endDate];

      goto LABEL_7;
    }

    endDate = v5;
  }

  endDate2 = endDate;
LABEL_7:
  v18 = [endDate2 earlierDate:v5];

  return v18;
}

- (id)_typicalDayDateInterval
{
  currentCalendar = [(NLActivityUpNextRelevanceEngineDataSource *)self currentCalendar];
  v4 = FITypicalDayActivityModelDaysOfActivityHistory;
  currentDate = [(NLActivityUpNextRelevanceEngineDataSource *)self currentDate];
  v6 = [currentCalendar hk_startOfDateBySubtractingDays:v4 fromDate:currentDate];

  currentCalendar2 = [(NLActivityUpNextRelevanceEngineDataSource *)self currentCalendar];
  currentDate2 = [(NLActivityUpNextRelevanceEngineDataSource *)self currentDate];
  v9 = [currentCalendar2 startOfDayForDate:currentDate2];

  currentCalendar3 = [(NLActivityUpNextRelevanceEngineDataSource *)self currentCalendar];
  v11 = [currentCalendar3 dateByAddingUnit:128 value:-1 toDate:v9 options:0];

  v12 = [[NSDateInterval alloc] initWithStartDate:v6 endDate:v11];

  return v12;
}

- (id)_activitySummaryPredicateForTypicalDateInterval
{
  _typicalDayDateInterval = [(NLActivityUpNextRelevanceEngineDataSource *)self _typicalDayDateInterval];
  currentCalendar = [(NLActivityUpNextRelevanceEngineDataSource *)self currentCalendar];
  startDate = [_typicalDayDateInterval startDate];
  v6 = [currentCalendar hk_activitySummaryDateComponentsFromDate:startDate];

  currentCalendar2 = [(NLActivityUpNextRelevanceEngineDataSource *)self currentCalendar];
  endDate = [_typicalDayDateInterval endDate];
  v9 = [currentCalendar2 hk_activitySummaryDateComponentsFromDate:endDate];

  v10 = [HKQuery predicateForActivitySummariesBetweenStartDateComponents:v6 endDateComponents:v9];

  return v10;
}

- (void)_queue_handleUpdatedCurrentActivitySummary:(id)summary
{
  summaryCopy = summary;
  dispatch_assert_queue_V2(self->_serialQueue);
  [(NLActivityUpNextRelevanceEngineDataSource *)self setCurrentSummary:summaryCopy];
  v5 = [NSSet setWithObject:summaryCopy];
  [(NLActivityUpNextRelevanceEngineDataSource *)self _queue_handleNewActivitySummaries:v5];

  v6 = dispatch_get_global_queue(21, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3898;
  v8[3] = &unk_C478;
  v8[4] = self;
  v9 = summaryCopy;
  v7 = summaryCopy;
  dispatch_async(v6, v8);
}

- (void)_queue_handleNewActivitySummaries:(id)summaries
{
  summariesCopy = summaries;
  dispatch_assert_queue_V2(self->_serialQueue);
  historicalSummariesByIndex = [(NLActivityUpNextRelevanceEngineDataSource *)self historicalSummariesByIndex];
  v6 = [historicalSummariesByIndex mutableCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = summariesCopy;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 _activitySummaryIndex] >= 1)
        {
          v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 _activitySummaryIndex]);
          [v6 setObject:v12 forKeyedSubscript:v13];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = [v6 copy];
  [(NLActivityUpNextRelevanceEngineDataSource *)self setHistoricalSummariesByIndex:v14];
}

- (void)_queryActivitySummaryHistoryWithRemainingRetries:(unint64_t)retries
{
  _HKInitializeLogging();
  v5 = HKLogCoaching;
  if (retries)
  {
    if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      retriesCopy = retries;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[Supergreen] Trying to start historical activity summary query with remaining retries %lu.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_3C68;
    v13 = &unk_C4A0;
    objc_copyWeak(v14, buf);
    v14[1] = retries;
    v6 = objc_retainBlock(&v10);
    v7 = [HKActivitySummaryQuery alloc];
    v8 = [(NLActivityUpNextRelevanceEngineDataSource *)self _activitySummaryPredicateForTypicalDateInterval:v10];
    v9 = [v7 initWithPredicate:v8 resultsHandler:v6];

    [v9 setShouldIncludeActivitySummaryPrivateProperties:1];
    [v9 setShouldIncludeActivitySummaryStatistics:1];
    [(NLActivityUpNextRelevanceEngineDataSource *)self _executeQuery:v9];

    objc_destroyWeak(v14);
    objc_destroyWeak(buf);
  }

  else if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_ERROR))
  {
    sub_5078();
  }
}

- (void)_startCurrentActivitySummaryQueryWithRemainingRetries:(unint64_t)retries
{
  _HKInitializeLogging();
  v5 = HKLogCoaching;
  if (retries)
  {
    if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      retriesCopy = retries;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[Supergreen] Trying to start current activity summary query with remaining retries %lu.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_4064;
    v12 = &unk_C4C8;
    objc_copyWeak(v13, buf);
    v13[1] = retries;
    v6 = objc_retainBlock(&v9);
    v7 = [_HKCurrentActivitySummaryQuery alloc];
    v8 = [v7 initWithUpdateHandler:{v6, v9, v10, v11, v12}];
    [(NLActivityUpNextRelevanceEngineDataSource *)self _executeQuery:v8];

    objc_destroyWeak(v13);
    objc_destroyWeak(buf);
  }

  else if (os_log_type_enabled(HKLogCoaching, OS_LOG_TYPE_ERROR))
  {
    sub_512C();
  }
}

- (void)_executeQuery:(id)query
{
  queryCopy = query;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4270;
  v7[3] = &unk_C478;
  v7[4] = self;
  v8 = queryCopy;
  v6 = queryCopy;
  dispatch_async(serialQueue, v7);
}

- (void)_stopQueries
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_4374;
  block[3] = &unk_C428;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

@end