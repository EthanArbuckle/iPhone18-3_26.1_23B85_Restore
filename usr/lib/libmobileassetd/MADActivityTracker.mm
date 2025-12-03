@interface MADActivityTracker
+ (BOOL)persistedCommand:(int)command;
+ (id)nameOfLayer:(unint64_t)layer;
+ (id)nameOfStatus:(unint64_t)status;
+ (unint64_t)categoryForCommand:(int)command;
+ (unint64_t)topLevelActivityForCommand:(int)command;
- (BOOL)associateEventualReply:(id)reply withCommand:(int)command;
- (id)init:(unint64_t)init fromInitiator:(unint64_t)initiator ofName:(id)name withCategory:(unint64_t)category forAssetType:(id)type associatedWith:(id)with;
- (void)assignParentTracker:(id)tracker;
- (void)associateActivityName:(id)name;
- (void)associateCommandRequest:(id)request;
- (void)associateDownloadInfo:(id)info;
- (void)associateXPCConnection:(id)connection;
- (void)extendLogLeader:(id)leader withValue:(id)value;
- (void)failureResult:(int)result ofResultName:(id)name forReason:(id)reason;
- (void)sendReply;
- (void)successWithIssue:(id)issue;
- (void)usesChildDict;
- (void)warningNote:(id)note fromMethod:(id)method warning:(id)warning;
@end

@implementation MADActivityTracker

