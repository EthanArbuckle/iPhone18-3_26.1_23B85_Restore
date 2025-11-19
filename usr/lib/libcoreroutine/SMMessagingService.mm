@interface SMMessagingService
+ (BOOL)isCellularActivated;
+ (BOOL)isStandalone;
+ (void)submitCAMetricForMessageType:(unint64_t)a3 scheduledSend:(BOOL)a4 cancelationAttempt:(BOOL)a5 attemptNumber:(int64_t)a6 wasFinalAttempt:(BOOL)a7 timeToSendMessage:(double)a8 sendError:(id)a9 success:(BOOL)a10 numReceivers:(unint64_t)a11;
- (NSUUID)deviceIdentifier;
- (SMMessagingService)init;
- (id)effectivePairedDevice;
- (int64_t)convertRTPlatformToIDSDeviceType:(id)a3;
- (void)_cancelSubscriptionOnNearbyDevicesChange;
- (void)_setup;
- (void)_startSubscriptionOnNearbyDevicesChange;
- (void)cancelMadridMessageSendForMessageGUID:(id)a3 toConversation:(id)a4 completion:(id)a5;
- (void)cancelSubscriptionOnNearbyDevicesChanged;
- (void)deletedMessage:(id)a3;
- (void)findObjectForMyAccountFromDict:(id)a3 withHandler:(id)a4;
- (void)iMessageConversationDeletedFor:(id)a3;
- (void)iMessageDeletedFor:(id)a3;
- (void)iMessageReceived:(id)a3 fromHandle:(id)a4 fromMe:(BOOL)a5;
- (void)iMessageScheduledSendCancelFor:(id)a3 successful:(BOOL)a4 withError:(id)a5;
- (void)iMessageScheduledSendScheduledFor:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6;
- (void)iMessageScheduledSendTriggeredFor:(id)a3;
- (void)iMessageSendFor:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6;
- (void)receivedMessage:(id)a3 fromHandle:(id)a4 fromMe:(BOOL)a5;
- (void)receivedSessionStartMessageSendResultWithMessage:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6;
- (void)scheduleMadridMessageSendForMessage:(id)a3 messageGUID:(id)a4 associatedGUID:(id)a5 sendDate:(id)a6 toConversation:(id)a7 summaryText:(id)a8 completion:(id)a9;
- (void)sendIDSMessage:(id)a3 toConversation:(id)a4 completion:(id)a5;
- (void)sendIDSMessageToMyDevices:(id)a3 completion:(id)a4;
- (void)sendIDSMessageToMyNearbyDevices:(id)a3 completion:(id)a4;
- (void)sendIDSMessageToPairedDevice:(id)a3 completion:(id)a4;
- (void)sendMadridMessage:(id)a3 associatedGUID:(id)a4 toConversation:(id)a5 summaryText:(id)a6 completion:(id)a7;
- (void)startSubscriptionOnNearbyDevicesChanged;
@end

@implementation SMMessagingService

- (id)effectivePairedDevice
{
  v2 = [(SMMessagingService *)self idsMessenger];
  v3 = [v2 effectivePairedDevice];

  return v3;
}

- (SMMessagingService)init
{
  v5.receiver = self;
  v5.super_class = SMMessagingService;
  v2 = [(RTNotifier *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RTService *)v2 setup];
  }

  return v3;
}

- (void)_setup
{
  v20 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    v4 = [SMIDSMessenger alloc];
    v5 = [(RTNotifier *)self queue];
    v6 = [(SMIDSMessenger *)v4 initWithQueue:v5];
    [(SMMessagingService *)self setIdsMessenger:v6];

    v7 = [(SMMessagingService *)self idsMessenger];
    [v7 setDelegate:self];

    v8 = [SMMadridMessenger alloc];
    v9 = [(RTNotifier *)self queue];
    v10 = [(SMMadridMessenger *)v8 initWithQueue:v9];
    [(SMMessagingService *)self setMadridMessenger:v10];

    v15 = [(SMMessagingService *)self madridMessenger];
    [v15 setDelegate:self];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = NSStringFromSelector(a2);
      *buf = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_2304B3000, v11, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,feature not enabled", buf, 0x16u);
    }
  }
}

- (void)findObjectForMyAccountFromDict:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__SMMessagingService_findObjectForMyAccountFromDict_withHandler___block_invoke;
  block[3] = &unk_2788C4500;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

void __65__SMMessagingService_findObjectForMyAccountFromDict_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) idsMessenger];
  [v2 findObjectForMyAccountFromDict:*(a1 + 40) withHandler:*(a1 + 48)];
}

- (NSUUID)deviceIdentifier
{
  v2 = objc_alloc(MEMORY[0x277CCAD78]);
  v3 = IDSCopyLocalDeviceUniqueID();
  v4 = [v2 initWithUUIDString:v3];

  return v4;
}

- (void)startSubscriptionOnNearbyDevicesChanged
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__SMMessagingService_startSubscriptionOnNearbyDevicesChanged__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_startSubscriptionOnNearbyDevicesChange
{
  v2 = [(SMMessagingService *)self idsMessenger];
  [v2 startSubscriptionOnNearbyDevicesChanged];
}

