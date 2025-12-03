@interface BIMetricRecorder
+ (id)logger;
+ (void)sendToCoreAnalytics:(id)analytics forEvent:(id)event withTrialManager:(id)manager;
+ (void)sendToPPS:(id)s forIdentifier:(id)identifier;
@end

@implementation BIMetricRecorder

+ (id)logger
{
  v2 = os_log_create("com.apple.batteryintelligence", "metricrecorder");

  return v2;
}

+ (void)sendToPPS:(id)s forIdentifier:(id)identifier
{
  sCopy = s;
  identifierCopy = identifier;
  v7 = +[BIMetricRecorder logger];
  v8 = v7;
  if (sCopy)
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
        sub_100032460(identifierCopy, v8);
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

+ (void)sendToCoreAnalytics:(id)analytics forEvent:(id)event withTrialManager:(id)manager
{
  analyticsCopy = analytics;
  eventCopy = event;
  managerCopy = manager;
  v10 = +[BIMetricRecorder logger];
  v11 = v10;
  if (analyticsCopy)
  {
    if (managerCopy)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_100032540();
      }

      v12 = [analyticsCopy mutableCopy];
      experimentIdentifiers = [managerCopy experimentIdentifiers];
      experimentId = [experimentIdentifiers experimentId];
      [v12 setObject:experimentId forKeyedSubscript:@"trialExperimentId"];

      experimentIdentifiers2 = [managerCopy experimentIdentifiers];
      v16 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [experimentIdentifiers2 deploymentId]);
      stringValue = [v16 stringValue];
      [v12 setObject:stringValue forKeyedSubscript:@"trialDeploymentId"];

      experimentIdentifiers3 = [managerCopy experimentIdentifiers];
      treatmentId = [experimentIdentifiers3 treatmentId];
      [v12 setObject:treatmentId forKeyedSubscript:@"trialTreatmentId"];

      v20 = [v12 copy];
      analyticsCopy = v20;
    }

    v21 = analyticsCopy;
    if ((AnalyticsSendEventLazy() & 1) == 0 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100032580(eventCopy, v11);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1000325F8();
  }
}

@end