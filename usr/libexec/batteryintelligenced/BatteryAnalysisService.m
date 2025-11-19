@interface BatteryAnalysisService
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BatteryAnalysisService)init;
- (void)estimateForTarget:(int64_t)a3 withHandler:(id)a4;
- (void)initFromDefaults;
- (void)start;
- (void)updateAdditionalInformationForAllTarget:(int64_t)a3;
- (void)updateEstimate:(double)a3 forTarget:(int64_t)a4 atStartSOC:(int64_t)a5 withEndSOC:(int64_t)a6 confidenceScore:(double)a7 isFirstEstimate:(BOOL)a8 isEstimateOverridden:(BOOL)a9 andAdditionalInformation:(int64_t)a10;
@end

@implementation BatteryAnalysisService

+ (id)sharedInstance
{
  if (qword_100057A30 != -1)
  {
    sub_100032D44();
  }

  v3 = qword_100057A28;

  return v3;
}

- (BatteryAnalysisService)init
{
  v11.receiver = self;
  v11.super_class = BatteryAnalysisService;
  v2 = [(BatteryAnalysisService *)&v11 initWithMachServiceName:@"com.apple.batteryintelligenced.batteryanalysis"];
  if (v2)
  {
    v3 = qword_100057A38;
    if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting BatteryAnalysisService.", v10, 2u);
    }

    [(BatteryAnalysisService *)v2 setDelegate:v2];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.batteryintelligenced.batteryanalysisservicequeue", v4);
    [(BatteryAnalysisService *)v2 setQueue:v5];

    v6 = objc_alloc_init(NSMutableDictionary);
    [(BatteryAnalysisService *)v2 setTargetOutputs:v6];

    v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.batteryintelligenced.batteryanalysisservice"];
    v8 = qword_100057A40;
    qword_100057A40 = v7;

    [(BatteryAnalysisService *)v2 initFromDefaults];
  }

  return v2;
}

- (void)initFromDefaults
{
  v2 = sub_10001FA0C();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v3 = &IOConnectCallMethod_ptr;
  v4 = +[BIBatteryAnalysisSharedResources sharedTargetDetails];
  v5 = [v4 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v5)
  {
    v7 = v5;
    v41 = *v44;
    *&v6 = 134218242;
    v37 = v6;
    v39 = v2;
    v40 = v4;
    do
    {
      v8 = 0;
      do
      {
        if (*v44 != v41)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v43 + 1) + 8 * v8);
        v10 = [v3[144] sharedTargetDetails];
        v11 = [v10 objectForKey:v9];

        v12 = qword_100057A40;
        v13 = [v11 friendlyName];
        v14 = [v12 objectForKey:v13];

        if ([v9 integerValue] == 1 && objc_msgSend(v2, "integerValue") <= 80)
        {
          v15 = qword_100057A38;
          if (!os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          *buf = 138412290;
          v48 = v2;
          v16 = v15;
          v17 = "Not loading charge time estimate for TTL. Current charge limit: %@.";
LABEL_18:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
          goto LABEL_19;
        }

        if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v22 = qword_100057A38;
          if (!os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          *buf = 138412290;
          v48 = v9;
          v16 = v22;
          v17 = "No valid defaults available for %@ target.";
          goto LABEL_18;
        }

        v18 = objc_opt_class();
        v42 = 0;
        v19 = [NSKeyedUnarchiver unarchivedObjectOfClass:v18 fromData:v14 error:&v42];
        v20 = v42;
        if (v20)
        {
          v21 = qword_100057A38;
          if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_ERROR))
          {
            v33 = v21;
            v34 = [v11 friendlyName];
            *buf = 138412546;
            v48 = v34;
            v49 = 2112;
            v50 = v20;
            _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Skipping loading from defaults for %@ target due to error: %@.", buf, 0x16u);

            v2 = v39;
          }

LABEL_15:

          goto LABEL_19;
        }

        if ([v9 integerValue] == 1)
        {
          v23 = [v19 estimateObj];
          v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v23 endSOC]);
          v25 = [v39 isEqualToNumber:v24];

          v2 = v39;
          if ((v25 & 1) == 0)
          {
            v29 = qword_100057A38;
            v3 = &IOConnectCallMethod_ptr;
            v4 = v40;
            if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEFAULT))
            {
              v30 = v29;
              v31 = [v19 estimateObj];
              v32 = [v31 endSOC];
              *buf = v37;
              v48 = v32;
              v49 = 2112;
              v50 = v39;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Not loading charge time estimate for TTL. Charge limit within defaults:%lu and current charge limit: %@", buf, 0x16u);

              v4 = v40;
            }

            goto LABEL_15;
          }
        }

        targetOutputs = self->_targetOutputs;
        v27 = [v11 friendlyName];
        [(NSMutableDictionary *)targetOutputs setObject:v19 forKey:v27];

        v28 = qword_100057A38;
        if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v48 = v9;
          v49 = 2112;
          v50 = v19;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "initFromDefaults complete for %@ target: %@", buf, 0x16u);
        }

        v3 = &IOConnectCallMethod_ptr;
        v4 = v40;
LABEL_19:

        v8 = v8 + 1;
      }

      while (v7 != v8);
      v35 = [v4 countByEnumeratingWithState:&v43 objects:v51 count:16];
      v7 = v35;
    }

    while (v35);
  }

  v36 = qword_100057A38;
  if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "initFromDefaults complete!", buf, 2u);
  }
}

- (void)start
{
  [(BatteryAnalysisService *)self activate];
  v2 = qword_100057A38;
  if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Started BatteryAnalysisService.", v3, 2u);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BIBatteryAnalysisProtocol];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  v7 = [v5 valueForEntitlement:@"com.apple.batteryintelligenced.batteryanalysis-read"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v7 BOOLValue])
  {
    v8 = qword_100057A38;
    if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [v5 processIdentifier];
      v11 = [v5 serviceName];
      v15[0] = 67109378;
      v15[1] = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "BatteryAnalysisService: accepted new connection from pid %d and service name: %@", v15, 0x12u);
    }

    [v5 resume];
    v12 = 1;
  }

  else
  {
    v13 = qword_100057A38;
    if (os_log_type_enabled(qword_100057A38, OS_LOG_TYPE_ERROR))
    {
      sub_100032D58(v13, v5);
    }

    v12 = 0;
  }

  return v12;
}

- (void)estimateForTarget:(int64_t)a3 withHandler:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023CBC;
  block[3] = &unk_100048F80;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(queue, block);
}

- (void)updateEstimate:(double)a3 forTarget:(int64_t)a4 atStartSOC:(int64_t)a5 withEndSOC:(int64_t)a6 confidenceScore:(double)a7 isFirstEstimate:(BOOL)a8 isEstimateOverridden:(BOOL)a9 andAdditionalInformation:(int64_t)a10
{
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000241A0;
  v11[3] = &unk_100048FA8;
  *&v11[6] = a3;
  v11[7] = a5;
  v11[8] = a6;
  *&v11[9] = a7;
  v12 = a8;
  v13 = a9;
  v11[10] = a10;
  v11[4] = self;
  v11[5] = a4;
  dispatch_barrier_sync(queue, v11);
}

- (void)updateAdditionalInformationForAllTarget:(int64_t)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10002454C;
  v4[3] = &unk_100048FD0;
  v4[4] = self;
  v4[5] = a3;
  dispatch_barrier_sync(queue, v4);
}

@end