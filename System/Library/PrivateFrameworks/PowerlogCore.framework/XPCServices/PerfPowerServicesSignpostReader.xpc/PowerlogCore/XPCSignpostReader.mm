@interface XPCSignpostReader
- (BOOL)isiPad;
- (XPCSignpostReader)init;
- (double)secondsFromMachTime:(unint64_t)a3;
- (id)createSignpostFile:(id)a3 withStartDate:(id)a4 withEndDate:(id)a5 withallowlist:(id)a6 withTagConfig:(id)a7;
- (id)getBundleIDFromEvent:(id)a3;
- (id)getBundleIDFromInterval:(id)a3;
- (id)getScrollDirectionForSignpostInterval:(id)a3;
- (id)gzipDeflate:(id)a3;
- (id)mxSignpostIntervalDataForTasking:(id)a3;
- (id)packageMXSignpostData;
- (id)processSignpostMetricsWithStartDate:(id)a3 withEndDate:(id)a4 processMXSignpost:(BOOL)a5;
- (id)signpostAnimationIntervalData:(id)a3 forTaskingConfig:(id)a4;
- (id)signpostIntervalData:(id)a3 forTaskingConfig:(id)a4;
- (id)signpostIntervalData:(id)a3 withBundleID:(id)a4;
- (id)subsystemCategoryAllowlist:(id)a3;
- (id)workflowDataForEventTracker:(id)a3;
- (id)workflowDataForSignpostTracker:(id)a3;
- (id)workflowDataForWREvent:(id)a3;
- (id)workflowDataForWRIncompleteInterval:(id)a3;
- (id)workflowDataForWRInterval:(id)a3;
- (int)writeSignpostFile:(id)a3 withOrder:(int)a4 withData:(id)a5;
- (void)aggregateSignpostData:(id)a3 withReply:(id)a4;
- (void)clearSACaches;
- (void)generateMSSReport:(id)a3 withReply:(id)a4 andOptions:(id)a5;
- (void)generateMSSReportForRAPID:(id)a3 withReply:(id)a4;
- (void)generateMSSReportForTasking:(id)a3 withReply:(id)a4;
- (void)initializeMetrics;
- (void)logAggdTelemetry;
- (void)processSignpostAnimationInterval:(id)a3;
- (void)processSignpostEvent:(id)a3;
- (void)processSignpostInterval:(id)a3;
- (void)readRawSignpostData:(id)a3 withReply:(id)a4;
- (void)removeFile:(id)a3;
- (void)storeAnimationInterval:(id)a3 forBundle:(id)a4;
- (void)submitSignpostDataWithConfig:(id)a3 withReply:(id)a4;
- (void)summarizeSignpostMetrics:(id)a3 withReply:(id)a4;
- (void)updateActivationsForProcess:(id)a3 withInterval:(id)a4;
- (void)updateExtendedLaunchesForProcess:(id)a3 withInterval:(id)a4;
- (void)updateHangsData:(id)a3 withInterval:(id)a4;
- (void)updateHangsForProcess:(id)a3 withInterval:(id)a4;
- (void)updateLaunchesForProcess:(id)a3 withInterval:(id)a4;
- (void)updateMXSignpostEventsForProcess:(id)a3 withEvent:(id)a4;
- (void)updateMXSignpostsForProcess:(id)a3 withInterval:(id)a4;
- (void)updateNormalizedGlitchScores;
- (void)updateProcessExitsForProcess:(id)a3 withEvent:(id)a4;
- (void)updateResumesForProcess:(id)a3 withInterval:(id)a4;
- (void)updateScrollGlitchesForProcess:(id)a3 withAnimationInterval:(id)a4;
- (void)updateTimeSeriesLaunches:(id)a3 withBundleID:(id)a4;
@end

@implementation XPCSignpostReader

- (XPCSignpostReader)init
{
  v9.receiver = self;
  v9.super_class = XPCSignpostReader;
  v2 = [(XPCSignpostReader *)&v9 init];
  if (v2)
  {
    signal(15, 1);
    v3 = dispatch_get_global_queue(21, 0);
    [(XPCSignpostReader *)v2 setSigterm_queue:v3];

    v4 = [(XPCSignpostReader *)v2 sigterm_queue];
    v5 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, v4);
    [(XPCSignpostReader *)v2 setSigterm_source:v5];

    v6 = [(XPCSignpostReader *)v2 sigterm_source];
    dispatch_source_set_event_handler(v6, &stru_100014450);

    v7 = [(XPCSignpostReader *)v2 sigterm_source];
    dispatch_activate(v7);
  }

  return v2;
}

- (void)updateProcessExitsForProcess:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLLogSignpostReader();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AADC();
  }

  v9 = [v7 string1Value];
  v10 = [v7 number1Value];
  v11 = [v7 number2Value];

  if (v9 && v10 && v11)
  {
    v29 = v9;
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isEqualToString:@"YES"]);
    v13 = [(NSMutableDictionary *)self->_processExits objectForKeyedSubscript:v6];

    if (!v13)
    {
      processExits = self->_processExits;
      v15 = objc_alloc_init(NSMutableDictionary);
      [(NSMutableDictionary *)processExits setObject:v15 forKey:v6];
    }

    v16 = [(NSMutableDictionary *)self->_processExits objectForKeyedSubscript:v6];
    v17 = [v16 objectForKeyedSubscript:v12];

    if (!v17)
    {
      v18 = [(NSMutableDictionary *)self->_processExits objectForKeyedSubscript:v6];
      v19 = objc_alloc_init(NSMutableDictionary);
      [v18 setObject:v19 forKey:v12];
    }

    v30[0] = v10;
    v30[1] = v11;
    v20 = [NSArray arrayWithObjects:v30 count:2];
    v21 = [(NSMutableDictionary *)self->_processExits objectForKeyedSubscript:v6];
    v22 = [v21 objectForKeyedSubscript:v12];
    [v22 objectForKeyedSubscript:v20];
    v28 = v10;
    v24 = v23 = v12;
    v25 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v24 unsignedIntegerValue] + 1);
    v26 = [(NSMutableDictionary *)self->_processExits objectForKeyedSubscript:v6];
    v27 = [v26 objectForKeyedSubscript:v23];
    [v27 setObject:v25 forKeyedSubscript:v20];

    v10 = v28;
    v9 = v29;
  }
}

- (void)updateLaunchesForProcess:(id)a3 withInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLLogSignpostReader();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AB44(v7);
  }

  v9 = [v7 number1Value];
  if (v9)
  {
    [v7 durationSeconds];
    v11 = (v10 * 1000.0);
    v12 = [(NSMutableDictionary *)self->_launches objectForKeyedSubscript:v6];
    if (v12)
    {
      v13 = v12;
      v14 = [(NSMutableDictionary *)self->_launches objectForKeyedSubscript:v6];
      v15 = [v14 objectForKeyedSubscript:v9];

      if (v15)
      {
        v16 = [(NSMutableDictionary *)self->_launches objectForKeyedSubscript:v6];
        v17 = [v16 objectForKeyedSubscript:v9];
        v18 = [NSNumber numberWithUnsignedLongLong:v11];
        [v17 addObject:v18];

LABEL_11:
        goto LABEL_12;
      }
    }

    v19 = [(NSMutableDictionary *)self->_launches objectForKeyedSubscript:v6];

    if (!v19)
    {
      v20 = +[NSMutableDictionary dictionary];
      [(NSMutableDictionary *)self->_launches setObject:v20 forKeyedSubscript:v6];
    }

    v21 = [(NSMutableDictionary *)self->_launches objectForKeyedSubscript:v6];
    v22 = [v21 objectForKeyedSubscript:v9];

    if (!v22)
    {
      v16 = +[NSMutableArray array];
      v23 = [NSNumber numberWithUnsignedLongLong:v11];
      [v16 addObject:v23];

      v17 = [(NSMutableDictionary *)self->_launches objectForKeyedSubscript:v6];
      [v17 setObject:v16 forKeyedSubscript:v9];
      goto LABEL_11;
    }
  }

LABEL_12:
}

