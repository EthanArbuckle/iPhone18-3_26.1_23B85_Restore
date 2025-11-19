@interface MADActivityManager
+ (BOOL)notifyStatusChange:(unint64_t)a3 forClient:(id)a4 withReason:(id)a5;
+ (id)clientForConnection:(id)a3;
+ (id)newTrackingCommandForEvent:(id)a3 forClient:(id)a4;
+ (id)remoteProcessFullIdentifierForConnection:(id)a3;
+ (id)remoteProcessIdentifierForConnection:(id)a3;
+ (id)sharedActivityManager;
+ (void)connectionInvalidForClient:(id)a3;
+ (void)failureOfActivity:(id)a3 withResult:(int)a4 ofResultName:(id)a5 forReason:(id)a6;
+ (void)noticeForActivity:(id)a3 reason:(id)a4;
+ (void)progressForActivity:(id)a3 calledPrimitive:(id)a4 withBoolResult:(BOOL)a5;
+ (void)progressForActivity:(id)a3 calledPrimitive:(id)a4 withErrorResult:(id)a5;
+ (void)progressForActivity:(id)a3 calledPrimitive:(id)a4 withSuccessResult:(BOOL)a5;
+ (void)progressForActivity:(id)a3 callingPrimitive:(id)a4;
+ (void)sendReply:(id)a3 withCancelDownloadResult:(int64_t)a4;
+ (void)sendReply:(id)a3 withDownloadResult:(int64_t)a4;
+ (void)sendReply:(id)a3 withOperationResult:(int64_t)a4;
+ (void)sendReply:(id)a3 withResult:(int)a4 ofResultName:(id)a5;
+ (void)transferOwnership:(id)a3 toOwner:(unint64_t)a4 reason:(id)a5;
+ (void)unknownXPCError:(id)a3 forClient:(id)a4;
+ (void)unknownXPCType:(_xpc_type_s *)a3 forClient:(id)a4;
+ (void)warningForActivity:(id)a3 fromMethod:(id)a4 leaderNote:(id)a5 warning:(id)a6;
- (MADActivityManager)init;
- (id)_clientForConnection:(id)a3;
- (id)_clientMADActivityTrackerForClient:(id)a3 withProcessID:(id)a4 withFullID:(id)a5;
- (void)_finishClientCommandActivity:(id)a3 withResult:(int)a4 ofResultName:(id)a5 ableToReply:(BOOL)a6;
- (void)_startClientCommandActivity:(id)a3;
@end

@implementation MADActivityManager

+ (id)sharedActivityManager
{
  if (sharedActivityManager_activityManagerOnce != -1)
  {
    +[MADActivityManager sharedActivityManager];
  }

  v3 = sharedActivityManager_activityManager;

  return v3;
}

void __43__MADActivityManager_sharedActivityManager__block_invoke(id a1)
{
  sharedActivityManager_activityManager = objc_alloc_init(MADActivityManager);

  _objc_release_x1();
}

- (MADActivityManager)init
{
  v20.receiver = self;
  v20.super_class = MADActivityManager;
  v2 = [(MADActivityManager *)&v20 init];
  if (v2)
  {
    v3 = [[MADActivityTracker alloc] init:2 fromInitiator:1 ofName:@"activity" withCategory:1 forAssetType:0 associatedWith:0];
    managerActivity = v2->_managerActivity;
    v2->_managerActivity = v3;

    v5 = [[MADActivityTracker alloc] init:2 fromInitiator:2 ofName:@"unknown" withCategory:0 forAssetType:0 associatedWith:0];
    unknownClient = v2->_unknownClient;
    v2->_unknownClient = v5;

    [(MADActivityTracker *)v2->_unknownClient invalidate];
    v7 = [[MADActivityTracker alloc] init:2 fromInitiator:2 ofName:@"pidReuse" withCategory:0 forAssetType:0 associatedWith:0];
    pidReusedClient = v2->_pidReusedClient;
    v2->_pidReusedClient = v7;

    [(MADActivityTracker *)v2->_pidReusedClient invalidate];
    v9 = [[MADActivityTracker alloc] init:2 fromInitiator:2 ofName:@"untrackedCommandType" withCategory:0 forAssetType:0 associatedWith:0];
    untrackedCommandType = v2->_untrackedCommandType;
    v2->_untrackedCommandType = v9;

    [(MADActivityTracker *)v2->_untrackedCommandType invalidate];
    v11 = [[MADActivityTracker alloc] init:2 fromInitiator:2 ofName:@"untrackedCommand" withCategory:0 forAssetType:0 associatedWith:0];
    untrackedCommand = v2->_untrackedCommand;
    v2->_untrackedCommand = v11;

    [(MADActivityTracker *)v2->_untrackedCommand invalidate];
    v13 = dispatch_queue_create("com.apple.MobileAsset.ActivityManager.tracking", 0);
    activityTrackingQueue = v2->_activityTrackingQueue;
    v2->_activityTrackingQueue = v13;

    v15 = objc_alloc_init(NSMutableDictionary);
    xpcConnectionByProcessId = v2->_xpcConnectionByProcessId;
    v2->_xpcConnectionByProcessId = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    xpcConnectionByFullId = v2->_xpcConnectionByFullId;
    v2->_xpcConnectionByFullId = v17;

    v2->_statusChangeUnknownXPCType = 0;
    *&v2->_statusChangeNoControlManager = 0u;
    *&v2->_statusChangeUnknownOwner = 0u;
    *&v2->_statusChangeNoClientTracker = 0u;
  }

  return v2;
}

