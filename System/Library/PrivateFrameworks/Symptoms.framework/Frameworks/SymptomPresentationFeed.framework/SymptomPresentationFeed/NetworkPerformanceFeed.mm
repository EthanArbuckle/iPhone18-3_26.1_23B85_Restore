@interface NetworkPerformanceFeed
- (BOOL)_rollFlowMetricsValuesFromDict:(id)dict toDict:(id)toDict forKey:(id)key andRequest:(id)request;
- (BOOL)_rollRouteMetricsValuesFromDict:(id)dict toDict:(id)toDict forKey:(id)key;
- (BOOL)getPreferCellOverWiFiWithOptions:(id)options reply:(id)reply;
- (BOOL)predictWaitUntilKnownGoodNetworkFor:(int)for matchSignature:(BOOL)signature reply:(id)reply;
- (BOOL)resetDataForKeys:(id)keys reply:(id)reply;
- (BOOL)setPreferCellOverWiFiWithOptions:(id)options reply:(id)reply;
- (BOOL)setReferencePoint:(int)point reply:(id)reply;
- (BOOL)usageConsultOn:(int)on onlyRelativeToReferencePoint:(id)point reply:(id)reply;
- (BOOL)watchpointOn:(int)on forIdentifier:(id)identifier andKey:(id)key onThreshold:(double)threshold withOptions:(id)options uponHit:(id)hit;
- (NetworkPerformanceFeed)initWithWorkspace:(id)workspace;
- (id)_flowMetricsPresentationFromRoll:(id)roll source:(flow_stats_stuct *)source;
- (id)_formatInstantRouteMetrics:(id)metrics;
- (id)_formatWatchpointHit:(id)hit;
- (id)_normalizedOpts:(id)opts toNetwork:(int)network;
- (id)_routeMetricsPresentationFromRoll:(id)roll source:(route_stats_stuct *)source since:(id)since isKnownGood:(id)good isLowInternetDL:(id)l isLowInternetUL:(id)uL isHotSpot:(id)spot rpmAverage:(id)self0 rpmCount:(id)self1 rpmVariance:(id)self2 rpmExitAverage:(id)self3 rpmExitCount:(id)self4 rpmExitVariance:(id)self5;
- (void)dealloc;
- (void)setQueue:(id)queue;
@end

@implementation NetworkPerformanceFeed

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = networkperfLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_DEBUG, "> dealloc %p", buf, 0xCu);
  }

  self->_delegate = 0;
  v5.receiver = self;
  v5.super_class = NetworkPerformanceFeed;
  [(NetworkPerformanceFeed *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (NetworkPerformanceFeed)initWithWorkspace:(id)workspace
{
  v17 = *MEMORY[0x1E69E9840];
  workspaceCopy = workspace;
  v6 = networkperfLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = workspaceCopy;
    _os_log_impl(&dword_1C85F9000, v6, OS_LOG_TYPE_DEBUG, "> initWithWorkspace:%@", buf, 0xCu);
  }

  if (workspaceCopy)
  {
    v14.receiver = self;
    v14.super_class = NetworkPerformanceFeed;
    v7 = [(NetworkPerformanceFeed *)&v14 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->workspace, workspace);
      v9 = dispatch_queue_create("com.apple.Symptoms.SymptomsPresentationFeed.internalQueue", 0);
      internalQueue = v8->internalQueue;
      v8->internalQueue = v9;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)setQueue:(id)queue
{
  v10 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v5 = networkperfLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = queueCopy;
    _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEBUG, "> setQueue:%@", &v8, 0xCu);
  }

  callerQueue = self->callerQueue;
  self->callerQueue = queueCopy;

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)setReferencePoint:(int)point reply:(id)reply
{
  v27 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v7 = networkperfLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 67109376;
    *v26 = point;
    *&v26[4] = 2048;
    *&v26[6] = v8;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "> setReferencePoint:%d reply:%p", buf, 0x12u);
  }

  if ((point - 1) <= 2 && (v9 = **(&unk_1E8318E08 + (point - 1))) != 0)
  {
    v10 = v9;
    connection = [(AnalyticsWorkspace *)self->workspace connection];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __50__NetworkPerformanceFeed_setReferencePoint_reply___block_invoke;
    v23[3] = &unk_1E8318A28;
    v23[4] = self;
    v12 = replyCopy;
    v24 = v12;
    v13 = [connection remoteObjectProxyWithErrorHandler:v23];

    v14 = v13 != 0;
    if (v13)
    {
      v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v10];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D5378], 0}];
      v17 = networkperfLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        *v26 = v15;
        *&v26[8] = 2112;
        *&v26[10] = v16;
        _os_log_impl(&dword_1C85F9000, v17, OS_LOG_TYPE_DEBUG, "setReferencePoint:reply: createSnapshotFor:SFNetworkAttachment pred:%@ act:%@", buf, 0x16u);
      }

      entityName = [MEMORY[0x1E69D5190] entityName];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __50__NetworkPerformanceFeed_setReferencePoint_reply___block_invoke_23;
      v21[3] = &unk_1E8318A78;
      v21[4] = self;
      v22 = v12;
      [v13 createSnapshotFor:entityName pred:v15 actions:v16 reply:v21];
    }
  }

  else
  {
    v14 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

void __50__NetworkPerformanceFeed_setReferencePoint_reply___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for setReferencePoint:reply: %@", buf, 0xCu);
  }

  v5 = *(*(a1 + 32) + 24);
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__NetworkPerformanceFeed_setReferencePoint_reply___block_invoke_14;
    v7[3] = &unk_1E8318A00;
    v9 = *(a1 + 40);
    v8 = v3;
    dispatch_async(v5, v7);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __50__NetworkPerformanceFeed_setReferencePoint_reply___block_invoke_23(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = networkperfLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "setReferencePoint: received NSUUID: %@, error: %@", buf, 0x16u);
  }

  if (v5)
  {
    v8 = [v5 UUIDString];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(a1 + 32) + 24);
  if (v9)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__NetworkPerformanceFeed_setReferencePoint_reply___block_invoke_24;
    block[3] = &unk_1E8318A50;
    v14 = *(a1 + 40);
    v12 = v8;
    v13 = v6;
    dispatch_async(v9, block);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)usageConsultOn:(int)on onlyRelativeToReferencePoint:(id)point reply:(id)reply
{
  v37 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  replyCopy = reply;
  v10 = networkperfLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 67109634;
    *v36 = on;
    *&v36[4] = 2112;
    *&v36[6] = pointCopy;
    *&v36[14] = 2048;
    *&v36[16] = v11;
    _os_log_impl(&dword_1C85F9000, v10, OS_LOG_TYPE_DEBUG, "> usageConsultOn:%d onlyRelativeToReferencePoint:%@ reply:%p", buf, 0x1Cu);
  }

  if ((on - 1) <= 2)
  {
    v12 = **(&unk_1E8318E08 + (on - 1));
    if (v12)
    {
      v13 = v12;
      v14 = pointCopy;
      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v14];
        if (!v15)
        {
          v16 = 0;
LABEL_20:

          goto LABEL_21;
        }
      }

      else
      {
        v15 = 0;
      }

      connection = [(AnalyticsWorkspace *)self->workspace connection];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __76__NetworkPerformanceFeed_usageConsultOn_onlyRelativeToReferencePoint_reply___block_invoke;
      v33[3] = &unk_1E8318A28;
      v33[4] = self;
      v18 = replyCopy;
      v34 = v18;
      v19 = [connection remoteObjectProxyWithErrorHandler:v33];

      v16 = v19 != 0;
      if (v19)
      {
        v28 = v18;
        v30 = v14;
        v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", v13];
        v20 = MEMORY[0x1E695DF20];
        if (v15)
        {
          uUIDString = [v15 UUIDString];
          null = *MEMORY[0x1E69D53A0];
        }

        else
        {
          uUIDString = [MEMORY[0x1E695DFB0] null];
          null = [MEMORY[0x1E695DFB0] null];
        }

        v23 = [v20 dictionaryWithObjectsAndKeys:{uUIDString, null, *MEMORY[0x1E69D5390], *MEMORY[0x1E69D5390], *MEMORY[0x1E69D5398], *MEMORY[0x1E69D5398], 0}];
        if (!v15)
        {
        }

        v24 = networkperfLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          *v36 = v29;
          *&v36[8] = 2112;
          *&v36[10] = v23;
          _os_log_impl(&dword_1C85F9000, v24, OS_LOG_TYPE_DEBUG, "usageConsultOn:onlyRelativeToReferencePoint:reply: query SFNetworkAttachment with pred:%@ sort:nil actions:%@", buf, 0x16u);
        }

        entityName = [MEMORY[0x1E69D5190] entityName];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __76__NetworkPerformanceFeed_usageConsultOn_onlyRelativeToReferencePoint_reply___block_invoke_28;
        v31[3] = &unk_1E8318AC8;
        v31[4] = self;
        v32 = v28;
        [v19 performQueryOnEntity:entityName pred:v29 sort:0 actions:v23 reply:v31];

        v14 = v30;
      }

      goto LABEL_20;
    }
  }

  v16 = 0;
