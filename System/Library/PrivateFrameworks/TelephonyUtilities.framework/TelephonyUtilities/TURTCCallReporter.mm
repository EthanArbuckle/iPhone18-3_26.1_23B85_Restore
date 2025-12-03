@interface TURTCCallReporter
- (TURTCCallReporter)initWithCallCenter:(id)center;
- (id)clientName:(id)name;
- (id)reportingSessionForCall:(id)call withConversation:(id)conversation;
- (id)rtcCallInfoDictionary:(id)dictionary withConversation:(id)conversation;
- (id)serviceName:(id)name withConversation:(id)conversation;
- (void)callStatusChangedNotification:(id)notification;
- (void)report:(id)report withConversation:(id)conversation;
@end

@implementation TURTCCallReporter

- (TURTCCallReporter)initWithCallCenter:(id)center
{
  centerCopy = center;
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

    objc_storeStrong(&v6->_callCenter, center);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel_callStatusChangedNotification_ name:@"TUCallCenterCallStatusChangedNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel_callStatusChangedNotification_ name:@"TUCallCenterVideoCallStatusChangedNotification" object:0];
  }

  return v6;
}

- (void)callStatusChangedNotification:(id)notification
{
  v25 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = objc_opt_class();
    v23 = 2112;
    v24 = notificationCopy;
    v6 = v22;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "RTCReporter: %@ is handling %@", buf, 0x16u);
  }

  object = [notificationCopy object];
  callUUID = [object callUUID];

  if (!callUUID)
  {
    v10 = TUDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      *buf = 138412546;
      v22 = v11;
      v23 = 2112;
      v24 = object;
      v12 = v11;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "%@ is ignoring notification because callUUID is nil: %@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  if ([object status] != 6)
  {
    if (![object isConversation])
    {
      goto LABEL_13;
    }

    callCenter = [(TURTCCallReporter *)self callCenter];
    v10 = [callCenter activeConversationForCall:object];

    if (v10)
    {
      queue = [(TURTCCallReporter *)self queue];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __51__TURTCCallReporter_callStatusChangedNotification___block_invoke_2;
      v16[3] = &unk_1E7424FD8;
      v16[4] = self;
      v17 = object;
      v18 = v10;
      dispatch_async(queue, v16);
    }

LABEL_12:

    goto LABEL_13;
  }

  if ([object disconnectedReason] == 11)
  {
    queue2 = [(TURTCCallReporter *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__TURTCCallReporter_callStatusChangedNotification___block_invoke;
    block[3] = &unk_1E7424898;
    block[4] = self;
    v20 = object;
    dispatch_async(queue2, block);
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

- (void)report:(id)report withConversation:(id)conversation
{
  v20 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  reportCopy = report;
  queue = [(TURTCCallReporter *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = [(TURTCCallReporter *)self reportingSessionForCall:reportCopy withConversation:conversationCopy];
  v10 = [(TURTCCallReporter *)self rtcCallInfoDictionary:reportCopy withConversation:conversationCopy];

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

- (id)rtcCallInfoDictionary:(id)dictionary withConversation:(id)conversation
{
  v77[10] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  conversationCopy = conversation;
  queue = [(TURTCCallReporter *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = MEMORY[0x1E695DF90];
  v76[0] = *MEMORY[0x1E69C6AE8];
  v10 = [(TURTCCallReporter *)self serviceName:dictionaryCopy withConversation:conversationCopy];
  v77[0] = v10;
  v76[1] = @"callUUID";
  callUUID = [dictionaryCopy callUUID];
  v77[1] = callUUID;
  v76[2] = @"endReason";
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(dictionaryCopy, "disconnectedReason")}];
  v77[2] = v12;
  v76[3] = @"incoming";
  isIncoming = [dictionaryCopy isIncoming];
  v14 = MEMORY[0x1E695E110];
  v15 = MEMORY[0x1E695E118];
  if (isIncoming)
  {
    v16 = MEMORY[0x1E695E118];
  }

  else
  {
    v16 = MEMORY[0x1E695E110];
  }

  v77[3] = v16;
  v76[4] = @"connected";
  if ([dictionaryCopy isConnected])
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v77[4] = v17;
  v76[5] = @"currentlyGrouped";
  if ([dictionaryCopy isConferenced])
  {
    v18 = v15;
  }

  else
  {
    v18 = v14;
  }

  v77[5] = v18;
  v76[6] = @"relay";
  if ([dictionaryCopy isHostedOnCurrentDevice])
  {
    v19 = v14;
  }

  else
  {
    v19 = v15;
  }

  v77[6] = v19;
  v76[7] = @"isConversation";
  if ([dictionaryCopy isConversation])
  {
    v20 = v15;
  }

  else
  {
    v20 = v14;
  }

  v77[7] = v20;
  v76[8] = @"fromLink";
  if ([dictionaryCopy joinedFromLink])
  {
    v21 = v15;
  }

  else
  {
    v21 = v14;
  }

  v77[8] = v21;
  v76[9] = @"originatingUIType";
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(dictionaryCopy, "originatingUIType")}];
  v77[9] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:10];
  v24 = [v9 dictionaryWithDictionary:v23];

  provider = [dictionaryCopy provider];
  isTelephonyProvider = [provider isTelephonyProvider];

  if ((isTelephonyProvider & 1) == 0)
  {
    v27 = MEMORY[0x1E696AD98];
    [dictionaryCopy callDuration];
    v29 = [v27 numberWithDouble:v28 * 1000.0];
    [v24 setObject:v29 forKeyedSubscript:@"durationMs"];

    dateSentInvitation = [dictionaryCopy dateSentInvitation];

    if (dateSentInvitation)
    {
      v31 = MEMORY[0x1E696AD98];
      dateSentInvitation2 = [dictionaryCopy dateSentInvitation];
      dateCreated = [dictionaryCopy dateCreated];
      [dateSentInvitation2 timeIntervalSinceDate:dateCreated];
      v35 = [v31 numberWithDouble:v34 * 1000.0];
      [v24 setObject:v35 forKeyedSubscript:@"setupTimeMs"];

      dateConnected = [dictionaryCopy dateConnected];
      if (dateConnected)
      {
        v37 = dateConnected;
        dateStartedConnecting = [dictionaryCopy dateStartedConnecting];

        if (dateStartedConnecting)
        {
          v39 = MEMORY[0x1E696AD98];
          dateConnected2 = [dictionaryCopy dateConnected];
          dateStartedConnecting2 = [dictionaryCopy dateStartedConnecting];
          [dateConnected2 timeIntervalSinceDate:dateStartedConnecting2];
          v43 = [v39 numberWithDouble:v42 * 1000.0];
          [v24 setObject:v43 forKeyedSubscript:@"connectionTimeMs"];
        }
      }

      report = [conversationCopy report];
      timebase = [report timebase];

      if (timebase)
      {
        dateEnded = [dictionaryCopy dateEnded];
        v47 = dateEnded;
        if (dateEnded)
        {
          v48 = dateEnded;
        }

        else
        {
          v48 = [MEMORY[0x1E695DF00] now];
        }

        v58 = v48;

        v59 = MEMORY[0x1E696AD98];
        dateConnected3 = [dictionaryCopy dateConnected];
        report2 = [conversationCopy report];
        timebase2 = [report2 timebase];
        [dateConnected3 timeIntervalSinceDate:timebase2];
        v63 = [v59 numberWithDouble:?];
        [v24 setObject:v63 forKeyedSubscript:@"relativeStart"];

        v64 = MEMORY[0x1E696AD98];
        report3 = [conversationCopy report];
        timebase3 = [report3 timebase];
        [v58 timeIntervalSinceDate:timebase3];
        v67 = [v64 numberWithDouble:?];
        [v24 setObject:v67 forKeyedSubscript:@"relativeEnd"];
      }

      report4 = [conversationCopy report];
      conversationID = [report4 conversationID];
      uUIDString = [conversationID UUIDString];
      [v24 setObject:uUIDString forKeyedSubscript:@"CID"];
    }

    else
    {
      [dictionaryCopy callDuration];
      if (v49 > 10.0)
      {
        [dictionaryCopy callDuration];
        if (v50 <= 30.0)
        {
          v55 = &unk_1F09C5EF0;
        }

        else
        {
          [dictionaryCopy callDuration];
          if (v51 <= 60.0)
          {
            v55 = &unk_1F09C5F08;
          }

          else
          {
            [dictionaryCopy callDuration];
            if (v52 <= 300.0)
            {
              v55 = &unk_1F09C5F20;
            }

            else
            {
              [dictionaryCopy callDuration];
              if (v53 <= 1800.0)
              {
                v55 = &unk_1F09C5F38;
              }

              else
              {
                [dictionaryCopy callDuration];
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
      [dictionaryCopy callDuration];
      report4 = [v56 numberWithDouble:?];
      [v24 setObject:report4 forKeyedSubscript:@"bucketedDuration"];
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

- (id)reportingSessionForCall:(id)call withConversation:(id)conversation
{
  v38[5] = *MEMORY[0x1E69E9840];
  callCopy = call;
  conversationCopy = conversation;
  queue = [(TURTCCallReporter *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = MEMORY[0x1E695DF90];
  v11 = *MEMORY[0x1E69C6AB8];
  v37[0] = *MEMORY[0x1E69C6AB0];
  v37[1] = v11;
  v38[0] = &unk_1F09C5FB0;
  v38[1] = @"0.1";
  v37[2] = *MEMORY[0x1E69C6AD8];
  if (conversationCopy)
  {
    uUID = [conversationCopy UUID];
    [uUID UUIDString];
  }

  else
  {
    [callCopy callUUID];
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

  if (conversationCopy)
  {

    v12 = uUID;
  }

  report = [conversationCopy report];

  if (report)
  {
    report2 = [conversationCopy report];
    conversationID = [report2 conversationID];
    uUIDString = [conversationID UUIDString];
    [v16 setObject:uUIDString forKeyedSubscript:*MEMORY[0x1E69C6AD0]];
  }

  v21 = [(TURTCCallReporter *)self clientName:callCopy];
  v22 = [(TURTCCallReporter *)self serviceName:callCopy withConversation:conversationCopy];
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

- (id)clientName:(id)name
{
  nameCopy = name;
  queue = [(TURTCCallReporter *)self queue];
  dispatch_assert_queue_V2(queue);

  provider = [nameCopy provider];
  v7 = @"telephonyutilities";
  if ([provider isFaceTimeProvider] && objc_msgSend(nameCopy, "isConversation"))
  {
    v7 = @"multiwayconference";
  }

  v8 = v7;

  return v7;
}

- (id)serviceName:(id)name withConversation:(id)conversation
{
  nameCopy = name;
  conversationCopy = conversation;
  queue = [(TURTCCallReporter *)self queue];
  dispatch_assert_queue_V2(queue);

  provider = [nameCopy provider];
  isFaceTimeProvider = [provider isFaceTimeProvider];

  if (isFaceTimeProvider)
  {
    if ([nameCopy isConversation])
    {
      if ([conversationCopy isOneToOneModeEnabled])
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