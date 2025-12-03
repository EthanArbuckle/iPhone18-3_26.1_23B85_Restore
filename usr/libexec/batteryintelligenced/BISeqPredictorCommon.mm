@interface BISeqPredictorCommon
+ (id)sharedInstance;
- (BISeqPredictorCommon)init;
- (id)_copyFeaturesWithParams:(id)params modelName:(id)name error:(id *)error;
- (id)getInputNamesAndDimensionsForModel:(id)model;
- (id)getOutputNamesAndDimensionsForModel:(id)model;
- (id)runInferenceForModel:(id)model withParams:(id)params outputFeatureType:(int64_t)type;
@end

@implementation BISeqPredictorCommon

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004980;
  block[3] = &unk_100048718;
  block[4] = self;
  if (qword_1000578B0 != -1)
  {
    dispatch_once(&qword_1000578B0, block);
  }

  v2 = qword_1000578A8;

  return v2;
}

- (BISeqPredictorCommon)init
{
  v9.receiver = self;
  v9.super_class = BISeqPredictorCommon;
  v2 = [(BISeqPredictorCommon *)&v9 init];
  if (!v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002E604();
    }

    goto LABEL_8;
  }

  v3 = sub_10001DEC4("bimodelseqpredictorcommon");
  v4 = *(v2 + 2);
  *(v2 + 2) = v3;

  v5 = +[BIFeatures sharedInstance];
  [v2 setFeatureGen:v5];

  featureGen = [v2 featureGen];

  if (!featureGen)
  {
    if (os_log_type_enabled(*(v2 + 2), OS_LOG_TYPE_ERROR))
    {
      sub_10002E5C8();
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v7 = v2;
LABEL_9:

  return v7;
}

- (id)_copyFeaturesWithParams:(id)params modelName:(id)name error:(id *)error
{
  paramsCopy = params;
  nameCopy = name;
  if ([&off_10004CB38 containsObject:nameCopy])
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = v9;
    if (paramsCopy)
    {
      [v9 addEntriesFromDictionary:paramsCopy];
    }

    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      sub_10002E648(logger);
    }

    if (qword_1000578B8 && (+[NSDate now](NSDate, "now"), v12 = objc_claimAutoreleasedReturnValue(), [v12 timeIntervalSinceDate:qword_1000578B8], v14 = v13, v12, v14 < 86400.0))
    {
      [v10 setObject:&__kCFBooleanTrue forKeyedSubscript:@"UseCachedFeatures"];
      v15 = self->_logger;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *v32 = 0;
      v16 = "Using cached feature set";
    }

    else
    {
      [v10 setObject:&__kCFBooleanFalse forKeyedSubscript:@"UseCachedFeatures"];
      v15 = self->_logger;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *v32 = 0;
      v16 = "Regenerating new feature set";
    }

    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, v32, 2u);
LABEL_14:
    v18 = objc_alloc_init(NSMutableDictionary);
    if ([nameCopy isEqualToString:@"nccp_wra_qmaxp_seq_model"])
    {
      v19 = &off_10004CB50;
    }

    else
    {
      if (([nameCopy isEqualToString:@"state_estimation_model"] & 1) == 0)
      {
        if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
        {
          sub_10002E6CC();
        }

        v17 = 0;
        goto LABEL_38;
      }

      v19 = &off_10004CB68;
    }

    v20 = [(BISeqPredictorCommon *)self getInputNamesAndDimensionsForModel:nameCopy, *v32];
    v21 = [(BIFeatures *)self->_featureGen copyDailyHealthHistoryForFeatures:v19 withFeatureDimensions:v20 withParams:v10];
    if (v21)
    {
      [v18 addEntriesFromDictionary:v21];
      if (([nameCopy isEqualToString:@"nccp_wra_qmaxp_seq_model"] & 1) == 0 && !objc_msgSend(nameCopy, "isEqualToString:", @"state_estimation_model"))
      {
        goto LABEL_23;
      }

      v22 = [(BIFeatures *)self->_featureGen copyUsageHistory:&off_10004CB80 withFeatureDimensions:v20 withParams:v10];
      if (v22)
      {
        v23 = v22;
        [v18 addEntriesFromDictionary:v22];

LABEL_23:
        v24 = [v10 objectForKeyedSubscript:@"UseCachedFeatures"];
        bOOLValue = [v24 BOOLValue];

        if ((bOOLValue & 1) == 0)
        {
          v26 = +[NSDate now];
          v27 = qword_1000578B8;
          qword_1000578B8 = v26;
        }

        v28 = self->_logger;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *v32 = 138412290;
          *&v32[4] = v18;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "ML model input dict: %@", v32, 0xCu);
        }

        v17 = [v18 copy];
        v29 = 1;
LABEL_36:

        if (v29)
        {
          goto LABEL_37;
        }

LABEL_38:
        v30 = 0;
        goto LABEL_39;
      }

      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_10002E73C();
      }
    }

    else if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_10002E778();
    }

    v29 = 0;
    v17 = 0;
    goto LABEL_36;
  }

  v17 = 0;
LABEL_37:
  v17 = v17;
  v30 = v17;