LABEL_21:

  v26 = *MEMORY[0x1E69E9840];
  return v16;
}

void __76__NetworkPerformanceFeed_usageConsultOn_onlyRelativeToReferencePoint_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for usageConsultOn:onlyRelativeToReferencePoint:reply: %@", &v6, 0xCu);
  }

  [*(a1 + 32) _consultReturn:*(a1 + 40) advice:0];
  v5 = *MEMORY[0x1E69E9840];
}

void __76__NetworkPerformanceFeed_usageConsultOn_onlyRelativeToReferencePoint_reply___block_invoke_28(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218242;
    v13 = [v3 count];
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "usageConsultOn: received %lu records with: %@", &v12, 0x16u);
  }

  if (v3 && [v3 count] == 1)
  {
    v5 = [v3 objectAtIndexedSubscript:0];
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69D51D8]];
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = v6;
    if ([v9 isEqualToString:*MEMORY[0x1E69D51C0]])
    {
      v10 = 0;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51C8]])
    {
      v10 = 1;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51E8]])
    {
      v10 = 2;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51D0]])
    {
      v10 = 3;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51B0]])
    {
      v10 = 4;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51F8]])
    {
      v10 = 5;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D5200]])
    {
      v10 = 6;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51B8]])
    {
      v10 = 7;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51A8]])
    {
      v10 = 8;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51F0]])
    {
      v10 = 9;
    }

    else if ([v9 isEqualToString:*MEMORY[0x1E69D51E0]])
    {
      v10 = 10;
    }

    else
    {
      v10 = 0;
    }

    [v7 _consultReturn:v8 advice:v10];
  }

  else
  {
    [*(a1 + 32) _consultReturn:*(a1 + 40) advice:0];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)predictWaitUntilKnownGoodNetworkFor:(int)for matchSignature:(BOOL)signature reply:(id)reply
{
  signatureCopy = signature;
  v17 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v8 = networkperfLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    v12[0] = 67109632;
    v12[1] = for;
    v13 = 1024;
    v14 = signatureCopy;
    v15 = 2048;
    v16 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> predictWaitUntilKnownGoodNetworkFor:%d matchSignature:%{BOOL}d reply:%p", v12, 0x18u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)_rollFlowMetricsValuesFromDict:(id)dict toDict:(id)toDict forKey:(id)key andRequest:(id)request
{
  v57 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  toDictCopy = toDict;
  keyCopy = key;
  v12 = [request objectForKeyedSubscript:*MEMORY[0x1E69D52C0]];

  v13 = [toDictCopy objectForKey:{keyCopy, 0, 0, 0, 0, 0, 0, 0, 0}];
  v14 = v13;
  if (v13)
  {
    bytes = [v13 bytes];
    v16 = networkperfLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v54 = keyCopy;
      v55 = 2112;
      v56 = dictCopy;
      _os_log_impl(&dword_1C85F9000, v16, OS_LOG_TYPE_DEBUG, "rolling up for flow entry %@ data: %@", buf, 0x16u);
    }
  }

  else
  {
    v16 = networkperfLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v54 = keyCopy;
      v55 = 2112;
      v56 = dictCopy;
      _os_log_impl(&dword_1C85F9000, v16, OS_LOG_TYPE_DEBUG, "creating flow entry %@ data: %@", buf, 0x16u);
    }

    bytes = &v52;
  }

  if (v12)
  {
    v17 = [dictCopy objectForKeyedSubscript:@"kind"];
    shortValue = [v17 shortValue];

    if (shortValue)
    {
      bytes[3] = bytes[3] + 1.0;
      v19 = [dictCopy objectForKeyedSubscript:@"txPackets"];
      [v19 doubleValue];
      *(bytes + 4) = v20;

      v21 = [dictCopy objectForKeyedSubscript:@"txReTxPackets"];
      [v21 doubleValue];
      *(bytes + 5) = v22;

      date = [dictCopy objectForKeyedSubscript:@"txFailPackets"];
      [date doubleValue];
      *(bytes + 6) = v24;
    }

    else
    {
      date = [MEMORY[0x1E695DF00] date];
      v40 = [dictCopy objectForKeyedSubscript:@"connSuccesses"];
      [v40 doubleValue];
      bytes[1] = v41 + bytes[1];

      v42 = [dictCopy objectForKeyedSubscript:@"connAttempts"];
      [v42 doubleValue];
      bytes[2] = v43 + bytes[2];

      v44 = [dictCopy objectForKeyedSubscript:@"timeStamp"];

      if (v44)
      {
        v45 = [dictCopy objectForKeyedSubscript:@"timeStamp"];
        [date timeIntervalSinceDate:v45];
        *bytes = v46 + *bytes;
      }

      v47 = [dictCopy objectForKeyedSubscript:@"usecsEstabTime"];
      [v47 doubleValue];
      bytes[7] = v48 + bytes[7];
    }
  }

  else
  {
    v25 = [dictCopy objectForKeyedSubscript:@"connSuccesses"];
    [v25 doubleValue];
    bytes[1] = v26 + bytes[1];

    v27 = [dictCopy objectForKeyedSubscript:@"connAttempts"];
    [v27 doubleValue];
    bytes[2] = v28 + bytes[2];

    v29 = [dictCopy objectForKeyedSubscript:@"timesThresholded"];
    [v29 doubleValue];
    bytes[3] = v30 + bytes[3];

    v31 = [dictCopy objectForKeyedSubscript:@"overallTime"];
    [v31 doubleValue];
    *bytes = v32 + *bytes;

    v33 = [dictCopy objectForKeyedSubscript:@"txPackets"];
    [v33 doubleValue];
    bytes[4] = v34 + bytes[4];

    v35 = [dictCopy objectForKeyedSubscript:@"txReTxPackets"];
    [v35 doubleValue];
    bytes[5] = v36 + bytes[5];

    v37 = [dictCopy objectForKeyedSubscript:@"txFailPackets"];
    [v37 doubleValue];
    bytes[6] = v38 + bytes[6];

    date = [dictCopy objectForKeyedSubscript:@"usecsEstabTime"];
    [date doubleValue];
    bytes[7] = v39 + bytes[7];
  }

  if (!v14)
  {
    v49 = [MEMORY[0x1E695DEF0] dataWithBytes:&v52 length:64];
    [toDictCopy setObject:v49 forKey:keyCopy];
  }

  v50 = *MEMORY[0x1E69E9840];
  return v14 == 0;
}

- (id)_flowMetricsPresentationFromRoll:(id)roll source:(flow_stats_stuct *)source
{
  var1 = source->var1;
  if (var1 > 1.0)
  {
    source->var7 = source->var7 / var1;
  }

  v19 = MEMORY[0x1E695DF20];
  v6 = MEMORY[0x1E696AD98];
  var0 = source->var0;
  rollCopy = roll;
  v17 = [v6 numberWithDouble:var0];
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:source->var1];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:source->var2];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:source->var3];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:source->var4];
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:source->var5];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:source->var6];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:source->var7];
  v13 = [v19 dictionaryWithObjectsAndKeys:{rollCopy, @"remoteID", v17, @"overallTime", v16, @"connSuccesses", v15, @"connAttempts", v8, @"timesThresholded", v9, @"txPackets", v10, @"txReTxPackets", v11, @"txFailPackets", v12, @"usecsEstabTime", 0}];

  return v13;
}

