@interface CSAnomalyEventService
+ (id)generateMslUrl:(id)url andSessionType:(int)type ttrManagedMsl:(BOOL)msl;
+ (id)getSilo;
+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index;
+ (void)enqueueHeldRecordingForUpload:(id)upload;
+ (void)getFileUrlsForRecording:(id)recording metadataUrl:(id *)url mslUrl:(id *)mslUrl withError:(id *)error;
+ (void)removeHeldRecording:(id)recording;
+ (void)setAPFSPurgeability:(id)purgeability;
- (BOOL)isKappaTrigger:(id)trigger;
- (BOOL)isMartyTrigger:(id)trigger;
- (CSAnomalyEventService)init;
- (void)abortSession;
- (void)beginService;
- (void)didInitWithUnprocessedCrash:(id)crash withCompanionUUID:(id)d;
- (void)didReceiveSOSAck:(int64_t)ack forMode:(unsigned __int8)mode;
- (void)endService;
- (void)enqueueHeldRecordingForUploadWithConsent:(id)consent withError:(id *)error;
- (void)feedSortedSamples:(id)samples;
- (void)finishSession;
- (void)handleConnection:(id)connection;
- (void)holdRecordingUntilFeedbackConsent:(id)consent withError:(id *)error;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didReportVisit:(id)visit;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
- (void)locationManager:(id)manager didVisit:(id)visit;
- (void)onCompanionStatusUpdate:(BOOL)update pairedDevice:(id)device updatedTimestamp:(double)timestamp;
- (void)replyToXPCMessage;
- (void)requestLocation:(int)location;
- (void)setForcedCompanionTrigger:(unsigned __int8)trigger;
- (void)setPreTriggerForcedCompanionTrigger;
- (void)setupXPCHandler;
- (void)sosActivated;
- (void)startIgneousUploader;
- (void)startUploader;
- (void)triggered:(id)triggered;
- (void)uploadRecording:(id)recording;
@end

@implementation CSAnomalyEventService

+ (void)becameFatallyBlocked:(id)blocked index:(unint64_t)index
{
  blockedCopy = blocked;
  v5 = index + 1;
  if (v5 < [blockedCopy count])
  {
    [objc_msgSend(blockedCopy objectAtIndexedSubscript:{v5), "becameFatallyBlocked:index:", blockedCopy, v5}];
  }
}

+ (id)getSilo
{
  if (qword_100458870 != -1)
  {
    sub_1002CD450();
  }

  v3 = qword_100458868;

  return v3;
}

- (CSAnomalyEventService)init
{
  v3.receiver = self;
  v3.super_class = CSAnomalyEventService;
  return [(CSAnomalyEventService *)&v3 initWithInboundProtocol:&OBJC_PROTOCOL___CSAnomalyEventServiceProtocol outboundProtocol:&OBJC_PROTOCOL___CSAnomalyEventServiceClientProtocol];
}

- (void)replyToXPCMessage
{
  if (qword_100456958 != -1)
  {
    sub_1002CD464();
  }

  v3 = qword_100456960;
  if (os_log_type_enabled(qword_100456960, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "replyToXPCMessage", buf, 2u);
  }

  while ([(NSMutableArray *)self->_replyList count])
  {
    v4 = [(NSMutableArray *)self->_replyList objectAtIndex:0];
    xpc_dictionary_send_reply();
    [(NSMutableArray *)self->_replyList removeObjectAtIndex:0];
    if (qword_100456958 != -1)
    {
      sub_1002CD478();
    }

    v5 = qword_100456960;
    if (os_log_type_enabled(qword_100456960, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "replying to xpc request", v8, 2u);
    }
  }

  [(NSMutableArray *)self->_connectionList removeAllObjects];
  if (self->_releasePowerAssertionXPCRefCount >= 1)
  {
    do
    {
      [(CSPower *)self->_powerAssertion releasePowerAssertion];
      releasePowerAssertionXPCRefCount = self->_releasePowerAssertionXPCRefCount;
      v7 = __OFSUB__(releasePowerAssertionXPCRefCount--, 1);
      self->_releasePowerAssertionXPCRefCount = releasePowerAssertionXPCRefCount;
    }

    while (!((releasePowerAssertionXPCRefCount < 0) ^ v7 | (releasePowerAssertionXPCRefCount == 0)));
  }
}

- (void)handleConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  if (qword_100456958 != -1)
  {
    sub_1002CD478();
  }

  v5 = qword_100456960;
  if (os_log_type_enabled(qword_100456960, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "handleConnection", buf, 2u);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1002C6D00;
  handler[3] = &unk_10042ECB0;
  objc_copyWeak(&v7, &location);
  xpc_connection_set_event_handler(connectionCopy, handler);
  xpc_connection_activate(connectionCopy);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)setupXPCHandler
{
  if (qword_100456958 != -1)
  {
    sub_1002CD464();
  }

  v3 = qword_100456960;
  if (os_log_type_enabled(qword_100456960, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "setupXPCHandler", buf, 2u);
  }

  objc_initWeak(buf, self);
  self->_releasePowerAssertionXPCRefCount = 0;
  v4 = dispatch_queue_create("com.apple.Anomalydetectiond", 0);
  triggerDispatchQueue = self->_triggerDispatchQueue;
  self->_triggerDispatchQueue = v4;

  mach_service = xpc_connection_create_mach_service("com.apple.anomalydetectiond.trigger", self->_triggerDispatchQueue, 1uLL);
  triggerListener = self->_triggerListener;
  self->_triggerListener = mach_service;

  v8 = objc_alloc_init(NSMutableArray);
  replyList = self->_replyList;
  self->_replyList = v8;

  v10 = objc_alloc_init(NSMutableArray);
  connectionList = self->_connectionList;
  self->_connectionList = v10;

  v12 = self->_triggerListener;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1002C7198;
  handler[3] = &unk_10042ECB0;
  objc_copyWeak(&v14, buf);
  xpc_connection_set_event_handler(v12, handler);
  xpc_connection_activate(self->_triggerListener);
  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

- (void)beginService
{
  if (qword_1004567D8 != -1)
  {
    sub_1002CD4A0();
  }

  v2 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "beginService", buf, 2u);
  }

  operator new();
}

- (void)endService
{
  if (qword_1004567D8 != -1)
  {
    sub_1002CD4A0();
  }

  v2 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "endService", v3, 2u);
  }
}

- (BOOL)isKappaTrigger:(id)trigger
{
  triggerCopy = trigger;
  if ((*([triggerCopy c_struct] + 1) & 1) != 0 || (*(objc_msgSend(triggerCopy, "c_struct") + 1) & 2) != 0 || (*(objc_msgSend(triggerCopy, "c_struct") + 1) & 4) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = (*([triggerCopy c_struct] + 1) >> 3) & 1;
  }

  return v4;
}

- (BOOL)isMartyTrigger:(id)trigger
{
  triggerCopy = trigger;
  if ((*([triggerCopy c_struct] + 46) & 4) != 0 || (*(objc_msgSend(triggerCopy, "c_struct") + 46) & 8) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = *([triggerCopy c_struct] + 46) & 1;
  }

  return v4;
}

