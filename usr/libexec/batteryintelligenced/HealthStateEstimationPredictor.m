@interface HealthStateEstimationPredictor
+ (id)sharedPredictor;
- (HealthStateEstimationPredictor)init;
- (id)getPayloadForCoreAnalyticsWithParams:(id)a3 andModelPred:(id)a4 forModelOutput:(id)a5;
- (id)getPayloadForPPSWithParams:(id)a3 andFeatureValue:(id)a4 forModelOutput:(id)a5;
- (void)predictAndRecordWithParams:(id)a3;
@end

@implementation HealthStateEstimationPredictor

+ (id)sharedPredictor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000064E4;
  block[3] = &unk_100048718;
  block[4] = a1;
  if (qword_1000578C8 != -1)
  {
    dispatch_once(&qword_1000578C8, block);
  }

  v2 = qword_1000578C0;

  return v2;
}

- (HealthStateEstimationPredictor)init
{
  v3 = os_transaction_create();
  v31.receiver = self;
  v31.super_class = HealthStateEstimationPredictor;
  v4 = [(HealthStateEstimationPredictor *)&v31 init];
  if (v4)
  {
    v5 = sub_10001DEC4("stateestimationpredictor");
    logger = v4->_logger;
    v4->_logger = v5;

    [(HealthStateEstimationPredictor *)v4 setLogToPPS:1];
    [(HealthStateEstimationPredictor *)v4 setLogToCoreAnalytics:1];
    [(HealthStateEstimationPredictor *)v4 setName:@"state_estimation_model"];
    [(HealthStateEstimationPredictor *)v4 setOutputFeatureType:19];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [(HealthStateEstimationPredictor *)v4 name];
    v9 = [v7 pathForResource:v8 ofType:@"mlmodelc"];

    if (!v9)
    {
      v18 = v4->_logger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10002E21C(v18);
      }

      v17 = 0;
      goto LABEL_24;
    }

    v10 = [NSURL fileURLWithPath:v9];
    v11 = [MLModel modelWithContentsOfURL:v10 error:0];

    if (!v11)
    {
      v19 = v4->_logger;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10002E18C(v19);
      }

      v17 = 0;
      goto LABEL_23;
    }

    v12 = [v11 modelDescription];
    v13 = [v12 metadata];

    if (v13)
    {
      v14 = [v11 modelDescription];
      v15 = [v14 metadata];
      v16 = [v15 objectForKeyedSubscript:MLModelVersionStringKey];
      [(HealthStateEstimationPredictor *)v4 setVersion:v16];
    }

    else
    {
      v20 = v4->_logger;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_10002E06C(v20);
      }
    }

    v21 = [v11 modelDescription];
    v22 = [v21 predictedFeatureName];

    v23 = [v11 modelDescription];
    v24 = v23;
    if (v22)
    {
      v25 = [v23 predictedFeatureName];
      v26 = [v25 copy];
    }

    else
    {
      v27 = [v23 outputDescriptionsByName];

      if (!v27)
      {
        v30 = v4->_logger;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_10002E0FC(v30);
        }

        goto LABEL_22;
      }

      v24 = [v11 modelDescription];
      v25 = [v24 outputDescriptionsByName];
      v26 = [v25 allKeys];
    }

    v28 = v26;
    [(HealthStateEstimationPredictor *)v4 setPredictedFeatureNames:v26];

LABEL_22:
    v17 = v4;
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002E2AC();
  }

  v17 = 0;
LABEL_25:

  return v17;
}