- (void)cancelSubscriptionOnNearbyDevicesChanged
{
  v3 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SMMessagingService_cancelSubscriptionOnNearbyDevicesChanged__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_cancelSubscriptionOnNearbyDevicesChange
{
  v2 = [(SMMessagingService *)self idsMessenger];
  [v2 cancelSubscriptionOnNearbyDevicesChanged];
}

- (void)sendIDSMessage:(id)a3 toConversation:(id)a4 completion:(id)a5
{
  v57[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_12:
    v15 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = NSStringFromSelector(a2);
      *buf = 138412546;
      v43 = v25;
      v44 = 2112;
      v45 = v26;
      _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,message is nil", buf, 0x16u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D01448];
    v56 = *MEMORY[0x277CCA450];
    v57[0] = @"message is nil";
    v18 = MEMORY[0x277CBEAC0];
    v19 = v57;
    v20 = &v56;
    goto LABEL_18;
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v43 = "[SMMessagingService sendIDSMessage:toConversation:completion:]";
    v44 = 1024;
    LODWORD(v45) = 209;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!v10)
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v27 = [v9 sessionID];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = NSStringFromSelector(a2);
      v31 = [v9 messageID];
      *buf = 138413058;
      v43 = v27;
      v44 = 2112;
      v45 = v29;
      v46 = 2112;
      v47 = v30;
      v48 = 2112;
      v49 = v31;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,conversation is nil", buf, 0x2Au);
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277D01448];
    v54 = *MEMORY[0x277CCA450];
    v55 = @"conversation is nil";
    v18 = MEMORY[0x277CBEAC0];
    v19 = &v55;
    v20 = &v54;
LABEL_18:
    v22 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
    v23 = [v16 errorWithDomain:v17 code:7 userInfo:v22];
    v11[2](v11, 0, v23);

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v32 = [v9 sessionID];
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = NSStringFromSelector(a2);
      v36 = [v9 messageID];
      v37 = [v10 receiverHandles];
      *buf = 138413571;
      v43 = v32;
      v44 = 2112;
      v45 = v34;
      v46 = 2112;
      v47 = v35;
      v48 = 2112;
      v49 = v36;
      v50 = 2112;
      v51 = v37;
      v52 = 2117;
      v53 = v9;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,handles:%@,messsage:%{sensitive}@", buf, 0x3Eu);
    }
  }

  v13 = [(RTNotifier *)self queue];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __63__SMMessagingService_sendIDSMessage_toConversation_completion___block_invoke;
  v38[3] = &unk_2788C5530;
  v38[4] = self;
  v39 = v9;
  v40 = v10;
  v41 = v11;
  dispatch_async(v13, v38);

LABEL_19:
}

void __63__SMMessagingService_sendIDSMessage_toConversation_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) idsMessenger];
  [v2 sendIDSMessage:*(a1 + 40) toConversation:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)sendIDSMessageToMyDevices:(id)a3 completion:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
LABEL_3:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v20 = [v7 sessionID];
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v23 = NSStringFromSelector(a2);
          v24 = [v7 messageID];
          *buf = 138413315;
          v29 = v20;
          v30 = 2112;
          v31 = v22;
          v32 = 2112;
          v33 = v23;
          v34 = 2112;
          v35 = v24;
          v36 = 2117;
          v37 = v7;
          _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,messsage:%{sensitive}@", buf, 0x34u);
        }
      }

      v10 = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__SMMessagingService_sendIDSMessageToMyDevices_completion___block_invoke;
      block[3] = &unk_2788C4500;
      block[4] = self;
      v26 = v7;
      v27 = v8;
      dispatch_async(v10, block);

      goto LABEL_14;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[SMMessagingService sendIDSMessageToMyDevices:completion:]";
      v30 = 1024;
      LODWORD(v31) = 242;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", buf, 0x12u);
    }

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    *buf = 138412546;
    v29 = v18;
    v30 = 2112;
    v31 = v19;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,message is nil", buf, 0x16u);
  }

  v13 = MEMORY[0x277CCA9B8];
  v14 = *MEMORY[0x277D01448];
  v38 = *MEMORY[0x277CCA450];
  v39[0] = @"message is nil";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v16 = [v13 errorWithDomain:v14 code:7 userInfo:v15];
  (*(v8 + 2))(v8, 0, v16);

LABEL_14:
}

void __59__SMMessagingService_sendIDSMessageToMyDevices_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) idsMessenger];
  [v2 sendIDSMessageToMyDevices:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)sendIDSMessageToPairedDevice:(id)a3 completion:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
