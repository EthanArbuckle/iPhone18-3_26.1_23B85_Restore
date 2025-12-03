@interface OcvDriftEstimator
+ (id)sharedPredictor;
- (OcvDriftEstimator)init;
- (id)_copyFeatures;
- (id)getPayloadForPPSWithParams:(id)params andPredictionValue:(id)value;
- (void)predictAndRecordWithParams:(id)params;
@end

@implementation OcvDriftEstimator

+ (id)sharedPredictor
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C8A4;
  block[3] = &unk_100048718;
  block[4] = self;
  if (qword_100057988 != -1)
  {
    dispatch_once(&qword_100057988, block);
  }

  v2 = qword_100057980;

  return v2;
}

- (OcvDriftEstimator)init
{
  v3 = os_transaction_create();
  v30.receiver = self;
  v30.super_class = OcvDriftEstimator;
  v4 = [(OcvDriftEstimator *)&v30 init];
  if (v4)
  {
    v5 = sub_10001DEC4("ocv-drift-predictor");
    logger = v4->_logger;
    v4->_logger = v5;

    [(OcvDriftEstimator *)v4 setLogToCoreAnalytics:0];
    [(OcvDriftEstimator *)v4 setLogToPPS:1];
    [(OcvDriftEstimator *)v4 setName:@"ocv_drift_model"];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    name = [(OcvDriftEstimator *)v4 name];
    v9 = [v7 pathForResource:name ofType:@"mlmodelc"];

    if (v9)
    {
      v10 = [NSURL fileURLWithPath:v9];
      v11 = [MLModel modelWithContentsOfURL:v10 error:0];

      if (v11)
      {
        modelDescription = [v11 modelDescription];
        metadata = [modelDescription metadata];

        if (metadata)
        {
          modelDescription2 = [v11 modelDescription];
          metadata2 = [modelDescription2 metadata];
          v16 = [metadata2 objectForKeyedSubscript:MLModelVersionStringKey];
          [(OcvDriftEstimator *)v4 setVersion:v16];
        }

        else
        {
          v20 = v4->_logger;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            sub_10002E06C(v20);
          }
        }

        modelDescription3 = [v11 modelDescription];
        predictedFeatureName = [modelDescription3 predictedFeatureName];

        if (predictedFeatureName)
        {
          v23 = [NSArray alloc];
          modelDescription4 = [v11 modelDescription];
          predictedFeatureName2 = [modelDescription4 predictedFeatureName];
          v26 = [predictedFeatureName2 copy];
          v27 = [v23 initWithObjects:{v26, 0}];
          [(OcvDriftEstimator *)v4 setPredictedFeatureNames:v27];
        }

        else
        {
          v28 = v4->_logger;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            sub_10002E0FC(v28);
          }
        }

        v17 = v4;
      }

      else
      {
        v19 = v4->_logger;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10002E18C(v19);
        }

        v17 = 0;
      }
    }

    else
    {
      v18 = v4->_logger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10002E21C(v18);
      }

      v17 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10002E604();
    }

    v17 = 0;
  }

  return v17;
}

