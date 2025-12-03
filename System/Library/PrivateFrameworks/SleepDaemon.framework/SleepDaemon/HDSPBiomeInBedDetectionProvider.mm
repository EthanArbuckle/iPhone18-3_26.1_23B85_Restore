@interface HDSPBiomeInBedDetectionProvider
- (id)findLastTimeDeviceLockChangedDuringInterval:(id)interval isLocked:(BOOL)locked error:(id *)error;
- (id)findLastTimeDeviceWasPluggedInDuringInterval:(id)interval error:(id *)error;
- (id)findMotionTerminusDuringInterval:(id)interval latest:(BOOL)latest error:(id *)error;
- (id)findTimesDeviceWasUnlockedDuringInterval:(id)interval error:(id *)error;
@end

@implementation HDSPBiomeInBedDetectionProvider

- (id)findMotionTerminusDuringInterval:(id)interval latest:(BOOL)latest error:(id *)error
{
  latestCopy = latest;
  v70 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  isActivityAvailable = [MEMORY[0x277CC1CD0] isActivityAvailable];
  v8 = HKSPLogForCategory();
  v9 = v8;
  if (isActivityAvailable)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = objc_opt_class();
      v10 = *(&buf + 4);
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Querying CoreMotion..", &buf, 0xCu);
    }

    v9 = objc_alloc_init(MEMORY[0x277CC1CD0]);
    v40 = objc_alloc_init(MEMORY[0x277CCABD8]);
    [v40 setName:@"com.apple.coreduet.inbed.coremotion"];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy__4;
    v68 = __Block_byref_object_dispose__4;
    v69 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x3032000000;
    v56 = __Block_byref_object_copy__4;
    v57 = __Block_byref_object_dispose__4;
    v58 = 0;
    v11 = dispatch_semaphore_create(0);
    startDate = [intervalCopy startDate];
    endDate = [intervalCopy endDate];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __81__HDSPBiomeInBedDetectionProvider_findMotionTerminusDuringInterval_latest_error___block_invoke;
    v49[3] = &unk_279C7B858;
    v49[4] = self;
    p_buf = &buf;
    v52 = &v53;
    dsema = v11;
    v50 = dsema;
    [v9 queryActivityStartingFromDate:startDate toDate:endDate toQueue:v40 withHandler:v49];

    v14 = dispatch_time(0, 60000000000);
    if (dispatch_semaphore_wait(dsema, v14))
    {
      v15 = HKSPLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v35 = objc_opt_class();
        *v59 = 138543362;
        v60 = v35;
        v36 = v35;
        _os_log_error_impl(&dword_269B11000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Timeout during queryActivityStartingFromDate.", v59, 0xCu);
      }

      [v40 cancelAllOperations];
    }

    endDate2 = [intervalCopy endDate];
    endDate3 = [intervalCopy endDate];
    if (latestCopy)
    {
      v47 = 0uLL;
      v48 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      reverseObjectEnumerator = [v54[5] reverseObjectEnumerator];
      startDate2 = [reverseObjectEnumerator countByEnumeratingWithState:&v45 objects:v64 count:16];
      if (startDate2)
      {
        v20 = *v46;
        while (2)
        {
          v21 = 0;
          v22 = endDate3;
          v23 = endDate2;
          do
          {
            if (*v46 != v20)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v24 = *(*(&v45 + 1) + 8 * v21);
            if (([v24 stationary] & 1) == 0 && objc_msgSend(v24, "confidence") == 1)
            {
              endDate3 = v22;
              startDate2 = endDate3;
              endDate2 = v23;
              goto LABEL_34;
            }

            endDate2 = [v24 startDate];

            endDate3 = [v24 startDate];

            v21 = v21 + 1;
            v22 = endDate3;
            v23 = endDate2;
          }

          while (startDate2 != v21);
          startDate2 = [reverseObjectEnumerator countByEnumeratingWithState:&v45 objects:v64 count:16];
          if (startDate2)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v43 = 0uLL;
      v44 = 0uLL;
      v41 = 0uLL;
      v42 = 0uLL;
      reverseObjectEnumerator = [v54[5] objectEnumerator];
      startDate2 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v63 count:16];
      if (startDate2)
      {
        v25 = *v42;
        while (2)
        {
          for (i = 0; i != startDate2; i = i + 1)
          {
            if (*v42 != v25)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v27 = *(*(&v41 + 1) + 8 * i);
            if (([v27 stationary] & 1) == 0 && objc_msgSend(v27, "confidence") == 1)
            {
              startDate2 = [v27 startDate];
              goto LABEL_34;
            }
          }

          startDate2 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v63 count:16];
          if (startDate2)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_34:

    if (error)
    {
      v28 = *(*(&buf + 1) + 40);
      if (v28)
      {
        *error = v28;
      }
    }

    v29 = HKSPLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      *v59 = 138543618;
      v60 = v30;
      v61 = 2112;
      v62 = startDate2;
      v31 = v30;
      _os_log_impl(&dword_269B11000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@] Last motion was %@", v59, 0x16u);
    }

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = objc_opt_class();
      v34 = *(&buf + 4);
      _os_log_error_impl(&dword_269B11000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Motion activity is not available for in bed detection", &buf, 0xCu);
    }

    startDate2 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return startDate2;
}

void __81__HDSPBiomeInBedDetectionProvider_findMotionTerminusDuringInterval_latest_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HKSPLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *v20 = 138543618;
      *&v20[4] = objc_opt_class();
      *&v20[12] = 2112;
      *&v20[14] = v6;
      v19 = *&v20[4];
      _os_log_error_impl(&dword_269B11000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Querying CoreMotion failed with error: %@", v20, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  v8 = [v5 copy];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = HKSPLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = objc_opt_class();
    v14 = *(*(*(a1 + 56) + 8) + 40);
    v15 = v13;
    v16 = [v14 count];
    *v20 = 138543618;
    *&v20[4] = v13;
    *&v20[12] = 2048;
    *&v20[14] = v16;
    _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found %ld activities", v20, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v17 = *MEMORY[0x277D85DE8];
}

- (id)findLastTimeDeviceLockChangedDuringInterval:(id)interval isLocked:(BOOL)locked error:(id *)error
{
  intervalCopy = interval;
  v8 = BiomeLibrary();
  device = [v8 Device];
  screenLocked = [device ScreenLocked];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__4;
  v32 = __Block_byref_object_dispose__4;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = 0;
  v11 = [MEMORY[0x277CF1A50] hdsp_optionsForDateInterval:intervalCopy reversed:1];
  v12 = [screenLocked publisherWithUseCase:@"com.apple.sleepd.inBedDetection" options:v11];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __94__HDSPBiomeInBedDetectionProvider_findLastTimeDeviceLockChangedDuringInterval_isLocked_error___block_invoke;
  v20[3] = &__block_descriptor_33_e22_B16__0__BMStoreEvent_8l;
  lockedCopy = locked;
  v13 = [v12 filterWithIsIncluded:v20];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __94__HDSPBiomeInBedDetectionProvider_findLastTimeDeviceLockChangedDuringInterval_isLocked_error___block_invoke_2;
  v19[3] = &unk_279C7B8A0;
  v19[4] = &v22;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __94__HDSPBiomeInBedDetectionProvider_findLastTimeDeviceLockChangedDuringInterval_isLocked_error___block_invoke_3;
  v18[3] = &unk_279C7B8C8;
  v18[4] = &v28;
  v14 = [v13 sinkWithCompletion:v19 shouldContinue:v18];

  v15 = v23[5];
  if (v15)
  {
    v16 = 0;
    if (error)
    {
      *error = v15;
    }
  }

  else
  {
    v16 = v29[5];
  }

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v16;
}

BOOL __94__HDSPBiomeInBedDetectionProvider_findLastTimeDeviceLockChangedDuringInterval_isLocked_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  v4 = *(a1 + 32) == [v3 starting];

  return v4;
}