+ (id)remoteProcessIdentifierForConnection:(id)a3
{
  v3 = [[NSString alloc] initWithFormat:@"%llu", xpc_connection_get_pid(a3)];

  return v3;
}

+ (id)remoteProcessFullIdentifierForConnection:(id)a3
{
  v3 = a3;
  euid = xpc_connection_get_euid(v3);
  egid = xpc_connection_get_egid(v3);
  pid = xpc_connection_get_pid(v3);
  asid = xpc_connection_get_asid(v3);

  v8 = [[NSString alloc] initWithFormat:@"EUID:%llu, EGID:%llu, PID:%llu, ASID:%llu", euid, egid, pid, asid];

  return v8;
}

+ (id)clientForConnection:(id)a3
{
  v3 = a3;
  v4 = +[MADActivityManager sharedActivityManager];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = [v4 unknownClient];
  v5 = [v4 activityTrackingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __42__MADActivityManager_clientForConnection___block_invoke;
  block[3] = &unk_4B2E80;
  v12 = v3;
  v13 = &v14;
  v11 = v4;
  v6 = v3;
  v7 = v4;
  dispatch_sync(v5, block);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

uint64_t __42__MADActivityManager_clientForConnection___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _clientForConnection:*(a1 + 40)];

  return _objc_release_x1();
}

- (id)_clientForConnection:(id)a3
{
  v4 = a3;
  v5 = [(MADActivityManager *)self activityTrackingQueue];
  dispatch_assert_queue_V2(v5);

  v6 = +[MADActivityManager sharedActivityManager];
  v7 = [v6 unknownClient];
  if (v4)
  {
    v8 = [MADActivityManager remoteProcessIdentifierForConnection:v4];
    v9 = [MADActivityManager remoteProcessFullIdentifierForConnection:v4];
    v10 = v9;
    if (v8 && v9)
    {
      v11 = [v6 _clientMADActivityTrackerForClient:v4 withProcessID:v8 withFullID:v9];

      v7 = v11;
    }
  }

  return v7;
}

+ (void)connectionInvalidForClient:(id)a3
{
  connection = a3;
  if (![MADActivityManager notifyStatusChange:"notifyStatusChange:forClient:withReason:" forClient:2 withReason:?])
  {
    xpc_connection_cancel(connection);
  }
}

+ (void)unknownXPCError:(id)a3 forClient:(id)a4
{
  v4 = a3;
  v5 = +[MADActivityManager sharedActivityManager];
  v6 = [v5 activityTrackingQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __48__MADActivityManager_unknownXPCError_forClient___block_invoke;
  v9[3] = &unk_4B2B18;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_sync(v6, v9);
}

void __48__MADActivityManager_unknownXPCError_forClient___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStatusChangeUnknownXPCError:{objc_msgSend(*(a1 + 32), "statusChangeUnknownXPCError") + 1}];
  v2 = _MADLog(@"Activity");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 40);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "{unknownXPCError} unknown error event(%lld) received over XPC connection", &v4, 0xCu);
  }
}

