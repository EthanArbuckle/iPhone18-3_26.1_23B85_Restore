@interface SMIDSMessenger
+ (int64_t)convertRTPlatformToIDSDeviceType:(id)type;
- (SMIDSMessenger)initWithQueue:(id)queue;
- (SMMessagingServiceMessengerDelegate)delegate;
- (id)effectivePairedDevice;
- (id)myNearbyDestinationsFromDevices:(id)devices;
- (id)myNearbyDevices;
- (void)cancelSubscriptionOnNearbyDevicesChanged;
- (void)findObjectForMyAccountFromDict:(id)dict withHandler:(id)handler;
- (void)sendIDSMessage:(id)message toConversation:(id)conversation completion:(id)completion;
- (void)sendIDSMessageToMyDevices:(id)devices completion:(id)completion;
- (void)sendIDSMessageToMyNearbyDevices:(id)devices completion:(id)completion;
- (void)sendIDSMessageToPairedDevice:(id)device completion:(id)completion;
- (void)sendMessage:(id)message toDestinations:(id)destinations completion:(id)completion;
- (void)sendMessage:(id)message toDestinations:(id)destinations retryCount:(int64_t)count completion:(id)completion;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d;
- (void)service:(id)service nearbyDevicesChanged:(id)changed;
- (void)startSubscriptionOnNearbyDevicesChanged;
@end

@implementation SMIDSMessenger

- (id)effectivePairedDevice
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  ownAccountIDSService = [(SMIDSMessenger *)self ownAccountIDSService];
  devices = [ownAccountIDSService devices];

  v4 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 isDefaultPairedDevice] && objc_msgSend(v7, "relationship") == 1)
        {
          v4 = v7;
          goto LABEL_12;
        }
      }

      v4 = [devices countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v4;
}

