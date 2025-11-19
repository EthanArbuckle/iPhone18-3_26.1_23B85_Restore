@interface RTMotionActivityManager_CoreMotion
+ (double)durationForTrigger:(unsigned int)a3;
+ (int64_t)activityAlarmTriggerFromCMActivityAlarmTrigger:(unsigned int)a3;
- (NSMutableDictionary)activityAlarms;
- (RTMotionActivityManager_CoreMotion)initWithPlatform:(id)a3 vehicleStore:(id)a4;
- (id)_rtAlarmForTrigger:(unsigned int)a3;
- (void)_bootstrapDominantActivityWithMotionActivites:(id)a3;
- (void)_fetchMotionActivitiesFromStartDate:(id)a3 endDate:(id)a4 handler:(id)a5;
- (void)_fetchMotionActivitiesIfNeeded;
- (void)_fetchPredominantMotionActivityTypeFromStartDate:(id)a3 toEndDate:(id)a4 withHandler:(id)a5;
- (void)_fetchPredominantMotionActivityWithHandler:(id)a3;
- (void)_invalidateActivityAlarms;
- (void)_invalidateAlarm:(id)a3;
- (void)_onActivity:(id)a3;
- (void)_onVehicleConnectedNotification;
- (void)_onVehicleDisconnectedNotification;
- (void)_processActivityAlarm:(id)a3 error:(id)a4;
- (void)_processDominantActivity;
- (void)_processSettledState;
- (void)_resetMotionActivitiesIfNeeded;
- (void)_resubscribeForActivityAlarms;
- (void)_setup;
- (void)_shutdownWithHandler:(id)a3;
- (void)_subscribeForMotionAlarmTypes:(id)a3;
- (void)_subscribeForPedometerDataWithStartDate:(id)a3 handler:(id)a4;
- (void)_subscribeForPedometerEventsWithUUID:(id)a3 handler:(id)a4;
- (void)_unsubscribeForPedometerData:(id)a3;
- (void)internalAddObserver:(id)a3 name:(id)a4;
- (void)internalRemoveObserver:(id)a3 name:(id)a4;
- (void)onActivity:(id)a3;
- (void)onVehicleConnectedNotification;
- (void)onVehicleDisconnectedNotification;
- (void)onVehicleExitNotification;
- (void)setDominantMotionActivity:(id)a3;
- (void)setDominantMotionActivityBootstrapped:(BOOL)a3;
- (void)setInterestedInActivity:(int64_t)a3;
- (void)setSettledState:(unint64_t)a3;
- (void)setVehicleConnectedState:(unint64_t)a3;
@end

@implementation RTMotionActivityManager_CoreMotion

+ (int64_t)activityAlarmTriggerFromCMActivityAlarmTrigger:(unsigned int)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (a3 < 0xB && ((0x41Fu >> a3) & 1) != 0)
  {
    return qword_230B02070[a3];
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109120;
    v6[1] = a3;
    _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported trigger for description %d", v6, 8u);
  }

  return -1;
}

- (NSMutableDictionary)activityAlarms
{
  activityAlarms = self->_activityAlarms;
  if (!activityAlarms)
  {
    v4 = objc_opt_new();
    v5 = self->_activityAlarms;
    self->_activityAlarms = v4;

    activityAlarms = self->_activityAlarms;
  }

  return activityAlarms;
}

- (RTMotionActivityManager_CoreMotion)initWithPlatform:(id)a3 vehicleStore:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v43.receiver = self;
  v43.super_class = RTMotionActivityManager_CoreMotion;
  v8 = [(RTMotionActivityManager *)&v43 initWithPlatform:v6 vehicleStore:v7];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CC1CD0]);
    v10 = *(v8 + 13);
    *(v8 + 13) = v9;

    *(v8 + 49) = [MEMORY[0x277CC1CD0] isActivityAvailable];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        if (*(v8 + 49))
        {
          v12 = @"YES";
        }

        else
        {
          v12 = @"NO";
        }

        *buf = 138412290;
        v45 = v12;
        _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "activity available, %@", buf, 0xCu);
      }
    }

    v13 = objc_opt_new();
    v14 = *(v8 + 14);
    *(v8 + 14) = v13;

    v15 = [v8 queue];
    [*(v8 + 14) setUnderlyingQueue:v15];

    v16 = objc_opt_new();
    v17 = *(v8 + 7);
    *(v8 + 7) = v16;

    *(v8 + 9) = 0;
    v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-30.0];
    v19 = *(v8 + 16);
    *(v8 + 16) = v18;

    v20 = objc_opt_new();
    v21 = *(v8 + 17);
    *(v8 + 17) = v20;

    v22 = [v8 queue];
    v23 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v22);
    v24 = *(v8 + 15);
    *(v8 + 15) = v23;

    dispatch_source_set_timer(*(v8 + 15), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
    objc_initWeak(buf, v8);
    v25 = *(v8 + 15);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __68__RTMotionActivityManager_CoreMotion_initWithPlatform_vehicleStore___block_invoke;
    handler[3] = &unk_2788C5908;
    objc_copyWeak(&v42, buf);
    dispatch_source_set_event_handler(v25, handler);
    dispatch_resume(*(v8 + 15));
    v26 = [v8 platform];
    v27 = [v26 internalInstall];

    if (v27)
    {
      out_token = 0;
      v28 = [@"MotionActivityVehicleConnected" UTF8String];
      v29 = [v8 queue];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __68__RTMotionActivityManager_CoreMotion_initWithPlatform_vehicleStore___block_invoke_2;
      v38[3] = &unk_2788CA130;
      objc_copyWeak(&v39, buf);
      notify_register_dispatch(v28, &out_token, v29, v38);

      v30 = [@"MotionActivityVehicleDisconnected" UTF8String];
      v31 = [v8 queue];
      v33 = MEMORY[0x277D85DD0];
      v34 = 3221225472;
      v35 = __68__RTMotionActivityManager_CoreMotion_initWithPlatform_vehicleStore___block_invoke_3;
      v36 = &unk_2788CA130;
      objc_copyWeak(&v37, buf);
      notify_register_dispatch(v30, &out_token, v31, &v33);

      objc_destroyWeak(&v37);
      objc_destroyWeak(&v39);
    }

    [v8 setup];
    objc_destroyWeak(&v42);
    objc_destroyWeak(buf);
  }

  return v8;
}

