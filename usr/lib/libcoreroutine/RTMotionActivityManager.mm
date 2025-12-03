@interface RTMotionActivityManager
+ (BOOL)supportsNotificationName:(id)name;
+ (RTMotionActivityManager)allocWithZone:(_NSZone *)zone;
+ (double)ratioOfMotionActivityType:(unint64_t)type forActivities:(id)activities startDate:(id)date endDate:(id)endDate;
+ (id)activityAlarmTriggerToString:(int64_t)string;
+ (id)motionActivityVehicleConnectedStateToString:(unint64_t)string;
+ (id)motionSettledStateToString:(unint64_t)string;
+ (void)removeActivities:(id)activities stoppedBeforeDate:(id)date;
- (RTMotionActivityManager)initWithPlatform:(id)platform vehicleStore:(id)store;
- (void)_fetchMotionActivitiesFromStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)_fetchPredominantMotionActivityTypeFromStartDate:(id)date toEndDate:(id)endDate withHandler:(id)handler;
- (void)_fetchPredominantMotionActivityWithHandler:(id)handler;
- (void)_subscribeForPedometerDataWithStartDate:(id)date handler:(id)handler;
- (void)_subscribeForPedometerEventsWithUUID:(id)d handler:(id)handler;
- (void)_unsubscribeForPedometerData:(id)data;
- (void)fetchMotionActivitiesFromStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)fetchPredominantMotionActivityTypeFromStartDate:(id)date toEndDate:(id)endDate withHandler:(id)handler;
- (void)fetchPredominantMotionActivityWithHandler:(id)handler;
- (void)internalAddObserver:(id)observer name:(id)name;
- (void)internalRemoveObserver:(id)observer name:(id)name;
- (void)subscribeForPedometerDataWithStartDate:(id)date handler:(id)handler;
- (void)subscribeForPedometerEventsWithUUID:(id)d handler:(id)handler;
- (void)unsubscribeForPedometerData:(id)data;
@end

@implementation RTMotionActivityManager

+ (RTMotionActivityManager)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [RTMotionActivityManager_CoreMotion allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___RTMotionActivityManager;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

- (RTMotionActivityManager)initWithPlatform:(id)platform vehicleStore:(id)store
{
  platformCopy = platform;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = RTMotionActivityManager;
  v9 = [(RTNotifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_platform, platform);
    objc_storeStrong(&v10->_vehicleStore, store);
  }

  return v10;
}

+ (id)motionActivityVehicleConnectedStateToString:(unint64_t)string
{
  if (string > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_2788CC6D0[string];
  }
}

+ (id)motionSettledStateToString:(unint64_t)string
{
  if (string > 2)
  {
    return @"Invalid";
  }

  else
  {
    return off_2788CC6E8[string];
  }
}

+ (id)activityAlarmTriggerToString:(int64_t)string
{
  if ((string + 1) > 0xB)
  {
    return @"Invalid";
  }

  else
  {
    return off_2788CC700[string + 1];
  }
}

- (void)internalAddObserver:(id)observer name:(id)name
{
  v8 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (([objc_opt_class() supportsNotificationName:nameCopy] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v6, 0xCu);
    }
  }
}

- (void)internalRemoveObserver:(id)observer name:(id)name
{
  v8 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (([objc_opt_class() supportsNotificationName:nameCopy] & 1) == 0)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = nameCopy;
      _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "unsupported notification, %@", &v6, 0xCu);
    }
  }
}