- (void)updateExtendedLaunchesForProcess:(id)a3 withInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLLogSignpostReader();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AC0C(v7, v8);
  }

  v9 = [v7 string2Value];
  v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isEqualToString:@"YES"]);
  [v7 durationSeconds];
  v12 = (v11 * 1000.0);
  v13 = [(NSMutableDictionary *)self->_extendedLaunches objectForKeyedSubscript:v6];
  if (v13)
  {
    v14 = v13;
    v15 = [(NSMutableDictionary *)self->_extendedLaunches objectForKeyedSubscript:v6];
    v16 = [v15 objectForKeyedSubscript:v10];

    if (v16)
    {
      v17 = [(NSMutableDictionary *)self->_extendedLaunches objectForKeyedSubscript:v6];
      v18 = [v17 objectForKeyedSubscript:v10];
      v19 = [NSNumber numberWithUnsignedLongLong:v12];
      [v18 addObject:v19];

LABEL_10:
      goto LABEL_11;
    }
  }

  v20 = [(NSMutableDictionary *)self->_extendedLaunches objectForKeyedSubscript:v6];

  if (!v20)
  {
    v21 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->_extendedLaunches setObject:v21 forKeyedSubscript:v6];
  }

  v22 = [(NSMutableDictionary *)self->_extendedLaunches objectForKeyedSubscript:v6];
  v23 = [v22 objectForKeyedSubscript:v10];

  if (!v23)
  {
    v17 = +[NSMutableArray array];
    v24 = [NSNumber numberWithUnsignedLongLong:v12];
    [v17 addObject:v24];

    v18 = [(NSMutableDictionary *)self->_extendedLaunches objectForKeyedSubscript:v6];
    [v18 setObject:v17 forKeyedSubscript:v10];
    goto LABEL_10;
  }

LABEL_11:
}

- (void)updateActivationsForProcess:(id)a3 withInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLLogSignpostReader();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AD04(v7);
  }

  v9 = [v7 number1Value];
  v10 = [v7 string2Value];
  v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v10 isEqualToString:@"YES"]);

  [v7 durationSeconds];
  v13 = v12;
  v14 = [(NSMutableDictionary *)self->_activations objectForKeyedSubscript:v6];

  if (!v14)
  {
    v15 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->_activations setObject:v15 forKeyedSubscript:v6];
  }

  v16 = [(NSMutableDictionary *)self->_activations objectForKeyedSubscript:v6];
  v17 = [v16 objectForKeyedSubscript:v11];

  if (!v17)
  {
    v18 = +[NSMutableDictionary dictionary];
    v19 = [(NSMutableDictionary *)self->_activations objectForKeyedSubscript:v6];
    [v19 setObject:v18 forKeyedSubscript:v11];
  }

  v20 = [(NSMutableDictionary *)self->_activations objectForKeyedSubscript:v6];
  v21 = [v20 objectForKeyedSubscript:v11];
  v22 = [v21 objectForKeyedSubscript:v9];

  if (!v22)
  {
    v23 = +[NSMutableArray array];
    v24 = [(NSMutableDictionary *)self->_activations objectForKeyedSubscript:v6];
    v25 = [v24 objectForKeyedSubscript:v11];
    [v25 setObject:v23 forKeyedSubscript:v9];
  }

  v26 = [(NSMutableDictionary *)self->_activations objectForKeyedSubscript:v6];
  v27 = [v26 objectForKeyedSubscript:v11];
  v28 = [v27 objectForKeyedSubscript:v9];
  v29 = [NSNumber numberWithUnsignedLongLong:(v13 * 1000.0)];
  [v28 addObject:v29];
}

- (void)updateResumesForProcess:(id)a3 withInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLLogSignpostReader();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000ADCC(v7);
  }

  [v7 durationSeconds];
  v10 = (v9 * 1000.0);
  v11 = [(NSMutableDictionary *)self->_resumes objectForKeyedSubscript:v6];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_resumes objectForKeyedSubscript:v6];
    v13 = [NSNumber numberWithUnsignedLongLong:v10];
    [v12 addObject:v13];
  }

  else
  {
    v12 = objc_alloc_init(NSMutableArray);
    v14 = [NSNumber numberWithUnsignedLongLong:v10];
    [v12 addObject:v14];

    [(NSMutableDictionary *)self->_resumes setObject:v12 forKey:v6];
  }
}

- (void)updateHangsForProcess:(id)a3 withInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLLogSignpostReader();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AE70(v7);
  }

  [v7 durationSeconds];
  v10 = (v9 * 1000.0);
  v11 = [(NSMutableDictionary *)self->_hangs objectForKeyedSubscript:v6];

  if (v11)
  {
    v12 = [(NSMutableDictionary *)self->_hangs objectForKeyedSubscript:v6];
    v13 = [NSNumber numberWithUnsignedLongLong:v10];
    [v12 addObject:v13];
  }

  else
  {
    v12 = objc_alloc_init(NSMutableArray);
    v14 = [NSNumber numberWithUnsignedLongLong:v10];
    [v12 addObject:v14];

    [(NSMutableDictionary *)self->_hangs setObject:v12 forKey:v6];
  }
}

- (void)storeAnimationInterval:(id)a3 forBundle:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:v6];

  if (!v7)
  {
    glitches = self->_glitches;
    v9 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)glitches setObject:v9 forKey:v6];
  }

  v10 = [(NSMutableDictionary *)self->_uniqueAnimationIntervalsByProcess objectForKeyedSubscript:v6];

  uniqueAnimationIntervalsByProcess = self->_uniqueAnimationIntervalsByProcess;
  if (!v10)
  {
    v12 = objc_alloc_init(NSMutableArray);
    [(NSMutableDictionary *)uniqueAnimationIntervalsByProcess setObject:v12 forKey:v6];

    uniqueAnimationIntervalsByProcess = self->_uniqueAnimationIntervalsByProcess;
  }

  v13 = [(NSMutableDictionary *)uniqueAnimationIntervalsByProcess objectForKeyedSubscript:v6];
  [v13 addObject:v14];
}

- (void)updateNormalizedGlitchScores
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(NSMutableDictionary *)self->_uniqueAnimationIntervalsByProcess allKeys];
  v3 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v33;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v33 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v32 + 1) + 8 * i);
        v8 = [NSMutableArray alloc];
        v9 = [(NSMutableDictionary *)self->_uniqueAnimationIntervalsByProcess objectForKeyedSubscript:v7];
        v10 = [SignpostAnimationInterval unionOfAnimationIntervals:v9];
        v11 = [v8 initWithArray:v10];
        [(NSMutableDictionary *)self->_uniqueAnimationIntervalsByProcess setObject:v11 forKeyedSubscript:v7];

        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v12 = [(NSMutableDictionary *)self->_uniqueAnimationIntervalsByProcess objectForKeyedSubscript:v7];
        v13 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v29;
          v16 = 0.0;
          v17 = 0.0;
          do
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v29 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v19 = *(*(&v28 + 1) + 8 * j);
              [v19 durationSeconds];
              v17 = v17 + v20;
              [v19 nonFirstFrameContributedGlitchTimeRatioAdjustedMsPerS];
              v22 = v21;
              [v19 durationSeconds];
              v16 = v16 + v22 * v23;
            }

            v14 = [v12 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v14);

          if (v17 > 0.0)
          {
            v24 = (v16 / v17);
            goto LABEL_17;
          }
        }

        else
        {
        }

        v24 = 0;
LABEL_17:
        v25 = [NSNumber numberWithUnsignedLongLong:v24];
        v26 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:v7];
        [v26 setObject:v25 forKeyedSubscript:@"glitchTimeRatio"];
      }

      v4 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v4);
  }
}

- (void)updateScrollGlitchesForProcess:(id)a3 withAnimationInterval:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:v6];

  if (!v8)
  {
    glitches = self->_glitches;
    v10 = objc_alloc_init(NSMutableDictionary);
    [(NSMutableDictionary *)glitches setObject:v10 forKey:v6];
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v11 = [v7 glitches];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100003370;
  v35[3] = &unk_100014498;
  v35[4] = &v36;
  [v11 enumerateObjectsUsingBlock:v35];

  [v7 durationSeconds];
  v13 = v12;
  v14 = v37[3];
  v15 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:v6];
  v16 = [v15 objectForKeyedSubscript:@"glitchDuration"];
  v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", v14 + [v16 unsignedIntValue]);
  v18 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:v6];
  [v18 setObject:v17 forKeyedSubscript:@"glitchDuration"];

  v19 = [v7 glitches];
  v20 = [v19 count];
  v21 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:v6];
  v22 = [v21 objectForKeyedSubscript:@"glitchCount"];
  v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", &v20[[v22 unsignedIntValue]]);
  v24 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:v6];
  [v24 setObject:v23 forKeyedSubscript:@"glitchCount"];

  v25 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:v6];
  v26 = [v25 objectForKeyedSubscript:@"scrollDuration"];
  v27 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", (v13 * 1000.0) + [v26 unsignedIntValue]);
  v28 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:v6];
  [v28 setObject:v27 forKeyedSubscript:@"scrollDuration"];

  v29 = [v7 beginEvent];
  v30 = [v29 name];
  LODWORD(v27) = [v30 isEqualToString:@"Scroll_Dragging"];

  if (v27)
  {
    v31 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:v6];
    v32 = [v31 objectForKeyedSubscript:@"scrollCount"];
    v33 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v32 unsignedIntValue] + 1);
    v34 = [(NSMutableDictionary *)self->_glitches objectForKeyedSubscript:v6];
    [v34 setObject:v33 forKeyedSubscript:@"scrollCount"];
  }

  _Block_object_dispose(&v36, 8);
}

