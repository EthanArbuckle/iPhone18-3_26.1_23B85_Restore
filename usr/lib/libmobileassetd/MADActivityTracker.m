@interface MADActivityTracker
+ (BOOL)persistedCommand:(int)a3;
+ (id)nameOfLayer:(unint64_t)a3;
+ (id)nameOfStatus:(unint64_t)a3;
+ (unint64_t)categoryForCommand:(int)a3;
+ (unint64_t)topLevelActivityForCommand:(int)a3;
- (BOOL)associateEventualReply:(id)a3 withCommand:(int)a4;
- (id)init:(unint64_t)a3 fromInitiator:(unint64_t)a4 ofName:(id)a5 withCategory:(unint64_t)a6 forAssetType:(id)a7 associatedWith:(id)a8;
- (void)assignParentTracker:(id)a3;
- (void)associateActivityName:(id)a3;
- (void)associateCommandRequest:(id)a3;
- (void)associateDownloadInfo:(id)a3;
- (void)associateXPCConnection:(id)a3;
- (void)extendLogLeader:(id)a3 withValue:(id)a4;
- (void)failureResult:(int)a3 ofResultName:(id)a4 forReason:(id)a5;
- (void)sendReply;
- (void)successWithIssue:(id)a3;
- (void)usesChildDict;
- (void)warningNote:(id)a3 fromMethod:(id)a4 warning:(id)a5;
@end

@implementation MADActivityTracker

- (id)init:(unint64_t)a3 fromInitiator:(unint64_t)a4 ofName:(id)a5 withCategory:(unint64_t)a6 forAssetType:(id)a7 associatedWith:(id)a8
{
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v44.receiver = self;
  v44.super_class = MADActivityTracker;
  v18 = [(MADActivityTracker *)&v44 init];
  v19 = v18;
  if (v18)
  {
    v18->_topLevel = a3;
    v18->_initiatorType = a4;
    objc_storeStrong(&v18->_initiatorName, a5);
    v19->_category = a6;
    objc_storeStrong(&v19->_assetType, a7);
    scopeActivity = v19->_scopeActivity;
    v19->_scopeActivity = 0;

    activityName = v19->_activityName;
    v19->_activityName = 0;

    v22 = [NSMutableString stringWithString:@"|"];
    logLeader = v19->_logLeader;
    v19->_logLeader = v22;

    failureReason = v19->_failureReason;
    v19->_failureReason = 0;

    v25 = objc_alloc_init(MADActivityStats);
    stats = v19->_stats;
    v19->_stats = v25;

    if (v17)
    {
      v27 = [v17 activityUUID];
      activityUUID = v19->_activityUUID;
      v19->_activityUUID = v27;

      v29 = [v17 xpcConnection];
      xpcConnection = v19->_xpcConnection;
      v19->_xpcConnection = v29;

      v31 = [v17 downloadInfo];
    }

    else
    {
      v32 = +[NSUUID UUID];
      v33 = [v32 UUIDString];
      v34 = v19->_activityUUID;
      v19->_activityUUID = v33;

      v35 = v19->_xpcConnection;
      v19->_xpcConnection = 0;

      v31 = 0;
    }

    downloadInfo = v19->_downloadInfo;
    v19->_downloadInfo = v31;

    v37 = v19->_xpcConnection;
    v19->_xpcConnection = 0;

    v19->_command = 0;
    request = v19->_request;
    v19->_request = 0;

    reply = v19->_reply;
    v19->_reply = 0;

    v40 = v19->_downloadInfo;
    v19->_downloadInfo = 0;

    v19->_instanceCount = -1;
    parentTracker = v19->_parentTracker;
    v19->_parentTracker = 0;

    childDict = v19->_childDict;
    v19->_childDict = 0;

    v19->_validTracker = 1;
  }

  return v19;
}

- (void)associateXPCConnection:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityTracker *)self xpcConnection];

  if (!v4)
  {
    [(MADActivityTracker *)self setXpcConnection:v5];
  }
}

- (void)associateActivityName:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityTracker *)self activityName];

  if (!v4)
  {
    [(MADActivityTracker *)self setActivityName:v5];
  }
}