- (void)predictAndRecordWithParams:(id)a3
{
  v4 = a3;
  v73 = os_transaction_create();
  v5 = +[NSDate now];
  v6 = +[NSDate now];
  v7 = [v5 dateByAddingTimeInterval:-86400.0];
  [&off_10004D1F8 floatValue];
  [v6 dateByAddingTimeInterval:(((v8 / 365.0) * -31536000.0) + 86400.0)];
  v113[0] = @"PredictionDurationDays";
  v113[1] = @"HealthHistoryStartDate";
  v114[0] = &off_10004D228;
  v114[1] = v7;
  v70 = v7;
  v113[2] = @"HealthHistoryEndDate";
  v113[3] = @"UsageHistoryStartDate";
  v113[4] = @"UsageHistoryEndDate";
  v113[5] = @"MaxHealthHistoryLenDays";
  v71 = v6;
  v72 = v5;
  v115 = v114[2] = v5;
  v69 = v115;
  v116 = v6;
  v117 = &off_10004D240;
  v113[6] = @"MaxUsageHistoryLenTimesteps";
  v118 = &off_10004D210;
  v9 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:7];
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_10002E2F4();
  }

  v67 = v9;
  if (v4)
  {
    v76 = [NSMutableDictionary dictionaryWithDictionary:v4, v9];
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v98 objects:v112 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v99;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v99 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v98 + 1) + 8 * i);
          v16 = [v76 objectForKey:v15];

          if (!v16)
          {
            v17 = [v10 objectForKeyedSubscript:v15];
            [v76 setObject:v17 forKeyedSubscript:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v98 objects:v112 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v76 = v9;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_10002E35C();
  }

  v18 = +[BISeqPredictorCommon sharedInstance];
  v19 = [(HealthStateEstimationPredictor *)self name];
  v77 = [v18 runInferenceForModel:v19 withParams:v76 outputFeatureType:19];

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v20 = [(HealthStateEstimationPredictor *)self predictedFeatureNames];
  v21 = [v20 countByEnumeratingWithState:&v94 objects:v111 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v95;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v95 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v94 + 1) + 8 * j);
        v26 = [v77 featureValueForName:v25];
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v105 = v25;
          v106 = 2112;
          v107 = v26;
          _os_log_debug_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEBUG, "Output %@ shape: %@", buf, 0x16u);
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v94 objects:v111 count:16];
    }

    while (v22);
  }

  v28 = +[BISeqPredictorCommon sharedInstance];
  v29 = [(HealthStateEstimationPredictor *)self name];
  v74 = [v28 getOutputNamesAndDimensionsForModel:v29];

  v75 = objc_alloc_init(NSMutableDictionary);
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v30 = [v77 featureNames];
  v31 = [v30 countByEnumeratingWithState:&v90 objects:v110 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v91;
    do
    {
      for (k = 0; k != v32; k = k + 1)
      {
        if (*v91 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v90 + 1) + 8 * k);
        v36 = [v77 featureValueForName:v35];
        v37 = [v36 multiArrayValue];
        v38 = [v74 objectForKey:v35];
        v39 = [BITensor getValuesFrom3DMultiArray:v37 withFeatureNamesForDimensions:v38];

        [v75 addEntriesFromDictionary:v39];
      }

      v32 = [v30 countByEnumeratingWithState:&v90 objects:v110 count:16];
    }

    while (v32);
  }

  v40 = self->_logger;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = v40;
    v42 = [(HealthStateEstimationPredictor *)self name];
    v43 = [v76 objectForKeyedSubscript:@"PredictionDurationDays"];
    *buf = 138412802;
    v105 = v42;
    v106 = 2112;
    v107 = v43;
    v108 = 2112;
    v109 = v75;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "Model: %@ Days: %@ Predictions: %@\n", buf, 0x20u);
  }

  if (self->_logToPPS)
  {
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v44 = v75;
    v45 = [v44 countByEnumeratingWithState:&v86 objects:v103 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = 0;
      v48 = *v87;
      do
      {
        v49 = 0;
        v50 = v47;
        do
        {
          if (*v87 != v48)
          {
            objc_enumerationMutation(v44);
          }

          v51 = *(*(&v86 + 1) + 8 * v49);
          v52 = [v44 objectForKey:v51];
          v53 = [v52 objectAtIndex:0];
          v54 = self->_logger;
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            sub_10002EA90(&v84, v85, v54);
          }

          v47 = [(HealthStateEstimationPredictor *)self getPayloadForPPSWithParams:v76 andFeatureValue:v53 forModelOutput:v51];

          v55 = self->_logger;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v105 = v47;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "PPS data to log %@", buf, 0xCu);
          }

          [BIMetricRecorder sendToPPS:v47 forIdentifier:@"BatteryHealthDelta"];

          v49 = v49 + 1;
          v50 = v47;
        }

        while (v46 != v49);
        v46 = [v44 countByEnumeratingWithState:&v86 objects:v103 count:16];
      }

      while (v46);
    }

    else
    {
      v47 = 0;
    }
  }

  else
  {
    v47 = 0;
  }

  if (self->_logToCoreAnalytics)
  {
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v56 = v75;
    v57 = [v56 countByEnumeratingWithState:&v80 objects:v102 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v81;
      do
      {
        v60 = 0;
        v61 = v47;
        do
        {
          if (*v81 != v59)
          {
            objc_enumerationMutation(v56);
          }

          v62 = *(*(&v80 + 1) + 8 * v60);
          v63 = [v56 objectForKey:v62];
          v64 = [v63 objectAtIndex:0];
          v65 = self->_logger;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            sub_10002EAD0(&v78, v79, v65);
          }

          v47 = [(HealthStateEstimationPredictor *)self getPayloadForCoreAnalyticsWithParams:v76 andModelPred:v64 forModelOutput:v62];

          v66 = self->_logger;
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v105 = v47;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "CA data to log %@", buf, 0xCu);
          }

          [BIMetricRecorder sendToCoreAnalytics:v47 forEvent:@"com.apple.bi.batteryhealthdelta_predictions" withTrialManager:0];

          v60 = v60 + 1;
          v61 = v47;
        }

        while (v58 != v60);
        v58 = [v56 countByEnumeratingWithState:&v80 objects:v102 count:16];
      }

      while (v58);
    }
  }
}

