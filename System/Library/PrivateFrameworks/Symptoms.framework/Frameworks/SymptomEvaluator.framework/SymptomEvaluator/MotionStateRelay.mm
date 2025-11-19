@interface MotionStateRelay
+ (MotionStateRelay)sharedInstance;
- (MotionStateRelay)init;
- (id)deviceOrientationString:(int)a3;
- (id)motionStateString:(unsigned int)a3;
- (void)dealloc;
- (void)destroyEngine;
- (void)initializeEngine;
- (void)setDeviceOrientation:(int)a3;
- (void)startActivityUpdates;
- (void)stopActivityUpdates;
- (void)subscribe;
- (void)unsubscribe;
@end

@implementation MotionStateRelay

+ (MotionStateRelay)sharedInstance
{
  v2 = sharedInstance_2;
  if (!sharedInstance_2)
  {
    if (sharedInstance_singleton != -1)
    {
      +[MotionStateRelay sharedInstance];
    }

    v2 = sharedInstance_2;
  }

  return v2;
}

void __34__MotionStateRelay_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(MotionStateRelay);
  v1 = sharedInstance_2;
  sharedInstance_2 = v0;

  subscribedUsers = 0;
}

- (void)subscribe
{
  if (isMotionActivityAvailable())
  {
    alarmQueue = self->_alarmQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__MotionStateRelay_subscribe__block_invoke;
    block[3] = &unk_27898A0C8;
    block[4] = self;
    dispatch_async(alarmQueue, block);
  }
}

uint64_t __29__MotionStateRelay_subscribe__block_invoke(uint64_t result)
{
  v1 = subscribedUsers;
  if (!subscribedUsers)
  {
    result = [*(result + 32) initializeEngine];
    v1 = subscribedUsers;
  }

  subscribedUsers = v1 + 1;
  return result;
}

- (void)unsubscribe
{
  alarmQueue = self->_alarmQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MotionStateRelay_unsubscribe__block_invoke;
  block[3] = &unk_27898A0C8;
  block[4] = self;
  dispatch_async(alarmQueue, block);
}

uint64_t __31__MotionStateRelay_unsubscribe__block_invoke(uint64_t result)
{
  if (!--subscribedUsers)
  {
    result = [*(result + 32) destroyEngine];
    subscribedUsers = 0;
  }

  return result;
}