+ (id)generateMslUrl:(id)url andSessionType:(int)type ttrManagedMsl:(BOOL)msl
{
  mslCopy = msl;
  typeCopy = type;
  urlCopy = url;
  if ((typeCopy & 3) != 0)
  {
    NSTemporaryDirectory();
    if (mslCopy)
      v8 = {;
      v9 = [NSURL URLWithString:v8];

      [v9 URLByAppendingPathComponent:@"kappaOutTTR"];
    }

    else
      v11 = {;
      v9 = [NSURL URLWithString:v11];

      [v9 URLByAppendingPathComponent:@"kappaOut"];
    }
    v10 = ;
  }

  else
  {
    if ((typeCopy & 4) == 0)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v12 = NSTemporaryDirectory();
    v13 = [v12 stringByAppendingPathComponent:@"studiesServerUploaderSpoolerIgneous"];
    v14 = [NSURL URLWithString:v13];

    v9 = v12;
    v10 = v14;
  }

LABEL_10:
  v15 = [v10 URLByAppendingPathComponent:urlCopy isDirectory:0];
  v16 = [v15 URLByAppendingPathExtension:@"msl"];

  return v16;
}

- (void)triggered:(id)triggered
{
  triggeredCopy = triggered;
  v5 = *([triggeredCopy c_struct] + 1);
  v6 = *([triggeredCopy c_struct] + 46);
  v7 = *([triggeredCopy c_struct] + 64);
  [(CSAnomalyEventService *)self setPreTriggerForcedCompanionTrigger];
  if (qword_1004567D8 != -1)
  {
    sub_1002CD4A0();
  }

  v8 = qword_1004567E0;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v57 = v7;
    v9 = v5;
    v10 = v6;
    v11 = *([triggeredCopy c_struct] + 1);
    v12 = *([triggeredCopy c_struct] + 46);
    v13 = *([triggeredCopy c_struct] + 64);
    v14 = *([triggeredCopy c_struct] + 47);
    v15 = *([triggeredCopy c_struct] + 93);
    v16 = *([triggeredCopy c_struct] + 92);
    *buf = 67110400;
    LODWORD(v63) = v11;
    WORD2(v63) = 1024;
    *(&v63 + 6) = v12;
    WORD5(v63) = 1024;
    HIDWORD(v63) = v13;
    v64 = 1024;
    v65 = v14;
    v66 = 1024;
    v67 = v15;
    v68 = 1024;
    v69 = v16;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "triggered: trigger path %d marty path %d igneous path %d enabledMode %d overrideMode %d locallyArmed %d", buf, 0x26u);
    v6 = v10;
    v5 = v9;
    v7 = v57;
  }

  v17 = +[CSPermissions sharedInstance];
  if (v7)
  {
    isAuthorizedToCollectDataIgneous = [v17 isAuthorizedToCollectDataIgneous];
  }

  else
  {
    isAuthorizedToCollectDataIgneous = [v17 isAuthorizedToCollectData];
  }

  *(self->_details.__ptr_ + 26) = isAuthorizedToCollectDataIgneous;

  v19 = +[CSPermissions sharedInstance];
  *(self->_details.__ptr_ + 28) = [v19 isAuthorizedForIS];

  v20 = +[CSPlatformInfo sharedInstance];
  *(self->_details.__ptr_ + 27) = [v20 isInternalInstall];

  if (v5 && [(CSAnomalyEventService *)self isKappaTrigger:triggeredCopy])
  {
    v21 = 0;
    v22 = 1;
  }

  else if (v6)
  {
    ptr = self->_details.__ptr_;
    if (*(ptr + 27) == 1)
    {
      v21 = 1;
      *(ptr + 26) = 1;
    }

    else
    {
      v21 = 0;
    }

    v22 = 2;
  }

  else if (v7)
  {
    v21 = 0;
    v22 = 4;
  }

  else
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4B4();
    }

    v33 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "no path set, invalid trigger", buf, 2u);
    }

    v21 = 0;
    v22 = 0;
  }

  v24 = self->_details.__ptr_;
  if (*(v24 + 25) != 1)
  {
LABEL_45:
    ++self->_sessionNum;
    *(v24 + 25) = 1;
    self->_sessionType = v22;
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4B4();
    }

    v35 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
    {
      sessionNum = self->_sessionNum;
      *buf = 67109376;
      LODWORD(v63) = sessionNum;
      WORD2(v63) = 1024;
      *(&v63 + 6) = v22;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "starting session %d type=%d", buf, 0xEu);
    }

    v37 = +[NSUUID UUID];
    uuid = self->_uuid;
    self->_uuid = v37;

    if (v22 == 1)
    {
      if ([(CSKappaDetectionService *)self->_kappaDetectionService isIdle])
      {
        v39 = 1;
        goto LABEL_59;
      }
    }

    else
    {
      if (v22 != 2)
      {
        v39 = v22;
        if ((v22 - 1) >= 2)
        {
          if (v22 != 4)
          {
            v39 = v22;
            goto LABEL_69;
          }

          self->_stopClientDetection = 1;
          self->_apTriggerTimestamp = CFAbsoluteTimeGetCurrent();
          v39 = 4;
        }

LABEL_59:
        if (*(self->_details.__ptr_ + 26) == 1 && [(CSAnomalyEventService *)self startRecordingWithTTRManagedMsl:v21 andPreempt:0])
        {
          if (v22 == 1)
          {
            v40 = &OBJC_IVAR___CSAnomalyEventService__kappaDetectionService;
          }

          else
          {
            if (v39 == 4)
            {
              if (*([triggeredCopy c_struct] + 64))
              {
                v49 = sub_1002C7914();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  v50 = *([triggeredCopy c_struct] + 64);
                  c_struct = [triggeredCopy c_struct];
                  *buf = 67109378;
                  LODWORD(v63) = v50;
                  WORD2(v63) = 2080;
                  *(&v63 + 6) = c_struct + 65;
                  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "igneous trigger path %d with guid %s", buf, 0x12u);
                }

                mslRecording = self->_mslRecording;
                v60[0] = @"igneousGUID";
                v53 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", [triggeredCopy c_struct] + 65);
                v61[0] = v53;
                v60[1] = @"igneousPath";
                v54 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", *([triggeredCopy c_struct] + 64));
                v60[2] = @"shouldUploadIndependentlyOfSOS";
                v61[1] = v54;
                v61[2] = &off_10043D528;
                v55 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:3];
                [(CSMSLDataRecording *)mslRecording updateMetadata:v55];

                self->_igneousPath = *([triggeredCopy c_struct] + 64);
                v56 = +[CSPower sharedInstance];
                [v56 powerlogActivity:8 event:1 isActive:CFAbsoluteTimeGetCurrent()];
              }

              goto LABEL_67;
            }

            if (v39 != 2)
            {
LABEL_67:
              CSAOPSvc::setRecording(self->_aop, self->_mslRecording, self->_uuid, 0);
LABEL_74:
              [(CSAnomalyEventService *)self requestLocation:v39];
              v42 = self->_mslRecording;
              v58 = @"sessionType";
              v43 = [NSNumber numberWithInt:self->_sessionType];
              v59 = v43;
              v44 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
              [(CSMSLDataRecording *)v42 updateMetadata:v44];

              if (qword_1004567D8 != -1)
              {
                sub_1002CD4B4();
              }

              v45 = qword_1004567E0;
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
              {
                v46 = *([triggeredCopy c_struct] + 1);
                *buf = 67109120;
                LODWORD(v63) = v46;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, "got a trigger path %d", buf, 8u);
              }

              goto LABEL_79;
            }

            v40 = &OBJC_IVAR___CSAnomalyEventService__martyDetectionService;
          }

          [*&self->CLIntersiloService_opaque[*v40] setRecording:self->_mslRecording withUUID:self->_uuid];
          goto LABEL_67;
        }