- (SMIDSMessenger)initWithQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy)
  {
    v19.receiver = self;
    v19.super_class = SMIDSMessenger;
    v6 = [(SMIDSMessenger *)&v19 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_queue, queue);
      array = [MEMORY[0x277CBEB18] array];
      idsMessagesWaitingForAck = v7->_idsMessagesWaitingForAck;
      v7->_idsMessagesWaitingForAck = array;

      v10 = objc_alloc(MEMORY[0x277D18778]);
      v11 = [v10 initWithService:*MEMORY[0x277D4AD10]];
      idsService = v7->_idsService;
      v7->_idsService = v11;

      [(IDSService *)v7->_idsService addDelegate:v7 queue:v7->_queue];
      v13 = objc_alloc(MEMORY[0x277D18778]);
      v14 = [v13 initWithService:*MEMORY[0x277D4AD40]];
      ownAccountIDSService = v7->_ownAccountIDSService;
      v7->_ownAccountIDSService = v14;

      [v7->_ownAccountIDSService addDelegate:v7 queue:v7->_queue];
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: queue", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)startSubscriptionOnNearbyDevicesChanged
{
  queue = [(SMIDSMessenger *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SMIDSMessenger_startSubscriptionOnNearbyDevicesChanged__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)cancelSubscriptionOnNearbyDevicesChanged
{
  queue = [(SMIDSMessenger *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SMIDSMessenger_cancelSubscriptionOnNearbyDevicesChanged__block_invoke;
  block[3] = &unk_2788C4EA0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)sendIDSMessage:(id)message toConversation:(id)conversation completion:(id)completion
{
  v95[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  conversationCopy = conversation;
  completionCopy = completion;
  if (messageCopy)
  {
    if (conversationCopy)
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
      v80 = "[SMIDSMessenger sendIDSMessage:toConversation:completion:]";
      v81 = 1024;
      LODWORD(v82) = 159;
      _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: message (in %s:%d)", buf, 0x12u);
    }

    if (conversationCopy)
    {
LABEL_3:
      if (completionCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v80 = "[SMIDSMessenger sendIDSMessage:toConversation:completion:]";
    v81 = 1024;
    LODWORD(v82) = 160;
    _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: conversation (in %s:%d)", buf, 0x12u);
  }

  if (!completionCopy)
  {
LABEL_11:
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v80 = "[SMIDSMessenger sendIDSMessage:toConversation:completion:]";
      v81 = 1024;
      LODWORD(v82) = 161;
      _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_14:
  if ([MEMORY[0x277D4AB38] interfaceTypeFromMessageType:{objc_msgSend(objc_opt_class(), "messageType")}] != 2)
  {
    v41 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sessionID = [messageCopy sessionID];
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      v56 = NSStringFromSelector(a2);
      messageID = [messageCopy messageID];
      messageType = [objc_opt_class() messageType];
      *buf = 138413314;
      v80 = sessionID;
      v81 = 2112;
      v82 = v55;
      v83 = 2112;
      v84 = v56;
      v85 = 2112;
      v86 = messageID;
      v87 = 1024;
      LODWORD(v88) = messageType;
      _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,wrong SPI being used for message type:%d", buf, 0x30u);
    }

    v42 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277D01448];
    v94 = *MEMORY[0x277CCA450];
    v95[0] = @"wrong spi used for sending message over IDS";
    v44 = MEMORY[0x277CBEAC0];
    v45 = v95;
    v46 = &v94;
    goto LABEL_38;
  }

  idsService = [(SMIDSMessenger *)self idsService];

  if (!idsService)
  {
    v47 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      sessionID2 = [messageCopy sessionID];
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      v62 = NSStringFromSelector(a2);
      messageID2 = [messageCopy messageID];
      *buf = 138413058;
      v80 = sessionID2;
      v81 = 2112;
      v82 = v61;
      v83 = 2112;
      v84 = v62;
      v85 = 2112;
      v86 = messageID2;
      _os_log_error_impl(&dword_2304B3000, v47, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,IDSService unavailable", buf, 0x2Au);
    }

    v42 = MEMORY[0x277CCA9B8];
    v43 = *MEMORY[0x277D01448];
    v92 = *MEMORY[0x277CCA450];
    v93 = @"IDSService unavailable";
    v44 = MEMORY[0x277CBEAC0];
    v45 = &v93;
    v46 = &v92;
LABEL_38:
    v18 = [v44 dictionaryWithObjects:v45 forKeys:v46 count:1];
    v48 = [v42 errorWithDomain:v43 code:5 userInfo:v18];
    completionCopy[2](completionCopy, 0, v48);

    goto LABEL_39;
  }

  aSelector = a2;
  selfCopy = self;
  v72 = messageCopy;
  v16 = MEMORY[0x277CBEB58];
  receiverHandles = [conversationCopy receiverHandles];
  v18 = [v16 setWithCapacity:{objc_msgSend(receiverHandles, "count")}];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  receiverHandles2 = [conversationCopy receiverHandles];
  v20 = [receiverHandles2 countByEnumeratingWithState:&v73 objects:v91 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v74;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v74 != v22)
        {
          objc_enumerationMutation(receiverHandles2);
        }

        v24 = *(*(&v73 + 1) + 8 * i);
        v25 = MEMORY[0x277D4AAE8];
        primaryHandle = [v24 primaryHandle];
        v27 = [v25 getSMHandleTypeWithHandle:primaryHandle];

        if (v27 == 2)
        {
          primaryHandle2 = [v24 primaryHandle];
          v29 = MEMORY[0x23191AA00]();
        }

        else
        {
          if (v27 != 1)
          {
            continue;
          }

          primaryHandle2 = [v24 primaryHandle];
          v29 = IDSCopyIDForPhoneNumber();
        }

        v30 = v29;
        [v18 addObject:v29];
      }

      v21 = [receiverHandles2 countByEnumeratingWithState:&v73 objects:v91 count:16];
    }

    while (v21);
  }

  v31 = [v18 count];
  receiverHandles3 = [conversationCopy receiverHandles];
  v33 = [receiverHandles3 count];

  v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v35 = v34;
  if (v31 == v33)
  {
    messageCopy = v72;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      sessionID3 = [v72 sessionID];
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      v39 = NSStringFromSelector(aSelector);
      messageID3 = [v72 messageID];
      *buf = 138413314;
      v80 = sessionID3;
      v81 = 2112;
      v82 = v38;
      v83 = 2112;
      v84 = v39;
      v85 = 2112;
      v86 = messageID3;
      v87 = 2112;
      v88 = v18;
      _os_log_impl(&dword_2304B3000, v35, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,sending message to handles,%@", buf, 0x34u);
    }

    [(SMIDSMessenger *)selfCopy sendMessage:v72 toDestinations:v18 completion:completionCopy];
  }

  else
  {
    messageCopy = v72;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sessionID4 = [v72 sessionID];
      v65 = objc_opt_class();
      v66 = NSStringFromClass(v65);
      v67 = NSStringFromSelector(aSelector);
      messageID4 = [v72 messageID];
      receiverPrimaryHandles = [conversationCopy receiverPrimaryHandles];
      *buf = 138413570;
      v80 = sessionID4;
      v81 = 2112;
      v82 = v66;
      v83 = 2112;
      v84 = v67;
      v85 = 2112;
      v86 = messageID4;
      v87 = 2112;
      v88 = receiverPrimaryHandles;
      v89 = 2112;
      v90 = v18;
      _os_log_error_impl(&dword_2304B3000, v35, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,Invalid Handles %@,destinations %@", buf, 0x3Eu);
    }

    v49 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277D01448];
    v77 = *MEMORY[0x277CCA450];
    v78 = @"Invalid Handle";
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    v52 = [v49 errorWithDomain:v50 code:7 userInfo:v51];
    completionCopy[2](completionCopy, 0, v52);
  }

LABEL_39:
}

- (void)sendIDSMessageToMyDevices:(id)devices completion:(id)completion
{
  v75[1] = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  completionCopy = completion;
  v9 = completionCopy;
  if (devicesCopy)
  {
    if (completionCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v58 = 136315394;
    v59 = "[SMIDSMessenger sendIDSMessageToMyDevices:completion:]";
    v60 = 1024;
    LODWORD(v61) = 220;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: message (in %s:%d)", &v58, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v58 = 136315394;
      v59 = "[SMIDSMessenger sendIDSMessageToMyDevices:completion:]";
      v60 = 1024;
      LODWORD(v61) = 221;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", &v58, 0x12u);
    }
  }

LABEL_10:
  if ([MEMORY[0x277D4AB38] interfaceTypeFromMessageType:{objc_msgSend(objc_opt_class(), "messageType")}] != 3)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sessionID = [devicesCopy sessionID];
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = NSStringFromSelector(a2);
      messageID = [devicesCopy messageID];
      messageType = [objc_opt_class() messageType];
      v58 = 138413314;
      v59 = sessionID;
      v60 = 2112;
      v61 = v39;
      v62 = 2112;
      v63 = v40;
      v64 = 2112;
      v65 = messageID;
      v66 = 1024;
      LODWORD(v67) = messageType;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,wrong SPI being used for message type:%d", &v58, 0x30u);
    }

    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277D01448];
    v74 = *MEMORY[0x277CCA450];
    v75[0] = @"wrong spi used for sending message over IDS";
    v27 = MEMORY[0x277CBEAC0];
    v28 = v75;
    v29 = &v74;
    goto LABEL_23;
  }

  ownAccountIDSService = [(SMIDSMessenger *)self ownAccountIDSService];

  if (!ownAccountIDSService)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sessionID2 = [devicesCopy sessionID];
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = NSStringFromSelector(a2);
      messageID2 = [devicesCopy messageID];
      v58 = 138413058;
      v59 = sessionID2;
      v60 = 2112;
      v61 = v45;
      v62 = 2112;
      v63 = v46;
      v64 = 2112;
      v65 = messageID2;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,IDSService unavailable", &v58, 0x2Au);
    }

    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277D01448];
    v72 = *MEMORY[0x277CCA450];
    v73 = @"IDSService unavailable";
    v27 = MEMORY[0x277CBEAC0];
    v28 = &v73;
    v29 = &v72;
