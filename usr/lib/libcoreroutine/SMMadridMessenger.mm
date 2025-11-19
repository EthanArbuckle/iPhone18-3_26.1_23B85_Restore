@interface SMMadridMessenger
- (SMMadridMessenger)initWithQueue:(id)a3;
- (SMMessagingServiceMessengerDelegate)delegate;
- (id)createMSMessage:(id)a3 summaryText:(id)a4;
- (id)getIMPluginPayloadFromMSMessage:(id)a3;
- (void)cancelMadridMessageSendForMessageGUID:(id)a3 toConversation:(id)a4 completion:(id)a5;
- (void)cancelMadridMessageSendForMessageGUID:(id)a3 toConversation:(id)a4 retryCount:(int64_t)a5 completion:(id)a6;
- (void)iMessageDeletedFor:(id)a3;
- (void)iMessageReceived:(id)a3 fromHandle:(id)a4 fromMe:(BOOL)a5;
- (void)iMessageScheduledSendCancelFor:(id)a3 successful:(BOOL)a4 withError:(id)a5;
- (void)iMessageScheduledSendScheduledFor:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6;
- (void)iMessageSendFor:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6;
- (void)processSessionStartMessageSendResultWithMessageUrl:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6;
- (void)scheduleMadridMessageSendForMessage:(id)a3 messageGUID:(id)a4 associatedGUID:(id)a5 sendDate:(id)a6 toConversation:(id)a7 summaryText:(id)a8 completion:(id)a9;
- (void)sendMadridMessage:(id)a3 associatedGUID:(id)a4 toConversation:(id)a5 summaryText:(id)a6 completion:(id)a7;
@end

@implementation SMMadridMessenger

- (SMMadridMessenger)initWithQueue:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v15.receiver = self;
    v15.super_class = SMMadridMessenger;
    v6 = [(SMMadridMessenger *)&v15 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_queue, a3);
      v8 = [MEMORY[0x277CBEB18] array];
      madridMessagesWaitingForAck = v7->_madridMessagesWaitingForAck;
      v7->_madridMessagesWaitingForAck = v8;

      v10 = [MEMORY[0x277CBEB18] array];
      resultsWaitingForProcessing = v7->_resultsWaitingForProcessing;
      v7->_resultsWaitingForProcessing = v10;
    }

    self = v7;
    v12 = self;
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)sendMadridMessage:(id)a3 associatedGUID:(id)a4 toConversation:(id)a5 summaryText:(id)a6 completion:(id)a7
{
  v76[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v41 = a4;
  v14 = a5;
  v42 = a6;
  v15 = a7;
  if (v15)
  {
    if (v13)
    {
      if (v14 && ([v14 receiverHandles], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v17))
      {
        *buf = 0;
        v58 = buf;
        v59 = 0x3032000000;
        v60 = __Block_byref_object_copy__18;
        v61 = __Block_byref_object_dispose__18;
        v62 = 0;
        v18 = dispatch_group_create();
        dispatch_group_enter(v18);
        v19 = [v14 identifier];
        v20 = [(SMMadridMessenger *)self queue];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __92__SMMadridMessenger_sendMadridMessage_associatedGUID_toConversation_summaryText_completion___block_invoke;
        v51[3] = &unk_2788C6008;
        v55 = buf;
        v21 = v13;
        v52 = v21;
        v53 = self;
        v56 = a2;
        group = v18;
        v54 = group;
        [SMMessagingUtilities queryChatWithGroupID:v19 queue:v20 handler:v51];

        v22 = [(SMMadridMessenger *)self createMSMessage:v21 summaryText:v42];
        if (v22)
        {
          v23 = [(SMMadridMessenger *)self queue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __92__SMMadridMessenger_sendMadridMessage_associatedGUID_toConversation_summaryText_completion___block_invoke_127;
          block[3] = &unk_2788C6058;
          block[4] = self;
          v44 = v22;
          v45 = v21;
          v49 = buf;
          v50 = a2;
          v46 = v14;
          v47 = v41;
          v48 = v15;
          dispatch_group_notify(group, v23, block);
        }

        else
        {
          v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v35 = [v21 sessionID];
            v36 = objc_opt_class();
            v37 = NSStringFromClass(v36);
            v38 = NSStringFromSelector(a2);
            v39 = [v21 messageID];
            *v65 = 138413058;
            v66 = v35;
            v67 = 2112;
            v68 = v37;
            v69 = 2112;
            v70 = v38;
            v71 = 2112;
            v72 = v39;
            _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,failed to create MSMessage", v65, 0x2Au);
          }

          v32 = MEMORY[0x277CCA9B8];
          v63 = *MEMORY[0x277CCA450];
          v64 = @"MSMessage creation failed";
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          v34 = [v32 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v33];
          (*(v15 + 2))(v15, 0, 0, v34);
        }

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v25 = MEMORY[0x277CCA9B8];
        v73 = *MEMORY[0x277CCA450];
        v74 = @"nil conversation";
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        v27 = [v25 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v26];
        (*(v15 + 2))(v15, 0, 0, v27);
      }
    }

    else
    {
      v28 = MEMORY[0x277CCA9B8];
      v75 = *MEMORY[0x277CCA450];
      v76[0] = @"nil message";
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];
      v30 = [v28 errorWithDomain:*MEMORY[0x277D01448] code:7 userInfo:v29];
      (*(v15 + 2))(v15, 0, 0, v30);
    }
  }

  else
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion", buf, 2u);
    }
  }
}