uint64_t __94__HDSPBiomeInBedDetectionProvider_findLastTimeDeviceLockChangedDuringInterval_isLocked_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

uint64_t __94__HDSPBiomeInBedDetectionProvider_findLastTimeDeviceLockChangedDuringInterval_isLocked_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  [a2 timestamp];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 0;
}

- (id)findLastTimeDeviceWasPluggedInDuringInterval:(id)interval error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    startDate = [intervalCopy startDate];
    endDate = [intervalCopy endDate];
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = startDate;
    *&buf[22] = 2112;
    v32 = endDate;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for last time device was plugged in between %@ and %@", buf, 0x20u);
  }

  v11 = BiomeLibrary();
  device = [v11 Device];
  power = [device Power];
  pluggedIn = [power PluggedIn];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = __Block_byref_object_copy__4;
  v33 = __Block_byref_object_dispose__4;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v15 = [MEMORY[0x277CF1A50] hdsp_optionsForDateInterval:intervalCopy reversed:1];
  v16 = [pluggedIn publisherWithUseCase:@"com.apple.sleepd.inBedDetection" options:v15];
  v17 = [v16 filterWithIsIncluded:&__block_literal_global_2];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __86__HDSPBiomeInBedDetectionProvider_findLastTimeDeviceWasPluggedInDuringInterval_error___block_invoke_2;
  v24[3] = &unk_279C7B8A0;
  v24[4] = &v25;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __86__HDSPBiomeInBedDetectionProvider_findLastTimeDeviceWasPluggedInDuringInterval_error___block_invoke_3;
  v23[3] = &unk_279C7B8C8;
  v23[4] = buf;
  v18 = [v17 sinkWithCompletion:v24 shouldContinue:v23];

  v19 = v26[5];
  if (v19)
  {
    v20 = 0;
    if (error)
    {
      *error = v19;
    }
  }

  else
  {
    v20 = *(*&buf[8] + 40);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(buf, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __86__HDSPBiomeInBedDetectionProvider_findLastTimeDeviceWasPluggedInDuringInterval_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 starting];

  return v3;
}