- (BOOL)_rollRouteMetricsValuesFromDict:(id)dict toDict:(id)toDict forKey:(id)key
{
  v95 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  toDictCopy = toDict;
  keyCopy = key;
  v10 = [dictCopy objectForKeyedSubscript:@"overallStay"];
  [v10 doubleValue];
  v12 = v11;

  if (v12 == 0.0)
  {
    v13 = 0;
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    memset(v86, 0, sizeof(v86));
    v14 = [toDictCopy objectForKey:keyCopy];
    v15 = v14;
    v84 = v14 == 0;
    v85 = toDictCopy;
    if (v14)
    {
      bytes = [v14 bytes];
      v17 = networkperfLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v92 = keyCopy;
        v93 = 2112;
        v94 = dictCopy;
        _os_log_impl(&dword_1C85F9000, v17, OS_LOG_TYPE_DEBUG, "rolling up for route entry %@ data: %@", buf, 0x16u);
      }
    }

    else
    {
      *&v87 = 0x7FEFFFFFFFFFFFFFLL;
      v17 = networkperfLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v92 = keyCopy;
        v93 = 2112;
        v94 = dictCopy;
        _os_log_impl(&dword_1C85F9000, v17, OS_LOG_TYPE_DEBUG, "creating route entry %@ data: %@", buf, 0x16u);
      }

      bytes = v86;
    }

    v18 = [dictCopy objectForKeyedSubscript:@"epochs"];
    [v18 doubleValue];
    *bytes = v19 + *bytes;

    v20 = [dictCopy objectForKeyedSubscript:@"faultyStay"];
    [v20 doubleValue];
    bytes[1] = v21 + bytes[1];

    v22 = [dictCopy objectForKeyedSubscript:@"lowqStay"];
    [v22 doubleValue];
    bytes[3] = v23 + bytes[3];

    v24 = [dictCopy objectForKeyedSubscript:@"overallStay"];
    [v24 doubleValue];
    bytes[6] = v25 + bytes[6];

    v26 = [dictCopy objectForKeyedSubscript:@"packetsIn"];
    [v26 doubleValue];
    bytes[7] = v27 + bytes[7];

    v28 = [dictCopy objectForKeyedSubscript:@"packetsOut"];
    [v28 doubleValue];
    bytes[8] = v29 + bytes[8];

    v30 = [dictCopy objectForKeyedSubscript:@"bytesIn"];
    [v30 doubleValue];
    bytes[9] = v31 + bytes[9];

    v32 = [dictCopy objectForKeyedSubscript:@"bytesOut"];
    [v32 doubleValue];
    bytes[10] = v33 + bytes[10];

    v34 = [dictCopy objectForKeyedSubscript:@"rxDupeBytes"];
    [v34 doubleValue];
    bytes[11] = v35 + bytes[11];

    v36 = [dictCopy objectForKeyedSubscript:@"rxOOOBytes"];
    [v36 doubleValue];
    bytes[12] = v37 + bytes[12];

    v38 = [dictCopy objectForKeyedSubscript:@"reTxBytes"];
    [v38 doubleValue];
    bytes[13] = v39 + bytes[13];

    v40 = [dictCopy objectForKeyedSubscript:@"connSuccesses"];
    [v40 doubleValue];
    bytes[15] = v41 + bytes[15];

    v42 = [dictCopy objectForKeyedSubscript:@"connAttempts"];
    [v42 doubleValue];
    bytes[14] = v43 + bytes[14];

    v44 = [dictCopy objectForKeyedSubscript:@"rttMin"];
    [v44 doubleValue];
    if (v45 == 0.0)
    {
      v48 = bytes[16];
    }

    else
    {
      v46 = [dictCopy objectForKeyedSubscript:@"rttMin"];
      [v46 doubleValue];
      v48 = v47;
    }

    v49 = bytes[16];
    if (v48 < v49)
    {
      v49 = v48;
    }

    bytes[16] = v49;
    v50 = [dictCopy objectForKeyedSubscript:@"topDownloadRate"];
    [v50 doubleValue];
    v52 = v51;

    v53 = bytes[19];
    if (v52 >= v53)
    {
      v53 = v52;
    }

    bytes[19] = v53;
    v54 = [dictCopy objectForKeyedSubscript:@"dataStalls"];
    null = [MEMORY[0x1E695DFB0] null];

    if (v54 != null)
    {
      [v54 doubleValue];
      bytes[20] = v56 + bytes[20];
    }

    v57 = [dictCopy objectForKeyedSubscript:@"certErrors"];
    null2 = [MEMORY[0x1E695DFB0] null];

    if (v57 != null2)
    {
      [v57 doubleValue];
      bytes[23] = v59 + bytes[23];
    }

    v60 = [dictCopy objectForKeyedSubscript:@"adminDisables"];
    null3 = [MEMORY[0x1E695DFB0] null];

    if (v60 != null3)
    {
      [v60 doubleValue];
      bytes[21] = v62 + bytes[21];
    }

    v83 = v15;
    v63 = [dictCopy objectForKeyedSubscript:@"passiveCaptivity"];
    null4 = [MEMORY[0x1E695DFB0] null];

    if (v63 != null4)
    {
      [v63 doubleValue];
      bytes[22] = v65 + bytes[22];
    }

    v82 = v63;
    v66 = [dictCopy objectForKeyedSubscript:@"lowLqmStay"];
    null5 = [MEMORY[0x1E695DFB0] null];
    v68 = null5;
    if (v66 == null5)
    {
    }

    else
    {
      [dictCopy objectForKeyedSubscript:?];
      v69 = v60;
      v70 = v57;
      v72 = v71 = v54;
      null6 = [MEMORY[0x1E695DFB0] null];

      v74 = v72 == null6;
      v54 = v71;
      v57 = v70;
      v60 = v69;
      if (!v74)
      {
        v75 = [dictCopy objectForKeyedSubscript:@"lowLqmStay"];
        [v75 doubleValue];
        bytes[2] = v76 + bytes[2];

        v77 = [dictCopy objectForKeyedSubscript:@"lqmTransitionCount"];
        [v77 doubleValue];
        bytes[4] = v78 + bytes[4];

        bytes[5] = bytes[4] * 100.0 / bytes[6];
      }
    }

    toDictCopy = v85;
    if (!v83)
    {
      v79 = [MEMORY[0x1E695DEF0] dataWithBytes:v86 length:192];
      [v85 setObject:v79 forKey:keyCopy];
    }

    v13 = v84;
  }

  v80 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)_routeMetricsPresentationFromRoll:(id)roll source:(route_stats_stuct *)source since:(id)since isKnownGood:(id)good isLowInternetDL:(id)l isLowInternetUL:(id)uL isHotSpot:(id)spot rpmAverage:(id)self0 rpmCount:(id)self1 rpmVariance:(id)self2 rpmExitAverage:(id)self3 rpmExitCount:(id)self4 rpmExitVariance:(id)self5
{
  v32 = MEMORY[0x1E695DF20];
  v52 = MEMORY[0x1E696AD98];
  var0 = source->var0;
  exitVarianceCopy = exitVariance;
  exitCountCopy = exitCount;
  exitAverageCopy = exitAverage;
  varianceCopy = variance;
  countCopy = count;
  averageCopy = average;
  spotCopy = spot;
  uLCopy = uL;
  lCopy = l;
  goodCopy = good;
  sinceCopy = since;
  rollCopy = roll;
  v59 = [v52 numberWithDouble:var0];
  v57 = [MEMORY[0x1E696AD98] numberWithDouble:source->var1];
  v55 = [MEMORY[0x1E696AD98] numberWithDouble:source->var2];
  v53 = [MEMORY[0x1E696AD98] numberWithDouble:source->var3];
  v51 = [MEMORY[0x1E696AD98] numberWithDouble:source->var4];
  v50 = [MEMORY[0x1E696AD98] numberWithDouble:source->var5];
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:source->var6];
  v46 = [MEMORY[0x1E696AD98] numberWithDouble:source->var7];
  v45 = [MEMORY[0x1E696AD98] numberWithDouble:source->var8];
  v44 = [MEMORY[0x1E696AD98] numberWithDouble:source->var9];
  v43 = [MEMORY[0x1E696AD98] numberWithDouble:source->var10];
  v42 = [MEMORY[0x1E696AD98] numberWithDouble:source->var11];
  v40 = [MEMORY[0x1E696AD98] numberWithDouble:source->var12];
  v39 = [MEMORY[0x1E696AD98] numberWithDouble:source->var13];
  v38 = [MEMORY[0x1E696AD98] numberWithDouble:source->var15];
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:source->var14];
  v36 = [MEMORY[0x1E696AD98] numberWithDouble:source->var16];
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:source->var19];
  v34 = [MEMORY[0x1E696AD98] numberWithDouble:source->var20];
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:source->var21];
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:source->var22];
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:source->var23];
  v33 = [v32 dictionaryWithObjectsAndKeys:{rollCopy, @"identifier", v59, @"epochs", v57, @"faultyStay", v55, @"lowLqmStay", v53, @"lowqStay", v51, @"lqmTransitionCount", v50, @"lqmTransitionRate", v47, @"overallStay", v46, @"packetsIn", v45, @"packetsOut", v44, @"bytesIn", v43, @"bytesOut", v42, @"rxDupeBytes", v40, @"rxOOOBytes", v39, @"reTxBytes", v38, @"connSuccesses", v37, @"connAttempts", v36, @"rttMin", v35, @"topDownloadRate", v34, @"dataStalls", v25, @"adminDisables", v22, @"passiveCaptivity", v24, @"certErrors", sinceCopy, @"sinceTime", goodCopy, @"isKnownGood", lCopy, @"isLowInternetDL", uLCopy, @"isLowInternetUL", spotCopy, @"isHotSpot", averageCopy, @"rpmAvg", countCopy, @"rpmCount", varianceCopy}];

  return v33;
}