void __92__SMMadridMessenger_sendMadridMessage_associatedGUID_toConversation_summaryText_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 guid];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 32) sessionID];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(*(a1 + 64));
        v13 = [*(a1 + 32) messageID];
        v14 = *(*(*(a1 + 56) + 8) + 40);
        v15 = 138413314;
        v16 = v9;
        v17 = 2112;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        v21 = 2112;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,found chatGUID,%@", &v15, 0x34u);
      }
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void __92__SMMadridMessenger_sendMadridMessage_associatedGUID_toConversation_summaryText_completion___block_invoke_127(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [*(a1 + 32) getIMPluginPayloadFromMSMessage:*(a1 + 40)];
  v5 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [*(a1 + 48) sessionID];
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(*(a1 + 88));
      v11 = [*(a1 + 48) messageID];
      v12 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138413314;
      v57 = v7;
      v58 = 2112;
      v59 = v9;
      v60 = 2112;
      v61 = v10;
      v62 = 2112;
      v63 = v11;
      v64 = 2112;
      v65 = v12;
      _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,sending message to chatGUID,%@", buf, 0x34u);
    }
  }

  v13 = [v4 data];
  v14 = [*(a1 + 56) receiverPrimaryHandles];
  v53 = *(a1 + 48);
  v15 = v3;
  v16 = IMSPISendMSMessagePayloadWithSummaryTextReturningGUID();

  v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 48) sessionID];
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v22 = NSStringFromSelector(*(a1 + 88));
      v23 = [*(a1 + 48) messageID];
      v25 = *(a1 + 56);
      v24 = *(a1 + 64);
      v26 = *(a1 + 48);
      *buf = 138413827;
      v57 = v19;
      v58 = 2112;
      v59 = v21;
      v60 = 2112;
      v61 = v22;
      v62 = 2112;
      v63 = v23;
      v64 = 2112;
      v65 = v25;
      v66 = 2112;
      v67 = v24;
      v68 = 2117;
      v69 = v26;
      _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,Messages accepted message to conversation %@,associatedGUID,%@,message,%{sensitive}@", buf, 0x48u);
    }

    (*(*(a1 + 72) + 16))();
    v27 = [SMMadridMessageWaitingForAck alloc];
    v28 = [*(a1 + 48) messageID];
    v29 = [v28 UUIDString];
    v30 = [objc_opt_class() messageType];
    v31 = *(a1 + 56);
    v32 = _Block_copy(*(a1 + 72));
    v33 = [(SMMadridMessageWaitingForAck *)v27 initWithIdentifier:v29 messageType:v30 messageSentDate:v5 pendingRetryCount:0 conversation:v31 callback:v32];

    if (v33)
    {
      v34 = [*(a1 + 32) madridMessagesWaitingForAck];
      [v34 addObject:v33];
    }

    else
    {
      v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
      {
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        v51 = NSStringFromSelector(*(a1 + 88));
        *buf = 138412546;
        v57 = v50;
        v58 = 2112;
        v59 = v51;
        _os_log_fault_impl(&dword_2304B3000, v34, OS_LOG_TYPE_FAULT, "#SafetyCache,%@,%@,failed to create SMMadridMessageWaitingForAck", buf, 0x16u);
      }

      v33 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v41 = [*(a1 + 48) sessionID];
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      v44 = NSStringFromSelector(*(a1 + 88));
      v45 = [*(a1 + 48) messageID];
      v47 = *(a1 + 56);
      v46 = *(a1 + 64);
      v48 = *(a1 + 48);
      *buf = 138413827;
      v57 = v41;
      v58 = 2112;
      v59 = v43;
      v60 = 2112;
      v61 = v44;
      v62 = 2112;
      v63 = v45;
      v64 = 2112;
      v65 = v47;
      v66 = 2112;
      v67 = v46;
      v68 = 2117;
      v69 = v48;
      _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,Messages rejected message to conversation,%@,associatedGUID,%@,message,%{sensitive}@", buf, 0x48u);
    }

    v35 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277D01448];
    v54 = *MEMORY[0x277CCA450];
    v55 = @"Messages rejected message";
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v33 = [v35 errorWithDomain:v36 code:0 userInfo:v37];

    (*(*(a1 + 72) + 16))();
    v38 = [objc_opt_class() messageType];
    [v5 timeIntervalSinceNow];
    v40 = -v39;
    v34 = [*(a1 + 56) receiverHandles];
    LOBYTE(v52) = 0;
    [SMMessagingService submitCAMetricForMessageType:v38 scheduledSend:0 cancelationAttempt:0 attemptNumber:1 wasFinalAttempt:1 timeToSendMessage:v33 sendError:v40 success:v52 numReceivers:[v34 count]];
  }
}