- (void)_setup
{
  v28 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CC1D70] isAvailable])
  {
    v3 = [MEMORY[0x277CC1D70] mostRecentVehicleConnection];
    v4 = [v3 timeRange];
    v5 = [v4 startDate];
    [v5 timeIntervalSinceReferenceDate];
    if (v6 <= 0.0)
    {
    }

    else
    {
      v7 = [v3 timeRange];
      v8 = [v7 endDate];
      v9 = [v3 timeRange];
      v10 = [v9 startDate];
      v11 = [v8 compare:v10];

      if (v11 == -1)
      {
        self->_vehicleConnectedState = 2;
        v12 = 72;
        goto LABEL_10;
      }
    }

    v12 = 96;
LABEL_10:
    *(&self->super.super.super.super.isa + v12) = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v3 timeRange];
        v15 = [v14 startDate];
        v16 = [v3 timeRange];
        v17 = [v16 endDate];
        v18 = [v3 deviceId];
        vehicleConnectedState = self->_vehicleConnectedState;
        v20 = 138413058;
        v21 = v15;
        v22 = 2112;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        v26 = 2048;
        v27 = vehicleConnectedState;
        _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "fetched vehicleStateData, startDate, %@, endDate, %@, deviceId, %@, vehicleConnectedState, %lu", &v20, 0x2Au);
      }
    }

    goto LABEL_14;
  }

  self->_vehicleConnectedState = 0;
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    return;
  }

  v3 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v20) = 0;
    _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "CMVehicleState is unavailable, initializing vehicle connected state to unknown.", &v20, 2u);
  }

LABEL_14:
}

- (void)_shutdownWithHandler:(id)a3
{
  v8 = a3;
  dominantMotionActivityTimer = self->_dominantMotionActivityTimer;
  if (dominantMotionActivityTimer)
  {
    dispatch_source_cancel(dominantMotionActivityTimer);
    v5 = self->_dominantMotionActivityTimer;
    self->_dominantMotionActivityTimer = 0;
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  [(RTMotionActivityManager_CoreMotion *)self _invalidateActivityAlarms];
  v7 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, 0);
    v7 = v8;
  }
}

- (void)_fetchMotionActivitiesIfNeeded
{
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(RTMotionActivityManager_CoreMotion *)self lastQueryForMotionActivity];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  if (v6 >= 15.3)
  {
    v7 = [v3 dateByAddingTimeInterval:-30.0];
    v8 = [(RTMotionActivityManager_CoreMotion *)self motionActivities];
    v9 = [v8 lastObject];
    v10 = [v9 startDate];
    v11 = [v10 dateByAddingTimeInterval:15.3];

    if (v11)
    {
      v12 = [v11 laterDate:v7];
    }

    else
    {
      v12 = v7;
    }

    v13 = v12;
    if ([v12 compare:v3] == -1)
    {
      [(RTMotionActivityManager_CoreMotion *)self setLastQueryForMotionActivity:v3];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __68__RTMotionActivityManager_CoreMotion__fetchMotionActivitiesIfNeeded__block_invoke;
      v14[3] = &unk_2788C6B10;
      v14[4] = self;
      [(RTMotionActivityManager_CoreMotion *)self _fetchMotionActivitiesFromStartDate:v13 endDate:v3 handler:v14];
    }
  }
}