LABEL_39:

  return v30;
}

- (id)getInputNamesAndDimensionsForModel:(id)model
{
  modelCopy = model;
  if ([modelCopy isEqualToString:@"qmaxp_seq_model"])
  {
    v25 = @"daily_history_input";
    v23[0] = &off_10004D168;
    v23[1] = &off_10004D180;
    v24[0] = @"qmaxpHistory";
    v24[1] = @"cycleCountHistory";
    v23[2] = &off_10004D198;
    v24[2] = @"ageHistory";
    v5 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];
    v26 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
LABEL_8:

    goto LABEL_9;
  }

  if ([modelCopy isEqualToString:@"nccp_wra_qmaxp_seq_model"])
  {
    v21[0] = @"daily_history_input";
    v19[0] = &off_10004D168;
    v19[1] = &off_10004D180;
    v20[0] = @"nccpHistory";
    v20[1] = @"wraHistory";
    v19[2] = &off_10004D198;
    v19[3] = &off_10004D1B0;
    v20[2] = @"qmaxpHistory";
    v20[3] = @"cycleCountHistory";
    v19[4] = &off_10004D1C8;
    v19[5] = &off_10004D1E0;
    v20[4] = @"ageHistory";
    v20[5] = @"timeSinceLastReadingDays";
    v5 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:6];
    v21[1] = @"usage_history_input";
    v22[0] = v5;
    v17[0] = &off_10004D168;
    v17[1] = &off_10004D180;
    v18[0] = @"voltageHistory";
    v18[1] = @"currentHistory";
    v17[2] = &off_10004D198;
    v17[3] = &off_10004D1B0;
    v18[2] = @"tempHistory";
    v18[3] = @"qHistory";
    v17[4] = &off_10004D1C8;
    v18[4] = @"timeSinceLastReadingMins";
    v7 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];
    v22[1] = v7;
    v8 = v22;
    v9 = v21;
LABEL_7:
    v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v9 count:2];

    goto LABEL_8;
  }

  if ([modelCopy isEqualToString:@"state_estimation_model"])
  {
    v15[0] = @"daily_history_input";
    v13[0] = &off_10004D168;
    v13[1] = &off_10004D180;
    v14[0] = @"cycleCountHistory";
    v14[1] = @"ageHistory";
    v13[2] = &off_10004D198;
    v14[2] = @"timeSinceLastReadingDays";
    v5 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
    v15[1] = @"usage_history_input";
    v16[0] = v5;
    v11[0] = &off_10004D168;
    v11[1] = &off_10004D180;
    v12[0] = @"voltageHistory";
    v12[1] = @"currentHistory";
    v11[2] = &off_10004D198;
    v11[3] = &off_10004D1B0;
    v12[2] = @"tempHistory";
    v12[3] = @"qHistory";
    v11[4] = &off_10004D1C8;
    v12[4] = @"timeSinceLastReadingMins";
    v7 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5];
    v16[1] = v7;
    v8 = v16;
    v9 = v15;
    goto LABEL_7;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    sub_10002E7B4();
  }

  v6 = 0;
LABEL_9:

  return v6;
}

- (id)getOutputNamesAndDimensionsForModel:(id)model
{
  modelCopy = model;
  if ([modelCopy isEqualToString:@"nccp_wra_qmaxp_seq_model"])
  {
    v24[0] = &off_10004D168;
    v24[1] = &off_10004D180;
    v25[0] = @"q10_nccp_forecast";
    v25[1] = @"q10_wra_forecast";
    v24[2] = &off_10004D198;
    v25[2] = @"q10_qmaxp_forecast";
    v26[0] = @"nccp_wra_qmaxp_q10_forecast";
    v5 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];
    v27[0] = v5;
    v26[1] = @"nccp_wra_qmaxp_q25_forecast";
    v22[0] = &off_10004D168;
    v22[1] = &off_10004D180;
    v23[0] = @"q25_nccp_forecast";
    v23[1] = @"q25_wra_forecast";
    v22[2] = &off_10004D198;
    v23[2] = @"q25_qmaxp_forecast";
    v6 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];
    v27[1] = v6;
    v26[2] = @"nccp_wra_qmaxp_q50_forecast";
    v20[0] = &off_10004D168;
    v20[1] = &off_10004D180;
    v21[0] = @"q50_nccp_forecast";
    v21[1] = @"q50_wra_forecast";
    v20[2] = &off_10004D198;
    v21[2] = @"q50_qmaxp_forecast";
    v7 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];
    v27[2] = v7;
    v26[3] = @"nccp_wra_qmaxp_q75_forecast";
    v18[0] = &off_10004D168;
    v18[1] = &off_10004D180;
    v19[0] = @"q75_nccp_forecast";
    v19[1] = @"q75_wra_forecast";
    v18[2] = &off_10004D198;
    v19[2] = @"q75_qmaxp_forecast";
    v8 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
    v27[3] = v8;
    v26[4] = @"nccp_wra_qmaxp_q90_forecast";
    v16[0] = &off_10004D168;
    v16[1] = &off_10004D180;
    v17[0] = @"q90_nccp_forecast";
    v17[1] = @"q90_wra_forecast";
    v16[2] = &off_10004D198;
    v17[2] = @"q90_qmaxp_forecast";
    v9 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];
    v27[4] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:5];