- (void)updateMXSignpostsForProcess:(id)a3 withInterval:(id)a4
{
  v41 = a3;
  v6 = a4;
  v7 = qword_100019458++;
  if (v7 <= 49999)
  {
    v8 = [(NSMutableDictionary *)self->_summarizedSignpostDurations objectForKeyedSubscript:v41];

    if (!v8)
    {
      summarizedSignpostDurations = self->_summarizedSignpostDurations;
      v10 = objc_alloc_init(NSMutableDictionary);
      [(NSMutableDictionary *)summarizedSignpostDurations setObject:v10 forKey:v41];

      summarizedSignpostMetrics = self->_summarizedSignpostMetrics;
      v12 = objc_alloc_init(NSMutableDictionary);
      [(NSMutableDictionary *)summarizedSignpostMetrics setObject:v12 forKey:v41];

      numAppSignposts = self->_numAppSignposts;
      v14 = objc_alloc_init(SignpostCounter);
      [(NSMutableDictionary *)numAppSignposts setObject:v14 forKey:v41];
    }

    v15 = [(NSMutableDictionary *)self->_numAppSignposts objectForKeyedSubscript:v41];
    v16 = v15[1];
    v15[1] = v16 + 1;
    if (v16 > 999)
    {
      goto LABEL_26;
    }

    v17 = [v6 category];
    if (v17)
    {
      v18 = [v6 category];
    }

    else
    {
      v18 = &stru_1000149D0;
    }

    v19 = [v6 name];
    if (v19)
    {
      v20 = [v6 name];
      v21 = [NSArray arrayWithObjects:v18, v20, 0];
    }

    else
    {
      v21 = [NSArray arrayWithObjects:v18, &stru_1000149D0, 0];
    }

    if (v17)
    {
    }

    v22 = [(NSMutableDictionary *)self->_summarizedSignpostDurations objectForKeyedSubscript:v41];
    v23 = [v22 objectForKeyedSubscript:v21];

    if (!v23)
    {
      v23 = objc_alloc_init(NSMutableArray);
      v24 = [(NSMutableDictionary *)self->_summarizedSignpostDurations objectForKeyedSubscript:v41];
      [v24 setObject:v23 forKey:v21];
    }

    [v6 durationSeconds];
    v26 = [NSNumber numberWithUnsignedLongLong:(v25 * 1000.0)];
    [v23 addObject:v26];

    v27 = [v6 beginEvent];
    v28 = [v27 metrics];
    if (v28)
    {
      v29 = v28;
      v30 = [v6 endEvent];
      v31 = [v30 metrics];

      if (!v31)
      {
LABEL_25:

LABEL_26:
        goto LABEL_27;
      }

      v32 = [(NSMutableDictionary *)self->_summarizedSignpostMetrics objectForKeyedSubscript:v41];
      v27 = [v32 objectForKeyedSubscript:v21];

      [v15 updateMxSignpostOverlapStatistics:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v6;
      }

      else
      {
        v33 = 0;
      }

      if (v27)
      {
        v34 = v33;
        v35 = [v6 beginEvent];
        v36 = [v6 endEvent];
        [v27 updateSummary:v35 endSnapshot:v36 animationInterval:v34];
      }

      else
      {
        v37 = self->_summarizedSignpostMetrics;
        v38 = v33;
        v35 = [(NSMutableDictionary *)v37 objectForKeyedSubscript:v41];
        v39 = [SignpostIntervalMetrics alloc];
        v36 = [v6 beginEvent];
        v34 = [v6 endEvent];
        v40 = [(SignpostIntervalMetrics *)v39 initWithBeginSnapshot:v36 endSnapshot:v34 animationInterval:v38];

        [v35 setObject:v40 forKey:v21];
      }
    }

    goto LABEL_25;
  }

LABEL_27:
}

- (void)updateMXSignpostEventsForProcess:(id)a3 withEvent:(id)a4
{
  v25 = a3;
  v6 = a4;
  v7 = qword_100019458++;
  if (v7 <= 49999)
  {
    v8 = [(NSMutableDictionary *)self->_summarizedSignpostEvents objectForKeyedSubscript:v25];

    if (!v8)
    {
      summarizedSignpostEvents = self->_summarizedSignpostEvents;
      v10 = objc_alloc_init(NSMutableDictionary);
      [(NSMutableDictionary *)summarizedSignpostEvents setObject:v10 forKey:v25];

      numAppSignposts = self->_numAppSignposts;
      v12 = objc_alloc_init(SignpostCounter);
      [(NSMutableDictionary *)numAppSignposts setObject:v12 forKey:v25];
    }

    v13 = [(NSMutableDictionary *)self->_numAppSignposts objectForKeyedSubscript:v25];
    v14 = v13[1];
    v13[1] = v14 + 1;
    if (v14 <= 999)
    {
      v15 = [v6 category];
      if (v15)
      {
        v16 = [v6 category];
      }

      else
      {
        v16 = &stru_1000149D0;
      }

      v17 = [v6 name];
      if (v17)
      {
        v18 = [v6 name];
        v19 = [NSArray arrayWithObjects:v16, v18, 0];
      }

      else
      {
        v19 = [NSArray arrayWithObjects:v16, &stru_1000149D0, 0];
      }

      if (v15)
      {
      }

      v20 = [(NSMutableDictionary *)self->_summarizedSignpostEvents objectForKeyedSubscript:v25];
      v21 = [v20 objectForKeyedSubscript:v19];

      v22 = [(NSMutableDictionary *)self->_summarizedSignpostEvents objectForKeyedSubscript:v25];
      v23 = v22;
      if (v21)
      {
        v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v21 integerValue] + 1);
        [v23 setObject:v24 forKey:v19];
      }

      else
      {
        [v22 setObject:&off_100015A10 forKey:v19];
      }
    }
  }
}

- (id)signpostIntervalData:(id)a3 withBundleID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  [v7 setObject:v6 forKeyedSubscript:@"bundleID"];

  v8 = [v5 number1Value];
  [v7 setObject:v8 forKeyedSubscript:@"IsForeground"];

  v9 = [v5 beginDate];
  [v7 setObject:v9 forKeyedSubscript:@"beginDate"];

  [v5 durationSeconds];
  v11 = [NSNumber numberWithUnsignedLongLong:(v10 * 1000.0)];
  [v7 setObject:v11 forKeyedSubscript:@"duration"];

  v12 = PLLogSignpostReader();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10000AF14(v5);
  }

  return v7;
}

- (void)updateTimeSeriesLaunches:(id)a3 withBundleID:(id)a4
{
  v5 = [(XPCSignpostReader *)self signpostIntervalData:a3 withBundleID:a4];
  [(NSMutableArray *)self->_launchTimeSeries addObject:v5];
}

- (void)processSignpostEvent:(id)a3
{
  v10 = a3;
  v4 = [v10 name];
  v5 = [v4 isEqualToString:@"ProcessExited"];

  if (v5)
  {
    v6 = [v10 attributes];
    v7 = [v6 objectForKey:@"BundleIdOverride"];

    if (v7)
    {
      [(XPCSignpostReader *)self updateProcessExitsForProcess:v7 withEvent:v10];
    }
  }

  else
  {
    v8 = [v10 subsystem];
    v9 = [v8 isEqualToString:@"com.apple.metrickit.log"];

    if (!v9)
    {
      goto LABEL_8;
    }

    v7 = [(XPCSignpostReader *)self getBundleIDFromEvent:v10];
    if (v7)
    {
      [(XPCSignpostReader *)self updateMXSignpostEventsForProcess:v7 withEvent:v10];
    }
  }

LABEL_8:
}