- (void)internalAddObserver:(id)a3 name:(id)a4
{
  v6 = a4;
  v22.receiver = self;
  v22.super_class = RTMotionActivityManager_CoreMotion;
  [(RTMotionActivityManager *)&v22 internalAddObserver:a3 name:v6];
  if ([(RTNotifier *)self getNumberOfObservers:v6]== 1)
  {
    v7 = +[(RTNotification *)RTMotionActivityManagerNotificationActivity];
    v8 = [v7 isEqualToString:v6];

    if (v8)
    {
      [(RTMotionActivityManager_CoreMotion *)self setInterestedInActivity:[(RTMotionActivityManager_CoreMotion *)self interestedInActivity]+ 1];
      goto LABEL_9;
    }

    v9 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
    if (([v9 isEqualToString:v6] & 1) == 0)
    {
      v10 = +[(RTNotification *)RTMotionActivityManagerNotificationActivityAlarm];
      if (![v10 isEqualToString:v6])
      {
        v11 = +[(RTNotification *)RTMotionActivityManagerNotificationDominantMotionActivityChange];
        v12 = [v11 isEqualToString:v6];

        if ((v12 & 1) == 0)
        {
          v13 = +[(RTNotification *)RTMotionActivityManagerNotificationVehicleConnected];
          v14 = [v13 isEqualToString:v6];

          if (v14)
          {
            [(RTMotionActivityManager_CoreMotion *)self setInterestedInActivity:[(RTMotionActivityManager_CoreMotion *)self interestedInActivity]+ 1];
            v15 = [MEMORY[0x277CCAB98] defaultCenter];
            [v15 addObserver:self selector:sel_onVehicleConnectedNotification name:*MEMORY[0x277CC1DC0] object:0];

            v16 = [MEMORY[0x277CCAB98] defaultCenter];
            v17 = v16;
            v18 = sel_onVehicleDisconnectedNotification;
            v19 = MEMORY[0x277CC1DC8];
          }

          else
          {
            v20 = +[(RTNotification *)RTMotionActivityManagerNotificationVehicleExit];
            v21 = [v20 isEqualToString:v6];

            if (!v21)
            {
              goto LABEL_9;
            }

            v16 = [MEMORY[0x277CCAB98] defaultCenter];
            v17 = v16;
            v18 = sel_onVehicleExitNotification;
            v19 = MEMORY[0x277CC1DD0];
          }

          [v16 addObserver:self selector:v18 name:*v19 object:0];

          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

LABEL_8:
    [(RTMotionActivityManager_CoreMotion *)self _fetchMotionActivitiesIfNeeded];
    [(RTMotionActivityManager_CoreMotion *)self setInterestedInActivity:[(RTMotionActivityManager_CoreMotion *)self interestedInActivity]+ 1];
    [(RTMotionActivityManager_CoreMotion *)self _resubscribeForActivityAlarms];
  }

LABEL_9:
}

- (void)_resetMotionActivitiesIfNeeded
{
  v10 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
  if ([(RTNotifier *)self getNumberOfObservers:?])
  {
LABEL_4:

    return;
  }

  v3 = +[(RTNotification *)RTMotionActivityManagerNotificationActivityAlarm];
  if ([(RTNotifier *)self getNumberOfObservers:v3])
  {

    goto LABEL_4;
  }

  v4 = +[(RTNotification *)RTMotionActivityManagerNotificationDominantMotionActivityChange];
  v5 = [(RTNotifier *)self getNumberOfObservers:v4];

  if (!v5)
  {
    [(RTMotionActivityManager_CoreMotion *)self setSettledState:0];
    [(RTMotionActivityManager_CoreMotion *)self setDominantMotionActivityBootstrapped:0];
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-30.0];
    [(RTMotionActivityManager_CoreMotion *)self setLastQueryForMotionActivity:v6];

    v7 = [(RTMotionActivityManager_CoreMotion *)self motionActivities];
    [v7 removeAllObjects];

    [(RTMotionActivityManager_CoreMotion *)self setDominantMotionActivity:0];
    v8 = [(RTMotionActivityManager_CoreMotion *)self dominantMotionActivityTimer];

    if (v8)
    {
      v9 = [(RTMotionActivityManager_CoreMotion *)self dominantMotionActivityTimer];
      dispatch_source_set_timer(v9, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
    }

    [(RTMotionActivityManager_CoreMotion *)self _invalidateActivityAlarms];
  }
}

- (void)internalRemoveObserver:(id)a3 name:(id)a4
{
  v6 = a4;
  v21.receiver = self;
  v21.super_class = RTMotionActivityManager_CoreMotion;
  [(RTMotionActivityManager *)&v21 internalRemoveObserver:a3 name:v6];
  if (![(RTNotifier *)self getNumberOfObservers:v6])
  {
    v7 = +[(RTNotification *)RTMotionActivityManagerNotificationActivity];
    v8 = [v7 isEqualToString:v6];

    if (v8)
    {
      [(RTMotionActivityManager_CoreMotion *)self setInterestedInActivity:[(RTMotionActivityManager_CoreMotion *)self interestedInActivity]- 1];
      goto LABEL_9;
    }

    v9 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
    if (([v9 isEqualToString:v6] & 1) == 0)
    {
      v10 = +[(RTNotification *)RTMotionActivityManagerNotificationActivityAlarm];
      if (![v10 isEqualToString:v6])
      {
        v11 = +[(RTNotification *)RTMotionActivityManagerNotificationDominantMotionActivityChange];
        v12 = [v11 isEqualToString:v6];

        if ((v12 & 1) == 0)
        {
          v13 = +[(RTNotification *)RTMotionActivityManagerNotificationVehicleConnected];
          v14 = [v13 isEqualToString:v6];

          if (v14)
          {
            [(RTMotionActivityManager_CoreMotion *)self setInterestedInActivity:[(RTMotionActivityManager_CoreMotion *)self interestedInActivity]- 1];
            v15 = [MEMORY[0x277CCAB98] defaultCenter];
            [v15 removeObserver:self name:*MEMORY[0x277CC1DC0] object:0];

            v16 = [MEMORY[0x277CCAB98] defaultCenter];
            v17 = v16;
            v18 = MEMORY[0x277CC1DC8];
          }

          else
          {
            v19 = +[(RTNotification *)RTMotionActivityManagerNotificationVehicleExit];
            v20 = [v19 isEqualToString:v6];

            if (!v20)
            {
              goto LABEL_9;
            }

            v16 = [MEMORY[0x277CCAB98] defaultCenter];
            v17 = v16;
            v18 = MEMORY[0x277CC1DD0];
          }

          [v16 removeObserver:self name:*v18 object:0];

          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

LABEL_8:
    [(RTMotionActivityManager_CoreMotion *)self setInterestedInActivity:[(RTMotionActivityManager_CoreMotion *)self interestedInActivity]- 1];
    [(RTMotionActivityManager_CoreMotion *)self _resetMotionActivitiesIfNeeded];
  }

LABEL_9:
}

- (void)_fetchMotionActivitiesFromStartDate:(id)a3 endDate:(id)a4 handler:(id)a5
{
  v118[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v84 = a4;
  v80 = v8;
  v82 = a5;
  if (!v82)
  {
    goto LABEL_37;
  }

  if (!v8 || !v84)
  {
    v16 = MEMORY[0x277CCA9B8];
    v116 = *MEMORY[0x277CCA450];
    v117 = @"requires valid dates.";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
    v18 = [v16 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v17];
    v82[2](v82, 0, v18);

    goto LABEL_37;
  }

  if ([v8 compare:v84] == 1)
  {
    v9 = MEMORY[0x277CCA9B8];
    v114 = *MEMORY[0x277CCA450];
    v10 = MEMORY[0x277CCACA8];
    v11 = [v8 stringFromDate];
    v12 = [v84 stringFromDate];
    v13 = [v10 stringWithFormat:@"startDate, %@, postdates endDate, %@", v11, v12];
    v115 = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
    v15 = [v9 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v14];
    v82[2](v82, 0, v15);

    goto LABEL_37;
  }

  if (![(RTMotionActivityManager_CoreMotion *)self motionActivityAvailable])
  {
    v82[2](v82, 0, 0);
    goto LABEL_37;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v8 stringFromDate];
      v21 = [v84 stringFromDate];
      +[RTRuntime footprint];
      *buf = 138412802;
      *&buf[4] = v20;
      v104 = 2112;
      v105 = v21;
      v106 = 2048;
      v107 = v22;
      _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "Query CoreMotion for motionActivity between, startDate, %@, endDate, %@, footprint, %.2f MB", buf, 0x20u);
    }

    v8 = v80;
  }

  v75 = v8;
  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = __Block_byref_object_copy__197;
  v101 = __Block_byref_object_dispose__197;
  v102 = objc_opt_new();
  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = __Block_byref_object_copy__197;
  v95 = __Block_byref_object_dispose__197;
  v96 = 0;
  v74 = [MEMORY[0x277CBEAA8] date];
  v78 = objc_opt_new();
  v23 = self;
  v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v25 = v23;
  v26 = v24;
  v79 = v25;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = v79;
    v28 = [(RTMotionActivityManager_CoreMotion *)v79 UTF8String];
  }

  else
  {
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%p", objc_opt_class(), v79];
    v30 = v29;
    v28 = [v29 UTF8String];
  }

  v31 = dispatch_queue_create(v28, v26);
  [v78 setUnderlyingQueue:v31];

  v32 = 0;
  v76 = *MEMORY[0x277D01448];
  v77 = *MEMORY[0x277CCA450];
  v33 = v75;
  v83 = v75;
  while (1)
  {
    v34 = [v84 earlierDate:v33];
    v35 = [v34 isEqualToDate:v84];

    if (v35)
    {
      break;
    }

    context = objc_autoreleasePoolPush();
    v36 = [v83 dateByAddingTimeInterval:3600.0];

    v37 = [v84 earlierDate:v36];

    v38 = dispatch_semaphore_create(0);
    v39 = [(RTMotionActivityManager_CoreMotion *)v79 motionActivityManager];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __90__RTMotionActivityManager_CoreMotion__fetchMotionActivitiesFromStartDate_endDate_handler___block_invoke;
    v85[3] = &unk_2788CE198;
    v40 = v83;
    v86 = v40;
    v33 = v37;
    v87 = v33;
    v89 = &v91;
    v90 = &v97;
    v41 = v38;
    v88 = v41;
    v83 = v40;
    [v39 queryActivityStartingFromDate:v40 toDate:v33 toQueue:v78 withHandler:v85];

    v42 = v41;
    v43 = [MEMORY[0x277CBEAA8] now];
    v44 = dispatch_time(0, 3600000000000);
    v45 = v32;
    if (dispatch_semaphore_wait(v42, v44))
    {
      v46 = [MEMORY[0x277CBEAA8] now];
      [v46 timeIntervalSinceDate:v43];
      v48 = v47;
      v49 = objc_opt_new();
      v50 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_302];
      v51 = [MEMORY[0x277CCACC8] callStackSymbols];
      v52 = [v51 filteredArrayUsingPredicate:v50];
      v53 = [v52 firstObject];

      [v49 submitToCoreAnalytics:v53 type:1 duration:v48];
      v54 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_2304B3000, v54, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
      }

      v55 = MEMORY[0x277CCA9B8];
      v118[0] = v77;
      *buf = @"semaphore wait timeout";
      v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v118 count:1];
      v57 = [v55 errorWithDomain:v76 code:15 userInfo:v56];

      v45 = v32;
      if (v57)
      {
        v58 = v57;

        v45 = v57;
      }
    }

    v59 = v45;
    v60 = v59 == 0;
    v61 = v92;
    if (v59)
    {
      v62 = v59;
      v63 = v61[5];
      v61[5] = v62;
    }

    else
    {
      if (v92[5])
      {
        v60 = 0;
        goto LABEL_28;
      }

      v64 = v33;
      v63 = v83;
      v83 = v64;
    }

LABEL_28:
    objc_autoreleasePoolPop(context);
    v32 = v59;
    if (!v60)
    {
      goto LABEL_32;
    }
  }

  v59 = v32;
LABEL_32:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v65 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v66 = [v75 stringFromDate];
      v67 = [v84 stringFromDate];
      v68 = [v98[5] count];
      v69 = v92[5];
      v70 = [MEMORY[0x277CBEAA8] date];
      [v70 timeIntervalSinceDate:v74];
      v72 = v71;
      +[RTRuntime footprint];
      *buf = 138413570;
      *&buf[4] = v66;
      v104 = 2112;
      v105 = v67;
      v106 = 2048;
      v107 = v68;
      v108 = 2112;
      v109 = v69;
      v110 = 2048;
      v111 = v72;
      v112 = 2048;
      v113 = v73;
      _os_log_impl(&dword_2304B3000, v65, OS_LOG_TYPE_INFO, "Queried CoreMotion for motionActivity between, startDate, %@, endDate, %@, activities count, %lu, error, %@, latency, %.4f sec, footprint, %.2f MB", buf, 0x3Eu);
    }
  }

  v82[2](v82, v98[5], v92[5]);

  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v97, 8);