void __92__SMMadridMessenger_sendMadridMessage_associatedGUID_toConversation_summaryText_completion___block_invoke_129(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v5 = v4;
  if (!v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v6 = [*(a1 + 32) sessionID];
    v10 = *(a1 + 40);
    v8 = NSStringFromSelector(*(a1 + 48));
    v9 = [*(a1 + 32) messageID];
    v11 = 138413058;
    v12 = v6;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_error_impl(&dword_2304B3000, v5, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,Messages GUID is nil", &v11, 0x2Au);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) sessionID];
    v7 = *(a1 + 40);
    v8 = NSStringFromSelector(*(a1 + 48));
    v9 = [*(a1 + 32) messageID];
    v11 = 138413314;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_2304B3000, v5, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,received GUID:%@", &v11, 0x34u);
LABEL_4:
  }

LABEL_6:
}

- (void)scheduleMadridMessageSendForMessage:(id)a3 messageGUID:(id)a4 associatedGUID:(id)a5 sendDate:(id)a6 toConversation:(id)a7 summaryText:(id)a8 completion:(id)a9
{
  v63[1] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = v22;
  if (!v16)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: message";
LABEL_18:
    _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, v27, buf, 2u);
    goto LABEL_22;
  }

  if (!v17)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: messageGUID";
    goto LABEL_18;
  }

  if (!v19)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: sendDate";
    goto LABEL_18;
  }

  if (!v20)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: conversation";
    goto LABEL_18;
  }

  if (!v22)
  {
    v26 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v27 = "Invalid parameter not satisfying: completion";
    goto LABEL_18;
  }

  v24 = [(SMMadridMessenger *)self createMSMessage:v16 summaryText:v21];
  if (v24)
  {
    v36 = v24;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v60 = __Block_byref_object_copy__18;
    *&v61 = __Block_byref_object_dispose__18;
    *(&v61 + 1) = 0;
    v25 = dispatch_group_create();
    dispatch_group_enter(v25);
    queue = [v20 identifier];
    v38 = [(SMMadridMessenger *)self queue];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __131__SMMadridMessenger_scheduleMadridMessageSendForMessage_messageGUID_associatedGUID_sendDate_toConversation_summaryText_completion___block_invoke;
    v53[3] = &unk_2788C6008;
    v57 = buf;
    v35 = v16;
    v54 = v35;
    v55 = self;
    v58 = a2;
    group = v25;
    v56 = group;
    [SMMessagingUtilities queryChatWithGroupID:queue queue:v38 handler:v53];

    queuea = [(SMMadridMessenger *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __131__SMMadridMessenger_scheduleMadridMessageSendForMessage_messageGUID_associatedGUID_sendDate_toConversation_summaryText_completion___block_invoke_137;
    block[3] = &unk_2788C6080;
    block[4] = self;
    v26 = v36;
    v44 = v26;
    v45 = v35;
    v51 = buf;
    v52 = a2;
    v46 = v20;
    v47 = v19;
    v48 = v17;
    v49 = v18;
    v50 = v23;
    dispatch_group_notify(group, queuea, block);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v28 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      queueb = [v16 sessionID];
      v32 = objc_opt_class();
      v39 = NSStringFromClass(v32);
      v33 = NSStringFromSelector(a2);
      v34 = [v16 messageID];
      *buf = 138413058;
      *&buf[4] = queueb;
      *&buf[12] = 2112;
      *&buf[14] = v39;
      *&buf[22] = 2112;
      v60 = v33;
      LOWORD(v61) = 2112;
      *(&v61 + 2) = v34;
      _os_log_error_impl(&dword_2304B3000, v28, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,failed to create MSMessage", buf, 0x2Au);
    }

    v29 = MEMORY[0x277CCA9B8];
    v62 = *MEMORY[0x277CCA450];
    v63[0] = @"MSMessage creation failed";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    v31 = [v29 errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v30];
    (v23)[2](v23, 0, 0, v31);

    v26 = 0;
  }

LABEL_22:
}

void __131__SMMadridMessenger_scheduleMadridMessageSendForMessage_messageGUID_associatedGUID_sendDate_toConversation_summaryText_completion___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 guid];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [*(a1 + 32) sessionID];
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = NSStringFromSelector(*(a1 + 64));
        v13 = [*(a1 + 32) messageID];
        v14 = *(*(*(a1 + 56) + 8) + 40);
        v15 = 138413314;
        v16 = v9;
        v17 = 2112;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        v21 = 2112;
        v22 = v13;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,found chatGUID,%@", &v15, 0x34u);
      }
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void __131__SMMadridMessenger_scheduleMadridMessageSendForMessage_messageGUID_associatedGUID_sendDate_toConversation_summaryText_completion___block_invoke_137(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) getIMPluginPayloadFromMSMessage:*(a1 + 40)];
  v3 = [MEMORY[0x277CBEAA8] date];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 48) sessionID];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = NSStringFromSelector(*(a1 + 104));
      v9 = [*(a1 + 48) messageID];
      v10 = *(*(*(a1 + 96) + 8) + 40);
      *buf = 138413314;
      v59 = v5;
      v60 = 2112;
      v61 = v7;
      v62 = 2112;
      v63 = v8;
      v64 = 2112;
      v65 = v9;
      v66 = 2112;
      v67 = v10;
      _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_INFO, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,sending message to chatGUID,%@", buf, 0x34u);
    }
  }

  v11 = [v2 data];
  v12 = [*(a1 + 56) receiverPrimaryHandles];
  v13 = IMSPIScheduleSendMSMessagePayloadWithSummaryTextAndGUID();

  v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 48) sessionID];
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v19 = NSStringFromSelector(*(a1 + 104));
      v20 = [*(a1 + 48) messageID];
      v21 = *(a1 + 80);
      v22 = v2;
      v23 = v3;
      v24 = *(a1 + 56);
      v25 = [*(a1 + 64) stringFromDate];
      v26 = *(a1 + 48);
      *buf = 138414083;
      v59 = v16;
      v60 = 2112;
      v61 = v18;
      v62 = 2112;
      v63 = v19;
      v64 = 2112;
      v65 = v20;
      v66 = 2112;
      v67 = v24;
      v3 = v23;
      v2 = v22;
      v68 = 2112;
      v69 = v21;
      v70 = 2112;
      v71 = v25;
      v27 = v25;
      v72 = 2117;
      v73 = v26;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,Messages accepted message to conversation %@,associatedGUID,%@,sendDate,%@,message,%{sensitive}@", buf, 0x52u);
    }

    v28 = [SMMadridMessageWaitingForAck alloc];
    v29 = [*(a1 + 48) messageID];
    v30 = [v29 UUIDString];
    v31 = [objc_opt_class() messageType];
    v33 = *(a1 + 56);
    v32 = *(a1 + 64);
    v34 = _Block_copy(*(a1 + 88));
    v35 = [(SMMadridMessageWaitingForAck *)v28 initWithIdentifier:v30 messageType:v31 messageSentDate:v32 pendingRetryCount:0 conversation:v33 callback:v34];

    if (v35)
    {
      v36 = [*(a1 + 32) madridMessagesWaitingForAck];
      [v36 addObject:v35];
    }

    else
    {
      v36 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v53 = NSStringFromSelector(*(a1 + 104));
        *buf = 138412546;
        v59 = v52;
        v60 = 2112;
        v61 = v53;
        _os_log_fault_impl(&dword_2304B3000, v36, OS_LOG_TYPE_FAULT, "#SafetyCache,%@,%@,failed to create SMMadridMessageWaitingForAck", buf, 0x16u);
      }

      v35 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v43 = [*(a1 + 48) sessionID];
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = NSStringFromSelector(*(a1 + 104));
      v47 = [*(a1 + 48) messageID];
      v55 = *(a1 + 80);
      v48 = *(a1 + 56);
      v49 = [*(a1 + 64) stringFromDate];
      v50 = *(a1 + 48);
      *buf = 138414083;
      v59 = v43;
      v60 = 2112;
      v61 = v45;
      v62 = 2112;
      v63 = v46;
      v64 = 2112;
      v65 = v47;
      v66 = 2112;
      v67 = v48;
      v68 = 2112;
      v69 = v55;
      v70 = 2112;
      v71 = v49;
      v72 = 2117;
      v73 = v50;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,Messages rejected message to conversation %@,associatedGUID,%@,sendDate,%@,message,%{sensitive}@", buf, 0x52u);
    }

    v37 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277D01448];
    v56 = *MEMORY[0x277CCA450];
    v57 = @"Messages rejected message";
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v35 = [v37 errorWithDomain:v38 code:0 userInfo:v39];

    (*(*(a1 + 88) + 16))();
    v40 = [objc_opt_class() messageType];
    [v3 timeIntervalSinceNow];
    v42 = -v41;
    v36 = [*(a1 + 56) receiverHandles];
    LOBYTE(v54) = 0;
    [SMMessagingService submitCAMetricForMessageType:v40 scheduledSend:1 cancelationAttempt:0 attemptNumber:1 wasFinalAttempt:1 timeToSendMessage:v35 sendError:v42 success:v54 numReceivers:[v36 count]];
  }
}

