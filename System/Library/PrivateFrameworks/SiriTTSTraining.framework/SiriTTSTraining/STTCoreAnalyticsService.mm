@interface STTCoreAnalyticsService
+ (STTCoreAnalyticsService)sharedInstance;
- (void)reportRequest:(id)a3;
- (void)reportTask:(id)a3;
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

- (void)reportRequest:(id)a3
{
  if (a3)
  {
    v18[0] = @"app_id";
    v5 = [a3 appId];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = @"null";
    }

    v19[0] = v7;
    v18[1] = @"language";
    v8 = [a3 assetLanguage];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = @"null";
    }

    v19[1] = v10;
    v18[2] = @"name";
    v11 = [a3 assetName];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"null";
    }

    v19[2] = v13;
    v18[3] = @"error_code";
    v14 = [a3 error];
    v15 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 code]);
    v19[3] = v15;
    v18[4] = @"task_mode";
    v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 taskMode]);
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

- (void)reportTask:(id)a3
{
  if (a3)
  {
    v28[0] = @"app_id";
    v4 = [a3 appId];
    v25 = v4;
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = @"null";
    }

    v29[0] = v5;
    v28[1] = @"error_code";
    v24 = [a3 error];
    v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v24 code]);
    v29[1] = v23;
    v28[2] = @"language";
    v6 = [a3 assetLanguage];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = @"null";
    }

    v29[2] = v8;
    v28[3] = @"name";
    v9 = [a3 assetName];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"null";
    }

    v29[3] = v11;
    v28[4] = @"task_mode";
    v22 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 taskMode]);
    v29[4] = v22;
    v28[5] = @"task_status";
    v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 taskStatus]);
    v29[5] = v12;
    v28[6] = @"training_status";
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 trainingStatus]);
    v29[6] = v13;
    v28[7] = @"training_time";
    [a3 timeIntervalSinceTrainingStart];
    v15 = [NSNumber numberWithInteger:v14];
    v29[7] = v15;
    v28[8] = @"time_since_request";
    [a3 timeIntervalSinceSubmission];
    v17 = [NSNumber numberWithInteger:v16];
    v29[8] = v17;
    v28[9] = @"total_training_time";
    [a3 totalTrainingTime];
    v19 = [NSNumber numberWithInteger:v18];
    v29[9] = v19;
    v28[10] = @"task_current_progress";
    v20 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 currentTaskStatusProgressValue]);
    v29[10] = v20;
    v28[11] = @"task_total_progress";
    v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a3 totalTaskStatusProgressValue]);
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