@interface SBDeviceMotionDetector
- (SBDeviceMotionDetector)init;
- (SBDeviceMotionVector)gravity;
- (SBDeviceMotionVector)rotationRate;
- (id)_initWithGravity:(id)gravity rotationRate:(id)rate;
- (void)startWithTimeout:(double)timeout;
- (void)stop;
@end

@implementation SBDeviceMotionDetector

- (SBDeviceMotionDetector)init
{
  v3 = objc_alloc_init(SBDeviceMotionVector);
  v4 = objc_alloc_init(SBDeviceMotionVector);
  v5 = [(SBDeviceMotionDetector *)self _initWithGravity:v3 rotationRate:v4];

  return v5;
}

- (id)_initWithGravity:(id)gravity rotationRate:(id)rate
{
  gravityCopy = gravity;
  rateCopy = rate;
  v13.receiver = self;
  v13.super_class = SBDeviceMotionDetector;
  v9 = [(SBDeviceMotionDetector *)&v13 init];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CC1CD8]);
    motionManager = v9->_motionManager;
    v9->_motionManager = v10;

    objc_storeStrong(&v9->_gravity, gravity);
    objc_storeStrong(&v9->_rotationRate, rate);
  }

  return v9;
}

- (void)startWithTimeout:(double)timeout
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_started)
  {
    [(CMMotionManager *)selfCopy->_motionManager startDeviceMotionUpdates];
    selfCopy->_started = 1;
  }

  if (timeout != 0.0)
  {
    [(NSTimer *)selfCopy->_stopTimer invalidate];
    objc_initWeak(&location, selfCopy);
    v5 = MEMORY[0x277CBEBB8];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__SBDeviceMotionDetector_startWithTimeout___block_invoke;
    v8[3] = &unk_2783AA438;
    objc_copyWeak(&v9, &location);
    v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:timeout];
    stopTimer = selfCopy->_stopTimer;
    selfCopy->_stopTimer = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

void __43__SBDeviceMotionDetector_startWithTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stop];
}

- (void)stop
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_started)
  {
    [(NSTimer *)obj->_stopTimer invalidate];
    stopTimer = obj->_stopTimer;
    obj->_stopTimer = 0;

    [(CMMotionManager *)obj->_motionManager stopDeviceMotionUpdates];
    obj->_started = 0;
  }

  objc_sync_exit(obj);
}

- (SBDeviceMotionVector)gravity
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceMotion = [(CMMotionManager *)selfCopy->_motionManager deviceMotion];
  [deviceMotion gravity];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [[SBDeviceMotionVector alloc] initWithX:v5 y:v7 z:v9];
  gravity = selfCopy->_gravity;
  selfCopy->_gravity = v10;

  objc_sync_exit(selfCopy);
  v12 = selfCopy->_gravity;

  return v12;
}

- (SBDeviceMotionVector)rotationRate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceMotion = [(CMMotionManager *)selfCopy->_motionManager deviceMotion];
  [deviceMotion rotationRate];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [[SBDeviceMotionVector alloc] initWithX:v5 y:v7 z:v9];
  rotationRate = selfCopy->_rotationRate;
  selfCopy->_rotationRate = v10;

  objc_sync_exit(selfCopy);
  v12 = selfCopy->_rotationRate;

  return v12;
}

@end