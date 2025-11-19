@interface TURTCCallReporter
- (TURTCCallReporter)initWithCallCenter:(id)a3;
- (id)clientName:(id)a3;
- (id)reportingSessionForCall:(id)a3 withConversation:(id)a4;
- (id)rtcCallInfoDictionary:(id)a3 withConversation:(id)a4;
- (id)serviceName:(id)a3 withConversation:(id)a4;
- (void)callStatusChangedNotification:(id)a3;
- (void)report:(id)a3 withConversation:(id)a4;
@end

@implementation TURTCCallReporter

- (TURTCCallReporter)initWithCallCenter:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = TURTCCallReporter;
  v6 = [(TURTCCallReporter *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.telephonyutilities.rtcreporting", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    callUUIDToConversation = v6->_callUUIDToConversation;
    v6->_callUUIDToConversation = v9;

    objc_storeStrong(&v6->_callCenter, a3);
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v6 selector:sel_callStatusChangedNotification_ name:@"TUCallCenterCallStatusChangedNotification" object:0];
    [v11 addObserver:v6 selector:sel_callStatusChangedNotification_ name:@"TUCallCenterVideoCallStatusChangedNotification" object:0];
  }

  return v6;
}

- (void)callStatusChangedNotification:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = v4;
    v6 = v22;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "RTCReporter: %@ is handling %@", buf, 0x16u);
  }

  v7 = [v4 object];
  v8 = [v7 callUUID];

  if (!v8)
  {
    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      *buf = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = v7;
      v12 = v11;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "%@ is ignoring notification because callUUID is nil: %@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  if ([v7 status] != 6)
  {
    if (![v7 isConversation])
    {
      goto LABEL_13;
    }

    v13 = [(TURTCCallReporter *)self callCenter];
    v10 = [v13 activeConversationForCall:v7];

    if (v10)
    {
      v14 = [(TURTCCallReporter *)self queue];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __51__TURTCCallReporter_callStatusChangedNotification___block_invoke_2;
      v16[3] = &unk_1E7424FD8;
      v16[4] = self;
      v17 = v7;
      v18 = v10;
      dispatch_async(v14, v16);
    }

LABEL_12:

    goto LABEL_13;
  }

  if ([v7 disconnectedReason] == 11)
  {
    v9 = [(TURTCCallReporter *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__TURTCCallReporter_callStatusChangedNotification___block_invoke;
    block[3] = &unk_1E7424898;
    block[4] = self;
    v20 = v7;
    dispatch_async(v9, block);
  }

LABEL_13:

  v15 = *MEMORY[0x1E69E9840];
}

void __51__TURTCCallReporter_callStatusChangedNotification___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 callUUIDToConversation];
  v5 = [*(a1 + 40) callUUID];
  v6 = [v4 objectForKeyedSubscript:v5];
  [v2 report:v3 withConversation:v6];

  v8 = [*(a1 + 32) callUUIDToConversation];
  v7 = [*(a1 + 40) callUUID];
  [v8 setObject:0 forKeyedSubscript:v7];
}

void __51__TURTCCallReporter_callStatusChangedNotification___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) callUUIDToConversation];
  v3 = [*(a1 + 40) callUUID];
  [v4 setObject:v2 forKeyedSubscript:v3];
}

