@interface NLAnalyticsWorkoutEventBuilder
- (BOOL)hasAnyNonZeroStatisticForDiscreteQuantityTypes:(id)types workout:(id)workout activity:(id)activity;
- (BOOL)hasCyclingSensorMetadata:(id)metadata;
- (BOOL)hasNonZeroMetadataValue:(id)value forAnyKey:(id)key;
- (BOOL)isFitnessPlusWorkoutForExperienceType:(int64_t)type;
- (NLAnalyticsWorkoutEventBuilder)initWithLiveWorkoutConfiguration:(id)configuration formattingManager:(id)manager analyticsIdentifier:(id)identifier;
- (id)_removePrefix:(id)prefix fromString:(id)string;
- (id)_shortenedActivityMoveMode:(int64_t)mode;
- (id)encodedMetricPlatterStatistics;
- (void)_finalizeCounts;
- (void)_finalizeMetricPlatterAccumulatedWithWorkout:(id)workout;
- (void)_recordConfiguration:(id)configuration formattingManager:(id)manager;
- (void)_recordCurrentSettings;
- (void)recordGoalCompletionFactor:(double)factor;
- (void)recordHasFitnessPlusSubscription:(BOOL)subscription;
- (void)recordMetricPlatterType:(id)type atElapsedTime:(double)time;
- (void)recordPairedWatchNearby:(BOOL)nearby;
- (void)recordPairedWatchUnlockedAndOnWrist:(BOOL)wrist;
- (void)recordPreferredWorkoutMetric:(unint64_t)metric;
- (void)recordSensorTypes:(id)types;
- (void)recordStartSource:(unint64_t)source;
- (void)recordWorkout:(id)workout;
- (void)recordWorkoutBuddySelectedVoiceIndex:(int64_t)index;
- (void)recordWorkoutMediaDidStart:(BOOL)start;
- (void)recordWorkoutMediaEnabled:(BOOL)enabled;
- (void)recordWorkoutMediaSource:(id)source;
- (void)recordWorkoutMetricTypes:(id)types;
- (void)recoverStateWithSessionActivity:(id)activity;
- (void)sendEvent;
@end

@implementation NLAnalyticsWorkoutEventBuilder

- (NLAnalyticsWorkoutEventBuilder)initWithLiveWorkoutConfiguration:(id)configuration formattingManager:(id)manager analyticsIdentifier:(id)identifier
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v19 = 0;
  objc_storeStrong(&v19, manager);
  v18 = 0;
  objc_storeStrong(&v18, identifier);
  v5 = selfCopy;
  selfCopy = 0;
  v17.receiver = v5;
  v17.super_class = NLAnalyticsWorkoutEventBuilder;
  v16 = [(NLAnalyticsWorkoutEventBuilder *)&v17 init];
  selfCopy = v16;
  objc_storeStrong(&selfCopy, v16);
  if (v16)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    workoutEvent = selfCopy->_workoutEvent;
    selfCopy->_workoutEvent = v6;
    MEMORY[0x277D82BD8](workoutEvent);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    metricPlatterAccumulatedTime = selfCopy->_metricPlatterAccumulatedTime;
    selfCopy->_metricPlatterAccumulatedTime = v8;
    MEMORY[0x277D82BD8](metricPlatterAccumulatedTime);
    v12 = v18;
    workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
    [(NSMutableDictionary *)workoutEvent setObject:v12 forKeyedSubscript:@"instanceIdentifier"];
    MEMORY[0x277D82BD8](workoutEvent);
    [(NLAnalyticsWorkoutEventBuilder *)selfCopy _recordConfiguration:location[0] formattingManager:v19];
    [(NLAnalyticsWorkoutEventBuilder *)selfCopy _recordCurrentSettings];
  }

  v11 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v11;
}

- (void)_recordConfiguration:(id)configuration formattingManager:(id)manager
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v11 = 0;
  objc_storeStrong(&v11, manager);
  v6 = [location[0] analyticsAlertsConfiguredWithFormattingManager:v11];
  workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent setObject:v6 forKeyedSubscript:@"alertsConfigured"];
  MEMORY[0x277D82BD8](workoutEvent);
  MEMORY[0x277D82BD8](v6);
  analyticsConfigurationType = [location[0] analyticsConfigurationType];
  workoutEvent2 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent2 setObject:analyticsConfigurationType forKeyedSubscript:@"configurationType"];
  MEMORY[0x277D82BD8](workoutEvent2);
  MEMORY[0x277D82BD8](analyticsConfigurationType);
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(location[0], "isUltraMode")}];
  workoutEvent3 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent3 setObject:v10 forKeyedSubscript:@"ultraModeEnabled"];
  MEMORY[0x277D82BD8](workoutEvent3);
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_recordCurrentSettings
{
  location[2] = self;
  location[1] = a2;
  objc_initWeak(location, self);
  queue = dispatch_get_global_queue(17, 0);
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __56__NLAnalyticsWorkoutEventBuilder__recordCurrentSettings__block_invoke;
  v14 = &unk_277D88B00;
  objc_copyWeak(&v15, location);
  dispatch_async(queue, &v10);
  MEMORY[0x277D82BD8](queue);
  v2 = +[WOCoreLocationManager sharedManager];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __56__NLAnalyticsWorkoutEventBuilder__recordCurrentSettings__block_invoke_3;
  v8 = &unk_277D88ED0;
  objc_copyWeak(v9, location);
  [(WOCoreLocationManager *)v2 isAuthorizedAsync:&v4];
  MEMORY[0x277D82BD8](v2);
  objc_destroyWeak(v9);
  objc_destroyWeak(&v15);
  objc_destroyWeak(location);
}