- (void)cancelMadridMessageSendForMessageGUID:(id)a3 toConversation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v8)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v17 = 0;
    v13 = "Invalid parameter not satisfying: messageGUID";
    v14 = &v17;
LABEL_11:
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, v13, v14, 2u);
    goto LABEL_12;
  }

  if (!v9)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v16 = 0;
    v13 = "Invalid parameter not satisfying: conversation";
    v14 = &v16;
    goto LABEL_11;
  }

  if (!v10)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v13 = "Invalid parameter not satisfying: completion";
      v14 = &v15;
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  [(SMMadridMessenger *)self cancelMadridMessageSendForMessageGUID:v8 toConversation:v9 retryCount:2 completion:v10];
LABEL_13:
}

- (void)cancelMadridMessageSendForMessageGUID:(id)a3 toConversation:(id)a4 retryCount:(int64_t)a5 completion:(id)a6
{
  v58 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = v13;
  if (!v11)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v33 = "Invalid parameter not satisfying: messageGUID";
LABEL_21:
    _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, v33, buf, 2u);
    goto LABEL_28;
  }

  if (!v12)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v33 = "Invalid parameter not satisfying: conversation";
    goto LABEL_21;
  }

  if (!v13)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v33 = "Invalid parameter not satisfying: completion";
    goto LABEL_21;
  }

  if ((a5 & 0x8000000000000000) == 0)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      *buf = 138413058;
      v51 = v17;
      v52 = 2112;
      v53 = v18;
      v54 = 2112;
      v55 = v11;
      v56 = 2112;
      v57 = v12;
      _os_log_impl(&dword_2304B3000, v15, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,canceling scheduled send for %@ to conversation %@", buf, 0x2Au);
    }

    v19 = [MEMORY[0x277CBEAA8] date];
    v20 = MEMORY[0x277CBEB98];
    v21 = [v12 receiverPrimaryHandles];
    v22 = [v20 setWithArray:v21];

    v23 = IMSPICancelScheduledMessageWithGUIDAndDestinations();
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v25 = v24;
    if ((v23 & 1) == 0)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = NSStringFromSelector(a2);
        *buf = 138413058;
        v51 = v41;
        v52 = 2112;
        v53 = v42;
        v54 = 2112;
        v55 = v11;
        v56 = 2112;
        v57 = v22;
        _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,Messages rejected cancel request for %@ to handles %@", buf, 0x2Au);
      }

      v34 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277D01448];
      v48 = *MEMORY[0x277CCA450];
      v49 = @"Messages rejected cancel request";
      v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      v31 = [v34 errorWithDomain:v35 code:0 userInfo:v36];

      (v14)[2](v14, 0, v31);
      [v19 timeIntervalSinceNow];
      v38 = -v37;
      v39 = [v12 receiverHandles];
      LOBYTE(v46) = 0;
      +[SMMessagingService submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:](SMMessagingService, "submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:", 3, 1, 1, 1, 1, v31, v38, v46, [v39 count]);

      goto LABEL_27;
    }

    v47 = v22;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      *buf = 138413058;
      v51 = v27;
      v52 = 2112;
      v53 = v28;
      v54 = 2112;
      v55 = v11;
      v56 = 2112;
      v57 = v47;
      _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,Messages accepted cancel request for %@ to handles %@", buf, 0x2Au);
    }

    v29 = [SMMadridMessageWaitingForAck alloc];
    v30 = _Block_copy(v14);
    v31 = [(SMMadridMessageWaitingForAck *)v29 initWithIdentifier:v11 messageType:3 messageSentDate:v19 pendingRetryCount:a5 conversation:v12 callback:v30];

    if (v31)
    {
      v32 = [(SMMadridMessenger *)self madridMessagesWaitingForAck];
      [v32 addObject:v31];
    }

    else
    {
      v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      v22 = v47;
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_26;
      }

      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(a2);
      *buf = 138412546;
      v51 = v44;
      v52 = 2112;
      v53 = v45;
      _os_log_fault_impl(&dword_2304B3000, v32, OS_LOG_TYPE_FAULT, "#SafetyCache,%@,%@,failed to create SMMadridMessageWaitingForAck", buf, 0x16u);
    }

    v22 = v47;