LABEL_23:
    firstRoutableInternetDestinationForSelf = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
    v15 = [v25 errorWithDomain:v26 code:5 userInfo:firstRoutableInternetDestinationForSelf];
    (v9)[2](v9, 0, v15);
    goto LABEL_31;
  }

  ownAccountIDSService2 = [(SMIDSMessenger *)self ownAccountIDSService];
  firstRoutableInternetDestinationForSelf = [ownAccountIDSService2 firstRoutableInternetDestinationForSelf];

  if (firstRoutableInternetDestinationForSelf)
  {
    v15 = IDSCopyAddressDestinationForDestination();
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v17 = v16;
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        sessionID3 = [devicesCopy sessionID];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        messageID3 = [devicesCopy messageID];
        v58 = 138413314;
        v59 = sessionID3;
        v60 = 2112;
        v61 = v20;
        v62 = 2112;
        v63 = v21;
        v64 = 2112;
        v65 = messageID3;
        v66 = 2112;
        v67 = v15;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,sending message to my devices,%@", &v58, 0x34u);
      }

      v23 = [MEMORY[0x277CBEB98] setWithObject:v15];
      [(SMIDSMessenger *)self sendMessage:devicesCopy toDestinations:v23 completion:v9];
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sessionID4 = [devicesCopy sessionID];
        v54 = objc_opt_class();
        v55 = NSStringFromClass(v54);
        v56 = NSStringFromSelector(a2);
        messageID4 = [devicesCopy messageID];
        v58 = 138413058;
        v59 = sessionID4;
        v60 = 2112;
        v61 = v55;
        v62 = 2112;
        v63 = v56;
        v64 = 2112;
        v65 = messageID4;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,null destination for self", &v58, 0x2Au);
      }

      v34 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277D01448];
      v68 = *MEMORY[0x277CCA450];
      v69 = @"null destination for self";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v36 = [v34 errorWithDomain:v35 code:7 userInfo:v23];
      (v9)[2](v9, 0, v36);

      v15 = 0;
    }
  }

  else
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sessionID5 = [devicesCopy sessionID];
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = NSStringFromSelector(a2);
      messageID5 = [devicesCopy messageID];
      v58 = 138413058;
      v59 = sessionID5;
      v60 = 2112;
      v61 = v50;
      v62 = 2112;
      v63 = v51;
      v64 = 2112;
      v65 = messageID5;
      _os_log_error_impl(&dword_2304B3000, v31, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,null routable destination for self", &v58, 0x2Au);
    }

    v32 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277D01448];
    v70 = *MEMORY[0x277CCA450];
    v71 = @"null routable destination for self";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v23 = [v32 errorWithDomain:v33 code:7 userInfo:v15];
    (v9)[2](v9, 0, v23);
  }

LABEL_31:
}

- (void)sendIDSMessageToPairedDevice:(id)device completion:(id)completion
{
  v75[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  completionCopy = completion;
  v9 = completionCopy;
  if (deviceCopy)
  {
    if (completionCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v58 = 136315394;
    v59 = "[SMIDSMessenger sendIDSMessageToPairedDevice:completion:]";
    v60 = 1024;
    LODWORD(v61) = 275;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: message (in %s:%d)", &v58, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v58 = 136315394;
      v59 = "[SMIDSMessenger sendIDSMessageToPairedDevice:completion:]";
      v60 = 1024;
      LODWORD(v61) = 276;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", &v58, 0x12u);
    }
  }

LABEL_10:
  if ([MEMORY[0x277D4AB38] interfaceTypeFromMessageType:{objc_msgSend(objc_opt_class(), "messageType")}] != 3)
  {
    v24 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sessionID = [deviceCopy sessionID];
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(a2);
      messageID = [deviceCopy messageID];
      messageType = [objc_opt_class() messageType];
      v58 = 138413314;
      v59 = sessionID;
      v60 = 2112;
      v61 = v44;
      v62 = 2112;
      v63 = v45;
      v64 = 2112;
      v65 = messageID;
      v66 = 1024;
      LODWORD(v67) = messageType;
      _os_log_error_impl(&dword_2304B3000, v24, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,wrong SPI being used for message type:%d", &v58, 0x30u);
    }

    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277D01448];
    v74 = *MEMORY[0x277CCA450];
    v75[0] = @"wrong spi used for sending message over IDS";
    v27 = MEMORY[0x277CBEAC0];
    v28 = v75;
    v29 = &v74;
    goto LABEL_23;
  }

  ownAccountIDSService = [(SMIDSMessenger *)self ownAccountIDSService];

  if (!ownAccountIDSService)
  {
    v30 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sessionID2 = [deviceCopy sessionID];
      v49 = objc_opt_class();
      v50 = NSStringFromClass(v49);
      v51 = NSStringFromSelector(a2);
      messageID2 = [deviceCopy messageID];
      v58 = 138413058;
      v59 = sessionID2;
      v60 = 2112;
      v61 = v50;
      v62 = 2112;
      v63 = v51;
      v64 = 2112;
      v65 = messageID2;
      _os_log_error_impl(&dword_2304B3000, v30, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,IDSService unavailable", &v58, 0x2Au);
    }

    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277D01448];
    v72 = *MEMORY[0x277CCA450];
    v73 = @"IDSService unavailable";
    v27 = MEMORY[0x277CBEAC0];
    v28 = &v73;
    v29 = &v72;
LABEL_23:
    v14 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
    destination = [v25 errorWithDomain:v26 code:5 userInfo:v14];
    (v9)[2](v9, 0, destination);
    goto LABEL_31;
  }

  effectivePairedDevice = [(SMIDSMessenger *)self effectivePairedDevice];
  v14 = effectivePairedDevice;
  if (effectivePairedDevice)
  {
    destination = [effectivePairedDevice destination];
    v16 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v17 = v16;
    if (destination)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        sessionID3 = [deviceCopy sessionID];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = NSStringFromSelector(a2);
        messageID3 = [deviceCopy messageID];
        v58 = 138413314;
        v59 = sessionID3;
        v60 = 2112;
        v61 = v20;
        v62 = 2112;
        v63 = v21;
        v64 = 2112;
        v65 = messageID3;
        v66 = 2112;
        v67 = destination;
        _os_log_impl(&dword_2304B3000, v17, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,sending message to paired device,%@", &v58, 0x34u);
      }

      v23 = [MEMORY[0x277CBEB98] setWithObject:destination];
      [(SMIDSMessenger *)self sendMessage:deviceCopy toDestinations:v23 completion:v9];
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sessionID4 = [deviceCopy sessionID];
        v54 = objc_opt_class();
        v55 = NSStringFromClass(v54);
        v56 = NSStringFromSelector(a2);
        messageID4 = [deviceCopy messageID];
        v58 = 138413058;
        v59 = sessionID4;
        v60 = 2112;
        v61 = v55;
        v62 = 2112;
        v63 = v56;
        v64 = 2112;
        v65 = messageID4;
        _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,pairedDevice does not have a destination", &v58, 0x2Au);
      }

      v39 = MEMORY[0x277CCA9B8];
      v40 = *MEMORY[0x277D01448];
      v68 = *MEMORY[0x277CCA450];
      v69 = @"pairedDevice does not have a destination";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
      v41 = [v39 errorWithDomain:v40 code:0 userInfo:v23];
      (v9)[2](v9, 0, v41);

      destination = 0;
    }
  }

  else
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      sessionID5 = [deviceCopy sessionID];
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = NSStringFromSelector(a2);
      messageID5 = [deviceCopy messageID];
      v58 = 138413058;
      v59 = sessionID5;
      v60 = 2112;
      v61 = v34;
      v62 = 2112;
      v63 = v35;
      v64 = 2112;
      v65 = messageID5;
      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,no effectivePairedDevice to send message", &v58, 0x2Au);
    }

    v37 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277D01448];
    v70 = *MEMORY[0x277CCA450];
    v71 = @"No effectivePairedDevice to send message";
    destination = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v23 = [v37 errorWithDomain:v38 code:5 userInfo:destination];
    (v9)[2](v9, 0, v23);
  }

