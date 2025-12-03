@interface HDSHPluginServer
+ (id)requiredEntitlements;
+ (id)taskIdentifier;
- (BOOL)_deleteSamples:(id)samples error:(id *)error;
- (BOOL)_insertSamplesWithClientSource:(id)source error:(id *)error;
- (BOOL)_populateSamplesToInsert:(id)insert samplesToDelete:(id)delete forSleepDurationGoal:(id)goal error:(id *)error;
- (BOOL)_populateSamplesToInsert:(id)insert samplesToDelete:(id)delete forSleepSchedules:(id)schedules error:(id *)error;
- (BOOL)_replaceSamples:(id)samples withSamples:(id)withSamples error:(id *)error;
- (HDSHPluginServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_saveSleepTrackingSamplesAfterFirstUnlock:(id)unlock replacingSamplesInDateInterval:(id)interval completion:(id)completion;
- (void)remote_saveSleepTrackingSamples:(id)samples replacingSamplesInDateInterval:(id)interval completion:(id)completion;
- (void)remote_startSleepTrackingSession;
- (void)remote_stopSleepTrackingSession;
- (void)remote_updateCurrentSleepSchedules:(id)schedules sleepDurationGoal:(id)goal completion:(id)completion;
@end

@implementation HDSHPluginServer

- (HDSHPluginServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v21.receiver = self;
  v21.super_class = HDSHPluginServer;
  v12 = [(HDStandardTaskServer *)&v21 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v12)
  {
    profile = [clientCopy profile];
    objc_storeWeak(&v12->_profile, profile);

    profile2 = [clientCopy profile];
    v15 = [profile2 profileExtensionWithIdentifier:*MEMORY[0x277D62658]];
    profileExtension = v12->_profileExtension;
    v12->_profileExtension = v15;

    objc_storeStrong(&v12->_client, client);
    v17 = dispatch_queue_create("com.apple.HDSHPluginServer.serial", 0);
    serializer = v12->_serializer;
    v12->_serializer = v17;

    mEMORY[0x277D10AF8] = [MEMORY[0x277D10AF8] sharedDiagnosticManager];
    [mEMORY[0x277D10AF8] addObject:v12];
  }

  return v12;
}

+ (id)taskIdentifier
{
  v2 = objc_opt_class();

  return [v2 taskIdentifier];
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)remote_updateCurrentSleepSchedules:(id)schedules sleepDurationGoal:(id)goal completion:(id)completion
{
  schedulesCopy = schedules;
  goalCopy = goal;
  completionCopy = completion;
  serializer = self->_serializer;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__HDSHPluginServer_remote_updateCurrentSleepSchedules_sleepDurationGoal_completion___block_invoke;
  v15[3] = &unk_279C83130;
  v16 = schedulesCopy;
  selfCopy = self;
  v18 = goalCopy;
  v19 = completionCopy;
  v12 = goalCopy;
  v13 = completionCopy;
  v14 = schedulesCopy;
  dispatch_async(serializer, v15);
}

void __84__HDSHPluginServer_remote_updateCurrentSleepSchedules_sleepDurationGoal_completion___block_invoke(void *a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCC320];
  if (a1[4])
  {
    _HKInitializeLogging();
    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[5];
      v7 = v5;
      v8 = objc_opt_class();
      v9 = a1[4];
      *buf = 138543618;
      v41 = v8;
      v42 = 2112;
      v43 = v9;
      v10 = v8;
      _os_log_impl(&dword_269C02000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating current sleep schedules: %@", buf, 0x16u);
    }

    v12 = a1[4];
    v11 = a1[5];
    v39 = 0;
    v13 = [v11 _populateSamplesToInsert:v2 samplesToDelete:v3 forSleepSchedules:v12 error:&v39];
    v14 = v39;
    v15 = v14;
    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (a1[6])
  {
    _HKInitializeLogging();
    v16 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v17 = a1[5];
      v18 = v16;
      v19 = objc_opt_class();
      v20 = a1[6];
      *buf = 138543618;
      v41 = v19;
      v42 = 2112;
      v43 = v20;
      v21 = v19;
      _os_log_impl(&dword_269C02000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating sleep duration goal: %@", buf, 0x16u);
    }

    v22 = a1[5];
    v23 = a1[6];
    v38 = 0;
    v24 = [v22 _populateSamplesToInsert:v2 samplesToDelete:v3 forSleepDurationGoal:v23 error:&v38];
    v25 = v38;
    v15 = v25;
    if (v24)
    {

      goto LABEL_11;
    }

LABEL_14:
    v35 = *(a1[7] + 16);
    goto LABEL_15;
  }

LABEL_11:
  v26 = a1[5];
  v37 = 0;
  v27 = [v26 _replaceSamples:v3 withSamples:v2 error:&v37];
  v15 = v37;
  _HKInitializeLogging();
  v28 = *v4;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = a1[5];
    v30 = v28;
    v31 = objc_opt_class();
    v32 = MEMORY[0x277CCABB0];
    v33 = v31;
    v34 = [v32 numberWithBool:v27];
    *buf = 138543618;
    v41 = v31;
    v42 = 2112;
    v43 = v34;
    _os_log_impl(&dword_269C02000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] Finished replace with success: %@", buf, 0x16u);
  }

  v35 = *(a1[7] + 16);
LABEL_15:
  v35();

  v36 = *MEMORY[0x277D85DE8];
}