- (void)report:(id)a3 withConversation:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = [(TURTCCallReporter *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(TURTCCallReporter *)self reportingSessionForCall:v7 withConversation:v6];
  v10 = [(TURTCCallReporter *)self rtcCallInfoDictionary:v7 withConversation:v6];

  v11 = TUDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "RTCReporter: Reporting message with session %@ userInfo %@", buf, 0x16u);
  }

  v15 = 0;
  [v9 sendMessageWithDictionary:v10 error:&v15];
  v12 = v15;
  if (v12)
  {
    v13 = TUDefaultLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "[WARN] RTCReporter: Error while sending message with error: %@", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)rtcCallInfoDictionary:(id)a3 withConversation:(id)a4
{
  v77[10] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(TURTCCallReporter *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = MEMORY[0x1E695DF90];
  v76[0] = *MEMORY[0x1E69C6AE8];
  v10 = [(TURTCCallReporter *)self serviceName:v6 withConversation:v7];
  v77[0] = v10;
  v76[1] = @"callUUID";
  v11 = [v6 callUUID];
  v77[1] = v11;
  v76[2] = @"endReason";
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "disconnectedReason")}];
  v77[2] = v12;
  v76[3] = @"incoming";
  v13 = [v6 isIncoming];
  v14 = MEMORY[0x1E695E110];
  v15 = MEMORY[0x1E695E118];
  if (v13)
  {
    v16 = MEMORY[0x1E695E118];
  }

  else
  {
    v16 = MEMORY[0x1E695E110];
  }

  v77[3] = v16;
  v76[4] = @"connected";
  if ([v6 isConnected])
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v77[4] = v17;
  v76[5] = @"currentlyGrouped";
  if ([v6 isConferenced])
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  v77[5] = v18;
  v76[6] = @"relay";
  if ([v6 isHostedOnCurrentDevice])
  {
    v19 = v14;
  }

  else
  {
    v19 = v15;
  }

  v77[6] = v19;
  v76[7] = @"isConversation";
  if ([v6 isConversation])
  {
    v20 = v15;
  }

  else
  {
    v20 = v14;
  }

  v77[7] = v20;
  v76[8] = @"fromLink";
  if ([v6 joinedFromLink])
  {
    v21 = v15;
  }

  else
  {
    v21 = v14;
  }

  v77[8] = v21;
  v76[9] = @"originatingUIType";
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "originatingUIType")}];
  v77[9] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:10];
  v24 = [v9 dictionaryWithDictionary:v23];

  v25 = [v6 provider];
  v26 = [v25 isTelephonyProvider];

  if ((v26 & 1) == 0)
  {
    v27 = MEMORY[0x1E696AD98];
    [v6 callDuration];
    v29 = [v27 numberWithDouble:v28 * 1000.0];
    [v24 setObject:v29 forKeyedSubscript:@"durationMs"];

    v30 = [v6 dateSentInvitation];

    if (v30)
    {
      v31 = MEMORY[0x1E696AD98];
      v32 = [v6 dateSentInvitation];
      v33 = [v6 dateCreated];
      [v32 timeIntervalSinceDate:v33];
      v35 = [v31 numberWithDouble:v34 * 1000.0];
      [v24 setObject:v35 forKeyedSubscript:@"setupTimeMs"];

      v36 = [v6 dateConnected];
      if (v36)
      {
        v37 = v36;
        v38 = [v6 dateStartedConnecting];

        if (v38)
        {
          v39 = MEMORY[0x1E696AD98];
          v40 = [v6 dateConnected];
          v41 = [v6 dateStartedConnecting];
          [v40 timeIntervalSinceDate:v41];
          v43 = [v39 numberWithDouble:v42 * 1000.0];
          [v24 setObject:v43 forKeyedSubscript:@"connectionTimeMs"];
        }
      }

      v44 = [v7 report];
      v45 = [v44 timebase];

      if (v45)
      {
        v46 = [v6 dateEnded];
        v47 = v46;
        if (v46)
        {
          v48 = v46;
        }

        else
        {
          v48 = [MEMORY[0x1E695DF00] now];
        }

        v58 = v48;

        v59 = MEMORY[0x1E696AD98];
        v60 = [v6 dateConnected];
        v61 = [v7 report];
        v62 = [v61 timebase];
        [v60 timeIntervalSinceDate:v62];
        v63 = [v59 numberWithDouble:?];
        [v24 setObject:v63 forKeyedSubscript:@"relativeStart"];

        v64 = MEMORY[0x1E696AD98];
        v65 = [v7 report];
        v66 = [v65 timebase];
        [v58 timeIntervalSinceDate:v66];
        v67 = [v64 numberWithDouble:?];
        [v24 setObject:v67 forKeyedSubscript:@"relativeEnd"];
      }

      v57 = [v7 report];
      v68 = [v57 conversationID];
      v69 = [v68 UUIDString];
      [v24 setObject:v69 forKeyedSubscript:@"CID"];
    }

    else
    {
      [v6 callDuration];
      if (v49 > 10.0)
      {
        [v6 callDuration];
        if (v50 <= 30.0)
        {
          v55 = &unk_1F09C5EF0;
        }

        else
        {
          [v6 callDuration];
          if (v51 <= 60.0)
          {
            v55 = &unk_1F09C5F08;
          }

          else
          {
            [v6 callDuration];
            if (v52 <= 300.0)
            {
              v55 = &unk_1F09C5F20;
            }

            else
            {
              [v6 callDuration];
              if (v53 <= 1800.0)
              {
                v55 = &unk_1F09C5F38;
              }

              else
              {
                [v6 callDuration];
                if (v54 <= 3600.0)
                {
                  v55 = &unk_1F09C5F50;
                }

                else
                {
                  v55 = &unk_1F09C5F68;
                }
              }
            }
          }
        }

        [v24 setObject:v55 forKeyedSubscript:@"bucketedDuration"];
        goto LABEL_39;
      }

      v56 = MEMORY[0x1E696AD98];
      [v6 callDuration];
      v57 = [v56 numberWithDouble:?];
      [v24 setObject:v57 forKeyedSubscript:@"bucketedDuration"];
    }
  }