- (void)processSignpostInterval:(id)a3
{
  v27 = a3;
  v4 = [(XPCSignpostReader *)self getBundleIDFromInterval:?];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = [v27 name];
  v6 = [v5 isEqualToString:@"ApplicationFirstFramePresentation"];

  if (v6)
  {
    [(XPCSignpostReader *)self updateLaunchesForProcess:v4 withInterval:v27];
  }

  v7 = [v27 name];
  v8 = [v7 isEqualToString:@"ApplicationLaunchExtendedResponsive"];

  if (v8)
  {
    [(XPCSignpostReader *)self updateTimeSeriesLaunches:v27 withBundleID:v4];
  }

  v9 = [v27 beginEvent];
  v10 = [v9 string2Value];
  if (v10)
  {
    v11 = v10;
    v12 = [v27 endEvent];
    v13 = [v12 number1Value];
    if ([v13 intValue] == 1)
    {
      v14 = [v27 beginEvent];
      v15 = [v14 name];
      v16 = [v15 isEqualToString:@"AppLaunch"];

      if (v16)
      {
        [(XPCSignpostReader *)self updateExtendedLaunchesForProcess:v4 withInterval:v27];
        goto LABEL_20;
      }

      goto LABEL_12;
    }
  }

LABEL_12:
  v17 = [v27 beginEvent];
  v18 = [v17 name];
  v19 = [v18 isEqualToString:@"AppResume"];

  if (v19)
  {
    [(XPCSignpostReader *)self updateResumesForProcess:v4 withInterval:v27];
  }

  else
  {
    v20 = [v27 name];
    v21 = [v20 isEqualToString:@"ApplicationActivationFirstFramePresentation"];

    if (v21)
    {
      [(XPCSignpostReader *)self updateActivationsForProcess:v4 withInterval:v27];
    }

    else
    {
      v22 = [v27 beginEvent];
      v23 = [v22 name];
      v24 = [v23 isEqualToString:@"HangInterval"];

      if (v24)
      {
        [(XPCSignpostReader *)self updateHangsForProcess:v4 withInterval:v27];
      }

      else
      {
        v25 = [v27 subsystem];
        v26 = [v25 isEqualToString:@"com.apple.metrickit.log"];

        if (v26)
        {
          [(XPCSignpostReader *)self updateMXSignpostsForProcess:v4 withInterval:v27];
        }
      }
    }
  }

LABEL_20:
}

- (void)processSignpostAnimationInterval:(id)a3
{
  v12 = a3;
  v4 = [(XPCSignpostReader *)self getBundleIDFromInterval:?];
  if (v4)
  {
    [(XPCSignpostReader *)self storeAnimationInterval:v12 forBundle:v4];
    v5 = [v12 subsystem];
    v6 = [v5 isEqualToString:@"com.apple.metrickit.log"];

    if (v6)
    {
      [(XPCSignpostReader *)self updateMXSignpostsForProcess:v4 withInterval:v12];
      goto LABEL_8;
    }

    v7 = [v12 beginEvent];
    v8 = [v7 name];
    if ([v8 isEqualToString:@"Scroll_Dragging"])
    {
    }

    else
    {
      v9 = [v12 beginEvent];
      v10 = [v9 name];
      v11 = [v10 isEqualToString:@"Scroll_Deceleration"];

      if (!v11)
      {
        goto LABEL_8;
      }
    }

    [(XPCSignpostReader *)self updateScrollGlitchesForProcess:v4 withAnimationInterval:v12];
  }

LABEL_8:
}

- (void)summarizeSignpostMetrics:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = PLLogSignpostReader();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "spun up xpc svc", v17, 2u);
  }

  v9 = [v7 objectForKeyedSubscript:@"process_mxsignpost"];
  v10 = [v9 BOOLValue];

  v11 = [v7 objectForKey:@"end_date"];
  v12 = [v7 objectForKey:@"start_date"];

  if (v11 && v12 && ([v12 timeIntervalSince1970], v14 = v13, objc_msgSend(v11, "timeIntervalSince1970"), v14 <= v15))
  {
    v16 = [(XPCSignpostReader *)self processSignpostMetricsWithStartDate:v12 withEndDate:v11 processMXSignpost:v10];
    [v16 setObject:v11 forKey:@"EndDate"];
    v6[2](v6, v16);
  }

  else
  {
    v6[2](v6, &__NSDictionary0__struct);
  }
}

- (id)processSignpostMetricsWithStartDate:(id)a3 withEndDate:(id)a4 processMXSignpost:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  v9 = a3;
  [(XPCSignpostReader *)self initializeMetrics];
  v10 = objc_alloc_init(SignpostSupportObjectExtractor);
  [v10 setShouldComposeMetadataString:0];
  v11 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
  [v11 addSubsystem:@"com.apple.FrontBoard" category:@"AppLaunch"];
  [v11 addSubsystem:@"com.apple.UIKit" category:@"AppLifecycle"];
  [v11 addSubsystem:@"com.apple.UIKit" category:@"ScrollView"];
  [v11 addSubsystem:@"com.apple.Foundation" category:@"NSProcessInfoInteractionTracking"];
  [v11 addSubsystem:@"com.apple.runningboard" category:@"sp_telemetry"];
  [v11 addSubsystem:@"com.apple.app_launch_measurement" category:@"ApplicationLaunch"];
  [v11 addSubsystem:@"com.apple.hangtracer" category:@"always_on_hang"];
  if (v5)
  {
    [v11 addSubsystem:@"com.apple.metrickit.log" category:0];
  }

  [v10 setSubsystemCategoryFilter:v11];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100004624;
  v21[3] = &unk_1000144C0;
  v21[4] = self;
  [v10 setEmitEventProcessingBlock:v21];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100004648;
  v20[3] = &unk_1000144E8;
  v20[4] = self;
  [v10 setIntervalCompletionProcessingBlock:v20];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000466C;
  v19[3] = &unk_100014510;
  v19[4] = self;
  [v10 setAnimationIntervalCompletionProcessingBlock:v19];
  v18 = 0;
  v12 = [v10 processLogArchiveWithPath:0 startDate:v9 endDate:v8 errorOut:&v18];

  v13 = v18;
  if (v12)
  {
    [(XPCSignpostReader *)self updateNormalizedGlitchScores];
  }

  else
  {
    v14 = PLLogSignpostReader();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10000AFC4(v13);
    }
  }

  v15 = +[NSMutableDictionary dictionary];
  [v15 setObject:self->_processExits forKey:@"processExits"];
  [v15 setObject:self->_launches forKey:@"launchDurations"];
  [v15 setObject:self->_extendedLaunches forKey:@"extendedLaunchDurations"];
  [v15 setObject:self->_resumes forKey:@"resumeDurations"];
  [v15 setObject:self->_glitches forKey:@"scrollGlitches"];
  [v15 setObject:self->_activations forKey:@"activationDurations"];
  [v15 setObject:self->_summarizedSignpostEvents forKey:@"signpostEvents"];
  v16 = [(XPCSignpostReader *)self packageMXSignpostData];
  [v15 setObject:v16 forKey:@"signpostIntervals"];

  [v15 setValue:self->_launchTimeSeries forKey:@"launchesTimeSeries"];
  [v15 setValue:self->_hangs forKey:@"hangDurations"];
  [v15 setValue:&off_100015A28 forKey:@"hangtracer_enabled"];
  [(XPCSignpostReader *)self logAggdTelemetry];

  return v15;
}

- (id)packageMXSignpostData
{
  v3 = +[NSMutableDictionary dictionary];
  summarizedSignpostDurations = self->_summarizedSignpostDurations;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100004744;
  v9[3] = &unk_100014560;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [(NSMutableDictionary *)summarizedSignpostDurations enumerateKeysAndObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)logAggdTelemetry
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_numAppSignposts;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = [(NSMutableDictionary *)self->_numAppSignposts objectForKey:*(*(&v12 + 1) + 8 * i), v12];
        if (v11[1] > 1000)
        {
          ++v8;
        }

        v7 += v11[2];
        v6 += v11[3];
      }

      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  if (qword_100019458 >= 50001)
  {
    ADClientSetValueForScalarKey();
  }
}

- (void)initializeMetrics
{
  v3 = +[NSMutableDictionary dictionary];
  launches = self->_launches;
  self->_launches = v3;

  v5 = +[NSMutableDictionary dictionary];
  extendedLaunches = self->_extendedLaunches;
  self->_extendedLaunches = v5;

  v7 = +[NSMutableDictionary dictionary];
  resumes = self->_resumes;
  self->_resumes = v7;

  v9 = +[NSMutableDictionary dictionary];
  hangs = self->_hangs;
  self->_hangs = v9;

  v11 = +[NSMutableDictionary dictionary];
  glitches = self->_glitches;
  self->_glitches = v11;

  v13 = +[NSMutableDictionary dictionary];
  processExits = self->_processExits;
  self->_processExits = v13;

  v15 = +[NSMutableDictionary dictionary];
  activations = self->_activations;
  self->_activations = v15;

  v17 = +[NSMutableDictionary dictionary];
  uniqueAnimationIntervalsByProcess = self->_uniqueAnimationIntervalsByProcess;
  self->_uniqueAnimationIntervalsByProcess = v17;

  v19 = +[NSMutableDictionary dictionary];
  summarizedSignpostDurations = self->_summarizedSignpostDurations;
  self->_summarizedSignpostDurations = v19;

  v21 = +[NSMutableDictionary dictionary];
  summarizedSignpostMetrics = self->_summarizedSignpostMetrics;
  self->_summarizedSignpostMetrics = v21;

  v23 = +[NSMutableDictionary dictionary];
  summarizedSignpostEvents = self->_summarizedSignpostEvents;
  self->_summarizedSignpostEvents = v23;

  v25 = +[NSMutableDictionary dictionary];
  numAppSignposts = self->_numAppSignposts;
  self->_numAppSignposts = v25;

  v27 = +[NSMutableArray array];
  launchTimeSeries = self->_launchTimeSeries;
  self->_launchTimeSeries = v27;

  _objc_release_x1();
}

