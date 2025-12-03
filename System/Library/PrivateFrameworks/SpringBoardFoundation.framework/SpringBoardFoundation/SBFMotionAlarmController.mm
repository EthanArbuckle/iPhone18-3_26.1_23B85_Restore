@interface SBFMotionAlarmController
- (SBFMotionAlarmController)init;
- (SBFMotionAlarmDelegate)delegate;
- (void)_notifyDelegate;
- (void)_registerMotionAlarm;
- (void)_unregisterMotionAlarm;
- (void)alarmDidFire:(id)fire error:(id)error;
- (void)alarmDidRegister:(id)register error:(id)error;
- (void)alarmDidUnregister:(id)unregister error:(id)error;
- (void)dealloc;
@end

@implementation SBFMotionAlarmController

- (SBFMotionAlarmController)init
{
  v6.receiver = self;
  v6.super_class = SBFMotionAlarmController;
  v2 = [(SBFMotionAlarmController *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69634C8]) initWithName:@"com.apple.SpringBoard.MotionAlarmController"];
    motionAlarmManager = v2->_motionAlarmManager;
    v2->_motionAlarmManager = v3;

    [(CMMotionAlarmManager *)v2->_motionAlarmManager setDelegate:v2];
  }

  return v2;
}

- (void)dealloc
{
  [(SBFMotionAlarmController *)self _unregisterMotionAlarm];
  motionAlarmManager = self->_motionAlarmManager;
  self->_motionAlarmManager = 0;

  objc_storeWeak(&self->_delegate, 0);
  v4.receiver = self;
  v4.super_class = SBFMotionAlarmController;
  [(SBFMotionAlarmController *)&v4 dealloc];
}

- (void)_notifyDelegate
{
  v6 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v3 = SBLogMotionAlarm();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = WeakRetained;
      _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_DEFAULT, "Notifying delegate: %@ of device motion", &v4, 0xCu);
    }

    [WeakRetained didDetectDeviceMotion];
  }
}

- (void)_registerMotionAlarm
{
  v3 = SBLogMotionAlarm();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_DEFAULT, "Registering motion alarms", v4, 2u);
  }

  [(CMMotionAlarmManager *)self->_motionAlarmManager registerAlarmWithName:@"com.apple.SpringBoard.MotionAlarmTypePickUp" type:8 duration:0 repeats:0 error:0];
  [(CMMotionAlarmManager *)self->_motionAlarmManager registerAlarmWithName:@"com.apple.SpringBoard.MotionAlarmTypeMoving" type:1 duration:0 repeats:0 error:0];
}

- (void)_unregisterMotionAlarm
{
  v3 = SBLogMotionAlarm();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BEA11000, v3, OS_LOG_TYPE_DEFAULT, "Unregistering motion alarms", v4, 2u);
  }

  [(CMMotionAlarmManager *)self->_motionAlarmManager unregisterAlarmWithName:@"com.apple.SpringBoard.MotionAlarmTypePickUp" error:0];
  [(CMMotionAlarmManager *)self->_motionAlarmManager unregisterAlarmWithName:@"com.apple.SpringBoard.MotionAlarmTypeMoving" error:0];
}

- (void)alarmDidFire:(id)fire error:(id)error
{
  type = [fire type];
  if (type == 8 || type == 1)
  {
    v6 = SBLogMotionAlarm();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BEA11000, v6, OS_LOG_TYPE_DEFAULT, "Motion alarm detected", v7, 2u);
    }

    [(SBFMotionAlarmController *)self _notifyDelegate];
  }
}

- (void)alarmDidRegister:(id)register error:(id)error
{
  registerCopy = register;
  errorCopy = error;
  v7 = SBLogMotionAlarm();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SBFMotionAlarmController alarmDidRegister:registerCopy error:errorCopy];
  }
}

- (void)alarmDidUnregister:(id)unregister error:(id)error
{
  unregisterCopy = unregister;
  errorCopy = error;
  v7 = SBLogMotionAlarm();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SBFMotionAlarmController alarmDidUnregister:unregisterCopy error:errorCopy];
  }
}

- (SBFMotionAlarmDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)alarmDidRegister:(void *)a1 error:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = [a1 name];
  v4 = [a2 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1BEA11000, v5, v6, "Motion alarm registered: %@, error: %@", v7, v8, v9, v10, v11);
}

- (void)alarmDidUnregister:(void *)a1 error:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = [a1 name];
  v4 = [a2 description];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1BEA11000, v5, v6, "Motion alarm unregistered: %@, error: %@", v7, v8, v9, v10, v11);
}

@end