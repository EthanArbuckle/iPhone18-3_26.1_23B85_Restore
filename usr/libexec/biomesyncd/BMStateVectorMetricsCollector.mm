@interface BMStateVectorMetricsCollector
- (BMStateVectorMetricsCollector)initWithDatabase:(id)database activity:(id)activity;
- (id)computeStateVectorMetrics;
- (id)dateToRelativePositionDictionary;
- (id)validStreamNameMapping;
- (unint64_t)sizeOfSerializedStateVectorInBytes:(id)bytes;
- (unint64_t)timestampCountForStateVector:(id)vector;
- (void)computeAndSendStateVectorMetrics;
@end

@implementation BMStateVectorMetricsCollector

- (BMStateVectorMetricsCollector)initWithDatabase:(id)database activity:(id)activity
{
  databaseCopy = database;
  activityCopy = activity;
  v12.receiver = self;
  v12.super_class = BMStateVectorMetricsCollector;
  v9 = [(BMStateVectorMetricsCollector *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_database, database);
    objc_storeStrong(&v10->_activity, activity);
  }

  return v10;
}

- (void)computeAndSendStateVectorMetrics
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  computeStateVectorMetrics = [(BMStateVectorMetricsCollector *)self computeStateVectorMetrics];
  v3 = [computeStateVectorMetrics countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(computeStateVectorMetrics);
        }

        [BMCoreAnalyticsEvents sendCKRecordCRDTLog:*(*(&v7 + 1) + 8 * v6)];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [computeStateVectorMetrics countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)validStreamNameMapping
{
  v2 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = +[BMStreamSyncPolicy syncableStreamConfigurations];
  v3 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        streamIdentifier = [v7 streamIdentifier];
        syncPolicy = [v7 syncPolicy];
        if ([syncPolicy supportsTransport:3 direction:3])
        {
          [v2 setObject:streamIdentifier forKeyedSubscript:streamIdentifier];
          streamUUID = [v7 streamUUID];
          uUIDString = [streamUUID UUIDString];
          [v2 setObject:streamIdentifier forKeyedSubscript:uUIDString];

          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          legacyNames = [v7 legacyNames];
          v13 = [legacyNames countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v20;
            do
            {
              for (j = 0; j != v14; j = j + 1)
              {
                if (*v20 != v15)
                {
                  objc_enumerationMutation(legacyNames);
                }

                [v2 setObject:streamIdentifier forKeyedSubscript:*(*(&v19 + 1) + 8 * j)];
              }

              v14 = [legacyNames countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v14);
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  return v2;
}

- (id)computeStateVectorMetrics
{
  v41 = objc_opt_new();
  validStreamNameMapping = [(BMStateVectorMetricsCollector *)self validStreamNameMapping];
  allKeys = [validStreamNameMapping allKeys];
  v4 = [NSSet setWithArray:allKeys];

  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100048080(self, v4, v5);
  }

  dateToRelativePositionDictionary = [(BMStateVectorMetricsCollector *)self dateToRelativePositionDictionary];
  [(BMSyncDatabase *)self->_database locationsWithState:2];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v51 = 0u;
  v6 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v49;
    v37 = *v49;
    v38 = v4;
    do
    {
      v9 = 0;
      v42 = v7;
      do
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v48 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        streamName = [v10 streamName];
        v13 = [v4 containsObject:streamName];

        if (v13)
        {
          v45 = v11;
          v47 = [(BMSyncDatabase *)self->_database locationRowWithLocation:v10];
          v14 = [(BMSyncDatabase *)self->_database stateVectorForLocationRow:?];
          v15 = [v10 day];
          v16 = [dateToRelativePositionDictionary objectForKeyedSubscript:v15];
          v17 = v16;
          v18 = &off_10007F390;
          if (v16)
          {
            v18 = v16;
          }

          v19 = v18;

          v46 = v19;
          v59[0] = v19;
          v58[0] = @"relative_pos";
          v58[1] = @"state_vector_sites_cnt";
          clockVector = [v14 clockVector];
          allSiteIdentifiers = [clockVector allSiteIdentifiers];
          v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [allSiteIdentifiers count]);
          v59[1] = v22;
          v58[2] = @"state_vector_size_est";
          v23 = [NSNumber numberWithUnsignedInteger:[(BMStateVectorMetricsCollector *)self sizeOfSerializedStateVectorInBytes:v14]];
          v59[2] = v23;
          v58[3] = @"state_vector_timestamp_cnt";
          v24 = [NSNumber numberWithUnsignedInteger:[(BMStateVectorMetricsCollector *)self timestampCountForStateVector:v14]];
          v59[3] = v24;
          v58[4] = @"stream_name";
          [v10 streamName];
          v26 = v25 = self;
          v27 = [validStreamNameMapping objectForKeyedSubscript:v26];
          v59[4] = v27;
          v44 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:5];

          self = v25;
          v28 = __biome_log_for_category();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v30 = objc_opt_class();
            v31 = NSStringFromClass(v30);
            location = [v47 location];
            v33 = [location day];
            *buf = 138412802;
            v53 = v31;
            v54 = 2112;
            v55 = v33;
            v56 = 2112;
            v57 = v46;
            _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "%@ - locationRow with day: %@ has relativePosition: %@", buf, 0x20u);
          }

          v29 = __biome_log_for_category();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            *buf = 138412546;
            v53 = v35;
            v54 = 2112;
            v55 = v44;
            _os_log_debug_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "%@ - generated crdtLog: %@", buf, 0x16u);
          }

          [v41 addObject:v44];
          v8 = v37;
          v4 = v38;
          v7 = v42;
          v11 = v45;
        }

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v48 objects:v60 count:16];
    }

    while (v7);
  }

  return v41;
}

- (id)dateToRelativePositionDictionary
{
  v2 = objc_opt_new();
  v3 = [BMStreamCRDTLocationDayAssigner truncateDateToDay:CFAbsoluteTimeGetCurrent()];
  [v3 timeIntervalSinceReferenceDate];
  v5 = v4;
  v6 = 0;
  for (i = 0; i != 100; ++i)
  {
    v8 = [BMStreamCRDTLocationDayAssigner truncateDateToDay:v5 - v6];
    v9 = [NSNumber numberWithUnsignedInteger:i];
    [v2 setObject:v9 forKeyedSubscript:v8];

    v6 += 86400;
  }

  return v2;
}

- (unint64_t)sizeOfSerializedStateVectorInBytes:(id)bytes
{
  bytesCopy = bytes;
  v10 = 0;
  v5 = [NSKeyedArchiver archivedDataWithRootObject:bytesCopy requiringSecureCoding:1 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100048124(self, bytesCopy, v7);
    }
  }

  v8 = [v5 length];

  return v8;
}

- (unint64_t)timestampCountForStateVector:(id)vector
{
  vectorCopy = vector;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000FCB4;
  v6[3] = &unk_100078E40;
  v6[4] = &v7;
  [vectorCopy enumerateAllClockValuesUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end