void __56__NLAnalyticsWorkoutEventBuilder__recordCurrentSettings__block_invoke(uint64_t a1)
{
  v22 = a1;
  v21 = a1;
  v20 = FIUIIsAutoPauseEnabled();
  v19 = FIUIIsCyclingAutoPauseEnabled();
  v18 = FIUIIsRunningAutoPauseEnabled();
  v17 = FIUIIsPowerSavingModeEnabled();
  v16 = FIUIIsWorkoutVoiceFeedbackEnabled();
  v2 = MEMORY[0x277D85CD0];
  v1 = MEMORY[0x277D85CD0];
  queue = v2;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __56__NLAnalyticsWorkoutEventBuilder__recordCurrentSettings__block_invoke_2;
  v9 = &unk_277D88E80;
  objc_copyWeak(&v10, (a1 + 32));
  v11 = v20 & 1;
  v12 = v19 & 1;
  v13 = v18 & 1;
  v14 = v17 & 1;
  v15 = v16 & 1;
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_destroyWeak(&v10);
}

void __56__NLAnalyticsWorkoutEventBuilder__recordCurrentSettings__block_invoke_2(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 32));
  if (location[0])
  {
    v10 = 0;
    if (*(a1 + 40))
    {
      v10 = *(a1 + 41);
    }

    v8 = [MEMORY[0x277CCABB0] numberWithInt:v10 & 1];
    v7 = [location[0] workoutEvent];
    [v7 setObject:v8 forKeyedSubscript:@"cyclingAutoPauseEnabled"];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    v9 = 0;
    if (*(a1 + 40))
    {
      v9 = *(a1 + 42);
    }

    v2 = [MEMORY[0x277CCABB0] numberWithInt:v9 & 1];
    v1 = [location[0] workoutEvent];
    [v1 setObject:v2 forKeyedSubscript:@"runningAutoPauseEnabled"];
    MEMORY[0x277D82BD8](v1);
    MEMORY[0x277D82BD8](v2);
    v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 43) & 1];
    v3 = [location[0] workoutEvent];
    [v3 setObject:v4 forKeyedSubscript:@"lowPowerModeEnabled"];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 44) & 1];
    v5 = [location[0] workoutEvent];
    [v5 setObject:v6 forKeyedSubscript:@"voiceFeedbackEnabled"];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
  }

  objc_storeStrong(location, 0);
}

void __56__NLAnalyticsWorkoutEventBuilder__recordCurrentSettings__block_invoke_3(uint64_t a1, char a2)
{
  v15 = a1;
  v14 = a2;
  v13 = a1;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __56__NLAnalyticsWorkoutEventBuilder__recordCurrentSettings__block_invoke_4;
  v10 = &unk_277D88EA8;
  objc_copyWeak(&v11, (a1 + 32));
  v12 = v14 & 1;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_destroyWeak(&v11);
}