- (id)getBundleIDFromInterval:(id)a3
{
  v3 = a3;
  v4 = [v3 beginEvent];
  v5 = [v4 name];

  if (![v5 isEqualToString:@"HangInterval"])
  {
    goto LABEL_3;
  }

  v6 = [v3 beginEvent];
  v7 = [v6 attributes];
  v8 = [v7 objectForKey:@"BundleIdOverride"];

  if (!v8)
  {
LABEL_3:
    v9 = [v3 endEvent];
    v10 = [v9 processImagePath];
    v11 = [v10 stringByDeletingLastPathComponent];

    v12 = [NSBundle bundleWithPath:v11];
    v8 = [v12 bundleIdentifier];
  }

  return v8;
}

- (id)getBundleIDFromEvent:(id)a3
{
  v3 = [a3 processImagePath];
  v4 = [v3 stringByDeletingLastPathComponent];

  v5 = [NSBundle bundleWithPath:v4];
  v6 = [v5 bundleIdentifier];

  return v6;
}

- (id)subsystemCategoryAllowlist:(id)a3
{
  v3 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004E78;
  v6[3] = &unk_100014588;
  v4 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
  v7 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (id)getScrollDirectionForSignpostInterval:(id)a3
{
  v3 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1000053A4;
  v28 = sub_1000053B4;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000053A4;
  v22 = sub_1000053B4;
  v23 = 0;
  v4 = [v3 name];
  v5 = [v4 isEqualToString:@"Scroll_Zooming"];

  if (v5)
  {
    v6 = @"Diagonal";
  }

  else
  {
    v6 = [v3 endEvent];

    if (v6)
    {
      v7 = [v3 endEvent];
      v8 = [v7 metadataSegments];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1000053BC;
      v17[3] = &unk_1000145D8;
      v17[4] = &v24;
      v17[5] = &v18;
      [v8 enumerateObjectsUsingBlock:v17];

      [v25[5] doubleValue];
      if (v9 != 0.0 || ([v19[5] doubleValue], v10 == 0.0))
      {
        [v25[5] doubleValue];
        if (v11 == 0.0 || ([v19[5] doubleValue], v12 != 0.0))
        {
          v6 = @"Diagonal";
        }

        else
        {
          v6 = @"Horizontal";
        }
      }

      else
      {
        v6 = @"Vertical";
      }

      v13 = PLLogSignpostReader();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v15 = v25[5];
        v16 = v19[5];
        *buf = 138412802;
        v31 = v6;
        v32 = 2112;
        v33 = v15;
        v34 = 2112;
        v35 = v16;
        _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Scroll direction %@ (dx=%@, dy=%@)", buf, 0x20u);
      }
    }
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  return v6;
}

- (void)aggregateSignpostData:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = PLLogSignpostReader();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Signpost data aggregation start", buf, 2u);
  }

  v9 = [v7 objectForKeyedSubscript:@"taskingAllowlist"];
  v10 = [v7 objectForKeyedSubscript:@"taskingStartDate"];
  v11 = [v7 objectForKeyedSubscript:@"taskingEndDate"];

  v12 = PLLogSignpostReader();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B0DC();
  }

  v13 = PLLogSignpostReader();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B144();
  }

  v14 = PLLogSignpostReader();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B1AC();
  }

  v15 = objc_alloc_init(NSMutableDictionary);
  if (v11 && v10 && ([v10 timeIntervalSince1970], v17 = v16, objc_msgSend(v11, "timeIntervalSince1970"), v17 <= v18))
  {
    v19 = objc_alloc_init(SignpostSupportObjectExtractor);
    [v19 setShouldComposeMetadataString:0];
    v20 = [(XPCSignpostReader *)self subsystemCategoryAllowlist:v9];
    [v19 setSubsystemCategoryFilter:v20];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000058D8;
    v27[3] = &unk_100014600;
    v21 = v15;
    v28 = v21;
    v29 = self;
    [v19 setIntervalCompletionProcessingBlock:v27];
    v26 = 0;
    v22 = [v19 processLogArchiveWithPath:0 startDate:v10 endDate:v11 errorOut:&v26];
    v23 = v26;
    if ((v22 & 1) == 0)
    {
      v24 = PLLogSignpostReader();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_10000B214(v23);
      }
    }

    v25 = PLLogSignpostReader();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v31 = v21;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Signpost data aggregation end: reply = %@", buf, 0xCu);
    }

    v6[2](v6, v21);
  }

  else
  {
    v6[2](v6, v15);
  }
}

- (void)submitSignpostDataWithConfig:(id)a3 withReply:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PLLogSignpostReader();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Signpost data submission start", buf, 2u);
  }

  v8 = +[NSMutableDictionary dictionary];
  v9 = [v5 objectForKeyedSubscript:@"taskingAllowlist"];
  v10 = [v5 objectForKeyedSubscript:@"taskingStartDate"];
  v11 = [v5 objectForKeyedSubscript:@"taskingEndDate"];
  v12 = [v5 objectForKeyedSubscript:@"taskingTagConfig"];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = v12;
    v14 = [v13 objectForKeyedSubscript:@"TagUUID"];
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = PLLogSignpostReader();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B3E4();
  }

  v16 = PLLogSignpostReader();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B0DC();
  }

  v17 = PLLogSignpostReader();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B144();
  }

  v18 = PLLogSignpostReader();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B1AC();
  }

  v19 = PLLogSignpostReader();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B44C();
  }

  v20 = [[NSUUID alloc] initWithUUIDString:v14];
  if (v20)
  {
    v39 = v13;
    v21 = 1;
    if (v10 && v11 && v9 && v14)
    {
      v37 = v11;
      v36 = [NSString stringWithFormat:@"%@Powerlog_%@/", @"/tmp/powerlog/cloud/", v14];
      v22 = [v5 objectForKeyedSubscript:@"taskingSubmitSP"];
      v23 = [v22 BOOLValue];

      if (v23)
      {
        v35 = v9;
        v24 = [v39 objectForKeyedSubscript:@"Date"];
        v33 = v6;
        v34 = v8;
        if (v24)
        {
          v25 = [v39 objectForKeyedSubscript:@"Date"];
          v26 = [NSString stringWithFormat:@"Signpost_%@", v25];
        }

        else
        {
          v26 = [NSString stringWithFormat:@"Signpost_%@", v14];
        }

        v28 = v36;
        v29 = [NSString stringWithFormat:@"%@%@/", v36, v26];
        v9 = v35;
        v30 = [(XPCSignpostReader *)self createSignpostFile:v29 withStartDate:v10 withEndDate:v37 withallowlist:v35 withTagConfig:v12];
        v21 = v30 != 0;

        v6 = v33;
        v8 = v34;
      }

      else
      {
        v21 = 1;
        v28 = v36;
      }

      v11 = v37;
    }

    v31 = [NSNumber numberWithBool:v21];
    [v8 setObject:v31 forKey:@"success"];

    v32 = PLLogSignpostReader();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v41 = v8;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Signpost data submission end: reply = %@", buf, 0xCu);
    }

    v27 = v8;
    v13 = v39;
  }

  else
  {
    v27 = 0;
  }

  (v6)[2](v6, v27);
}