LABEL_69:
        if (qword_1004567D8 != -1)
        {
          sub_1002CD4B4();
        }

        v41 = qword_1004567E0;
        if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v63) = v39;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "cannot collect recording for %d", buf, 8u);
        }

        [(CSKappaDetectionService *)self->_kappaDetectionService setRecording:0 withUUID:self->_uuid];
        [(CSMartyDetectionService *)self->_martyDetectionService setRecording:0 withUUID:self->_uuid];
        CSAOPSvc::setRecording(self->_aop, 0, self->_uuid, 0);
        goto LABEL_74;
      }

      if ([(CSMartyDetectionService *)self->_martyDetectionService isIdle])
      {
        v39 = 2;
        goto LABEL_59;
      }
    }

    *(self->_details.__ptr_ + 26) = 0;
    v39 = v22;
    goto LABEL_59;
  }

  if ((v22 & 1) != 0 && self->_sessionType != 1 && (*(v24 + 24) & 1) == 0)
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4B4();
    }

    v25 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEFAULT))
    {
      sessionType = self->_sessionType;
      *buf = 67109120;
      LODWORD(v63) = sessionType;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "converting session %d into a kappa one", buf, 8u);
    }

    if (self->_sessionType == 2)
    {
      if (qword_1004567D8 != -1)
      {
        sub_1002CD4B4();
      }

      v27 = qword_1004567E0;
      if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "aborting marty detection service", buf, 2u);
      }

      [(CSMartyDetectionService *)self->_martyDetectionService abortSession];
    }

    v28 = self->_mslRecording;
    self->_mslRecording = 0;

    self->_sessionType = 1;
    *(self->_details.__ptr_ + 24) = 1;
    v29 = +[NSUUID UUID];
    v30 = self->_uuid;
    self->_uuid = v29;

    if (*(self->_details.__ptr_ + 26) == 1)
    {
      [(CSAnomalyEventService *)self startRecordingWithTTRManagedMsl:v21 andPreempt:1];
      if (qword_1004567D8 != -1)
      {
        sub_1002CD4B4();
      }

      v31 = qword_1004567E0;
      if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEFAULT))
      {
        v32 = self->_uuid;
        *buf = 138412290;
        *&v63 = v32;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "creating new recording for preemption %@", buf, 0xCu);
      }
    }

    else
    {
      v34 = self->_mslRecording;
      self->_mslRecording = 0;
    }

    CSAOPSvc::restartSession(self->_aop, self->_mslRecording);
    [(CSKappaDetectionService *)self->_kappaDetectionService setRecording:self->_mslRecording withUUID:self->_uuid];
    v24 = self->_details.__ptr_;
    if ((*(v24 + 25) & 1) == 0)
    {
      v22 = 1;
      goto LABEL_45;
    }
  }

LABEL_79:
  v47 = self->_sessionType;
  if (v47 == 1)
  {
    if ([(CSAnomalyEventService *)self isKappaTrigger:triggeredCopy])
    {
      v48 = &OBJC_IVAR___CSAnomalyEventService__kappaDetectionService;
LABEL_86:
      [*&self->CLIntersiloService_opaque[*v48] triggered:triggeredCopy];
      goto LABEL_87;
    }

    v47 = self->_sessionType;
  }

  if (v47 == 2 && [(CSAnomalyEventService *)self isMartyTrigger:triggeredCopy])
  {
    v48 = &OBJC_IVAR___CSAnomalyEventService__martyDetectionService;
    goto LABEL_86;
  }

LABEL_87:
}

- (void)sosActivated
{
  [(CSKappaDetectionService *)self->_kappaDetectionService sosActivated];
  martyDetectionService = self->_martyDetectionService;

  [(CSMartyDetectionService *)martyDetectionService sosActivated];
}

- (void)feedSortedSamples:(id)samples
{
  samplesCopy = samples;
  sessionType = self->_sessionType;
  if (sessionType == 4)
  {
    CSAOPSvc::stopDetection(self->_aop);
  }

  else
  {
    if (sessionType == 2)
    {
      p_martyDetectionService = &self->_martyDetectionService;
      isIdle = [(CSMartyDetectionService *)self->_martyDetectionService isIdle];
    }

    else
    {
      if (sessionType != 1)
      {
        goto LABEL_10;
      }

      p_martyDetectionService = &self->_kappaDetectionService;
      isIdle = [(CSKappaDetectionService *)self->_kappaDetectionService isIdle];
    }

    if (isIdle)
    {
      self->_stopClientDetection = 1;
    }

    else
    {
      [*p_martyDetectionService feedSortedSamples:samplesCopy];
    }
  }

LABEL_10:
  if (self->_stopClientDetection)
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v8 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "stopping detection", buf, 2u);
    }

    CSAOPSvc::stopDetection(self->_aop);
    self->_stopClientDetection = 0;
  }

  if (self->_stopClientCollection)
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4B4();
    }

    v9 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "stopping collection", v10, 2u);
    }

    CSAOPSvc::stopCollection(self->_aop);
    self->_stopClientCollection = 0;
  }
}

- (void)startUploader
{
  v3 = +[NSFileManager defaultManager];
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"studiesServerUploaderSpooler"];
  [v3 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];

  v6 = +[CSPersistentConfiguration sharedConfiguration];
  v7 = [v6 integerForKey:@"KappaDetectionServiceUploaderOverrideRetentionPeriod"];

  if (!v7)
  {
    v7 = 2592000;
  }

  v8 = +[CSPersistentConfiguration sharedConfiguration];
  [v8 doubleForKey:@"KappaDetectionServiceOOBTimeoutOverride"];
  v10 = v9;

  if (v10 == 0.0)
  {
    v10 = 900.0;
  }

  v11 = [CSStudiesServerUploader alloc];
  v12 = NSTemporaryDirectory();
  v13 = [v12 stringByAppendingPathComponent:@"studiesServerUploaderSpooler"];
  v14 = +[CSStudiesServerConfiguration persistentConfiguration];
  v15 = [(CSStudiesServerUploader *)v11 initWithSpoolerFolder:v13 serverConfiguration:v14 registrationPeriodInSeconds:v7 retentionPeriodInSeconds:v7 outOfBandMetadataTimeout:&stru_100436548 defaultsKeyPostfix:v10];
  uploader = self->_uploader;
  self->_uploader = v15;

  [(CSKappaDetectionService *)self->_kappaDetectionService setUploader:self->_uploader];
  [(CSMartyDetectionService *)self->_martyDetectionService setUploader:self->_uploader];
  v17 = self->_uploader;
  v21 = 0;
  v18 = [(CSStudiesServerUploader *)v17 startMonitoringWithError:&v21];
  v19 = v21;
  if (qword_1004567D8 != -1)
  {
    sub_1002CD4B4();
  }

  v20 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240450;
    v23 = v18;
    v24 = 2114;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Start monitoring: %{public}d %{public}@", buf, 0x12u);
  }
}