void __56__NLAnalyticsWorkoutEventBuilder__recordCurrentSettings__block_invoke_4(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  location[0] = objc_loadWeakRetained((a1 + 32));
  if (location[0])
  {
    v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40) & 1];
    v1 = [location[0] workoutEvent];
    [v1 setObject:v2 forKeyedSubscript:@"locationServicesAuthorized"];
    MEMORY[0x277D82BD8](v1);
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (void)recordWorkout:(id)workout
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  identifier = [location[0] identifier];
  uUIDString = [identifier UUIDString];
  workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent setObject:uUIDString forKeyedSubscript:@"instanceIdentifier"];
  MEMORY[0x277D82BD8](workoutEvent);
  MEMORY[0x277D82BD8](uUIDString);
  MEMORY[0x277D82BD8](identifier);
  sessionActivity = [location[0] sessionActivity];
  configuration = [sessionActivity configuration];
  analyticsActivityType = [configuration analyticsActivityType];
  workoutEvent2 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent2 setObject:analyticsActivityType forKeyedSubscript:@"activityType"];
  MEMORY[0x277D82BD8](workoutEvent2);
  MEMORY[0x277D82BD8](analyticsActivityType);
  MEMORY[0x277D82BD8](configuration);
  MEMORY[0x277D82BD8](sessionActivity);
  sessionActivity2 = [location[0] sessionActivity];
  configuration2 = [sessionActivity2 configuration];
  analyticsSubActivities = [configuration2 analyticsSubActivities];
  workoutEvent3 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent3 setObject:analyticsSubActivities forKeyedSubscript:@"subActivities"];
  MEMORY[0x277D82BD8](workoutEvent3);
  MEMORY[0x277D82BD8](analyticsSubActivities);
  MEMORY[0x277D82BD8](configuration2);
  MEMORY[0x277D82BD8](sessionActivity2);
  v54 = NLWorkoutStateIdentifierDescription([location[0] state]);
  workoutEvent4 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent4 setObject:v54 forKeyedSubscript:@"state"];
  MEMORY[0x277D82BD8](workoutEvent4);
  MEMORY[0x277D82BD8](v54);
  sessionActivity3 = [location[0] sessionActivity];
  configuration3 = [sessionActivity3 configuration];
  currentGoal = [configuration3 currentGoal];
  [currentGoal goalTypeIdentifier];
  v56 = FIUIHKWorkoutGoalTypeDescription();
  workoutEvent5 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent5 setObject:v56 forKeyedSubscript:@"goalType"];
  MEMORY[0x277D82BD8](workoutEvent5);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](currentGoal);
  MEMORY[0x277D82BD8](configuration3);
  MEMORY[0x277D82BD8](sessionActivity3);
  v60 = MEMORY[0x277CCABB0];
  sessionActivity4 = [location[0] sessionActivity];
  configuration4 = [sessionActivity4 configuration];
  currentGoal2 = [configuration4 currentGoal];
  [currentGoal2 doubleValue];
  v62 = [v60 numberWithDouble:?];
  workoutEvent6 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent6 setObject:v62 forKeyedSubscript:@"goalValue"];
  MEMORY[0x277D82BD8](workoutEvent6);
  MEMORY[0x277D82BD8](v62);
  MEMORY[0x277D82BD8](currentGoal2);
  MEMORY[0x277D82BD8](configuration4);
  MEMORY[0x277D82BD8](sessionActivity4);
  v67 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(location[0], "discarded")}];
  workoutEvent7 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent7 setObject:v67 forKeyedSubscript:@"discarded"];
  MEMORY[0x277D82BD8](workoutEvent7);
  MEMORY[0x277D82BD8](v67);
  v68 = selfCopy;
  sessionActivity5 = [location[0] sessionActivity];
  v70 = -[NLAnalyticsWorkoutEventBuilder _shortenedActivityMoveMode:](v68, "_shortenedActivityMoveMode:", [sessionActivity5 activityMoveMode]);
  workoutEvent8 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent8 setObject:v70 forKeyedSubscript:@"activityMoveMode"];
  MEMORY[0x277D82BD8](workoutEvent8);
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](sessionActivity5);
  v72 = MEMORY[0x277CCABB0];
  hkWorkout = [location[0] hkWorkout];
  [hkWorkout duration];
  v74 = [v72 numberWithDouble:?];
  workoutEvent9 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent9 setObject:v74 forKeyedSubscript:@"duration"];
  MEMORY[0x277D82BD8](workoutEvent9);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](hkWorkout);
  sessionActivity6 = [location[0] sessionActivity];
  activityType = [sessionActivity6 activityType];
  isIndoor = [activityType isIndoor];
  v4 = @"indoor";
  if ((isIndoor & 1) == 0)
  {
    v4 = @"outdoor";
  }

  v76 = v4;
  workoutEvent10 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent10 setObject:v76 forKeyedSubscript:@"locationType"];
  MEMORY[0x277D82BD8](workoutEvent10);
  MEMORY[0x277D82BD8](activityType);
  MEMORY[0x277D82BD8](sessionActivity6);
  activityType2 = [location[0] activityType];
  [activityType2 swimmingLocationType];
  v81 = _HKWorkoutSwimmingLocationTypeName();
  workoutEvent11 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent11 setObject:v81 forKeyedSubscript:@"swimmingLocationType"];
  MEMORY[0x277D82BD8](workoutEvent11);
  MEMORY[0x277D82BD8](v81);
  MEMORY[0x277D82BD8](activityType2);
  workoutEvent12 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent12 setObject:@"detailed" forKeyedSubscript:@"metricsViewMode"];
  MEMORY[0x277D82BD8](workoutEvent12);
  v84 = MEMORY[0x277CCABB0];
  sessionActivity7 = [location[0] sessionActivity];
  segmentMarkers = [sessionActivity7 segmentMarkers];
  v86 = [v84 numberWithUnsignedInteger:{objc_msgSend(segmentMarkers, "count")}];
  workoutEvent13 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent13 setObject:v86 forKeyedSubscript:@"segmentsCount"];
  MEMORY[0x277D82BD8](workoutEvent13);
  MEMORY[0x277D82BD8](v86);
  MEMORY[0x277D82BD8](segmentMarkers);
  MEMORY[0x277D82BD8](sessionActivity7);
  v90 = NLWorkoutEndReasonDescription([location[0] endReason]);
  workoutEvent14 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent14 setObject:v90 forKeyedSubscript:@"endReason"];
  MEMORY[0x277D82BD8](workoutEvent14);
  MEMORY[0x277D82BD8](v90);
  v91 = MEMORY[0x277CCABB0];
  sessionActivity8 = [location[0] sessionActivity];
  activityType3 = [sessionActivity8 activityType];
  [activityType3 effectiveTypeIdentifier];
  v93 = [v91 numberWithBool:FIActivityTypeIsCalorimetryOptimized()];
  workoutEvent15 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent15 setObject:v93 forKeyedSubscript:@"topLevelWorkout"];
  MEMORY[0x277D82BD8](workoutEvent15);
  MEMORY[0x277D82BD8](v93);
  MEMORY[0x277D82BD8](activityType3);
  MEMORY[0x277D82BD8](sessionActivity8);
  hkWorkout2 = [location[0] hkWorkout];
  metadata = [hkWorkout2 metadata];
  v98 = +[WOTrackRunningMetadataKeys promptedForTrackMode];
  v99 = [metadata objectForKeyedSubscript:?];
  if (v99)
  {
    v41 = v99;
  }

  else
  {
    v41 = MEMORY[0x277CBEC28];
  }

  workoutEvent16 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent16 setObject:v41 forKeyedSubscript:@"trackModeAvailable"];
  MEMORY[0x277D82BD8](workoutEvent16);
  MEMORY[0x277D82BD8](v99);
  MEMORY[0x277D82BD8](v98);
  MEMORY[0x277D82BD8](metadata);
  MEMORY[0x277D82BD8](hkWorkout2);
  v22 = MEMORY[0x277CCABB0];
  hkWorkout3 = [location[0] hkWorkout];
  metadata2 = [hkWorkout3 metadata];
  v26 = +[WOTrackRunningMetadataKeys trackIdentifier];
  v25 = [metadata2 objectForKeyedSubscript:?];
  v24 = [v22 numberWithInt:v25 != 0];
  workoutEvent17 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent17 setObject:v24 forKeyedSubscript:@"trackModeEnabled"];
  MEMORY[0x277D82BD8](workoutEvent17);
  MEMORY[0x277D82BD8](v24);
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](metadata2);
  MEMORY[0x277D82BD8](hkWorkout3);
  sessionActivity9 = [location[0] sessionActivity];
  configuration5 = [sessionActivity9 configuration];
  providerBundleIdentifier = [configuration5 providerBundleIdentifier];
  workoutEvent18 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent18 setObject:providerBundleIdentifier forKeyedSubscript:@"provider"];
  MEMORY[0x277D82BD8](workoutEvent18);
  MEMORY[0x277D82BD8](providerBundleIdentifier);
  MEMORY[0x277D82BD8](configuration5);
  MEMORY[0x277D82BD8](sessionActivity9);
  v34 = MEMORY[0x277CCABB0];
  v33 = selfCopy;
  hkWorkout4 = [location[0] hkWorkout];
  v36 = [v34 numberWithBool:{-[NLAnalyticsWorkoutEventBuilder hasCyclingSensorMetadata:](v33, "hasCyclingSensorMetadata:")}];
  workoutEvent19 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent19 setObject:v36 forKeyedSubscript:@"cyclingSensorEnabled"];
  MEMORY[0x277D82BD8](workoutEvent19);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](hkWorkout4);
  hkWorkout5 = [location[0] hkWorkout];
  metadata3 = [hkWorkout5 metadata];
  v40 = [metadata3 objectForKeyedSubscript:@"_HKPrivateMetadataKeyMirroredWorkout"];
  if (v40)
  {
    v20 = v40;
  }

  else
  {
    v20 = MEMORY[0x277CBEC28];
  }

  workoutEvent20 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent20 setObject:v20 forKeyedSubscript:@"mirroredWorkout"];
  MEMORY[0x277D82BD8](workoutEvent20);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](metadata3);
  MEMORY[0x277D82BD8](hkWorkout5);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[NLAnalyticsWorkoutEventBuilder isFitnessPlusWorkoutForExperienceType:](selfCopy, "isFitnessPlusWorkoutForExperienceType:", objc_msgSend(location[0], "experienceType"))}];
  workoutEvent21 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent21 setObject:v7 forKeyedSubscript:@"fitnessPlusWorkout"];
  MEMORY[0x277D82BD8](workoutEvent21);
  MEMORY[0x277D82BD8](v7);
  v8 = MEMORY[0x277CCABB0];
  sessionActivity10 = [location[0] sessionActivity];
  configuration6 = [sessionActivity10 configuration];
  v10 = [v8 numberWithBool:{objc_msgSend(configuration6, "configureWithWorkoutVoiceMotivationWithShouldLog:", 0)}];
  workoutEvent22 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent22 setObject:v10 forKeyedSubscript:@"workoutVoiceMotivationEnabled"];
  MEMORY[0x277D82BD8](workoutEvent22);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](configuration6);
  MEMORY[0x277D82BD8](sessionActivity10);
  v13 = MEMORY[0x277CCABB0];
  sessionActivity11 = [location[0] sessionActivity];
  configuration7 = [sessionActivity11 configuration];
  v15 = [v13 numberWithBool:{objc_msgSend(configuration7, "isWorkoutBuddyMuted")}];
  workoutEvent23 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent23 setObject:v15 forKeyedSubscript:@"workoutVoiceMotivationMuted"];
  MEMORY[0x277D82BD8](workoutEvent23);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](configuration7);
  MEMORY[0x277D82BD8](sessionActivity11);
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NLAnalyticsWorkoutEventBuilder initiatePlatformForStartSource:](selfCopy, "initiatePlatformForStartSource:", selfCopy->_startSource)}];
  workoutEvent24 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent24 setObject:v19 forKeyedSubscript:@"initiatePlatform"];
  MEMORY[0x277D82BD8](workoutEvent24);
  MEMORY[0x277D82BD8](v19);
  [(NLAnalyticsWorkoutEventBuilder *)selfCopy _finalizeCounts];
  [(NLAnalyticsWorkoutEventBuilder *)selfCopy _finalizeMetricPlatterAccumulatedWithWorkout:location[0]];
  objc_storeStrong(location, 0);
}

