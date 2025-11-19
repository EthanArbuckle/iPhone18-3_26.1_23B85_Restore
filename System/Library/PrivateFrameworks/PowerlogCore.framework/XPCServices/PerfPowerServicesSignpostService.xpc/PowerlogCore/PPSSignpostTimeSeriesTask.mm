@interface PPSSignpostTimeSeriesTask
+ (id)_signpostAnimiationIntervalData:(id)a3;
+ (id)_signpostIntervalData:(id)a3;
+ (id)_workflowEventData:(id)a3;
+ (id)_workflowEventTrackerData:(id)a3;
+ (id)_workflowIncompleteIntervalData:(id)a3;
+ (id)_workflowIntervalData:(id)a3;
+ (id)_workflowSignpostTrackerData:(id)a3;
- (BOOL)perform:(BOOL *)a3 withStopDate:(id *)a4;
- (PPSSignpostTimeSeriesTask)initWithRequest:(id)a3;
- (id)_compositeAllowlist:(id)a3;
- (id)_compressData:(id)a3;
- (id)_defaultAllowlist;
- (id)_instrumentationAllowlist;
- (id)_workflowAllowlist;
- (void)_flushTimeSeries;
@end

@implementation PPSSignpostTimeSeriesTask

- (PPSSignpostTimeSeriesTask)initWithRequest:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v26.receiver = self;
    v26.super_class = PPSSignpostTimeSeriesTask;
    v6 = [(PPSSignpostTimeSeriesTask *)&v26 init];
    v7 = v6;
    if (v6)
    {
      v6->_allowGlitches = 1;
      v8 = [(PPSSignpostTimeSeriesTask *)v6 _defaultAllowlist];
      v28[0] = v8;
      v9 = [(PPSSignpostTimeSeriesTask *)v7 _workflowAllowlist];
      v28[1] = v9;
      v10 = [NSArray arrayWithObjects:v28 count:2];
      v11 = [(PPSSignpostTimeSeriesTask *)v7 _compositeAllowlist:v10];
      allowlistForPersistence = v7->_allowlistForPersistence;
      v7->_allowlistForPersistence = v11;

      if (v7->_allowGlitches)
      {
        v27[0] = v7->_allowlistForPersistence;
        v13 = [(PPSSignpostTimeSeriesTask *)v7 _instrumentationAllowlist];
        v27[1] = v13;
        v14 = [NSArray arrayWithObjects:v27 count:2];
        v15 = [(PPSSignpostTimeSeriesTask *)v7 _compositeAllowlist:v14];
        allowlistForParsing = v7->_allowlistForParsing;
        v7->_allowlistForParsing = v15;
      }

      else
      {
        v18 = v7->_allowlistForPersistence;
        v13 = v7->_allowlistForParsing;
        v7->_allowlistForParsing = v18;
      }

      v19 = +[PPSFileUtilities containerPath];
      v20 = [v19 stringByAppendingString:@"/Library/Signposts/"];
      v21 = [NSURL fileURLWithPath:v20];
      targetDirectory = v7->_targetDirectory;
      v7->_targetDirectory = v21;

      objc_storeStrong(&v7->_request, a3);
      v23 = objc_opt_new();
      timeSeries = v7->_timeSeries;
      v7->_timeSeries = v23;
    }

    self = v7;
    v17 = self;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)perform:(BOOL *)a3 withStopDate:(id *)a4
{
  v36 = objc_alloc_init(SignpostSupportObjectExtractor);
  [v36 setShouldComposeMetadataString:0];
  v56[0] = _NSConcreteStackBlock;
  v56[1] = 3221225472;
  v56[2] = sub_100004448;
  v56[3] = &unk_100010A10;
  val = self;
  v56[4] = self;
  v56[5] = a3;
  v33 = a3;
  v34 = objc_retainBlock(v56);
  [v36 setIntervalCompletionProcessingBlock:v34];
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_100004704;
  v55[3] = &unk_100010A38;
  v55[4] = self;
  [v36 setProcessingCompletionBlock:v55];
  v35 = +[WRWorkflow allWorkflows];
  if ([v35 count])
  {
    v6 = +[NSMutableArray array];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v7 = v35;
    v8 = [v7 countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v8)
    {
      v9 = *v52;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v52 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v51 + 1) + 8 * i);
          v12 = [v11 contextualTelemetryEnabled];
          v13 = PPSLogSignpostTimeSeriesTask();
          v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
          if (v12)
          {
            if (v14)
            {
              v15 = [v11 name];
              *buf = 138412290;
              v58 = v15;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Setting up tracker for workflow '%@'...", buf, 0xCu);
            }

            v50[0] = _NSConcreteStackBlock;
            v50[1] = 3221225472;
            v50[2] = sub_100004770;
            v50[3] = &unk_100010A60;
            v50[4] = v11;
            v50[5] = val;
            v16 = objc_retainBlock(v50);
            v17 = [[WRWorkflowEventTracker alloc] initForReadbackWithWorkflow:v11 eventCompletionCallback:v16];
            [v6 addObject:v17];
          }

          else
          {
            if (v14)
            {
              v18 = [v11 name];
              v19 = [v11 contextualTelemetryEnabled];
              *buf = 138412546;
              v58 = v18;
              v59 = 1024;
              v60 = v19;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skipping workflow '%@' (contextualTelemetryEnabled=%d)...", buf, 0x12u);
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v8);
    }

    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_10000510C;
    v47[3] = &unk_100010A88;
    v20 = v6;
    v48 = v20;
    v49 = v33;
    v21 = objc_retainBlock(v47);
    [v36 setEmitEventProcessingBlock:v21];
    [v36 setBeginEventProcessingBlock:v21];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_1000052C8;
    v43[3] = &unk_100010AB0;
    v43[4] = val;
    v44 = v21;
    v45 = v34;
    v46 = v33;
    v22 = v21;
    [v36 setIntervalCompletionProcessingBlock:v43];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_100005398;
    v40[3] = &unk_100010AD8;
    v41 = v20;
    v42 = v33;
    v23 = v20;
    [v36 setDeviceRebootProcessingBlock:v40];
  }

  [v36 setSubsystemCategoryFilter:val->_allowlistForParsing];
  v24 = [(PPSSignpostServiceRequest *)val->_request sourceURL];
  v25 = [v24 path];
  v26 = [(PPSSignpostServiceRequest *)val->_request startDate];
  v27 = [(PPSSignpostServiceRequest *)val->_request endDate];
  v39 = 0;
  v28 = [v36 processLogArchiveWithPath:v25 startDate:v26 endDate:v27 errorOut:&v39];
  v29 = v39;

  if (v28)
  {
    if (a4)
    {
      *a4 = [(PPSSignpostTimeSeriesTask *)val lastSignpostDate];
    }

    objc_initWeak(buf, val);
    objc_copyWeak(&v38, buf);
    AnalyticsSendEventLazy();
    objc_destroyWeak(&v38);
    objc_destroyWeak(buf);
  }

  else
  {
    v30 = PPSLogSignpostTimeSeriesTask();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_100007BD0(&val->_request, v29, v30);
    }
  }

  return v28;
}

