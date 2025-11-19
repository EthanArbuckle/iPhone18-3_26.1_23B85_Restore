@interface HDSPBiomeInBedDetectionProvider
- (id)findLastTimeDeviceLockChangedDuringInterval:(id)a3 isLocked:(BOOL)a4 error:(id *)a5;
- (id)findLastTimeDeviceWasPluggedInDuringInterval:(id)a3 error:(id *)a4;
- (id)findMotionTerminusDuringInterval:(id)a3 latest:(BOOL)a4 error:(id *)a5;
- (id)findTimesDeviceWasUnlockedDuringInterval:(id)a3 error:(id *)a4;
@end

@implementation HDSPBiomeInBedDetectionProvider

- (id)findMotionTerminusDuringInterval:(id)a3 latest:(BOOL)a4 error:(id *)a5
{
  v5 = a4;
  v70 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CC1CD0] isActivityAvailable];
  v8 = HKSPLogForCategory();
  v9 = v8;
  if (v7)
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
    v12 = [v6 startDate];
    v13 = [v6 endDate];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __81__HDSPBiomeInBedDetectionProvider_findMotionTerminusDuringInterval_latest_error___block_invoke;
    v49[3] = &unk_279C7B858;
    v49[4] = self;
    p_buf = &buf;
    v52 = &v53;
    dsema = v11;
    v50 = dsema;
    [v9 queryActivityStartingFromDate:v12 toDate:v13 toQueue:v40 withHandler:v49];

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

    v16 = [v6 endDate];
    v17 = [v6 endDate];
    if (v5)
    {
      v47 = 0uLL;
      v48 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      v18 = [v54[5] reverseObjectEnumerator];
      v19 = [v18 countByEnumeratingWithState:&v45 objects:v64 count:16];
      if (v19)
      {
        v20 = *v46;
        while (2)
        {
          v21 = 0;
          v22 = v17;
          v23 = v16;
          do
          {
            if (*v46 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v24 = *(*(&v45 + 1) + 8 * v21);
            if (([v24 stationary] & 1) == 0 && objc_msgSend(v24, "confidence") == 1)
            {
              v17 = v22;
              v19 = v17;
              v16 = v23;
              goto LABEL_34;
            }

            v16 = [v24 startDate];

            v17 = [v24 startDate];

            v21 = v21 + 1;
            v22 = v17;
            v23 = v16;
          }

          while (v19 != v21);
          v19 = [v18 countByEnumeratingWithState:&v45 objects:v64 count:16];
          if (v19)
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
      v18 = [v54[5] objectEnumerator];
      v19 = [v18 countByEnumeratingWithState:&v41 objects:v63 count:16];
      if (v19)
      {
        v25 = *v42;
        while (2)
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v42 != v25)
            {
              objc_enumerationMutation(v18);
            }

            v27 = *(*(&v41 + 1) + 8 * i);
            if (([v27 stationary] & 1) == 0 && objc_msgSend(v27, "confidence") == 1)
            {
              v19 = [v27 startDate];
              goto LABEL_34;
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v41 objects:v63 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }
    }

LABEL_34:

    if (a5)
    {
      v28 = *(*(&buf + 1) + 40);
      if (v28)
      {
        *a5 = v28;
      }
    }

    v29 = HKSPLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      *v59 = 138543618;
      v60 = v30;
      v61 = 2112;
      v62 = v19;
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

    v19 = 0;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v19;
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

- (id)findLastTimeDeviceLockChangedDuringInterval:(id)a3 isLocked:(BOOL)a4 error:(id *)a5
{
  v7 = a3;
  v8 = BiomeLibrary();
  v9 = [v8 Device];
  v10 = [v9 ScreenLocked];

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
  v11 = [MEMORY[0x277CF1A50] hdsp_optionsForDateInterval:v7 reversed:1];
  v12 = [v10 publisherWithUseCase:@"com.apple.sleepd.inBedDetection" options:v11];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __94__HDSPBiomeInBedDetectionProvider_findLastTimeDeviceLockChangedDuringInterval_isLocked_error___block_invoke;
  v20[3] = &__block_descriptor_33_e22_B16__0__BMStoreEvent_8l;
  v21 = a4;
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
    if (a5)
    {
      *a5 = v15;
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

- (id)findLastTimeDeviceWasPluggedInDuringInterval:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [v5 startDate];
    v10 = [v5 endDate];
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v32 = v10;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for last time device was plugged in between %@ and %@", buf, 0x20u);
  }

  v11 = BiomeLibrary();
  v12 = [v11 Device];
  v13 = [v12 Power];
  v14 = [v13 PluggedIn];

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
  v15 = [MEMORY[0x277CF1A50] hdsp_optionsForDateInterval:v5 reversed:1];
  v16 = [v14 publisherWithUseCase:@"com.apple.sleepd.inBedDetection" options:v15];
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
    if (a4)
    {
      *a4 = v19;
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

- (id)findTimesDeviceWasUnlockedDuringInterval:(id)a3 error:(id *)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = [v5 startDate];
    v10 = [v5 endDate];
    *buf = 138543874;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v32 = v10;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for times device was unlocked in between %@ and %@", buf, 0x20u);
  }

  v11 = BiomeLibrary();
  v12 = [v11 Device];
  v13 = [v12 ScreenLocked];

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
  v14 = [MEMORY[0x277CF1A50] hdsp_optionsForDateInterval:v5];
  v15 = [v13 publisherWithUseCase:@"com.apple.sleepd.inBedDetection" options:v14];
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
    if (a4)
    {
      *a4 = v19;
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