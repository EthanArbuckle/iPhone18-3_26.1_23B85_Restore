@interface SRWorkoutObserver
- (SRWorkoutObserver)init;
- (void)_startHKWorkoutObserver;
- (void)_startWorkoutStartedTimer:(unint64_t)timer;
- (void)didUpdateWorkoutSnapshot:(id)snapshot;
- (void)updateWithSnapshot:(id)snapshot;
- (void)workoutStateChanged:(BOOL)changed;
@end

@implementation SRWorkoutObserver

- (SRWorkoutObserver)init
{
  v8.receiver = self;
  v8.super_class = SRWorkoutObserver;
  v2 = [(SRWorkoutObserver *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("SRWorkoutObserver", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    [(SRWorkoutObserver *)v2 _startHKWorkoutObserver];
    v6 = v2;
  }

  return v2;
}

- (void)_startHKWorkoutObserver
{
  v3 = [_HKWorkoutObserver alloc];
  v4 = objc_opt_new();
  v5 = [v3 initWithHealthStore:v4];
  [(SRWorkoutObserver *)self setHkWorkoutObserver:v5];

  hkWorkoutObserver = [(SRWorkoutObserver *)self hkWorkoutObserver];
  [hkWorkoutObserver setDelegate:self];

  hkWorkoutObserver2 = [(SRWorkoutObserver *)self hkWorkoutObserver];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000DB760;
  v8[3] = &unk_1002BB678;
  v8[4] = self;
  [hkWorkoutObserver2 currentWorkoutSnapshotWithCompletion:v8];
}

- (void)_startWorkoutStartedTimer:(unint64_t)timer
{
  if (!self->_workoutStartedTimer)
  {
    handler[9] = v3;
    handler[10] = v4;
    if (dword_1002F75A0 <= 30 && (dword_1002F75A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FB8B0();
    }

    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    workoutStartedTimer = self->_workoutStartedTimer;
    self->_workoutStartedTimer = v6;
    v8 = v6;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000DB940;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    CUDispatchTimerSet();
    dispatch_activate(v8);
  }
}

- (void)updateWithSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  sessionIdentifier = [snapshotCopy sessionIdentifier];
  if ([snapshotCopy sessionType] == 1)
  {
    sub_1001FB954();
  }

  else
  {
    internalState = [snapshotCopy internalState];
    if ((internalState - 4) >= 4)
    {
      if ((internalState - 11) < 3 && [sessionIdentifier isEqual:self->_currentWorkoutSessionIdentifier])
      {
        if (dword_1002F75A0 <= 30 && (dword_1002F75A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001FB8F0();
        }

        [(SRWorkoutObserver *)self workoutStateChanged:0];
        currentWorkoutName = self->_currentWorkoutName;
        self->_currentWorkoutName = 0;

        currentWorkoutSessionIdentifier = self->_currentWorkoutSessionIdentifier;
        self->_currentWorkoutSessionIdentifier = 0;
      }
    }

    else
    {
      p_currentWorkoutSessionIdentifier = &self->_currentWorkoutSessionIdentifier;
      if (!self->_currentWorkoutSessionIdentifier || ([sessionIdentifier isEqual:?] & 1) == 0)
      {
        [(SRWorkoutObserver *)self workoutStateChanged:1];
        configuration = [snapshotCopy configuration];
        [configuration activityType];
        v8 = _HKWorkoutActivityNameForActivityType();
        v10 = self->_currentWorkoutName;
        p_currentWorkoutName = &self->_currentWorkoutName;
        *p_currentWorkoutName = v8;

        sessionIdentifier2 = [snapshotCopy sessionIdentifier];
        v12 = *(p_currentWorkoutName - 1);
        *(p_currentWorkoutName - 1) = sessionIdentifier2;

        if (dword_1002F75A0 <= 30 && (dword_1002F75A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001FB90C(p_currentWorkoutName, p_currentWorkoutSessionIdentifier);
        }
      }
    }
  }
}

- (void)workoutStateChanged:(BOOL)changed
{
  if (self->_isWorkoutActive == changed)
  {
    return;
  }

  if (dword_1002F75A0 <= 30)
  {
    if (dword_1002F75A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      isWorkoutActive = self->_isWorkoutActive;
    }

    LogPrintF();
  }

LABEL_6:
  self->_isWorkoutActive = changed;
  v5 = objc_initWeak(&location, self);
  workoutStateChangedHandler = [(SRWorkoutObserver *)self workoutStateChangedHandler];

  if (workoutStateChangedHandler)
  {
    if (dword_1002F75A0 <= 30 && (dword_1002F75A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = objc_loadWeakRetained(&location);
    workoutStateChangedHandler2 = [v7 workoutStateChangedHandler];
    workoutStateChangedHandler2[2](workoutStateChangedHandler2, v9);
  }

  objc_destroyWeak(&location);
}

- (void)didUpdateWorkoutSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DBD7C;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = snapshotCopy;
  v6 = snapshotCopy;
  dispatch_async(dispatchQueue, v7);
}

@end