LABEL_31:
}

- (void)sendIDSMessageToMyNearbyDevices:(id)devices completion:(id)completion
{
  v77 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  completionCopy = completion;
  v9 = completionCopy;
  if (devicesCopy)
  {
    if (completionCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v68 = "[SMIDSMessenger sendIDSMessageToMyNearbyDevices:completion:]";
    v69 = 1024;
    LODWORD(v70) = 329;
    _os_log_error_impl(&dword_2304B3000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: message (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v68 = "[SMIDSMessenger sendIDSMessageToMyNearbyDevices:completion:]";
      v69 = 1024;
      LODWORD(v70) = 330;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  if ([MEMORY[0x277D4AB38] interfaceTypeFromMessageType:{objc_msgSend(objc_opt_class(), "messageType")}] != 3)
  {
    v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sessionID = [devicesCopy sessionID];
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = NSStringFromSelector(a2);
      messageID = [devicesCopy messageID];
      messageType = [objc_opt_class() messageType];
      *buf = 138413314;
      v68 = sessionID;
      v69 = 2112;
      v70 = v45;
      v71 = 2112;
      v72 = v46;
      v73 = 2112;
      v74 = messageID;
      v75 = 1024;
      v76 = messageType;
      _os_log_error_impl(&dword_2304B3000, v25, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,wrong SPI being used for message type:%d", buf, 0x30u);
    }

    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277D01448];
    v65 = *MEMORY[0x277CCA450];
    v66 = @"wrong spi used for sending message over IDS";
    v28 = MEMORY[0x277CBEAC0];
    v29 = &v66;
    v30 = &v65;
    goto LABEL_28;
  }

  ownAccountIDSService = [(SMIDSMessenger *)self ownAccountIDSService];

  if (!ownAccountIDSService)
  {
    v39 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sessionID2 = [devicesCopy sessionID];
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      v52 = NSStringFromSelector(a2);
      messageID2 = [devicesCopy messageID];
      *buf = 138413058;
      v68 = sessionID2;
      v69 = 2112;
      v70 = v51;
      v71 = 2112;
      v72 = v52;
      v73 = 2112;
      v74 = messageID2;
      _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,IDSService unavailable", buf, 0x2Au);
    }

    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277D01448];
    v63 = *MEMORY[0x277CCA450];
    v64 = @"IDSService unavailable";
    v28 = MEMORY[0x277CBEAC0];
    v29 = &v64;
    v30 = &v63;
LABEL_28:
    v14 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:1];
    v15 = [v26 errorWithDomain:v27 code:5 userInfo:v14];
    (v9)[2](v9, 0, v15);
    goto LABEL_29;
  }

  myNearbyDevices = [(SMIDSMessenger *)self myNearbyDevices];
  v14 = myNearbyDevices;
  if (myNearbyDevices && [myNearbyDevices count])
  {
    v15 = [(SMIDSMessenger *)self myNearbyDestinationsFromDevices:v14];
    v16 = [v15 count];
    v17 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        sessionID3 = [devicesCopy sessionID];
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = NSStringFromSelector(a2);
        messageID3 = [devicesCopy messageID];
        *buf = 138413058;
        v68 = sessionID3;
        v69 = 2112;
        v70 = v21;
        v71 = 2112;
        v72 = v22;
        v73 = 2112;
        v74 = messageID3;
        _os_log_impl(&dword_2304B3000, v18, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,sending message to myNearbyDevices", buf, 0x2Au);
      }

      v24 = [MEMORY[0x277CBEB98] setWithArray:v15];
      [(SMIDSMessenger *)self sendMessage:devicesCopy toDestinations:v24 completion:v9];
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sessionID4 = [devicesCopy sessionID];
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        v57 = NSStringFromSelector(a2);
        messageID4 = [devicesCopy messageID];
        *buf = 138413058;
        v68 = sessionID4;
        v69 = 2112;
        v70 = v56;
        v71 = 2112;
        v72 = v57;
        v73 = 2112;
        v74 = messageID4;
        _os_log_error_impl(&dword_2304B3000, v18, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,myNearbyDevices do not have destinations", buf, 0x2Au);
      }

      v40 = MEMORY[0x277CCA9B8];
      v41 = *MEMORY[0x277D01448];
      v59 = *MEMORY[0x277CCA450];
      v60 = @"myNearbyDevices do not have destinations";
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v42 = [v40 errorWithDomain:v41 code:0 userInfo:v24];
      (v9)[2](v9, 0, v42);
    }
  }

  else
  {
    v31 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      sessionID5 = [devicesCopy sessionID];
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      v35 = NSStringFromSelector(a2);
      messageID5 = [devicesCopy messageID];
      *buf = 138413058;
      v68 = sessionID5;
      v69 = 2112;
      v70 = v34;
      v71 = 2112;
      v72 = v35;
      v73 = 2112;
      v74 = messageID5;
      _os_log_impl(&dword_2304B3000, v31, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,no nearby devices of mine to send a message", buf, 0x2Au);
    }

    v37 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277D01448];
    v61 = *MEMORY[0x277CCA450];
    v62 = @"No myNearbyDevices to send message";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v24 = [v37 errorWithDomain:v38 code:5 userInfo:v15];
    (v9)[2](v9, 0, v24);
  }