+ (void)unknownXPCType:(_xpc_type_s *)a3 forClient:(id)a4
{
  v5 = [MADActivityManager sharedActivityManager:a3];
  v6 = [v5 activityTrackingQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __47__MADActivityManager_unknownXPCType_forClient___block_invoke;
  v8[3] = &unk_4B36C0;
  v9 = v5;
  v10 = a3;
  v7 = v5;
  dispatch_sync(v6, v8);
}

void __47__MADActivityManager_unknownXPCType_forClient___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStatusChangeUnknownXPCType:{objc_msgSend(*(a1 + 32), "statusChangeUnknownXPCType") + 1}];
  v2 = _MADLog(@"Activity");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 40);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "{unknownXPCType} unknown event type(%lld) received over XPC connection", &v4, 0xCu);
  }
}

+ (id)newTrackingCommandForEvent:(id)a3 forClient:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[MADActivityManager sharedActivityManager];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__4;
  v40 = __Block_byref_object_dispose__4;
  v41 = [v7 untrackedCommand];
  if (v5 && v6)
  {
    type = xpc_get_type(v5);
    if (type == &_xpc_type_dictionary)
    {
      uint64 = xpc_dictionary_get_uint64(v5, "messageAction");
      v9 = stringForMAXpcCommand(uint64);
      v16 = [MADActivityManager remoteProcessIdentifierForConnection:v6];
      v17 = [MADActivityManager remoteProcessFullIdentifierForConnection:v6];
      v18 = v17;
      if (v16 && v17)
      {
        v19 = [v7 activityTrackingQueue];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = __59__MADActivityManager_newTrackingCommandForEvent_forClient___block_invoke;
        v27[3] = &unk_4B36E8;
        v28 = v7;
        v29 = v6;
        v30 = v16;
        v31 = v18;
        v32 = v5;
        v35 = uint64;
        v33 = v9;
        v34 = &v36;
        dispatch_sync(v19, v27);

        v20 = v28;
      }

      else
      {
        [v7 setConnectionNoClientIdentifier:{objc_msgSend(v7, "connectionNoClientIdentifier") + 1}];
        v20 = _MADLog(@"Activity");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v43 = v9;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "{newTrackingCommandForEvent} unable to determine client process identifier(s) for command:%{public}@", buf, 0xCu);
        }
      }

      v21 = v37[5];
      if (!v21 || ([v21 validTracker] & 1) == 0)
      {
        reply = xpc_dictionary_create_reply(v5);
        v23 = reply;
        if (reply)
        {
          xpc_dictionary_set_int64(reply, "Result", 2);
          xpc_connection_send_message(v6, v23);
        }

        else
        {
          [v7 setConnectionReplyAllocationFailure:{objc_msgSend(v7, "connectionReplyAllocationFailure") + 1}];
          v24 = _MADLog(@"Activity");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v43 = v9;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "{newTrackingCommandForEvent} unable to create XPC reply for un-trackable event from client for command:%{public}@", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      [v7 setConnectionNonDictionaryEvent:{objc_msgSend(v7, "connectionNonDictionaryEvent") + 1}];
      v9 = _MADLog(@"Activity");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v43 = type;
        v10 = "{newTrackingCommandForEvent} caller provided non-dictionary event type: %llu";
        v11 = v9;
        v12 = 12;
LABEL_13:
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      }
    }
  }

  else
  {
    [v7 setConnectionMissingRequired:{objc_msgSend(v7, "connectionMissingRequired") + 1}];
    v9 = _MADLog(@"Activity");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = @"PROVIDED";
      if (v5)
      {
        v14 = @"PROVIDED";
      }

      else
      {
        v14 = @"MISSING";
      }

      if (!v6)
      {
        v13 = @"MISSING";
      }

      *buf = 138543618;
      v43 = v14;
      v44 = 2114;
      v45 = v13;
      v10 = "{newTrackingCommandForEvent} missing required parameters - event:%{public}@, client:%{public}@";
      v11 = v9;
      v12 = 22;
      goto LABEL_13;
    }
  }

  v25 = v37[5];
  _Block_object_dispose(&v36, 8);

  return v25;
}