- (id)_formatInstantRouteMetrics:(id)metrics
{
  metricsCopy = metrics;
  if ([metricsCopy count] == 1)
  {
    v4 = [metricsCopy objectAtIndexedSubscript:0];
    v5 = [v4 mutableCopy];

    v6 = [v5 objectForKeyedSubscript:@"timeStamp"];
    [v5 setObject:v6 forKeyedSubscript:@"sinceTime"];

    [v5 removeObjectForKey:@"timeStamp"];
    v7 = [v5 objectForKeyedSubscript:@"hasNetworkAttachment.identifier"];
    [v5 setObject:v7 forKeyedSubscript:@"identifier"];

    [v5 removeObjectForKey:@"hasNetworkAttachment.identifier"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_normalizedOpts:(id)opts toNetwork:(int)network
{
  v32 = *MEMORY[0x1E69E9840];
  optsCopy = opts;
  if ((network - 1) <= 2 && (v6 = **(&unk_1E8318E08 + (network - 1))) != 0)
  {
    v7 = v6;
    v8 = [optsCopy mutableCopy];
    v9 = [v8 allKeysForObject:*MEMORY[0x1E69D52B0]];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [v8 setObject:v7 forKeyedSubscript:*(*(&v26 + 1) + 8 * i)];
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v11);
    }

    v14 = [v8 allKeysForObject:*MEMORY[0x1E69D5368]];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [v8 setObject:v7 forKeyedSubscript:{*(*(&v22 + 1) + 8 * j), v22}];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v8 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v8;
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke(uint64_t a1, void *a2, void *a3, int a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = *(*(*(a1 + 48) + 8) + 24);
  v10 = networkperfLogHandle();
  v11 = v10;
  if (v9)
  {
    v12 = a4 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    if (a4)
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      v13 = *(a1 + 80);
      *buf = 134218242;
      v41 = v13;
      v42 = 2112;
      v43 = v8;
      v14 = "fullScorecardFor %lu: Forcing callback due to error: %@";
      v15 = v11;
      v16 = OS_LOG_TYPE_DEFAULT;
      v17 = 22;
    }

    else
    {
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        goto LABEL_14;
      }

      v20 = *(a1 + 80);
      *buf = 134217984;
      v41 = v20;
      v14 = "fullScorecardFor %lu: All operations complete, ready to perform callback";
      v15 = v11;
      v16 = OS_LOG_TYPE_INFO;
      v17 = 12;
    }

    _os_log_impl(&dword_1C85F9000, v15, v16, v14, buf, v17);
LABEL_14:

    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 40);
    if (v22 && !dispatch_source_testcancel(*(v21 + 40)))
    {
      dispatch_source_cancel(v22);
    }

    v23 = *(*(a1 + 64) + 8);
    v24 = *(v23 + 40);
    if (v24 && !dispatch_source_testcancel(*(v23 + 40)))
    {
      dispatch_source_cancel(v24);
    }

    v25 = *(*(a1 + 72) + 8);
    v26 = *(v25 + 40);
    if (v26 && !dispatch_source_testcancel(*(v25 + 40)))
    {
      dispatch_source_cancel(v26);
    }

    v27 = *(*(a1 + 32) + 24);
    if (v27)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_36;
      v35[3] = &unk_1E8318AF0;
      v28 = v8;
      v29 = *(a1 + 80);
      v36 = v28;
      v39 = v29;
      v38 = *(a1 + 40);
      v37 = v7;
      dispatch_async(v27, v35);
    }

    else
    {
      v30 = networkperfLogHandle();
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
      if (v8)
      {
        if (v31)
        {
          v32 = *(a1 + 80);
          *buf = 134218243;
          v41 = v32;
          v42 = 2113;
          v43 = v8;
          _os_log_impl(&dword_1C85F9000, v30, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: callback with error %{private}@", buf, 0x16u);
        }
      }

      else if (v31)
      {
        v33 = *(a1 + 80);
        *buf = 134218243;
        v41 = v33;
        v42 = 2113;
        v43 = v7;
        _os_log_impl(&dword_1C85F9000, v30, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: callback with result %{private}@", buf, 0x16u);
      }

      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_32;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v18 = *(a1 + 80);
    v19 = *(*(*(a1 + 48) + 8) + 24);
    *buf = 134218240;
    v41 = v18;
    v42 = 1024;
    LODWORD(v43) = v19;
    _os_log_impl(&dword_1C85F9000, v11, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: Still waiting for %d outstanding operations", buf, 0x12u);
  }

LABEL_32:
  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_36(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = networkperfLogHandle();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v5 = a1[7];
      v6 = a1[4];
      v14 = 134218243;
      v15 = v5;
      v16 = 2113;
      v17 = v6;
      _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: callback on caller queue with error %{private}@", &v14, 0x16u);
    }

    v7 = a1[4];
    v8 = *(a1[6] + 16);
  }

  else
  {
    if (v4)
    {
      v9 = a1[7];
      v10 = a1[5];
      v14 = 134218243;
      v15 = v9;
      v16 = 2113;
      v17 = v10;
      _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: callback on caller queue with result %{private}@", &v14, 0x16u);
    }

    v11 = a1[5];
    v8 = *(a1[6] + 16);
  }

  result = v8();
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_38(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for fullScorecardFor:options:reply: %@", buf, 0xCu);
  }

  v5 = *(*(a1 + 32) + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_39;
  v10[3] = &unk_1E8318B40;
  v6 = *(a1 + 40);
  v11 = v3;
  v12 = v6;
  v7 = *(a1 + 56);
  v13 = *(a1 + 48);
  v14 = v7;
  v8 = v3;
  dispatch_async(v5, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_39(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1CCA78840](a1[5]);
  v3 = networkperfLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = a1[7];
    v5 = a1[4];
    v12 = 134218242;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_ERROR, "fullScorecardFor %lu: Remote proxy error %@", &v12, 0x16u);
  }

  if (v2)
  {
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 24);
    if (v7 <= 0)
    {
      v8 = networkperfLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(*(a1[6] + 8) + 24);
        v12 = 67109120;
        LODWORD(v13) = v9;
        _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", &v12, 8u);
      }

      v6 = *(a1[6] + 8);
      v7 = *(v6 + 24);
    }

    *(v6 + 24) = v7 - 1;
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (v2)[2](v2, 0, v10, 1);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_52(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 104);
  ++*(*(*(a1 + 104) + 8) + 24);
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__53;
  v39[4] = __Block_byref_object_dispose__54;
  v40 = MEMORY[0x1CCA78840](*(a1 + 96));
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 32) + 16));
  v4 = *(*(a1 + 112) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 112) + 8) + 40);
  v7 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v8 = *(*(*(a1 + 112) + 8) + 40);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_55;
  handler[3] = &unk_1E8318B90;
  v9 = *v2;
  v36 = v39;
  v37 = v9;
  v10 = *(a1 + 40);
  v11 = *(a1 + 112);
  v35 = v10;
  v38 = v11;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_activate(*(*(*(a1 + 112) + 8) + 40));
  v12 = networkperfLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 120);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    *buf = 134218499;
    v42 = v13;
    v43 = 2113;
    v44 = v14;
    v45 = 2113;
    v46 = v15;
    _os_log_impl(&dword_1C85F9000, v12, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: requesting flow performance with pred %{private}@ and action %{private}@", buf, 0x20u);
  }

  v16 = *(a1 + 64);
  v17 = [MEMORY[0x1E69D5180] entityName];
  v19 = *(a1 + 48);
  v18 = *(a1 + 56);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_58;
  v24[3] = &unk_1E8318C08;
  v20 = *(a1 + 120);
  v30 = *(a1 + 112);
  v33 = v20;
  v21 = *(a1 + 72);
  v22 = *(a1 + 32);
  v25 = v21;
  v26 = v22;
  v27 = *(a1 + 80);
  v28 = *(a1 + 40);
  v29 = *(a1 + 88);
  v31 = v39;
  v32 = *(a1 + 104);
  [v16 performQueryOnEntity:v17 pred:v19 sort:0 actions:v18 reply:v24];

  _Block_object_dispose(v39, 8);
  v23 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_55(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = networkperfLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "flow performance";
    _os_log_impl(&dword_1C85F9000, v2, OS_LOG_TYPE_ERROR, "fullScorecardFor: timed out while waiting for XPC response (%s)", &v13, 0xCu);
  }

  if (*(*(a1[5] + 8) + 40))
  {
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 24);
    if (v4 <= 0)
    {
      v5 = networkperfLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(*(a1[6] + 8) + 24);
        v13 = 67109120;
        LODWORD(v14) = v6;
        _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", &v13, 8u);
      }

      v3 = *(a1[6] + 8);
      v4 = *(v3 + 24);
    }

    *(v3 + 24) = v4 - 1;
    v7 = a1[4];
    v8 = *(*(a1[5] + 8) + 40);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    (*(v8 + 16))(v8, v7, v9, 0);

    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  dispatch_source_cancel(*(*(a1[7] + 8) + 40));
  v12 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_58(uint64_t a1, void *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(*(a1 + 72) + 8) + 40);
  if (dispatch_source_testcancel(v4))
  {
    v5 = networkperfLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 96);
      *buf = 134217984;
      v50 = v6;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEFAULT, "fullScorecardFor %lu: Timeout timer already fired. Will not process XPC reply for flow performance.", buf, 0xCu);
    }
  }

  else
  {
    dispatch_source_cancel(v4);
    v7 = networkperfLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 96);
      *buf = 134218498;
      v50 = v8;
      v51 = 2048;
      v52 = [v3 count];
      v53 = 2112;
      v54 = v3;
      _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: flow received %lu records with: %@", buf, 0x20u);
    }

    v30 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = v3;
    obj = v3;
    v9 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v9)
    {
      v10 = v9;
      v31 = *v44;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v43 + 1) + 8 * i);
          v13 = [v12 allKeys];
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v40;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v40 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v39 + 1) + 8 * j);
                if ([v19 rangeOfString:*(a1 + 32)] != 0x7FFFFFFFFFFFFFFFLL && v20 != 0)
                {
                  v22 = [v12 objectForKey:v19];
                  [*(a1 + 40) _rollFlowMetricsValuesFromDict:v12 toDict:v30 forKey:v22 andRequest:*(a1 + 48)];

                  goto LABEL_23;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v39 objects:v47 count:16];
            }

            while (v16);
          }