- (id)init:(unint64_t)init fromInitiator:(unint64_t)initiator ofName:(id)name withCategory:(unint64_t)category forAssetType:(id)type associatedWith:(id)with
{
  nameCopy = name;
  typeCopy = type;
  withCopy = with;
  v44.receiver = self;
  v44.super_class = MADActivityTracker;
  v18 = [(MADActivityTracker *)&v44 init];
  v19 = v18;
  if (v18)
  {
    v18->_topLevel = init;
    v18->_initiatorType = initiator;
    objc_storeStrong(&v18->_initiatorName, name);
    v19->_category = category;
    objc_storeStrong(&v19->_assetType, type);
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

    if (withCopy)
    {
      activityUUID = [withCopy activityUUID];
      activityUUID = v19->_activityUUID;
      v19->_activityUUID = activityUUID;

      xpcConnection = [withCopy xpcConnection];
      xpcConnection = v19->_xpcConnection;
      v19->_xpcConnection = xpcConnection;

      downloadInfo = [withCopy downloadInfo];
    }

    else
    {
      v32 = +[NSUUID UUID];
      uUIDString = [v32 UUIDString];
      v34 = v19->_activityUUID;
      v19->_activityUUID = uUIDString;

      v35 = v19->_xpcConnection;
      v19->_xpcConnection = 0;

      downloadInfo = 0;
    }

    downloadInfo = v19->_downloadInfo;
    v19->_downloadInfo = downloadInfo;

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

- (void)associateXPCConnection:(id)connection
{
  connectionCopy = connection;
  xpcConnection = [(MADActivityTracker *)self xpcConnection];

  if (!xpcConnection)
  {
    [(MADActivityTracker *)self setXpcConnection:connectionCopy];
  }
}

- (void)associateActivityName:(id)name
{
  nameCopy = name;
  activityName = [(MADActivityTracker *)self activityName];

  if (!activityName)
  {
    [(MADActivityTracker *)self setActivityName:nameCopy];
  }
}

- (BOOL)associateEventualReply:(id)reply withCommand:(int)command
{
  v4 = *&command;
  replyCopy = reply;
  reply = [(MADActivityTracker *)self reply];

  if (reply)
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    reply = xpc_dictionary_create_reply(replyCopy);
    v8 = reply != 0;
    if (reply)
    {
      [(MADActivityTracker *)self setReply:reply];
      [(MADActivityTracker *)self setCommand:v4];
    }
  }

  return v8;
}

- (void)associateCommandRequest:(id)request
{
  requestCopy = request;
  request = [(MADActivityTracker *)self request];

  if (!request)
  {
    [(MADActivityTracker *)self setRequest:requestCopy];
  }
}

- (void)associateDownloadInfo:(id)info
{
  infoCopy = info;
  downloadInfo = [(MADActivityTracker *)self downloadInfo];

  if (!downloadInfo)
  {
    v5 = [NSString alloc];
    originalUrl = [infoCopy originalUrl];
    options = [infoCopy options];
    v8 = [options tightSummaryIncludingAdditional:0];
    v9 = [v5 initWithFormat:@"url:%@ initOpts:%@ size(dl:%llu, ex:%llu)", originalUrl, v8, objc_msgSend(infoCopy, "downloadSize"), objc_msgSend(infoCopy, "totalExpectedBytes")];

    task = [infoCopy task];

    if (!task)
    {
      goto LABEL_13;
    }

    task2 = [infoCopy task];
    v12 = [task2 description];
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
        logLeader = [(MADActivityTracker *)self logLeader];
        [logLeader appendFormat:@"%@%@", v9, @"|"];

        [(MADActivityTracker *)self setDownloadInfo:infoCopy];
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
  childDict = [(MADActivityTracker *)self childDict];

  if (!childDict)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    [(MADActivityTracker *)self setChildDict:v4];
  }
}

- (void)assignParentTracker:(id)tracker
{
  trackerCopy = tracker;
  parentTracker = [(MADActivityTracker *)self parentTracker];

  if (!parentTracker)
  {
    [(MADActivityTracker *)self setParentTracker:trackerCopy];
  }
}

- (void)successWithIssue:(id)issue
{
  issueCopy = issue;
  stats = [(MADActivityTracker *)self stats];
  [stats setSuccessWithIssues:{objc_msgSend(stats, "successWithIssues") + 1}];

  stats2 = [(MADActivityTracker *)self stats];
  firstSuccessIssue = [stats2 firstSuccessIssue];

  if (!firstSuccessIssue)
  {
    stats3 = [(MADActivityTracker *)self stats];
    [stats3 setFirstSuccessIssue:issueCopy];
  }

  stats4 = [(MADActivityTracker *)self stats];
  [stats4 setLastSuccessIssue:issueCopy];
}

- (void)warningNote:(id)note fromMethod:(id)method warning:(id)warning
{
  methodCopy = method;
  warningCopy = warning;
  noteCopy = note;
  noteCopy = [[NSString alloc] initWithFormat:@"%@[%@]", @"!W", noteCopy];

  logLeader = [(MADActivityTracker *)self logLeader];
  LOBYTE(noteCopy) = [logLeader containsString:noteCopy];

  if ((noteCopy & 1) == 0)
  {
    logLeader2 = [(MADActivityTracker *)self logLeader];
    [logLeader2 appendFormat:@"%@%@", noteCopy, @"|"];
  }

  stats = [(MADActivityTracker *)self stats];
  [stats setTotalWarnings:{objc_msgSend(stats, "totalWarnings") + 1}];

  stats2 = [(MADActivityTracker *)self stats];
  firstWarningMethod = [stats2 firstWarningMethod];

  if (!firstWarningMethod)
  {
    stats3 = [(MADActivityTracker *)self stats];
    [stats3 setFirstWarningMethod:methodCopy];
  }

  stats4 = [(MADActivityTracker *)self stats];
  firstWarningMessage = [stats4 firstWarningMessage];

  if (!firstWarningMessage)
  {
    stats5 = [(MADActivityTracker *)self stats];
    [stats5 setFirstWarningMessage:methodCopy];
  }

  stats6 = [(MADActivityTracker *)self stats];
  [stats6 setLastWarningMethod:methodCopy];

  stats7 = [(MADActivityTracker *)self stats];
  [stats7 setLastWarningMessage:warningCopy];
}

- (void)failureResult:(int)result ofResultName:(id)name forReason:(id)reason
{
  v6 = *&result;
  nameCopy = name;
  reasonCopy = reason;
  stats = [(MADActivityTracker *)self stats];
  failureResult = [stats failureResult];

  stats2 = [(MADActivityTracker *)self stats];
  v12 = stats2;
  if (failureResult)
  {
    [stats2 setAdditionalFailures:{objc_msgSend(stats2, "additionalFailures") + 1}];

    stats3 = [(MADActivityTracker *)self stats];
    firstAdditionalFailure = [stats3 firstAdditionalFailure];

    if (!firstAdditionalFailure)
    {
      stats4 = [(MADActivityTracker *)self stats];
      [stats4 setFirstAdditionalFailure:reasonCopy];
    }

    stats5 = [(MADActivityTracker *)self stats];
    [stats5 setLastAdditionalFailure:reasonCopy];
  }

  else
  {
    [stats2 setFailureResult:v6];

    stats6 = [(MADActivityTracker *)self stats];
    [stats6 setFailureResultName:nameCopy];

    stats5 = [(MADActivityTracker *)self stats];
    [stats5 setFailureReason:reasonCopy];
  }
}

- (void)extendLogLeader:(id)leader withValue:(id)value
{
  valueCopy = value;
  leaderCopy = leader;
  logLeader = [(MADActivityTracker *)self logLeader];
  [logLeader appendFormat:@"%@:%@%@", leaderCopy, valueCopy, @"|"];
}

- (void)sendReply
{
  reply = [(MADActivityTracker *)self reply];
  if (reply)
  {
    message = reply;
    xpcConnection = [(MADActivityTracker *)self xpcConnection];
    xpc_connection_send_message(xpcConnection, message);

    [(MADActivityTracker *)self setReply:0];
    reply = message;
  }
}

+ (unint64_t)topLevelActivityForCommand:(int)command
{
  v4 = command - 1;
  if (command - 1) < 0x2C && ((0x801FFFFF7FFuLL >> v4))
  {
    return qword_33BCC0[v4];
  }

  v6 = _MADLog(@"Activity");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = stringForMAXpcCommand(command);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{topLevelActivityForCommand} unknown command:%{public}@", &v8, 0xCu);
  }

  return 3;
}

+ (unint64_t)categoryForCommand:(int)command
{
  v4 = command - 1;
  if (command - 1) < 0x2C && ((0x801FFFFF7FFuLL >> v4))
  {
    return qword_33BE20[v4];
  }

  v6 = _MADLog(@"Activity");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = stringForMAXpcCommand(command);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{categoryForCommand} unknown command:%{public}@", &v8, 0xCu);
  }

  return 2;
}

+ (BOOL)persistedCommand:(int)command
{
  v4 = [MADActivityTracker categoryForCommand:?];
  if (v4 - 1 >= 0xA)
  {
    v6 = v4;
    v7 = _MADLog(@"Activity");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = stringForMAXpcCommand(command);
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

+ (id)nameOfLayer:(unint64_t)layer
{
  if (layer >= 3)
  {
    layer = [NSString stringWithFormat:@"UnknownLayer(%lld)", layer];
  }

  else
  {
    layer = *(&off_4B3A38 + layer);
  }

  return layer;
}

+ (id)nameOfStatus:(unint64_t)status
{
  if (status >= 4)
  {
    status = [NSString stringWithFormat:@"UnknownStatusChange(%lld)", status];
  }

  else
  {
    status = *(&off_4B3A50 + status);
  }

  return status;
}

@end