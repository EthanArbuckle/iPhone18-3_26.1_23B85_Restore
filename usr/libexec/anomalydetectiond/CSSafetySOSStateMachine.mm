@interface CSSafetySOSStateMachine
- (BOOL)notifySOStoAOP;
- (CSSafetySOSStateMachine)initWithSilo:(id)a3 vendor:(id)a4 client:(id)a5 aopService:(void *)a6;
- (void)clearAll;
- (void)dealloc;
- (void)feedCompanionDetected;
- (void)feedDetectionDecision:(BOOL)a3 uuid:(id)a4 forMode:(unsigned __int8)a5;
- (void)feedPotentialEventWithTimestamp:(unint64_t)a3 forMode:(unsigned __int8)a4 martyIsBicycle:(BOOL)a5;
- (void)notifyCompanionOfSafetyEventType:(int)a3;
- (void)notifySOSDaemon;
- (void)onCompanionMessage:(int)a3 data:(id)a4 receivedTimestamp:(double)a5;
- (void)resetAllPersistedValues;
- (void)startTimer:(double)a3;
- (void)stopTimer;
- (void)updateCompanionUUID:(id)a3;
- (void)updateLocalUUID:(id)a3;
- (void)updatedSOSKappaStatus:(id)a3;
@end

@implementation CSSafetySOSStateMachine