- (id)getPayloadForPPSWithParams:(id)a3 andFeatureValue:(id)a4 forModelOutput:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[NSMutableDictionary dictionary];
  v12 = [(HealthStateEstimationPredictor *)self version];
  [v11 setObject:v12 forKeyedSubscript:@"model_id"];

  v13 = [(HealthStateEstimationPredictor *)self name];
  [v11 setObject:v13 forKeyedSubscript:@"model_name"];

  [v9 doubleValue];
  v15 = v14;

  v16 = [NSNumber numberWithDouble:v15];
  [v11 setObject:v16 forKeyedSubscript:@"model_prediction"];

  v17 = [v10 objectForKeyedSubscript:@"PredictionDurationDays"];

  [v11 setObject:v17 forKeyedSubscript:@"prediction_duration"];
  [v11 setObject:v8 forKeyedSubscript:@"prediction_output_name"];

  return v11;
}

- (id)getPayloadForCoreAnalyticsWithParams:(id)a3 andModelPred:(id)a4 forModelOutput:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      sub_10002E584(logger);
    }

    goto LABEL_11;
  }

  v11 = [v8 objectForKey:@"PredictionDurationDays"];

  if (!v11)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_10002E51C();
    }

LABEL_11:
    v25 = 0;
    goto LABEL_16;
  }

  v12 = +[NSMutableDictionary dictionary];
  v13 = sub_10001F2F8(v10);
  if (v13)
  {
    [v9 floatValue];
    v15 = v14;
    [v13 floatValue];
    *&v17 = v15 - v16;
    v18 = [NSNumber numberWithFloat:v17];
    v19 = self->_logger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v28 = 138412802;
      v29 = v9;
      v30 = 2112;
      v31 = v13;
      v32 = 2112;
      v33 = v18;
      _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Current state estimation error (t=0 days): predictedVal = %@, true currentVal = %@, error = %@", &v28, 0x20u);
    }

    [v12 setObject:v18 forKeyedSubscript:@"prediction_error"];
    [v18 doubleValue];
    v21 = [NSNumber numberWithDouble:fabs(v20)];
    [v12 setObject:v21 forKeyedSubscript:@"prediction_error_absolute"];

    v22 = [(HealthStateEstimationPredictor *)self version];
    [v12 setObject:v22 forKeyedSubscript:@"model_id"];

    v23 = [(HealthStateEstimationPredictor *)self name];
    [v12 setObject:v23 forKeyedSubscript:@"model_name"];

    v24 = [v8 objectForKeyedSubscript:@"PredictionDurationDays"];
    [v12 setObject:v24 forKeyedSubscript:@"prediction_duration"];

    [v12 setObject:v10 forKeyedSubscript:@"prediction_output_name"];
    v25 = v12;
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_10002EB10();
    }

    v25 = 0;
  }

LABEL_16:

  return v25;
}

@end