@interface CombinedHealthSequencePredictor
+ (id)sharedPredictor;
- (CombinedHealthSequencePredictor)init;
- (id)getPastBatteryHealthModelPredictionsWithParams:(id)params forPredictionOutputName:(id)name;
- (id)getPayloadForCoreAnalyticsWithParams:(id)params forModelOutput:(id)output;
- (id)getPayloadForPPSWithParams:(id)params andFeatureValue:(id)value forModelOutput:(id)output;
- (id)parseModelOutputName:(id)name;
- (void)predictAndRecordWithParams:(id)params;
@end

@implementation CombinedHealthSequencePredictor

+ (id)sharedPredictor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002DA0;
  block[3] = &unk_100048718;
  block[4] = self;
  if (qword_1000578A0 != -1)
  {
    dispatch_once(&qword_1000578A0, block);
  }

  v2 = qword_100057898;

  return v2;
}

- (CombinedHealthSequencePredictor)init
{
  v3 = os_transaction_create();
  v38.receiver = self;
  v38.super_class = CombinedHealthSequencePredictor;
  v4 = [(CombinedHealthSequencePredictor *)&v38 init];
  if (v4)
  {
    v5 = sub_10001DEC4("combinedseqpredictor");
    logger = v4->_logger;
    v4->_logger = v5;

    [(CombinedHealthSequencePredictor *)v4 setLogToPPS:1];
    [(CombinedHealthSequencePredictor *)v4 setLogToCoreAnalytics:1];
    [(CombinedHealthSequencePredictor *)v4 setName:@"nccp_wra_qmaxp_seq_model"];
    [(CombinedHealthSequencePredictor *)v4 setOutputFeatureType:18];
    v7 = [[BITrialManager alloc] initWithNamespaceName:@"BATTERYINTELLIGENCE_BHF"];
    [(CombinedHealthSequencePredictor *)v4 setTrialManager:v7];

    v8 = objc_alloc_init(MLModelConfiguration);
    [v8 setComputeUnits:1];
    trialManager = v4->_trialManager;
    if (trialManager)
    {
      v10 = [(BITrialManager *)trialManager loadTrialMLModelForModelName:@"bhfModel" withConfiguration:v8];
      if (v10)
      {
        v11 = v10;
        goto LABEL_9;
      }
    }

    v12 = v4->_logger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      name = [(CombinedHealthSequencePredictor *)v4 name];
      *buf = 138412290;
      v40 = name;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Unable to load ML model from trial. Loading default model for %@.", buf, 0xCu);
    }

    v15 = [NSBundle bundleForClass:objc_opt_class()];
    name2 = [(CombinedHealthSequencePredictor *)v4 name];
    v17 = [v15 pathForResource:name2 ofType:@"mlmodelc"];

    if (v17)
    {
      v18 = [NSURL fileURLWithPath:v17];
      v11 = [MLModel modelWithContentsOfURL:v18 configuration:v8 error:0];

      if (v11)
      {
LABEL_9:
        modelDescription = [v11 modelDescription];
        metadata = [modelDescription metadata];

        if (metadata)
        {
          modelDescription2 = [v11 modelDescription];
          metadata2 = [modelDescription2 metadata];
          v23 = [metadata2 objectForKeyedSubscript:MLModelVersionStringKey];
          [(CombinedHealthSequencePredictor *)v4 setVersion:v23];
        }

        else
        {
          v25 = v4->_logger;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_10002E06C(v25);
          }
        }

        modelDescription3 = [v11 modelDescription];
        predictedFeatureName = [modelDescription3 predictedFeatureName];

        modelDescription4 = [v11 modelDescription];
        modelDescription5 = modelDescription4;
        if (predictedFeatureName)
        {
          predictedFeatureName2 = [modelDescription4 predictedFeatureName];
          allKeys = [predictedFeatureName2 copy];
        }

        else
        {
          outputDescriptionsByName = [modelDescription4 outputDescriptionsByName];

          if (!outputDescriptionsByName)
          {
            v37 = v4->_logger;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              sub_10002E0FC(v37);
            }

            goto LABEL_21;
          }

          modelDescription5 = [v11 modelDescription];
          predictedFeatureName2 = [modelDescription5 outputDescriptionsByName];
          allKeys = [predictedFeatureName2 allKeys];
        }

        v33 = allKeys;
        [(CombinedHealthSequencePredictor *)v4 setPredictedFeatureNames:allKeys];

LABEL_21:
        v24 = v4;

LABEL_27:
        goto LABEL_28;
      }

      v35 = v4->_logger;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_10002E18C(v35);
      }
    }

    else
    {
      v34 = v4->_logger;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sub_10002E21C(v34);
      }
    }

    v24 = 0;
    goto LABEL_27;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10002E2AC();
  }

  v24 = 0;
