@interface RTBackgroundInertialOdometryManager
+ (id)vendedClasses;
- (RTBackgroundInertialOdometryManager)initWithBackgroundInertialOdometryStore:(id)store;
- (void)_addBackgroundInertialOdometrySamples:(id)samples handler:(id)handler;
- (void)_fetchBackgroundInertialOdometrySamplesWithOptions:(id)options handler:(id)handler;
- (void)addBackgroundInertialOdometrySamples:(id)samples handler:(id)handler;
- (void)fetchBackgroundInertialOdometrySamplesWithOptions:(id)options handler:(id)handler;
- (void)fetchEnumerableObjectsWithOptions:(id)options offset:(unint64_t)offset handler:(id)handler;
- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion;
@end

@implementation RTBackgroundInertialOdometryManager

- (RTBackgroundInertialOdometryManager)initWithBackgroundInertialOdometryStore:(id)store
{
  storeCopy = store;
  if (storeCopy)
  {
    v11.receiver = self;
    v11.super_class = RTBackgroundInertialOdometryManager;
    v6 = [(RTNotifier *)&v11 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_inertialOdometryStore, store);
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: inertialOdometryStore", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)_fetchBackgroundInertialOdometrySamplesWithOptions:(id)options handler:(id)handler
{
  handlerCopy = handler;
  optionsCopy = options;
  inertialOdometryStore = [(RTBackgroundInertialOdometryManager *)self inertialOdometryStore];
  [inertialOdometryStore fetchStoredBackgroundInertialOdometrySamplesWithOptions:optionsCopy handler:handlerCopy];
}

- (void)fetchBackgroundInertialOdometrySamplesWithOptions:(id)options handler:(id)handler
{
  v21 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (optionsCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[RTBackgroundInertialOdometryManager fetchBackgroundInertialOdometrySamplesWithOptions:handler:]";
    v19 = 1024;
    v20 = 53;
    _os_log_error_impl(&dword_2304B3000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
  }

  if (!v8)
  {
LABEL_7:
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTBackgroundInertialOdometryManager fetchBackgroundInertialOdometrySamplesWithOptions:handler:]";
      v19 = 1024;
      v20 = 54;
      _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__RTBackgroundInertialOdometryManager_fetchBackgroundInertialOdometrySamplesWithOptions_handler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v15 = optionsCopy;
  v16 = v8;
  v12 = v8;
  v13 = optionsCopy;
  dispatch_async(queue, block);
}

- (void)_addBackgroundInertialOdometrySamples:(id)samples handler:(id)handler
{
  v18[1] = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  handlerCopy = handler;
  if ([samplesCopy count])
  {
    inertialOdometryStore = [(RTBackgroundInertialOdometryManager *)self inertialOdometryStore];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __85__RTBackgroundInertialOdometryManager__addBackgroundInertialOdometrySamples_handler___block_invoke;
    v14[3] = &unk_2788C56C0;
    v14[4] = self;
    v16 = a2;
    v15 = handlerCopy;
    [inertialOdometryStore storeWritableObjects:samplesCopy handler:v14];
  }

  else if (handlerCopy)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D01448];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"requires valid inertial odometry samples.";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v10 errorWithDomain:v11 code:7 userInfo:v12];
    (*(handlerCopy + 2))(handlerCopy, v13);
  }
}

void __85__RTBackgroundInertialOdometryManager__addBackgroundInertialOdometrySamples_handler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBackgroundInertialOdometry);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 48));
      v9 = 138412802;
      v10 = v7;
      v11 = 2112;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_2304B3000, v4, OS_LOG_TYPE_ERROR, "%@:%@,error,%@", &v9, 0x20u);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)addBackgroundInertialOdometrySamples:(id)samples handler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (samplesCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[RTBackgroundInertialOdometryManager addBackgroundInertialOdometrySamples:handler:]";
    v22 = 1024;
    v23 = 91;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: samples (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTBackgroundInertialOdometryManager addBackgroundInertialOdometrySamples:handler:]";
      v22 = 1024;
      v23 = 92;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTNotifier *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__RTBackgroundInertialOdometryManager_addBackgroundInertialOdometrySamples_handler___block_invoke;
  v15[3] = &unk_2788C4C20;
  v16 = samplesCopy;
  selfCopy = self;
  v18 = v9;
  v19 = a2;
  v13 = v9;
  v14 = samplesCopy;
  dispatch_async(queue, v15);
}