- (id)_copyFeatures
{
  v2 = sub_10001E974();
  v3 = sub_10001E92C();
  v4 = sub_10001E710();
  v5 = sub_10001EB8C();
  v6 = sub_10001EC44();
  v7 = sub_10001EBD8();
  v8 = sub_10001EB04();
  *&v9 = v7;
  v10 = [NSNumber numberWithFloat:v9];
  v38[0] = v10;
  *&v11 = v8 / 168.0;
  v12 = [NSNumber numberWithFloat:v11];
  v38[1] = v12;
  *&v13 = v5;
  v14 = [NSNumber numberWithFloat:v13];
  v38[2] = v14;
  *&v15 = v2;
  v16 = [NSNumber numberWithFloat:v15];
  v38[3] = v16;
  *&v17 = v4 / 1000.0;
  v18 = [NSNumber numberWithFloat:v17];
  v38[4] = v18;
  *&v19 = v3 / 1000.0;
  v20 = [NSNumber numberWithFloat:v19];
  v38[5] = v20;
  *&v21 = v6 / 10.0;
  v22 = [NSNumber numberWithFloat:v21];
  v38[6] = v22;
  v23 = [NSArray arrayWithObjects:v38 count:7];

  v37 = &off_10004D510;
  v24 = [NSArray arrayWithObjects:&v37 count:1];
  v33 = 0;
  v25 = [[MLMultiArray alloc] initWithShape:v24 dataType:65568 error:&v33];
  v32 = v33;
  if ([&off_10004D510 unsignedIntValue])
  {
    v26 = 0;
    do
    {
      v27 = [v23 objectAtIndexedSubscript:v26];
      v28 = [NSNumber numberWithUnsignedInteger:v26];
      v36 = v28;
      v29 = [NSArray arrayWithObjects:&v36 count:1];
      [v25 setObject:v27 forKeyedSubscript:v29];

      ++v26;
    }

    while (v26 < [&off_10004D510 unsignedIntValue]);
  }

  v34 = @"Input";
  v35 = v25;
  v30 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];

  return v30;
}

- (void)predictAndRecordWithParams:(id)params
{
  v4 = os_transaction_create();
  _copyFeatures = [(OcvDriftEstimator *)self _copyFeatures];
  logger = self->_logger;
  if (_copyFeatures)
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_DEBUG))
    {
      sub_100031790();
    }

    v20 = 0;
    v7 = [[MLDictionaryFeatureProvider alloc] initWithDictionary:_copyFeatures error:&v20];
    v8 = v20;
    if (v7)
    {
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      name = [(OcvDriftEstimator *)self name];
      v11 = [v9 pathForResource:name ofType:@"mlmodelc"];

      v12 = [NSURL fileURLWithPath:v11];
      v13 = [MLModel modelWithContentsOfURL:v12 error:0];

      v19 = v8;
      v14 = [v13 predictionFromFeatures:v7 error:&v19];
      v15 = v19;

      if (v15 && os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_100031804();
      }

      v16 = [v14 featureValueForName:@"Prediction"];
      v17 = self->_logger;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v22 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "OCV model ouput: %@", buf, 0xCu);
      }

      if (self->_logToPPS)
      {
        v18 = [(OcvDriftEstimator *)self getPayloadForPPSWithParams:0 andPredictionValue:v16];
        [BIMetricRecorder sendToPPS:v18 forIdentifier:@"OCVDrift"];
      }
    }

    else
    {
      if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
      {
        sub_10002E8D0();
      }

      v15 = v8;
    }
  }

  else
  {
    if (os_log_type_enabled(self->_logger, OS_LOG_TYPE_ERROR))
    {
      sub_100031874();
    }

    v15 = 0;
  }
}

- (id)getPayloadForPPSWithParams:(id)params andPredictionValue:(id)value
{
  valueCopy = value;
  v6 = +[NSMutableDictionary dictionary];
  version = [(OcvDriftEstimator *)self version];
  [v6 setObject:version forKeyedSubscript:@"model_id"];

  name = [(OcvDriftEstimator *)self name];
  [v6 setObject:name forKeyedSubscript:@"model_name"];

  multiArrayValue = [valueCopy multiArrayValue];
  v10 = objc_alloc_init(NSMutableArray);
  if ([multiArrayValue count])
  {
    v11 = 0;
    do
    {
      v12 = [multiArrayValue objectAtIndexedSubscript:v11];
      [v12 floatValue];
      *&v14 = v13 * 10000.0;
      v15 = [NSNumber numberWithFloat:v14];

      [v10 addObject:v15];
      ++v11;
    }

    while (v11 < [multiArrayValue count]);
  }

  [v6 setObject:v10 forKeyedSubscript:@"model_prediction"];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    v18 = 138412290;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, logger, OS_LOG_TYPE_INFO, "OCV model to log: %@", &v18, 0xCu);
  }

  return v6;
}

@end