LABEL_28:

  return v24;
}

- (id)parseModelOutputName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy substringWithRange:{1, 2}];
  intValue = [v4 intValue];

  v6 = [nameCopy componentsSeparatedByString:@"_"];

  v7 = [v6 objectAtIndex:1];
  v11[0] = @"health_metric";
  v11[1] = @"quantile";
  v12[0] = v7;
  v8 = [NSNumber numberWithInt:intValue];
  v12[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

- (void)predictAndRecordWithParams:(id)params
{
  paramsCopy = params;
  v80 = os_transaction_create();
  v5 = +[NSDate now];
  v6 = +[NSDate now];
  v7 = [v5 dateByAddingTimeInterval:-86400.0];
  [&off_10004CF88 floatValue];
  [v6 dateByAddingTimeInterval:(((v8 / 365.0) * -31536000.0) + 86400.0)];
  v131[0] = @"PredictionDurationDays";
  v131[1] = @"HealthHistoryStartDate";
  v132[0] = &off_10004CB08;
  v132[1] = v7;
  v77 = v7;
  v131[2] = @"HealthHistoryEndDate";
  v131[3] = @"UsageHistoryStartDate";
  v131[4] = @"UsageHistoryEndDate";
  v131[5] = @"MaxHealthHistoryLenDays";
  v78 = v6;
  v79 = v5;
  v133 = v132[2] = v5;
  v76 = v133;
  v134 = v6;
  v135 = &off_10004CFB8;
  v131[6] = @"MaxUsageHistoryLenTimesteps";
  v136 = &off_10004CFA0;
  v9 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:7];
  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_10002E2F4();
  }

  v75 = v9;
  if (paramsCopy)
  {
    v10 = [NSMutableDictionary dictionaryWithDictionary:paramsCopy];
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v115 objects:v130 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v116;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v116 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v115 + 1) + 8 * i);
          v17 = [v10 objectForKey:v16];

          if (!v17)
          {
            v18 = [v11 objectForKeyedSubscript:v16];
            [v10 setObject:v18 forKeyedSubscript:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v115 objects:v130 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = v9;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
  {
    sub_10002E35C();
  }

  v19 = +[BISeqPredictorCommon sharedInstance];
  name = [(CombinedHealthSequencePredictor *)self name];
  v94 = v10;
  v85 = [v19 runInferenceForModel:name withParams:v10 outputFeatureType:18];

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  predictedFeatureNames = [(CombinedHealthSequencePredictor *)self predictedFeatureNames];
  v22 = [predictedFeatureNames countByEnumeratingWithState:&v111 objects:v129 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v112;
    do
    {
      for (j = 0; j != v23; j = j + 1)
      {
        if (*v112 != v24)
        {
          objc_enumerationMutation(predictedFeatureNames);
        }

        v26 = *(*(&v111 + 1) + 8 * j);
        v27 = [v85 featureValueForName:v26];
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v123 = v26;
          v124 = 2112;
          v125 = v27;
          _os_log_debug_impl(&_mh_execute_header, logger, OS_LOG_TYPE_DEBUG, "Output %@ shape: %@", buf, 0x16u);
        }
      }

      v23 = [predictedFeatureNames countByEnumeratingWithState:&v111 objects:v129 count:16];
    }

    while (v23);
  }

  v29 = +[BISeqPredictorCommon sharedInstance];
  name2 = [(CombinedHealthSequencePredictor *)self name];
  v84 = [v29 getOutputNamesAndDimensionsForModel:name2];

  v87 = objc_alloc_init(NSMutableDictionary);
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  featureNames = [v85 featureNames];
  v32 = [featureNames countByEnumeratingWithState:&v107 objects:v128 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v108;
    do
    {
      for (k = 0; k != v33; k = k + 1)
      {
        if (*v108 != v34)
        {
          objc_enumerationMutation(featureNames);
        }

        v36 = *(*(&v107 + 1) + 8 * k);
        v37 = [v85 featureValueForName:v36];
        multiArrayValue = [v37 multiArrayValue];
        v39 = [v84 objectForKey:v36];
        v40 = [BITensor getValuesFrom3DMultiArray:multiArrayValue withFeatureNamesForDimensions:v39];

        [v87 addEntriesFromDictionary:v40];
      }

      v33 = [featureNames countByEnumeratingWithState:&v107 objects:v128 count:16];
    }

    while (v33);
  }

  v41 = self->_logger;
  v42 = v94;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v43 = v41;
    name3 = [(CombinedHealthSequencePredictor *)self name];
    v45 = [v94 objectForKeyedSubscript:@"PredictionDurationDays"];
    *buf = 138412802;
    v123 = name3;
    v124 = 2112;
    v125 = v45;
    v126 = 2112;
    v127 = v87;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "Model: %@ Days: %@ Predictions: %@\n", buf, 0x20u);
  }

  if (self->_logToPPS && (v105 = 0u, v106 = 0u, v103 = 0u, v104 = 0u, (v82 = [&off_10004CB20 countByEnumeratingWithState:&v103 objects:v121 count:16]) != 0))
  {
    v46 = 0;
    v81 = *v104;
    do
    {
      v47 = 0;
      do
      {
        if (*v104 != v81)
        {
          objc_enumerationMutation(&off_10004CB20);
        }

        v83 = v47;
        v92 = *(*(&v103 + 1) + 8 * v47);
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v102 = 0u;
        v88 = [&off_10004CAF0 countByEnumeratingWithState:&v99 objects:v120 count:16];
        if (v88)
        {
          v86 = *v100;
          do
          {
            for (m = 0; m != v88; m = m + 1)
            {
              if (*v100 != v86)
              {
                objc_enumerationMutation(&off_10004CAF0);
              }

              v90 = *(*(&v99 + 1) + 8 * m);
              v49 = [NSString stringWithFormat:@"q%@_%@_forecast", v92, v90, v75];
              v50 = [v87 objectForKey:v49];
              if ([v50 count])
              {
                v51 = 0;
                v52 = v46;
                do
                {
                  v53 = [v42 objectForKeyedSubscript:@"PredictionDurationDays"];
                  v54 = [v53 objectAtIndex:v51];

                  v55 = self->_logger;
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412802;
                    v123 = v92;
                    v124 = 2112;
                    v125 = v90;
                    v126 = 2112;
                    v127 = v54;
                    _os_log_debug_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEBUG, "Logging PPS data for Q=%@ %@ prediction at t=%@ days.", buf, 0x20u);
                  }

                  v56 = [NSMutableDictionary dictionaryWithDictionary:v42];
                  [v56 setObject:v54 forKeyedSubscript:@"PredictionDurationDays"];
                  v57 = [v50 objectAtIndex:v51];
                  v46 = [(CombinedHealthSequencePredictor *)self getPayloadForPPSWithParams:v56 andFeatureValue:v57 forModelOutput:v49];

                  v58 = self->_logger;
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v123 = v46;
                    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "PPS data to log %@", buf, 0xCu);
                  }

                  [BIMetricRecorder sendToPPS:v46 forIdentifier:@"BatteryHealthDelta"];

                  ++v51;
                  v52 = v46;
                  v42 = v94;
                }

                while ([v50 count] > v51);
              }
            }

            v88 = [&off_10004CAF0 countByEnumeratingWithState:&v99 objects:v120 count:16];
          }

          while (v88);
        }

        v47 = v83 + 1;
      }

      while ((v83 + 1) != v82);
      v82 = [&off_10004CB20 countByEnumeratingWithState:&v103 objects:v121 count:16];
    }

    while (v82);
  }

  else
  {
    v46 = 0;
  }

  if (self->_logToCoreAnalytics)
  {
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v59 = v87;
    v60 = [v59 countByEnumeratingWithState:&v95 objects:v119 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v96;
      v91 = v59;
      v89 = *v96;
      do
      {
        v63 = 0;
        v93 = v61;
        do
        {
          if (*v96 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = *(*(&v95 + 1) + 8 * v63);
          v65 = [v64 substringWithRange:{1, 2}];
          intValue = [v65 intValue];

          if (intValue == 50)
          {
            v67 = [v59 objectForKey:v64];
            if ([v67 count])
            {
              v68 = 0;
              do
              {
                v69 = [v42 objectForKeyedSubscript:@"PredictionDurationDays"];
                v70 = [v69 objectAtIndex:v68];

                v71 = self->_logger;
                if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v123 = v70;
                  _os_log_debug_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEBUG, "Searching for past prediction at t=%@ days for CA logging.", buf, 0xCu);
                }

                v72 = [NSMutableDictionary dictionaryWithDictionary:v42];
                [v72 setObject:v70 forKeyedSubscript:@"PredictionDurationDays"];
                v73 = [(CombinedHealthSequencePredictor *)self getPayloadForCoreAnalyticsWithParams:v72 forModelOutput:v64];

                v74 = self->_logger;
                if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v123 = v73;
                  _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "CA data to log %@", buf, 0xCu);
                }

                [BIMetricRecorder sendToCoreAnalytics:v73 forEvent:@"com.apple.bi.batteryhealthdelta_predictions" withTrialManager:self->_trialManager];

                ++v68;
                v46 = v73;
                v42 = v94;
              }

              while ([v67 count] > v68);
            }

            else
            {
              v73 = v46;
            }

            v46 = v73;
            v59 = v91;
            v61 = v93;
            v62 = v89;
          }

          v63 = v63 + 1;
        }

        while (v63 != v61);
        v61 = [v59 countByEnumeratingWithState:&v95 objects:v119 count:16];
      }

      while (v61);
    }
  }
}