uint64_t __84__RTBackgroundInertialOdometryManager_addBackgroundInertialOdometrySamples_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __84__RTBackgroundInertialOdometryManager_addBackgroundInertialOdometrySamples_handler___block_invoke_2;
  v5[3] = &unk_2788CC468;
  v3 = *(a1 + 56);
  v5[4] = *(a1 + 40);
  v5[5] = v3;
  [v2 enumerateObjectsUsingBlock:v5];
  return [*(a1 + 40) _addBackgroundInertialOdometrySamples:*(a1 + 32) handler:*(a1 + 48)];
}

void __84__RTBackgroundInertialOdometryManager_addBackgroundInertialOdometrySamples_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBackgroundInertialOdometry);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v7 = NSStringFromSelector(*(a1 + 40));
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = 138413058;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v9;
      v16 = 2112;
      v17 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@:%@, %@: %@", &v10, 0x2Au);
    }
  }
}

- (void)performPurgeOfType:(int64_t)type referenceDate:(id)date completion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  queue = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__RTBackgroundInertialOdometryManager_performPurgeOfType_referenceDate_completion___block_invoke;
  block[3] = &unk_2788C47A8;
  v17 = completionCopy;
  typeCopy = type;
  v15 = dateCopy;
  selfCopy = self;
  v19 = a2;
  v12 = completionCopy;
  v13 = dateCopy;
  dispatch_async(queue, block);
}

void __83__RTBackgroundInertialOdometryManager_performPurgeOfType_referenceDate_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) <= 2uLL && (v2 = *(a1 + 32)) != 0)
  {
    v3 = v2;
    v4 = [*(a1 + 40) inertialOdometryStore];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __83__RTBackgroundInertialOdometryManager_performPurgeOfType_referenceDate_completion___block_invoke_2;
    v6[3] = &unk_2788C4780;
    v8 = *(a1 + 64);
    v7 = *(a1 + 48);
    [v4 purgeBackgroundInertialOdometrySamplesPredating:v3 handler:v6];
  }

  else
  {
    v5 = *(*(a1 + 48) + 16);

    v5();
  }
}

void __83__RTBackgroundInertialOdometryManager_performPurgeOfType_referenceDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityBackgroundInertialOdometry);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = NSStringFromSelector(*(a1 + 40));
      v6 = 138412546;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_debug_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEBUG, "%@, performPurgeOfType, error, %@", &v6, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)vendedClasses
{
  v2 = vendedClasses_vendedClasses_2;
  if (!vendedClasses_vendedClasses_2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
    v4 = vendedClasses_vendedClasses_2;
    vendedClasses_vendedClasses_2 = v3;

    v2 = vendedClasses_vendedClasses_2;
  }

  return v2;
}

- (void)fetchEnumerableObjectsWithOptions:(id)options offset:(unint64_t)offset handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __88__RTBackgroundInertialOdometryManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke;
    v12[3] = &unk_2788C6940;
    v13 = optionsCopy;
    selfCopy = self;
    v15 = handlerCopy;
    offsetCopy = offset;
    dispatch_async(queue, v12);

    v11 = v13;
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __88__RTBackgroundInertialOdometryManager_fetchEnumerableObjectsWithOptions_offset_handler___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"options cannot be nil";
    v8 = MEMORY[0x277CBEAC0];
    v9 = v17;
    v10 = &v16;
LABEL_8:
    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
    v12 = [v6 errorWithDomain:v7 code:7 userInfo:v11];

    (*(*(a1 + 48) + 16))();
    return;
  }

  v3 = [v2 enumeratedType];
  v4 = [objc_opt_class() vendedClasses];
  v5 = [v4 member:v3];

  if (!v5)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277D01448];
    v14 = *MEMORY[0x277CCA450];
    v15 = @"the type specified by options is not vended by this manager";
    v8 = MEMORY[0x277CBEAC0];
    v9 = &v15;
    v10 = &v14;
    goto LABEL_8;
  }

  v13 = [*(a1 + 40) inertialOdometryStore];
  [v13 fetchEnumerableObjectsWithOptions:*(a1 + 32) offset:*(a1 + 56) handler:*(a1 + 48)];
}

@end