void __59__MADActivityManager_newTrackingCommandForEvent_forClient___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientMADActivityTrackerForClient:*(a1 + 40) withProcessID:*(a1 + 48) withFullID:*(a1 + 56)];
  v3 = v2;
  if (v2 && [v2 validTracker])
  {
    v4 = [v3 activityName];

    if (!v4)
    {
      string = xpc_dictionary_get_string(*(a1 + 64), "clientName");
      if (string)
      {
        v6 = [NSString stringWithUTF8String:string];
      }

      else
      {
        v6 = @"UNKNOWN";
      }

      v9 = [[NSString alloc] initWithFormat:@"%@(%@)", v6, *(a1 + 48)];
      [v3 associateActivityName:v9];
    }

    v7 = [v3 activityName];
    v10 = [v3 childDict];
    v11 = [v10 objectForKey:*(a1 + 72)];

    if (!v11)
    {
      v12 = [[MADActivityTracker alloc] init:[MADActivityTracker topLevelActivityForCommand:?]withCategory:2 forAssetType:*(a1 + 72) associatedWith:[MADActivityTracker categoryForCommand:*(a1 + 88)], 0, v3];
      if (!v12)
      {
        v32 = [v3 stats];
        [v32 setAllocationFailures:{objc_msgSend(v32, "allocationFailures") + 1}];

        v18 = _MADLog(@"Activity");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v33 = *(a1 + 72);
          *buf = 138543618;
          v38 = v7;
          v39 = 2114;
          v40 = v33;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "{newTrackingCommandForEvent} unable to allocate command type tracker for remote client:%{public}@ command:%{public}@", buf, 0x16u);
        }

        v11 = 0;
        goto LABEL_29;
      }

      v11 = v12;
      v13 = [NSString alloc];
      v14 = [v3 activityName];
      v15 = [v13 initWithFormat:@"%@[%@]", v14, *(a1 + 72)];
      [v11 associateActivityName:v15];

      [v11 usesChildDict];
      [v11 assignParentTracker:v3];
      v16 = [v3 childDict];
      [v16 setObject:v11 forKey:*(a1 + 72)];
    }

    if (![v11 validTracker])
    {
LABEL_30:

      goto LABEL_31;
    }

    v17 = [[MADActivityTracker alloc] init:[MADActivityTracker topLevelActivityForCommand:?]withCategory:2 forAssetType:*(a1 + 72) associatedWith:[MADActivityTracker categoryForCommand:*(a1 + 88)], 0, v11];
    v18 = v17;
    if (v17 && [v17 validTracker])
    {
      v19 = [v18 activityUUID];
      v20 = [v18 activityUUID];
      v21 = [v20 length];

      if (v21 >= 7)
      {
        v22 = [v18 activityUUID];
        v23 = [v18 activityUUID];
        v24 = [v22 substringFromIndex:{objc_msgSend(v23, "length") - 6}];

        v19 = v24;
      }

      v25 = [NSString alloc];
      v26 = [v3 activityName];
      v27 = [v25 initWithFormat:@"%@-<%@>", v26, v19];
      [v18 associateActivityName:v27];

      if ([v18 associateEventualReply:*(a1 + 64) withCommand:*(a1 + 88)])
      {
        [v18 assignParentTracker:v11];
        v28 = [v11 childDict];
        v29 = [v18 activityUUID];
        [v28 setObject:v18 forKey:v29];

        [*(a1 + 32) _startClientCommandActivity:v18];
        objc_storeStrong((*(*(a1 + 80) + 8) + 40), v18);
      }

      else
      {
        v34 = [v3 stats];
        [v34 setAssociateReplyFailures:{objc_msgSend(v34, "associateReplyFailures") + 1}];

        v35 = _MADLog(@"Activity");
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = *(a1 + 72);
          *buf = 138543618;
          v38 = v7;
          v39 = 2114;
          v40 = v36;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "{newTrackingCommandForEvent} unable to associate reply with request from client:%{public}@ command:%{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v30 = [v3 stats];
      [v30 setAllocationFailures:{objc_msgSend(v30, "allocationFailures") + 1}];

      v19 = _MADLog(@"Activity");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v31 = *(a1 + 72);
        *buf = 138543618;
        v38 = v7;
        v39 = 2114;
        v40 = v31;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "{newTrackingCommandForEvent} unable to allocate command tracker for client:%{public}@ command:%{public}@", buf, 0x16u);
      }
    }

LABEL_29:
    goto LABEL_30;
  }

  [*(a1 + 32) setConnectionNoClientTracker:{objc_msgSend(*(a1 + 32), "connectionNoClientTracker") + 1}];
  v7 = _MADLog(@"Activity");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 72);
    *buf = 138543362;
    v38 = v8;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "{newTrackingCommandForEvent} unable to track remote client request for command:%{public}@", buf, 0xCu);
  }