LABEL_29:
}

- (void)sendMessage:(id)message toDestinations:(id)destinations completion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  destinationsCopy = destinations;
  completionCopy = completion;
  if (messageCopy)
  {
    if (destinationsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[SMIDSMessenger sendMessage:toDestinations:completion:]";
      v16 = 1024;
      v17 = 385;
      _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: message (in %s:%d)", &v14, 0x12u);
    }

    if (destinationsCopy)
    {
LABEL_3:
      if (completionCopy)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v14 = 136315394;
    v15 = "[SMIDSMessenger sendMessage:toDestinations:completion:]";
    v16 = 1024;
    v17 = 386;
    _os_log_error_impl(&dword_2304B3000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinations (in %s:%d)", &v14, 0x12u);
  }

  if (!completionCopy)
  {
LABEL_11:
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "[SMIDSMessenger sendMessage:toDestinations:completion:]";
      v16 = 1024;
      v17 = 387;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", &v14, 0x12u);
    }
  }

LABEL_14:
  [(SMIDSMessenger *)self sendMessage:messageCopy toDestinations:destinationsCopy retryCount:2 completion:completionCopy];
}

- (void)sendMessage:(id)message toDestinations:(id)destinations retryCount:(int64_t)count completion:(id)completion
{
  v92[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  destinationsCopy = destinations;
  completionCopy = completion;
  if (messageCopy)
  {
    if (destinationsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v78 = "[SMIDSMessenger sendMessage:toDestinations:retryCount:completion:]";
      v79 = 1024;
      LODWORD(v80) = 401;
      _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: message (in %s:%d)", buf, 0x12u);
    }

    if (destinationsCopy)
    {
LABEL_3:
      if ((count & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v78 = "[SMIDSMessenger sendMessage:toDestinations:retryCount:completion:]";
    v79 = 1024;
    LODWORD(v80) = 402;
    _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: destinations (in %s:%d)", buf, 0x12u);
  }

  if ((count & 0x8000000000000000) == 0)
  {
LABEL_4:
    if (completionCopy)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v78 = "[SMIDSMessenger sendMessage:toDestinations:retryCount:completion:]";
    v79 = 1024;
    LODWORD(v80) = 403;
    _os_log_error_impl(&dword_2304B3000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: retryCount >= 0 (in %s:%d)", buf, 0x12u);
  }

  if (!completionCopy)
  {
LABEL_15:
    v16 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v78 = "[SMIDSMessenger sendMessage:toDestinations:retryCount:completion:]";
      v79 = 1024;
      LODWORD(v80) = 404;
      _os_log_error_impl(&dword_2304B3000, v16, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completion (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_18:
  v17 = [MEMORY[0x277D4AB38] interfaceTypeFromMessageType:{objc_msgSend(objc_opt_class(), "messageType")}];
  if (v17 == 3)
  {
    ownAccountIDSService = [(SMIDSMessenger *)self ownAccountIDSService];

    if (!ownAccountIDSService)
    {
      goto LABEL_27;
    }
  }

  else
  {
    idsService = [(SMIDSMessenger *)self idsService];
    if (!idsService)
    {
LABEL_27:
      v34 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        sessionID = [messageCopy sessionID];
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        v55 = NSStringFromSelector(a2);
        [messageCopy messageID];
        v57 = v56 = completionCopy;
        *buf = 138413058;
        v78 = sessionID;
        v79 = 2112;
        v80 = v54;
        v81 = 2112;
        v82 = v55;
        v83 = 2112;
        v84 = v57;
        _os_log_error_impl(&dword_2304B3000, v34, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,IDSService unavailable", buf, 0x2Au);

        completionCopy = v56;
      }

      v35 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277D01448];
      v91 = *MEMORY[0x277CCA450];
      v92[0] = @"IDSService unavailable";
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:&v91 count:1];
      outputToDictionary = [v35 errorWithDomain:v36 code:5 userInfo:v37];
      completionCopy[2](completionCopy, 0, outputToDictionary);
      goto LABEL_44;
    }
  }

  countCopy = count;
  v68 = completionCopy;
  v20 = destinationsCopy;
  date = [MEMORY[0x277CBEAA8] date];
  outputToDictionary = [messageCopy outputToDictionary];
  v89 = *MEMORY[0x277D185B0];
  v90 = MEMORY[0x277CBEC38];
  v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
  v22 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    sessionID2 = [messageCopy sessionID];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    v26 = NSStringFromSelector(a2);
    messageID = [messageCopy messageID];
    *buf = 138413571;
    v78 = sessionID2;
    v79 = 2112;
    v80 = v25;
    v81 = 2112;
    v82 = v26;
    v83 = 2112;
    v84 = messageID;
    v85 = 2112;
    v86 = v20;
    v87 = 2117;
    v88 = outputToDictionary;
    _os_log_impl(&dword_2304B3000, v22, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,sending message to %@,messageDict:%{sensitive}@", buf, 0x3Eu);
  }

  if (v17 == 3)
  {
    ownAccountIDSService2 = [(SMIDSMessenger *)self ownAccountIDSService];
    v29 = ownAccountIDSService2;
    v75 = 0;
    v76 = 0;
    v30 = &v76;
    v31 = &v75;
    v32 = &v76;
    v33 = &v75;
  }

  else
  {
    ownAccountIDSService2 = [(SMIDSMessenger *)self idsService];
    v29 = ownAccountIDSService2;
    v73 = 0;
    v74 = 0;
    v30 = &v74;
    v31 = &v73;
    v32 = &v74;
    v33 = &v73;
  }

  destinationsCopy = v20;
  v38 = [ownAccountIDSService2 sendMessage:outputToDictionary toDestinations:v20 priority:300 options:v72 identifier:v32 error:v33];
  v69 = *v30;
  v39 = *v31;

  v40 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  v41 = v40;
  if (!v38 || v39)
  {
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sessionID3 = [messageCopy sessionID];
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      v61 = NSStringFromSelector(a2);
      messageID2 = [messageCopy messageID];
      *buf = 138413314;
      v78 = sessionID3;
      v79 = 2112;
      v80 = v60;
      v81 = 2112;
      v82 = v61;
      v83 = 2112;
      v84 = messageID2;
      v85 = 2112;
      v86 = v39;
      _os_log_error_impl(&dword_2304B3000, v41, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,send failed with error:%@", buf, 0x34u);
    }

    completionCopy = v68;
    v68[2](v68, 0, v39);
    messageType = [objc_opt_class() messageType];
    v37 = date;
    [date timeIntervalSinceNow];
    LOBYTE(v66) = 0;
    +[SMMessagingService submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:](SMMessagingService, "submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:", messageType, 0, 0, 3 - countCopy, 1, v39, -v51, v66, [destinationsCopy count]);
    v47 = v69;
  }

  else
  {
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      sessionID4 = [messageCopy sessionID];
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      v45 = NSStringFromSelector(a2);
      messageID3 = [messageCopy messageID];
      *buf = 138413314;
      v78 = sessionID4;
      v79 = 2112;
      v80 = v44;
      v81 = 2112;
      v82 = v45;
      v83 = 2112;
      v84 = messageID3;
      v85 = 2112;
      v86 = v69;
      _os_log_impl(&dword_2304B3000, v41, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,message sent to IDS with identifier,%@", buf, 0x34u);

      destinationsCopy = v20;
    }

    completionCopy = v68;
    v47 = v69;
    v48 = [[SMIDSMessageWaitingForAck alloc] initWithIdentifier:v69 destinations:destinationsCopy message:messageCopy pendingRetryCount:countCopy messageSentDate:date callback:v68];
    if (v48)
    {
      idsMessagesWaitingForAck = [(SMIDSMessenger *)self idsMessagesWaitingForAck];
      [idsMessagesWaitingForAck addObject:v48];
    }

    else
    {
      idsMessagesWaitingForAck = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(idsMessagesWaitingForAck, OS_LOG_TYPE_FAULT))
      {
        v63 = objc_opt_class();
        v64 = NSStringFromClass(v63);
        v65 = NSStringFromSelector(a2);
        *buf = 138412546;
        v78 = v64;
        v79 = 2112;
        v80 = v65;
        _os_log_fault_impl(&dword_2304B3000, idsMessagesWaitingForAck, OS_LOG_TYPE_FAULT, "#SafetyCache,%@,%@,failed to create SMIDSMessageWaitingForAck", buf, 0x16u);

        v47 = v69;
      }
    }

    v37 = date;
  }

LABEL_44:
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  queue = [(SMIDSMessenger *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SMIDSMessenger_service_account_identifier_didSendWithSuccess_error___block_invoke;
  block[3] = &unk_2788C50C0;
  v17 = identifierCopy;
  selfCopy = self;
  successCopy = success;
  v19 = errorCopy;
  v20 = a2;
  v14 = errorCopy;
  v15 = identifierCopy;
  dispatch_async(queue, block);
}

void __70__SMIDSMessenger_service_account_identifier_didSendWithSuccess_error___block_invoke(uint64_t a1)
{
  v92 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v78 = 0;
    v79 = &v78;
    v80 = 0x2020000000;
    v81 = -1;
    v72 = 0;
    v73 = &v72;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__7;
    v76 = __Block_byref_object_dispose__7;
    v77 = 0;
    v2 = [*(a1 + 40) idsMessagesWaitingForAck];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __70__SMIDSMessenger_service_account_identifier_didSendWithSuccess_error___block_invoke_97;
    v68[3] = &unk_2788C5098;
    v69 = *(a1 + 32);
    v70 = &v78;
    v71 = &v72;
    [v2 enumerateObjectsUsingBlock:v68];

    if (v79[3] == -1)
    {
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = NSStringFromSelector(*(a1 + 56));
        v25 = *(a1 + 32);
        *buf = 138412802;
        v83 = v23;
        v84 = 2112;
        v85 = v24;
        v86 = 2112;
        v87 = v25;
        _os_log_error_impl(&dword_2304B3000, v14, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,message not found for identifier %@", buf, 0x20u);
      }
    }

    else
    {
      v3 = [*(a1 + 40) idsMessagesWaitingForAck];
      [v3 removeObjectAtIndex:v79[3]];

      if (*(a1 + 64) == 1)
      {
        v4 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = [v73[5] message];
          v6 = [v5 sessionID];
          v7 = objc_opt_class();
          v8 = NSStringFromClass(v7);
          v9 = NSStringFromSelector(*(a1 + 56));
          v10 = [v73[5] message];
          v11 = [v10 messageID];
          *buf = 138413058;
          v83 = v6;
          v84 = 2112;
          v85 = v8;
          v86 = 2112;
          v87 = v9;
          v88 = 2112;
          v89 = v11;
          _os_log_impl(&dword_2304B3000, v4, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,message send succeeded", buf, 0x2Au);
        }

        v12 = [v73[5] callback];
        v12[2](v12, 1, 0);

        v13 = [v73[5] pendingRetryCount];
        v14 = [v73[5] message];
        v15 = [objc_opt_class() messageType];
        v16 = [v73[5] pendingRetryCount];
        v17 = [v73[5] messageSentDate];
        [v17 timeIntervalSinceNow];
        v19 = v18;
        v20 = [v73[5] destinations];
        LOBYTE(v67) = 1;
        +[SMMessagingService submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:](SMMessagingService, "submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:", v15, 0, 0, 3 - v13, v16 == 0, 0, -v19, v67, [v20 count]);
      }

      else if ([v73[5] pendingRetryCount])
      {
        v26 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v50 = [v73[5] message];
          v51 = [v50 sessionID];
          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          v54 = NSStringFromSelector(*(a1 + 56));
          v55 = [v73[5] message];
          v56 = [v55 messageID];
          v57 = [v73[5] pendingRetryCount];
          v58 = *(a1 + 48);
          *buf = 138413570;
          v83 = v51;
          v84 = 2112;
          v85 = v53;
          v86 = 2112;
          v87 = v54;
          v88 = 2112;
          v89 = v56;
          v90 = 1024;
          *v91 = v57;
          *&v91[4] = 2112;
          *&v91[6] = v58;
          _os_log_error_impl(&dword_2304B3000, v26, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,message send failed with %d retries left with error %@", buf, 0x3Au);
        }

        v27 = *(a1 + 40);
        v28 = [v73[5] message];
        v29 = [v73[5] destinations];
        v30 = [v73[5] pendingRetryCount];
        v31 = [v73[5] callback];
        [v27 sendMessage:v28 toDestinations:v29 retryCount:v30 - 1 completion:v31];

        v14 = [v73[5] message];
        v32 = [objc_opt_class() messageType];
        v33 = [v73[5] pendingRetryCount];
        v34 = [v73[5] messageSentDate];
        [v34 timeIntervalSinceNow];
        v36 = v35;
        v37 = *(a1 + 48);
        v38 = [v73[5] destinations];
        LOBYTE(v67) = 0;
        +[SMMessagingService submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:](SMMessagingService, "submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:", v32, 0, 0, 3 - v33, 0, v37, -v36, v67, [v38 count]);
      }

      else
      {
        v39 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v59 = [v73[5] message];
          v60 = [v59 sessionID];
          v61 = objc_opt_class();
          v62 = NSStringFromClass(v61);
          v63 = NSStringFromSelector(*(a1 + 56));
          v64 = [v73[5] message];
          v65 = [v64 messageID];
          v66 = *(a1 + 48);
          *buf = 138413314;
          v83 = v60;
          v84 = 2112;
          v85 = v62;
          v86 = 2112;
          v87 = v63;
          v88 = 2112;
          v89 = v65;
          v90 = 2112;
          *v91 = v66;
          _os_log_error_impl(&dword_2304B3000, v39, OS_LOG_TYPE_ERROR, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,message send failed on last retry with error %@", buf, 0x34u);
        }

        v40 = [v73[5] callback];
        v40[2](v40, 0, *(a1 + 48));

        v14 = [v73[5] message];
        v41 = [objc_opt_class() messageType];
        v42 = [v73[5] messageSentDate];
        [v42 timeIntervalSinceNow];
        v44 = v43;
        v45 = *(a1 + 48);
        v46 = [v73[5] destinations];
        LOBYTE(v67) = 0;
        +[SMMessagingService submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:](SMMessagingService, "submitCAMetricForMessageType:scheduledSend:cancelationAttempt:attemptNumber:wasFinalAttempt:timeToSendMessage:sendError:success:numReceivers:", v41, 0, 0, 3, 1, v45, -v44, v67, [v46 count]);
      }
    }

    _Block_object_dispose(&v72, 8);
    _Block_object_dispose(&v78, 8);
  }

  else
  {
    v21 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v47 = objc_opt_class();
      v48 = NSStringFromClass(v47);
      v49 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v83 = v48;
      v84 = 2112;
      v85 = v49;
      _os_log_error_impl(&dword_2304B3000, v21, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,nil identifier", buf, 0x16u);
    }
  }
}

void __70__SMIDSMessenger_service_account_identifier_didSendWithSuccess_error___block_invoke_97(void *a1, void *a2, uint64_t a3, _BYTE *a4)
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

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d
{
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  v15 = dCopy;
  if (!messageCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_7:

      goto LABEL_8;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: messageDict";
LABEL_10:
    _os_log_error_impl(&dword_2304B3000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    goto LABEL_7;
  }

  if (!dCopy)
  {
    v17 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v18 = "Invalid parameter not satisfying: fromID";
    goto LABEL_10;
  }

  queue = [(SMIDSMessenger *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SMIDSMessenger_service_account_incomingMessage_fromID___block_invoke;
  block[3] = &unk_2788C50E8;
  block[4] = self;
  v20 = v15;
  v21 = messageCopy;
  v22 = serviceCopy;
  v23 = a2;
  dispatch_async(queue, block);

LABEL_8:
}

void __57__SMIDSMessenger_service_account_incomingMessage_fromID___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) idsService];
  v3 = [v2 deviceForFromID:*(a1 + 40)];

  v4 = IDSCopyRawAddressForDestination();
  v5 = [MEMORY[0x277D4AB38] messageTypeFromDict:*(a1 + 48)];
  v6 = [MEMORY[0x277D4AB38] interfaceTypeFromMessageType:v5];
  if (v3)
  {
    if (v6 != 3)
    {
      goto LABEL_11;
    }

    v7 = [*(a1 + 56) serviceIdentifier];
    v8 = v7;
    v9 = MEMORY[0x277D4AD40];
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_11;
    }

    v7 = [*(a1 + 56) serviceIdentifier];
    v8 = v7;
    v9 = MEMORY[0x277D4AD10];
  }

  v10 = [v7 isEqualToString:*v9];

  if (v10)
  {
    v11 = [MEMORY[0x277D4AB38] createMessageFromDict:*(a1 + 48)];
    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277D4AAE8]);
      v13 = [v12 initWithPrimaryHandle:v4 secondaryHandles:MEMORY[0x277CBEBF8]];
      v14 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v11 sessionID];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = NSStringFromSelector(*(a1 + 64));
        v19 = [v11 messageID];
        *buf = 138413827;
        v30 = v15;
        v31 = 2112;
        v32 = v17;
        v33 = 2112;
        *v34 = v18;
        *&v34[8] = 2112;
        v35 = v19;
        v36 = 2112;
        v37 = v4;
        v38 = 1024;
        v39 = v3 != 0;
        v40 = 2117;
        v41 = v11;
        _os_log_impl(&dword_2304B3000, v14, OS_LOG_TYPE_DEFAULT, "#SafetyCache,sessionID:%@,%@,%@,messageID:%@,received message from %@,fromMe,%d,message,%{sensitive}@", buf, 0x44u);
      }

      v20 = [*(a1 + 32) delegate];
      [v20 receivedMessage:v11 fromHandle:v13 fromMe:v3 != 0];
    }

    else
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = NSStringFromSelector(*(a1 + 64));
        v28 = *(a1 + 48);
        *buf = 138413059;
        v30 = v26;
        v31 = 2112;
        v32 = v27;
        v33 = 2112;
        *v34 = v4;
        *&v34[8] = 2117;
        v35 = v28;
        _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,received message from %@ could not be converted to SMMessage,messageDict,%{sensitive}@", buf, 0x2Au);
      }
    }

    goto LABEL_16;
  }