- (id)_compositeAllowlist:(id)a3
{
  v3 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100005804;
  v6[3] = &unk_100010B28;
  v4 = objc_alloc_init(SignpostSupportSubsystemCategoryAllowlist);
  v7 = v4;
  [v3 enumerateObjectsUsingBlock:v6];

  return v4;
}

- (id)_defaultAllowlist
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000058A4;
  block[3] = &unk_100010B50;
  block[4] = self;
  if (qword_100015A30 != -1)
  {
    dispatch_once(&qword_100015A30, block);
  }

  return qword_100015A38;
}

- (id)_instrumentationAllowlist
{
  if (qword_100015A40 != -1)
  {
    sub_100007C9C();
  }

  v3 = qword_100015A48;

  return v3;
}

- (id)_workflowAllowlist
{
  if (qword_100015A50 != -1)
  {
    sub_100007CB0();
  }

  v3 = qword_100015A58;

  return v3;
}

+ (id)_signpostAnimiationIntervalData:(id)a3
{
  v4 = a3;
  v5 = [a1 _signpostIntervalData:v4];
  v6 = [v5 mutableCopy];

  v7 = [v4 beginEvent];
  v8 = +[SignpostAnimationOverrunQuery nonFirstFrameContributedGlitches:](SignpostAnimationOverrunQuery, "nonFirstFrameContributedGlitches:", [v7 processID]);

  v9 = [v4 overrunIntervals:v8];
  v10 = [v9 count];

  v11 = [NSNumber numberWithUnsignedInteger:v10];
  [v6 setObject:v11 forKeyedSubscript:@"perceivedGlitchCount"];

  [v4 nonFirstFrameContributedGlitchTimeRatioAdjustedMsPerS];
  v12 = [NSNumber numberWithDouble:?];
  [v6 setObject:v12 forKeyedSubscript:@"perceivedGlitchRatio"];

  v13 = PPSLogSignpostTimeSeriesTask();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v6 objectForKeyedSubscript:@"EndProcessName"];
    if (v14)
    {
      v15 = @"EndProcessName";
    }

    else
    {
      v15 = @"BeginProcessName";
    }

    v16 = [v6 objectForKeyedSubscript:v15];
    v17 = [v6 objectForKeyedSubscript:@"Subsystem"];
    v18 = [v6 objectForKeyedSubscript:@"Category"];
    v19 = [v6 objectForKeyedSubscript:@"Name"];
    v20 = [v4 beginDate];
    v22 = 138413314;
    v23 = v16;
    v24 = 2112;
    v25 = v17;
    v26 = 2112;
    v27 = v18;
    v28 = 2112;
    v29 = v19;
    v30 = 2112;
    v31 = v20;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Generated animation interval data for process '%@': '%@::%@::%@' (%@)", &v22, 0x34u);
  }

  return v6;
}