- (id)getPayloadForPPSWithParams:(id)params andFeatureValue:(id)value forModelOutput:(id)output
{
  outputCopy = output;
  valueCopy = value;
  paramsCopy = params;
  v11 = +[NSMutableDictionary dictionary];
  version = [(CombinedHealthSequencePredictor *)self version];
  [v11 setObject:version forKeyedSubscript:@"model_id"];

  name = [(CombinedHealthSequencePredictor *)self name];
  [v11 setObject:name forKeyedSubscript:@"model_name"];

  [valueCopy doubleValue];
  v15 = v14;

  v16 = [NSNumber numberWithDouble:v15];
  [v11 setObject:v16 forKeyedSubscript:@"model_prediction"];

  v17 = [paramsCopy objectForKeyedSubscript:@"PredictionDurationDays"];

  [v11 setObject:v17 forKeyedSubscript:@"prediction_duration"];
  [v11 setObject:outputCopy forKeyedSubscript:@"prediction_output_name"];

  return v11;
}

- (id)getPastBatteryHealthModelPredictionsWithParams:(id)params forPredictionOutputName:(id)name
{
  nameCopy = name;
  paramsCopy = params;
  v8 = +[NSDate now];
  v9 = [paramsCopy objectForKeyedSubscript:@"PredictionDurationDays"];

  v10 = [v8 dateByAddingTimeInterval:{(-86400 * objc_msgSend(v9, "intValue"))}];
  v11 = [v10 dateByAddingTimeInterval:-86400.0];
  v12 = v10;
  v13 = [[NSDateInterval alloc] initWithStartDate:v11 endDate:v12];
  name = [(CombinedHealthSequencePredictor *)self name];
  v15 = sub_100008EB4(name, v13, v9, nameCopy);

  if (v15 && [v15 count])
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      v20 = logger;
      v21 = 134218498;
      v22 = [v15 count];
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Found %lu past predictions logged to PPS from %@ to %@", &v21, 0x20u);
    }

    v17 = v15;
  }

  else
  {
    v18 = self->_logger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10002E3C4(v18, self, v12);
    }

    v17 = 0;
  }

  return v17;
}