- (BOOL)isFitnessPlusWorkoutForExperienceType:(int64_t)type
{
  if (type <= 2)
  {
LABEL_6:
    v4 = 1;
    return v4 & 1;
  }

  if (type != 3)
  {
    if (type != 4)
    {
      return v4 & 1;
    }

    goto LABEL_6;
  }

  v4 = 0;
  return v4 & 1;
}

- (BOOL)hasCyclingSensorMetadata:(id)metadata
{
  v40[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, metadata);
  v20 = MEMORY[0x277CCC9C0];
  v19 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C0]];
  v40[0] = v19;
  v21 = MEMORY[0x277CCC9B0];
  v18 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9B0]];
  v40[1] = v18;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  v23 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*v20];
  v39[0] = v23;
  v22 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*v21];
  v39[1] = v22;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v38 = *MEMORY[0x277CCE170];
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  if ([location[0] workoutActivityType] == 13)
  {
    if (_HKWorkoutIsIndoor(location[0]))
    {
      v29 = 0;
      v17 = 1;
      if (![(NLAnalyticsWorkoutEventBuilder *)selfCopy hasAnyNonZeroStatisticForDiscreteQuantityTypes:v32 workout:location[0] activity:0])
      {
        v16 = selfCopy;
        metadata = [location[0] metadata];
        v29 = 1;
        v17 = [NLAnalyticsWorkoutEventBuilder hasNonZeroMetadataValue:v16 forAnyKey:"hasNonZeroMetadataValue:forAnyKey:"];
      }

      v36 = v17 & 1;
      if (v29)
      {
        MEMORY[0x277D82BD8](metadata);
      }

      v28 = 1;
    }

    else
    {
      v36 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy hasAnyNonZeroStatisticForDiscreteQuantityTypes:v33 workout:location[0] activity:0];
      v28 = 1;
    }
  }

  else
  {
    if ([location[0] workoutActivityType] != 82)
    {
      goto LABEL_26;
    }

    memset(__b, 0, sizeof(__b));
    obj = [location[0] workoutActivities];
    v15 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
    if (v15)
    {
      v11 = *__b[2];
      v12 = 0;
      v13 = v15;
      while (1)
      {
        v10 = v12;
        if (*__b[2] != v11)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(__b[1] + 8 * v12);
        workoutConfiguration = [v27 workoutConfiguration];
        v7 = [workoutConfiguration locationType] == 2;
        MEMORY[0x277D82BD8](workoutConfiguration);
        workoutConfiguration2 = [v27 workoutConfiguration];
        activityType = [workoutConfiguration2 activityType];
        MEMORY[0x277D82BD8](workoutConfiguration2);
        if (activityType == 13)
        {
          break;
        }

        ++v12;
        if (v10 + 1 >= v13)
        {
          v12 = 0;
          v13 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
          if (!v13)
          {
            goto LABEL_24;
          }
        }
      }

      if (v7)
      {
        v24 = 0;
        v5 = 1;
        if (![(NLAnalyticsWorkoutEventBuilder *)selfCopy hasAnyNonZeroStatisticForDiscreteQuantityTypes:v32 workout:location[0] activity:v27])
        {
          v4 = selfCopy;
          metadata2 = [location[0] metadata];
          v24 = 1;
          v5 = [NLAnalyticsWorkoutEventBuilder hasNonZeroMetadataValue:v4 forAnyKey:"hasNonZeroMetadataValue:forAnyKey:"];
        }

        v36 = v5 & 1;
        if (v24)
        {
          MEMORY[0x277D82BD8](metadata2);
        }

        v28 = 1;
      }

      else
      {
        v36 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy hasAnyNonZeroStatisticForDiscreteQuantityTypes:v33 workout:location[0] activity:v27];
        v28 = 1;
      }
    }

    else
    {
LABEL_24:
      v28 = 0;
    }

    MEMORY[0x277D82BD8](obj);
    if (!v28)
    {
LABEL_26:
      v36 = 0;
      v28 = 1;
    }
  }

  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v36 & 1;
}