+ (BOOL)supportsNotificationName:(id)name
{
  nameCopy = name;
  v4 = +[(RTNotification *)RTMotionActivityManagerNotificationActivity];
  if ([nameCopy isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[(RTNotification *)RTMotionActivityManagerNotificationDominantMotionActivityChange];
    if ([nameCopy isEqualToString:v6])
    {
      v5 = 1;
    }

    else
    {
      v7 = +[(RTNotification *)RTMotionActivityManagerNotificationMotionSettledStateChange];
      if ([nameCopy isEqualToString:v7])
      {
        v5 = 1;
      }

      else
      {
        v8 = +[(RTNotification *)RTMotionActivityManagerNotificationVehicleExit];
        if ([nameCopy isEqualToString:v8])
        {
          v5 = 1;
        }

        else
        {
          v9 = +[(RTNotification *)RTMotionActivityManagerNotificationVehicleConnected];
          if ([nameCopy isEqualToString:v9])
          {
            v5 = 1;
          }

          else
          {
            v10 = +[(RTNotification *)RTMotionActivityManagerNotificationActivityAlarm];
            v5 = [nameCopy isEqualToString:v10];
          }
        }
      }
    }
  }

  return v5;
}

- (void)fetchMotionActivitiesFromStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__RTMotionActivityManager_fetchMotionActivitiesFromStartDate_endDate_handler___block_invoke;
    v12[3] = &unk_2788C5530;
    v12[4] = self;
    v13 = dateCopy;
    v14 = endDateCopy;
    v15 = handlerCopy;
    dispatch_async(queue, v12);
  }
}

- (void)_fetchMotionActivitiesFromStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (handler)
  {
    v9 = *MEMORY[0x277CCA450];
    v10[0] = @"Not supported on this platform.";
    v5 = MEMORY[0x277CBEAC0];
    handlerCopy = handler;
    v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:1 userInfo:v7];
    handlerCopy[2](handlerCopy, 0, v8);
  }
}

- (void)fetchPredominantMotionActivityTypeFromStartDate:(id)date toEndDate:(id)endDate withHandler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __97__RTMotionActivityManager_fetchPredominantMotionActivityTypeFromStartDate_toEndDate_withHandler___block_invoke;
    v12[3] = &unk_2788C5530;
    v12[4] = self;
    v13 = dateCopy;
    v14 = endDateCopy;
    v15 = handlerCopy;
    dispatch_async(queue, v12);
  }
}

- (void)_fetchPredominantMotionActivityTypeFromStartDate:(id)date toEndDate:(id)endDate withHandler:(id)handler
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA450];
  v10[0] = @"Not supported on this platform.";
  v5 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:1 userInfo:v7];
  handlerCopy[2](handlerCopy, 0, v8);
}

- (void)fetchPredominantMotionActivityWithHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __69__RTMotionActivityManager_fetchPredominantMotionActivityWithHandler___block_invoke;
    v6[3] = &unk_2788C4938;
    v6[4] = self;
    v7 = handlerCopy;
    dispatch_async(queue, v6);
  }
}

- (void)_fetchPredominantMotionActivityWithHandler:(id)handler
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CCA450];
  v8[0] = @"Not supported on this platform.";
  v3 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:1 userInfo:v5];
  handlerCopy[2](handlerCopy, 0, v6);
}

- (void)subscribeForPedometerDataWithStartDate:(id)date handler:(id)handler
{
  dateCopy = date;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__RTMotionActivityManager_subscribeForPedometerDataWithStartDate_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dateCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dateCopy;
  dispatch_async(queue, block);
}

- (void)_subscribeForPedometerDataWithStartDate:(id)date handler:(id)handler
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"Not supported on this platform.";
  v4 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:1 userInfo:v6];
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v7);
}

- (void)subscribeForPedometerEventsWithUUID:(id)d handler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__RTMotionActivityManager_subscribeForPedometerEventsWithUUID_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = dCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

- (void)_subscribeForPedometerEventsWithUUID:(id)d handler:(id)handler
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"Not supported on this platform.";
  v4 = MEMORY[0x277CBEAC0];
  handlerCopy = handler;
  v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:1 userInfo:v6];
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v7);
}

- (void)unsubscribeForPedometerData:(id)data
{
  dataCopy = data;
  queue = [(RTNotifier *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__RTMotionActivityManager_unsubscribeForPedometerData___block_invoke;
  v7[3] = &unk_2788C4A70;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(queue, v7);
}

- (void)_unsubscribeForPedometerData:(id)data
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"Not supported on this platform.";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:1 userInfo:v3];
  v5 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "error, %@", &v6, 0xCu);
  }
}