- (CSSafetySOSStateMachine)initWithSilo:(id)a3 vendor:(id)a4 client:(id)a5 aopService:(void *)a6
{
  v82 = a3;
  v81 = a4;
  v80 = a5;
  if (qword_100456948 != -1)
  {
    sub_1002EFAAC();
  }

  v10 = qword_100456950;
  if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "beginService SM", buf, 2u);
  }

  self->_valid = 1;
  objc_storeStrong(&self->_client, a5);
  objc_storeStrong(&self->_vendor, a4);
  self->_aopSvc = a6;
  v11 = [v81 proxyForService:@"CSCompanionService"];
  companion = self->_companion;
  self->_companion = v11;

  [(CSCompanionServiceProtocol *)self->_companion registerDelegate:self inSilo:v82];
  [(CSCompanionServiceProtocol *)self->_companion registerClient:self];
  v13 = objc_initWeak(&location, self);
  v14 = [v82 newTimer];
  timer = self->_timer;
  self->_timer = v14;

  v93[0] = _NSConcreteStackBlock;
  v93[1] = 3221225472;
  v93[2] = sub_1002EDE50;
  v93[3] = &unk_100431708;
  v16 = self;
  v94 = v16;
  [(CLTimer *)self->_timer setHandler:v93];
  v17 = +[SOSKappaManager sharedInstance];
  [v17 addObserver:v16];

  v91[0] = _NSConcreteStackBlock;
  v91[1] = 3221225472;
  v91[2] = sub_1002EDEE4;
  v91[3] = &unk_1004316E0;
  v18 = v16;
  v92 = v18;
  v19 = objc_retainBlock(v91);
  p_idleState = &v18->_idleState;
  idleState = v18->_idleState;
  v18->_idleState = v19;

  v89[0] = _NSConcreteStackBlock;
  v89[1] = 3221225472;
  v89[2] = sub_1002EDF6C;
  v89[3] = &unk_1004316E0;
  v22 = v18;
  v90 = v22;
  v23 = objc_retainBlock(v89);
  potentialCrashState = v22->_potentialCrashState;
  v22->_potentialCrashState = v23;

  v87[0] = _NSConcreteStackBlock;
  v87[1] = 3221225472;
  v87[2] = sub_1002EE02C;
  v87[3] = &unk_1004316E0;
  v25 = v22;
  v88 = v25;
  v26 = objc_retainBlock(v87);
  crashStagingState = v25->_crashStagingState;
  v25->_crashStagingState = v26;

  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_1002EE290;
  v85[3] = &unk_1004316E0;
  v28 = v25;
  v86 = v28;
  v29 = objc_retainBlock(v85);
  p_notifyingCompanionState = &v28->_notifyingCompanionState;
  notifyingCompanionState = v28->_notifyingCompanionState;
  v28->_notifyingCompanionState = v29;

  v83[0] = _NSConcreteStackBlock;
  v83[1] = 3221225472;
  v83[2] = sub_1002EE340;
  v83[3] = &unk_1004316E0;
  v32 = v28;
  v84 = v32;
  v33 = objc_retainBlock(v83);
  crashProcessingState = v32->_crashProcessingState;
  v32->_crashProcessingState = v33;

  v35 = +[NSUserDefaults standardUserDefaults];
  defaults = v32->_defaults;
  v32->_defaults = v35;

  [(NSUserDefaults *)v32->_defaults removeObjectForKey:kSOSEventKey];
  v37 = +[CSPersistentConfiguration sharedConfiguration];
  v38 = [v37 BOOLForKey:@"ActiveKappaDecision"];

  v39 = +[CSPersistentConfiguration sharedConfiguration];
  v78 = [v39 BOOLForKey:@"WaitingForSOSAck"];

  v40 = [NSUUID alloc];
  v41 = +[CSPersistentConfiguration sharedConfiguration];
  v42 = [v41 objectForKey:@"KappaSOSUUID"];
  v43 = [v40 initWithUUIDString:v42];

  if (v38)
  {
    v44 = +[SOSKappaManager currentSOSStatus];
    [v44 uuid];
    v79 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    if (qword_100456948 != -1)
    {
      sub_1002EFAC0();
    }

    v45 = qword_100456950;
    if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *v97 = v43;
      *&v97[8] = 2112;
      v98 = v79;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "Start - SOS UUID: lastReceivedSOSUUID: %@, currentSOSUUID: %@", buf, 0x16u);
    }

    if ([*&v79 isEqual:v43])
    {
      v46 = +[CSPersistentConfiguration sharedConfiguration];
      [v46 doubleForKey:@"KappaLocalTimestamp"];
      v32->_localDecisionTimestamp = v47;

      v48 = +[CSPersistentConfiguration sharedConfiguration];
      [v48 doubleForKey:@"KappaExpirationTimestamp"];
      v50 = v49;

      localDecisionTimestamp = v32->_localDecisionTimestamp;
      if (localDecisionTimestamp >= CFAbsoluteTimeGetCurrent() || CFAbsoluteTimeGetCurrent() >= v50)
      {
        if (qword_100456948 != -1)
        {
          sub_1002EFAC0();
        }

        v64 = qword_100456950;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          Current = CFAbsoluteTimeGetCurrent();
          *buf = 134218240;
          *v97 = v50;
          *&v97[8] = 2048;
          v98 = Current;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "Recovered expired crash, discarding. expirationTime:%f, currentTime:%f", buf, 0x16u);
        }

        [(CSSafetySOSStateMachine *)v32 resetAllPersistedValues];
      }

      else
      {
        if (qword_100456948 != -1)
        {
          sub_1002EFAC0();
        }

        v52 = qword_100456950;
        if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_INFO))
        {
          v53 = v32->_localDecisionTimestamp;
          *buf = 134217984;
          *v97 = v53;
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Recovered valid crash, crashDecisionTimestamp:%f", buf, 0xCu);
        }

        v32->_sendUnprocessedCrash = 1;
        v32->_localShouldSend = 1;
        v54 = [NSUUID alloc];
        v55 = +[CSPersistentConfiguration sharedConfiguration];
        v56 = [v55 objectForKey:@"KappaLocalUUID"];
        v57 = [v54 initWithUUIDString:v56];
        localTriggerUUID = v32->_localTriggerUUID;
        v32->_localTriggerUUID = v57;

        v59 = [NSUUID alloc];
        v60 = +[CSPersistentConfiguration sharedConfiguration];
        v61 = [v60 objectForKey:@"KappaCompanionUUID"];
        v62 = [v59 initWithUUIDString:v61];
        companionTriggerUUID = v32->_companionTriggerUUID;
        v32->_companionTriggerUUID = v62;

        [(CSSafetySOSStateMachineClientProtocol *)self->_client didInitWithUnprocessedCrash:v32->_localTriggerUUID withCompanionUUID:v32->_companionTriggerUUID];
      }
    }
  }

  else
  {
    v32->_sendUnprocessedCrash = 0;
  }

  if (qword_100456948 != -1)
  {
    sub_1002EFAC0();
  }

  v66 = qword_100456950;
  if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_DEBUG))
  {
    sendUnprocessedCrash = v32->_sendUnprocessedCrash;
    v69 = v32->_companionTriggerUUID;
    v68 = v32->_localDecisionTimestamp;
    v70 = v32->_localTriggerUUID;
    *buf = 67110402;
    *v97 = v38;
    *&v97[4] = 1024;
    *&v97[6] = v78;
    LOWORD(v98) = 1024;
    *(&v98 + 2) = sendUnprocessedCrash;
    HIWORD(v98) = 2112;
    v99 = v70;
    v100 = 2048;
    v101 = v68;
    v102 = 2112;
    v103 = v69;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEBUG, "activeKappaDecision:%d, waitingForSOSAck:%d, _sendUnprocessedCrash:%d, localUUID:%@, localDecisionTimestamp:%f, companionUUID:%@", buf, 0x32u);
  }

  v71 = [CSHSMObjc alloc];
  if (qword_100456948 != -1)
  {
    sub_1002EFAC0();
  }

  v72 = qword_100456950;
  if (v32->_sendUnprocessedCrash)
  {
    v73 = p_notifyingCompanionState;
  }

  else
  {
    v73 = p_idleState;
  }

  v74 = [(CSHSMObjc *)v71 initWithCategory:v72 state:*v73];
  hsm = v32->_hsm;
  v32->_hsm = v74;

  v76 = v32;
  objc_destroyWeak(&location);

  return v76;
}