- (void)startIgneousUploader
{
  v3 = +[NSFileManager defaultManager];
  v4 = NSTemporaryDirectory();
  v5 = [v4 stringByAppendingPathComponent:@"studiesServerUploaderSpoolerIgneous"];
  [v3 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:0];

  v6 = +[CSPersistentConfiguration sharedConfiguration];
  v7 = [v6 integerForKey:@"IgneousDetectionServiceUploaderOverrideRetentionPeriod"];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = 604800;
  }

  v9 = [CSStudiesServerUploaderIgneous alloc];
  v10 = NSTemporaryDirectory();
  v11 = [v10 stringByAppendingPathComponent:@"studiesServerUploaderSpoolerIgneous"];
  v12 = +[CSStudiesServerConfiguration persistentConfigurationIgneous];
  v13 = [(CSStudiesServerUploaderIgneous *)v9 initWithSpoolerFolder:v11 serverConfiguration:v12 retentionPeriodInSeconds:v8 outOfBandMetadataTimeout:@"Igneous" defaultsKeyPostfix:0.0];
  igneousUploader = self->_igneousUploader;
  self->_igneousUploader = v13;

  v15 = self->_igneousUploader;
  v19 = 0;
  v16 = [(CSStudiesServerUploader *)v15 startMonitoringWithError:&v19];
  v17 = v19;
  if (qword_1004567D8 != -1)
  {
    sub_1002CD4B4();
  }

  v18 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240450;
    v21 = v16;
    v22 = 2114;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Start igneous monitoring: %{public}d %{public}@", buf, 0x12u);
  }
}

+ (void)getFileUrlsForRecording:(id)recording metadataUrl:(id *)url mslUrl:(id *)mslUrl withError:(id *)error
{
  recordingCopy = recording;
  v9 = [NSURL alloc];
  v10 = NSTemporaryDirectory();
  v11 = [v10 stringByAppendingPathComponent:@"feedbackAssistantHolding"];
  v12 = [v9 initFileURLWithPath:v11 isDirectory:1];

  if (v12)
  {
    v13 = [v12 URLByAppendingPathComponent:recordingCopy isDirectory:0];
    *url = [v13 URLByAppendingPathExtension:@"msl.protodata"];
  }

  else
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v14 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[fba] Error retrieving metadata file path", buf, 2u);
    }
  }

  v15 = [NSURL alloc];
  v16 = NSTemporaryDirectory();
  v17 = [v16 stringByAppendingPathComponent:@"kappaOut"];
  v18 = [v15 initFileURLWithPath:v17 isDirectory:1];

  if (v18)
  {
    v19 = [v18 URLByAppendingPathComponent:recordingCopy isDirectory:0];
    *mslUrl = [v19 URLByAppendingPathExtension:@"msl"];
  }

  else
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4B4();
    }

    v20 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_ERROR))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[fba] Error retrieving msl file path", v21, 2u);
    }
  }
}

+ (void)enqueueHeldRecordingForUpload:(id)upload
{
  uploadCopy = upload;
  if (uploadCopy)
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v5 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = uploadCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[fba] Enqueuing held recording: %@", buf, 0xCu);
    }

    v25 = +[NSFileManager defaultManager];
    v28 = 0;
    v29 = 0;
    v27 = 0;
    [self getFileUrlsForRecording:uploadCopy metadataUrl:&v29 mslUrl:&v28 withError:&v27];
    v6 = v29;
    v7 = v28;
    v8 = v27;
    if (v6 && v7)
    {
      v9 = +[NSFileManager defaultManager];
      v10 = NSTemporaryDirectory();
      v11 = [v10 stringByAppendingPathComponent:@"studiesServerUploaderSpooler"];
      [v9 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:0];

      v12 = [NSURL alloc];
      v13 = NSTemporaryDirectory();
      v14 = [v13 stringByAppendingPathComponent:@"studiesServerUploaderSpooler"];
      v15 = [v12 initFileURLWithPath:v14];
      lastPathComponent = [v6 lastPathComponent];
      v17 = [v15 URLByAppendingPathComponent:lastPathComponent];

      if (qword_1004567D8 != -1)
      {
        sub_1002CD4B4();
      }

      v18 = qword_1004567E0;
      if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v31 = v6;
        v32 = 2112;
        v33 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[fba] moving held file from: %@ to %@", buf, 0x16u);
      }

      v26 = v8;
      v19 = [v25 moveItemAtURL:v6 toURL:v17 error:&v26];
      v20 = v26;

      if ((v19 & 1) == 0)
      {
        if (qword_1004567D8 != -1)
        {
          sub_1002CD4B4();
        }

        v21 = qword_1004567E0;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = [v20 description];
          *buf = 138412290;
          v31 = v22;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[fba] Error moving held file to spooler directory, %@", buf, 0xCu);
        }
      }

      v8 = v20;
    }

    else
    {
      if (qword_1004567D8 != -1)
      {
        sub_1002CD4B4();
      }

      v17 = qword_1004567E0;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v24 = [v8 description];
        *buf = 138412290;
        v31 = v24;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[fba] Error retrieving metadata / msl file paths, %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v23 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[fba] Error enqueueing held recording with nil UUID!", buf, 2u);
    }
  }
}

- (void)enqueueHeldRecordingForUploadWithConsent:(id)consent withError:(id *)error
{
  consentCopy = consent;
  if (consentCopy)
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v7 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = consentCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[fba] Appending consent field to held recording: %@", buf, 0xCu);
    }

    v40 = 0;
    v41 = 0;
    v39 = 0;
    [CSAnomalyEventService getFileUrlsForRecording:consentCopy metadataUrl:&v41 mslUrl:&v40 withError:&v39];
    v8 = v41;
    v9 = v40;
    v10 = v39;
    if (v8 && v9)
    {
      v35 = [NSData dataWithContentsOfURL:v8];
      v38 = v10;
      v36 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v35 error:&v38];
      v11 = v38;

      if (v11)
      {
        if (qword_1004567D8 != -1)
        {
          sub_1002CD4B4();
        }

        v12 = qword_1004567E0;
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = [v11 description];
          *buf = 138412290;
          v43 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "[fba] Error unarchiving metadata, %@", buf, 0xCu);
        }

        if (error)
        {
          v14 = v11;
          *error = v11;
        }
      }

      else
      {
        v33 = [v36 decodeObjectOfClass:objc_opt_class() forKey:@"metadata"];
        keyValuePairs = [v33 keyValuePairs];
        v34 = [NSMutableDictionary dictionaryWithDictionary:keyValuePairs];

        [v34 setObject:@"1" forKey:@"providedFeedbackAssistantConsent"];
        v20 = [CSStudiesServerUploadMetadata alloc];
        payloadType = [v33 payloadType];
        channel = [v33 channel];
        v32 = [(CSStudiesServerUploadMetadata *)v20 initWithPayloadType:payloadType channel:channel keyValuePairs:v34];

        v23 = [v36 decodeBoolForKey:@"spooled"];
        [v36 decodeDoubleForKey:@"enqueueTime"];
        v25 = v24;
        uRLByDeletingLastPathComponent = [v8 URLByDeletingLastPathComponent];
        uploader = self->_uploader;
        v37 = 0;
        [(CSStudiesServerUploader *)uploader persistToDiskWithSpooledFile:v23 spoolerDir:uRLByDeletingLastPathComponent fileURL:v9 enqueueTime:v32 metadata:&v37 error:v25];
        v28 = v37;
        if (v28)
        {
          v11 = v28;
          if (qword_1004567D8 != -1)
          {
            sub_1002CD4B4();
          }

          v29 = qword_1004567E0;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = [v11 description];
            *buf = 138412290;
            v43 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[fba] Error persisting new metadata, %@", buf, 0xCu);
          }

          if (error)
          {
            v31 = v11;
            *error = v11;
          }
        }

        else
        {

          [CSAnomalyEventService enqueueHeldRecordingForUpload:consentCopy];
          v11 = 0;
        }
      }
    }

    else
    {
      if (qword_1004567D8 != -1)
      {
        sub_1002CD4B4();
      }

      v16 = qword_1004567E0;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v10 description];
        *buf = 138412290;
        v43 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[fba] Error retrieving metadata / msl file paths, %@", buf, 0xCu);
      }

      if (error)
      {
        v18 = v10;
        *error = v10;
      }

      v11 = v10;
    }
  }

  else
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v15 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[fba] Error enqueueing held recording with consent with nil UUID!", buf, 2u);
    }
  }
}