LABEL_11:
  v11 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v21 = v3 != 0;
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = NSStringFromSelector(*(a1 + 64));
    *buf = 138413058;
    v30 = v23;
    v31 = 2112;
    v32 = v24;
    v33 = 1024;
    *v34 = v5;
    *&v34[4] = 1024;
    *&v34[6] = v21;
    _os_log_error_impl(&dword_2304B3000, v11, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,received unexpected message type %d when fromMe:%d", buf, 0x22u);
  }

LABEL_16:
}

+ (int64_t)convertRTPlatformToIDSDeviceType:(id)type
{
  typeCopy = type;
  if ([typeCopy iPhoneDevice] && (objc_msgSend(typeCopy, "iPhonePlatform") & 1) != 0)
  {
    macOSPlatform = 2;
  }

  else if ([typeCopy watchPlatform])
  {
    macOSPlatform = 6;
  }

  else
  {
    macOSPlatform = [typeCopy macOSPlatform];
  }

  return macOSPlatform;
}

- (void)findObjectForMyAccountFromDict:(id)dict withHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  handlerCopy = handler;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  idsService = [(SMIDSMessenger *)self idsService];
  accounts = [idsService accounts];

  v11 = [accounts countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v41;
    v34 = *v41;
    v35 = handlerCopy;
    selfCopy = self;
    aSelector = a2;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(accounts);
        }

        v15 = *(*(&v40 + 1) + 8 * i);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        vettedAliases = [v15 vettedAliases];
        v17 = [vettedAliases countByEnumeratingWithState:&v36 objects:v52 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v37;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v37 != v19)
              {
                objc_enumerationMutation(vettedAliases);
              }

              v21 = *(*(&v36 + 1) + 8 * j);
              v22 = [dictCopy objectForKey:v21];
              if (v22)
              {
                v24 = v22;
                v25 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  v26 = objc_opt_class();
                  v27 = NSStringFromClass(v26);
                  v28 = NSStringFromSelector(aSelector);
                  *buf = 138413058;
                  v45 = v27;
                  v46 = 2112;
                  v47 = v28;
                  v48 = 2112;
                  v49 = v21;
                  v50 = 2112;
                  v51 = v24;
                  _os_log_impl(&dword_2304B3000, v25, OS_LOG_TYPE_DEFAULT, "#SafetyCache,%@,%@,found handle %@ in dict with object %@", buf, 0x2Au);
                }

                handlerCopy = v35;
                (*(v35 + 2))(v35, v21, v24);

                goto LABEL_22;
              }
            }

            v18 = [vettedAliases countByEnumeratingWithState:&v36 objects:v52 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        v13 = v34;
      }

      v12 = [accounts countByEnumeratingWithState:&v40 objects:v53 count:16];
      handlerCopy = v35;
      a2 = aSelector;
    }

    while (v12);
  }

  v23 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v31 = NSStringFromSelector(a2);
    *buf = 138412802;
    v45 = v30;
    v46 = 2112;
    v47 = v31;
    v48 = 2112;
    v49 = dictCopy;
    _os_log_error_impl(&dword_2304B3000, v23, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,did not find handle for this account in dict %@", buf, 0x20u);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
LABEL_22:
}

