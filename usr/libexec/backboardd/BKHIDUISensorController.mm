@interface BKHIDUISensorController
+ (id)sharedInstance;
- (BKHIDUISensorController)initWithSensorConfiguration:(id)a3 displayBrightnessController:(id)a4;
- (id)addSensorModeChangeObserver:(id)a3;
- (id)sensorCharacteristics;
- (unint64_t)requestEstimatedProximityEventsWithTimeout:(double)a3 versionedPID:(int64_t)a4;
- (void)_cancelEstimatedProx;
- (void)applySensorMode:(id)a3 requestOrigin:(int64_t)a4;
- (void)proximityDidUnoccludeAfterScreenWake;
- (void)removeModesForVersionedPID:(int64_t)a3;
- (void)requestProximityStatusEventForReason:(id)a3 versionedPID:(int64_t)a4;
- (void)resetCalibration;
@end

@implementation BKHIDUISensorController

+ (id)sharedInstance
{
  if (qword_100125E48 != -1)
  {
    dispatch_once(&qword_100125E48, &stru_1000FACB0);
  }

  v3 = qword_100125E50;

  return v3;
}

- (void)_cancelEstimatedProx
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  sub_100036F34(self);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeModesForVersionedPID:(int64_t)a3
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  sub_100037394(self, a3);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)requestProximityStatusEventForReason:(id)a3 versionedPID:(int64_t)a4
{
  v6 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = v6;
  if (self)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    if ([(BKSHIDUISensorMode *)self->_prevailingMode proximityDetectionMode]!= 5)
    {
      v8 = BKLogUISensor();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v9 = "Ignoring request for status event: we're not locked";
        v10 = buf;
        goto LABEL_21;
      }

      goto LABEL_7;
    }

    if ([(BKSHIDUISensorMode *)self->_prevailingMode estimatedProximityMode])
    {
      v8 = BKLogUISensor();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v21 = 0;
        v9 = "Ignoring request for status event: we're in estimated prox mode";
        v10 = &v21;
LABEL_21:
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
        goto LABEL_7;
      }

      goto LABEL_7;
    }

    if ([(BKSHIDUISensorMode *)self->_prevailingMode displayState]== 3)
    {
      v8 = BKLogUISensor();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v20 = 0;
        v9 = "Ignoring request for status event: display state is .InactiveOn";
        v10 = &v20;
        goto LABEL_21;
      }

LABEL_7:

      goto LABEL_8;
    }

    versionedPIDToClient = self->_versionedPIDToClient;
    v12 = [NSNumber numberWithLongLong:a4];
    v13 = [(NSMutableDictionary *)versionedPIDToClient objectForKeyedSubscript:v12];
    v14 = v13;
    if (v13)
    {
      v13 = v13[1];
    }

    v15 = [v13 copy];

    v16 = [(BKSHIDUISensorMode *)self->_prevailingMode mutableCopy];
    [v16 setPostEventWithCurrentDetectionMask:1];
    v17 = [v16 reason];
    v18 = NSStringFromBSVersionedPID();
    v19 = [v17 stringByAppendingFormat:@" + %@ (pid:%@)", v7, v18];
    [v16 setReason:v19];

    [v16 setVersionedPID:a4];
    sub_100037ABC(self, v16);
    if (v15)
    {
      sub_100037ABC(self, v15);
    }

    else
    {
      sub_100037394(self, a4);
    }
  }