- (BOOL)_populateSamplesToInsert:(id)insert samplesToDelete:(id)delete forSleepSchedules:(id)schedules error:(id *)error
{
  v134 = *MEMORY[0x277D85DE8];
  insertCopy = insert;
  deleteCopy = delete;
  schedulesCopy = schedules;
  firstObject = [schedulesCopy firstObject];
  startDate = [firstObject startDate];

  v10 = *MEMORY[0x277CCCDD0];
  v11 = HKSleepScheduleWeekdayArrayFromWeekdays();
  v12 = [v11 arrayByAddingObject:&unk_287A9AD68];

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v121 objects:v133 count:16];
  v97 = v13;
  obj = v14;
  if (!v15)
  {
    v96 = 0;
    goto LABEL_19;
  }

  v16 = v15;
  errorCopy = error;
  v96 = 0;
  v17 = *v122;
  while (2)
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v122 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v121 + 1) + 8 * i);
      v20 = MEMORY[0x277D10870];
      integerValue = [v19 integerValue];
      WeakRetained = objc_loadWeakRetained(&self->_profile);
      hk_timeZoneEncodingOptions = [MEMORY[0x277D10690] hk_timeZoneEncodingOptions];
      v120 = v96;
      v24 = [v20 mostRecentSleepScheduleForWeekday:integerValue beforeDate:0 profile:WeakRetained encodingOptions:hk_timeZoneEncodingOptions error:&v120];
      v25 = v120;

      v13 = v97;
      [v97 setObject:v24 forKeyedSubscript:v19];
      v96 = v25;
      if (v24)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25 == 0;
      }

      if (!v26)
      {
        if (![v25 hk_isDatabaseAccessibilityError])
        {
          v31 = v25;
          if (errorCopy)
          {
            v32 = v25;
            v33 = 0;
            *errorCopy = v25;
          }

          else
          {
            _HKLogDroppedError();
            v33 = 0;
          }

          v79 = obj;
          v35 = obj;
          goto LABEL_75;
        }

        _HKInitializeLogging();
        v27 = *MEMORY[0x277CCC320];
        if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
        {
          v28 = v27;
          v29 = objc_opt_class();
          *buf = 138543618;
          v130 = v29;
          v131 = 2112;
          v132 = v25;
          v30 = v29;
          _os_log_impl(&dword_269C02000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cannot retrieve most recent sample for weekday, protected data unavailable: %@", buf, 0x16u);
        }
      }
    }

    v14 = obj;
    v16 = [obj countByEnumeratingWithState:&v121 objects:v133 count:16];
    if (v16)
    {
      continue;
    }

    break;
  }

