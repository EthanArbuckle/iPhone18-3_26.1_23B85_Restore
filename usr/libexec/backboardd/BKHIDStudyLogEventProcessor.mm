@interface BKHIDStudyLogEventProcessor
+ (BOOL)shouldCreateStudyLogger;
- (BKHIDStudyLogEventProcessor)initWithContext:(id)context;
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
- (void)dealloc;
- (void)matcher:(id)matcher servicesDidMatch:(id)match;
- (void)serviceDidDisappear:(id)disappear;
@end

@implementation BKHIDStudyLogEventProcessor

- (void)serviceDidDisappear:(id)disappear
{
  gyroService = self->_gyroService;
  self->_gyroService = 0;
}

- (void)matcher:(id)matcher servicesDidMatch:(id)match
{
  firstObject = [match firstObject];
  gyroService = self->_gyroService;
  self->_gyroService = firstObject;

  [(BKIOHIDService *)self->_gyroService addDisappearanceObserver:self queue:self->_matcherQueue];
  v7 = self->_gyroService;
  v8 = [NSNumber numberWithDouble:100000.0];
  [(BKIOHIDService *)v7 setProperty:v8 forKey:@"ReportInterval"];
}

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  v6 = *event;
  Type = IOHIDEventGetType();
  switch(Type)
  {
    case 20:
      localDefaults = self->_localDefaults;
      v19 = self->_cameraLog;
      if (([(BKSLocalDefaults *)localDefaults disableStudyLogGyroLogging]& 1) == 0)
      {
        v32 = _NSConcreteStackBlock;
        v33 = 3221225472;
        v34 = sub_100013960;
        v35 = &unk_1000F9DD8;
        v36 = v6;
        v20 = @"com.apple.backboard.hid.gyro";
        goto LABEL_16;
      }

LABEL_17:

      return 0;
    case 12:
      v18 = self->_localDefaults;
      v19 = self->_cameraLog;
      if (([(BKSLocalDefaults *)v18 disableStudyLogALSLogging]& 1) == 0)
      {
        v32 = _NSConcreteStackBlock;
        v33 = 3221225472;
        v34 = sub_100013B28;
        v35 = &unk_1000F9DD8;
        v36 = v6;
        v20 = @"com.apple.backboard.hid.als";
LABEL_16:
        [(SLGTimedLogger *)v19 logBlock:&v32 domain:v20];
        goto LABEL_17;
      }

      goto LABEL_17;
    case 3:
      cameraLog = self->_cameraLog;
      v9 = self->_localDefaults;
      v10 = self->_keyboardLog;
      v11 = cameraLog;
      v12 = v9;
      if (([(BKSLocalDefaults *)v12 disableStudyLogButtonLogging]& 1) != 0)
      {
LABEL_36:
        v17 = 0;
        goto LABEL_37;
      }

      IntegerValue = IOHIDEventGetIntegerValue();
      v14 = IOHIDEventGetIntegerValue();
      v15 = IOHIDEventGetIntegerValue();
      v16 = v15 != 0;
      if (IntegerValue == 144)
      {
        if (([(BKSLocalDefaults *)v12 disableStudyLogCameraKeyLogging]& 1) != 0 || v14 != 33)
        {
          goto LABEL_35;
        }

        [(SLGTimedLogger *)v11 setActive:1];
        v27 = _NSConcreteStackBlock;
        v28 = 3221225472;
        v29 = sub_10001350C;
        v30 = &unk_1000F9D78;
        LOWORD(v31) = v14;
        BYTE2(v31) = v16;
        v24 = @"com.apple.backboard.hid.camera";
        v23 = &v27;
        v25 = v11;
        goto LABEL_34;
      }

      if (IntegerValue != 12)
      {
        if (IntegerValue == 7)
        {
          if (([(BKSLocalDefaults *)v12 disableStudyLogBTKeyboardEventLogging]& 1) == 0)
          {
            v27 = _NSConcreteStackBlock;
            v28 = 3221225472;
            v29 = sub_10001312C;
            v30 = &unk_1000F9D78;
            LOWORD(v31) = v14;
            BYTE2(v31) = v16;
            [(SLGLog *)v10 logBlock:&v27 domain:@"com.apple.backboard.hid.keyboard"];
          }

          if (([(BKSLocalDefaults *)v12 disableStudyLogBTKeyboardEventRedirection]& 1) == 0)
          {
            v17 = 1;
LABEL_37:

            return v17;
          }
        }

        goto LABEL_35;
      }

      switch(v14)
      {
        case 48:
          if (([(BKSLocalDefaults *)v12 disableStudyLogPowerButtonLogging]& 1) == 0)
          {
            v27 = _NSConcreteStackBlock;
            v28 = 3221225472;
            v29 = sub_100013420;
            v30 = &unk_1000FAE40;
            LOBYTE(v31) = v16;
            v24 = @"com.apple.backboard.hid.power";
            goto LABEL_32;
          }

          break;
        case 233:
          if (([(BKSLocalDefaults *)v12 disableStudyLogVolumeKeyLogging]& 1) == 0)
          {
            v27 = _NSConcreteStackBlock;
            v28 = 3221225472;
            v29 = sub_100013334;
            v30 = &unk_1000FAE40;
            LOBYTE(v31) = v16;
            v24 = @"com.apple.backboard.hid.volume";
LABEL_32:
            v23 = &v27;
LABEL_33:
            v25 = v10;
LABEL_34:
            [(SLGLog *)v25 logBlock:v23 domain:v24, v27, v28, v29, v30, v31];
          }

          break;
        case 234:
          v22 = v15;
          if (([(BKSLocalDefaults *)v12 disableStudyLogVolumeKeyLogging]& 1) != 0)
          {
            break;
          }

          v27 = _NSConcreteStackBlock;
          v28 = 3221225472;
          v29 = sub_100013248;
          v30 = &unk_1000FAE40;
          LOBYTE(v31) = v16;
          [(SLGLog *)v10 logBlock:&v27 domain:@"com.apple.backboard.hid.volume"];
          if (!v22)
          {
            break;
          }

          v23 = &stru_1000F9DB8;
          v24 = @"com.apple.backboard.hid.volume";
          goto LABEL_33;
        default:
          break;
      }

LABEL_35:
      v32 = _NSConcreteStackBlock;
      v33 = 3221225472;
      v34 = sub_100013708;
      v35 = &unk_1000F9DD8;
      v36 = v6;
      [(SLGLog *)v10 logBlock:&v32 domain:@"com.apple.backboard.hid.keyboard"];
      goto LABEL_36;
  }

  return 0;
}