- (void)dealloc
{
  v3 = +[SOSKappaManager sharedInstance];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSSafetySOSStateMachine;
  [(CSSafetySOSStateMachine *)&v4 dealloc];
}

- (void)startTimer:(double)a3
{
  if (qword_100456948 != -1)
  {
    sub_1002EFAAC();
  }

  v5 = qword_100456950;
  if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "startTimer", v6, 2u);
  }

  [(CLTimer *)self->_timer setNextFireDelay:a3 interval:1.79769313e308];
}

- (void)stopTimer
{
  if (qword_100456948 != -1)
  {
    sub_1002EFAAC();
  }

  v3 = qword_100456950;
  if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "stopTimer", v4, 2u);
  }

  [(CLTimer *)self->_timer setNextFireDelay:1.79769313e308 interval:1.79769313e308];
}

- (void)updateLocalUUID:(id)a3
{
  v4 = a3;
  if (qword_100456948 != -1)
  {
    sub_1002EFAAC();
  }

  v5 = qword_100456950;
  if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_DEBUG))
  {
    v22 = 138412290;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "updateLocalUUID with %@", &v22, 0xCu);
  }

  if (self->_localTriggerUUID)
  {
    if (qword_100456948 != -1)
    {
      sub_1002EFAC0();
    }

    v6 = qword_100456950;
    if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Overwriting previous UUID", &v22, 2u);
    }
  }

  if (!v4)
  {
    if (qword_100456948 != -1)
    {
      sub_1002EFAC0();
    }

    v7 = qword_100456950;
    if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "UUID is nil in updateLocalUUID", &v22, 2u);
    }
  }

  if (qword_100456948 != -1)
  {
    sub_1002EFAC0();
  }

  v8 = qword_100456950;
  if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_DEBUG))
  {
    localTriggerUUID = self->_localTriggerUUID;
    v22 = 138412546;
    v23 = v4;
    v24 = 2112;
    v25 = localTriggerUUID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "UUID new: %@ prev: %@", &v22, 0x16u);
  }

  v10 = [NSUUID alloc];
  v11 = [v4 UUIDString];
  v12 = [v10 initWithUUIDString:v11];
  v13 = self->_localTriggerUUID;
  self->_localTriggerUUID = v12;

  self->_localDecisionTimestamp = CFAbsoluteTimeGetCurrent();
  v14 = +[CSPersistentConfiguration sharedConfiguration];
  v15 = [v14 objectForKey:@"KappaExpirationPeriod"];

  v16 = +[CSPersistentConfiguration sharedConfiguration];
  [v16 doubleForKey:@"KappaExpirationPeriod"];
  v18 = v17;

  localDecisionTimestamp = self->_localDecisionTimestamp;
  if (!v15)
  {
    v18 = 3600.0;
  }

  defaults = self->_defaults;
  v21 = [(NSUUID *)self->_localTriggerUUID UUIDString];
  [(NSUserDefaults *)defaults setObject:v21 forKey:@"KappaLocalUUID"];

  [(NSUserDefaults *)self->_defaults setDouble:@"KappaLocalTimestamp" forKey:self->_localDecisionTimestamp];
  [(NSUserDefaults *)self->_defaults setDouble:@"KappaExpirationTimestamp" forKey:v18 + localDecisionTimestamp];
}

