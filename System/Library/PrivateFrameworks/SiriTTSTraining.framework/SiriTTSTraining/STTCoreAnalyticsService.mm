@interface STTCoreAnalyticsService
+ (STTCoreAnalyticsService)sharedInstance;
- (void)reportRequest:(id)request;
- (void)reportTask:(id)task;
@end

@implementation STTCoreAnalyticsService

+ (STTCoreAnalyticsService)sharedInstance
{
  if (qword_100029C88 != -1)
  {
    dispatch_once(&qword_100029C88, &stru_100025208);
  }

  v3 = qword_100029C80;

  return v3;
}

- (void)reportRequest:(id)request
{
  if (request)
  {
    v18[0] = @"app_id";
    appId = [request appId];
    v6 = appId;
    if (appId)
    {
      v7 = appId;
    }

    else
    {
      v7 = @"null";
    }

    v19[0] = v7;
    v18[1] = @"language";
    assetLanguage = [request assetLanguage];
    v9 = assetLanguage;
    if (assetLanguage)
    {
      v10 = assetLanguage;
    }

    else
    {
      v10 = @"null";
    }

    v19[1] = v10;
    v18[2] = @"name";
    assetName = [request assetName];
    v12 = assetName;
    if (assetName)
    {
      v13 = assetName;
    }

    else
    {
      v13 = @"null";
    }

    v19[2] = v13;
    v18[3] = @"error_code";
    error = [request error];
    v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [error code]);
    v19[3] = v15;
    v18[4] = @"task_mode";
    v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [request taskMode]);
    v19[4] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:5];

    sub_10000C4AC(self, @"com.apple.SiriTTSTrainingAgent.metrics.request", v17);
  }

  else
  {
    v17 = 0;
    sub_10000C4AC(self, @"com.apple.SiriTTSTrainingAgent.metrics.request", 0);
  }
}

- (void)reportTask:(id)task
{
  if (task)
  {
    v28[0] = @"app_id";
    appId = [task appId];
    v25 = appId;
    if (appId)
    {
      v5 = appId;
    }

    else
    {
      v5 = @"null";
    }

    v29[0] = v5;
    v28[1] = @"error_code";
    error = [task error];
    v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [error code]);
    v29[1] = v23;
    v28[2] = @"language";
    assetLanguage = [task assetLanguage];
    v7 = assetLanguage;
    if (assetLanguage)
    {
      v8 = assetLanguage;
    }

    else
    {
      v8 = @"null";
    }

    v29[2] = v8;
    v28[3] = @"name";
    assetName = [task assetName];
    v10 = assetName;
    if (assetName)
    {
      v11 = assetName;
    }

    else
    {
      v11 = @"null";
    }

    v29[3] = v11;
    v28[4] = @"task_mode";
    v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [task taskMode]);
    v29[4] = v22;
    v28[5] = @"task_status";
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [task taskStatus]);
    v29[5] = v12;
    v28[6] = @"training_status";
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [task trainingStatus]);
    v29[6] = v13;
    v28[7] = @"training_time";
    [task timeIntervalSinceTrainingStart];
    v15 = [NSNumber numberWithInteger:v14];
    v29[7] = v15;
    v28[8] = @"time_since_request";
    [task timeIntervalSinceSubmission];
    v17 = [NSNumber numberWithInteger:v16];
    v29[8] = v17;
    v28[9] = @"total_training_time";
    [task totalTrainingTime];
    v19 = [NSNumber numberWithInteger:v18];
    v29[9] = v19;
    v28[10] = @"task_current_progress";
    v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [task currentTaskStatusProgressValue]);
    v29[10] = v20;
    v28[11] = @"task_total_progress";
    v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [task totalTaskStatusProgressValue]);
    v29[11] = v21;
    v27 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:12];

    sub_10000C4AC(self, @"com.apple.SiriTTSTrainingAgent.metrics.task", v27);
  }

  else
  {
    v27 = 0;
    sub_10000C4AC(self, @"com.apple.SiriTTSTrainingAgent.metrics.task", 0);
  }
}

@end