- (BOOL)associateEventualReply:(id)a3 withCommand:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(MADActivityTracker *)self reply];

  if (v7)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    reply = xpc_dictionary_create_reply(v6);
    v8 = reply != 0;
    if (reply)
    {
      [(MADActivityTracker *)self setReply:reply];
      [(MADActivityTracker *)self setCommand:v4];
    }
  }

  return v8;
}

- (void)associateCommandRequest:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityTracker *)self request];

  if (!v4)
  {
    [(MADActivityTracker *)self setRequest:v5];
  }
}

- (void)associateDownloadInfo:(id)a3
{
  v24 = a3;
  v4 = [(MADActivityTracker *)self downloadInfo];

  if (!v4)
  {
    v5 = [NSString alloc];
    v6 = [v24 originalUrl];
    v7 = [v24 options];
    v8 = [v7 tightSummaryIncludingAdditional:0];
    v9 = [v5 initWithFormat:@"url:%@ initOpts:%@ size(dl:%llu, ex:%llu)", v6, v8, objc_msgSend(v24, "downloadSize"), objc_msgSend(v24, "totalExpectedBytes")];

    v10 = [v24 task];

    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = [v24 task];
    v12 = [v11 description];
    v13 = [v12 componentsSeparatedByString:@" "];

    v14 = [v13 count];
    v15 = v14;
    if (v14 == 1)
    {
      v16 = v13;
      v17 = 0;
    }

    else
    {
      if (v14 < 2)
      {
        v18 = v13;
        goto LABEL_12;
      }

      v20 = [v13 objectAtIndexedSubscript:0];
      v21 = [v20 isEqualToString:@"BackgroundDownloadTask"];

      if (v21)
      {
        v22 = [v13 objectAtIndexedSubscript:(v15 - 1)];
        v18 = [NSString stringWithFormat:@"B:%@", v22];

LABEL_6:
        if (v18)
        {
          v19 = [[NSString alloc] initWithFormat:@"%@ NSURL:%@", v9, v18];

          v9 = v19;
LABEL_12:
        }

LABEL_13:
        v23 = [(MADActivityTracker *)self logLeader];
        [v23 appendFormat:@"%@%@", v9, @"|"];

        [(MADActivityTracker *)self setDownloadInfo:v24];
        goto LABEL_14;
      }

      v17 = (v15 - 1);
      v16 = v13;
    }

    v18 = [v16 objectAtIndexedSubscript:v17];
    goto LABEL_6;
  }

LABEL_14:
}

- (void)usesChildDict
{
  v3 = [(MADActivityTracker *)self childDict];

  if (!v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    [(MADActivityTracker *)self setChildDict:v4];
  }
}

- (void)assignParentTracker:(id)a3
{
  v5 = a3;
  v4 = [(MADActivityTracker *)self parentTracker];

  if (!v4)
  {
    [(MADActivityTracker *)self setParentTracker:v5];
  }
}

- (void)successWithIssue:(id)a3
{
  v9 = a3;
  v4 = [(MADActivityTracker *)self stats];
  [v4 setSuccessWithIssues:{objc_msgSend(v4, "successWithIssues") + 1}];

  v5 = [(MADActivityTracker *)self stats];
  v6 = [v5 firstSuccessIssue];

  if (!v6)
  {
    v7 = [(MADActivityTracker *)self stats];
    [v7 setFirstSuccessIssue:v9];
  }

  v8 = [(MADActivityTracker *)self stats];
  [v8 setLastSuccessIssue:v9];
}

- (void)warningNote:(id)a3 fromMethod:(id)a4 warning:(id)a5
{
  v22 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [[NSString alloc] initWithFormat:@"%@[%@]", @"!W", v9];

  v11 = [(MADActivityTracker *)self logLeader];
  LOBYTE(v9) = [v11 containsString:v10];

  if ((v9 & 1) == 0)
  {
    v12 = [(MADActivityTracker *)self logLeader];
    [v12 appendFormat:@"%@%@", v10, @"|"];
  }

  v13 = [(MADActivityTracker *)self stats];
  [v13 setTotalWarnings:{objc_msgSend(v13, "totalWarnings") + 1}];

  v14 = [(MADActivityTracker *)self stats];
  v15 = [v14 firstWarningMethod];

  if (!v15)
  {
    v16 = [(MADActivityTracker *)self stats];
    [v16 setFirstWarningMethod:v22];
  }

  v17 = [(MADActivityTracker *)self stats];
  v18 = [v17 firstWarningMessage];

  if (!v18)
  {
    v19 = [(MADActivityTracker *)self stats];
    [v19 setFirstWarningMessage:v22];
  }

  v20 = [(MADActivityTracker *)self stats];
  [v20 setLastWarningMethod:v22];

  v21 = [(MADActivityTracker *)self stats];
  [v21 setLastWarningMessage:v8];
}