+ (void)removeHeldRecording:(id)recording
{
  recordingCopy = recording;
  if (qword_1004567D8 != -1)
  {
    sub_1002CD4A0();
  }

  v5 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = recordingCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[fba] Removing held recording for: %@", buf, 0xCu);
  }

  v6 = +[NSFileManager defaultManager];
  v25 = 0;
  v26 = 0;
  v24 = 0;
  [self getFileUrlsForRecording:recordingCopy metadataUrl:&v26 mslUrl:&v25 withError:&v24];
  v7 = v26;
  v8 = v25;
  v9 = v24;
  if (!v7 || !v8)
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4B4();
    }

    v19 = qword_1004567E0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v9 description];
      *buf = 138412290;
      v28 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[fba] Error retrieving metadata / msl file paths, %@", buf, 0xCu);
    }

    goto LABEL_28;
  }

  if (qword_1004567D8 != -1)
  {
    sub_1002CD4B4();
  }

  v10 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v7;
    v29 = 2112;
    v30 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[fba] Files to remove: %@, %@", buf, 0x16u);
  }

  v23 = v9;
  v11 = [v6 removeItemAtURL:v7 error:&v23];
  v12 = v23;

  v13 = v12;
  if ((v11 & 1) == 0)
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4B4();
    }

    v14 = qword_1004567E0;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      absoluteString = [v7 absoluteString];
      v16 = [v12 description];
      *buf = 138412546;
      v28 = absoluteString;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[fba] Couldn't remove metadata file at %@, error,%@", buf, 0x16u);
    }
  }

  v22 = v13;
  v17 = [v6 removeItemAtURL:v8 error:&v22];
  v18 = v22;

  if ((v17 & 1) == 0)
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4B4();
    }

    v19 = qword_1004567E0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = [v18 description];
      *buf = 138412546;
      v28 = v8;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[fba] Couldn't remove msl file at %@, error,%@", buf, 0x16u);
    }

    v9 = v18;
LABEL_28:

    goto LABEL_29;
  }

  v9 = v18;
LABEL_29:
}

- (void)holdRecordingUntilFeedbackConsent:(id)consent withError:(id *)error
{
  consentCopy = consent;
  if (consentCopy)
  {
    selfCopy = self;
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v6 = qword_1004567E0;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [consentCopy url];
      *buf = 138412290;
      v51 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[fba] Holding recording: %@", buf, 0xCu);
    }

    v8 = [NSURL alloc];
    v9 = NSTemporaryDirectory();
    v10 = [v9 stringByAppendingPathComponent:@"feedbackAssistantHolding"];
    v42 = [v8 initFileURLWithPath:v10 isDirectory:1];

    v11 = +[NSFileManager defaultManager];
    LOBYTE(v8) = [v11 createDirectoryAtURL:v42 withIntermediateDirectories:1 attributes:0 error:error];

    if (v8)
    {
      v12 = [NSMutableDictionary alloc];
      metadata = [consentCopy metadata];
      v14 = [v12 initWithCapacity:{objc_msgSend(metadata, "count")}];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      metadata2 = [consentCopy metadata];
      v16 = [metadata2 countByEnumeratingWithState:&v43 objects:v49 count:16];
      if (v16)
      {
        v17 = *v44;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v44 != v17)
            {
              objc_enumerationMutation(metadata2);
            }

            v19 = *(*(&v43 + 1) + 8 * i);
            metadata3 = [consentCopy metadata];
            v21 = [metadata3 objectForKey:v19];
            v22 = [v21 description];
            [v14 setObject:v22 forKeyedSubscript:v19];
          }

          v16 = [metadata2 countByEnumeratingWithState:&v43 objects:v49 count:16];
        }

        while (v16);
      }

      v23 = selfCopy;
      if ((selfCopy->_sessionType - 1) > 1)
      {
        if (qword_1004567D8 != -1)
        {
          sub_1002CD4B4();
          v23 = selfCopy;
        }

        v36 = qword_1004567E0;
        if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_ERROR))
        {
          sessionType = v23->_sessionType;
          *buf = 67109120;
          LODWORD(v51) = sessionType;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "[fba] Unsupported session type for metadata saving, %d", buf, 8u);
        }
      }

      else
      {
        v39 = [[CSStudiesServerUploadMetadata alloc] initWithPayloadType:@"KappaMSL" channel:@"DetectionService" keyValuePairs:v14];
        v24 = [consentCopy url];
        v25 = +[NSFileManager defaultManager];
        absoluteString = [v24 absoluteString];
        v27 = [v25 fileExistsAtPath:absoluteString];

        if (v27)
        {
          uRLByDeletingLastPathComponent = [v24 URLByDeletingLastPathComponent];
          absoluteString2 = [uRLByDeletingLastPathComponent absoluteString];
          absoluteString3 = [v42 absoluteString];
          v31 = [absoluteString2 isEqualToString:absoluteString3];

          uploader = selfCopy->_uploader;
          v33 = +[NSDate now];
          [v33 timeIntervalSinceReferenceDate];
          [(CSStudiesServerUploader *)uploader persistToDiskWithSpooledFile:v31 spoolerDir:v42 fileURL:v24 enqueueTime:v39 metadata:error error:?];
        }

        else
        {
          v47 = NSLocalizedDescriptionKey;
          v33 = [NSString stringWithFormat:@"While enqueuing for feedback assistant holding, file doesnt exist: %@", v24];
          v48 = v33;
          v38 = [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
          *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:2 userInfo:v38];
        }
      }
    }

    else
    {
      if (qword_1004567D8 != -1)
      {
        sub_1002CD4B4();
      }

      v14 = qword_1004567E0;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        v35 = [*error description];
        *buf = 138412290;
        v51 = v35;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "[fba] Error creating directory: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v34 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "[fba] cannot hold a nil recording", buf, 2u);
    }
  }
}