LABEL_37:
}

- (void)_fetchPredominantMotionActivityTypeFromStartDate:(id)a3 toEndDate:(id)a4 withHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__RTMotionActivityManager_CoreMotion__fetchPredominantMotionActivityTypeFromStartDate_toEndDate_withHandler___block_invoke;
  v14[3] = &unk_2788C55A8;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(RTMotionActivityManager_CoreMotion *)self _fetchMotionActivitiesFromStartDate:v13 endDate:v12 handler:v14];
}

- (void)_fetchPredominantMotionActivityWithHandler:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (self->_dominantMotionActivityBootstrapped)
      {
        v6 = @"YES";
      }

      else
      {
        v6 = @"NO";
      }

      v7 = 136315394;
      v8 = "[RTMotionActivityManager_CoreMotion _fetchPredominantMotionActivityWithHandler:]";
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "%s, _dominantMotionActivityBootstrapped, %@", &v7, 0x16u);
    }
  }

  v4[2](v4, self->_dominantMotionActivity, 0);
}

- (void)setDominantMotionActivity:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((-[RTMotionActivity isEqual:](self->_dominantMotionActivity, "isEqual:", v5) & 1) == 0 && (-[RTMotionActivity type](self->_dominantMotionActivity, "type") != 4 || [v5 type] != 6))
  {
    v6 = self->_dominantMotionActivity;
    objc_storeStrong(&self->_dominantMotionActivity, a3);
    v7 = +[(RTNotification *)RTMotionActivityManagerNotificationDominantMotionActivityChange];
    v8 = [(RTNotifier *)self getNumberOfObservers:v7];

    if (v8)
    {
      v9 = [[RTMotionActivityManagerNotificationDominantMotionActivityChange alloc] initWithDominantMotionActivity:v5];
      [(RTNotifier *)self postNotification:v9];
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        dominantMotionActivity = self->_dominantMotionActivity;
        v12 = 138412546;
        v13 = v6;
        v14 = 2112;
        v15 = dominantMotionActivity;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "dominant motion activity change from, %@, to, %@", &v12, 0x16u);
      }
    }

    if (self->_dominantMotionActivity)
    {
      [(RTMotionActivityManager_CoreMotion *)self _processSettledState];
    }
  }
}

- (void)setSettledState:(unint64_t)a3
{
  v17 = *MEMORY[0x277D85DE8];
  settledState = self->_settledState;
  if (settledState == a3)
  {
    if (a3 != 1)
    {
      return;
    }

    v5 = [(RTMotionActivityManager_CoreMotion *)self dominantMotionActivity];
    if ([v5 type] == 4)
    {
    }

    else
    {
      v12 = [(RTMotionActivityManager_CoreMotion *)self vehicleConnectedState];

      if (v12 != 2)
      {
        return;
      }
    }

    [(RTMotionActivityManager_CoreMotion *)self _resubscribeForActivityAlarms];
  }

  else
  {
    self->_settledState = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [RTMotionActivityManager motionSettledStateToString:settledState];
        v8 = [RTMotionActivityManager motionSettledStateToString:self->_settledState];
        v13 = 138412546;
        v14 = v7;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "settled state change from, %@, to, %@", &v13, 0x16u);
      }
    }

    v9 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
    v10 = [(RTNotifier *)self getNumberOfObservers:v9];

    if (v10)
    {
      v11 = [[RTMotionActivityManagerNotificationMotionSettledStateChange alloc] initWithSettledState:self->_settledState];
      [(RTNotifier *)self postNotification:v11];
    }

    [(RTMotionActivityManager_CoreMotion *)self _resubscribeForActivityAlarms];
  }
}