LABEL_26:

    v14[2](v14, 1, 0);
LABEL_27:

    goto LABEL_28;
  }

  v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v33 = "Invalid parameter not satisfying: retryCount >= 0";
    goto LABEL_21;
  }

LABEL_28:
}

- (void)iMessageSendFor:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6
{
  v7 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
  {
    aSelector = a2;
    if (!v12)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v60 = "[SMMadridMessenger iMessageSendFor:guid:successful:withError:]";
        v61 = 1024;
        LODWORD(v62) = 436;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: messageGUID (in %s:%d)", buf, 0x12u);
      }
    }

    v15 = [MEMORY[0x277D4AB38] sessionIDFromURL:v11];
    v16 = [MEMORY[0x277D4AB38] messageIDFromURL:v11];
    v44 = [MEMORY[0x277D4AB38] messageTypeFromURL:v11];
    v55 = 0;
    v56 = &v55;
    v57 = 0x2020000000;
    v58 = -1;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__18;
    v53 = __Block_byref_object_dispose__18;
    v54 = 0;
    v17 = [(SMMadridMessenger *)self madridMessagesWaitingForAck];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __63__SMMadridMessenger_iMessageSendFor_guid_successful_withError___block_invoke;
    v45[3] = &unk_2788C60A8;
    v43 = v16;
    v46 = v43;
    v47 = &v55;
    v48 = &v49;
    [v17 enumerateObjectsUsingBlock:v45];

    if (v56[3] == -1 || ([v50[5] callback], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (v44 != 1)
      {
        v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v35 = objc_opt_class();
          v36 = NSStringFromClass(v35);
          v37 = NSStringFromSelector(aSelector);
          *buf = 138413826;
          v60 = v15;
          v61 = 2112;
          v62 = v36;
          v63 = 2112;
          v64 = v37;
          v65 = 2112;
          v66 = v43;
          v67 = 2112;
          v68 = v12;
          v69 = 1024;
          *v70 = v7;
          *&v70[4] = 2112;
          *&v70[6] = v13;
          _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,index not found or nil callback,GUID,%@,success,%d,error,%@", buf, 0x44u);
        }

        if (v56[3] == -1)
        {
          goto LABEL_27;
        }

        v25 = [(SMMadridMessenger *)self madridMessagesWaitingForAck];
        [v25 removeObjectAtIndex:v56[3]];
        goto LABEL_26;
      }
    }

    else
    {

      if (v44 != 1)
      {
LABEL_12:
        v21 = [(SMMadridMessenger *)self madridMessagesWaitingForAck];
        [v21 removeObjectAtIndex:v56[3]];

        v22 = [v50[5] messageSentDate];
        [v22 timeIntervalSinceNow];
        v24 = v23;

        v25 = [v50[5] callback];
        if (v7)
        {
          v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            v29 = NSStringFromSelector(aSelector);
            *buf = 138413314;
            v60 = v15;
            v61 = 2112;
            v62 = v28;
            v63 = 2112;
            v64 = v29;
            v65 = 2112;
            v66 = v43;
            v67 = 2112;
            v68 = v12;
            _os_log_impl(&dword_2304B3000, v26, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,message send succeeded,GUID,%@", buf, 0x34u);
          }

          v30 = 0;
          v31 = v12;
        }

        else
        {
          v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v38 = objc_opt_class();
            v39 = NSStringFromClass(v38);
            v40 = NSStringFromSelector(aSelector);
            *buf = 138413570;
            v60 = v15;
            v61 = 2112;
            v62 = v39;
            v63 = 2112;
            v64 = v40;
            v65 = 2112;
            v66 = v43;
            v67 = 2112;
            v68 = v13;
            v69 = 2112;
            *v70 = v12;
            _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,message send failed with error %@,GUID,%@", buf, 0x3Eu);
          }

          v31 = 0;
          v30 = v13;
        }

        (v25)[2](v25, v31, v7, v30);
        v33 = [v50[5] conversation];
        v34 = [v33 receiverHandles];
        LOBYTE(v41) = v7;
        +[SMMessagingService submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:](SMMessagingService, "submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:", v44, 0, 0, 1, 1, v13, -v24, v41, [v34 count]);

LABEL_26:
        goto LABEL_27;
      }
    }

    [(SMMadridMessenger *)self processSessionStartMessageSendResultWithMessageUrl:v11 guid:v12 successful:v7 withError:v13];
    v19 = [v50[5] callback];
    v20 = v19 == 0;

    if (v20)
    {
LABEL_27:

      _Block_object_dispose(&v49, 8);
      _Block_object_dispose(&v55, 8);

      goto LABEL_28;
    }

    goto LABEL_12;
  }

  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: messageUrl", buf, 2u);
  }