LABEL_3:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v20 = [v7 sessionID];
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v23 = NSStringFromSelector(a2);
          v24 = [v7 messageID];
          *buf = 138413315;
          v29 = v20;
          v30 = 2112;
          v31 = v22;
          v32 = 2112;
          v33 = v23;
          v34 = 2112;
          v35 = v24;
          v36 = 2117;
          v37 = v7;
          _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,messsage:%{sensitive}@", buf, 0x34u);
        }
      }

      v10 = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__SMMessagingService_sendIDSMessageToPairedDevice_completion___block_invoke;
      block[3] = &unk_2788C4500;
      block[4] = self;
      v26 = v7;
      v27 = v8;
      dispatch_async(v10, block);

      goto LABEL_14;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[SMMessagingService sendIDSMessageToPairedDevice:completion:]";
      v30 = 1024;
      LODWORD(v31) = 265;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", buf, 0x12u);
    }

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    *buf = 138412546;
    v29 = v18;
    v30 = 2112;
    v31 = v19;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,message is nil", buf, 0x16u);
  }

  v13 = MEMORY[0x277CCA9B8];
  v14 = *MEMORY[0x277D01448];
  v38 = *MEMORY[0x277CCA450];
  v39[0] = @"message is nil";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v16 = [v13 errorWithDomain:v14 code:7 userInfo:v15];
  (*(v8 + 2))(v8, 0, v16);

LABEL_14:
}

void __62__SMMessagingService_sendIDSMessageToPairedDevice_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) idsMessenger];
  [v2 sendIDSMessageToPairedDevice:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)sendIDSMessageToMyNearbyDevices:(id)a3 completion:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (v7)
    {
LABEL_3:
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        v9 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v20 = [v7 sessionID];
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          v23 = NSStringFromSelector(a2);
          v24 = [v7 messageID];
          *buf = 138413315;
          v29 = v20;
          v30 = 2112;
          v31 = v22;
          v32 = 2112;
          v33 = v23;
          v34 = 2112;
          v35 = v24;
          v36 = 2117;
          v37 = v7;
          _os_log_debug_impl(&dword_2304B3000, v9, OS_LOG_TYPE_DEBUG, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,messsage:%{sensitive}@", buf, 0x34u);
        }
      }

      v10 = [(RTNotifier *)self queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__SMMessagingService_sendIDSMessageToMyNearbyDevices_completion___block_invoke;
      block[3] = &unk_2788C4500;
      block[4] = self;
      v26 = v7;
      v27 = v8;
      dispatch_async(v10, block);

      goto LABEL_14;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[SMMessagingService sendIDSMessageToMyNearbyDevices:completion:]";
      v30 = 1024;
      LODWORD(v31) = 288;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", buf, 0x12u);
    }

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v19 = NSStringFromSelector(a2);
    *buf = 138412546;
    v29 = v18;
    v30 = 2112;
    v31 = v19;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,message is nil", buf, 0x16u);
  }

  v13 = MEMORY[0x277CCA9B8];
  v14 = *MEMORY[0x277D01448];
  v38 = *MEMORY[0x277CCA450];
  v39[0] = @"message is nil";
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v16 = [v13 errorWithDomain:v14 code:7 userInfo:v15];
  (*(v8 + 2))(v8, 0, v16);

LABEL_14:
}

void __65__SMMessagingService_sendIDSMessageToMyNearbyDevices_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) idsMessenger];
  [v2 sendIDSMessageToMyNearbyDevices:*(a1 + 40) completion:*(a1 + 48)];
}

- (int64_t)convertRTPlatformToIDSDeviceType:(id)a3
{
  v4 = a3;
  v5 = [(SMMessagingService *)self idsMessenger];
  v6 = [objc_opt_class() convertRTPlatformToIDSDeviceType:v4];

  return v6;
}

- (void)iMessageSendFor:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6
{
  v7 = a5;
  v37 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v19 = NSStringFromSelector(a2);
        *buf = 138413570;
        v26 = v18;
        v27 = 2112;
        v28 = v19;
        v29 = 2112;
        v30 = v11;
        v31 = 2112;
        v32 = v12;
        v33 = 1024;
        v34 = v7;
        v35 = 2112;
        v36 = v13;
        _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "#SafetyCache,%@,%@,messsageUrl:%@,messageGUID:%@,success:%d,error:%@", buf, 0x3Au);
      }
    }

    v15 = [(RTNotifier *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__SMMessagingService_iMessageSendFor_guid_successful_withError___block_invoke;
    block[3] = &unk_2788CF9A8;
    block[4] = self;
    v21 = v11;
    v22 = v12;
    v24 = v7;
    v23 = v13;
    dispatch_async(v15, block);
  }

  else
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: messageUrl", buf, 2u);
    }
  }
}

void __64__SMMessagingService_iMessageSendFor_guid_successful_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) madridMessenger];
  [v2 iMessageSendFor:*(a1 + 40) guid:*(a1 + 48) successful:*(a1 + 64) withError:*(a1 + 56)];
}