LABEL_23:
        }

        v10 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v10);
    }

    v23 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_59;
    v37[3] = &unk_1E8318BB8;
    v37[4] = *(a1 + 40);
    v24 = v23;
    v38 = v24;
    v5 = v30;
    [v30 enumerateKeysAndObjectsUsingBlock:v37];
    v25 = *(*(a1 + 40) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2;
    block[3] = &unk_1E8318BE0;
    v33 = v24;
    v34 = *(a1 + 56);
    v35 = *(a1 + 64);
    v36 = *(a1 + 80);
    v26 = v24;
    dispatch_async(v25, block);

    v3 = v28;
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_59(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = v8;
  v6 = a2;
  v7 = [*(a1 + 32) _flowMetricsPresentationFromRoll:v6 source:{objc_msgSend(v8, "bytes")}];
  [*(a1 + 40) setObject:v7 forKeyedSubscript:v6];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 48)];
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v2 = *(*(a1 + 64) + 8);
    v3 = *(v2 + 24);
    if (v3 <= 0)
    {
      v4 = networkperfLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(*(*(a1 + 64) + 8) + 24);
        v10[0] = 67109120;
        v10[1] = v5;
        _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", v10, 8u);
      }

      v2 = *(*(a1 + 64) + 8);
      v3 = *(v2 + 24);
    }

    *(v2 + 24) = v3 - 1;
    v6 = *(a1 + 40);
    (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_157(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for fullScorecardFor:options:reply: %@", buf, 0xCu);
  }

  v5 = *(*(a1 + 32) + 16);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_158;
  v10[3] = &unk_1E8318B40;
  v6 = *(a1 + 40);
  v11 = v3;
  v12 = v6;
  v7 = *(a1 + 56);
  v13 = *(a1 + 48);
  v14 = v7;
  v8 = v3;
  dispatch_async(v5, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_158(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1CCA78840](a1[5]);
  v3 = networkperfLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = a1[7];
    v5 = a1[4];
    v12 = 134218242;
    v13 = v4;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_1C85F9000, v3, OS_LOG_TYPE_ERROR, "fullScorecardFor %lu: Remote proxy error %@", &v12, 0x16u);
  }

  if (v2)
  {
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 24);
    if (v7 <= 0)
    {
      v8 = networkperfLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(*(a1[6] + 8) + 24);
        v12 = 67109120;
        LODWORD(v13) = v9;
        _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", &v12, 8u);
      }

      v6 = *(a1[6] + 8);
      v7 = *(v6 + 24);
    }

    *(v6 + 24) = v7 - 1;
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
    (v2)[2](v2, 0, v10, 1);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_195(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 96);
  ++*(*(*(a1 + 96) + 8) + 24);
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = __Block_byref_object_copy__53;
  v40[4] = __Block_byref_object_dispose__54;
  v41 = MEMORY[0x1CCA78840](*(a1 + 88));
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 32) + 16));
  v4 = *(*(a1 + 104) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 104) + 8) + 40);
  v7 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v8 = *(*(*(a1 + 104) + 8) + 40);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2_196;
  handler[3] = &unk_1E8318B90;
  v9 = *v2;
  v37 = v40;
  v38 = v9;
  v10 = *(a1 + 40);
  v11 = *(a1 + 104);
  v36 = v10;
  v39 = v11;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_activate(*(*(*(a1 + 104) + 8) + 40));
  v12 = networkperfLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 112);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    *buf = 134218499;
    v43 = v13;
    v44 = 2113;
    v45 = v14;
    v46 = 2113;
    v47 = v15;
    _os_log_impl(&dword_1C85F9000, v12, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: requesting historical network attachment performance with pred %{private}@ and action %{private}@", buf, 0x20u);
  }

  v16 = *(a1 + 64);
  v17 = [MEMORY[0x1E69D5188] entityName];
  v19 = *(a1 + 48);
  v18 = *(a1 + 56);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_199;
  v25[3] = &unk_1E8318C80;
  v20 = *(a1 + 112);
  v30 = *(a1 + 104);
  v33 = v20;
  v34 = *(a1 + 120);
  v21 = *(a1 + 72);
  v22 = *(a1 + 32);
  v23 = *(a1 + 40);
  v26 = v21;
  v27 = v22;
  v28 = v23;
  v29 = *(a1 + 80);
  v31 = v40;
  v32 = *(a1 + 96);
  [v16 performQueryOnEntity:v17 pred:v19 sort:0 actions:v18 reply:v25];

  _Block_object_dispose(v40, 8);
  v24 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2_196(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = networkperfLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "historical network attachment performance";
    _os_log_impl(&dword_1C85F9000, v2, OS_LOG_TYPE_ERROR, "fullScorecardFor: timed out while waiting for XPC response (%s)", &v13, 0xCu);
  }

  if (*(*(a1[5] + 8) + 40))
  {
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 24);
    if (v4 <= 0)
    {
      v5 = networkperfLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(*(a1[6] + 8) + 24);
        v13 = 67109120;
        LODWORD(v14) = v6;
        _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", &v13, 8u);
      }

      v3 = *(a1[6] + 8);
      v4 = *(v3 + 24);
    }

    *(v3 + 24) = v4 - 1;
    v7 = a1[4];
    v8 = *(*(a1[5] + 8) + 40);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    (*(v8 + 16))(v8, v7, v9, 0);

    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  dispatch_source_cancel(*(*(a1[7] + 8) + 40));
  v12 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_199(uint64_t a1, void *a2)
{
  v119 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v68 = a1;
  v4 = *(*(*(a1 + 64) + 8) + 40);
  if (dispatch_source_testcancel(v4))
  {
    v5 = networkperfLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v68 + 88);
      *buf = 134217984;
      v114 = v6;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEFAULT, "fullScorecardFor %lu: Timeout timer already fired. Will not process XPC reply for historical network attachment performance.", buf, 0xCu);
    }
  }

  else
  {
    dispatch_source_cancel(v4);
    v7 = networkperfLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(v68 + 88);
      *buf = 134218498;
      v114 = v8;
      v115 = 2048;
      v116 = [v3 count];
      v117 = 2112;
      v118 = v3;
      _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: route received %lu records with: %@", buf, 0x20u);
    }

    if (*(v68 + 96) == 1)
    {
      [*(v68 + 32) setInterruptionHandler:0];
      [*(v68 + 32) invalidate];
    }

    v67 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v82 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v81 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v78 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v77 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v76 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v75 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v66 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v79 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v73 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v71 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v69 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v63 = v3;
    obj = v3;
    v9 = [obj countByEnumeratingWithState:&v107 objects:v112 count:16];
    if (v9)
    {
      v10 = v9;
      v83 = *v108;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v108 != v83)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v107 + 1) + 8 * i);
          v13 = [v12 allKeys];
          v103 = 0u;
          v104 = 0u;
          v105 = 0u;
          v106 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v103 objects:v111 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v104;
            while (2)
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v104 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v103 + 1) + 8 * j);
                if ([v19 rangeOfString:@"identifier"] != 0x7FFFFFFFFFFFFFFFLL && v20 != 0)
                {
                  v22 = [v12 objectForKey:v19];
                  [*(v68 + 40) _rollRouteMetricsValuesFromDict:v12 toDict:v67 forKey:v22];
                  v23 = [v12 objectForKey:@"hasNetworkAttachment.firstTimeStamp"];
                  v24 = [v82 objectForKey:v22];

                  if (v24)
                  {
                    v25 = 1;
                  }

                  else
                  {
                    v25 = v23 == 0;
                  }

                  if (!v25)
                  {
                    [v82 setObject:v23 forKey:v22];
                  }

                  v26 = [v12 objectForKey:@"hasNetworkAttachment.isKnownGood"];
                  v27 = [v81 objectForKey:v22];

                  if (v27)
                  {
                    v28 = 1;
                  }

                  else
                  {
                    v28 = v26 == 0;
                  }

                  if (!v28)
                  {
                    [v81 setObject:v26 forKey:v22];
                  }

                  v29 = [v78 objectForKey:v22];

                  if (!v29)
                  {
                    v30 = [v12 objectForKey:@"hasNetworkAttachment.isLowInternetDL"];
                    v31 = v30;
                    if (v30)
                    {
                      v32 = v30;
                    }

                    else
                    {
                      v32 = MEMORY[0x1E695E110];
                    }

                    [v78 setObject:v32 forKey:v22];
                  }

                  v33 = [v77 objectForKey:v22];

                  if (!v33)
                  {
                    v34 = [v12 objectForKey:@"hasNetworkAttachment.isLowInternetUL"];
                    v35 = v34;
                    if (v34)
                    {
                      v36 = v34;
                    }

                    else
                    {
                      v36 = MEMORY[0x1E695E110];
                    }

                    [v77 setObject:v36 forKey:v22];
                  }

                  v37 = [v76 objectForKey:v22];

                  if (!v37)
                  {
                    v38 = [v12 objectForKey:@"hasNetworkAttachment.isHotSpot"];
                    v39 = v38;
                    if (v38)
                    {
                      v40 = v38;
                    }

                    else
                    {
                      v40 = MEMORY[0x1E695E110];
                    }

                    [v76 setObject:v40 forKey:v22];
                  }

                  v41 = [v75 objectForKey:v22];

                  if (!v41)
                  {
                    v42 = [v12 objectForKey:@"hasNetworkAttachment.rpmAvg"];
                    if (v42)
                    {
                      [v75 setObject:v42 forKey:v22];
                    }
                  }

                  v43 = [v66 objectForKey:v22];

                  if (!v43)
                  {
                    v44 = [v12 objectForKey:@"hasNetworkAttachment.rpmCount"];
                    if (v44)
                    {
                      [v79 setObject:v44 forKey:v22];
                    }
                  }

                  v45 = [v79 objectForKey:v22];

                  if (!v45)
                  {
                    v46 = [v12 objectForKey:@"hasNetworkAttachment.rpmVar"];
                    if (v46)
                    {
                      [v79 setObject:v46 forKey:v22];
                    }
                  }

                  v47 = [v73 objectForKey:v22];

                  if (!v47)
                  {
                    v48 = [v12 objectForKey:@"hasNetworkAttachment.rpmExitAvg"];
                    if (v48)
                    {
                      [v73 setObject:v48 forKey:v22];
                    }
                  }

                  v49 = [v71 objectForKey:v22];

                  if (!v49)
                  {
                    v50 = [v12 objectForKey:@"hasNetworkAttachment.rpmExitCount"];
                    if (v50)
                    {
                      [v71 setObject:v50 forKey:v22];
                    }
                  }

                  v51 = [v69 objectForKey:v22];

                  if (!v51)
                  {
                    v52 = [v12 objectForKey:@"hasNetworkAttachment.rpmExitVar"];
                    if (v52)
                    {
                      [v69 setObject:v52 forKey:v22];
                    }
                  }

                  goto LABEL_76;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v103 objects:v111 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

LABEL_76:
        }

        v10 = [obj countByEnumeratingWithState:&v107 objects:v112 count:16];
      }

      while (v10);
    }

    v53 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_200;
    v90[3] = &unk_1E8318C58;
    v90[4] = *(v68 + 40);
    v91 = v82;
    v92 = v81;
    v93 = v78;
    v94 = v77;
    v95 = v76;
    v96 = v75;
    v97 = v66;
    v98 = v79;
    v99 = v73;
    v100 = v71;
    v101 = v69;
    obja = v53;
    v102 = obja;
    v84 = v69;
    v72 = v71;
    v74 = v73;
    v80 = v79;
    v70 = v66;
    v54 = v75;
    v55 = v76;
    v56 = v77;
    v57 = v78;
    v58 = v81;
    v59 = v82;
    v5 = v67;
    [v67 enumerateKeysAndObjectsUsingBlock:v90];
    v60 = *(*(v68 + 40) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2_201;
    block[3] = &unk_1E8318BE0;
    v86 = obja;
    v87 = *(v68 + 48);
    v88 = *(v68 + 56);
    v89 = *(v68 + 72);
    v61 = obja;
    dispatch_async(v60, block);

    v3 = v63;
  }

  v62 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_200(uint64_t a1, void *a2, void *a3)
{
  v21 = a3;
  v5 = v21;
  v6 = a2;
  v19 = [v21 bytes];
  v20 = *(a1 + 32);
  v17 = [*(a1 + 40) objectForKey:v6];
  v15 = [*(a1 + 48) objectForKey:v6];
  v18 = [*(a1 + 56) objectForKey:v6];
  v16 = [*(a1 + 64) objectForKey:v6];
  v14 = [*(a1 + 72) objectForKey:v6];
  v13 = [*(a1 + 80) objectForKey:v6];
  v12 = [*(a1 + 88) objectForKey:v6];
  v7 = [*(a1 + 96) objectForKey:v6];
  v8 = [*(a1 + 104) objectForKey:v6];
  v9 = [*(a1 + 112) objectForKey:v6];
  v10 = [*(a1 + 120) objectForKey:v6];
  v11 = [v20 _routeMetricsPresentationFromRoll:v6 source:v19 since:v17 isKnownGood:v15 isLowInternetDL:v18 isLowInternetUL:v16 isHotSpot:v14 rpmAverage:v13 rpmCount:v12 rpmVariance:v7 rpmExitAverage:v8 rpmExitCount:v9 rpmExitVariance:v10];

  [*(a1 + 128) setObject:v11 forKeyedSubscript:v6];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2_201(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 48)];
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v2 = *(*(a1 + 64) + 8);
    v3 = *(v2 + 24);
    if (v3 <= 0)
    {
      v4 = networkperfLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(*(*(a1 + 64) + 8) + 24);
        v10[0] = 67109120;
        v10[1] = v5;
        _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", v10, 8u);
      }

      v2 = *(*(a1 + 64) + 8);
      v3 = *(v2 + 24);
    }

    *(v2 + 24) = v3 - 1;
    v6 = *(a1 + 40);
    (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_202(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 88);
  ++*(*(*(a1 + 88) + 8) + 24);
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__53;
  v36[4] = __Block_byref_object_dispose__54;
  v37 = MEMORY[0x1CCA78840](*(a1 + 80));
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 32) + 16));
  v4 = *(*(a1 + 96) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 96) + 8) + 40);
  v7 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  v8 = *(*(*(a1 + 96) + 8) + 40);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2_203;
  handler[3] = &unk_1E8318B90;
  v9 = *v2;
  v33 = v36;
  v34 = v9;
  v10 = *(a1 + 40);
  v11 = *(a1 + 96);
  v32 = v10;
  v35 = v11;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_activate(*(*(*(a1 + 96) + 8) + 40));
  v12 = networkperfLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 104);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    *buf = 134218499;
    v39 = v13;
    v40 = 2113;
    v41 = v14;
    v42 = 2113;
    v43 = v15;
    _os_log_impl(&dword_1C85F9000, v12, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: requesting instant network attachment performance with pred %{private}@ and action %{private}@", buf, 0x20u);
  }

  v16 = *(a1 + 64);
  v17 = [MEMORY[0x1E69D5188] entityName];
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_205;
  v24[3] = &unk_1E8318CD0;
  v20 = *(a1 + 96);
  v30 = *(a1 + 104);
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v27 = v20;
  v24[4] = v21;
  v25 = v22;
  v26 = *(a1 + 72);
  v28 = v36;
  v29 = *(a1 + 88);
  [v16 performQueryOnEntity:v17 pred:v18 sort:0 actions:v19 reply:v24];

  _Block_object_dispose(v36, 8);
  v23 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_2_203(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = networkperfLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315138;
    v14 = "instant network attachment performance";
    _os_log_impl(&dword_1C85F9000, v2, OS_LOG_TYPE_ERROR, "fullScorecardFor: timed out while waiting for XPC response (%s)", &v13, 0xCu);
  }

  if (*(*(a1[5] + 8) + 40))
  {
    v3 = *(a1[6] + 8);
    v4 = *(v3 + 24);
    if (v4 <= 0)
    {
      v5 = networkperfLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(*(a1[6] + 8) + 24);
        v13 = 67109120;
        LODWORD(v14) = v6;
        _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", &v13, 8u);
      }

      v3 = *(a1[6] + 8);
      v4 = *(v3 + 24);
    }

    *(v3 + 24) = v4 - 1;
    v7 = a1[4];
    v8 = *(*(a1[5] + 8) + 40);
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:60 userInfo:0];
    (*(v8 + 16))(v8, v7, v9, 0);

    v10 = *(a1[5] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  dispatch_source_cancel(*(*(a1[7] + 8) + 40));
  v12 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_205(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(*(a1 + 56) + 8) + 40);
  if (dispatch_source_testcancel(v4))
  {
    v5 = networkperfLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 80);
      *buf = 134217984;
      v21 = v6;
      _os_log_impl(&dword_1C85F9000, v5, OS_LOG_TYPE_DEFAULT, "fullScorecardFor %lu: Timeout timer already fired. Will not process XPC reply for instant network attachment performance.", buf, 0xCu);
    }
  }

  else
  {
    dispatch_source_cancel(v4);
    v7 = networkperfLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 80);
      *buf = 134218498;
      v21 = v8;
      v22 = 2048;
      v23 = [v3 count];
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_INFO, "fullScorecardFor %lu: route received %lu records with: %@", buf, 0x20u);
    }

    v5 = [*(a1 + 32) _formatInstantRouteMetrics:v3];
    v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    if (v5)
    {
      v10 = [v5 objectForKeyedSubscript:@"identifier"];

      if (v10)
      {
        v11 = [v5 objectForKeyedSubscript:@"identifier"];
        [v9 setObject:v5 forKeyedSubscript:v11];
      }
    }

    v12 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_206;
    block[3] = &unk_1E8318BE0;
    v16 = v9;
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = *(a1 + 64);
    v13 = v9;
    dispatch_async(v12, block);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __57__NetworkPerformanceFeed_fullScorecardFor_options_reply___block_invoke_206(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) setObject:*(a1 + 32) forKeyedSubscript:*(a1 + 48)];
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v2 = *(*(a1 + 64) + 8);
    v3 = *(v2 + 24);
    if (v3 <= 0)
    {
      v4 = networkperfLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(*(*(a1 + 64) + 8) + 24);
        v10[0] = 67109120;
        v10[1] = v5;
        _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "fullScorecardFor: attempting to decrement outstanding operations below 0! (%d)", v10, 8u);
      }

      v2 = *(*(a1 + 64) + 8);
      v3 = *(v2 + 24);
    }

    *(v2 + 24) = v3 - 1;
    v6 = *(a1 + 40);
    (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_formatWatchpointHit:(id)hit
{
  lastObject = [hit lastObject];
  v4 = lastObject;
  if (lastObject && ([lastObject objectForKeyedSubscript:@"kind"], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "shortValue"), v5, v6 == 1))
  {
    v7 = MEMORY[0x1E695DF20];
    v8 = [v4 objectForKeyedSubscript:@"txPackets"];
    v9 = [v4 objectForKeyedSubscript:@"txReTxPackets"];
    v10 = [v4 objectForKeyedSubscript:@"txFailPackets"];
    v11 = [v4 objectForKeyedSubscript:@"txReTxInterval"];
    v12 = [v7 dictionaryWithObjectsAndKeys:{v8, @"txPackets", v9, @"txReTxPackets", v10, @"txFailPackets", v11, @"txReTxInterval", 0}];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)watchpointOn:(int)on forIdentifier:(id)identifier andKey:(id)key onThreshold:(double)threshold withOptions:(id)options uponHit:(id)hit
{
  v60 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  keyCopy = key;
  optionsCopy = options;
  hitCopy = hit;
  v18 = networkperfLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = MEMORY[0x1CCA78840](hitCopy);
    *buf = 67110402;
    *v53 = on;
    *&v53[4] = 2112;
    *&v53[6] = identifierCopy;
    *&v53[14] = 2112;
    *&v53[16] = keyCopy;
    v54 = 2048;
    thresholdCopy = threshold;
    v56 = 2112;
    v57 = optionsCopy;
    v58 = 2048;
    v59 = v19;
    _os_log_impl(&dword_1C85F9000, v18, OS_LOG_TYPE_DEBUG, "> watchpointOn:%d forIdentifier:%@ andKey:%@ onThreshold:%.2lf withOptions:%@ uponHit:%p", buf, 0x3Au);
  }

  v20 = 0;
  if (identifierCopy && threshold != 0.0)
  {
    connection = [(AnalyticsWorkspace *)self->workspace connection];

    if (connection)
    {
      v22 = *MEMORY[0x1E69D52C8];
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D52D0], *MEMORY[0x1E69D52C8], 0}];
      if (optionsCopy && ([optionsCopy isEqualToDictionary:v23] & 1) != 0)
      {
        connection2 = [(AnalyticsWorkspace *)self->workspace connection];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __92__NetworkPerformanceFeed_watchpointOn_forIdentifier_andKey_onThreshold_withOptions_uponHit___block_invoke_2;
        v47[3] = &unk_1E8318D20;
        v42 = hitCopy;
        v48 = v42;
        v25 = [connection2 remoteObjectProxyWithErrorHandler:v47];

        v20 = v25 != 0;
        if (v25)
        {
          v40 = v25;
          v41 = v23;
          v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
          v39 = [optionsCopy objectForKeyedSubscript:v22];
          v37 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ AND %K == %@", @"tmpID", identifierCopy, v22, v39];
          v26 = MEMORY[0x1E695DF20];
          v27 = *MEMORY[0x1E69D53D0];
          v28 = [MEMORY[0x1E696AD98] numberWithDouble:threshold];
          v29 = [v26 dictionaryWithObjectsAndKeys:{identifierCopy, v27, v28, *MEMORY[0x1E69D53D8], keyCopy, *MEMORY[0x1E69D53C8], *MEMORY[0x1E69D52C0], *MEMORY[0x1E69D52C0], 0}];

          v30 = networkperfLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            *v53 = v37;
            *&v53[8] = 2112;
            *&v53[10] = v29;
            _os_log_impl(&dword_1C85F9000, v30, OS_LOG_TYPE_DEBUG, "performQueryOnEntity:SFLiveFlowPerf pred:%@ sort:nil actions:%@", buf, 0x16u);
          }

          entityName = [MEMORY[0x1E69D5180] entityName];
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v43[2] = __92__NetworkPerformanceFeed_watchpointOn_forIdentifier_andKey_onThreshold_withOptions_uponHit___block_invoke_207;
          v43[3] = &unk_1E8318D48;
          v43[4] = self;
          v44 = v38;
          v45 = identifierCopy;
          v46 = v42;
          v32 = v38;
          [v40 performQueryOnEntity:entityName pred:v37 sort:0 actions:v29 reply:v43];

          v25 = v40;
          v23 = v41;
        }

        v33 = v48;
      }

      else
      {
        v33 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:0];
        callerQueue = self->callerQueue;
        if (callerQueue)
        {
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __92__NetworkPerformanceFeed_watchpointOn_forIdentifier_andKey_onThreshold_withOptions_uponHit___block_invoke;
          block[3] = &unk_1E8318A00;
          v51 = hitCopy;
          v33 = v33;
          v50 = v33;
          dispatch_async(callerQueue, block);
        }

        else
        {
          (*(hitCopy + 2))(hitCopy, 0, v33);
        }

        v20 = 1;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  v35 = *MEMORY[0x1E69E9840];
  return v20;
}