LABEL_39:
  v70 = *MEMORY[0x1E69C6A98];
  v74[0] = *MEMORY[0x1E69C6A88];
  v74[1] = v70;
  v75[0] = &unk_1F09C5F80;
  v75[1] = &unk_1F09C5F98;
  v74[2] = *MEMORY[0x1E69C6A90];
  v75[2] = v24;
  v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:3];

  v72 = *MEMORY[0x1E69E9840];

  return v71;
}

- (id)reportingSessionForCall:(id)a3 withConversation:(id)a4
{
  v38[5] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(TURTCCallReporter *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = MEMORY[0x1E695DF90];
  v11 = *MEMORY[0x1E69C6AB8];
  v37[0] = *MEMORY[0x1E69C6AB0];
  v37[1] = v11;
  v38[0] = &unk_1F09C5FB0;
  v38[1] = @"0.1";
  v37[2] = *MEMORY[0x1E69C6AD8];
  if (v8)
  {
    v4 = [v8 UUID];
    [v4 UUIDString];
  }

  else
  {
    [v7 callUUID];
  }
  v12 = ;
  v13 = *MEMORY[0x1E69C6AA0];
  v38[2] = v12;
  v38[3] = MEMORY[0x1E695E118];
  v14 = *MEMORY[0x1E69C6AA8];
  v37[3] = v13;
  v37[4] = v14;
  v38[4] = @"com.apple.TelephonyUtilities";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:5];
  v16 = [v10 dictionaryWithDictionary:v15];

  if (v8)
  {

    v12 = v4;
  }

  v17 = [v8 report];

  if (v17)
  {
    v18 = [v8 report];
    v19 = [v18 conversationID];
    v20 = [v19 UUIDString];
    [v16 setObject:v20 forKeyedSubscript:*MEMORY[0x1E69C6AD0]];
  }

  v21 = [(TURTCCallReporter *)self clientName:v7];
  v22 = [(TURTCCallReporter *)self serviceName:v7 withConversation:v8];
  v23 = *MEMORY[0x1E69C6AE8];
  v35[0] = *MEMORY[0x1E69C6AE0];
  v35[1] = v23;
  v36[0] = v21;
  v36[1] = v22;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v25 = [objc_alloc(MEMORY[0x1E69C6A80]) initWithSessionInfo:v16 userInfo:v24 frameworksToCheck:0];
  v26 = TUDefaultLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412802;
    v30 = v25;
    v31 = 2112;
    v32 = v16;
    v33 = 2112;
    v34 = v24;
    _os_log_impl(&dword_1956FD000, v26, OS_LOG_TYPE_DEFAULT, "RTCReporter: Created reporting session %@ with sessionInfo: %@, userInfo: %@", &v29, 0x20u);
  }

  [v25 startConfigurationWithCompletionHandler:&__block_literal_global_31];
  v27 = *MEMORY[0x1E69E9840];

  return v25;
}

void __62__TURTCCallReporter_reportingSessionForCall_withConversation___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "RTCReporter: Received backends %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (id)clientName:(id)a3
{
  v4 = a3;
  v5 = [(TURTCCallReporter *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 provider];
  v7 = @"telephonyutilities";
  if ([v6 isFaceTimeProvider] && objc_msgSend(v4, "isConversation"))
  {
    v7 = @"multiwayconference";
  }

  v8 = v7;

  return v7;
}

- (id)serviceName:(id)a3 withConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TURTCCallReporter *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 provider];
  v10 = [v9 isFaceTimeProvider];

  if (v10)
  {
    if ([v6 isConversation])
    {
      if ([v7 isOneToOneModeEnabled])
      {
        v11 = @"twoway";
      }

      else
      {
        v11 = @"session";
      }
    }

    else
    {
      v11 = @"com.apple.telephonyutilites.facetime";
    }
  }

  else
  {
    v11 = @"com.apple.telephonyutilites.phone";
  }

  return v11;
}

@end