- (id)createSignpostFile:(id)a3 withStartDate:(id)a4 withEndDate:(id)a5 withallowlist:(id)a6 withTagConfig:(id)a7
{
  v11 = a3;
  v62 = a4;
  v63 = a5;
  v64 = a6;
  v65 = a7;
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  v12 = +[NSFileManager defaultManager];
  LOBYTE(a6) = [v12 fileExistsAtPath:v11];

  if (a6)
  {
    v61 = PLLogSignpostReader();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      sub_10000B648();
    }

    goto LABEL_39;
  }

  v13 = +[NSFileManager defaultManager];
  v97 = 0;
  v14 = [v13 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v97];
  v61 = v97;

  if (v14)
  {
    v15 = objc_alloc_init(SignpostSupportObjectExtractor);
    [v15 setShouldComposeMetadataString:0];
    v60 = v15;
    v16 = [(XPCSignpostReader *)self subsystemCategoryAllowlist:v64];
    v17 = objc_opt_new();
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_100007124;
    v89[3] = &unk_100014628;
    v96 = 1;
    v59 = v16;
    v90 = v59;
    v91 = self;
    v92 = v65;
    v67 = v17;
    v93 = v67;
    v95 = &v98;
    v56 = v11;
    v94 = v56;
    v58 = objc_retainBlock(v89);
    [v60 setIntervalCompletionProcessingBlock:v58];
    v57 = +[WRWorkflow allWorkflows];
    if ([v57 count])
    {
      v66 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
      v18 = +[NSMutableArray array];
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v19 = v57;
      v20 = [v19 countByEnumeratingWithState:&v85 objects:v108 count:16];
      if (v20)
      {
        v21 = *v86;
        do
        {
          v22 = 0;
          do
          {
            if (*v86 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v85 + 1) + 8 * v22);
            v24 = PLLogSignpostReader();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              v25 = [v23 name];
              sub_10000B4B4(v25, v106, &v107, v24);
            }

            v26 = [v23 contextualTelemetryEnabled];
            v27 = PLLogSignpostReader();
            v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
            if (v26)
            {
              if (v28)
              {
                v32 = [v23 name];
                v33 = [v23 allowListForAllSignposts];
                *buf = 138412546;
                v103 = v32;
                v104 = 2112;
                v105 = v33;
                _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "[WR] Appending allowlist for workflow '%@': %@", buf, 0x16u);
              }

              v29 = [v23 allowListForAllSignposts];
              [v66 addAllowlist:v29];

              v83[0] = _NSConcreteStackBlock;
              v83[1] = 3221225472;
              v83[2] = sub_100007310;
              v83[3] = &unk_100014650;
              v83[4] = v23;
              v83[5] = self;
              v84 = v67;
              v30 = objc_retainBlock(v83);
              v31 = [[WRWorkflowEventTracker alloc] initForReadbackWithWorkflow:v23 eventCompletionCallback:v30];
              [v18 addObject:v31];
            }

            else
            {
              if (v28)
              {
                v34 = [v23 name];
                v35 = [v23 contextualTelemetryEnabled];
                *buf = 138412546;
                v103 = v34;
                v104 = 1024;
                LODWORD(v105) = v35;
                _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "[WR] workflow %@ does not have contextualTelemetryEnabled (=%d), skipping to next workflow", buf, 0x12u);
              }
            }

            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [v19 countByEnumeratingWithState:&v85 objects:v108 count:16];
        }

        while (v20);
      }

      v36 = PLLogSignpostReader();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        sub_10000B510();
      }

      [v59 addAllowlist:v66];
      v77[0] = _NSConcreteStackBlock;
      v77[1] = 3221225472;
      v77[2] = sub_1000078A8;
      v77[3] = &unk_100014678;
      v37 = v18;
      v78 = v37;
      v82 = &v98;
      v79 = v67;
      v80 = self;
      v81 = v56;
      v38 = objc_retainBlock(v77);
      a4 = v60;
      [v60 setEmitEventProcessingBlock:v38];
      [v60 setBeginEventProcessingBlock:v38];
      v72[0] = _NSConcreteStackBlock;
      v72[1] = 3221225472;
      v72[2] = sub_100007B40;
      v72[3] = &unk_1000146A0;
      v39 = v66;
      v73 = v39;
      v40 = v38;
      v75 = v40;
      v74 = v59;
      v76 = v58;
      [v60 setIntervalCompletionProcessingBlock:v72];
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_100007C2C;
      v70[3] = &unk_1000146C8;
      v41 = v37;
      v71 = v41;
      [v60 setDeviceRebootProcessingBlock:v70];
    }

    v42 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
    [v42 addAllowlist:v59];
    [SignpostCAInstrumentationProcessor addNeededSCToAllowlist:v42];
    v43 = PLLogSignpostReader();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B578();
    }

    v44 = PLLogSignpostReader();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      sub_10000B5E0();
    }

    [v60 setSubsystemCategoryFilter:v42];
    v69 = 0;
    v45 = [v60 processLogArchiveWithPath:0 startDate:v62 endDate:v63 errorOut:&v69];
    v46 = v69;
    if ((v45 & 1) == 0)
    {
      v47 = PLLogSignpostReader();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        if (v46)
        {
          a4 = [v46 localizedDescription];
          v55 = a4;
          v54 = [a4 UTF8String];
        }

        else
        {
          v54 = "Unknown error";
        }

        *buf = 136315138;
        v103 = v54;
        _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "Unable to serialize signpost: %s", buf, 0xCu);
        if (v46)
        {
        }
      }
    }

    v48 = [(XPCSignpostReader *)self writeSignpostFile:v56 withOrder:*(v99 + 6) withData:v67];
    *(v99 + 6) = v48;
  }

  if (!*(v99 + 6))
  {
    goto LABEL_39;
  }

  v49 = [NSString stringWithFormat:@"%@%@", v11, @"tag.json"];
  if (![(XPCSignpostReader *)self createTagFile:v49 withTagConfig:v65 withFileCount:*(v99 + 6)])
  {

LABEL_39:
    v51 = 0;
    goto LABEL_40;
  }

  v50 = [NSURL fileURLWithPath:v11];
  v51 = [DEArchiver archiveDirectoryAt:v50 deleteOriginal:1];

  v52 = PLLogSignpostReader();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v103 = v51;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Signpost tarball generated at %@", buf, 0xCu);
  }

LABEL_40:
  _Block_object_dispose(&v98, 8);

  return v51;
}

- (id)gzipDeflate:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    memset(&v10.total_out, 0, 72);
    v10.avail_in = [v3 length];
    v4 = 0;
    if (!deflateInit2_(&v10, -1, 8, 31, 8, 0, "1.2.12", 112))
    {
      v5 = [NSMutableData dataWithLength:0x4000];
      do
      {
        total_out = v10.total_out;
        if (total_out >= [v5 length])
        {
          [v5 increaseLengthBy:0x4000];
        }

        v7 = [v5 mutableBytes];
        v10.next_out = &v7[v10.total_out];
        v8 = [v5 length];
        v10.avail_out = v8 - LODWORD(v10.total_out);
        deflate(&v10, 4);
      }

      while (!v10.avail_out);
      deflateEnd(&v10);
      [v5 setLength:v10.total_out];
      v4 = [NSData dataWithData:v5];
    }
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

- (int)writeSignpostFile:(id)a3 withOrder:(int)a4 withData:(id)a5
{
  LODWORD(v6) = a4;
  v8 = a3;
  v9 = a5;
  v10 = PLLogSignpostReader();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v29 = [v9 count];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "writing to signpost file for %lu records.", buf, 0xCu);
  }

  v11 = +[NSFileManager defaultManager];
  if (![v11 fileExistsAtPath:v8])
  {
    goto LABEL_13;
  }

  v12 = [v9 count];

  if (v12)
  {
    v11 = [NSJSONSerialization dataWithJSONObject:v9 options:0 error:0];
    v13 = PLLogSignpostReader();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v11 length];
      *buf = 134217984;
      v29 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "\t Original JSON size = %lu", buf, 0xCu);
    }

    v15 = [(XPCSignpostReader *)self gzipDeflate:v11];
    v16 = PLLogSignpostReader();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v15 length];
      *buf = 134217984;
      v29 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "\t Compressed size = %lu", buf, 0xCu);
    }

    v18 = &ADClientSetValueForScalarKey_ptr;
    v6 = (v6 + 1);
    v19 = [NSString stringWithFormat:@"%@signpost.%d.json.gz", v8, v6];
    v27 = 0;
    v20 = [v15 writeToFile:v19 options:1 error:&v27];
    v21 = v27;

    if ((v20 & 1) == 0)
    {
      v22 = PLLogSignpostReader();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = [NSString stringWithFormat:@"%@%d.json.gz", v8, v6];
        v25 = [v24 UTF8String];
        if (v21)
        {
          v18 = [v21 localizedDescription];
          v26 = [v18 UTF8String];
        }

        else
        {
          v26 = "Unknown error";
        }

        *buf = 136315394;
        v29 = v25;
        v30 = 2080;
        v31 = v26;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Unable to write to %s: %s", buf, 0x16u);
        if (v21)
        {
        }
      }
    }

    [v9 removeAllObjects];

LABEL_13:
  }

  return v6;
}

