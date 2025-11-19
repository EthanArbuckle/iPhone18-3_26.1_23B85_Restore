@interface BKSecureDrawingMonitor
+ (id)sharedInstance;
- (BKSecureDrawingMonitor)init;
- (void)reportAndKillInsecureProcesses;
- (void)startMonitoringSecureDrawing;
@end

@implementation BKSecureDrawingMonitor

+ (id)sharedInstance
{
  if (qword_100125FF8 != -1)
  {
    dispatch_once(&qword_100125FF8, &stru_1000FBEF0);
  }

  v3 = qword_100125FF0;

  return v3;
}

- (void)reportAndKillInsecureProcesses
{
  if ([(BKSecureDrawingMonitor *)self isSecureModeEnabled])
  {
    v2 = +[CAWindowServer serverIfRunning];
    v3 = [v2 secureModeViolations];

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = sub_100067D28;
    v35 = sub_100067D38;
    v36 = 0;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = sub_100067D28;
    v29[4] = sub_100067D38;
    v30 = 0;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100067D40;
    v28[3] = &unk_1000FBF40;
    v28[4] = &v31;
    v28[5] = v29;
    [v3 enumerateObjectsUsingBlock:v28];
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_100067D28;
    v26 = sub_100067D38;
    v27 = 0;
    if (v32[5])
    {
      v4 = objc_alloc_init(NSMutableArray);
      v5 = v23[5];
      v23[5] = v4;

      v6 = v32[5];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100067F30;
      v21[3] = &unk_1000FBF90;
      v21[4] = v29;
      v21[5] = &v22;
      [v6 enumerateKeysAndObjectsUsingBlock:v21];
      if (v23[5])
      {
        v42 = 0;
        v43 = &v42;
        v44 = 0x2050000000;
        v7 = qword_100126000;
        v45 = qword_100126000;
        if (!qword_100126000)
        {
          v37 = _NSConcreteStackBlock;
          v38 = 3221225472;
          v39 = sub_10006804C;
          v40 = &unk_1000FBFB8;
          v41 = &v42;
          sub_10006804C(&v37);
          v7 = v43[3];
        }

        v8 = v7;
        _Block_object_dispose(&v42, 8);
        v9 = objc_alloc_init(v7);
        v10 = [v9 systemApplicationBundleIdentifier];
        v42 = 0;
        v43 = &v42;
        v44 = 0x2020000000;
        v11 = qword_100126010;
        v45 = qword_100126010;
        if (!qword_100126010)
        {
          v37 = _NSConcreteStackBlock;
          v38 = 3221225472;
          v39 = sub_100068114;
          v40 = &unk_1000FBFB8;
          v41 = &v42;
          v12 = sub_100068164();
          v13 = dlsym(v12, "FBSOpenApplicationOptionKeyActions");
          *(v41[1] + 24) = v13;
          qword_100126010 = *(v41[1] + 24);
          v11 = v43[3];
        }

        _Block_object_dispose(&v42, 8);
        if (!v11)
        {
          v19 = +[NSAssertionHandler currentHandler];
          v20 = [NSString stringWithUTF8String:"NSString *getFBSOpenApplicationOptionKeyActions(void)"];
          [v19 handleFailureInFunction:v20 file:@"BKSecureDrawingMonitor.m" lineNumber:27 description:{@"%s", dlerror()}];

          __break(1u);
          return;
        }

        v14 = *v11;
        v15 = v14;
        if (v10)
        {
          if (v14)
          {
            v16 = [BKSInsecureDrawingAction alloc];
            v17 = [v16 initWithSecureModeViolations:v23[5]];
            v18 = [NSSet setWithObject:v17];
            [v9 sendActions:v18 withResult:0];
          }
        }
      }
    }

    _Block_object_dispose(&v22, 8);

    _Block_object_dispose(v29, 8);
    _Block_object_dispose(&v31, 8);
  }
}

- (void)startMonitoringSecureDrawing
{
  out_token = 0;
  reportingQueue = self->_reportingQueue;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006840C;
  v3[3] = &unk_1000FBF18;
  v3[4] = self;
  notify_register_dispatch("com.apple.CoreAnimation.CAWindowServer.SecureModeViolation", &out_token, reportingQueue, v3);
}

- (BKSecureDrawingMonitor)init
{
  v8.receiver = self;
  v8.super_class = BKSecureDrawingMonitor;
  v2 = [(BKSecureDrawingMonitor *)&v8 init];
  if (v2)
  {
    v3 = +[BSDispatchQueueAttributes serial];
    v4 = [v3 serviceClass:9];
    v5 = BSDispatchQueueCreate();
    reportingQueue = v2->_reportingQueue;
    v2->_reportingQueue = v5;
  }

  return v2;
}

@end