void __92__NetworkPerformanceFeed_watchpointOn_forIdentifier_andKey_onThreshold_withOptions_uponHit___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for watchpointOn:forIdentifier:andKey: %@", &v8, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:54 userInfo:0];
  (*(v5 + 16))(v5, 0, v6);

  v7 = *MEMORY[0x1E69E9840];
}

void __92__NetworkPerformanceFeed_watchpointOn_forIdentifier_andKey_onThreshold_withOptions_uponHit___block_invoke_207(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v16 = [v3 count];
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_INFO, " watchpoint received %lu records with: %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) _formatWatchpointHit:v3];
  if (!v5)
  {
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    v6 = *(*(a1 + 32) + 24);
    if (v6)
    {
      goto LABEL_7;
    }

    v8 = *(a1 + 56);
    if (v7)
    {
      v9 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v7 = 0;
    v9 = *(a1 + 40);
LABEL_12:
    (*(v8 + 16))(v8, v9, v7);
    goto LABEL_13;
  }

  [*(a1 + 40) setObject:v5 forKeyedSubscript:*(a1 + 48)];
  v6 = *(*(a1 + 32) + 24);
  if (!v6)
  {
    v8 = *(a1 + 56);
    goto LABEL_9;
  }

  v7 = 0;
LABEL_7:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__NetworkPerformanceFeed_watchpointOn_forIdentifier_andKey_onThreshold_withOptions_uponHit___block_invoke_208;
  block[3] = &unk_1E8318A50;
  v14 = *(a1 + 56);
  v7 = v7;
  v12 = v7;
  v13 = *(a1 + 40);
  dispatch_async(v6, block);

LABEL_13:
  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __92__NetworkPerformanceFeed_watchpointOn_forIdentifier_andKey_onThreshold_withOptions_uponHit___block_invoke_208(void *a1)
{
  v2 = a1[6];
  if (a1[4])
  {
    v3 = 0;
  }

  else
  {
    v3 = a1[5];
  }

  return (*(v2 + 16))(v2, v3);
}

- (BOOL)resetDataForKeys:(id)keys reply:(id)reply
{
  v26 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  replyCopy = reply;
  v8 = networkperfLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v23 = keysCopy;
    v24 = 2048;
    v25 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> resetDataForKeys:%@ reply:%p", buf, 0x16u);
  }

  connection = [(AnalyticsWorkspace *)self->workspace connection];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __49__NetworkPerformanceFeed_resetDataForKeys_reply___block_invoke;
  v20[3] = &unk_1E8318D20;
  v11 = replyCopy;
  v21 = v11;
  v12 = [connection synchronousRemoteObjectProxyWithErrorHandler:v20];

  if (v12)
  {
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E69D5380], 0}];
    allObjects = [keysCopy allObjects];
    v15 = networkperfLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v23 = allObjects;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_1C85F9000, v15, OS_LOG_TYPE_DEBUG, "resetDataFor:%@ nameKind:nil inScopes:%@", buf, 0x16u);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __49__NetworkPerformanceFeed_resetDataForKeys_reply___block_invoke_209;
    v18[3] = &unk_1E8318D70;
    v19 = v11;
    [v12 resetDataFor:allObjects nameKind:0 inScopes:v13 reply:v18];
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12 != 0;
}