- (void)updateCompanionUUID:(id)a3
{
  v4 = a3;
  if (qword_100456948 != -1)
  {
    sub_1002EFAAC();
  }

  v5 = qword_100456950;
  if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "updateCompanionUUID with %@", &v17, 0xCu);
  }

  if (self->_companionTriggerUUID)
  {
    if (qword_100456948 != -1)
    {
      sub_1002EFAC0();
    }

    v6 = qword_100456950;
    if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Overwriting previous companion UUID", &v17, 2u);
    }
  }

  if (!v4)
  {
    if (qword_100456948 != -1)
    {
      sub_1002EFAC0();
    }

    v7 = qword_100456950;
    if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Companion UUID is nil in updateCompanionUUID", &v17, 2u);
    }
  }

  if (qword_100456948 != -1)
  {
    sub_1002EFAC0();
  }

  v8 = qword_100456950;
  if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_DEBUG))
  {
    companionTriggerUUID = self->_companionTriggerUUID;
    v17 = 138412546;
    v18 = v4;
    v19 = 2112;
    v20 = companionTriggerUUID;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "CompanionUUID new: %@ prev: %@", &v17, 0x16u);
  }

  v10 = [NSUUID alloc];
  v11 = [v4 UUIDString];
  v12 = [v10 initWithUUIDString:v11];
  p_companionTriggerUUID = &self->_companionTriggerUUID;
  v13 = self->_companionTriggerUUID;
  self->_companionTriggerUUID = v12;

  defaults = self->_defaults;
  v16 = [(NSUUID *)*p_companionTriggerUUID UUIDString];
  [(NSUserDefaults *)defaults setObject:v16 forKey:@"KappaCompanionUUID"];
}

- (void)notifySOSDaemon
{
  p_defaults = &self->_defaults;
  [(NSUserDefaults *)self->_defaults setBool:1 forKey:@"WaitingForSOSAck"];
  v4 = [(NSUserDefaults *)*p_defaults objectForKey:@"SimulateCrashProbability"];

  if (v4)
  {
    [(NSUserDefaults *)*p_defaults doubleForKey:@"SimulateCrashProbability"];
    if (drand48() < v5)
    {
      v7 = sub_1002EFAE8(p_defaults);
      objc_destroyWeak(v4 + 5);

      objc_destroyWeak(&location);
      _Unwind_Resume(v7);
    }
  }

  objc_initWeak(&location, self);
  v6 = +[SOSKappaManager sharedInstance];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002EED54;
  v8[3] = &unk_1004325F8;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  [v6 triggerKappaWithCompletion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)notifyCompanionOfSafetyEventType:(int)a3
{
  if ((a3 - 3) > 0xFFFFFFFD)
  {
    v7[0] = a3;
    v6 = sub_1000190FC(v7);
    [(CSCompanionServiceProtocol *)self->_companion sendData:v6 type:400];
  }

  else
  {
    if (qword_100456868 != -1)
    {
      sub_1002EFC70();
    }

    v4 = qword_100456870;
    if (os_log_type_enabled(qword_100456870, OS_LOG_TYPE_FAULT))
    {
      v7[0] = 67109120;
      v7[1] = a3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_FAULT, "invalid mode %d", v7, 8u);
    }
  }
}

- (BOOL)notifySOStoAOP
{
  v3 = 6;
  CSAOPSvc::sendCommand(self->_aopSvc, &v3, 1u);
  return 1;
}

- (void)feedCompanionDetected
{
  if (qword_100456948 != -1)
  {
    sub_1002EFAAC();
  }

  v3 = qword_100456950;
  if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "feedCompanionDetected", v4, 2u);
  }

  [(CSHSMObjc *)self->_hsm signal:4 data:0];
}

- (void)feedDetectionDecision:(BOOL)a3 uuid:(id)a4 forMode:(unsigned __int8)a5
{
  v5 = a5;
  v6 = a3;
  v8 = a4;
  if (self->_mode != v5)
  {
    if (qword_100456948 != -1)
    {
      sub_1002EFAAC();
    }

    v9 = qword_100456950;
    if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_FAULT))
    {
      mode = self->_mode;
      LODWORD(v17) = 16777728;
      BYTE4(v17) = mode;
      *(&v17 + 5) = 256;
      HIBYTE(v17) = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "SOS mode switch detected %hhu -> %hhu", &v17, 8u);
    }

    self->_mode = v5;
  }

  if (qword_100456948 != -1)
  {
    sub_1002EFAC0();
  }

  v11 = qword_100456950;
  if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v17) = 67109378;
    HIDWORD(v17) = v6;
    LOWORD(v18[0]) = 2112;
    *(v18 + 2) = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "feedDetectionDecision: decision: %d uuid: %@", &v17, 0x12u);
  }

  v17 = 0;
  v18[0] = 0;
  [v8 getUUIDBytes:&v17];
  defaults = self->_defaults;
  v13 = +[SOSKappaManager currentSOSStatus];
  v14 = [v13 uuid];
  v15 = [v14 UUIDString];
  [(NSUserDefaults *)defaults setObject:v15 forKey:@"KappaSOSUUID"];

  hsm = self->_hsm;
  if (v6)
  {
    [(CSHSMObjc *)hsm signal:2 data:&v17];
  }

  else
  {
    [(CSHSMObjc *)hsm signal:3 data:0];
  }
}

