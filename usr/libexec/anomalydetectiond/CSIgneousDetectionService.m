@interface CSIgneousDetectionService
+ (void)updateNumIgneousCollection:(int)a3;
+ (void)updateNumIgneousUpload:(id)a3;
- (CSIgneousDetectionService)init;
- (id)userInfoUploader;
- (void)uploadCoreAnalyticsWithHandler:(id)a3;
@end

@implementation CSIgneousDetectionService

- (CSIgneousDetectionService)init
{
  v9.receiver = self;
  v9.super_class = CSIgneousDetectionService;
  v2 = [(CSIgneousDetectionService *)&v9 init];
  if (v2)
  {
    v3 = +[CSPersistentConfiguration sharedConfiguration];
    v4 = [v3 getIntegerDefault:@"CSIgneousCoreAnalyticsUploadCadence"];

    v5 = v4;
    if ((v4 & &_mh_execute_header) == 0)
    {
      v5 = 86400;
    }

    v2->_igneousCoreAnalyticsUploadCadence = v5;
    if (qword_1004568A8 != -1)
    {
      sub_1000342A4();
    }

    v6 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
    {
      igneousCoreAnalyticsUploadCadence = v2->_igneousCoreAnalyticsUploadCadence;
      *buf = 134217984;
      v11 = igneousCoreAnalyticsUploadCadence;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Using cadence of %llu sec to send Igneous data harvest metrics to CoreAnalytics", buf, 0xCu);
    }
  }

  return v2;
}

- (id)userInfoUploader
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003384C;
  v5[3] = &unk_100416C50;
  objc_copyWeak(&v6, &location);
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (void)uploadCoreAnalyticsWithHandler:(id)a3
{
  v5 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  if (qword_1004568A8 != -1)
  {
    sub_1000342CC();
  }

  v7 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v30 = Current;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Sending Igneous data harvest metrics to CoreAnalytics,timestamp,%f", buf, 0xCu);
  }

  if ([CSCoreAnalyticsUtils shouldAttemptCoreAnalyticsUploadWithInterval:@"CSIgneousCoreAnalyticsLastSuccessfulUpload" persistentKey:self->_igneousCoreAnalyticsUploadCadence])
  {
    v8 = +[CSPersistentConfiguration sharedConfiguration];
    v9 = [v8 objectForKey:@"CSIgneousCoreAnalyticsLastSuccessfulUpload"];
    v27 = v9;
    if (v9)
    {
      v10 = v9;
      v11 = +[NSDate date];
      [v11 timeIntervalSinceDate:v10];
      if (v12 >= 0.0)
      {
        LODWORD(v3) = llround(v12 / 3600.0);
      }

      else
      {
        v3 = 0xFFFFFFFFLL;
      }
    }

    else
    {
      v3 = 0xFFFFFFFFLL;
    }

    v14 = [v8 integerForKey:{@"CSIgneousNumAlertHarvestCollection", v27}];
    v15 = [v8 integerForKey:@"CSIgneousNumAlertHarvestUpload"];
    v16 = [v8 integerForKey:@"CSIgneousNumMotionHarvestCollection"];
    v17 = [v8 integerForKey:@"CSIgneousNumMotionHarvestUpload"];
    v33[0] = @"numAlertTriggerData";
    v18 = [NSNumber numberWithInt:v14];
    v34[0] = v18;
    v33[1] = @"numAlertTriggerDataUploaded";
    v19 = [NSNumber numberWithInt:v15];
    v34[1] = v19;
    v33[2] = @"numMotionTriggerData";
    v20 = [NSNumber numberWithInt:v16];
    v34[2] = v20;
    v33[3] = @"numMotionTriggerDataUpload";
    v21 = [NSNumber numberWithInt:v17];
    v34[3] = v21;
    v33[4] = @"timeSinceLastUpload";
    v22 = [NSNumber numberWithInt:v3];
    v34[4] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:5];

    v24 = v23;
    AnalyticsSendEventLazy();
    [v8 setInteger:0 forKey:@"CSIgneousNumMotionHarvestCollection"];
    [v8 setInteger:0 forKey:@"CSIgneousNumAlertHarvestCollection"];
    [v8 setInteger:0 forKey:@"CSIgneousNumMotionHarvestUpload"];
    [v8 setInteger:0 forKey:@"CSIgneousNumAlertHarvestUpload"];
    v25 = +[NSDate now];
    [v8 setObject:v25 forKey:@"CSIgneousCoreAnalyticsLastSuccessfulUpload"];

    if (qword_1004568A8 != -1)
    {
      sub_1000342A4();
    }

    v26 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v30 = Current;
      v31 = 2112;
      v32 = v24;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Sent Igneous data harvest metrics to CA,timestmap,%f,%@", buf, 0x16u);
    }

    if (v5)
    {
      v5[2](v5, 1, v24);
    }
  }

  else
  {
    if (v5)
    {
      v5[2](v5, 1, 0);
    }

    if (qword_1004568A8 != -1)
    {
      sub_1000342A4();
    }

    v13 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v30 = Current;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Igneous CoreAnalytics upload ran recently,skipping now,%f", buf, 0xCu);
    }
  }
}