LABEL_31:
}

+ (void)sendReply:(id)a3 withOperationResult:(int64_t)a4
{
  v5 = a3;
  v6 = stringForMAOperationResult(a4);
  [MADActivityManager sendReply:v5 withResult:a4 ofResultName:v6];
}

+ (void)sendReply:(id)a3 withDownloadResult:(int64_t)a4
{
  v5 = a3;
  v6 = stringForMADownloadResult(a4);
  [MADActivityManager sendReply:v5 withResult:a4 ofResultName:v6];
}

+ (void)sendReply:(id)a3 withCancelDownloadResult:(int64_t)a4
{
  v5 = a3;
  v6 = stringForMACancelDownloadResult(a4);
  [MADActivityManager sendReply:v5 withResult:a4 ofResultName:v6];
}

+ (void)sendReply:(id)a3 withResult:(int)a4 ofResultName:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[MADActivityManager sharedActivityManager];
  v10 = [v7 reply];

  if (v10)
  {
    v11 = [v7 reply];
    xpc_dictionary_set_int64(v11, "Result", a4);
    [v7 sendReply];
  }

  v12 = v10 != 0;
  v13 = [v9 activityTrackingQueue];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = __56__MADActivityManager_sendReply_withResult_ofResultName___block_invoke;
  v17[3] = &unk_4B3710;
  v18 = v9;
  v19 = v7;
  v21 = a4;
  v20 = v8;
  v22 = v12;
  v14 = v8;
  v15 = v7;
  v16 = v9;
  dispatch_sync(v13, v17);
}

+ (void)progressForActivity:(id)a3 callingPrimitive:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _MADLog(@"Activity");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 activityName];
    v9 = [v5 logLeader];
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ %{public}@...", &v10, 0x20u);
  }
}

+ (void)progressForActivity:(id)a3 calledPrimitive:(id)a4 withSuccessResult:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = _MADLog(@"Activity");
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v7 activityName];
      v12 = [v7 logLeader];
      v16 = 138543874;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v20 = 2114;
      v21 = v8;
      v13 = "%{public}@ %{public}@ ...%{public}@(SUCCESS)";
      v14 = v10;
      v15 = OS_LOG_TYPE_DEFAULT;
LABEL_6:
      _os_log_impl(&dword_0, v14, v15, v13, &v16, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v11 = [v7 activityName];
    v12 = [v7 logLeader];
    v16 = 138543874;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v8;
    v13 = "%{public}@ %{public}@ ...%{public}@(FAILURE)";
    v14 = v10;
    v15 = OS_LOG_TYPE_ERROR;
    goto LABEL_6;
  }
}

+ (void)progressForActivity:(id)a3 calledPrimitive:(id)a4 withBoolResult:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  v9 = _MADLog(@"Activity");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 activityName];
    v11 = [v7 logLeader];
    v12 = v11;
    v13 = @"NO";
    v14 = 138544130;
    v15 = v10;
    v16 = 2114;
    if (v5)
    {
      v13 = @"YES";
    }

    v17 = v11;
    v18 = 2114;
    v19 = v8;
    v20 = 2114;
    v21 = v13;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ ...%{public}@(%{public}@)", &v14, 0x2Au);
  }
}

+ (void)progressForActivity:(id)a3 calledPrimitive:(id)a4 withErrorResult:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = [[NSString alloc] initWithFormat:@"error:%@", v9];
    v11 = _MADLog(@"Activity");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v7 activityName];
      v13 = [v7 logLeader];
      *buf = 138544130;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v8;
      v22 = 2114;
      v23 = v10;
      v14 = v11;
      v15 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_0, v14, v15, "%{public}@ %{public}@ ...%{public}@(%{public}@)", buf, 0x2Au);
    }
  }

  else
  {
    v11 = _MADLog(@"Activity");
    v10 = @"SUCCESS";
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v7 activityName];
      v13 = [v7 logLeader];
      *buf = 138544130;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      v20 = 2114;
      v21 = v8;
      v22 = 2114;
      v23 = @"SUCCESS";
      v14 = v11;
      v15 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_6;
    }
  }
}