+ (void)removeActivities:(id)activities stoppedBeforeDate:(id)date
{
  activitiesCopy = activities;
  if (activitiesCopy && date)
  {
    v6 = MEMORY[0x277CCA970];
    v10 = activitiesCopy;
    dateCopy = date;
    v8 = [[v6 alloc] initWithStartDate:dateCopy duration:0.0];

    v9 = [v10 indexOfObject:v8 inSortedRange:0 options:objc_msgSend(v10 usingComparator:{"count"), 1280, &__block_literal_global_194}];
    if (v9 >= 2)
    {
      [v10 removeObjectsInRange:{0, v9 - 1}];
    }

    activitiesCopy = v10;
  }
}

uint64_t __62__RTMotionActivityManager_removeActivities_stoppedBeforeDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

+ (double)ratioOfMotionActivityType:(unint64_t)type forActivities:(id)activities startDate:(id)date endDate:(id)endDate
{
  activitiesCopy = activities;
  dateCopy = date;
  endDateCopy = endDate;
  v12 = endDateCopy;
  v13 = 0.0;
  if (dateCopy && endDateCopy && [dateCopy compare:endDateCopy] == -1)
  {
    v14 = [[RTMotionActivityHistogram alloc] initWithActivites:activitiesCopy betweenDate:dateCopy andDate:v12];
    v15 = [(RTMotionActivityHistogram *)v14 binForType:type];
    [v15 interval];
    v17 = v16;
    [v12 timeIntervalSinceDate:dateCopy];
    v13 = v17 / v18;
  }

  return v13;
}

void __68__RTMotionActivityManager_CoreMotion_initWithPlatform_vehicleStore___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processDominantActivity];
}

void __68__RTMotionActivityManager_CoreMotion_initWithPlatform_vehicleStore___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [[RTMotionActivityManagerNotificationVehicleConnected alloc] initWithVehicleConnectedState:2 deviceId:@"Simulated vehicle"];
  [WeakRetained postNotification:v1];
}

void __68__RTMotionActivityManager_CoreMotion_initWithPlatform_vehicleStore___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [[RTMotionActivityManagerNotificationVehicleConnected alloc] initWithVehicleConnectedState:1 deviceId:@"Simulated vehicle"];
  [WeakRetained postNotification:v1];
}

void __90__RTMotionActivityManager_CoreMotion__fetchMotionActivitiesFromStartDate_endDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [*(a1 + 32) stringFromDate];
      v10 = [*(a1 + 40) stringFromDate];
      v11 = [v5 count];
      +[RTRuntime footprint];
      v15 = 138413314;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2048;
      v20 = v11;
      v21 = 2112;
      v22 = v6;
      v23 = 2048;
      v24 = v12;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "Querying CoreMotion for motionActivity between startDate, %@, endDate, %@, returned %lu activities, error, %@, footprint, %.2f MB", &v15, 0x34u);
    }
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [v5 enumerateObjectsUsingBlock:&__block_literal_global_154];
  }

  v13 = [[_RTMap alloc] initWithInput:v5];
  v14 = [(_RTMap *)v13 withBlock:&__block_literal_global_135_1];

  [*(*(*(a1 + 64) + 8) + 40) addObjectsFromArray:v14];
  dispatch_semaphore_signal(*(a1 + 48));
  objc_autoreleasePoolPop(v7);
}

void __90__RTMotionActivityManager_CoreMotion__fetchMotionActivitiesFromStartDate_endDate_handler___block_invoke_129(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134218242;
      v7 = a3 + 1;
      v8 = 2112;
      v9 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "motionActivity %lu, %@", &v6, 0x16u);
    }
  }
}

id __90__RTMotionActivityManager_CoreMotion__fetchMotionActivitiesFromStartDate_endDate_handler___block_invoke_132(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D011B8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 rtMotionActivityType];
  v6 = [v3 rtMotionActivityConfidence];
  v7 = [v3 startDate];

  v8 = [v4 initWithType:v5 confidence:v6 startDate:v7];

  return v8;
}

