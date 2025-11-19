@interface SPContextEngine
- (SPContextEngine)initWithQueue:(id)a3;
- (void)_activate;
- (void)_ensureLocationMonitoringStarted;
- (void)_ensureLocationMonitoringStopped;
- (void)_ensureSoundSensorModuleStarted;
- (void)_ensureSoundSensorModuleStopped;
- (void)_invalidate;
- (void)activate;
- (void)invalidate;
- (void)processContextChangeFlags:(unsigned int)a3;
@end

@implementation SPContextEngine

- (SPContextEngine)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SPContextEngine;
  v6 = [(SPContextEngine *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, a3);
  }

  return v7;
}

- (void)processContextChangeFlags:(unsigned int)a3
{
  self->_runLocationMonitoring = a3 & 1;
  self->_runSoundSensorModule = (a3 & 2) != 0;
  [(SPContextEngine *)self _activate];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003904;
  block[3] = &unk_100010658;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (self->_runLocationMonitoring)
  {
    [(SPContextEngine *)self _ensureLocationMonitoringStarted];
  }

  else
  {
    [(SPContextEngine *)self _ensureLocationMonitoringStopped];
  }

  if (self->_runSoundSensorModule)
  {

    [(SPContextEngine *)self _ensureSoundSensorModuleStarted];
  }

  else
  {

    [(SPContextEngine *)self _ensureSoundSensorModuleStopped];
  }
}

- (void)_ensureLocationMonitoringStarted
{
  v3 = [[SPLocationManager alloc] initWithQueue:self->_dispatchQueue];
  spLocationManager = self->_spLocationManager;
  self->_spLocationManager = v3;

  [(SPLocationManager *)self->_spLocationManager setLocationCategoryChangedHandler:&stru_1000107F0];
  v5 = self->_spLocationManager;

  [(SPLocationManager *)v5 start];
}

- (void)_ensureLocationMonitoringStopped
{
  spLocationManager = self->_spLocationManager;
  if (spLocationManager)
  {
    [(SPLocationManager *)spLocationManager stop];
  }
}

- (void)_ensureSoundSensorModuleStarted
{
  v3 = +[SPSoundSensor sharedSoundSensorModule];
  spSoundSensor = self->_spSoundSensor;
  self->_spSoundSensor = v3;

  [(SPSoundSensor *)self->_spSoundSensor subscribeToNoiseLevelForClient:self callback:&stru_100010830];
  v5 = self->_spSoundSensor;

  [(SPSoundSensor *)v5 activate];
}

- (void)_ensureSoundSensorModuleStopped
{
  spSoundSensor = self->_spSoundSensor;
  if (spSoundSensor)
  {
    [(SPSoundSensor *)spSoundSensor unsubscribeFromNoiseLevel:self];
    v4 = self->_spSoundSensor;

    [(SPSoundSensor *)v4 invalidate];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003C04;
  block[3] = &unk_100010658;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  spLocationManager = self->_spLocationManager;
  if (spLocationManager)
  {
    [(SPLocationManager *)spLocationManager stop];
  }

  spSoundSensor = self->_spSoundSensor;
  if (spSoundSensor)
  {
    [(SPSoundSensor *)spSoundSensor unsubscribeFromNoiseLevel:self];
    v5 = self->_spSoundSensor;

    [(SPSoundSensor *)v5 invalidate];
  }
}

@end