+ (void)transferOwnership:(id)a3 toOwner:(unint64_t)a4 reason:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = _MADLog(@"Activity");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 activityName];
    v11 = [v7 logLeader];
    v12 = +[MADActivityTracker nameOfLayer:](MADActivityTracker, "nameOfLayer:", [v7 owner]);
    v13 = +[MADActivityTracker nameOfLayer:](MADActivityTracker, "nameOfLayer:", [v7 owner]);
    v14 = 138544386;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v13;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ OWNER %{public}@=>%{public}@ | %{public}@", &v14, 0x34u);
  }

  [v7 assignOwner:a4];
}

+ (void)warningForActivity:(id)a3 fromMethod:(id)a4 leaderNote:(id)a5 warning:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  [v9 warningNote:a5 fromMethod:v10 warning:v11];
  v12 = _MADLog(@"Activity");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = [v9 activityName];
    v14 = [v9 logLeader];
    v15 = 138544130;
    v16 = v13;
    v17 = 2114;
    v18 = v14;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ {%{public}@} %{public}@", &v15, 0x2Au);
  }
}

+ (void)failureOfActivity:(id)a3 withResult:(int)a4 ofResultName:(id)a5 forReason:(id)a6
{
  v8 = *&a4;
  v9 = a3;
  v10 = a5;
  v11 = a6;
  [v9 failureResult:v8 ofResultName:v10 forReason:v11];
  v12 = _MADLog(@"Activity");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = [v9 activityName];
    v14 = [v9 logLeader];
    v15 = 138544642;
    v16 = v13;
    v17 = 2114;
    v18 = v14;
    v19 = 2114;
    v20 = @"FAILURE";
    v21 = 1024;
    v22 = v8;
    v23 = 2114;
    v24 = v10;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%{public}@ %{public}@ [%{public}@] %d(%{public}@) | %{public}@", &v15, 0x3Au);
  }
}

+ (void)noticeForActivity:(id)a3 reason:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _MADLog(@"Activity");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 activityName];
    v9 = [v5 logLeader];
    v10 = 138543874;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ %{public}@", &v10, 0x20u);
  }
}

- (id)_clientMADActivityTrackerForClient:(id)a3 withProcessID:(id)a4 withFullID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MADActivityManager *)self activityTrackingQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(MADActivityManager *)self unknownClient];
  v13 = [(MADActivityManager *)self xpcConnectionByProcessId];
  v14 = [v13 objectForKey:v9];

  if (v14)
  {
    v15 = [(MADActivityManager *)self xpcConnectionByFullId];
    v16 = [v15 objectForKey:v10];

    if (v16)
    {
      v17 = v14;
    }

    else
    {
      v17 = [(MADActivityManager *)self pidReusedClient];
    }
  }

  else
  {
    v18 = [[MADActivityTracker alloc] init:2 fromInitiator:2 ofName:v9 withCategory:2 forAssetType:0 associatedWith:0];
    v16 = v18;
    if (!v18)
    {
      goto LABEL_8;
    }

    [v18 associateXPCConnection:v8];
    [v16 setInstanceCount:0];
    [v16 usesChildDict];
    v19 = [(MADActivityManager *)self xpcConnectionByProcessId];
    [v19 setObject:v16 forKey:v9];

    v20 = [(MADActivityManager *)self xpcConnectionByFullId];
    [v20 setObject:v16 forKey:v10];

    v17 = v16;
    v16 = v17;
  }

  v21 = v17;

  v12 = v21;
LABEL_8:

  return v12;
}

- (void)_startClientCommandActivity:(id)a3
{
  v4 = a3;
  v5 = [(MADActivityManager *)self activityTrackingQueue];
  dispatch_assert_queue_V2(v5);

  [v4 perpareOSActivityScope];
  [v4 enterOSActivityScope];
  +[MADActivityTracker persistedCommand:](MADActivityTracker, "persistedCommand:", [v4 command]);
  v6 = _MADLog(@"Activity");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 activityName];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ | START", &v8, 0xCu);
  }
}