- (void)feedPotentialEventWithTimestamp:(unint64_t)a3 forMode:(unsigned __int8)a4 martyIsBicycle:(BOOL)a5
{
  if (qword_100456948 != -1)
  {
    sub_1002EFAAC();
  }

  v9 = qword_100456950;
  if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "feedPotentialEventWithTimestamp: timestamp %llu", &v10, 0xCu);
  }

  self->_mode = a4;
  self->_martyIsBicycle = a5;
  [(CSHSMObjc *)self->_hsm signal:1 data:0];
}

- (void)resetAllPersistedValues
{
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"KappaLocalUUID"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"KappaLocalTimestamp"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"KappaExpirationTimestamp"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"KappaExpirationPeriod"];
  [(NSUserDefaults *)self->_defaults removeObjectForKey:@"KappaCompanionUUID"];
  [(NSUserDefaults *)self->_defaults setBool:0 forKey:@"ActiveKappaDecision"];
  [(NSUserDefaults *)self->_defaults setBool:0 forKey:@"WaitingForSOSAck"];
  defaults = self->_defaults;

  [(NSUserDefaults *)defaults removeObjectForKey:@"KappaSOSUUID"];
}

- (void)clearAll
{
  if (qword_100456948 != -1)
  {
    sub_1002EFAAC();
  }

  v3 = qword_100456950;
  if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "clearAll", v7, 2u);
  }

  sosStatus = self->_sosStatus;
  self->_sosStatus = 0;

  localTriggerUUID = self->_localTriggerUUID;
  self->_localTriggerUUID = 0;

  companionTriggerUUID = self->_companionTriggerUUID;
  self->_companionTriggerUUID = 0;
  self->_localDecisionTimestamp = 0.0;

  self->_localShouldSend = 0;
  self->_sendUnprocessedCrash = 0;
  [(CSSafetySOSStateMachine *)self resetAllPersistedValues];
  [(CSSafetySOSStateMachine *)self stopTimer];
}

- (void)onCompanionMessage:(int)a3 data:(id)a4 receivedTimestamp:(double)a5
{
  v10 = a4;
  if ((a3 - 305) < 2 || a3 == 6)
  {
    v7 = +[CSPermissions sharedInstance];
    v8 = [v7 firstOrThirdPartyEnabled];

    if (v8)
    {
      v9 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v10, "bytes")}];
      [(CSSafetySOSStateMachine *)self updateCompanionUUID:v9];

      [(CSSafetySOSStateMachine *)self feedCompanionDetected];
    }
  }
}

- (void)updatedSOSKappaStatus:(id)a3
{
  v5 = a3;
  if (qword_100456948 != -1)
  {
    sub_1002EFAAC();
  }

  v6 = qword_100456950;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [v5 sosStatus];
    v13 = 134218496;
    v14 = [v7 flowState];
    v15 = 1024;
    v16 = [v5 isKappaFlow];
    v17 = 1024;
    v18 = [v5 isKappaFlowActive];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "updatedSOSSafetyStatus state:%ld, isKappaFlow:%d, isKappaFlowActive:%d", &v13, 0x18u);
  }

  if ([v5 isKappaFlow])
  {
    objc_storeStrong(&self->_sosStatus, a3);
    v8 = [v5 isKappaFlowActive];
    hsm = self->_hsm;
    if (v8)
    {
      v10 = 7;
    }

    else
    {
      v10 = 8;
    }

    [(CSHSMObjc *)self->_hsm signal:v10 data:0];
    if ([v5 sosKappaState] == 1)
    {
      if (qword_100456948 != -1)
      {
        sub_1002EFAC0();
      }

      v11 = qword_100456950;
      if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_INFO))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "updatedSOSSafetyStatus received alert and notifying AOP", &v13, 2u);
      }

      [(CSSafetySOSStateMachine *)self notifySOStoAOP];
    }
  }

  else
  {
    if (qword_100456948 != -1)
    {
      sub_1002EFAC0();
    }

    v12 = qword_100456950;
    if (os_log_type_enabled(qword_100456950, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Received non-Kappa flow state, ignoring", &v13, 2u);
    }
  }
}

@end