- (void)uploadRecording:(id)recording
{
  recordingCopy = recording;
  if (recordingCopy)
  {
    v4 = [NSMutableDictionary alloc];
    metadata = [recordingCopy metadata];
    v6 = [v4 initWithCapacity:{objc_msgSend(metadata, "count")}];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    metadata2 = [recordingCopy metadata];
    v8 = [metadata2 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v8)
    {
      v9 = *v39;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v39 != v9)
          {
            objc_enumerationMutation(metadata2);
          }

          v11 = *(*(&v38 + 1) + 8 * i);
          metadata3 = [recordingCopy metadata];
          v13 = [metadata3 objectForKey:v11];
          v14 = [v13 description];
          [v6 setObject:v14 forKeyedSubscript:v11];
        }

        v8 = [metadata2 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v8);
    }

    sessionType = self->_sessionType;
    if ((sessionType - 1) >= 2)
    {
      if (sessionType != 4)
      {
        if (qword_1004567D8 != -1)
        {
          sub_1002CD4B4();
        }

        v30 = qword_1004567E0;
        if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "no metadata type specified", buf, 2u);
        }

        goto LABEL_42;
      }

      v16 = [CSStudiesServerUploadMetadata alloc];
      v17 = @"IgneousDetectionService";
    }

    else
    {
      v16 = [CSStudiesServerUploadMetadata alloc];
      v17 = @"DetectionService";
    }

    v19 = [(CSStudiesServerUploadMetadata *)v16 initWithPayloadType:@"KappaMSL" channel:v17 keyValuePairs:v6];
    v20 = self->_sessionType;
    if ((v20 - 1) >= 2)
    {
      if (v20 != 4)
      {
        v29 = 0;
        v28 = 0;
LABEL_32:
        if (qword_1004567D8 != -1)
        {
          sub_1002CD4B4();
        }

        v33 = qword_1004567E0;
        if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240450;
          LODWORD(v43[0]) = v28;
          WORD2(v43[0]) = 2114;
          *(v43 + 6) = v29;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Enqueue for upload: success,%{public}d error,%{public}@", buf, 0x12u);
        }

        if (v29)
        {
          if (qword_1004567D8 != -1)
          {
            sub_1002CD4B4();
          }

          v34 = qword_1004567E0;
          if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v43[0] = v29;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "error %{public}@", buf, 0xCu);
          }
        }

LABEL_42:
        goto LABEL_43;
      }

      igneousUploader = self->_igneousUploader;
      v26 = [recordingCopy url];
      path = [v26 path];
      v36 = 0;
      v28 = [(CSStudiesServerUploader *)igneousUploader enqueueFileWithFilename:path andMetadata:v19 error:&v36];
      v29 = v36;

      path2 = [recordingCopy url];
      [CSAnomalyEventService setAPFSPurgeability:path2];
    }

    else
    {
      v21 = [recordingCopy url];
      path2 = [v21 path];

      if (self->_sessionType == 2)
      {
        urlToCopyToOnStop = [recordingCopy urlToCopyToOnStop];
        if (urlToCopyToOnStop)
        {
          [recordingCopy urlToCopyToOnStop];
        }

        else
        {
          [recordingCopy url];
        }
        v24 = ;
        path3 = [v24 path];

        path2 = path3;
      }

      uploader = self->_uploader;
      v37 = 0;
      v28 = [(CSStudiesServerUploader *)uploader enqueueFileWithFilename:path2 andMetadata:v19 error:&v37];
      v29 = v37;
    }

    goto LABEL_32;
  }

  if (qword_1004567D8 != -1)
  {
    sub_1002CD4A0();
  }

  v18 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "cannot upload a nil recording", buf, 2u);
  }

LABEL_43:
}

+ (void)setAPFSPurgeability:(id)purgeability
{
  purgeabilityCopy = purgeability;
  path = [purgeabilityCopy path];
  uTF8String = [path UTF8String];

  v6 = open(uTF8String, 0);
  v7 = v6;
  if (v6 < 0)
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v10 = qword_1004567E0;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      path2 = [purgeabilityCopy path];
      *buf = 138412290;
      v17 = path2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "setAPFSPurgeability,not able to open %@", buf, 0xCu);
    }
  }

  else
  {
    v15 = 65541;
    if (ffsctl(v6, 0xC0084A44uLL, &v15, 0))
    {
      if (qword_1004567D8 != -1)
      {
        sub_1002CD4B4();
      }

      v8 = qword_1004567E0;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        path3 = [purgeabilityCopy path];
        *buf = 138412290;
        v17 = path3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "setAPFSPurgeability,failed,%@", buf, 0xCu);
      }
    }

    else
    {
      if (qword_1004567D8 != -1)
      {
        sub_1002CD4B4();
      }

      v8 = qword_1004567E0;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        path4 = [purgeabilityCopy path];
        *buf = 138412290;
        v17 = path4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setAPFSPurgeability,succeeded,%@", buf, 0xCu);
      }
    }

    if (close(v7) < 0)
    {
      if (qword_1004567D8 != -1)
      {
        sub_1002CD4B4();
      }

      v13 = qword_1004567E0;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        path5 = [purgeabilityCopy path];
        *buf = 138412290;
        v17 = path5;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "setAPFSPurgeability,not able to close %@", buf, 0xCu);
      }
    }
  }
}

- (void)abortSession
{
  if (qword_1004567D8 != -1)
  {
    sub_1002CD4A0();
  }

  v3 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "aborting session", v5, 2u);
  }

  mslRecording = self->_mslRecording;
  self->_mslRecording = 0;
}