- (void)_finishClientCommandActivity:(id)a3 withResult:(int)a4 ofResultName:(id)a5 ableToReply:(BOOL)a6
{
  v6 = a6;
  v8 = *&a4;
  v10 = a3;
  v11 = a5;
  v12 = [(MADActivityManager *)self activityTrackingQueue];
  dispatch_assert_queue_V2(v12);

  v13 = 1;
  if (!v8 && v6)
  {
    v14 = [v10 failureReason];
    v13 = v14 != 0;
  }

  +[MADActivityTracker persistedCommand:](MADActivityTracker, "persistedCommand:", [v10 command]);
  v15 = [v10 failureReason];
  if (v15)
  {
    v16 = [v10 failureReason];
  }

  else
  {
    v16 = &stru_4BD3F0;
  }

  if (!v6)
  {
    v17 = stringForMAXpcError(8uLL);
    [v10 failureResult:8 ofResultName:v17 forReason:@"finishing command processing when unable to reply"];
    goto LABEL_12;
  }

  if (!v8)
  {
    if (v13)
    {
      [v10 successWithIssue:v16];
      if (v11)
      {
        goto LABEL_13;
      }

LABEL_17:
      if (!v8)
      {
        v18 = _MADLog(@"Activity");
        v23 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          if (!v23)
          {
            goto LABEL_21;
          }

          v24 = [v10 activityName];
          v26 = 138543618;
          v27 = v24;
          v28 = 2114;
          v29 = v16;
          v25 = "%{public}@ | FINISH | %{public}@ | SUCCESS";
        }

        else
        {
          if (!v23)
          {
            goto LABEL_21;
          }

          v24 = [v10 activityName];
          v26 = 138543618;
          v27 = v24;
          v28 = 2114;
          v29 = v16;
          v25 = "%{public}@ | FINISH | %{public}@ | UNABLE TO REPLY";
        }

        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, v25, &v26, 0x16u);

        goto LABEL_21;
      }

LABEL_18:
      v18 = _MADLog(@"Activity");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v10 activityName];
        v26 = 138543874;
        v27 = v19;
        v28 = 2114;
        v29 = v16;
        v30 = 1024;
        v31 = v8;
        v20 = "%{public}@ | FINISH | %{public}@ | %d";
        v21 = v18;
        v22 = 28;
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    v17 = [v10 stats];
    [v17 setSuccessfulOperations:{objc_msgSend(v17, "successfulOperations") + 1}];
LABEL_12:

    if (v11)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  [v10 failureResult:v8 ofResultName:v11 forReason:v16];
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_13:
  v18 = _MADLog(@"Activity");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v10 activityName];
    v26 = 138544130;
    v27 = v19;
    v28 = 2114;
    v29 = v16;
    v30 = 1024;
    v31 = v8;
    v32 = 2114;
    v33 = v11;
    v20 = "%{public}@ | FINISH | %{public}@ | %d(%{public}@)";
    v21 = v18;
    v22 = 38;
LABEL_20:
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, v20, &v26, v22);
  }

LABEL_21:

  [v10 leaveOSActivityScope];
}

+ (BOOL)notifyStatusChange:(unint64_t)a3 forClient:(id)a4 withReason:(id)a5
{
  v5 = a4;
  v6 = +[MADActivityManager sharedActivityManager];
  v7 = [v6 activityTrackingQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __62__MADActivityManager_notifyStatusChange_forClient_withReason___block_invoke;
  v11[3] = &unk_4B2B18;
  v12 = v6;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_sync(v7, v11);

  return 0;
}

void __62__MADActivityManager_notifyStatusChange_forClient_withReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _clientForConnection:*(a1 + 40)];
  v5 = v2;
  if (!v2)
  {
    [*(a1 + 32) setStatusChangeNoClientTracker:{objc_msgSend(*(a1 + 32), "statusChangeNoClientTracker") + 1}];
    goto LABEL_13;
  }

  v3 = [v2 owner];
  if (v3 == &dword_0 + 2)
  {
    v4 = getDownloadManager();
    if (!v4)
    {
      [*(a1 + 32) setStatusChangeNoDownloadManager:{objc_msgSend(*(a1 + 32), "statusChangeNoDownloadManager") + 1}];
    }

    goto LABEL_11;
  }

  if (v3 == &dword_0 + 1)
  {
    v4 = getControlManager();
    if (!v4)
    {
      [*(a1 + 32) setStatusChangeNoControlManager:{objc_msgSend(*(a1 + 32), "statusChangeNoControlManager") + 1}];
    }

LABEL_11:

    goto LABEL_13;
  }

  if (v3)
  {
    [*(a1 + 32) setStatusChangeUnknownOwner:{objc_msgSend(*(a1 + 32), "statusChangeUnknownOwner") + 1}];
  }

  else
  {
    [*(a1 + 32) setStatusChangeNoTrackerOwner:{objc_msgSend(*(a1 + 32), "statusChangeNoTrackerOwner") + 1}];
  }

LABEL_13:
}

@end