- (void)iMessageScheduledSendScheduledFor:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6
{
  v7 = a5;
  v36 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!v11)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      goto LABEL_12;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: messageUrl";
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_11;
  }

  if (!v12)
  {
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v17 = "Invalid parameter not satisfying: messageGUID";
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(a2);
      *buf = 138413314;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v12;
      v32 = 1024;
      v33 = v7;
      v34 = 2112;
      v35 = v13;
      _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "#SafetyCache,%@,%@,messsageGUID:%@,success:%d,error:%@", buf, 0x30u);
    }
  }

  v15 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __82__SMMessagingService_iMessageScheduledSendScheduledFor_guid_successful_withError___block_invoke;
  block[3] = &unk_2788CF9A8;
  block[4] = self;
  v22 = v11;
  v23 = v12;
  v25 = v7;
  v24 = v13;
  dispatch_async(v15, block);

LABEL_12:
}

void __82__SMMessagingService_iMessageScheduledSendScheduledFor_guid_successful_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) madridMessenger];
  [v2 iMessageScheduledSendScheduledFor:*(a1 + 40) guid:*(a1 + 48) successful:*(a1 + 64) withError:*(a1 + 56)];
}

- (void)iMessageScheduledSendCancelFor:(id)a3 successful:(BOOL)a4 withError:(id)a5
{
  v6 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = NSStringFromSelector(a2);
        *buf = 138413314;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = v9;
        v27 = 1024;
        v28 = v6;
        v29 = 2112;
        v30 = v10;
        _os_log_debug_impl(&dword_2304B3000, v11, OS_LOG_TYPE_DEBUG, "#SafetyCache,%@,%@,messsageGUID:%@,success:%d,error:%@", buf, 0x30u);
      }
    }

    v12 = [(RTNotifier *)self queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__SMMessagingService_iMessageScheduledSendCancelFor_successful_withError___block_invoke;
    v17[3] = &unk_2788CC570;
    v17[4] = self;
    v18 = v9;
    v20 = v6;
    v19 = v10;
    dispatch_async(v12, v17);
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: messageGUID", buf, 2u);
    }
  }
}

void __74__SMMessagingService_iMessageScheduledSendCancelFor_successful_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) madridMessenger];
  [v2 iMessageScheduledSendCancelFor:*(a1 + 40) successful:*(a1 + 56) withError:*(a1 + 48)];
}

- (void)iMessageScheduledSendTriggeredFor:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(a2);
        *buf = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = v5;
        _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "#SafetyCache,%@,%@,messsageGUID:%@", buf, 0x20u);
      }
    }

    v7 = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__SMMessagingService_iMessageScheduledSendTriggeredFor___block_invoke;
    v12[3] = &unk_2788C4A70;
    v12[4] = self;
    v13 = v5;
    dispatch_async(v7, v12);
  }

  else
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: messageGUID", buf, 2u);
    }
  }
}

void __56__SMMessagingService_iMessageScheduledSendTriggeredFor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) madridMessenger];
  [v2 iMessageScheduledSendTriggeredFor:*(a1 + 40)];
}

- (void)iMessageReceived:(id)a3 fromHandle:(id)a4 fromMe:(BOOL)a5
{
  v5 = a5;
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      goto LABEL_12;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: messageUrl";
LABEL_14:
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_11;
  }

  if (!v10)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v15 = "Invalid parameter not satisfying: handle";
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      *buf = 138413314;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v11;
      v31 = 1024;
      v32 = v5;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "#SafetyCache,%@,%@,messsageUrl:%@,handle:%@,fromMe:%d", buf, 0x30u);
    }
  }

  v13 = [(RTNotifier *)self queue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__SMMessagingService_iMessageReceived_fromHandle_fromMe___block_invoke;
  v19[3] = &unk_2788CC570;
  v19[4] = self;
  v20 = v9;
  v21 = v11;
  v22 = v5;
  dispatch_async(v13, v19);

LABEL_12:
}

void __57__SMMessagingService_iMessageReceived_fromHandle_fromMe___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) madridMessenger];
  [v2 iMessageReceived:*(a1 + 40) fromHandle:*(a1 + 48) fromMe:*(a1 + 56)];
}

- (void)iMessageDeletedFor:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = NSStringFromSelector(a2);
        *buf = 138413058;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        v18 = 2048;
        v19 = [v5 count];
        v20 = 2112;
        v21 = v5;
        _os_log_impl(&dword_2304B3000, v6, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,numMessageUrls,%lu,messsageUrls:%@", buf, 0x2Au);
      }
    }

    v10 = [(RTNotifier *)self queue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __41__SMMessagingService_iMessageDeletedFor___block_invoke;
    v12[3] = &unk_2788C4A70;
    v12[4] = self;
    v13 = v5;
    dispatch_async(v10, v12);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: messageUrls", buf, 2u);
    }
  }
}

void __41__SMMessagingService_iMessageDeletedFor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) madridMessenger];
  [v2 iMessageDeletedFor:*(a1 + 40)];
}