- (id)myNearbyDevices
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  ownAccountIDSService = [(SMIDSMessenger *)self ownAccountIDSService];
  devices = [ownAccountIDSService devices];

  v6 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(devices);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 relationship] == 1 && objc_msgSend(v10, "isNearby"))
        {
          [v3 addObject:v10];
        }
      }

      v7 = [devices countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v3;
}

- (id)myNearbyDestinationsFromDevices:(id)devices
{
  v32 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = devicesCopy;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    *&v7 = 138412802;
    v19 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        destination = [v11 destination];
        if (destination)
        {
          [v4 addObject:destination];
        }

        else
        {
          v13 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = objc_opt_class();
            v15 = NSStringFromClass(v14);
            v16 = NSStringFromSelector(a2);
            v17 = [v11 description];
            *buf = v19;
            v26 = v15;
            v27 = 2112;
            v28 = v16;
            v29 = 2112;
            v30 = v17;
            _os_log_error_impl(&dword_2304B3000, v13, OS_LOG_TYPE_ERROR, "#SafetyCache,%@,%@,my nearby device missing destination,device: %@", buf, 0x20u);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)service:(id)service nearbyDevicesChanged:(id)changed
{
  v22 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  effectivePairedDevice = [(SMIDSMessenger *)self effectivePairedDevice];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilitySafetyMonitor);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(a2);
      v14 = 138413058;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = effectivePairedDevice;
      v20 = 2112;
      v21 = changedCopy;
      _os_log_impl(&dword_2304B3000, v8, OS_LOG_TYPE_INFO, "#SafetyCache,%@,%@,effectivePairedDevice %@, devices %@", &v14, 0x2Au);
    }
  }

  if (effectivePairedDevice)
  {
    v12 = [[SMIDSMessengerNearbyEffectivePairedDeviceChangedNotification alloc] initWithIDSDevice:effectivePairedDevice];
    delegate = [(SMIDSMessenger *)self delegate];
    [delegate postNotification:v12];
  }
}

- (SMMessagingServiceMessengerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end