- (BOOL)hasNonZeroMetadataValue:(id)value forAnyKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v16 = 0;
  objc_storeStrong(&v16, key);
  memset(__b, 0, sizeof(__b));
  v10 = MEMORY[0x277D82BE0](v16);
  v11 = [v10 countByEnumeratingWithState:__b objects:v19 count:16];
  if (v11)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v11;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(__b[1] + 8 * v7);
      v13 = [location[0] objectForKeyedSubscript:v15];
      if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v13 fiui_isNonzero] & 1) != 0)
      {
        v18 = 1;
        v12 = 1;
      }

      else
      {
        v12 = 0;
      }

      objc_storeStrong(&v13, 0);
      if (v12)
      {
        break;
      }

      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [v10 countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v8)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
LABEL_13:
    v12 = 0;
  }

  MEMORY[0x277D82BD8](v10);
  if (!v12)
  {
    v18 = 0;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v18 & 1;
}

- (BOOL)hasAnyNonZeroStatisticForDiscreteQuantityTypes:(id)types workout:(id)workout activity:(id)activity
{
  v26 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, types);
  v22 = 0;
  objc_storeStrong(&v22, workout);
  v21 = 0;
  objc_storeStrong(&v21, activity);
  memset(__b, 0, sizeof(__b));
  v14 = MEMORY[0x277D82BE0](location[0]);
  v15 = [v14 countByEnumeratingWithState:__b objects:v25 count:16];
  if (v15)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v15;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(__b[1] + 8 * v10);
      if (v21)
      {
        v6 = [v21 statisticsForType:v20];
        averageQuantity = [v6 averageQuantity];
        MEMORY[0x277D82BD8](v6);
        if (averageQuantity)
        {
          v24 = [averageQuantity fiui_isNonzero] & 1;
          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        objc_storeStrong(&averageQuantity, 0);
        if (v17)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v7 = [v22 statisticsForType:v20];
        averageQuantity2 = [v7 averageQuantity];
        MEMORY[0x277D82BD8](v7);
        if (averageQuantity2)
        {
          v24 = [averageQuantity2 fiui_isNonzero] & 1;
          v17 = 1;
        }

        else
        {
          v17 = 0;
        }

        objc_storeStrong(&averageQuantity2, 0);
        if (v17)
        {
          goto LABEL_18;
        }
      }

      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [v14 countByEnumeratingWithState:__b objects:v25 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  v17 = 0;
LABEL_18:
  MEMORY[0x277D82BD8](v14);
  if (!v17)
  {
    v24 = 0;
    v17 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v24 & 1;
}

- (void)recordStartSource:(unint64_t)source
{
  self->_startSource = source;
  v4 = NLWorkoutStartSourceDescription(source);
  workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)self workoutEvent];
  [(NSMutableDictionary *)workoutEvent setObject:v4 forKeyedSubscript:@"startSource"];
  MEMORY[0x277D82BD8](workoutEvent);
  MEMORY[0x277D82BD8](v4);
}

- (void)recordHasFitnessPlusSubscription:(BOOL)subscription
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:subscription];
  workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)self workoutEvent];
  [(NSMutableDictionary *)workoutEvent setObject:v4 forKeyedSubscript:@"hasFitnessPlusSubscription"];
  MEMORY[0x277D82BD8](workoutEvent);
  MEMORY[0x277D82BD8](v4);
}

- (void)recordWorkoutBuddySelectedVoiceIndex:(int64_t)index
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)self workoutEvent];
  [(NSMutableDictionary *)workoutEvent setObject:v4 forKeyedSubscript:@"workoutVoiceMotivationVoiceSelected"];
  MEMORY[0x277D82BD8](workoutEvent);
  MEMORY[0x277D82BD8](v4);
}