- (void)setDominantMotionActivityBootstrapped:(BOOL)a3
{
  if (self->_dominantMotionActivityBootstrapped != a3)
  {
    self->_dominantMotionActivityBootstrapped = a3;
    if (a3)
    {
      [(RTMotionActivityManager_CoreMotion *)self _processDominantActivity];
    }
  }
}

- (void)_bootstrapDominantActivityWithMotionActivites:(id)a3
{
  v8 = a3;
  v4 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
  if ([(RTNotifier *)self getNumberOfObservers:v4])
  {
  }

  else
  {
    v5 = +[(RTNotification *)RTMotionActivityManagerNotificationDominantMotionActivityChange];
    v6 = [(RTNotifier *)self getNumberOfObservers:v5];

    if (!v6)
    {
      goto LABEL_9;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [v8 enumerateObjectsUsingBlock:&__block_literal_global_141];
  }

  if ([v8 count])
  {
    v7 = [(RTMotionActivityManager_CoreMotion *)self motionActivities];
    [v7 addObjectsFromArray:v8];
  }

  [(RTMotionActivityManager_CoreMotion *)self setDominantMotionActivityBootstrapped:1];
LABEL_9:
}

- (void)_onVehicleConnectedNotification
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *MEMORY[0x277CC1DC0];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "received darwin notification, %@", &v5, 0xCu);
    }
  }

  [(RTMotionActivityManager_CoreMotion *)self setVehicleConnectedState:2];
}

- (void)onVehicleConnectedNotification
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__RTMotionActivityManager_CoreMotion_onVehicleConnectedNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_onVehicleDisconnectedNotification
{
  v35 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *MEMORY[0x277CC1DC8];
      *buf = 138412290;
      v34 = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "received darwin notification, %@", buf, 0xCu);
    }
  }

  [(RTMotionActivityManager_CoreMotion *)self setVehicleConnectedState:1];
  if ([MEMORY[0x277CC1D70] isAvailable])
  {
    v5 = [MEMORY[0x277CC1D70] mostRecentVehicleConnection];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 timeRange];
      if (v7 && (v8 = v7, [v6 timeRange], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "startDate"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "timeRange"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "endDate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v10, "isAfterDate:", v12), v12, v11, v10, v9, v8, !v13))
      {
        v16 = objc_alloc(MEMORY[0x277CCA970]);
        v17 = [v6 timeRange];
        v18 = [v17 startDate];
        v19 = [v6 timeRange];
        v20 = [v19 endDate];
        v14 = [v16 initWithStartDate:v18 endDate:v20];

        v21 = objc_alloc(MEMORY[0x277D01418]);
        v22 = [v6 vehicleName];
        v23 = [v6 vehicleModelName];
        v24 = [v6 vehicleBluetoothAddress];
        v25 = [v21 initWithDateInterval:v14 vehicleName:v22 vehicleModelName:v23 bluetoothAddress:v24];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v26 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v34 = v25;
            _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_INFO, "vehicle disconnected, %@", buf, 0xCu);
          }
        }

        v27 = [(RTMotionActivityManager *)self vehicleStore];

        if (v27)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
          {
            v28 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              v30 = [v25 description];
              *buf = 138412290;
              v34 = v30;
              _os_log_debug_impl(&dword_2304B3000, v28, OS_LOG_TYPE_DEBUG, "Storing Vehicle: %@", buf, 0xCu);
            }
          }

          v29 = [(RTMotionActivityManager *)self vehicleStore];
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __72__RTMotionActivityManager_CoreMotion__onVehicleDisconnectedNotification__block_invoke;
          v31[3] = &unk_2788C4730;
          v32 = v25;
          [v29 storeVehicle:v32 handler:v31];
        }
      }

      else
      {
        v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = [v6 description];
          *buf = 138412290;
          v34 = v15;
          _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Vehicle state data received with invalid date interval: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Error retrieving most recent vehicle connection", buf, 2u);
      }
    }
  }
}

- (void)onVehicleDisconnectedNotification
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTMotionActivityManager_CoreMotion_onVehicleDisconnectedNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setVehicleConnectedState:(unint64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  vehicleConnectedState = self->_vehicleConnectedState;
  if (vehicleConnectedState != a3)
  {
    self->_vehicleConnectedState = a3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [RTMotionActivityManager motionActivityVehicleConnectedStateToString:vehicleConnectedState];
        v7 = [RTMotionActivityManager motionActivityVehicleConnectedStateToString:self->_vehicleConnectedState];
        v11 = 138412546;
        v12 = v6;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "vehicle connected state changed from, %@, to %@", &v11, 0x16u);
      }
    }

    if (vehicleConnectedState && self->_vehicleConnectedState)
    {
      if ([MEMORY[0x277CC1D70] isAvailable])
      {
        v8 = [MEMORY[0x277CC1D70] mostRecentVehicleConnection];
        v9 = [v8 deviceId];
      }

      else
      {
        v9 = 0;
      }

      v10 = [[RTMotionActivityManagerNotificationVehicleConnected alloc] initWithVehicleConnectedState:self->_vehicleConnectedState deviceId:v9];
      [(RTNotifier *)self postNotification:v10];
      [(RTMotionActivityManager_CoreMotion *)self _processSettledState];
    }
  }
}

- (void)onVehicleExitNotification
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTMotionActivityManager_CoreMotion_onVehicleExitNotification__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)setInterestedInActivity:(int64_t)a3
{
  interestedInActivity = self->_interestedInActivity;
  if (interestedInActivity != a3)
  {
    self->_interestedInActivity = a3;
    if (a3 < 1 || interestedInActivity)
    {
      if (!a3 && interestedInActivity >= 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v8 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            LOWORD(buf[0]) = 0;
            _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "stopping activity updates", buf, 2u);
          }
        }

        v9 = [(RTMotionActivityManager_CoreMotion *)self motionActivityManager];
        [v9 stopActivityUpdates];
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v5 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_INFO, "starting activity updates", buf, 2u);
        }
      }

      objc_initWeak(buf, self);
      v6 = [(RTMotionActivityManager_CoreMotion *)self motionActivityManager];
      v7 = [(RTMotionActivityManager_CoreMotion *)self operationQueue];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __62__RTMotionActivityManager_CoreMotion_setInterestedInActivity___block_invoke;
      v10[3] = &unk_2788D2E18;
      objc_copyWeak(&v11, buf);
      [v6 startActivityUpdatesToQueue:v7 withHandler:v10];

      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }
  }
}

