@interface PRUISLightSourceSubscription
+ (id)subscriberOnQueue:(id)a3 activityLevelChangeHandler:(id)a4;
- (PRUISLightSourceSubscription)initWithSubscription:(id)a3;
- (id)_identityLightSource;
- (id)lightSourceOrientationQuaternionForTimestamp:(double)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PRUISLightSourceSubscription

+ (id)subscriberOnQueue:(id)a3 activityLevelChangeHandler:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc(objc_opt_class());
  v8 = [MEMORY[0x1E69AC030] sharedInstance];
  v9 = [v8 subscribeOnQueue:v6 options:4 activityLevelChangeHandler:v5];

  v10 = [v7 initWithSubscription:v9];

  return v10;
}

- (PRUISLightSourceSubscription)initWithSubscription:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PRUISLightSourceSubscription;
  v6 = [(PRUISLightSourceSubscription *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lightSourceSubscription, a3);
  }

  return v7;
}

- (void)dealloc
{
  [(PRUISLightSourceSubscription *)self invalidate];
  lightSourceSubscription = self->_lightSourceSubscription;
  self->_lightSourceSubscription = 0;

  v4.receiver = self;
  v4.super_class = PRUISLightSourceSubscription;
  [(PRUISLightSourceSubscription *)&v4 dealloc];
}

- (void)invalidate
{
  if (([(LSSSubscription *)self->_lightSourceSubscription isInvalidated]& 1) == 0)
  {
    lightSourceSubscription = self->_lightSourceSubscription;

    [(LSSSubscription *)lightSourceSubscription invalidate];
  }
}

- (id)_identityLightSource
{
  v2 = [objc_alloc(MEMORY[0x1E69AC028]) initWithIntensity:0.0 angle:0.0 direction:0.0 orientation:0.0 timestamp:{0.0, 0, 0, 0, 0x3FF0000000000000, 0}];

  return v2;
}

- (id)lightSourceOrientationQuaternionForTimestamp:(double)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [(LSSSubscription *)self->_lightSourceSubscription lightSourceForTargetTime:?];
  if (!v5)
  {
    v6 = PRUISLogMotionEvents();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [PRUISLightSourceSubscription lightSourceOrientationQuaternionForTimestamp:v6];
    }

    v7 = [(PRUISLightSourceSubscription *)self _identityLightSource];
  }

  [v5 orientation];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = PRUISLogMotionEvents();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [v5 timestamp];
    v19 = 134219264;
    v20 = v9;
    v21 = 2048;
    v22 = v11;
    v23 = 2048;
    v24 = v13;
    v25 = 2048;
    v26 = v15;
    v27 = 2048;
    v28 = v18;
    v29 = 2048;
    v30 = a3;
    _os_log_debug_impl(&dword_1CAE63000, v16, OS_LOG_TYPE_DEBUG, "Light Source orientation: x: %f, y: %f, z: %f, w: %f, timestamp: %f, current time: %f", &v19, 0x3Eu);
  }

  return v5;
}

@end