- (void)dealloc
{
  [(BKIOHIDServiceMatcher *)self->_gyroMatcher invalidate];
  v3.receiver = self;
  v3.super_class = BKHIDStudyLogEventProcessor;
  [(BKHIDStudyLogEventProcessor *)&v3 dealloc];
}

- (BKHIDStudyLogEventProcessor)initWithContext:(id)context
{
  contextCopy = context;
  if (+[BKHIDStudyLogEventProcessor shouldCreateStudyLogger])
  {
    v22.receiver = self;
    v22.super_class = BKHIDStudyLogEventProcessor;
    v5 = [(BKHIDStudyLogEventProcessor *)&v22 init];
    if (v5)
    {
      v6 = +[BKSDefaults localDefaults];
      localDefaults = v5->_localDefaults;
      v5->_localDefaults = v6;

      v8 = +[SLGLog sharedInstance];
      keyboardLog = v5->_keyboardLog;
      v5->_keyboardLog = v8;

      v10 = dispatch_queue_create("BKHIDEventStudyLoggerMatcherQueue", 0);
      matcherQueue = v5->_matcherQueue;
      v5->_matcherQueue = v10;

      serviceMatcherDataProvider = [contextCopy serviceMatcherDataProvider];
      v13 = [[BKIOHIDServiceMatcher alloc] initWithUsagePage:65280 usage:9 builtIn:1 dataProvider:serviceMatcherDataProvider];
      gyroMatcher = v5->_gyroMatcher;
      v5->_gyroMatcher = v13;

      [(BKIOHIDServiceMatcher *)v5->_gyroMatcher startObserving:v5 queue:v5->_matcherQueue];
      v15 = [SLGTimedLogger alloc];
      v16 = [SLGActivatableLogger alloc];
      v17 = +[SLGLog sharedInstance];
      v18 = [v16 initWithLogger:v17];
      v19 = [v15 initWithLogger:v18 duration:1.0];
      cameraLog = v5->_cameraLog;
      v5->_cameraLog = v19;

      [(SLGTimedLogger *)v5->_cameraLog setActivationHandler:&stru_1000F9D38];
      [(SLGTimedLogger *)v5->_cameraLog setDeactivationHandler:&stru_1000F9D58];
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldCreateStudyLogger
{
  v2 = +[SLGLog sharedInstance];
  isEnabled = [v2 isEnabled];

  if (isEnabled)
  {
    v4 = sub_100008528();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "StudyLog is enabled", v6, 2u);
    }
  }

  return isEnabled;
}

@end