LABEL_8:

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)requestEstimatedProximityEventsWithTimeout:(double)a3 versionedPID:(int64_t)a4
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (!self)
  {
LABEL_32:
    v9 = 0;
    goto LABEL_8;
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if ([(BKSHIDUISensorMode *)self->_prevailingMode proximityDetectionMode]!= 5)
  {
    v7 = BKLogUISensor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "Ignoring request for estimated prox events: we're not locked";
      goto LABEL_24;
    }

LABEL_7:

    v9 = 2;
    goto LABEL_8;
  }

  if ([(BKSHIDUISensorMode *)self->_prevailingMode displayState]== 3)
  {
    v7 = BKLogUISensor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "Ignoring request for estimated prox events: display state is .InactiveOn";
LABEL_24:
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v8, buf, 2u);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v11 = dispatch_time(0, (a3 * 1000000000.0));
  estimatedProxShutoffTimer = self->_estimatedProxShutoffTimer;
  v13 = BKLogUISensor();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (!estimatedProxShutoffTimer)
  {
    if (v14)
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Starting estimated prox timer with timeout %gs", buf, 0xCu);
    }

    if ([(BKHIDUISensorController *)self estimatedProxPowerAssertionID])
    {
      v15 = BKLogUISensor();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v30 = [(BKHIDUISensorController *)self estimatedProxPowerAssertionID];
        *buf = 67109120;
        *&buf[4] = v30;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Trying to enable estimated proximity events, but we already have a power assertion taken out with id: %d", buf, 8u);
      }
    }

    else
    {
      LODWORD(handler[0]) = 0;
      LODWORD(v31[0]) = 1;
      v16 = IOPMAssertionDeclareSystemActivity();
      v17 = BKLogUISensor();
      v18 = v17;
      if (v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "[BKHIDUISensorController _locked_requestEstimatedProximityEventsWithTimeout:versionedPID:]";
          *&buf[12] = 1024;
          *&buf[14] = v16;
          _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s - Unable to take estimated prox power assertion - returned %#x", buf, 0x12u);
        }

        v19 = 0;
      }

      else
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = handler[0];
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Acquired estimated prox power assertion with id: %d", buf, 8u);
        }

        v19 = LODWORD(handler[0]);
      }

      [(BKHIDUISensorController *)self setEstimatedProxPowerAssertionID:v19];
    }

    v20 = sub_1000371D0(self, a4, 1);
    v21 = v20;
    if (v20)
    {
      v22 = *(v20 + 8);
      v23 = v22;
      objc_storeStrong(v21 + 2, v22);
    }

    else
    {
      v23 = 0;
    }

    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100038128;
    v35 = &unk_1000FAD78;
    v36 = v23;
    v37 = a4;
    v24 = v23;
    v25 = [BKSHIDUISensorMode buildModeForReason:@"estimatedProx" builder:buf];
    sub_100037BC8(v21, v25);
    sub_100037458(self, self->_prevailingMode);
    v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
    dispatch_source_set_timer(v26, v11, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000381C4;
    handler[3] = &unk_1000FD128;
    handler[4] = self;
    v27 = v26;
    v33 = v27;
    dispatch_source_set_event_handler(v27, handler);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100038274;
    v31[3] = &unk_1000FD150;
    v31[4] = self;
    dispatch_source_set_cancel_handler(v27, v31);
    v28 = self->_estimatedProxShutoffTimer;
    self->_estimatedProxShutoffTimer = v27;
    v29 = v27;

    dispatch_resume(v29);
    goto LABEL_32;
  }

  if (v14)
  {
    *buf = 134217984;
    *&buf[4] = a3;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Restarting estimated prox timer with timeout %gs", buf, 0xCu);
  }

  dispatch_source_set_timer(self->_estimatedProxShutoffTimer, v11, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  v9 = 1;
LABEL_8:
  os_unfair_lock_unlock(&self->_lock);
  return v9;
}

- (id)addSensorModeChangeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  observerAssertion = self->_observerAssertion;
  if (!observerAssertion)
  {
    v6 = [BSCompoundAssertion assertionWithIdentifier:@"BKUISensor.prox-observers"];
    v7 = self->_observerAssertion;
    self->_observerAssertion = v6;

    observerAssertion = self->_observerAssertion;
  }

  v8 = [objc_opt_class() description];
  v9 = [(BSCompoundAssertion *)observerAssertion acquireForReason:v8 withContext:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)applySensorMode:(id)a3 requestOrigin:(int64_t)a4
{
  v6 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  sub_100037ABC(self, v6);

  if (a4 == 1 && self->_launchTimeLockedMode)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000384B0;
    block[3] = &unk_1000FD150;
    block[4] = self;
    if (qword_100125E58 != -1)
    {
      dispatch_once(&qword_100125E58, block);
    }

    v7 = qword_100125E60;
    sub_100037ABC(self, v7);

    launchTimeLockedMode = self->_launchTimeLockedMode;
    self->_launchTimeLockedMode = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)proximityDidUnoccludeAfterScreenWake
{
  os_unfair_lock_lock(&self->_lock);
  [(BKHIDUISensorConfiguring *)self->_sensor proximityDidUnoccludeAfterScreenWake];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)resetCalibration
{
  os_unfair_lock_lock(&self->_lock);
  [(BKHIDUISensorConfiguring *)self->_sensor resetCalibration];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)sensorCharacteristics
{
  v3 = objc_alloc_init(BKSMutableHIDUISensorCharacteristics);
  [(BKHIDUISensorConfiguring *)self->_sensor updateCharacteristics:v3];

  return v3;
}

- (BKHIDUISensorController)initWithSensorConfiguration:(id)a3 displayBrightnessController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BKHIDUISensorController;
  v9 = [(BKHIDUISensorController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_sensor, a3);
    objc_storeStrong(&v10->_displayBrightnessController, a4);
    v11 = [BKSHIDUISensorMode buildModeForReason:@"backboardd launch" builder:&stru_1000FACF0];
    launchTimeLockedMode = v10->_launchTimeLockedMode;
    v10->_launchTimeLockedMode = v11;

    os_unfair_lock_lock(&v10->_lock);
    sub_100037ABC(v10, v10->_launchTimeLockedMode);
    os_unfair_lock_unlock(&v10->_lock);
  }

  return v10;
}

@end