LABEL_19:

  _HKInitializeLogging();
  v34 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
  {
    v82 = v34;
    v83 = objc_opt_class();
    *buf = 138543618;
    v130 = v83;
    v131 = 2112;
    v132 = v13;
    v84 = v83;
    _os_log_debug_impl(&dword_269C02000, v82, OS_LOG_TYPE_DEBUG, "[%{public}@] Old schedules: %@", buf, 0x16u);
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v100 = schedulesCopy;
  v36 = [v100 countByEnumeratingWithState:&v116 objects:v128 count:16];
  if (v36)
  {
    v37 = v36;
    v102 = *v117;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v117 != v102)
        {
          objc_enumerationMutation(v100);
        }

        v39 = *(*(&v116 + 1) + 8 * j);
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        [v39 weekdays];
        v40 = HKSleepScheduleWeekdayArrayFromWeekdays();
        v41 = [v40 countByEnumeratingWithState:&v112 objects:v127 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v113;
          do
          {
            for (k = 0; k != v42; ++k)
            {
              if (*v113 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = *(*(&v112 + 1) + 8 * k);
              v46 = [v35 objectForKeyedSubscript:v45];

              if (v46)
              {
                currentHandler = [MEMORY[0x277CCA890] currentHandler];
                [currentHandler handleFailureInMethod:a2 object:self file:@"HDSHPluginServer.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"newSchedulesByWeekday[weekdayNumber] == nil"}];
              }

              [v35 setObject:v39 forKeyedSubscript:v45];
            }

            v42 = [v40 countByEnumeratingWithState:&v112 objects:v127 count:16];
          }

          while (v42);
        }
      }

      v37 = [v100 countByEnumeratingWithState:&v116 objects:v128 count:16];
    }

    while (v37);
  }

  _HKInitializeLogging();
  v48 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
  {
    v85 = v48;
    v86 = objc_opt_class();
    *buf = 138543618;
    v130 = v86;
    v131 = 2112;
    v132 = v35;
    v87 = v86;
    _os_log_debug_impl(&dword_269C02000, v85, OS_LOG_TYPE_DEBUG, "[%{public}@] New schedules: %@", buf, 0x16u);
  }

  v49 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v50 = obj;
  v51 = [v50 countByEnumeratingWithState:&v108 objects:v126 count:16];
  v13 = v97;
  if (v51)
  {
    v52 = v51;
    v53 = *v109;
    do
    {
      for (m = 0; m != v52; ++m)
      {
        if (*v109 != v53)
        {
          objc_enumerationMutation(v50);
        }

        v55 = *(*(&v108 + 1) + 8 * m);
        if (([v49 containsObject:v55] & 1) == 0)
        {
          v56 = [v97 objectForKeyedSubscript:v55];
          v57 = [v35 objectForKeyedSubscript:v55];
          v58 = [v56 hasEquivalentTimesToSleepSchedule:v57];
          if (v57 && (v58 & 1) == 0)
          {
            if (v56)
            {
              goto LABEL_51;
            }

            bedTimeComponents = [v57 bedTimeComponents];
            if (bedTimeComponents)
            {

              goto LABEL_51;
            }

            wakeTimeComponents = [v57 wakeTimeComponents];

            if (wakeTimeComponents)
            {
LABEL_51:
              [insertCopy addObject:v57];
              [v57 weekdays];
              v61 = HKSleepScheduleWeekdayArrayFromWeekdays();
              [v49 addObjectsFromArray:v61];
            }
          }

          continue;
        }
      }

      v52 = [v50 countByEnumeratingWithState:&v108 objects:v126 count:16];
    }

    while (v52);
  }

  _HKInitializeLogging();
  v62 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEBUG))
  {
    v88 = v62;
    v89 = objc_opt_class();
    *buf = 138543618;
    v130 = v89;
    v131 = 2112;
    v132 = v49;
    v90 = v89;
    _os_log_debug_impl(&dword_269C02000, v88, OS_LOG_TYPE_DEBUG, "[%{public}@] Changed schedules: %@", buf, 0x16u);
  }

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v103 = v49;
  v63 = [v103 countByEnumeratingWithState:&v104 objects:v125 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v105;
    do
    {
      v66 = 0;
      do
      {
        if (*v105 != v65)
        {
          objc_enumerationMutation(v103);
        }

        v67 = *(*(&v104 + 1) + 8 * v66);
        v68 = [v13 objectForKeyedSubscript:v67];
        v69 = [v35 objectForKeyedSubscript:v67];
        if (v68)
        {
          if (([deleteCopy containsObject:v68] & 1) == 0)
          {
            v70 = MEMORY[0x277CBEB98];
            [v68 weekdays];
            v71 = HKSleepScheduleWeekdayArrayFromWeekdays();
            v72 = [v70 setWithArray:v71];
            v73 = [v72 hk_minus:v103];
            v74 = [v73 count];

            v13 = v97;
            if (!v74 && ([v68 weekdays] || objc_msgSend(v68, "hasEquivalentOverrideDayToSleepSchedule:", v69)))
            {
              startDate2 = [v68 startDate];
              [startDate2 timeIntervalSinceDate:startDate];
              v77 = v76;

              if (v77 > -3600.0)
              {
                [deleteCopy addObject:v68];
              }
            }
          }
        }

        ++v66;
      }

      while (v64 != v66);
      v78 = [v103 countByEnumeratingWithState:&v104 objects:v125 count:16];
      v64 = v78;
    }

    while (v78);
  }

  v33 = 1;
  v79 = obj;
  v31 = v96;