- (void)_processDominantActivity
{
  v42 = *MEMORY[0x277D85DE8];
  if ([(RTMotionActivityManager_CoreMotion *)self dominantMotionActivityBootstrapped])
  {
    v3 = [(RTMotionActivityManager_CoreMotion *)self motionActivities];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [MEMORY[0x277CBEAA8] date];
      v6 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v5 sinceDate:-30.0];
      v7 = [(RTMotionActivityManager_CoreMotion *)self motionActivities];
      [RTMotionActivityManager_CoreMotion removeActivities:v7 stoppedBeforeDate:v6];

      v8 = [RTMotionActivityHistogram alloc];
      v9 = [(RTMotionActivityManager_CoreMotion *)self motionActivities];
      v10 = [(RTMotionActivityHistogram *)v8 initWithActivites:v9 betweenDate:v6 andDate:v5];

      v11 = [(RTMotionActivityHistogram *)v10 binsSortedByInterval];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v12 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v36 = [v11 count];
          [(RTMotionActivityHistogram *)v10 totalInterval];
          v38 = 134218240;
          v39 = v36;
          v40 = 2048;
          v41 = v37;
          _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "%lu activites in the last %.2f seconds", &v38, 0x16u);
        }

        [v11 enumerateObjectsUsingBlock:&__block_literal_global_149];
      }

      [(RTMotionActivityHistogram *)v10 totalInterval];
      if (v13 >= 30.0)
      {
        v20 = [v11 firstObject];
        v23 = [objc_alloc(MEMORY[0x277D011B8]) initWithType:-[NSObject type](v20 confidence:"type") startDate:{-[NSObject confidence](v20, "confidence"), v6}];
        [(RTMotionActivityManager_CoreMotion *)self setDominantMotionActivity:v23];

        v24 = [(RTMotionActivityManager_CoreMotion *)self motionActivities];
        v25 = [v24 lastObject];

        v26 = [v25 type];
        v27 = [(RTMotionActivityManager_CoreMotion *)self dominantMotionActivity];
        v28 = [v27 type];

        if (v26 != v28)
        {
          v29 = -[RTMotionActivityHistogram binForType:](v10, "binForType:", [v25 type]);
          [v29 interval];
          v31 = v30;
          v32 = [(RTMotionActivityManager_CoreMotion *)self dominantMotionActivityTimer];

          if (v32)
          {
            v33 = [(RTMotionActivityManager_CoreMotion *)self dominantMotionActivityTimer];
            v34 = ((30.0 - v31) * 0.5 + 1.0) * 1000000000.0;
            v35 = dispatch_time(0, v34);
            dispatch_source_set_timer(v33, v35, 0xFFFFFFFFFFFFFFFFLL, (v34 * 0.02));
          }
        }
      }

      else
      {
        v14 = objc_alloc(MEMORY[0x277D011B8]);
        v15 = [MEMORY[0x277CBEAA8] date];
        v16 = [v14 initWithType:0 confidence:0 startDate:v15];
        [(RTMotionActivityManager_CoreMotion *)self setDominantMotionActivity:v16];

        [(RTMotionActivityHistogram *)v10 totalInterval];
        v18 = v17;
        v19 = [(RTMotionActivityManager_CoreMotion *)self dominantMotionActivityTimer];

        if (!v19)
        {
LABEL_16:

          return;
        }

        v20 = [(RTMotionActivityManager_CoreMotion *)self dominantMotionActivityTimer];
        v21 = (30.0 - v18) * 1000000000.0;
        v22 = dispatch_time(0, v21);
        dispatch_source_set_timer(v20, v22, 0xFFFFFFFFFFFFFFFFLL, (v21 * 0.02));
      }

      goto LABEL_16;
    }
  }
}

- (void)_processSettledState
{
  if ([(RTMotionActivityManager_CoreMotion *)self vehicleConnectedState]== 2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [(RTMotionActivityManager_CoreMotion *)self dominantMotionActivity];
    v5 = [v4 confidence];

    if (v5 < 2)
    {
      return;
    }

    v6 = [(RTMotionActivityManager_CoreMotion *)self dominantMotionActivity];
    v7 = [v6 type];

    if ((v7 - 1) > 4)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_230B020C8[v7 - 1];
    }
  }

  [(RTMotionActivityManager_CoreMotion *)self setSettledState:v3];
}

- (void)_onActivity:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[(RTNotification *)RTMotionActivityManagerNotificationActivity];
  v6 = [(RTNotifier *)self getNumberOfObservers:v5];

  if (v6)
  {
    v7 = [[RTMotionActivityManagerNotificationActivity alloc] initWithActivity:v4];
    [(RTNotifier *)self postNotification:v7];
  }

  v8 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
  if ([(RTNotifier *)self getNumberOfObservers:v8])
  {
  }

  else
  {
    v9 = +[(RTNotification *)RTMotionActivityManagerNotificationDominantMotionActivityChange];
    v10 = [(RTNotifier *)self getNumberOfObservers:v9];

    if (!v10)
    {
      goto LABEL_11;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v4;
      _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "caching RTMotionActivity, %@", &v13, 0xCu);
    }
  }

  v12 = [(RTMotionActivityManager_CoreMotion *)self motionActivities];
  [v12 addObject:v4];

  [(RTMotionActivityManager_CoreMotion *)self _processDominantActivity];
LABEL_11:
}

- (void)onActivity:(id)a3
{
  v4 = a3;
  v5 = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__RTMotionActivityManager_CoreMotion_onActivity___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_resubscribeForActivityAlarms
{
  if (-[RTMotionActivityManager_CoreMotion interestedInActivity](self, "interestedInActivity") && ([MEMORY[0x277CC1C10] activityAlarmAvailable] & 1) != 0)
  {
    v3 = [(RTMotionActivityManager_CoreMotion *)self settledState];
    if (v3)
    {
      if (v3 != 2)
      {
        if (v3 == 1)
        {
          v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{&unk_2845A07A0, 0}];
          if (-[RTMotionActivityManager_CoreMotion vehicleConnectedState](self, "vehicleConnectedState") == 2 || (-[RTMotionActivityManager_CoreMotion dominantMotionActivity](self, "dominantMotionActivity"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 type], v4, v5 == 4))
          {
            [v8 addObject:&unk_2845A07B8];
          }

          [(RTMotionActivityManager_CoreMotion *)self _subscribeForMotionAlarmTypes:v8];
        }

        return;
      }

      v7 = &unk_2845A1880;
    }

    else
    {
      v7 = &unk_2845A1898;
    }

    [(RTMotionActivityManager_CoreMotion *)self _subscribeForMotionAlarmTypes:v7];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "Bail from resubscribing to motion alarms", buf, 2u);
    }
  }
}