- (void)iMessageConversationDeletedFor:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v7 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = NSStringFromSelector(a2);
        *buf = 138412802;
        v33 = v9;
        v34 = 2112;
        v35 = v10;
        v36 = 2112;
        v37 = v6;
        _os_log_impl(&dword_2304B3000, v7, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,recipients,%@", buf, 0x20u);
      }
    }

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      v16 = MEMORY[0x277CBEBF8];
      do
      {
        v17 = 0;
        do
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = [objc_alloc(MEMORY[0x277D4AAE8]) initWithPrimaryHandle:*(*(&v27 + 1) + 8 * v17) secondaryHandles:v16];
          [v11 addObject:v18];

          ++v17;
        }

        while (v14 != v17);
        v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v14);
    }

    v19 = objc_alloc(MEMORY[0x277D4AA98]);
    v20 = [v11 copy];
    v21 = [v19 initWithReceiverHandles:v20 identifier:0 displayName:0];

    v22 = [(RTNotifier *)self queue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __53__SMMessagingService_iMessageConversationDeletedFor___block_invoke;
    v24[3] = &unk_2788C4A70;
    v25 = v21;
    v26 = self;
    v23 = v21;
    dispatch_async(v22, v24);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: receiverHandles && receiverHandles.count", buf, 2u);
    }
  }
}

void __53__SMMessagingService_iMessageConversationDeletedFor___block_invoke(uint64_t a1)
{
  v2 = [[SMConversationDeletedNotification alloc] initWithConversation:*(a1 + 32)];
  [*(a1 + 40) postNotification:v2];
}

- (void)sendMadridMessage:(id)a3 associatedGUID:(id)a4 toConversation:(id)a5 summaryText:(id)a6 completion:(id)a7
{
  v67[1] = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v17)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_12:
    v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = NSStringFromSelector(a2);
      *buf = 138412546;
      v51 = v31;
      v52 = 2112;
      v53 = v32;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,message is nil", buf, 0x16u);
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277D01448];
    v66 = *MEMORY[0x277CCA450];
    v67[0] = @"message is nil";
    v24 = MEMORY[0x277CBEAC0];
    v25 = v67;
    v26 = &v66;
    goto LABEL_18;
  }

  v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v51 = "[SMMessagingService sendMadridMessage:associatedGUID:toConversation:summaryText:completion:]";
    v52 = 1024;
    LODWORD(v53) = 433;
    _os_log_error_impl(&dword_2304B3000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", buf, 0x12u);
  }

  if (!v13)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!v15)
  {
    v27 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v33 = [v13 sessionID];
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = NSStringFromSelector(a2);
      v37 = [v13 messageID];
      *buf = 138413058;
      v51 = v33;
      v52 = 2112;
      v53 = v35;
      v54 = 2112;
      v55 = v36;
      v56 = 2112;
      v57 = v37;
      _os_log_error_impl(&dword_2304B3000, v27, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,conversation is nil", buf, 0x2Au);
    }

    v22 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277D01448];
    v64 = *MEMORY[0x277CCA450];
    v65 = @"conversation is nil";
    v24 = MEMORY[0x277CBEAC0];
    v25 = &v65;
    v26 = &v64;
LABEL_18:
    v28 = [v24 dictionaryWithObjects:v25 forKeys:v26 count:1];
    v29 = [v22 errorWithDomain:v23 code:7 userInfo:v28];
    (*(v17 + 2))(v17, 0, 0, v29);

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v38 = [v13 sessionID];
      v39 = objc_opt_class();
      v43 = NSStringFromClass(v39);
      v40 = NSStringFromSelector(a2);
      v41 = [v13 messageID];
      *buf = 138413827;
      v51 = v38;
      v52 = 2112;
      v53 = v43;
      v54 = 2112;
      v55 = v40;
      v56 = 2112;
      v57 = v41;
      v42 = v41;
      v58 = 2112;
      v59 = v15;
      v60 = 2112;
      v61 = v14;
      v62 = 2117;
      v63 = v13;
      _os_log_debug_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEBUG, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,conversation:%@,associatedGUID:%@,messsage:%{sensitive}@", buf, 0x48u);
    }
  }

  v19 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__SMMessagingService_sendMadridMessage_associatedGUID_toConversation_summaryText_completion___block_invoke;
  block[3] = &unk_2788C5820;
  block[4] = self;
  v45 = v13;
  v46 = v14;
  v47 = v15;
  v48 = v16;
  v49 = v17;
  dispatch_async(v19, block);

LABEL_19:
}

void __93__SMMessagingService_sendMadridMessage_associatedGUID_toConversation_summaryText_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) madridMessenger];
  [v2 sendMadridMessage:*(a1 + 40) associatedGUID:*(a1 + 48) toConversation:*(a1 + 56) summaryText:*(a1 + 64) completion:*(a1 + 72)];
}