LABEL_75:

  v80 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)_populateSamplesToInsert:(id)insert samplesToDelete:(id)delete forSleepDurationGoal:(id)goal error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  insertCopy = insert;
  deleteCopy = delete;
  goalCopy = goal;
  v13 = MEMORY[0x277D10810];
  sleepDurationGoalType = [MEMORY[0x277CCD720] sleepDurationGoalType];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v39 = 0;
  v16 = [v13 mostRecentSampleWithType:sleepDurationGoalType profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v39];
  v17 = v39;

  if (v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17 == 0;
  }

  v19 = v18;
  if (v18)
  {
    quantity = [v16 quantity];
    quantity2 = [goalCopy quantity];
    v22 = [quantity isEqual:quantity2];

    if (v22)
    {
      _HKInitializeLogging();
      v23 = *MEMORY[0x277CCC320];
      if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        v25 = objc_opt_class();
        *buf = 138543362;
        v41 = v25;
        v26 = v25;
        _os_log_impl(&dword_269C02000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Skipping saving unchanged sleep duration goal", buf, 0xCu);
      }
    }

    else
    {
      [insertCopy addObject:goalCopy];
      if (v16)
      {
        startDate = [v16 startDate];
        startDate2 = [goalCopy startDate];
        [startDate timeIntervalSinceDate:startDate2];
        v33 = v32;

        if (v33 > -3600.0)
        {
          [deleteCopy addObject:v16];
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v27 = *MEMORY[0x277CCC320];
    if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_ERROR))
    {
      v36 = v27;
      v37 = objc_opt_class();
      *buf = 138543618;
      v41 = v37;
      v42 = 2114;
      v43 = v17;
      v38 = v37;
      _os_log_error_impl(&dword_269C02000, v36, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving latest sleep duration goal: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v29 = v17;
      *error = v17;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v34 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)remote_startSleepTrackingSession
{
  v9 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v8 = 138543362;
    *&v8[4] = objc_opt_class();
    v5 = *&v8[4];
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep tracking session started", v8, 0xCu);
  }

  accessibilityAssertionManager = [(HDSHProfileExtension *)self->_profileExtension accessibilityAssertionManager];
  [accessibilityAssertionManager beginObservingContentProtectionState];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)remote_stopSleepTrackingSession
{
  v10 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v9 = 138543362;
    *&v9[4] = objc_opt_class();
    v5 = *&v9[4];
    _os_log_impl(&dword_269C02000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep tracking session stopped", v9, 0xCu);
  }

  accessibilityAssertionManager = [(HDSHProfileExtension *)self->_profileExtension accessibilityAssertionManager];
  [accessibilityAssertionManager stopObservingContentProtectionState];

  accessibilityAssertionManager2 = [(HDSHProfileExtension *)self->_profileExtension accessibilityAssertionManager];
  [accessibilityAssertionManager2 invalidateAccessibilityAssertion];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)remote_saveSleepTrackingSamples:(id)samples replacingSamplesInDateInterval:(id)interval completion:(id)completion
{
  samplesCopy = samples;
  intervalCopy = interval;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__HDSHPluginServer_remote_saveSleepTrackingSamples_replacingSamplesInDateInterval_completion___block_invoke;
  v16[3] = &unk_279C83130;
  v16[4] = self;
  v17 = samplesCopy;
  v18 = intervalCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = intervalCopy;
  v15 = samplesCopy;
  [database performWhenDataProtectedByFirstUnlockIsAvailable:v16];
}

- (void)_saveSleepTrackingSamplesAfterFirstUnlock:(id)unlock replacingSamplesInDateInterval:(id)interval completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  unlockCopy = unlock;
  intervalCopy = interval;
  completionCopy = completion;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC320];
  v12 = os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT);
  if (intervalCopy)
  {
    if (v12)
    {
      v13 = v11;
      *buf = 138543874;
      v28 = objc_opt_class();
      v29 = 2112;
      v30 = intervalCopy;
      v31 = 2112;
      v32 = unlockCopy;
      v14 = v28;
      v15 = "[%{public}@] replacing sleep tracking samples in %@ with %@";
      v16 = v13;
      v17 = 32;
LABEL_6:
      _os_log_impl(&dword_269C02000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    }
  }

  else if (v12)
  {
    v13 = v11;
    *buf = 138543618;
    v28 = objc_opt_class();
    v29 = 2112;
    v30 = unlockCopy;
    v14 = v28;
    v15 = "[%{public}@] saving sleep tracking samples %@";
    v16 = v13;
    v17 = 22;
    goto LABEL_6;
  }

  accessibilityAssertionManager = [(HDSHProfileExtension *)self->_profileExtension accessibilityAssertionManager];
  accessibilityAssertion = [accessibilityAssertionManager accessibilityAssertion];

  v20 = [MEMORY[0x277CCDA00] hd_sourceForClient:self->_client bundleIdentifier:0];
  v21 = [[HDSHReplaceSleepSamplesOperation alloc] initWithSleepSamplesToInsert:unlockCopy source:v20 replacementInterval:intervalCopy accessibilityAssertion:accessibilityAssertion];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v26 = 0;
  v23 = [(HDJournalableOperation *)v21 performOrJournalWithProfile:WeakRetained error:&v26];
  v24 = v26;

  completionCopy[2](completionCopy, v23, v24);
  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_replaceSamples:(id)samples withSamples:(id)withSamples error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  withSamplesCopy = withSamples;
  _HKInitializeLogging();
  v10 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    *buf = 138543874;
    v25 = objc_opt_class();
    v26 = 2112;
    v27 = samplesCopy;
    v28 = 2112;
    v29 = withSamplesCopy;
    v12 = v25;
    _os_log_impl(&dword_269C02000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Replacing old samples: %@ with new samples: %@", buf, 0x20u);
  }

  v23 = 0;
  v13 = [(HDSHPluginServer *)self _insertSamplesWithClientSource:withSamplesCopy error:&v23];
  v14 = v23;
  v15 = v14;
  if (v13)
  {
    v22 = v14;
    v16 = [(HDSHPluginServer *)self _deleteSamples:samplesCopy error:&v22];
    v17 = v22;

    v15 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = v15;
  if (v18)
  {
    if (error)
    {
      v19 = v18;
      *error = v18;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_deleteSamples:(id)samples error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [samples hk_map:&__block_literal_global];
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    *v16 = 138543618;
    *&v16[4] = objc_opt_class();
    *&v16[12] = 2112;
    *&v16[14] = v6;
    v9 = *&v16[4];
    _os_log_impl(&dword_269C02000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Deleting UUIDs: %@", v16, 0x16u);
  }

  v10 = [(HDStandardTaskServer *)self profile:*v16];
  dataManager = [v10 dataManager];
  v12 = objc_alloc_init(MEMORY[0x277D10688]);
  v13 = [dataManager deleteObjectsWithUUIDCollection:v6 configuration:v12 error:error];

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)_insertSamplesWithClientSource:(id)source error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  sourceManager = [WeakRetained sourceManager];
  v9 = [sourceManager createOrUpdateSourceForClient:self->_client error:error];

  _HKInitializeLogging();
  v10 = MEMORY[0x277CCC320];
  v11 = *MEMORY[0x277CCC320];
  if (os_log_type_enabled(*MEMORY[0x277CCC320], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = objc_opt_class();
    client = self->_client;
    v30 = 138543874;
    v31 = v13;
    v32 = 2112;
    v33 = client;
    v34 = 2112;
    v35 = v9;
    v15 = v13;
    _os_log_impl(&dword_269C02000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Inserting for client: %@, source: %@", &v30, 0x20u);
  }

  if (v9)
  {
    v16 = objc_loadWeakRetained(&self->_profile);
    dataProvenanceManager = [v16 dataProvenanceManager];
    v18 = [dataProvenanceManager localDataProvenanceForSourceEntity:v9 version:0 deviceEntity:0];

    v19 = objc_loadWeakRetained(&self->_profile);
    dataManager = [v19 dataManager];
    v21 = [dataManager insertDataObjects:sourceCopy withProvenance:v18 creationDate:0 skipInsertionFilter:error error:CFAbsoluteTimeGetCurrent()];

    _HKInitializeLogging();
    v22 = *v10;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = objc_opt_class();
      v25 = MEMORY[0x277CCABB0];
      v26 = v24;
      v27 = [v25 numberWithBool:v21];
      v30 = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v27;
      _os_log_impl(&dword_269C02000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@] Success inserting: %@", &v30, 0x16u);
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

@end