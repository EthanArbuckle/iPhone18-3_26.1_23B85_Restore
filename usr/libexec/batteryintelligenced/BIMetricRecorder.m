@interface BIMetricRecorder
+ (id)logger;
+ (void)sendToCoreAnalytics:(id)a3 forEvent:(id)a4 withTrialManager:(id)a5;
+ (void)sendToPPS:(id)a3 forIdentifier:(id)a4;
@end

@implementation BIMetricRecorder

+ (id)logger
{
  v2 = os_log_create("com.apple.batteryintelligence", "metricrecorder");

  return v2;
}

+ (void)sendToPPS:(id)a3 forIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[BIMetricRecorder logger];
  v8 = v7;
  if (v5)
  {
    v9 = PPSCreateTelemetryIdentifier();
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "ppsId created", v11, 2u);
      }

      PPSSendTelemetry();
      free(v10);
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_100032460(v6, v8);
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000324D8();
      }
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10003250C();
  }
}

+ (void)sendToCoreAnalytics:(id)a3 forEvent:(id)a4 withTrialManager:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[BIMetricRecorder logger];
  v11 = v10;
  if (v7)
  {
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_100032540();
      }

      v12 = [v7 mutableCopy];
      v13 = [v9 experimentIdentifiers];
      v14 = [v13 experimentId];
      [v12 setObject:v14 forKeyedSubscript:@"trialExperimentId"];

      v15 = [v9 experimentIdentifiers];
      v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v15 deploymentId]);
      v17 = [v16 stringValue];
      [v12 setObject:v17 forKeyedSubscript:@"trialDeploymentId"];

      v18 = [v9 experimentIdentifiers];
      v19 = [v18 treatmentId];
      [v12 setObject:v19 forKeyedSubscript:@"trialTreatmentId"];

      v20 = [v12 copy];
      v7 = v20;
    }

    v21 = v7;
    if ((AnalyticsSendEventLazy() & 1) == 0 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100032580(v8, v11);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1000325F8();
  }
}

@end