- (void)scheduleMadridMessageSendForMessage:(id)a3 messageGUID:(id)a4 associatedGUID:(id)a5 sendDate:(id)a6 toConversation:(id)a7 summaryText:(id)a8 completion:(id)a9
{
  v97[1] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (v22)
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_14:
    v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(a2);
      *buf = 138412546;
      v73 = v38;
      v74 = 2112;
      v75 = v39;
      _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,message is nil", buf, 0x16u);
    }

    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277D01448];
    v96 = *MEMORY[0x277CCA450];
    v97[0] = @"message is nil";
    v29 = MEMORY[0x277CBEAC0];
    v30 = v97;
    v31 = &v96;
    goto LABEL_26;
  }

  v25 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v73 = "[SMMessagingService scheduleMadridMessageSendForMessage:messageGUID:associatedGUID:sendDate:toConversation:summaryText:completion:]";
    v74 = 1024;
    LODWORD(v75) = 473;
    _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", buf, 0x12u);
  }

  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (!v17)
  {
    v32 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v60 = [v16 sessionID];
      v40 = objc_opt_class();
      v56 = NSStringFromClass(v40);
      v41 = NSStringFromSelector(a2);
      v42 = [v16 messageID];
      *buf = 138413058;
      v73 = v60;
      v74 = 2112;
      v75 = v56;
      v76 = 2112;
      v77 = v41;
      v78 = 2112;
      v79 = v42;
      v43 = v42;
      _os_log_error_impl(&dword_2304B3000, v32, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,messageGUID is nil", buf, 0x2Au);
    }

    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277D01448];
    v94 = *MEMORY[0x277CCA450];
    v95 = @"messageGUID is nil";
    v29 = MEMORY[0x277CBEAC0];
    v30 = &v95;
    v31 = &v94;
    goto LABEL_26;
  }

  if (!v20)
  {
    v33 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v61 = [v16 sessionID];
      v44 = objc_opt_class();
      v57 = NSStringFromClass(v44);
      v45 = NSStringFromSelector(a2);
      v46 = [v16 messageID];
      *buf = 138413058;
      v73 = v61;
      v74 = 2112;
      v75 = v57;
      v76 = 2112;
      v77 = v45;
      v78 = 2112;
      v79 = v46;
      v47 = v46;
      _os_log_error_impl(&dword_2304B3000, v33, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,conversation is nil", buf, 0x2Au);
    }

    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277D01448];
    v92 = *MEMORY[0x277CCA450];
    v93 = @"conversation is nil";
    v29 = MEMORY[0x277CBEAC0];
    v30 = &v93;
    v31 = &v92;
    goto LABEL_26;
  }

  if (!v19)
  {
    v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v62 = [v16 sessionID];
      v48 = objc_opt_class();
      v58 = NSStringFromClass(v48);
      v49 = NSStringFromSelector(a2);
      v50 = [v16 messageID];
      *buf = 138413058;
      v73 = v62;
      v74 = 2112;
      v75 = v58;
      v76 = 2112;
      v77 = v49;
      v78 = 2112;
      v79 = v50;
      v51 = v50;
      _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,sendDate is nil", buf, 0x2Au);
    }

    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277D01448];
    v90 = *MEMORY[0x277CCA450];
    v91 = @"sendDate is nil";
    v29 = MEMORY[0x277CBEAC0];
    v30 = &v91;
    v31 = &v90;
LABEL_26:
    v35 = [v29 dictionaryWithObjects:v30 forKeys:v31 count:1];
    v36 = [v27 errorWithDomain:v28 code:7 userInfo:v35];
    (*(v22 + 2))(v22, 0, 0, v36);

    goto LABEL_27;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v59 = [v16 sessionID];
      v52 = objc_opt_class();
      v63 = NSStringFromClass(v52);
      v55 = NSStringFromSelector(a2);
      v53 = [v16 messageID];
      v54 = [v19 stringFromDate];
      *buf = 138414339;
      v73 = v59;
      v74 = 2112;
      v75 = v63;
      v76 = 2112;
      v77 = v55;
      v78 = 2112;
      v79 = v53;
      v80 = 2112;
      v81 = v17;
      v82 = 2112;
      v83 = v54;
      v84 = 2112;
      v85 = v20;
      v86 = 2112;
      v87 = v18;
      v88 = 2117;
      v89 = v16;
      _os_log_debug_impl(&dword_2304B3000, v23, OS_LOG_TYPE_DEBUG, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,messageGUID:%@,sendDate:%@,conversation:%@,associatedGUID:%@,message:%{sensitive}@", buf, 0x5Cu);
    }
  }

  v24 = [(RTNotifier *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __132__SMMessagingService_scheduleMadridMessageSendForMessage_messageGUID_associatedGUID_sendDate_toConversation_summaryText_completion___block_invoke;
  block[3] = &unk_2788CF9D0;
  block[4] = self;
  v65 = v16;
  v66 = v17;
  v67 = v18;
  v68 = v19;
  v69 = v20;
  v70 = v21;
  v71 = v22;
  dispatch_async(v24, block);

LABEL_27:
}

void __132__SMMessagingService_scheduleMadridMessageSendForMessage_messageGUID_associatedGUID_sendDate_toConversation_summaryText_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) madridMessenger];
  [v2 scheduleMadridMessageSendForMessage:*(a1 + 40) messageGUID:*(a1 + 48) associatedGUID:*(a1 + 56) sendDate:*(a1 + 64) toConversation:*(a1 + 72) summaryText:*(a1 + 80) completion:*(a1 + 88)];
}