LABEL_28:
}

void __63__SMMadridMessenger_iMessageSendFor_guid_successful_withError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v8 = [v11 identifier];
  v9 = [*(a1 + 32) UUIDString];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)iMessageScheduledSendScheduledFor:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6
{
  v7 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!v11)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: messageUrl";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v24, buf, 2u);
    goto LABEL_23;
  }

  if (!v12)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    *buf = 0;
    v24 = "Invalid parameter not satisfying: messageGUID";
    goto LABEL_13;
  }

  v41 = v7;
  v14 = [MEMORY[0x277D4AB38] sessionIDFromURL:v11];
  v15 = [MEMORY[0x277D4AB38] messageIDFromURL:v11];
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = -1;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__18;
  v51 = __Block_byref_object_dispose__18;
  v52 = 0;
  v16 = [(SMMadridMessenger *)self madridMessagesWaitingForAck];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __81__SMMadridMessenger_iMessageScheduledSendScheduledFor_guid_successful_withError___block_invoke;
  v43[3] = &unk_2788C60A8;
  v42 = v15;
  v44 = v42;
  v45 = &v53;
  v46 = &v47;
  [v16 enumerateObjectsUsingBlock:v43];

  if (v54[3] == -1)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      v27 = NSStringFromSelector(a2);
      *buf = 138413826;
      v58 = v14;
      v59 = 2112;
      v60 = v26;
      v61 = 2112;
      v62 = v27;
      v63 = 2112;
      v64 = v42;
      v65 = 2112;
      v66 = v12;
      v67 = 1024;
      v68 = v41;
      v69 = 2112;
      v70 = v13;
      _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,index not found,GUID,%@,success,%d,error,%@", buf, 0x44u);
    }
  }

  else
  {
    v17 = [(SMMadridMessenger *)self madridMessagesWaitingForAck];
    [v17 removeObjectAtIndex:v54[3]];

    v18 = [v48[5] callback];
    LODWORD(v17) = v18 == 0;

    if (v17)
    {
      v19 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = NSStringFromSelector(a2);
        *buf = 138413058;
        v58 = v14;
        v59 = 2112;
        v60 = v29;
        v61 = 2112;
        v62 = v30;
        v63 = 2112;
        v64 = v42;
        _os_log_error_impl(&dword_2304B3000, v19, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,nil callback", buf, 0x2Au);
      }
    }

    else
    {
      v19 = [v48[5] callback];
      if (v41)
      {
        v20 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v23 = NSStringFromSelector(a2);
          *buf = 138413058;
          v58 = v14;
          v59 = 2112;
          v60 = v22;
          v61 = 2112;
          v62 = v23;
          v63 = 2112;
          v64 = v42;
          _os_log_impl(&dword_2304B3000, v20, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,scheduled successfully", buf, 0x2Au);
        }

        (*(v19 + 16))(v19, v12, 1, 0);
      }

      else
      {
        v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v37 = objc_opt_class();
          v38 = NSStringFromClass(v37);
          v39 = NSStringFromSelector(a2);
          *buf = 138413314;
          v58 = v14;
          v59 = 2112;
          v60 = v38;
          v61 = 2112;
          v62 = v39;
          v63 = 2112;
          v64 = v42;
          v65 = 2112;
          v66 = v13;
          _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,failed to schedule with error %@", buf, 0x34u);
        }

        (*(v19 + 16))(v19, 0, 0, v13);
      }

      v32 = [v48[5] messageSentDate];
      [v32 timeIntervalSinceNow];
      v34 = v33;
      v35 = [v48[5] conversation];
      v36 = [v35 receiverHandles];
      LOBYTE(v40) = v41;
      +[SMMessagingService submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:](SMMessagingService, "submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:", 3, 1, 0, 1, 1, v13, -v34, v40, [v36 count]);
    }
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);

LABEL_23:
}