- (void)finishSession
{
  if (qword_1004567D8 != -1)
  {
    sub_1002CD4A0();
  }

  v3 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
  {
    sessionNum = self->_sessionNum;
    *buf = 67109120;
    LODWORD(v44) = sessionNum;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "finish session %d", buf, 8u);
  }

  if (self->_sessionType == 4)
  {
    mslRecording = self->_mslRecording;
    v49 = @"apTriggerTimestamp";
    v6 = [NSNumber numberWithDouble:self->_apTriggerTimestamp];
    v50 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    [(CSMSLDataRecording *)mslRecording updateMetadata:v7];

    v8 = +[CSPower sharedInstance];
    [v8 powerlogActivity:8 event:0 isActive:CFAbsoluteTimeGetCurrent()];
  }

  v9 = +[CSPersistentConfiguration sharedConfiguration];
  v10 = [v9 integerForKey:@"ServerConfigVersion"];

  ptr = self->_details.__ptr_;
  if (*(ptr + 1))
  {
    v12 = *ptr | 2u;
  }

  else
  {
    v12 = *ptr;
  }

  v13 = self->_mslRecording;
  v47[0] = @"kappaTokenCount";
  v14 = [NSNumber numberWithInt:getKappaToken(0)];
  v48[0] = v14;
  v47[1] = @"kappaLowSenseCrashTokenCount";
  v41 = [NSNumber numberWithInt:getKappaLowSenseCrashToken(0)];
  v48[1] = v41;
  v47[2] = @"kappaHighSenseCrashTokenCount";
  v40 = [NSNumber numberWithInt:getKappaHighSenseCrashToken(0)];
  v48[2] = v40;
  v47[3] = @"martyTokenCount";
  v39 = [NSNumber numberWithInt:getMartyToken(0)];
  v48[3] = v39;
  v47[4] = @"martyAlphaCrashTokenCount";
  v38 = [NSNumber numberWithInt:getMartyAlphaCrashToken(0)];
  v48[4] = v38;
  v47[5] = @"martyEarlyCrashTokenCount";
  v37 = [NSNumber numberWithInt:getMartyEarlyCrashToken(0)];
  v48[5] = v37;
  v47[6] = @"martyPunchThruTokenCount";
  v36 = [NSNumber numberWithInt:getMartyPunchThruToken(0)];
  v48[6] = v36;
  v47[7] = @"receivedLentPunchThru";
  v15 = [NSNumber numberWithBool:*(self->_details.__ptr_ + 29)];
  v48[7] = v15;
  v47[8] = @"receivedPunchThruRetraction";
  v16 = [NSNumber numberWithBool:*(self->_details.__ptr_ + 30)];
  v48[8] = v16;
  v48[9] = &off_10043D540;
  v47[9] = @"igneousTokenCount";
  v47[10] = @"configServerVersionNumber";
  v17 = [NSNumber numberWithInteger:v10];
  v48[10] = v17;
  v47[11] = @"convertToKappa";
  v18 = [NSNumber numberWithBool:*(self->_details.__ptr_ + 24)];
  v48[11] = v18;
  v47[12] = @"companionForceTriggered";
  v19 = [NSNumber numberWithInt:v12];
  v48[12] = v19;
  v20 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:13];
  [(CSMSLDataRecording *)v13 updateMetadata:v20];

  if (self->_sessionType == 4)
  {
    [CSIgneousDetectionService updateNumIgneousCollection:self->_igneousPath];
  }

  geoServicesListener = self->_geoServicesListener;
  if (geoServicesListener && [(CSGeoServicesListener *)geoServicesListener isNavigationTransportTypeAvailable])
  {
    v22 = self->_mslRecording;
    v45 = @"mapsNavigationTransportType";
    v23 = [NSNumber numberWithInt:[(CSGeoServicesListener *)self->_geoServicesListener navigationTransportType]];
    v46 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
    [(CSMSLDataRecording *)v22 updateMetadata:v24];
  }

  [(CLLocationManager *)self->_locationManager stopMonitoringVisits];
  v25 = self->_mslRecording;
  if (v25)
  {
    [(CSMSLDataRecording *)v25 stopAndKeep:1];
    [(CSMSLDataRecording *)self->_mslRecording dumpMetadata];
    v26 = +[CSPlatformInfo sharedInstance];
    isFeedbackAssistantEligible = [v26 isFeedbackAssistantEligible];

    if (isFeedbackAssistantEligible)
    {
      v28 = self->_mslRecording;
      v42 = 0;
      [(CSAnomalyEventService *)self holdRecordingUntilFeedbackConsent:v28 withError:&v42];
      v29 = v42;
      if (v29)
      {
        if (qword_1004567D8 != -1)
        {
          sub_1002CD4B4();
        }

        v30 = qword_1004567E0;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = [v29 description];
          *buf = 138412290;
          v44 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "[fba] Error holding MSL/metadata: %@", buf, 0xCu);
        }
      }
    }

    else if (*(self->_details.__ptr_ + 28) == 1 && [(CSMSLDataRecording *)self->_mslRecording shouldUpload])
    {
      if (qword_1004567D8 != -1)
      {
        sub_1002CD4B4();
      }

      v32 = qword_1004567E0;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = [(CSMSLDataRecording *)self->_mslRecording url];
        path = [v33 path];
        *buf = 138412290;
        v44 = path;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "enqueuing recording %@", buf, 0xCu);
      }

      [(CSAnomalyEventService *)self uploadRecording:self->_mslRecording];
    }
  }

  v35 = self->_mslRecording;
  self->_mslRecording = 0;

  self->_sessionType = 0;
  self->_igneousPath = 0;
  self->_stopClientDetection = 0;
  self->_stopClientCollection = 0;
  operator new();
}

- (void)onCompanionStatusUpdate:(BOOL)update pairedDevice:(id)device updatedTimestamp:(double)timestamp
{
  updateCopy = update;
  deviceCopy = device;
  if (qword_1004567D8 != -1)
  {
    sub_1002CD4A0();
  }

  v8 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
  {
    v16 = 67109376;
    *v17 = updateCopy;
    *&v17[4] = 2048;
    *&v17[6] = timestamp;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "onCompanionStatusUpdate: isConnected: %d, updatedTimestamp: %f", &v16, 0x12u);
  }

  if (qword_1004567D8 != -1)
  {
    sub_1002CD4B4();
  }

  v9 = qword_1004567E0;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    name = [deviceCopy name];
    v11 = name;
    uTF8String = [name UTF8String];
    isNearby = [deviceCopy isNearby];
    isDefaultPairedDevice = [deviceCopy isDefaultPairedDevice];
    isConnected = [deviceCopy isConnected];
    v16 = 136315906;
    *v17 = uTF8String;
    *&v17[8] = 1024;
    *&v17[10] = isNearby;
    v18 = 1024;
    v19 = isDefaultPairedDevice;
    v20 = 1024;
    v21 = isConnected;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Paired device info: name %s, isNearby %d, isDefaultPairedDevice %d, isConnected %d", &v16, 0x1Eu);
  }
}

- (void)setForcedCompanionTrigger:(unsigned __int8)trigger
{
  triggerCopy = trigger;
  Current = CFAbsoluteTimeGetCurrent();
  if (*(self->_details.__ptr_ + 25) == 1)
  {
    if (triggerCopy != 2)
    {
      if (triggerCopy == 1)
      {
        if (qword_1004567D8 != -1)
        {
          sub_1002CD4A0();
        }

        v6 = qword_1004567E0;
        if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "setting forced kappa trigger", buf, 2u);
        }

        *self->_details.__ptr_ = 1;
        return;
      }

      sub_1002CD72C();
LABEL_27:
      v11 = sub_1002CD608();
      [(CSAnomalyEventService *)v11 setPreTriggerForcedCompanionTrigger];
      return;
    }

    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v9 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "setting forced marty trigger", v15, 2u);
    }

    *(self->_details.__ptr_ + 1) = 1;
  }

  else
  {
    v7 = Current;
    if (triggerCopy == 2)
    {
      if (qword_1004567D8 != -1)
      {
        sub_1002CD4A0();
      }

      v10 = qword_1004567E0;
      if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "setting forced marty trigger ts", v13, 2u);
      }

      *(self->_details.__ptr_ + 2) = v7;
    }

    else
    {
      if (triggerCopy != 1)
      {
        goto LABEL_27;
      }

      if (qword_1004567D8 != -1)
      {
        sub_1002CD4A0();
      }

      v8 = qword_1004567E0;
      if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "setting forced kappa trigger ts", v14, 2u);
      }

      *(self->_details.__ptr_ + 1) = v7;
    }
  }
}