uint64_t __86__HDSPBiomeInBedDetectionProvider_findLastTimeDeviceWasPluggedInDuringInterval_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

uint64_t __86__HDSPBiomeInBedDetectionProvider_findLastTimeDeviceWasPluggedInDuringInterval_error___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  [a2 timestamp];
  v4 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 0;
}

- (id)findTimesDeviceWasUnlockedDuringInterval:(id)interval error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    startDate = [intervalCopy startDate];
    endDate = [intervalCopy endDate];
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = startDate;
    *&buf[22] = 2112;
    v32 = endDate;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for times device was unlocked in between %@ and %@", buf, 0x20u);
  }

  v11 = BiomeLibrary();
  device = [v11 Device];
  screenLocked = [device ScreenLocked];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v32 = __Block_byref_object_copy__4;
  v33 = __Block_byref_object_dispose__4;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v14 = [MEMORY[0x277CF1A50] hdsp_optionsForDateInterval:intervalCopy];
  v15 = [screenLocked publisherWithUseCase:@"com.apple.sleepd.inBedDetection" options:v14];
  v16 = objc_opt_new();
  v17 = [v15 reduceWithInitial:v16 nextPartialResult:&__block_literal_global_307];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __82__HDSPBiomeInBedDetectionProvider_findTimesDeviceWasUnlockedDuringInterval_error___block_invoke_2;
  v24[3] = &unk_279C7B8A0;
  v24[4] = &v25;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __82__HDSPBiomeInBedDetectionProvider_findTimesDeviceWasUnlockedDuringInterval_error___block_invoke_3;
  v23[3] = &unk_279C7B930;
  v23[4] = buf;
  v18 = [v17 sinkWithCompletion:v24 receiveInput:v23];

  v19 = v26[5];
  if (v19)
  {
    v20 = 0;
    if (error)
    {
      *error = v19;
    }
  }

  else
  {
    v20 = *(*&buf[8] + 40);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(buf, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

id __82__HDSPBiomeInBedDetectionProvider_findTimesDeviceWasUnlockedDuringInterval_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 eventBody];
  v7 = [v6 starting];

  if (v7)
  {
    v8 = [v4 lastObject];
    if (!v8)
    {
      goto LABEL_6;
    }

    [v4 removeLastObject];
    v9 = MEMORY[0x277CBEAA8];
    [v5 timestamp];
    v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
    v11 = objc_alloc(MEMORY[0x277CCA970]);
    v12 = [v8 startDate];
    v13 = [v11 initWithStartDate:v12 endDate:v10];
  }

  else
  {
    v14 = MEMORY[0x277CBEAA8];
    [v5 timestamp];
    v8 = [v14 dateWithTimeIntervalSinceReferenceDate:?];
    v10 = [MEMORY[0x277CBEAA8] distantFuture];
    v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v10];
  }

  [v4 addObject:v13];

LABEL_6:

  return v4;
}

uint64_t __82__HDSPBiomeInBedDetectionProvider_findTimesDeviceWasUnlockedDuringInterval_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

@end