void __49__NetworkPerformanceFeed_resetDataForKeys_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for resetDataForKeys:reply: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t __49__NetworkPerformanceFeed_resetDataForKeys_reply___block_invoke_209(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = networkperfLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_DEBUG, "resetDataForKeys received callback with result:%{BOOL}d", v7, 8u);
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)getPreferCellOverWiFiWithOptions:(id)options reply:(id)reply
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  v8 = networkperfLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v21 = optionsCopy;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> getPreferCellOverWiFiWithOptions:%@ reply:%p", buf, 0x16u);
  }

  if (replyCopy)
  {
    connection = [(AnalyticsWorkspace *)self->workspace connection];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__NetworkPerformanceFeed_getPreferCellOverWiFiWithOptions_reply___block_invoke;
    v18[3] = &unk_1E8318D20;
    v11 = replyCopy;
    v19 = v11;
    v12 = [connection remoteObjectProxyWithErrorHandler:v18];

    if (v12)
    {
      v13 = networkperfLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = optionsCopy;
        _os_log_impl(&dword_1C85F9000, v13, OS_LOG_TYPE_DEBUG, "getPreferCellOverWiFiWithOptions:%@", buf, 0xCu);
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__NetworkPerformanceFeed_getPreferCellOverWiFiWithOptions_reply___block_invoke_211;
      v16[3] = &unk_1E8318D98;
      v17 = v11;
      [v12 getPreferCellOverWiFiWithOptions:optionsCopy reply:v16];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return replyCopy != 0;
}

void __65__NetworkPerformanceFeed_getPreferCellOverWiFiWithOptions_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for getPreferCellOverWiFiWithOptions: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __65__NetworkPerformanceFeed_getPreferCellOverWiFiWithOptions_reply___block_invoke_211(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = networkperfLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "getPreferCellOverWiFiWithOptions received callback with error:%@ and outcome:%@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)setPreferCellOverWiFiWithOptions:(id)options reply:(id)reply
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  v8 = networkperfLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = MEMORY[0x1CCA78840](replyCopy);
    *buf = 138412546;
    v21 = optionsCopy;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&dword_1C85F9000, v8, OS_LOG_TYPE_DEBUG, "> setPreferCellOverWiFiWithOptions:%@ reply:%p", buf, 0x16u);
  }

  if (replyCopy)
  {
    connection = [(AnalyticsWorkspace *)self->workspace connection];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__NetworkPerformanceFeed_setPreferCellOverWiFiWithOptions_reply___block_invoke;
    v18[3] = &unk_1E8318D20;
    v11 = replyCopy;
    v19 = v11;
    v12 = [connection remoteObjectProxyWithErrorHandler:v18];

    if (v12)
    {
      v13 = networkperfLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v21 = optionsCopy;
        _os_log_impl(&dword_1C85F9000, v13, OS_LOG_TYPE_DEBUG, "setPreferCellOverWiFiWithOptions:%@", buf, 0xCu);
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __65__NetworkPerformanceFeed_setPreferCellOverWiFiWithOptions_reply___block_invoke_213;
      v16[3] = &unk_1E8318D98;
      v17 = v11;
      [v12 setPreferCellOverWiFiWithOptions:optionsCopy reply:v16];
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return replyCopy != 0;
}

void __65__NetworkPerformanceFeed_setPreferCellOverWiFiWithOptions_reply___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = networkperfLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1C85F9000, v4, OS_LOG_TYPE_ERROR, "XPC error for setPreferCellOverWiFiWithOptions: %@", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v5 = *MEMORY[0x1E69E9840];
}

void __65__NetworkPerformanceFeed_setPreferCellOverWiFiWithOptions_reply___block_invoke_213(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = networkperfLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1C85F9000, v7, OS_LOG_TYPE_DEBUG, "setPreferCellOverWiFiWithOptions received callback with error:%@ and outcome:%@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

@end