- (void)setPreTriggerForcedCompanionTrigger
{
  Current = CFAbsoluteTimeGetCurrent();
  ptr = self->_details.__ptr_;
  v5 = *(ptr + 1);
  v6 = Current - v5;
  if (v5 != 0.0 && v6 < 30.0)
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v8 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134217984;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "setting pre-trigger kappa delta %f", &v13, 0xCu);
    }

    ptr = self->_details.__ptr_;
    *ptr = 1;
  }

  v9 = *(ptr + 2);
  v10 = Current - v9;
  if (v9 != 0.0 && v10 < 30.0)
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4B4();
    }

    v12 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134217984;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "setting pre-trigger marty delta %f", &v13, 0xCu);
    }

    *(self->_details.__ptr_ + 1) = 1;
  }
}

- (void)requestLocation:(int)location
{
  v5 = +[CSPermissions sharedInstance];
  v21 = v5;
  if (location == 4)
  {
    isAuthorizedToCollectDataIgneous = [v5 isAuthorizedToCollectDataIgneous];

    if ((isAuthorizedToCollectDataIgneous & 1) == 0)
    {
      if (qword_1004567D8 != -1)
      {
        sub_1002CD4A0();
      }

      v7 = qword_1004567E0;
      if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_INFO))
      {
        v24 = 0;
        v8 = &v24;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "not authorized to collect", v8, 2u);
        return;
      }

      return;
    }

LABEL_8:
    if (self->_sessionType == 4)
    {
      v10 = 1000.0;
    }

    else
    {
      v10 = kCLLocationAccuracyPrecisionLimitation;
    }

    v11 = +[NSFileManager defaultManager];
    v12 = [v11 URLsForDirectory:5 inDomains:8];
    v22 = [v12 objectAtIndexedSubscript:0];

    v13 = [v22 URLByAppendingPathComponent:@"LocationBundles"];
    v14 = [v13 URLByAppendingPathComponent:@"Emergency SOS.bundle"];
    v15 = [CLLocationManager alloc];
    v16 = [NSBundle bundleWithURL:v14];
    silo = [(CSAnomalyEventService *)self silo];
    queue = [silo queue];
    v19 = [v15 initWithEffectiveBundle:v16 delegate:self onQueue:queue];
    locationManager = self->_locationManager;
    self->_locationManager = v19;

    [(CLLocationManager *)self->_locationManager setDesiredAccuracy:v10];
    [(CLLocationManager *)self->_locationManager requestLocation];
    [(CLLocationManager *)self->_locationManager _requestVisitState];
    [(CLLocationManager *)self->_locationManager startMonitoringVisits];

    return;
  }

  isAuthorizedToCollectData = [v5 isAuthorizedToCollectData];

  if (isAuthorizedToCollectData)
  {
    goto LABEL_8;
  }

  if (qword_1004567D8 != -1)
  {
    sub_1002CD4A0();
  }

  v7 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v8 = buf;
    goto LABEL_18;
  }
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  managerCopy = manager;
  locationsCopy = locations;
  if (qword_1004567D8 != -1)
  {
    sub_1002CD4A0();
  }

  v8 = qword_1004567E0;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    firstObject = [locationsCopy firstObject];
    *buf = 138739971;
    v33 = firstObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Received location update: %{sensitive}@", buf, 0xCu);
  }

  sessionType = self->_sessionType;
  switch(sessionType)
  {
    case 2:
      v12 = &OBJC_IVAR___CSAnomalyEventService__martyDetectionService;
      goto LABEL_14;
    case 1:
      v12 = &OBJC_IVAR___CSAnomalyEventService__kappaDetectionService;
LABEL_14:
      [*&self->CLIntersiloService_opaque[*v12] feedLocationManagerResults:locationsCopy];
      break;
    case 0:
      if (qword_1004567D8 != -1)
      {
        sub_1002CD4B4();
      }

      v11 = qword_1004567E0;
      if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "ignoring gps when not in a session", buf, 2u);
      }

      goto LABEL_18;
  }

  firstObject2 = [locationsCopy firstObject];
  [firstObject2 coordinate];
  v15 = v14;

  firstObject3 = [locationsCopy firstObject];
  [firstObject3 coordinate];
  v18 = v17;

  v21.f32[0] = v15;
  v20 = v18;
  v21.f32[1] = v20;
  v22 = vdup_n_s32(0x3C656042u);
  v23 = COERCE_DOUBLE(vmul_f32(vrnda_f32(vdiv_f32(v21, v22)), v22));
  if (self->_sessionType == 4)
  {
    *&v21 = v23;
  }

  mslRecording = self->_mslRecording;
  v25 = [NSNumber numberWithFloat:*&v21, v19, @"coarseLat"];
  v30[1] = @"coarseLong";
  v31[0] = v25;
  HIDWORD(v26) = v29;
  LODWORD(v26) = v29;
  v27 = [NSNumber numberWithFloat:v26];
  v31[1] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v31 forKeys:v30 count:2];
  [(CSMSLDataRecording *)mslRecording updateMetadata:v28];

LABEL_18:
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  if (qword_1004567D8 != -1)
  {
    sub_1002CD4A0();
  }

  v7 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_ERROR))
  {
    v8 = 138543362;
    v9 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error updating location: %{public}@", &v8, 0xCu);
  }
}

- (void)locationManager:(id)manager didReportVisit:(id)visit
{
  managerCopy = manager;
  visitCopy = visit;
  v8 = visitCopy;
  if (visitCopy && [visitCopy hasArrivalDate] && (objc_msgSend(v8, "hasDepartureDate") & 1) == 0)
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v11 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Entered LOI", buf, 2u);
    }

    v10 = &off_10043F110;
  }

  else
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v9 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Exited LOI", v12, 2u);
    }

    v10 = &off_10043F138;
  }

  [(CSMSLDataRecording *)self->_mslRecording updateMetadata:v10];
}

- (void)locationManager:(id)manager didVisit:(id)visit
{
  visitCopy = visit;
  if ([visitCopy hasArrivalDate] && (objc_msgSend(visitCopy, "hasDepartureDate") & 1) == 0)
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v8 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Entered LOI", buf, 2u);
    }

    v7 = &off_10043F160;
  }

  else
  {
    if (qword_1004567D8 != -1)
    {
      sub_1002CD4A0();
    }

    v6 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Exited LOI", v9, 2u);
    }

    v7 = &off_10043F188;
  }

  [(CSMSLDataRecording *)self->_mslRecording updateMetadata:v7];
}

- (void)didInitWithUnprocessedCrash:(id)crash withCompanionUUID:(id)d
{
  crashCopy = crash;
  dCopy = d;
  if (qword_1004567D8 != -1)
  {
    sub_1002CD4A0();
  }

  v7 = qword_1004567E0;
  if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412546;
    v9 = crashCopy;
    v10 = 2112;
    v11 = dCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "didInitWithUnprocessedCrash recoveredLocalUUID:%@ recoveredCompanionUUID:%@", &v8, 0x16u);
  }
}

- (void)didReceiveSOSAck:(int64_t)ack forMode:(unsigned __int8)mode
{
  if (mode == 2)
  {
    martyDetectionService = self->_martyDetectionService;
    if (martyDetectionService)
    {
      v5 = 2;
      goto LABEL_5;
    }
  }

  else if (mode == 1)
  {
    martyDetectionService = self->_kappaDetectionService;
    if (martyDetectionService)
    {
      v5 = 1;
LABEL_5:
      [martyDetectionService didReceiveSOSAck:ack forMode:v5];
    }
  }
}

@end