- (MotionStateRelay)init
{
  v25 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = MotionStateRelay;
  v2 = [(MotionStateRelay *)&v20 init];
  v3 = v2;
  if (v2)
  {
    v2->_currentMotion = 0;
    v2->_isStationary = 1;
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v5 = dispatch_queue_create("com.apple.symptomsd.motion", v4);
    alarmQueue = v3->_alarmQueue;
    v3->_alarmQueue = v5;

    v7 = objc_alloc_init(MEMORY[0x277CCABD8]);
    alarmOperationQueue = v3->_alarmOperationQueue;
    v3->_alarmOperationQueue = v7;

    [(NSOperationQueue *)v3->_alarmOperationQueue setName:@"MotionActivityQueue"];
    [(NSOperationQueue *)v3->_alarmOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v3->_alarmOperationQueue setUnderlyingQueue:v3->_alarmQueue];
    v9 = v3->_alarmQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __24__MotionStateRelay_init__block_invoke;
    handler[3] = &unk_27898B048;
    v10 = v3;
    v19 = v10;
    notify_register_dispatch("com.apple.backboardd.rawOrientation", &v3->deviceOrientationStateToken, v9, handler);
    v17 = 0;
    notify_get_state(v3->deviceOrientationStateToken, &v17);
    [(MotionStateRelay *)v10 setDeviceOrientation:v17];
    v11 = motionLogHandle;
    if (os_log_type_enabled(motionLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(MotionStateRelay *)v10 deviceOrientationString:[(MotionStateRelay *)v10 deviceOrientation]];
      v14 = [(MotionStateRelay *)v10 deviceOrientation];
      *buf = 138412546;
      v22 = v13;
      v23 = 1024;
      v24 = v14;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Initial Device orientation %@ (%u)", buf, 0x12u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t __24__MotionStateRelay_init__block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  notify_get_state(token, &state64);
  return [*(a1 + 32) setDeviceOrientation:state64];
}

- (void)dealloc
{
  [(MotionStateRelay *)self stopMotionMonitoring];
  v3.receiver = self;
  v3.super_class = MotionStateRelay;
  [(MotionStateRelay *)&v3 dealloc];
}

- (void)setDeviceOrientation:(int)a3
{
  if (self->_deviceOrientation != a3)
  {
    [(MotionStateRelay *)self willChangeValueForKey:@"deviceOrientation"];
    self->_deviceOrientation = a3;

    [(MotionStateRelay *)self didChangeValueForKey:@"deviceOrientation"];
  }
}

- (void)initializeEngine
{
  *&self->_isStationary = 1;
  self->_currentMotion = 0;
  if (isMotionActivityAvailable())
  {

    [(MotionStateRelay *)self startMotionMonitoring];
  }
}

- (void)destroyEngine
{
  [(MotionStateRelay *)self stopMotionMonitoring];
  self->_currentMotion = 0;
  *&self->_isStationary = 1;
}

- (id)motionStateString:(unsigned int)a3
{
  if (a3 > 5)
  {
    return @"???";
  }

  else
  {
    return off_27898CC40[a3];
  }
}

- (id)deviceOrientationString:(int)a3
{
  if ((a3 - 1) > 6)
  {
    return @"Unknown_Ambiguous";
  }

  else
  {
    return off_27898CC70[a3 - 1];
  }
}

- (void)startActivityUpdates
{
  activityManager = self->_activityManager;
  if (!activityManager)
  {
    v4 = objc_alloc_init(cmMotionActivityManagerClass);
    v5 = self->_activityManager;
    self->_activityManager = v4;

    activityManager = self->_activityManager;
  }

  alarmOperationQueue = self->_alarmOperationQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__MotionStateRelay_startActivityUpdates__block_invoke;
  v7[3] = &unk_27898CC20;
  v7[4] = self;
  [(CMMotionActivityManager *)activityManager startActivityUpdatesToQueue:alarmOperationQueue withHandler:v7];
}

uint64_t __40__MotionStateRelay_startActivityUpdates__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 24);
  v23 = v3;
  if ((v4 - 2) < 4)
  {
    if (([v3 stationary] & 1) == 0 && ((objc_msgSend(v23, "walking") & 1) != 0 || (objc_msgSend(v23, "running") & 1) != 0 || (objc_msgSend(v23, "cycling") & 1) != 0 || objc_msgSend(v23, "automotive")))
    {
      v5 = [v23 walking];
      v6 = v23;
      if (v5 && *(*(a1 + 32) + 24) == 3)
      {
        goto LABEL_98;
      }

      v5 = [v23 running];
      v6 = v23;
      if (v5)
      {
        if (*(*(a1 + 32) + 24) == 4)
        {
          goto LABEL_98;
        }
      }

      v5 = [v23 cycling];
      v6 = v23;
      if ((v5 & 1) != 0 || (v5 = [v23 automotive], v6 = v23, v5))
      {
        if (*(*(a1 + 32) + 24) == 5)
        {
          goto LABEL_98;
        }
      }

      if ([v6 confidence] < 2)
      {
        v11 = time(0);
        v13 = [v23 confidence];
        v5 = [v23 walking];
        if (v13 == 1)
        {
          if (v5)
          {
            goto LABEL_41;
          }

          v5 = [v23 running];
          if (v5)
          {
            goto LABEL_72;
          }

          v5 = [v23 cycling];
          if ((v5 & 1) != 0 || (v5 = [v23 automotive], v6 = v23, v5))
          {
            if (v11 - startActivityUpdates_vehicularMedConfidenceTimestamp <= 29)
            {
              goto LABEL_85;
            }

            goto LABEL_26;
          }

          goto LABEL_98;
        }

        if (!v5)
        {
          v5 = [v23 running];
          if (!v5)
          {
            v5 = [v23 cycling];
            if ((v5 & 1) == 0)
            {
              v5 = [v23 automotive];
              v6 = v23;
              if (!v5)
              {
                goto LABEL_98;
              }
            }

            v16 = startActivityUpdates_vehicularLowSecondConfidenceTimestamp;
            v17 = v11 - startActivityUpdates_vehicularLowSecondConfidenceTimestamp;
            if (v11 - startActivityUpdates_vehicularLowFirstConfidenceTimestamp <= 29)
            {
              if (v17 > 29)
              {
                goto LABEL_104;
              }

LABEL_95:
              v5 = [*(a1 + 32) transitionToState:5];
              startActivityUpdates_vehicularLowSecondConfidenceTimestamp = 0;
              startActivityUpdates_vehicularLowFirstConfidenceTimestamp = 0;
              goto LABEL_96;
            }

            if (v17 <= 29)
            {
              goto LABEL_103;
            }

            goto LABEL_106;
          }

          goto LABEL_79;
        }

        goto LABEL_68;
      }

      goto LABEL_52;
    }

    v5 = [v23 stationary];
    v6 = v23;
    if (!v5)
    {
      goto LABEL_98;
    }

    v5 = [v23 walking];
    v6 = v23;
    if (v5)
    {
      goto LABEL_98;
    }

    v5 = [v23 running];
    v6 = v23;
    if (v5)
    {
      goto LABEL_98;
    }

    v5 = [v23 cycling];
    v6 = v23;
    if (v5)
    {
      goto LABEL_98;
    }

    v5 = [v23 automotive];
    v6 = v23;
    if (v5)
    {
      goto LABEL_98;
    }

    v5 = [v23 unknown];
    v6 = v23;
    if (v5)
    {
      goto LABEL_98;
    }

    if ([v23 confidence] < 2)
    {
      v7 = time(0);
      v5 = [v23 confidence];
      if (v5 == 1)
      {
        if (v7 - startActivityUpdates_stationaryMedConfidenceTimestamp > 29)
        {
          startActivityUpdates_stationaryMedConfidenceTimestamp = v7;
          goto LABEL_97;
        }

        v5 = [*(a1 + 32) transitionToState:1];
        startActivityUpdates_stationaryMedConfidenceTimestamp = 0;
        goto LABEL_110;
      }

      v21 = v7 - startActivityUpdates_stationaryLowSecondConfidenceTimestamp;
      if (v7 - startActivityUpdates_stationaryLowFirstConfidenceTimestamp > 29)
      {
        if (v21 > 29)
        {
          startActivityUpdates_stationaryLowFirstConfidenceTimestamp = v7;
          startActivityUpdates_stationaryLowSecondConfidenceTimestamp = 0;
          goto LABEL_97;
        }

        startActivityUpdates_stationaryLowFirstConfidenceTimestamp = startActivityUpdates_stationaryLowSecondConfidenceTimestamp;
      }

      else if (v21 <= 29)
      {
        v5 = [*(a1 + 32) transitionToState:1];
        startActivityUpdates_stationaryLowSecondConfidenceTimestamp = 0;
        startActivityUpdates_stationaryLowFirstConfidenceTimestamp = 0;
LABEL_110:
        startActivityUpdates_vehicularMedConfidenceTimestamp = 0;
        startActivityUpdates_vehicularLowSecondConfidenceTimestamp = 0;
        startActivityUpdates_vehicularLowFirstConfidenceTimestamp = 0;
        startActivityUpdates_runningMedConfidenceTimestamp = 0;
        startActivityUpdates_runningLowSecondConfidenceTimestamp = 0;
        startActivityUpdates_runningLowFirstConfidenceTimestamp = 0;
        startActivityUpdates_walkingMedConfidenceTimestamp = 0;
        startActivityUpdates_walkingLowSecondConfidenceTimestamp = 0;
        startActivityUpdates_walkingLowFirstConfidenceTimestamp = 0;
        goto LABEL_97;
      }

      startActivityUpdates_stationaryLowSecondConfidenceTimestamp = v7;
      goto LABEL_97;
    }

LABEL_51:
    v14 = *(a1 + 32);
    v15 = 1;
    goto LABEL_59;
  }

  if (v4 != 1)
  {
    if ([v3 stationary] & 1) != 0 || (objc_msgSend(v23, "unknown"))
    {
      v5 = [v23 stationary];
      v6 = v23;
      if (!v5)
      {
        goto LABEL_98;
      }

      v5 = [v23 walking];
      v6 = v23;
      if (v5)
      {
        goto LABEL_98;
      }

      v5 = [v23 running];
      v6 = v23;
      if (v5)
      {
        goto LABEL_98;
      }

      v5 = [v23 cycling];
      v6 = v23;
      if (v5)
      {
        goto LABEL_98;
      }

      v5 = [v23 automotive];
      v6 = v23;
      if (v5)
      {
        goto LABEL_98;
      }

      v5 = [v23 unknown];
      v6 = v23;
      if (v5)
      {
        goto LABEL_98;
      }

      goto LABEL_51;
    }

LABEL_52:
    if ([v23 walking])
    {
      v14 = *(a1 + 32);
      v15 = 3;
    }

    else if ([v23 running])
    {
      v14 = *(a1 + 32);
      v15 = 4;
    }

    else
    {
      if (([v23 cycling] & 1) == 0)
      {
        v5 = [v23 automotive];
        v6 = v23;
        if (!v5)
        {
          goto LABEL_98;
        }
      }

      v14 = *(a1 + 32);
      v15 = 5;
    }

LABEL_59:
    v5 = [v14 transitionToState:v15];
    goto LABEL_97;
  }

  v5 = [v3 stationary];
  v6 = v23;
  if (v5)
  {
    goto LABEL_98;
  }

  v8 = [v23 walking];
  v6 = v23;
  if ((v8 & 1) == 0)
  {
    v9 = [v23 running];
    v6 = v23;
    if ((v9 & 1) == 0)
    {
      v10 = [v23 cycling];
      v6 = v23;
      if ((v10 & 1) == 0)
      {
        v5 = [v23 automotive];
        v6 = v23;
        if (!v5)
        {
          goto LABEL_98;
        }
      }
    }
  }

  if ([v6 confidence] >= 2)
  {
    goto LABEL_52;
  }

  v11 = time(0);
  v12 = [v23 confidence];
  v5 = [v23 walking];
  if (v12 != 1)
  {
    if (!v5)
    {
      v5 = [v23 running];
      if (!v5)
      {
        v5 = [v23 cycling];
        if ((v5 & 1) == 0)
        {
          v5 = [v23 automotive];
          v6 = v23;
          if (!v5)
          {
            goto LABEL_98;
          }
        }

        v16 = startActivityUpdates_vehicularLowSecondConfidenceTimestamp;
        v20 = v11 - startActivityUpdates_vehicularLowSecondConfidenceTimestamp;
        if (v11 - startActivityUpdates_vehicularLowFirstConfidenceTimestamp <= 59)
        {
          if (v20 <= 59)
          {
            goto LABEL_95;
          }

LABEL_104:
          startActivityUpdates_vehicularLowSecondConfidenceTimestamp = v11;
          goto LABEL_97;
        }

        if (v20 <= 59)
        {
LABEL_103:
          startActivityUpdates_vehicularLowFirstConfidenceTimestamp = v16;
          goto LABEL_104;
        }

LABEL_106:
        startActivityUpdates_vehicularLowFirstConfidenceTimestamp = v11;
        startActivityUpdates_vehicularLowSecondConfidenceTimestamp = 0;
        goto LABEL_97;
      }

LABEL_79:
      v19 = v11 - startActivityUpdates_runningLowSecondConfidenceTimestamp;
      if (v11 - startActivityUpdates_runningLowFirstConfidenceTimestamp > 29)
      {
        if (v19 > 29)
        {
          startActivityUpdates_runningLowFirstConfidenceTimestamp = v11;
          startActivityUpdates_runningLowSecondConfidenceTimestamp = 0;
          goto LABEL_97;
        }

        startActivityUpdates_runningLowFirstConfidenceTimestamp = startActivityUpdates_runningLowSecondConfidenceTimestamp;
      }

      else if (v19 <= 29)
      {
        v5 = [*(a1 + 32) transitionToState:4];
        startActivityUpdates_runningLowSecondConfidenceTimestamp = 0;
        startActivityUpdates_runningLowFirstConfidenceTimestamp = 0;
        goto LABEL_96;
      }

      startActivityUpdates_runningLowSecondConfidenceTimestamp = v11;
      goto LABEL_97;
    }

LABEL_68:
    v18 = v11 - startActivityUpdates_walkingLowSecondConfidenceTimestamp;
    if (v11 - startActivityUpdates_walkingLowFirstConfidenceTimestamp > 29)
    {
      if (v18 > 29)
      {
        startActivityUpdates_walkingLowFirstConfidenceTimestamp = v11;
        startActivityUpdates_walkingLowSecondConfidenceTimestamp = 0;
        goto LABEL_97;
      }

      startActivityUpdates_walkingLowFirstConfidenceTimestamp = startActivityUpdates_walkingLowSecondConfidenceTimestamp;
    }

    else if (v18 <= 29)
    {
      v5 = [*(a1 + 32) transitionToState:3];
      startActivityUpdates_walkingLowSecondConfidenceTimestamp = 0;
      startActivityUpdates_walkingLowFirstConfidenceTimestamp = 0;
      goto LABEL_96;
    }

    startActivityUpdates_walkingLowSecondConfidenceTimestamp = v11;
LABEL_97:
    v6 = v23;
    goto LABEL_98;
  }

  if (v5)
  {
LABEL_41:
    if (v11 - startActivityUpdates_walkingMedConfidenceTimestamp <= 29)
    {
      v5 = [*(a1 + 32) transitionToState:3];
      startActivityUpdates_walkingMedConfidenceTimestamp = 0;
LABEL_96:
      startActivityUpdates_stationaryMedConfidenceTimestamp = 0;
      startActivityUpdates_stationaryLowSecondConfidenceTimestamp = 0;
      startActivityUpdates_stationaryLowFirstConfidenceTimestamp = 0;
      goto LABEL_97;
    }

    startActivityUpdates_walkingMedConfidenceTimestamp = v11;
    goto LABEL_97;
  }

  v5 = [v23 running];
  if (v5)
  {
LABEL_72:
    if (v11 - startActivityUpdates_runningMedConfidenceTimestamp <= 29)
    {
      v5 = [*(a1 + 32) transitionToState:4];
      startActivityUpdates_runningMedConfidenceTimestamp = 0;
      goto LABEL_96;
    }

    startActivityUpdates_runningMedConfidenceTimestamp = v11;
    goto LABEL_97;
  }

  v5 = [v23 cycling];
  if ((v5 & 1) != 0 || (v5 = [v23 automotive], v6 = v23, v5))
  {
    if (v11 - startActivityUpdates_vehicularMedConfidenceTimestamp <= 59)
    {
LABEL_85:
      v5 = [*(a1 + 32) transitionToState:5];
      startActivityUpdates_vehicularMedConfidenceTimestamp = 0;
      goto LABEL_96;
    }

LABEL_26:
    startActivityUpdates_vehicularMedConfidenceTimestamp = v11;
    goto LABEL_97;
  }

LABEL_98:

  return MEMORY[0x2821F96F8](v5, v6);
}

- (void)stopActivityUpdates
{
  activityManager = self->_activityManager;
  if (activityManager)
  {
    [(CMMotionActivityManager *)activityManager stopActivityUpdates];
  }
}

@end