- (void)recordPreferredWorkoutMetric:(unint64_t)metric
{
  v4 = MEMORY[0x20F2E8500](metric);
  workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)self workoutEvent];
  [(NSMutableDictionary *)workoutEvent setObject:v4 forKeyedSubscript:@"preferredMetric"];
  MEMORY[0x277D82BD8](workoutEvent);
  MEMORY[0x277D82BD8](v4);
}

- (void)recordWorkoutMetricTypes:(id)types
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, types);
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v12 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
  if (v12)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v12;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(__b[1] + 8 * v9);
      v5 = v15;
      v6 = MEMORY[0x20F2E8500]([v14 integerValue]);
      [v5 addObject:?];
      MEMORY[0x277D82BD8](v6);
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v18 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  [v15 sortUsingComparator:&__block_literal_global_3];
  v4 = [v15 componentsJoinedByString:{@", "}];
  workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent setObject:v4 forKeyedSubscript:@"workoutMetrics"];
  MEMORY[0x277D82BD8](workoutEvent);
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __59__NLAnalyticsWorkoutEventBuilder_recordWorkoutMetricTypes___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5 = [location[0] compare:v6 options:1];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)recordMetricPlatterType:(id)type atElapsedTime:(double)time
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  timeCopy = time;
  if (selfCopy->_currentMetricPlatterType)
  {
    v12 = 0;
    v11 = timeCopy - selfCopy->_currentMetricPlatterElapsedTime;
    if (0 >= v11)
    {
      v8 = v12;
    }

    else
    {
      v8 = v11;
    }

    v10[1] = *&v8;
    v13 = v8;
    if (v8 > 0.0)
    {
      v10[0] = MEMORY[0x277D82BE0](selfCopy->_currentMetricPlatterType);
      v5 = MEMORY[0x277CCABB0];
      v7 = [(NSMutableDictionary *)selfCopy->_metricPlatterAccumulatedTime objectForKeyedSubscript:v10[0]];
      [v7 doubleValue];
      v6 = [v5 numberWithDouble:v4 + v13];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(v10, 0);
    }
  }

  objc_storeStrong(&selfCopy->_currentMetricPlatterType, location[0]);
  selfCopy->_currentMetricPlatterElapsedTime = timeCopy;
  objc_storeStrong(location, 0);
}

- (id)encodedMetricPlatterStatistics
{
  v20[3] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15[1] = a2;
  v15[0] = 0;
  v11 = MEMORY[0x277CCAAA0];
  v19[0] = @"metricPlatterAccumulatedTime";
  v20[0] = self->_metricPlatterAccumulatedTime;
  v19[1] = @"currentMetricPlatterType";
  if (self->_currentMetricPlatterType)
  {
    currentMetricPlatterType = self->_currentMetricPlatterType;
  }

  else
  {
    currentMetricPlatterType = &stru_28225A4E8;
  }

  v20[1] = currentMetricPlatterType;
  v19[2] = @"currentMetricPlatterElapsedTime";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:{selfCopy->_currentMetricPlatterElapsedTime, v20, v19}];
  v20[2] = v8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v5 count:3];
  obj = v15[0];
  v6 = [v11 dataWithJSONObject:? options:? error:?];
  objc_storeStrong(v15, obj);
  v14 = v6;
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [v2 initWithData:v14 encoding:4];
  v17 = @"_HKPrivateMetadataKeyMetricPlatterStatistics";
  v18 = v12;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);
  *MEMORY[0x277D85DE8];

  return v9;
}

- (void)recoverStateWithSessionActivity:(id)activity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  builder = [location[0] builder];
  metadata = [builder metadata];
  v22 = [metadata objectForKeyedSubscript:@"_HKPrivateMetadataKeyMetricPlatterStatistics"];
  MEMORY[0x277D82BD8](metadata);
  MEMORY[0x277D82BD8](builder);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 length])
  {
    v21 = [v22 dataUsingEncoding:4];
    v20 = 0;
    v18 = 0;
    v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v21 options:0 error:&v18];
    objc_storeStrong(&v20, v18);
    v19 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v19 objectForKeyedSubscript:@"metricPlatterAccumulatedTime"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSMutableDictionary *)selfCopy->_metricPlatterAccumulatedTime addEntriesFromDictionary:v17];
      }

      v16 = [v19 objectForKeyedSubscript:@"currentMetricPlatterType"];
      v15 = [v19 objectForKeyedSubscript:@"currentMetricPlatterElapsedTime"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v16 length])
          {
            currentMetricPlatterElapsedTime = selfCopy->_currentMetricPlatterElapsedTime;
            [v15 doubleValue];
            v10 = 0 >= currentMetricPlatterElapsedTime - v3 ? 0 : currentMetricPlatterElapsedTime - v3;
            if (v10 > 0.0)
            {
              v7 = MEMORY[0x277CCABB0];
              v9 = [(NSMutableDictionary *)selfCopy->_metricPlatterAccumulatedTime objectForKeyedSubscript:v16, v10];
              [v9 doubleValue];
              v8 = [v7 numberWithDouble:v4 + v10];
              [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
              MEMORY[0x277D82BD8](v8);
              MEMORY[0x277D82BD8](v9);
            }
          }
        }
      }

      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
    }

    if (selfCopy->_currentMetricPlatterType)
    {
      v5 = location[0];
      encodedMetricPlatterStatistics = [(NLAnalyticsWorkoutEventBuilder *)selfCopy encodedMetricPlatterStatistics];
      [v5 insertOrUpdateMetadata:? forceTopLevel:?];
      MEMORY[0x277D82BD8](encodedMetricPlatterStatistics);
    }

    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)recordGoalCompletionFactor:(double)factor
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:factor];
  workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)self workoutEvent];
  [(NSMutableDictionary *)workoutEvent setObject:v4 forKeyedSubscript:@"goalCompletionPercentage"];
  MEMORY[0x277D82BD8](workoutEvent);
  MEMORY[0x277D82BD8](v4);
}