- (void)failureResult:(int)a3 ofResultName:(id)a4 forReason:(id)a5
{
  v6 = *&a3;
  v18 = a4;
  v8 = a5;
  v9 = [(MADActivityTracker *)self stats];
  v10 = [v9 failureResult];

  v11 = [(MADActivityTracker *)self stats];
  v12 = v11;
  if (v10)
  {
    [v11 setAdditionalFailures:{objc_msgSend(v11, "additionalFailures") + 1}];

    v13 = [(MADActivityTracker *)self stats];
    v14 = [v13 firstAdditionalFailure];

    if (!v14)
    {
      v15 = [(MADActivityTracker *)self stats];
      [v15 setFirstAdditionalFailure:v8];
    }

    v16 = [(MADActivityTracker *)self stats];
    [v16 setLastAdditionalFailure:v8];
  }

  else
  {
    [v11 setFailureResult:v6];

    v17 = [(MADActivityTracker *)self stats];
    [v17 setFailureResultName:v18];

    v16 = [(MADActivityTracker *)self stats];
    [v16 setFailureReason:v8];
  }
}

- (void)extendLogLeader:(id)a3 withValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MADActivityTracker *)self logLeader];
  [v8 appendFormat:@"%@:%@%@", v7, v6, @"|"];
}

- (void)sendReply
{
  v3 = [(MADActivityTracker *)self reply];
  if (v3)
  {
    message = v3;
    v4 = [(MADActivityTracker *)self xpcConnection];
    xpc_connection_send_message(v4, message);

    [(MADActivityTracker *)self setReply:0];
    v3 = message;
  }
}

+ (unint64_t)topLevelActivityForCommand:(int)a3
{
  v4 = a3 - 1;
  if (a3 - 1) < 0x2C && ((0x801FFFFF7FFuLL >> v4))
  {
    return qword_33BCC0[v4];
  }

  v6 = _MADLog(@"Activity");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = stringForMAXpcCommand(a3);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{topLevelActivityForCommand} unknown command:%{public}@", &v8, 0xCu);
  }

  return 3;
}

+ (unint64_t)categoryForCommand:(int)a3
{
  v4 = a3 - 1;
  if (a3 - 1) < 0x2C && ((0x801FFFFF7FFuLL >> v4))
  {
    return qword_33BE20[v4];
  }

  v6 = _MADLog(@"Activity");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = stringForMAXpcCommand(a3);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{categoryForCommand} unknown command:%{public}@", &v8, 0xCu);
  }

  return 2;
}

+ (BOOL)persistedCommand:(int)a3
{
  v4 = [MADActivityTracker categoryForCommand:?];
  if (v4 - 1 >= 0xA)
  {
    v6 = v4;
    v7 = _MADLog(@"Activity");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = stringForMAXpcCommand(a3);
      v10 = 134218242;
      v11 = v6;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "{persistedCommand} unknown category:%llu for command:%{public}@", &v10, 0x16u);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = 0x38u >> (v4 - 1);
  }

  return v5 & 1;
}

+ (id)nameOfLayer:(unint64_t)a3
{
  if (a3 >= 3)
  {
    v4 = [NSString stringWithFormat:@"UnknownLayer(%lld)", a3];
  }

  else
  {
    v4 = *(&off_4B3A38 + a3);
  }

  return v4;
}

+ (id)nameOfStatus:(unint64_t)a3
{
  if (a3 >= 4)
  {
    v4 = [NSString stringWithFormat:@"UnknownStatusChange(%lld)", a3];
  }

  else
  {
    v4 = *(&off_4B3A50 + a3);
  }

  return v4;
}

@end