- (id)workflowDataForEventTracker:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setObject:@"WorkflowResponsiveness" forKeyedSubscript:@"CollectionType"];
  v5 = [v3 workflow];
  v6 = [v5 name];
  [v4 setObject:v6 forKeyedSubscript:@"WorkflowName"];

  v7 = [v3 eventStart];
  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v7 machContTimeNs]);
  [v4 setObject:v8 forKeyedSubscript:@"OverallStartTime"];

  v9 = [v3 eventEnd];
  v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 machContTimeNs]);
  [v4 setObject:v10 forKeyedSubscript:@"OverallEndTime"];

  v11 = [v3 error];

  if (v11)
  {
    v12 = [v3 error];
    if (v12)
    {
      v13 = [v3 error];
      v14 = [v13 domain];
      if ([v14 isEqualToString:WRErrorDomain])
      {
        v15 = [v3 error];
        v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 code]);
        [v4 setObject:v16 forKeyedSubscript:@"ErrorCode"];
      }

      else
      {
        [v4 setObject:&off_100015A40 forKeyedSubscript:@"ErrorCode"];
      }
    }

    else
    {
      [v4 setObject:&off_100015A40 forKeyedSubscript:@"ErrorCode"];
    }
  }

  return v4;
}

- (id)workflowDataForSignpostTracker:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 signpost];
  v6 = [v5 name];
  [v4 setObject:v6 forKeyedSubscript:@"Name"];

  v7 = [v3 signpost];
  v8 = [v7 subsystem];
  [v4 setObject:v8 forKeyedSubscript:@"Subsystem"];

  v9 = [v3 signpost];
  v10 = [v9 category];
  [v4 setObject:v10 forKeyedSubscript:@"Category"];

  v11 = [v3 individuationIdentifier];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [v3 individuationIdentifier];
    [v4 setObject:v13 forKeyedSubscript:@"IndividuationIdentifier"];
  }

  v24 = v3;
  v14 = [v3 environment];
  v15 = v14;
  if (v14)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * i);
          v21 = [NSString stringWithFormat:@"@env_%@", v20];
          v22 = [v15 objectForKey:v20];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            [v4 setObject:v22 forKeyedSubscript:v21];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v17);
    }
  }

  return v4;
}

- (id)workflowDataForWREvent:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 machContTimeNs];

  v6 = [NSNumber numberWithUnsignedLongLong:v5];
  [v4 setObject:v6 forKeyedSubscript:@"startMachContinuousTime"];

  return v4;
}

- (id)workflowDataForWRInterval:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 start];
  v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v5 machContTimeNs]);
  [v4 setObject:v6 forKeyedSubscript:@"startMachContinuousTime"];

  v7 = [v3 end];

  v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v7 machContTimeNs]);
  [v4 setObject:v8 forKeyedSubscript:@"endMachContinuousTime"];

  return v4;
}

- (id)workflowDataForWRIncompleteInterval:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 machContTimeNs];

  v6 = [NSNumber numberWithUnsignedLongLong:v5];
  [v4 setObject:v6 forKeyedSubscript:@"startMachContinuousTime"];

  [v4 setObject:&off_100015A10 forKeyedSubscript:@"endMachContinuousTime"];

  return v4;
}

- (id)signpostIntervalData:(id)a3 forTaskingConfig:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  [v8 setObject:@"Powerlog" forKeyedSubscript:@"CollectionType"];
  v9 = [v6 category];
  [v8 setObject:v9 forKeyedSubscript:@"Category"];

  v10 = [v6 name];
  [v8 setObject:v10 forKeyedSubscript:@"Name"];

  v11 = [v6 subsystem];
  [v8 setObject:v11 forKeyedSubscript:@"Subsystem"];

  [v6 timebaseRatio];
  v12 = [NSNumber numberWithDouble:?];
  [v8 setObject:v12 forKeyedSubscript:@"TimebaseRatio"];

  v13 = [v6 string1Name];
  [v8 setObject:v13 forKeyedSubscript:@"String1Name"];

  v14 = [v6 string1Value];
  [v8 setObject:v14 forKeyedSubscript:@"String1Value"];

  v15 = [v6 string2Name];
  [v8 setObject:v15 forKeyedSubscript:@"String2Name"];

  v16 = [v6 string2Value];
  [v8 setObject:v16 forKeyedSubscript:@"String2Value"];

  v17 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 startMachContinuousTime]);
  [v8 setObject:v17 forKeyedSubscript:@"startMachContinuousTime"];

  v18 = [v6 beginWallTimeStringWithTimeZoneName:0];
  [v8 setObject:v18 forKeyedSubscript:@"beginWallTime"];

  v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 endMachContinuousTime]);
  [v8 setObject:v19 forKeyedSubscript:@"endMachContinuousTime"];

  v20 = [v6 endWallTimeStringWithTimeZoneName:0];
  [v8 setObject:v20 forKeyedSubscript:@"endWallTime"];

  v21 = [v6 beginEvent];

  if (v21)
  {
    v22 = [v6 beginEvent];
    v23 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v22 processID]);
    [v8 setObject:v23 forKeyedSubscript:@"BeginPid"];

    v24 = [v6 beginEvent];
    v25 = [v24 processName];
    [v8 setObject:v25 forKeyedSubscript:@"BeginProcessName"];
  }

  v26 = [v6 endEvent];

  if (v26)
  {
    v27 = [v6 endEvent];
    v28 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v27 processID]);
    [v8 setObject:v28 forKeyedSubscript:@"EndPid"];

    v29 = [v6 endEvent];
    v30 = [v29 processName];
    [v8 setObject:v30 forKeyedSubscript:@"EndProcessName"];
  }

  v31 = [v6 number1Name];
  if (v31)
  {
    v32 = v31;
    v33 = [v6 number1Value];

    if (v33)
    {
      v34 = [v6 number1Name];
      [v8 setObject:v34 forKeyedSubscript:@"Number1Name"];

      v35 = [v6 number1Value];
      [v8 setObject:v35 forKeyedSubscript:@"Number1Value"];
    }
  }

  v36 = [v6 number2Name];
  if (v36)
  {
    v37 = v36;
    v38 = [v6 number2Value];

    if (v38)
    {
      v39 = [v6 number2Name];
      [v8 setObject:v39 forKeyedSubscript:@"Number2Name"];

      v40 = [v6 number2Value];
      [v8 setObject:v40 forKeyedSubscript:@"Number2Value"];
    }
  }

  v41 = [v7 objectForKeyedSubscript:@"Internal"];
  v42 = [v41 BOOLValue];

  if (v42)
  {
    v43 = [v6 subsystem];
    v44 = [v43 isEqualToString:@"com.apple.metrickit.log"];

    if (v44)
    {
      v45 = [(XPCSignpostReader *)self mxSignpostIntervalDataForTasking:v6];
      [v8 addEntriesFromDictionary:v45];
    }
  }

  v46 = PLLogSignpostReader();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
  {
    sub_10000B74C(v8, v46);
  }

  return v8;
}

- (id)signpostAnimationIntervalData:(id)a3 forTaskingConfig:(id)a4
{
  v6 = a3;
  v7 = [(XPCSignpostReader *)self signpostIntervalData:v6 forTaskingConfig:a4];
  v8 = [v7 mutableCopy];

  v9 = [v6 beginEvent];
  v10 = +[SignpostAnimationOverrunQuery nonFirstFrameContributedGlitches:](SignpostAnimationOverrunQuery, "nonFirstFrameContributedGlitches:", [v9 processID]);

  v11 = [v6 overrunIntervals:v10];
  v12 = [v11 count];

  v13 = [NSNumber numberWithUnsignedInteger:v12];
  [v8 setObject:v13 forKeyedSubscript:@"perceivedGlitchCount"];

  [v6 nonFirstFrameContributedGlitchTimeRatioAdjustedMsPerS];
  v15 = v14;

  v16 = [NSNumber numberWithDouble:v15];
  [v8 setObject:v16 forKeyedSubscript:@"perceivedGlitchRatio"];

  return v8;
}

- (id)mxSignpostIntervalDataForTasking:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 beginEvent];
  v6 = [v5 metrics];

  if (v6)
  {
    v7 = [v3 beginEvent];
    v8 = [v7 metrics];
    v9 = [v8 cpuTimeNsec];
    [v9 doubleValue];
    v11 = [NSNumber numberWithDouble:v10 / 1000000000.0];
    [v4 setObject:v11 forKeyedSubscript:@"BeginCPUTime"];

    v12 = [v3 beginEvent];
    v13 = [v12 metrics];
    v14 = [v13 dirtyMemoryLifetimePeakKB];
    [v4 setObject:v14 forKeyedSubscript:@"BeginPeakMemory"];

    v15 = [v3 beginEvent];
    v16 = [v15 metrics];
    v17 = [v16 dirtyMemoryKB];
    [v4 setObject:v17 forKeyedSubscript:@"BeginDirtyMemory"];

    v18 = [v3 beginEvent];
    v19 = [v18 metrics];
    v20 = [v19 storageDirtiedKB];
    [v4 setObject:v20 forKeyedSubscript:@"BeginDiskLogicalWrites"];
  }

  v21 = [v3 endEvent];
  v22 = [v21 metrics];

  if (v22)
  {
    v23 = [v3 endEvent];
    v24 = [v23 metrics];
    v25 = [v24 cpuTimeNsec];
    [v25 doubleValue];
    v27 = [NSNumber numberWithDouble:v26 / 1000000000.0];
    [v4 setObject:v27 forKeyedSubscript:@"EndCPUTime"];

    v28 = [v3 endEvent];
    v29 = [v28 metrics];
    v30 = [v29 dirtyMemoryLifetimePeakKB];
    [v4 setObject:v30 forKeyedSubscript:@"EndPeakMemory"];

    v31 = [v3 endEvent];
    v32 = [v31 metrics];
    v33 = [v32 dirtyMemoryKB];
    [v4 setObject:v33 forKeyedSubscript:@"EndDirtyMemory"];

    v34 = [v3 endEvent];
    v35 = [v34 metrics];
    v36 = [v35 storageDirtiedKB];
    [v4 setObject:v36 forKeyedSubscript:@"EndDiskLogicalWrites"];
  }

  return v4;
}

