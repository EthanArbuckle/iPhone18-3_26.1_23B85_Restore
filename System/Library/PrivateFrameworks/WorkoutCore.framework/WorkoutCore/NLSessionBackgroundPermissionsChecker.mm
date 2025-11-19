@interface NLSessionBackgroundPermissionsChecker
- (BOOL)_needsMotionCalibrationPermission;
- (BOOL)needsMotionCalibrationPermission;
- (NLSessionBackgroundPermissionsChecker)init;
- (void)resetAndFetchMotionCalibrationPermission;
@end

@implementation NLSessionBackgroundPermissionsChecker

- (NLSessionBackgroundPermissionsChecker)init
{
  v8 = a2;
  v9 = 0;
  v7.receiver = self;
  v7.super_class = NLSessionBackgroundPermissionsChecker;
  v6 = [(NLSessionBackgroundPermissionsChecker *)&v7 init];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    v2 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v2;
    MEMORY[0x277D82BD8](queue);
  }

  v5 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)resetAndFetchMotionCalibrationPermission
{
  v17 = self;
  location[1] = a2;
  v6 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v7 = v6;
  dispatch_assert_queue_V2(v7);
  MEMORY[0x277D82BD8](v7);
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_20AEA4000, log, type, "[TCC] Reset and fetch motion calibration permission", v14, 2u);
  }

  objc_storeStrong(location, 0);
  objc_storeStrong(&v17->_motionCalibrationResult, 0);
  queue = v17->_queue;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __81__NLSessionBackgroundPermissionsChecker_resetAndFetchMotionCalibrationPermission__block_invoke;
  v12 = &unk_277D88890;
  v13 = MEMORY[0x277D82BE0](v17);
  dispatch_async(queue, &v8);
  objc_storeStrong(&v13, 0);
}

void __81__NLSessionBackgroundPermissionsChecker_resetAndFetchMotionCalibrationPermission__block_invoke(uint64_t a1)
{
  v14 = a1;
  v13 = a1;
  v12 = [*(a1 + 32) _needsMotionCalibrationPermission];
  v2 = MEMORY[0x277D85CD0];
  v1 = MEMORY[0x277D85CD0];
  queue = v2;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __81__NLSessionBackgroundPermissionsChecker_resetAndFetchMotionCalibrationPermission__block_invoke_2;
  v9 = &unk_277D88868;
  v11 = v12 & 1;
  v10 = MEMORY[0x277D82BE0](*(a1 + 32));
  dispatch_async(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v10, 0);
}

uint64_t __81__NLSessionBackgroundPermissionsChecker_resetAndFetchMotionCalibrationPermission__block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40) & 1];
    __os_log_helper_16_2_1_8_66(v8, v5);
    _os_log_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_DEFAULT, "[TCC] Setting motionCalibrationResult=%{public}@", v8, 0xCu);
    MEMORY[0x277D82BD8](v5);
  }

  objc_storeStrong(oslog, 0);
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40) & 1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = v1;
  result = MEMORY[0x277D82BD8](v3);
  *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_needsMotionCalibrationPermission
{
  v28 = self;
  v27 = a2;
  v9 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v10 = v9;
  dispatch_assert_queue_not_V2(v10);
  MEMORY[0x277D82BD8](v10);
  v26 = 17;
  v25 = objc_alloc_init(MEMORY[0x277CC1DA0]);
  v20 = 0;
  v21 = &v20;
  v22 = 0x20000000;
  v23 = 32;
  v24 = 0;
  location = dispatch_semaphore_create(0);
  v12 = v25;
  v11 = v26;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__NLSessionBackgroundPermissionsChecker__needsMotionCalibrationPermission__block_invoke;
  v17[3] = &unk_277D888B8;
  v18[1] = &v20;
  v18[0] = MEMORY[0x277D82BE0](location);
  [v12 getPromptsNeededForWorkoutType:v11 handler:v17];
  dsema = location;
  v3 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(dsema, v3))
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v7 = type;
      __os_log_helper_16_0_0(v13);
      _os_log_impl(&dword_20AEA4000, log, v7, "[TCC] _needsMotionCalibrationPermission - CoreMotion prompts needed semaphore timed out. Defaulting to no.", v13, 2u);
    }

    objc_storeStrong(&oslog, 0);
  }

  v5 = *(v21 + 24);
  objc_storeStrong(v18, 0);
  objc_storeStrong(&location, 0);
  _Block_object_dispose(&v20, 8);
  objc_storeStrong(&v25, 0);
  return v5 & 1;
}

void __74__NLSessionBackgroundPermissionsChecker__needsMotionCalibrationPermission__block_invoke(uint64_t a1, uint64_t a2, id obj)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    _HKInitializeLogging();
    oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v11, location);
      _os_log_impl(&dword_20AEA4000, oslog[0], type, "[TCC] CoreMotion prompts needed error=%@", v11, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    _HKInitializeLogging();
    v4 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v10, v8);
      _os_log_impl(&dword_20AEA4000, v4, OS_LOG_TYPE_DEFAULT, "[TCC] CoreMotion prompts needed = %lu", v10, 0xCu);
    }

    objc_storeStrong(&v4, 0);
    *(*(*(a1 + 40) + 8) + 24) = (v8 & 1) != 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)needsMotionCalibrationPermission
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = self;
  location[1] = a2;
  if (self->_motionCalibrationResult)
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v11, v9->_motionCalibrationResult);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[TCC] Returning needsMotionCalibrationPermission=%{public}@", v11, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v10 = [(NSNumber *)v9->_motionCalibrationResult BOOLValue];
  }

  else
  {
    _HKInitializeLogging();
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v7 = 16;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_ERROR))
    {
      log = location[0];
      type = v7;
      __os_log_helper_16_0_0(v6);
      _os_log_error_impl(&dword_20AEA4000, log, type, "[TCC] No motion calibration result available, returning NO in needsMotionCalibrationPermission", v6, 2u);
    }

    objc_storeStrong(location, 0);
    v10 = 0;
  }

  *MEMORY[0x277D85DE8];
  return v10 & 1;
}

@end