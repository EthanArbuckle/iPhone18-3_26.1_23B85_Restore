@interface REDeviceMotionPredictor
+ (id)supportedFeatures;
- (id)_init;
- (id)featureValueForFeature:(id)a3 element:(id)a4 engine:(id)a5 trainingContext:(id)a6;
- (void)_updateWithActivity:(id)a3;
- (void)pause;
- (void)resume;
@end

@implementation REDeviceMotionPredictor

- (id)_init
{
  v7.receiver = self;
  v7.super_class = REDeviceMotionPredictor;
  v2 = [(REPredictor *)&v7 _init];
  if (v2)
  {
    if (!CoreMotionLibraryCore() || ![getCMMotionActivityManagerClass() isActivityAvailable])
    {
      v5 = RELogForDomain(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(REDeviceMotionPredictor *)v5 _init];
      }

      goto LABEL_9;
    }

    getCMMotionActivityManagerClass();
    v3 = objc_opt_new();
    v4 = v2[8];
    v2[8] = v3;

    if ([getCMMotionActivityManagerClass() authorizationStatus] != 3)
    {
      v5 = RELogForDomain(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(REDeviceMotionPredictor *)v5 _init];
      }

LABEL_9:
    }
  }

  return v2;
}

+ (id)supportedFeatures
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = [REFeatureSet alloc];
  v3 = +[REFeature isStationaryFeature];
  v9[0] = v3;
  v4 = +[REFeature deviceMotionFeature];
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [(REFeatureSet *)v2 initWithFeatures:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)featureValueForFeature:(id)a3 element:(id)a4 engine:(id)a5 trainingContext:(id)a6
{
  v7 = a3;
  v8 = +[REFeature isStationaryFeature];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    v10 = [REFeatureValue featureValueWithBool:[(REDeviceMotionPredictor *)self isStationary]];
LABEL_5:
    v13 = v10;
    goto LABEL_7;
  }

  v11 = +[REFeature deviceMotionFeature];
  v12 = [v7 isEqual:v11];

  if (v12)
  {
    v10 = [REFeatureValue featureValueWithInt64:[(REDeviceMotionPredictor *)self motionType]];
    goto LABEL_5;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (void)resume
{
  v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v4 = [(REPredictor *)self queue];
  [v3 setUnderlyingQueue:v4];

  objc_initWeak(&location, self);
  v5 = [(REPredictor *)self queue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__REDeviceMotionPredictor_resume__block_invoke;
  v11[3] = &unk_2785F9A90;
  objc_copyWeak(&v12, &location);
  v6 = [REUpNextScheduler schedulerWithQueue:v5 delay:v11 updateBlock:300.0];
  scheduler = self->_scheduler;
  self->_scheduler = v6;

  activityManager = self->_activityManager;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__REDeviceMotionPredictor_resume__block_invoke_2;
  v9[3] = &unk_2785FDA50;
  objc_copyWeak(&v10, &location);
  [(CMMotionActivityManager *)activityManager startActivityUpdatesToQueue:v3 withHandler:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __33__REDeviceMotionPredictor_resume__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _updateWithActivity:WeakRetained[10]];
    WeakRetained = v2;
  }
}

void __33__REDeviceMotionPredictor_resume__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 10, a2);
    [v5[9] schedule];
  }
}

- (void)pause
{
  [(CMMotionActivityManager *)self->_activityManager stopActivityUpdates];
  scheduler = self->_scheduler;
  self->_scheduler = 0;
}

- (void)_updateWithActivity:(id)a3
{
  v7 = a3;
  v4 = [(REDeviceMotionPredictor *)self isStationary];
  -[REDeviceMotionPredictor setStationary:](self, "setStationary:", [v7 stationary]);
  if ([v7 walking])
  {
    v5 = 1;
  }

  else if ([v7 running])
  {
    v5 = 2;
  }

  else if ([v7 automotive])
  {
    v5 = 4;
  }

  else if ([v7 cycling])
  {
    v5 = 8;
  }

  else
  {
    [v7 unknown];
    v5 = 0;
  }

  v6 = [(REDeviceMotionPredictor *)self motionType];
  [(REDeviceMotionPredictor *)self setMotionType:v5];
  if (v4 != [v7 stationary] || v6 != v5)
  {
    [(REPredictor *)self updateObservers];
  }
}

@end