void __81__SMMadridMessenger_iMessageScheduledSendScheduledFor_guid_successful_withError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v8 = [v11 identifier];
  v9 = [*(a1 + 32) UUIDString];
  v10 = [v8 isEqualToString:v9];

  if (v10)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)iMessageScheduledSendCancelFor:(id)a3 successful:(BOOL)a4 withError:(id)a5
{
  v6 = a4;
  v74 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    v60 = 0;
    v61 = &v60;
    v62 = 0x2020000000;
    v63 = -1;
    *v54 = 0;
    v55 = v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__18;
    v58 = __Block_byref_object_dispose__18;
    v59 = 0;
    v11 = [(SMMadridMessenger *)self madridMessagesWaitingForAck];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __73__SMMadridMessenger_iMessageScheduledSendCancelFor_successful_withError___block_invoke;
    v50[3] = &unk_2788C60A8;
    v12 = v9;
    v51 = v12;
    v52 = &v60;
    v53 = v54;
    [v11 enumerateObjectsUsingBlock:v50];

    if (v61[3] == -1)
    {
      v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        v30 = NSStringFromSelector(a2);
        *buf = 138412802;
        v65 = v29;
        v66 = 2112;
        v67 = v30;
        v68 = 2112;
        v69 = v12;
        _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,message not found for messageGUID %@", buf, 0x20u);
      }
    }

    else
    {
      v13 = [(SMMadridMessenger *)self madridMessagesWaitingForAck];
      [v13 removeObjectAtIndex:v61[3]];

      v14 = [*(v55 + 5) callback];
      LODWORD(v13) = v14 == 0;

      if (v13)
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          v33 = NSStringFromSelector(a2);
          *buf = 138412802;
          v65 = v32;
          v66 = 2112;
          v67 = v33;
          v68 = 2112;
          v69 = v12;
          _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,nil callback for %@", buf, 0x20u);
        }
      }

      else
      {
        v15 = [*(v55 + 5) callback];
        if (v6)
        {
          v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            v19 = NSStringFromSelector(a2);
            *buf = 138412802;
            v65 = v18;
            v66 = 2112;
            v67 = v19;
            v68 = 2112;
            v69 = v12;
            _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,cancel suceeded for %@", buf, 0x20u);
          }

          (*(v15 + 16))(v15, 1, 0);
          v20 = [*(v55 + 5) pendingRetryCount];
          v21 = [*(v55 + 5) pendingRetryCount];
          v22 = [*(v55 + 5) messageSentDate];
          [v22 timeIntervalSinceNow];
          v24 = v23;
          v25 = [*(v55 + 5) conversation];
          v26 = [v25 receiverHandles];
          LOBYTE(v49) = 1;
          +[SMMessagingService submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:](SMMessagingService, "submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:", 3, 1, 1, 3 - v20, v21 == 0, 0, -v24, v49, [v26 count]);
        }

        else if ([*(v55 + 5) pendingRetryCount])
        {
          v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v42 = objc_opt_class();
            v43 = NSStringFromClass(v42);
            v44 = NSStringFromSelector(a2);
            v45 = [*(v55 + 5) pendingRetryCount];
            *buf = 138413314;
            v65 = v43;
            v66 = 2112;
            v67 = v44;
            v68 = 2112;
            v69 = v12;
            v70 = 2112;
            v71 = v10;
            v72 = 1024;
            v73 = v45;
            _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,cancel failed for %@ with error %@ retries left %d", buf, 0x30u);
          }

          v35 = [*(v55 + 5) conversation];
          -[SMMadridMessenger cancelMadridMessageSendForMessageGUID:toConversation:retryCount:completion:](self, "cancelMadridMessageSendForMessageGUID:toConversation:retryCount:completion:", v12, v35, [*(v55 + 5) pendingRetryCount] - 1, v15);

          v36 = [*(v55 + 5) pendingRetryCount];
          v22 = [*(v55 + 5) messageSentDate];
          [v22 timeIntervalSinceNow];
          v38 = v37;
          v25 = [*(v55 + 5) conversation];
          v26 = [v25 receiverHandles];
          LOBYTE(v49) = 0;
          +[SMMessagingService submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:](SMMessagingService, "submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:", 3, 1, 1, 3 - v36, 0, v10, -v38, v49, [v26 count]);
        }

        else
        {
          v39 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            v48 = NSStringFromSelector(a2);
            *buf = 138413058;
            v65 = v47;
            v66 = 2112;
            v67 = v48;
            v68 = 2112;
            v69 = v12;
            v70 = 2112;
            v71 = v10;
            _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,cancel failed for %@ with error %@", buf, 0x2Au);
          }

          (*(v15 + 16))(v15, 0, v10);
          v22 = [*(v55 + 5) messageSentDate];
          [v22 timeIntervalSinceNow];
          v41 = v40;
          v25 = [*(v55 + 5) conversation];
          v26 = [v25 receiverHandles];
          LOBYTE(v49) = 0;
          +[SMMessagingService submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:](SMMessagingService, "submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:", 3, 1, 1, 3, 1, v10, -v41, v49, [v26 count]);
        }
      }
    }

    _Block_object_dispose(v54, 8);
    _Block_object_dispose(&v60, 8);
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v54 = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: messageGUID", v54, 2u);
    }
  }
}

void __73__SMMadridMessenger_iMessageScheduledSendCancelFor_successful_withError___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v8 = [v10 identifier];
  v9 = [v8 isEqualToString:a1[4]];

  if (v9)
  {
    *(*(a1[5] + 8) + 24) = a3;
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)iMessageReceived:(id)a3 fromHandle:(id)a4 fromMe:(BOOL)a5
{
  v5 = a5;
  v42 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: messageUrl";
LABEL_12:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_18;
  }

  if (!v10)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: handle";
    goto LABEL_12;
  }

  v12 = [MEMORY[0x277D4AB38] messageTypeFromURL:v9];
  if ([MEMORY[0x277D4AB38] interfaceTypeFromMessageType:v12] == 1)
  {
    v13 = objc_alloc(MEMORY[0x277D4AAE8]);
    v14 = [v13 initWithPrimaryHandle:v11 secondaryHandles:MEMORY[0x277CBEBF8]];
    v15 = [MEMORY[0x277D4AB38] createMessageFromURL:v9];
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v15 sessionID];
        v19 = objc_opt_class();
        v29 = NSStringFromClass(v19);
        v20 = NSStringFromSelector(a2);
        [v15 messageID];
        *buf = 138413571;
        v31 = v18;
        v32 = 2112;
        v33 = v29;
        v34 = 2112;
        v35 = v20;
        v37 = v36 = 2112;
        v21 = v37;
        v38 = 2112;
        v39 = v11;
        v40 = 2117;
        v41 = v15;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,received message from %@,message,%{sensitive}@", buf, 0x3Eu);
      }

      v17 = [(SMMadridMessenger *)self delegate];
      [v17 receivedMessage:v15 fromHandle:v14 fromMe:v5];
    }

    else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      *buf = 138413058;
      v31 = v27;
      v32 = 2112;
      v33 = v28;
      v34 = 2112;
      v35 = v11;
      v36 = 2112;
      v37 = v9;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,received message from %@ could not be converted to SMMessage,messageUrl,%@", buf, 0x2Au);
    }
  }

  else
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      v25 = NSStringFromSelector(a2);
      *buf = 138412802;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      v34 = 1024;
      LODWORD(v35) = v12;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,received unsupported message type %d over Madrid", buf, 0x1Cu);
    }
  }