- (void)cancelMadridMessageSendForMessageGUID:(id)a3 toConversation:(id)a4 completion:(id)a5
{
  v52[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v42 = "[SMMessagingService cancelMadridMessageSendForMessageGUID:toConversation:completion:]";
      v43 = 1024;
      LODWORD(v44) = 529;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", buf, 0x12u);
    }

    if (v9)
    {
LABEL_3:
      if (v10)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(a2);
      *buf = 138412546;
      v42 = v15;
      v43 = 2112;
      v44 = v16;
      _os_log_impl(&dword_2304B3000, v13, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,nil messageGUID", buf, 0x16u);
    }
  }

  v17 = MEMORY[0x277CCA9B8];
  v18 = *MEMORY[0x277D01448];
  v51 = *MEMORY[0x277CCA450];
  v52[0] = @"messageGUID is nil";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v20 = [v17 errorWithDomain:v18 code:7 userInfo:v19];
  v11[2](v11, 0, v20);

  if (!v10)
  {
LABEL_13:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromSelector(a2);
        *buf = 138412546;
        v42 = v23;
        v43 = 2112;
        v44 = v24;
        _os_log_impl(&dword_2304B3000, v21, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,nil conversation", buf, 0x16u);
      }
    }

    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277D01448];
    v49 = *MEMORY[0x277CCA450];
    v50 = @"conversation is nil";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v28 = [v25 errorWithDomain:v26 code:7 userInfo:v27];
    v11[2](v11, 0, v28);
  }

LABEL_18:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v29 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = NSStringFromSelector(a2);
      *buf = 138413058;
      v42 = v35;
      v43 = 2112;
      v44 = v36;
      v45 = 2112;
      v46 = v9;
      v47 = 2112;
      v48 = v10;
      _os_log_debug_impl(&dword_2304B3000, v29, OS_LOG_TYPE_DEBUG, "#SafetyCache,%@,%@,messageGUID:%@,conversation:%@", buf, 0x2Au);
    }
  }

  v30 = [(RTNotifier *)self queue];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __86__SMMessagingService_cancelMadridMessageSendForMessageGUID_toConversation_completion___block_invoke;
  v37[3] = &unk_2788C5530;
  v37[4] = self;
  v38 = v9;
  v39 = v10;
  v40 = v11;
  v31 = v11;
  v32 = v10;
  v33 = v9;
  dispatch_async(v30, v37);
}

void __86__SMMessagingService_cancelMadridMessageSendForMessageGUID_toConversation_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) madridMessenger];
  [v2 cancelMadridMessageSendForMessageGUID:*(a1 + 40) toConversation:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)receivedSessionStartMessageSendResultWithMessage:(id)a3 guid:(id)a4 successful:(BOOL)a5 withError:(id)a6
{
  v7 = a5;
  v38 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!v11)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(&v15->super.super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v22) = 0;
    v16 = "Invalid parameter not satisfying: message";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, &v15->super.super, OS_LOG_TYPE_ERROR, v16, &v22, 2u);
    goto LABEL_11;
  }

  if (!v12)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(&v15->super.super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v22) = 0;
    v16 = "Invalid parameter not satisfying: guid";
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v11 sessionID];
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = NSStringFromSelector(a2);
      v21 = [v11 messageID];
      v22 = 138414083;
      v23 = v17;
      v24 = 2112;
      v25 = v19;
      v26 = 2112;
      v27 = v20;
      v28 = 2112;
      v29 = v21;
      v30 = 2112;
      v31 = v12;
      v32 = 1024;
      v33 = v7;
      v34 = 2112;
      v35 = v13;
      v36 = 2117;
      v37 = v11;
      _os_log_debug_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEBUG, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,received session start message send result,guid,%@,success,%d,error,%@,message,%{sensitive}@", &v22, 0x4Eu);
    }
  }

  v15 = [[SMSessionStartMessageSendResultNotification alloc] initWithSessionStartMessage:v11 messageGUID:v12 success:v7 error:v13];
  [(RTNotifier *)self postNotification:v15];
LABEL_11:
}

- (void)receivedMessage:(id)a3 fromHandle:(id)a4 fromMe:(BOOL)a5
{
  v5 = a5;
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (!v9)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(&v13->super.super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v20) = 0;
    v14 = "Invalid parameter not satisfying: message";
LABEL_13:
    _os_log_error_impl(&dword_2304B3000, &v13->super.super, OS_LOG_TYPE_ERROR, v14, &v20, 2u);
    goto LABEL_11;
  }

  if (!v10)
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(&v13->super.super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    LOWORD(v20) = 0;
    v14 = "Invalid parameter not satisfying: fromHandle";
    goto LABEL_13;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v15 = [v9 sessionID];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      v19 = [v9 messageID];
      v20 = 138413827;
      v21 = v15;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2112;
      v29 = v11;
      v30 = 1024;
      v31 = v5;
      v32 = 2117;
      v33 = v9;
      _os_log_debug_impl(&dword_2304B3000, v12, OS_LOG_TYPE_DEBUG, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,received message from handle %@,fromMe,%d,message,%{sensitive}@", &v20, 0x44u);
    }
  }

  v13 = [[SMMessageReceivedNotification alloc] initWithMessage:v9 fromHandle:v11 fromMe:v5];
  [(RTNotifier *)self postNotification:v13];