+ (id)_signpostIntervalData:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setObject:@"Powerlog" forKeyedSubscript:@"CollectionType"];
  v5 = [v3 category];
  [v4 setObject:v5 forKeyedSubscript:@"Category"];

  v6 = [v3 name];
  [v4 setObject:v6 forKeyedSubscript:@"Name"];

  v7 = [v3 subsystem];
  [v4 setObject:v7 forKeyedSubscript:@"Subsystem"];

  [v3 timebaseRatio];
  v8 = [NSNumber numberWithDouble:?];
  [v4 setObject:v8 forKeyedSubscript:@"TimebaseRatio"];

  v9 = [v3 string1Name];
  [v4 setObject:v9 forKeyedSubscript:@"String1Name"];

  v10 = [v3 string1Value];
  [v4 setObject:v10 forKeyedSubscript:@"String1Value"];

  v11 = [v3 string2Name];
  [v4 setObject:v11 forKeyedSubscript:@"String2Name"];

  v12 = [v3 string2Value];
  [v4 setObject:v12 forKeyedSubscript:@"String2Value"];

  v13 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 startMachContinuousTime]);
  [v4 setObject:v13 forKeyedSubscript:@"startMachContinuousTime"];

  v14 = [v3 beginWallTimeStringWithTimeZoneName:0];
  [v4 setObject:v14 forKeyedSubscript:@"beginWallTime"];

  v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v3 endMachContinuousTime]);
  [v4 setObject:v15 forKeyedSubscript:@"endMachContinuousTime"];

  v16 = [v3 endWallTimeStringWithTimeZoneName:0];
  [v4 setObject:v16 forKeyedSubscript:@"endWallTime"];

  v17 = [v3 beginEvent];

  if (v17)
  {
    v18 = [v3 beginEvent];
    v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 processID]);
    [v4 setObject:v19 forKeyedSubscript:@"BeginPid"];

    v20 = [v3 beginEvent];
    v21 = [v20 processName];
    [v4 setObject:v21 forKeyedSubscript:@"BeginProcessName"];
  }

  v22 = [v3 endEvent];

  if (v22)
  {
    v23 = [v3 endEvent];
    v24 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v23 processID]);
    [v4 setObject:v24 forKeyedSubscript:@"EndPid"];

    v25 = [v3 endEvent];
    v26 = [v25 processName];
    [v4 setObject:v26 forKeyedSubscript:@"EndProcessName"];
  }

  v27 = [v3 number1Name];
  if (v27)
  {
    v28 = v27;
    v29 = [v3 number1Value];

    if (v29)
    {
      v30 = [v3 number1Name];
      [v4 setObject:v30 forKeyedSubscript:@"Number1Name"];

      v31 = [v3 number1Value];
      [v4 setObject:v31 forKeyedSubscript:@"Number1Value"];
    }
  }

  v32 = [v3 number2Name];
  if (v32)
  {
    v33 = v32;
    v34 = [v3 number2Value];

    if (v34)
    {
      v35 = [v3 number2Name];
      [v4 setObject:v35 forKeyedSubscript:@"Number2Name"];

      v36 = [v3 number2Value];
      [v4 setObject:v36 forKeyedSubscript:@"Number2Value"];
    }
  }

  if (IsInternalBuild())
  {
    v37 = [v3 subsystem];
    v38 = [v37 isEqualToString:@"com.apple.metrickit.log"];

    if (v38)
    {
      v39 = [v3 beginEvent];
      v40 = [v39 metrics];

      if (v40)
      {
        v41 = [v3 beginEvent];
        v42 = [v41 metrics];
        v43 = [v42 cpuTimeNsec];
        [v43 doubleValue];
        v45 = [NSNumber numberWithDouble:v44 / 1000000000.0];
        [v4 setObject:v45 forKeyedSubscript:@"BeginCPUTime"];

        v46 = [v3 beginEvent];
        v47 = [v46 metrics];
        v48 = [v47 dirtyMemoryLifetimePeakKB];
        [v4 setObject:v48 forKeyedSubscript:@"BeginPeakMemory"];

        v49 = [v3 beginEvent];
        v50 = [v49 metrics];
        v51 = [v50 dirtyMemoryKB];
        [v4 setObject:v51 forKeyedSubscript:@"BeginDirtyMemory"];

        v52 = [v3 beginEvent];
        v53 = [v52 metrics];
        v54 = [v53 storageDirtiedKB];
        [v4 setObject:v54 forKeyedSubscript:@"BeginDiskLogicalWrites"];
      }

      v55 = [v3 endEvent];
      v56 = [v55 metrics];

      if (v56)
      {
        v57 = [v3 endEvent];
        v58 = [v57 metrics];
        v59 = [v58 cpuTimeNsec];
        [v59 doubleValue];
        v61 = [NSNumber numberWithDouble:v60 / 1000000000.0];
        [v4 setObject:v61 forKeyedSubscript:@"EndCPUTime"];

        v62 = [v3 endEvent];
        v63 = [v62 metrics];
        v64 = [v63 dirtyMemoryLifetimePeakKB];
        [v4 setObject:v64 forKeyedSubscript:@"EndPeakMemory"];

        v65 = [v3 endEvent];
        v66 = [v65 metrics];
        v67 = [v66 dirtyMemoryKB];
        [v4 setObject:v67 forKeyedSubscript:@"EndDirtyMemory"];

        v68 = [v3 endEvent];
        v69 = [v68 metrics];
        v70 = [v69 storageDirtiedKB];
        [v4 setObject:v70 forKeyedSubscript:@"EndDiskLogicalWrites"];
      }
    }
  }

  v71 = PPSLogSignpostTimeSeriesTask();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    v72 = [v4 objectForKeyedSubscript:@"EndProcessName"];
    if (v72)
    {
      v73 = @"EndProcessName";
    }

    else
    {
      v73 = @"BeginProcessName";
    }

    v74 = [v4 objectForKeyedSubscript:v73];
    v75 = [v4 objectForKeyedSubscript:@"Subsystem"];
    v76 = [v4 objectForKeyedSubscript:@"Category"];
    v77 = [v4 objectForKeyedSubscript:@"Name"];
    v78 = [v3 beginDate];
    v80 = 138413314;
    v81 = v74;
    v82 = 2112;
    v83 = v75;
    v84 = 2112;
    v85 = v76;
    v86 = 2112;
    v87 = v77;
    v88 = 2112;
    v89 = v78;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Generated signpost interval data for process '%@': '%@::%@::%@' (%@)", &v80, 0x34u);
  }

  return v4;
}