LABEL_18:
}

- (void)iMessageDeletedFor:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v32;
      v10 = 0x277D4A000uLL;
      *&v7 = 138412802;
      v28 = v7;
      do
      {
        v11 = 0;
        v30 = v8;
        do
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v31 + 1) + 8 * v11);
          v13 = [*(v10 + 2872) createMessageFromURL:{v12, v28}];
          if (v13)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
              {
                v15 = [v13 sessionID];
                v16 = objc_opt_class();
                v17 = NSStringFromClass(v16);
                v18 = NSStringFromSelector(a2);
                [v13 messageID];
                v19 = v9;
                v20 = self;
                v22 = v21 = v5;
                *buf = 138413314;
                v36 = v15;
                v37 = 2112;
                v38 = v17;
                v39 = 2112;
                v40 = v18;
                v41 = 2112;
                v42 = v22;
                v43 = 2112;
                v44 = v13;
                _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_INFO, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,deleted message,%@", buf, 0x34u);

                v5 = v21;
                self = v20;
                v9 = v19;
                v10 = 0x277D4A000;

                v8 = v30;
              }
            }

            v23 = [(SMMadridMessenger *)self delegate];
            [v23 deletedMessage:v13];
          }

          else
          {
            v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              v24 = objc_opt_class();
              v25 = NSStringFromClass(v24);
              v26 = NSStringFromSelector(a2);
              *buf = v28;
              v36 = v25;
              v37 = 2112;
              v38 = v26;
              v39 = 2112;
              v40 = v12;
              _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@, deleted message could not be converted to SMMessage,messageUrl,%@", buf, 0x20u);

              v8 = v30;
            }
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [v5 countByEnumeratingWithState:&v31 objects:v45 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: messageUrls", buf, 2u);
    }
  }
}

- (id)createMSMessage:(id)a3 summaryText:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x277CD6910]);
    [v7 setCaption:v6];
    v8 = [objc_alloc(MEMORY[0x277CD6900]) initWithAlternateLayout:v7];
    v9 = objc_alloc(MEMORY[0x277CD68F8]);
    v10 = objc_alloc(MEMORY[0x277CD6920]);
    v11 = [v5 sessionID];
    v12 = [v10 initWithIdentifier:v11];
    v13 = [v9 initWithSession:v12];

    [v13 setLayout:v8];
    v14 = [v5 outputToURLComponents];
    v15 = [v14 URL];
    [v13 setURL:v15];

    [v13 setSummaryText:v6];
    [v13 setRequiresValidation:1];
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: message", v18, 2u);
    }

    v13 = 0;
  }

  return v13;
}

- (id)getIMPluginPayloadFromMSMessage:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/Messages/iMessageApps/SafetyMonitorMessages.bundle"];
    v5 = [v4 pathForResource:@"CheckInMessagesAppIcon_32" ofType:@"png"];
    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v5];
    v7 = [v3 _pluginPayloadWithAppIconData:v6 appName:@"Check In" allowDataPayloads:1];
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: msMessage", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (void)processSessionStartMessageSendResultWithMessageUrl:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6
{
  v7 = a5;
  v45 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!v11)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: messageUrl";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v22, buf, 2u);
    goto LABEL_17;
  }

  if (!v12)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 0;
    v22 = "Invalid parameter not satisfying: messageGUID";
    goto LABEL_13;
  }

  v14 = [objc_alloc(MEMORY[0x277D4ABE8]) initWithURL:v11];
  v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v14 sessionID];
      v18 = objc_opt_class();
      v28 = NSStringFromClass(v18);
      v19 = NSStringFromSelector(a2);
      v27 = [v14 messageID];
      v20 = [MEMORY[0x277D4AAB0] convertLowPowerModeWarningStateToString:{-[NSObject lowPowerModeWarningState](v14, "lowPowerModeWarningState")}];
      v26 = v20;
      *buf = 138414082;
      v21 = @"failed";
      v30 = v17;
      if (v7)
      {
        v21 = @"succeeded";
      }

      v31 = 2112;
      v32 = v28;
      v33 = 2112;
      v34 = v19;
      v35 = 2112;
      v36 = v27;
      v37 = 2112;
      v38 = v20;
      v39 = 2112;
      v40 = v21;
      v41 = 2112;
      v42 = v12;
      v43 = 2112;
      v44 = v13;
      _os_log_impl(&dword_2304B3000, v16, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@, lowPowerModeWarningState, %@, start message send %@,GUID,%@,error,%@", buf, 0x52u);
    }

    v16 = [(SMMadridMessenger *)self delegate];
    [v16 receivedSessionStartMessageSendResultWithMessage:v14 guid:v12 successful:v7 withError:v13];
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = NSStringFromSelector(a2);
    *buf = 138412802;
    v30 = v24;
    v31 = 2112;
    v32 = v25;
    v33 = 2112;
    v34 = v11;
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,failed to create SMSessionStartMessage from URL %@", buf, 0x20u);
  }

LABEL_17:
}

- (SMMessagingServiceMessengerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end