- (void)recordWorkoutMediaEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:enabled];
  workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)self workoutEvent];
  [(NSMutableDictionary *)workoutEvent setObject:v4 forKeyedSubscript:@"has_automatic_media_playback"];
  MEMORY[0x277D82BD8](workoutEvent);
  MEMORY[0x277D82BD8](v4);
}

- (void)recordWorkoutMediaDidStart:(BOOL)start
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:start];
  workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)self workoutEvent];
  [(NSMutableDictionary *)workoutEvent setObject:v4 forKeyedSubscript:@"automatic_playback_initiated"];
  MEMORY[0x277D82BD8](workoutEvent);
  MEMORY[0x277D82BD8](v4);
}

- (void)recordWorkoutMediaSource:(id)source
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  v3 = location[0];
  workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
  [(NSMutableDictionary *)workoutEvent setObject:v3 forKeyedSubscript:@"media_source"];
  MEMORY[0x277D82BD8](workoutEvent);
  objc_storeStrong(location, 0);
}

- (void)recordSensorTypes:(id)types
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, types);
  if (location[0] && [location[0] count])
  {
    v7 = [location[0] sortedArrayUsingComparator:&__block_literal_global_489];
    v6 = [v7 componentsJoinedByString:@" | "];
    v3 = v6;
    workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
    [(NSMutableDictionary *)workoutEvent setObject:v3 forKeyedSubscript:@"sensorType"];
    MEMORY[0x277D82BD8](workoutEvent);
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v7, 0);
    v8 = 0;
  }

  else
  {
    workoutEvent2 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy workoutEvent];
    [(NSMutableDictionary *)workoutEvent2 setObject:&stru_28225A4E8 forKeyedSubscript:@"sensorType"];
    MEMORY[0x277D82BD8](workoutEvent2);
    v8 = 1;
  }

  objc_storeStrong(location, 0);
}

uint64_t __52__NLAnalyticsWorkoutEventBuilder_recordSensorTypes___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  v5 = [location[0] compare:v6 options:1];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)recordPairedWatchUnlockedAndOnWrist:(BOOL)wrist
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:wrist];
  workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)self workoutEvent];
  [(NSMutableDictionary *)workoutEvent setObject:v4 forKeyedSubscript:@"pairedWatchUnlockedAndOnWrist"];
  MEMORY[0x277D82BD8](workoutEvent);
  MEMORY[0x277D82BD8](v4);
}

- (void)recordPairedWatchNearby:(BOOL)nearby
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:nearby];
  workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)self workoutEvent];
  [(NSMutableDictionary *)workoutEvent setObject:v4 forKeyedSubscript:@"pairedWatchNearby"];
  MEMORY[0x277D82BD8](workoutEvent);
  MEMORY[0x277D82BD8](v4);
}

- (void)_finalizeCounts
{
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_manualPauseCount];
  workoutEvent = [(NLAnalyticsWorkoutEventBuilder *)self workoutEvent];
  [(NSMutableDictionary *)workoutEvent setObject:v3 forKeyedSubscript:@"manualPauseCount"];
  MEMORY[0x277D82BD8](workoutEvent);
  MEMORY[0x277D82BD8](v3);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_autoPauseCount];
  workoutEvent2 = [(NLAnalyticsWorkoutEventBuilder *)self workoutEvent];
  [(NSMutableDictionary *)workoutEvent2 setObject:v5 forKeyedSubscript:@"autoPauseCount"];
  MEMORY[0x277D82BD8](workoutEvent2);
  MEMORY[0x277D82BD8](v5);
}

- (void)_finalizeMetricPlatterAccumulatedWithWorkout:(id)workout
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  if (selfCopy->_currentMetricPlatterType)
  {
    v11 = 0;
    [location[0] elapsedTime];
    v10 = v3 - selfCopy->_currentMetricPlatterElapsedTime;
    if (0 >= v10)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }

    v9[1] = *&v8;
    v12 = v8;
    if (v8 > 0.0)
    {
      v9[0] = MEMORY[0x277D82BE0](selfCopy->_currentMetricPlatterType);
      v5 = MEMORY[0x277CCABB0];
      v7 = [(NSMutableDictionary *)selfCopy->_metricPlatterAccumulatedTime objectForKeyedSubscript:v9[0]];
      [v7 doubleValue];
      v6 = [v5 numberWithDouble:v4 + v12];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      objc_storeStrong(v9, 0);
    }
  }

  objc_storeStrong(&selfCopy->_currentMetricPlatterType, 0);
  selfCopy->_currentMetricPlatterElapsedTime = 0.0;
  objc_storeStrong(location, 0);
}

- (void)sendEvent
{
  selfCopy = self;
  v8[1] = a2;
  queue = dispatch_get_global_queue(17, 0);
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __43__NLAnalyticsWorkoutEventBuilder_sendEvent__block_invoke;
  v7 = &unk_277D88890;
  v8[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v3);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v8, 0);
}