+ (id)_workflowEventData:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 machContTimeNs];

  v6 = [NSNumber numberWithUnsignedLongLong:v5];
  [v4 setObject:v6 forKeyedSubscript:@"startMachContinuousTime"];

  return v4;
}

+ (id)_workflowEventTrackerData:(id)a3
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
        [v4 setObject:&off_100011B20 forKeyedSubscript:@"ErrorCode"];
      }
    }

    else
    {
      [v4 setObject:&off_100011B20 forKeyedSubscript:@"ErrorCode"];
    }
  }

  return v4;
}

+ (id)_workflowIncompleteIntervalData:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 machContTimeNs];

  v6 = [NSNumber numberWithUnsignedLongLong:v5];
  [v4 setObject:v6 forKeyedSubscript:@"startMachContinuousTime"];

  [v4 setObject:&off_100011B38 forKeyedSubscript:@"endMachContinuousTime"];

  return v4;
}

+ (id)_workflowIntervalData:(id)a3
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

+ (id)_workflowSignpostTrackerData:(id)a3
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

- (id)_compressData:(id)a3
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
    v4 = 0;
  }

  return v4;
}

- (void)_flushTimeSeries
{
  v3 = [(PPSSignpostTimeSeriesTask *)self targetDirectory];

  if (v3)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [(PPSSignpostTimeSeriesTask *)self targetDirectory];
    [v4 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:0];

    v6 = [(PPSSignpostTimeSeriesTask *)self timeSeries];
    v7 = [NSJSONSerialization dataWithJSONObject:v6 options:0 error:0];

    v8 = [(PPSSignpostTimeSeriesTask *)self _compressData:v7];
    if (v8)
    {
      v9 = [(PPSSignpostTimeSeriesTask *)self targetDirectory];
      v10 = [(PPSSignpostTimeSeriesTask *)self firstSignpostDate];
      [v10 timeIntervalSince1970];
      v12 = [NSString stringWithFormat:@"signpost.%f.json.gz", v11];
      v13 = [v9 URLByAppendingPathComponent:v12];

      v50 = 0;
      LOBYTE(v10) = [v8 writeToURL:v13 options:1 error:&v50];
      v14 = v50;
      v15 = PPSLogSignpostTimeSeriesTask();
      v16 = v15;
      if (v10)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [(PPSSignpostTimeSeriesTask *)self timeSeries];
          v18 = [v17 count];
          v19 = [v13 lastPathComponent];
          *buf = 134218242;
          v52 = v18;
          v53 = 2112;
          v54 = v19;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Flushed %lu signposts to '%@'", buf, 0x16u);
        }

        v20 = [(PPSSignpostTimeSeriesTask *)self firstSignpostDate];
        if (v20)
        {
          v21 = v20;
          v22 = [(PPSSignpostTimeSeriesTask *)self firstSignpostDate];
          v49 = v14;
          v23 = [v13 setResourceValue:v22 forKey:NSURLCreationDateKey error:&v49];
          v24 = v49;

          if ((v23 & 1) == 0)
          {
            v25 = PPSLogSignpostTimeSeriesTask();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              sub_100007CFC(v13, v25);
            }
          }
        }

        else
        {
          v24 = v14;
        }

        v47 = [NSDate dateWithTimeIntervalSinceNow:129600.0];
        [PPSFileUtilities markAsPurgeable:v13 urgency:512 startDate:v47];

        v48 = [(PPSSignpostTimeSeriesTask *)self timeSeries];
        -[PPSSignpostTimeSeriesTask setTimeSeriesSize:](self, "setTimeSeriesSize:", [v48 count] + -[PPSSignpostTimeSeriesTask timeSeriesSize](self, "timeSeriesSize"));

        [(PPSSignpostTimeSeriesTask *)self setOutputFileCount:[(PPSSignpostTimeSeriesTask *)self outputFileCount]+ 1];
        v16 = [(PPSSignpostTimeSeriesTask *)self timeSeries];
        [v16 removeAllObjects];
        v14 = v24;
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100007CC4(v16, v40, v41, v42, v43, v44, v45, v46);
      }
    }

    else
    {
      v14 = PPSLogSignpostTimeSeriesTask();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100007D94(v14, v33, v34, v35, v36, v37, v38, v39);
      }
    }
  }

  else
  {
    v7 = PPSLogSignpostTimeSeriesTask();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100007DCC(v7, v26, v27, v28, v29, v30, v31, v32);
    }
  }
}

@end