- (void)removeFile:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v9 = 0;
  v5 = [v4 removeItemAtPath:v3 error:&v9];
  v6 = v9;

  v7 = PLLogSignpostReader();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_10000BA14();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10000B95C(v3, v6, v8);
  }
}

- (BOOL)isiPad
{
  if (qword_100019468 != -1)
  {
    sub_10000BA7C();
  }

  return byte_100019460;
}

- (void)readRawSignpostData:(id)a3 withReply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectForKeyedSubscript:@"start_date"];
  v9 = [v7 objectForKeyedSubscript:@"end_date"];

  v10 = PLLogSignpostReader();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[RAPID] readRawSignpostData: %@ %@", buf, 0x16u);
  }

  v11 = objc_alloc_init(SignpostSupportObjectExtractor);
  [v11 setShouldComposeMetadataString:0];
  v12 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
  [v12 addSubsystem:@"com.apple.hangtracer" category:@"always_on_hang"];
  [v11 setSubsystemCategoryFilter:v12];
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  [v13 setObject:v14 forKeyedSubscript:@"hangDurations"];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000098AC;
  v19[3] = &unk_100014600;
  v19[4] = self;
  v15 = v13;
  v20 = v15;
  [v11 setIntervalCompletionProcessingBlock:v19];
  v18 = 0;
  LOBYTE(v14) = [v11 processLogArchiveWithPath:0 startDate:v8 endDate:v9 errorOut:&v18];
  v16 = v18;
  if ((v14 & 1) == 0)
  {
    v17 = PLLogSignpostReader();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10000BA90(v16);
    }
  }

  v6[2](v6, v15);
}

- (void)updateHangsData:(id)a3 withInterval:(id)a4
{
  v17 = a3;
  v6 = a4;
  v7 = [(XPCSignpostReader *)self getBundleIDFromInterval:v6];
  if (v7)
  {
    v8 = [v6 beginDate];
    if (v8)
    {
      v9 = v8;
      v10 = [v6 string2Value];

      if (v10)
      {
        [v6 durationSeconds];
        v12 = (v11 * 1000.0);
        v13 = objc_opt_new();
        v14 = [v6 beginDate];
        [v13 setObject:v14 forKeyedSubscript:@"startDate"];

        [v13 setObject:v7 forKeyedSubscript:@"bundleID"];
        v15 = [NSNumber numberWithUnsignedLongLong:v12];
        [v13 setObject:v15 forKeyedSubscript:@"duration"];

        v16 = [v6 string2Value];
        [v13 setObject:v16 forKeyedSubscript:@"type"];

        [v17 addObject:v13];
      }
    }
  }
}

- (void)generateMSSReportForRAPID:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLLogSignpostReader();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[RAPID] generateMSSReport: %@", &v9, 0xCu);
  }

  [(XPCSignpostReader *)self generateMSSReport:v6 withReply:v7 andOptions:0];
}

- (void)generateMSSReportForTasking:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PLLogSignpostReader();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Tasking] generateMSSReport: %@", &v10, 0xCu);
  }

  v9 = objc_alloc_init(SASamplePrintOptions);
  [v9 setDisplayOnBehalfOfInCallTrees:1];
  [v9 setDisplayTimestampsInCallTrees:1];
  [v9 setIncludeUserIdleAndBatteryStateInStacks:1];
  [v9 setSystemstatsFormat:1];
  [v9 setTaskAggregation:3];
  [(XPCSignpostReader *)self generateMSSReport:v6 withReply:v7 andOptions:v9];
}

- (void)generateMSSReport:(id)a3 withReply:(id)a4 andOptions:(id)a5
{
  v8 = a3;
  v49 = a4;
  v50 = a5;
  context = objc_autoreleasePoolPush();
  +[SABinary enableImmediateCleanupOfCSSymbolOwners];
  v9 = [v8 objectForKeyedSubscript:@"start_date"];
  [v9 timeIntervalSince1970];
  v11 = v10;

  v12 = [v8 objectForKeyedSubscript:@"end_date"];
  [v12 timeIntervalSince1970];

  v13 = [v8 objectForKeyedSubscript:@"mss_filepath"];
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_uint64(empty, "time", v11);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v14 = [[SASampleStore alloc] initForLiveSampling];
  [v14 setDataGatheringOptions:{objc_msgSend(v14, "dataGatheringOptions") & 0xFFFFFFFFFFFFFF8FLL}];
  [v14 setEvent:@"powerstats"];
  v15 = mach_absolute_time();
  _os_feature_enabled_impl();
  v16 = v14;
  systemstats_get_microstackshots();
  v17 = PLLogSignpostReader();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(v57 + 6);
    v19 = *(v53 + 6);
    v20 = [v16 numSamples];
    *buf = 67109632;
    v63 = v18;
    v64 = 1024;
    v65 = v19;
    v66 = 2048;
    v67 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "MSS TotalCount = %u, AddedSampleCount = %u, FinalSampleCount = %lu", buf, 0x18u);
  }

  [(XPCSignpostReader *)self secondsFromMachTime:mach_absolute_time()];
  v22 = v21;
  [(XPCSignpostReader *)self secondsFromMachTime:v15];
  v24 = v23;
  v25 = mach_absolute_time();
  [v16 postprocess];
  [(XPCSignpostReader *)self secondsFromMachTime:mach_absolute_time()];
  v27 = v26;
  [(XPCSignpostReader *)self secondsFromMachTime:v25];
  v29 = v28;
  v30 = mach_absolute_time();
  v31 = [[SASamplePrinter alloc] initWithSampleStore:v16];
  v32 = v31;
  if (v50)
  {
    [v31 setOptions:?];
  }

  else
  {
    v33 = [v31 options];
    [v33 setDisplayTimestampsInCallTrees:1];

    v34 = [v32 options];
    [v34 setSystemstatsFormat:1];

    v35 = [v32 options];
    [v35 setOmitAbsoluteWallTimes:1];
  }

  v36 = v13;
  v37 = fopen([v13 UTF8String], "w");
  if (v37)
  {
    [v32 printToStream:v37];
    fclose(v37);
    [(XPCSignpostReader *)self secondsFromMachTime:mach_absolute_time()];
    v39 = v38;
    [(XPCSignpostReader *)self secondsFromMachTime:v30];
    v41 = v40;
    v60[0] = @"sample_count";
    v42 = [NSNumber numberWithUnsignedInt:*(v53 + 6)];
    v61[0] = v42;
    v61[1] = &__kCFBooleanTrue;
    v60[1] = @"success";
    v60[2] = @"time_processing";
    v43 = [NSNumber numberWithDouble:v27 - v29];
    v61[2] = v43;
    v60[3] = @"time_printing";
    v44 = [NSNumber numberWithDouble:v39 - v41];
    v61[3] = v44;
    v60[4] = @"time_reading";
    v45 = [NSNumber numberWithDouble:v22 - v24];
    v61[4] = v45;
    v46 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:5];
    v49[2](v49, v46);

    [(XPCSignpostReader *)self clearSACaches];
  }

  else
  {
    v47 = PLLogSignpostReader();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sub_10000BB40();
    }

    v49[2](v49, &off_100015A88);
    fclose(0);
    [(XPCSignpostReader *)self clearSACaches];
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);

  objc_autoreleasePoolPop(context);
}

- (void)clearSACaches
{
  v2 = PLLogSignpostReader();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Clearing SampleAnalysis caches...", buf, 2u);
  }

  +[SABinary clearCaches];
  +[SASharedCache clearCaches];
  v3 = PLLogSignpostReader();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Cleared SampleAnalysis caches!", v4, 2u);
  }
}

- (double)secondsFromMachTime:(unint64_t)a3
{
  if (qword_100019470 != -1)
  {
    sub_10000BBB4();
  }

  return *&qword_100019478 * a3 / 1000000000.0;
}

@end