- (void)_subscribeForMotionAlarmTypes:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([MEMORY[0x277CC1C10] activityAlarmAvailable])
  {
    aSelector = a2;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v5, "count")}];
    if ([v5 count])
    {
      v9 = 0;
      *&v8 = 138412290;
      v38 = v8;
      do
      {
        v10 = [v5 objectAtIndexedSubscript:{v9, v38}];
        v11 = [v10 unsignedIntValue];

        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
        [v7 addObject:v12];

        v13 = [(RTMotionActivityManager_CoreMotion *)self activityAlarms];
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
        v15 = [v13 objectForKeyedSubscript:v14];

        if (v15)
        {
          v16 = [MEMORY[0x277CC1C10] triggerToString:v11];
          [v6 addObject:v16];
        }

        else
        {
          v16 = [(RTMotionActivityManager_CoreMotion *)self _rtAlarmForTrigger:v11];
          if (v16)
          {
            v17 = [(RTMotionActivityManager_CoreMotion *)self activityAlarms];
            v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
            [v17 setObject:v16 forKeyedSubscript:v18];

            v19 = [MEMORY[0x277CC1C10] triggerToString:v11];
            [v6 addObject:v19];
          }

          else
          {
            v19 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = [MEMORY[0x277CC1C10] triggerToString:v11];
              *buf = v38;
              v47 = v20;
              _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "failed to subscribe for motion activity alarm %@", buf, 0xCu);
            }
          }
        }

        ++v9;
      }

      while (v9 < [v5 count]);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v22 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = NSStringFromSelector(aSelector);
        v24 = [v6 componentsJoinedByString:{@", "}];
        *buf = 138412546;
        v47 = v23;
        v48 = 2112;
        v49 = v24;
        _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_INFO, "%@, subscribed for motion activity alarms, %@", buf, 0x16u);
      }
    }

    aSelectora = v6;
    v25 = MEMORY[0x277CBEB58];
    v26 = [(RTMotionActivityManager_CoreMotion *)self activityAlarms];
    v27 = [v26 allKeys];
    v28 = [v25 setWithArray:v27];

    [v28 minusSet:v7];
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v42;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v41 + 1) + 8 * i);
          v35 = [(RTMotionActivityManager_CoreMotion *)self activityAlarms];
          v36 = [v35 objectForKeyedSubscript:v34];
          [(RTMotionActivityManager_CoreMotion *)self _invalidateAlarm:v36];

          v37 = [(RTMotionActivityManager_CoreMotion *)self activityAlarms];
          [v37 setObject:0 forKeyedSubscript:v34];
        }

        v31 = [v29 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v31);
    }

    v21 = aSelectora;
LABEL_28:

    goto LABEL_29;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2304B3000, v21, OS_LOG_TYPE_DEBUG, "Bail from subscribing to motion alarms", buf, 2u);
    }

    goto LABEL_28;
  }

LABEL_29:
}

+ (double)durationForTrigger:(unsigned int)a3
{
  result = 180.0;
  v4 = 60.0;
  if (a3 == 3)
  {
    v4 = 10.0;
  }

  if (a3 != 4)
  {
    result = v4;
  }

  if (a3 == 10)
  {
    return 10.0;
  }

  return result;
}

- (id)_rtAlarmForTrigger:(unsigned int)a3
{
  v3 = *&a3;
  [objc_opt_class() durationForTrigger:*&a3];
  v6 = v5;
  v7 = objc_alloc(MEMORY[0x277CC1C10]);
  v8 = [(RTNotifier *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__RTMotionActivityManager_CoreMotion__rtAlarmForTrigger___block_invoke;
  v11[3] = &unk_2788D2E40;
  v11[4] = self;
  v9 = [v7 initWithTrigger:v3 duration:v8 onQueue:v11 withHandler:v6];

  return v9;
}

- (void)_processActivityAlarm:(id)a3 error:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(&v9->super.super, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_error_impl(&dword_2304B3000, &v9->super.super, OS_LOG_TYPE_ERROR, "%@", &v16, 0xCu);
    }

    goto LABEL_4;
  }

  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = NSStringFromSelector(a2);
        v16 = 138412546;
        v17 = v11;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_2304B3000, v10, OS_LOG_TYPE_INFO, "%@, received %@", &v16, 0x16u);
      }
    }

    [(RTMotionActivityManager_CoreMotion *)self _invalidateAlarm:v7];
    v12 = [(RTMotionActivityManager_CoreMotion *)self activityAlarms];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v7, "trigger")}];
    [v12 setObject:0 forKeyedSubscript:v13];

    [(RTMotionActivityManager_CoreMotion *)self _fetchMotionActivitiesIfNeeded];
    v14 = +[(RTNotification *)RTMotionActivityManagerNotificationActivityAlarm];
    v15 = [(RTNotifier *)self getNumberOfObservers:v14];

    if (v15)
    {
      v9 = -[RTMotionActivityManagerNotificationActivityAlarm initWithActivityAlarmTrigger:]([RTMotionActivityManagerNotificationActivityAlarm alloc], "initWithActivityAlarmTrigger:", [objc_opt_class() activityAlarmTriggerFromCMActivityAlarmTrigger:{objc_msgSend(v7, "trigger")}]);
      [(RTNotifier *)self postNotification:v9];
LABEL_4:
    }
  }
}

- (void)_invalidateAlarm:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v4 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v6 = [MEMORY[0x277CC1C10] triggerToString:{objc_msgSend(v3, "trigger")}];
        v8 = 138412290;
        v9 = v6;
        _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "invalidate alarm type %@", &v8, 0xCu);
      }
    }

    [v3 invalidate];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v5 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v7 = [MEMORY[0x277CC1C10] triggerToString:{objc_msgSend(v3, "trigger")}];
        v8 = 138412290;
        v9 = v7;
        _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "invalidated alarm type %@", &v8, 0xCu);
      }
    }
  }
}

- (void)_invalidateActivityAlarms
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(RTMotionActivityManager_CoreMotion *)self activityAlarms];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(RTMotionActivityManager_CoreMotion *)self activityAlarms];
        v10 = [v9 objectForKeyedSubscript:v8];
        [(RTMotionActivityManager_CoreMotion *)self _invalidateAlarm:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(RTMotionActivityManager_CoreMotion *)self setActivityAlarms:0];
}