+ (void)updateNumIgneousCollection:(int)a3
{
  v4 = +[CSPersistentConfiguration sharedConfiguration];
  v5 = v4;
  if (a3 == 4)
  {
    v8 = [v4 integerForKey:@"CSIgneousNumAlertHarvestCollection"];
    v7 = v8;
    [v5 setInteger:v8 + 1 forKey:@"CSIgneousNumAlertHarvestCollection"];
LABEL_5:
    if (qword_1004568A8 != -1)
    {
      sub_1000342CC();
    }

    v9 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
    {
      v14 = 67109376;
      v15 = v7 + 1;
      v16 = 1024;
      v17 = a3;
      v10 = "Updated number of Igneous collection in defaults config,%d,igneousPath,%d";
      v11 = v9;
      v12 = 14;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v10, &v14, v12);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (a3 == 1)
  {
    v6 = [v4 integerForKey:@"CSIgneousNumMotionHarvestCollection"];
    v7 = v6;
    [v5 setInteger:v6 + 1 forKey:@"CSIgneousNumMotionHarvestCollection"];
    goto LABEL_5;
  }

  if (qword_1004568A8 != -1)
  {
    sub_1000342CC();
  }

  v13 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
  {
    v14 = 67109120;
    v15 = a3;
    v10 = "Do not update number of Igneous collection in defaults config,igneousPath,%d";
    v11 = v13;
    v12 = 8;
    goto LABEL_13;
  }

LABEL_14:
}

+ (void)updateNumIgneousUpload:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKey:@"igneousPath"];

    if (v5)
    {
      v6 = +[CSPersistentConfiguration sharedConfiguration];
      v7 = [v4 objectForKey:@"igneousPath"];
      v8 = [v7 intValue];

      if (v8 == 4)
      {
        v11 = [v6 integerForKey:@"CSIgneousNumAlertHarvestUpload"];
        v10 = v11;
        [v6 setInteger:v11 + 1 forKey:@"CSIgneousNumAlertHarvestUpload"];
      }

      else
      {
        if (v8 != 1)
        {
          if (qword_1004568A8 != -1)
          {
            sub_1000342CC();
          }

          v16 = qword_1004568B0;
          if (!os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
          {
            goto LABEL_16;
          }

          v17 = 67109120;
          v18 = v8;
          v13 = "Do not update number of Igneous upload in defaults config,igneousPath,%d";
          v14 = v16;
          v15 = 8;
          goto LABEL_15;
        }

        v9 = [v6 integerForKey:@"CSIgneousNumMotionHarvestUpload"];
        v10 = v9;
        [v6 setInteger:v9 + 1 forKey:@"CSIgneousNumMotionHarvestUpload"];
      }

      if (qword_1004568A8 != -1)
      {
        sub_1000342CC();
      }

      v12 = qword_1004568B0;
      if (!os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      v17 = 67109376;
      v18 = v10 + 1;
      v19 = 1024;
      v20 = v8;
      v13 = "Updated number of Igneous upload in defaults config,%d,igneousPath,%d";
      v14 = v12;
      v15 = 14;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, v13, &v17, v15);
LABEL_16:
    }
  }
}

@end