void __109__RTMotionActivityManager_CoreMotion__fetchPredominantMotionActivityTypeFromStartDate_toEndDate_withHandler___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (a3)
  {
    (*(a1[6] + 16))();
  }

  else
  {
    v5 = [[RTMotionActivityHistogram alloc] initWithActivites:v9 betweenDate:a1[4] andDate:a1[5]];
    v6 = [(RTMotionActivityHistogram *)v5 binsSortedByInterval];
    v7 = a1[6];
    v8 = [v6 firstObject];
    (*(v7 + 16))(v7, [v8 type], 0);
  }
}

void __84__RTMotionActivityManager_CoreMotion__bootstrapDominantActivityWithMotionActivites___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v2;
      _os_log_debug_impl(&dword_2304B3000, v3, OS_LOG_TYPE_DEBUG, "bootstrapping %@, %@", &v6, 0x16u);
    }
  }
}

void __72__RTMotionActivityManager_CoreMotion__onVehicleDisconnectedNotification__block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [*(a1 + 32) description];
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_2304B3000, v3, OS_LOG_TYPE_ERROR, "Error storing Vehicle: %@", &v5, 0xCu);
    }
  }
}

void __63__RTMotionActivityManager_CoreMotion_onVehicleExitNotification__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [*(a1 + 32) postNotification:v2];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *MEMORY[0x277CC1DD0];
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_2304B3000, v3, OS_LOG_TYPE_INFO, "received darwin notification, %@", &v5, 0xCu);
    }
  }
}

void __62__RTMotionActivityManager_CoreMotion_setInterestedInActivity___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D011B8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v4 rtMotionActivityType];
  v7 = [v4 rtMotionActivityConfidence];
  v8 = [v4 startDate];

  v10 = [v5 initWithType:v6 confidence:v7 startDate:v8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onActivity:v10];
}

void __62__RTMotionActivityManager_CoreMotion__processDominantActivity__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134218242;
      v7 = a3 + 1;
      v8 = 2112;
      v9 = v4;
      _os_log_debug_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEBUG, "%lu, %@", &v6, 0x16u);
    }
  }
}

void __86__RTMotionActivityManager_CoreMotion__subscribeForPedometerDataWithStartDate_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 startDate];
  v8 = [v5 endDate];
  v9 = [v7 compare:v8];

  if (v9 == -1)
  {
    v11 = [RTMotionActivityPedometerData alloc];
    v12 = objc_alloc(MEMORY[0x277CCA970]);
    v13 = [v5 startDate];
    v14 = [v5 endDate];
    v15 = [v12 initWithStartDate:v13 endDate:v14];
    v16 = [v5 numberOfSteps];
    v17 = [v16 integerValue];
    v18 = [v5 distance];
    [v18 doubleValue];
    v19 = [(RTMotionActivityPedometerData *)v11 initWithDateInterval:v15 numberOfSteps:v17 distance:?];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v20 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        v23 = NSStringFromSelector(*(a1 + 56));
        v27 = 138413314;
        v28 = v22;
        v29 = 2112;
        v30 = v23;
        v31 = 2112;
        v32 = v19;
        v33 = 2112;
        v34 = v5;
        v35 = 2112;
        v36 = v6;
        _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_INFO, "%@, %@, routine pedometer data, %@, core motion pedometer data, %@, error, %@,", &v27, 0x34u);
      }
    }

    (*(*(a1 + 40) + 16))();
    v5 = v19;
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(*(a1 + 56));
      v27 = 138413058;
      v28 = v25;
      v29 = 2112;
      v30 = v26;
      v31 = 2112;
      v32 = v5;
      v33 = 2112;
      v34 = v6;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "%@, %@, invalid start and end date, core motion pedometer data, %@, error, %@,", &v27, 0x2Au);
    }
  }
}

void __83__RTMotionActivityManager_CoreMotion__subscribeForPedometerEventsWithUUID_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [[RTMotionActivityPedometerEvent alloc] initWithCMPedometerEvent:v5];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityMotionActivity);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 56));
      v12 = 138413314;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "%@, %@, routine pedometer event, %@, core motion pedometer event, %@, error, %@,", &v12, 0x34u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

@end