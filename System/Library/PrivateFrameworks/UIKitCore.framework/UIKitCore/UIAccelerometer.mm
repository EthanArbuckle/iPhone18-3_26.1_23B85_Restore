@interface UIAccelerometer
+ (UIAccelerometer)sharedAccelerometer;
- (UIAccelerometer)init;
- (id)_motionManager;
- (id)delegate;
- (void)_acceleratedInX:(double)x y:(double)y z:(double)z timestamp:(double)timestamp;
- (void)_startAccelerometerIfNecessary;
- (void)_stopAccelerometer;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
- (void)setUpdateInterval:(NSTimeInterval)updateInterval;
@end

@implementation UIAccelerometer

+ (UIAccelerometer)sharedAccelerometer
{
  v3 = sharedAccelerometer_sharedAccelerometer;
  if (!sharedAccelerometer_sharedAccelerometer)
  {
    v4 = objc_alloc_init(self);
    v5 = sharedAccelerometer_sharedAccelerometer;
    sharedAccelerometer_sharedAccelerometer = v4;

    v3 = sharedAccelerometer_sharedAccelerometer;
  }

  return v3;
}

- (UIAccelerometer)init
{
  v6.receiver = self;
  v6.super_class = UIAccelerometer;
  v2 = [(UIAccelerometer *)&v6 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__willResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__didSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [(UIAccelerometer *)v2 setUpdateInterval:0.1];
    v4 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(CMMotionManager *)self->_motionManager stopAccelerometerUpdates];
  v3.receiver = self;
  v3.super_class = UIAccelerometer;
  [(UIAccelerometer *)&v3 dealloc];
}

- (void)setUpdateInterval:(NSTimeInterval)updateInterval
{
  self->_updateInterval = updateInterval;
  if (*&self->_accelerometerFlags)
  {
    _motionManager = [(UIAccelerometer *)self _motionManager];
    v6 = _motionManager;
    v7 = self->_updateInterval;
    if (v7 <= 0.0)
    {
      v7 = 0.1;
    }

    [_motionManager setAccelerometerUpdateInterval:v7];

    [(UIAccelerometer *)self _startAccelerometerIfNecessary];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (!obj || WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    if (obj)
    {
      v6 = objc_opt_respondsToSelector();
      self->_accelerometerFlags = (*&self->_accelerometerFlags & 0xFFFFFFFE | v6 & 1);
      if (v6)
      {
        [(UIAccelerometer *)self _startAccelerometerIfNecessary];
LABEL_8:
        v5 = obj;
        goto LABEL_9;
      }
    }

    else
    {
      *&self->_accelerometerFlags &= ~1u;
    }

    [(UIAccelerometer *)self _stopAccelerometer];
    goto LABEL_8;
  }

LABEL_9:
}

- (void)_acceleratedInX:(double)x y:(double)y z:(double)z timestamp:(double)timestamp
{
  if (*&self->_accelerometerFlags)
  {
    v13 = objc_opt_new();
    [v13 setTimestamp:timestamp];
    [v13 setX:x];
    [v13 setY:y];
    [v13 setZ:z];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained accelerometer:self didAccelerate:v13];
  }
}

- (id)_motionManager
{
  motionManager = self->_motionManager;
  if (!motionManager)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2050000000;
    v4 = _MergedGlobals_1150;
    v14 = _MergedGlobals_1150;
    if (!_MergedGlobals_1150)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __getCMMotionManagerClass_block_invoke;
      v10[3] = &unk_1E70F2F20;
      v10[4] = &v11;
      __getCMMotionManagerClass_block_invoke(v10);
      v4 = v12[3];
    }

    v5 = v4;
    _Block_object_dispose(&v11, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_motionManager;
    self->_motionManager = v6;

    isAccelerometerAvailable = [(CMMotionManager *)self->_motionManager isAccelerometerAvailable];
    motionManager = self->_motionManager;
    if (!isAccelerometerAvailable)
    {
      self->_motionManager = 0;

      motionManager = self->_motionManager;
    }
  }

  return motionManager;
}

- (void)_startAccelerometerIfNecessary
{
  _motionManager = [(UIAccelerometer *)self _motionManager];
  if (([_motionManager isAccelerometerActive] & 1) == 0)
  {
    accelerometerFlags = self->_accelerometerFlags;

    if ((*&accelerometerFlags & 1) == 0)
    {
      return;
    }

    _motionManager = [(UIAccelerometer *)self _motionManager];
    [_motionManager setAccelerometerDataCallback:accelCallback info:self interval:self->_updateInterval];
  }
}

- (void)_stopAccelerometer
{
  _motionManager = [(UIAccelerometer *)self _motionManager];
  isAccelerometerActive = [_motionManager isAccelerometerActive];

  if (isAccelerometerActive)
  {
    _motionManager2 = [(UIAccelerometer *)self _motionManager];
    [_motionManager2 stopAccelerometerUpdates];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end