- (void)_subscribeForPedometerDataWithStartDate:(id)a3 handler:(id)a4
{
  v52[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          v12 = NSStringFromSelector(a2);
          v13 = [MEMORY[0x277CC1D18] isStepCountingAvailable];
          v14 = @"NO";
          *buf = 138412802;
          *&buf[4] = v11;
          *&buf[12] = 2112;
          if (v13)
          {
            v14 = @"YES";
          }

          *&buf[14] = v12;
          *&buf[22] = 2112;
          v46 = v14;
          _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, isStepCountingAvailable, %@", buf, 0x20u);
        }
      }

      if ([MEMORY[0x277CC1D18] isStepCountingAvailable])
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v46 = __Block_byref_object_copy__197;
        v47 = __Block_byref_object_dispose__197;
        v48 = [MEMORY[0x277CCAD78] UUID];
        v15 = objc_alloc_init(MEMORY[0x277CC1D18]);
        v16 = [(RTMotionActivityManager_CoreMotion *)self uuidToPedometersMap];
        [v16 setObject:v15 forKeyedSubscript:*(*&buf[8] + 40)];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          v17 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = objc_opt_class();
            v19 = NSStringFromClass(v18);
            v20 = NSStringFromSelector(a2);
            v21 = *(*&buf[8] + 40);
            v22 = [v7 stringFromDate];
            *v37 = 138413058;
            v38 = v19;
            v39 = 2112;
            v40 = v20;
            v41 = 2112;
            v42 = v21;
            v43 = 2112;
            v44 = v22;
            _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_INFO, "%@, %@, starting pedometer updates with UUID, %@, startDate, %@", v37, 0x2Au);
          }
        }

        v23 = objc_autoreleasePoolPush();
        v24 = [(RTMotionActivityManager_CoreMotion *)self uuidToPedometersMap];
        v25 = [v24 objectForKeyedSubscript:*(*&buf[8] + 40)];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __86__RTMotionActivityManager_CoreMotion__subscribeForPedometerDataWithStartDate_handler___block_invoke;
        v33[3] = &unk_2788D2E68;
        v33[4] = self;
        v36 = a2;
        v26 = v8;
        v34 = v26;
        v35 = buf;
        [v25 startPedometerUpdatesFromDate:v7 withHandler:v33];

        objc_autoreleasePoolPop(v23);
        (*(v26 + 2))(v26, *(*&buf[8] + 40), 0, 0);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v30 = MEMORY[0x277CCA9B8];
        v49 = *MEMORY[0x277CCA450];
        v50 = @"step counting is not supported";
        v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v32 = [v30 errorWithDomain:*MEMORY[0x277D01448] code:1 userInfo:v31];

        (*(v8 + 2))(v8, 0, 0, v32);
      }
    }

    else
    {
      v27 = MEMORY[0x277CCA9B8];
      v51 = *MEMORY[0x277CCA450];
      v52[0] = @"startDate is nil";
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
      v29 = [v27 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v28];

      (*(v8 + 2))(v8, 0, 0, v29);
    }
  }
}

- (void)_subscribeForPedometerEventsWithUUID:(id)a3 handler:(id)a4
{
  v46[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(a2);
        v13 = [MEMORY[0x277CC1D18] isPedometerEventTrackingAvailable];
        v14 = @"NO";
        *buf = 138412802;
        *&buf[4] = v11;
        *&buf[12] = 2112;
        if (v13)
        {
          v14 = @"YES";
        }

        *&buf[14] = v12;
        *&buf[22] = 2112;
        v42 = v14;
        _os_log_impl(&dword_2304B3000, v9, OS_LOG_TYPE_INFO, "%@, %@, isPedometerEventTrackingAvailable, %@", buf, 0x20u);
      }
    }

    if ([MEMORY[0x277CC1D18] isPedometerEventTrackingAvailable])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v42 = __Block_byref_object_copy__197;
      v43 = __Block_byref_object_dispose__197;
      v44 = v7;
      if (!v44)
      {
        v15 = [MEMORY[0x277CCAD78] UUID];
        v16 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v15;

        v17 = objc_alloc_init(MEMORY[0x277CC1D18]);
        v18 = [(RTMotionActivityManager_CoreMotion *)self uuidToPedometersMap];
        [v18 setObject:v17 forKeyedSubscript:*(*&buf[8] + 40)];
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v19 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = objc_opt_class();
          v21 = NSStringFromClass(v20);
          v22 = NSStringFromSelector(a2);
          v23 = *(*&buf[8] + 40);
          *v35 = 138412802;
          v36 = v21;
          v37 = 2112;
          v38 = v22;
          v39 = 2112;
          v40 = v23;
          _os_log_impl(&dword_2304B3000, v19, OS_LOG_TYPE_INFO, "%@, %@, starting pedometer event updates with UUID, %@", v35, 0x20u);
        }
      }

      v24 = objc_autoreleasePoolPush();
      v25 = [(RTMotionActivityManager_CoreMotion *)self uuidToPedometersMap];
      v26 = [v25 objectForKeyedSubscript:*(*&buf[8] + 40)];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __83__RTMotionActivityManager_CoreMotion__subscribeForPedometerEventsWithUUID_handler___block_invoke;
      v31[3] = &unk_2788D2E90;
      v31[4] = self;
      v34 = a2;
      v27 = v8;
      v32 = v27;
      v33 = buf;
      [v26 startPedometerEventUpdatesWithHandler:v31];

      objc_autoreleasePoolPop(v24);
      (*(v27 + 2))(v27, *(*&buf[8] + 40), 0, 0);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v28 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      v46[0] = @"pedometer event tracking is not supported";
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v30 = [v28 errorWithDomain:*MEMORY[0x277D01448] code:1 userInfo:v29];

      (*(v8 + 2))(v8, 0, 0, v30);
    }
  }
}

- (void)_unsubscribeForPedometerData:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = NSStringFromSelector(a2);
      v20 = 138412802;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "%@, %@, stopping pedometer updates for UUID, %@", &v20, 0x20u);
    }
  }

  if (v5)
  {
    v10 = [(RTMotionActivityManager_CoreMotion *)self uuidToPedometersMap];
    v11 = [v10 objectForKeyedSubscript:v5];

    if (v11)
    {
      v12 = [(RTMotionActivityManager_CoreMotion *)self uuidToPedometersMap];
      v13 = [v12 objectForKeyedSubscript:v5];
      [v13 stopPedometerUpdates];

      v14 = [(RTMotionActivityManager_CoreMotion *)self uuidToPedometersMap];
      v15 = [v14 objectForKeyedSubscript:v5];
      [v15 stopPedometerEventUpdates];

      v16 = [(RTMotionActivityManager_CoreMotion *)self uuidToPedometersMap];
      [v16 setObject:0 forKeyedSubscript:v5];
LABEL_11:

      goto LABEL_12;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(a2);
      v20 = 138412802;
      v21 = v18;
      v22 = 2112;
      v23 = v19;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_INFO, "%@, %@, pedometer for UUID, %@, not found in dictionary", &v20, 0x20u);
    }

    goto LABEL_11;
  }

LABEL_12:
}

@end