LABEL_11:
}

- (void)deletedMessage:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v6 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v8 = [v5 sessionID];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = NSStringFromSelector(a2);
        v12 = [v5 messageID];
        v13 = 138413314;
        v14 = v8;
        v15 = 2112;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        v21 = 2112;
        v22 = v5;
        _os_log_debug_impl(&dword_2304B3000, v6, OS_LOG_TYPE_DEBUG, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,deleted message,%@", &v13, 0x34u);
      }
    }

    v7 = [[SMMessageDeletedNotification alloc] initWithMessage:v5];
    [(RTNotifier *)self postNotification:v7];
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_2304B3000, &v7->super.super, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: message", &v13, 2u);
    }
  }
}

+ (BOOL)isCellularActivated
{
  v44[1] = *MEMORY[0x277D85DE8];
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v3 = dispatch_semaphore_create(0);
  v4 = dispatch_get_global_queue(2, 0);
  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __41__SMMessagingService_isCellularActivated__block_invoke;
  v32 = &unk_2788CCCB0;
  v34 = &v35;
  v5 = v3;
  v33 = v5;
  [SMInitiatorEligibility checkCellularEnabledWithQueue:v4 handler:&v29];

  v6 = v5;
  v7 = [MEMORY[0x277CBEAA8] now];
  v8 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v6, v8))
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    [v9 timeIntervalSinceDate:v7];
    v11 = v10;
    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_115];
    v14 = [MEMORY[0x277CCACC8] callStackSymbols];
    v15 = [v14 filteredArrayUsingPredicate:v13];
    v16 = [v15 firstObject];

    [v12 submitToCoreAnalytics:v16 type:1 duration:v11];
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2304B3000, v17, OS_LOG_TYPE_FAULT, "Semaphore wait timed out, we're hung!", buf, 2u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v44[0] = *MEMORY[0x277CCA450];
    *buf = @"semaphore wait timeout";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v44 count:1];
    v20 = [v18 errorWithDomain:*MEMORY[0x277D01448] code:15 userInfo:v19];

    if (v20)
    {
      v21 = v20;
    }
  }

  else
  {
    v20 = 0;
  }

  v22 = v20;
  if (v22)
  {
    v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = NSStringFromSelector(a2);
      *buf = 138412802;
      *&buf[4] = v27;
      v40 = 2112;
      v41 = v28;
      v42 = 2112;
      v43 = v22;
      _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,sema error,%@", buf, 0x20u);
    }
  }

  v24 = *(v36 + 24);

  _Block_object_dispose(&v35, 8);
  return v24 & 1;
}

intptr_t __41__SMMessagingService_isCellularActivated__block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

+ (BOOL)isStandalone
{
  v2 = objc_alloc(MEMORY[0x277D4AAB0]);
  v3 = dispatch_get_global_queue(2, 0);
  v4 = [v2 initWithQueue:v3];

  LOBYTE(v3) = [v4 isEffectivePairedDeviceNearby];
  return v3 ^ 1;
}

+ (void)submitCAMetricForMessageType:(unint64_t)a3 scheduledSend:(BOOL)a4 cancelationAttempt:(BOOL)a5 attemptNumber:(int64_t)a6 wasFinalAttempt:(BOOL)a7 timeToSendMessage:(double)a8 sendError:(id)a9 success:(BOOL)a10 numReceivers:(unint64_t)a11
{
  v12 = a7;
  v14 = a5;
  v15 = a4;
  v33 = a9;
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:a8];
  [v18 setValue:v19 forKey:@"timeToSendMessage"];

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
  [v18 setValue:v20 forKey:@"attemptNumber"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277D4AB38], "interfaceTypeFromMessageType:", a3)}];
  [v18 setValue:v21 forKey:@"interfaceType"];

  v22 = [MEMORY[0x277CCABB0] numberWithBool:v15];
  [v18 setValue:v22 forKey:@"isScheduledSend"];

  v23 = [MEMORY[0x277CCABB0] numberWithBool:v14];
  [v18 setValue:v23 forKey:@"isCancelationAttempt"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v18 setValue:v24 forKey:@"messageType"];

  if (v33)
  {
    v25 = MEMORY[0x277CCACA8];
    v26 = [v33 domain];
    v27 = [v25 stringWithFormat:@"%@:%d", v26, objc_msgSend(v33, "code")];
    [v18 setValue:v27 forKey:@"sendError"];
  }

  v28 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  [v18 setValue:v28 forKey:@"wasFinalAttempt"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:a10];
  [v18 setValue:v29 forKey:@"wasSuccessful"];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isCellularActivated")}];
  [v18 setValue:v30 forKey:@"isCellularActivated"];

  v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(a1, "isStandalone")}];
  [v18 setValue:v31 forKey:@"isStandalone"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a11];
  [v18 setValue:v32 forKey:@"numReceivers"];

  AnalyticsSendEvent();
}

@end