LABEL_5:
    goto LABEL_9;
  }

  if ([modelCopy isEqualToString:@"state_estimation_model"])
  {
    v12[0] = &off_10004D168;
    v12[1] = &off_10004D180;
    v13[0] = @"nccp";
    v13[1] = @"wra";
    v12[2] = &off_10004D198;
    v13[2] = @"qmaxp";
    v14 = @"health_state_estimation";
    v5 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
    v15 = v5;
    v10 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    goto LABEL_5;
  }

  if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
  {
    sub_10002E7B4();
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)runInferenceForModel:(id)model withParams:(id)params outputFeatureType:(int64_t)type
{
  modelCopy = model;
  paramsCopy = params;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v11 = logger;
    v12 = [paramsCopy objectForKeyedSubscript:@"PredictionDurationDays"];
    *buf = 138412546;
    v79 = modelCopy;
    v80 = 2112;
    v81 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Running inference for model %@ for prediction duration = %@ days", buf, 0x16u);
  }

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 pathForResource:modelCopy ofType:@"mlmodelc"];

  v15 = objc_alloc_init(MLModelConfiguration);
  [v15 setComputeUnits:1];
  v16 = [NSURL fileURLWithPath:v14];
  v17 = [MLModel modelWithContentsOfURL:v16 configuration:v15 error:0];

  v75 = 0;
  v18 = [(BISeqPredictorCommon *)self _copyFeaturesWithParams:paramsCopy modelName:modelCopy error:&v75];
  v19 = v75;
  v20 = v19;
  if (!v18)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_10002E940();
    }

    goto LABEL_9;
  }

  if (v19)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_10002E824();
    }

LABEL_9:
    v21 = 0;
    goto LABEL_10;
  }

  v74 = 0;
  v23 = [[MLDictionaryFeatureProvider alloc] initWithDictionary:v18 error:&v74];
  v24 = v74;
  v20 = v24;
  if (!v23)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_10002E8D0();
    }

    goto LABEL_9;
  }

  typeCopy = type;
  v73 = v24;
  [v17 predictionFromFeatures:v23 error:&v73];
  v26 = v25 = v23;
  v59 = v73;

  v63 = v25;
  v64 = v26;
  if (v26)
  {
    v27 = v25;
    v52 = v18;
    v53 = v17;
    v54 = v15;
    v55 = v14;
    v56 = paramsCopy;
    v28 = objc_alloc_init(NSMutableDictionary);
    v62 = [(BISeqPredictorCommon *)self getInputNamesAndDimensionsForModel:modelCopy];
    v57 = modelCopy;
    v61 = [(BISeqPredictorCommon *)self getOutputNamesAndDimensionsForModel:modelCopy];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = [v27 featureNames];
    v29 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = v27;
      v32 = *v70;
      do
      {
        for (i = 0; i != v30; i = i + 1)
        {
          if (*v70 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v69 + 1) + 8 * i);
          v35 = [v34 isEqualToString:@"scalar_input"];
          v36 = [v31 featureValueForName:v34];
          multiArrayValue = [v36 multiArrayValue];
          v38 = [v62 objectForKey:v34];
          if (v35)
          {
            [BITensor getValuesFrom2DMultiArray:multiArrayValue withFeatureNamesForDimensions:v38];
          }

          else
          {
            [BITensor getValuesFrom3DMultiArray:multiArrayValue withFeatureNamesForDimensions:v38];
          }
          v39 = ;

          [v28 addEntriesFromDictionary:v39];
          v31 = v63;
        }

        v30 = [obj countByEnumeratingWithState:&v69 objects:v77 count:16];
      }

      while (v30);
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    featureNames = [v64 featureNames];
    v41 = [featureNames countByEnumeratingWithState:&v65 objects:v76 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v66;
      do
      {
        for (j = 0; j != v42; j = j + 1)
        {
          if (*v66 != v43)
          {
            objc_enumerationMutation(featureNames);
          }

          v45 = *(*(&v65 + 1) + 8 * j);
          v46 = [v64 featureValueForName:v45];
          multiArrayValue2 = [v46 multiArrayValue];
          v48 = [v61 objectForKey:v45];
          v49 = [BITensor getValuesFrom3DMultiArray:multiArrayValue2 withFeatureNamesForDimensions:v48];

          [v28 addEntriesFromDictionary:v49];
        }

        v42 = [featureNames countByEnumeratingWithState:&v65 objects:v76 count:16];
      }

      while (v42);
    }

    sub_10001E3BC(v28, typeCopy);
    v21 = v64;
    v50 = v64;

    paramsCopy = v56;
    modelCopy = v57;
    v15 = v54;
    v14 = v55;
    v18 = v52;
    v17 = v53;
  }

  else
  {
    v51 = os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR);
    v21 = 0;
    if (v51)
    {
      sub_10002E894();
    }
  }

  v20 = v59;
LABEL_10:

  return v21;
}

@end