- (id)getPayloadForCoreAnalyticsWithParams:(id)params forModelOutput:(id)output
{
  paramsCopy = params;
  outputCopy = output;
  if (!paramsCopy)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      sub_10002E584(logger);
    }

    goto LABEL_14;
  }

  v8 = [paramsCopy objectForKey:@"PredictionDurationDays"];

  if (!v8)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_10002E51C();
    }

LABEL_14:
    v29 = 0;
    goto LABEL_21;
  }

  v9 = +[NSMutableDictionary dictionary];
  v10 = [(CombinedHealthSequencePredictor *)self getPastBatteryHealthModelPredictionsWithParams:paramsCopy forPredictionOutputName:outputCopy];
  v11 = v10;
  if (v10)
  {
    firstObject = [v10 firstObject];
    v13 = [firstObject valueForKey:@"model_prediction"];

    v14 = self->_logger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v33 = v14;
      v34 = [paramsCopy objectForKeyedSubscript:@"PredictionDurationDays"];
      *buf = 138413058;
      v39 = v34;
      v40 = 2048;
      v41 = [v11 count];
      v42 = 2112;
      v43 = v11;
      v44 = 2112;
      v45 = v13;
      _os_log_debug_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEBUG, "For lookback days = %@, found %lu past model predictions: %@. \n Using first model prediction: %@.", buf, 0x2Au);
    }

    v15 = [(CombinedHealthSequencePredictor *)self parseModelOutputName:outputCopy];
    v16 = [v15 objectForKey:@"health_metric"];
    v17 = sub_10001F2F8(v16);

    if (v17)
    {
      v37 = v13;
      [v13 floatValue];
      v19 = v18;
      [v17 floatValue];
      *&v21 = v19 - v20;
      v22 = [NSNumber numberWithFloat:v21];
      v23 = self->_logger;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v35 = v23;
        v36 = [paramsCopy objectForKeyedSubscript:@"PredictionDurationDays"];
        *buf = 138413058;
        v39 = v36;
        v40 = 2112;
        v41 = v37;
        v42 = 2112;
        v43 = v17;
        v44 = 2112;
        v45 = v22;
        _os_log_debug_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Lookback days = %@, predictedVal = %@, true currentVal = %@, error = %@", buf, 0x2Au);
      }

      [v9 setObject:v22 forKeyedSubscript:{@"prediction_error", v36}];
      [v22 doubleValue];
      v25 = [NSNumber numberWithDouble:fabs(v24)];
      [v9 setObject:v25 forKeyedSubscript:@"prediction_error_absolute"];

      version = [(CombinedHealthSequencePredictor *)self version];
      [v9 setObject:version forKeyedSubscript:@"model_id"];

      name = [(CombinedHealthSequencePredictor *)self name];
      [v9 setObject:name forKeyedSubscript:@"model_name"];

      v28 = [paramsCopy objectForKeyedSubscript:@"PredictionDurationDays"];
      [v9 setObject:v28 forKeyedSubscript:@"prediction_duration"];

      [v9 setObject:outputCopy forKeyedSubscript:@"prediction_output_name"];
      v29 = v9;

      v13 = v37;
    }

    else
    {
      v31 = self->_logger;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_10002E480(v31, v15);
      }

      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

LABEL_21:

  return v29;
}

@end