void __43__NLAnalyticsWorkoutEventBuilder_sendEvent__block_invoke(id *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  v9 = [MEMORY[0x277D262A0] sharedConnection];
  v10 = [v9 isHealthDataSubmissionAllowed];
  MEMORY[0x277D82BD8](v9);
  if (v10)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
    {
      location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v26 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
      {
        v7 = [a1[4] workoutEvent];
        __os_log_helper_16_2_2_8_64_8_64(v30, @"com.apple.sessiontrackerapp.workout", v7);
        _os_log_debug_impl(&dword_20AEA4000, location[0], v26, "[Core Analytics] Preparing to send analytics. eventName=%@ event=%@", v30, 0x16u);
        MEMORY[0x277D82BD8](v7);
      }

      objc_storeStrong(location, 0);
    }

    v20 = MEMORY[0x277D85DD0];
    v21 = -1073741824;
    v22 = 0;
    v23 = __43__NLAnalyticsWorkoutEventBuilder_sendEvent__block_invoke_494;
    v24 = &unk_277D88F18;
    v25 = MEMORY[0x277D82BE0](a1[4]);
    AnalyticsSendEventLazy();
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](*(a1[4] + 6));
    v6 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
    if (v6)
    {
      v2 = *__b[2];
      v3 = 0;
      v4 = v6;
      while (1)
      {
        v1 = v3;
        if (*__b[2] != v2)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(__b[1] + 8 * v3);
        oslog[1] = MEMORY[0x277D85DD0];
        v12 = -1073741824;
        v13 = 0;
        v14 = __43__NLAnalyticsWorkoutEventBuilder_sendEvent__block_invoke_496;
        v15 = &unk_277D88F40;
        v16 = MEMORY[0x277D82BE0](a1[4]);
        v17 = MEMORY[0x277D82BE0](v19);
        AnalyticsSendEventLazy();
        objc_storeStrong(&v17, 0);
        objc_storeStrong(&v16, 0);
        ++v3;
        if (v1 + 1 >= v4)
        {
          v3 = 0;
          v4 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
          if (!v4)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    objc_storeStrong(&v25, 0);
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
    {
      oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_1_8_64(v28, @"com.apple.sessiontrackerapp.workout");
        _os_log_debug_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_DEBUG, "[Core Analytics] Health data submission not allowed.  Not sending analytics. eventName=%@", v28, 0xCu);
      }

      objc_storeStrong(oslog, 0);
    }
  }

  *MEMORY[0x277D85DE8];
}

uint64_t __43__NLAnalyticsWorkoutEventBuilder_sendEvent__block_invoke_494(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      v3 = [a1[4] workoutEvent];
      __os_log_helper_16_2_2_8_64_8_64(v6, @"com.apple.sessiontrackerapp.workout", v3);
      _os_log_debug_impl(&dword_20AEA4000, location[0], OS_LOG_TYPE_DEBUG, "[Core Analytics] Sent analytics. eventName=%@ event=%@", v6, 0x16u);
      MEMORY[0x277D82BD8](v3);
    }

    objc_storeStrong(location, 0);
  }

  v2 = [a1[4] workoutEvent];
  *MEMORY[0x277D85DE8];
  return v2;
}

id __43__NLAnalyticsWorkoutEventBuilder_sendEvent__block_invoke_496(uint64_t a1)
{
  v21[8] = *MEMORY[0x277D85DE8];
  v18[2] = a1;
  v18[1] = a1;
  v20[0] = @"activityType";
  v16 = [*(a1 + 32) workoutEvent];
  v15 = [v16 objectForKeyedSubscript:@"activityType"];
  v21[0] = v15;
  v20[1] = @"configurationType";
  v14 = [*(a1 + 32) workoutEvent];
  v13 = [v14 objectForKeyedSubscript:@"configurationType"];
  v21[1] = v13;
  v20[2] = @"duration";
  v12 = [*(a1 + 32) workoutEvent];
  v11 = [v12 objectForKeyedSubscript:@"duration"];
  v21[2] = v11;
  v20[3] = @"platterDuration";
  v10 = [*(*(a1 + 32) + 48) objectForKeyedSubscript:*(a1 + 40)];
  v21[3] = v10;
  v20[4] = @"platterType";
  v21[4] = *(a1 + 40);
  v20[5] = @"locationType";
  v9 = [*(a1 + 32) workoutEvent];
  v8 = [v9 objectForKeyedSubscript:@"locationType"];
  v21[5] = v8;
  v20[6] = @"swimmingLocationType";
  v7 = [*(a1 + 32) workoutEvent];
  v6 = [v7 objectForKeyedSubscript:@"swimmingLocationType"];
  v21[6] = v6;
  v20[7] = @"instanceIdentifier";
  v5 = [*(a1 + 32) workoutEvent];
  v4 = [v5 objectForKeyedSubscript:@"instanceIdentifier"];
  v21[7] = v4;
  v18[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:8];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_2_2_8_64_8_64(v19, @"com.apple.sessiontrackerapp.insession.platters", v18[0]);
      _os_log_debug_impl(&dword_20AEA4000, location, OS_LOG_TYPE_DEBUG, "[Core Analytics] Sent metric platter event. eventName=%@ event=%@", v19, 0x16u);
    }

    objc_storeStrong(&location, 0);
  }

  v2 = MEMORY[0x277D82BE0](v18[0]);
  objc_storeStrong(v18, 0);
  *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_shortenedActivityMoveMode:(int64_t)mode
{
  selfCopy = self;
  v6[2] = a2;
  v6[1] = mode;
  v6[0] = MEMORY[0x277D82BE0](@"HKActivityMoveMode");
  v5 = NLHKActivityMoveModeString();
  v4 = [(NLAnalyticsWorkoutEventBuilder *)selfCopy _removePrefix:v6[0] fromString:v5];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(v6, 0);

  return v4;
}

- (id)_removePrefix:(id)prefix fromString:(id)string
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, prefix);
  v10 = 0;
  objc_storeStrong(&v10, string);
  v9 = [v10 copy];
  if ([v10 hasPrefix:location[0]])
  {
    v4 = [v10 substringFromIndex:{objc_msgSend(location[0], "length")}];
    v5 = v9;
    v9 = v4;
    MEMORY[0x277D82BD8](v5);
  }

  v7 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);

  return v7;
}

@end