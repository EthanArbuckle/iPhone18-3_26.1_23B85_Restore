@interface RTTServer
+ (id)sharedInstance;
- (BOOL)contactIsTTYContact:(id)a3;
- (BOOL)deleteConversationWithCallUID:(id)a3;
- (BOOL)isEmergencyNumber:(id)a3;
- (RTTServer)init;
- (id)_createSandboxUrlForVoicemailMessage:(id)a3;
- (id)valueForTTYSetting:(id)a3;
- (void)_managerAXPIDState:(BOOL)a3;
- (void)_takeStackshot;
- (void)cancelCallPromptDisplay;
- (void)dealloc;
- (void)displayCallPromptForContact:(id)a3 withCompletion:(id)a4;
- (void)findConversationForCallUID:(id)a3 andResult:(id)a4;
- (void)handleMessageError:(id)a3 destructive:(BOOL)a4;
- (void)handleMessageWithPayload:(id)a3 forIdentifier:(unint64_t)a4;
- (void)primeRTTServer;
- (void)registerForRemoteUpdates:(id)a3 forCallUID:(id)a4;
- (void)registerForServiceUpdates:(id)a3 forCallUID:(id)a4;
- (void)registerForUpdates:(id)a3 forCallUID:(id)a4;
- (void)registerForUpdatesWithTranslation:(id)a3 forCallUID:(id)a4;
- (void)registerResponseBlock:(id)a3 forUUID:(id)a4;
- (void)resetConnection;
- (void)sendConversationUpdate:(id)a3;
- (void)sendMessageWithPayload:(id)a3 andIdentifier:(unint64_t)a4;
- (void)sendString:(id)a3 forCallUID:(id)a4;
- (void)sendTranscription:(id)a3 forCallUUID:(id)a4 isNew:(BOOL)a5;
- (void)shouldRestartOnInterruption:(id)a3;
- (void)terminateConnectionAndNotify:(BOOL)a3;
@end

@implementation RTTServer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[RTTServer sharedInstance];
  }

  v3 = sharedInstance_Server;

  return v3;
}

uint64_t __27__RTTServer_sharedInstance__block_invoke()
{
  sharedInstance_Server = objc_alloc_init(RTTServer);

  return MEMORY[0x2821F96F8]();
}

- (RTTServer)init
{
  v14.receiver = self;
  v14.super_class = RTTServer;
  v2 = [(HCServer *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    databaseResponseBlocks = v2->_databaseResponseBlocks;
    v2->_databaseResponseBlocks = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    dataResponseBlocksLock = v2->_dataResponseBlocksLock;
    v2->_dataResponseBlocksLock = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v8 = dispatch_queue_create("tty_common_queue", v7);
    commonRequestQueue = v2->_commonRequestQueue;
    v2->_commonRequestQueue = v8;

    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v11 = dispatch_queue_create("tty_msg_processing_queue", v10);
    messageProcessingQueue = v2->_messageProcessingQueue;
    v2->_messageProcessingQueue = v11;

    [(RTTServer *)v2 _registerForServerSettingsUpdates];
  }

  return v2;
}

- (void)dealloc
{
  [(RTTServer *)self setActionCompletionBlock:0];
  v3 = [(RTTServer *)self assertionInCallService];
  if (v3)
  {
    v4 = v3;
    v5 = [(RTTServer *)self assertionInCallService];
    v6 = [v5 isValid];

    if (v6)
    {
      v7 = [(RTTServer *)self assertionInCallService];
      [v7 invalidate];
    }
  }

  v8.receiver = self;
  v8.super_class = RTTServer;
  [(HCServer *)&v8 dealloc];
}

- (void)terminateConnectionAndNotify:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = RTTServer;
  [(HCServer *)&v7 terminateConnectionAndNotify:?];
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = v3;
    _os_log_impl(&dword_261754000, v4, OS_LOG_TYPE_INFO, "Terminate and notify about heard: %d", buf, 8u);
  }

  if (!v3)
  {
    v5 = +[RTTSettings sharedInstance];
    [v5 clearAllServerSettingsCache];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __46__RTTServer__registerForServerSettingsUpdates__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = v2;
    _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Received server settings update for %@", &v12, 0xCu);
  }

  v4 = +[RTTSettings sharedInstance];
  v5 = [v2 objectForKeyedSubscript:@"preferenceKey"];
  [v4 clearServerSettingsCacheForKey:v5];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = +[RTTSettings sharedInstance];
  v8 = +[RTTSettings sharedInstance];
  v9 = [v2 objectForKeyedSubscript:@"preferenceKey"];
  v10 = [v7 notificationForSelector:{objc_msgSend(v8, "selectorForPreferenceKey:", v9)}];
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v10, 0, 0, 1u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)resetConnection
{
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_261754000, v3, OS_LOG_TYPE_INFO, "Connection reset", buf, 2u);
  }

  v14.receiver = self;
  v14.super_class = RTTServer;
  [(HCServer *)&v14 resetConnection];
  [(NSLock *)self->_dataResponseBlocksLock lock];
  v4 = [MEMORY[0x277CBEB18] array];
  databaseResponseBlocks = self->_databaseResponseBlocks;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __28__RTTServer_resetConnection__block_invoke;
  v11 = &unk_279AE7B60;
  v12 = self;
  v13 = v4;
  v6 = v4;
  [(NSMutableDictionary *)databaseResponseBlocks enumerateKeysAndObjectsUsingBlock:&v8];
  [(NSMutableDictionary *)self->_databaseResponseBlocks removeObjectsForKeys:v6, v8, v9, v10, v11, v12];
  [(NSLock *)self->_dataResponseBlocksLock unlock];
  v7 = +[RTTSettings sharedInstance];
  [v7 clearAllServerSettingsCache];
}

void __28__RTTServer_resetConnection__block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 hasPrefix:@"axtty_conversation_updates"])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_", @"axtty_conversation_updates"];
    v5 = [v3 stringByReplacingOccurrencesOfString:v4 withString:&stru_2873FC590];

    v6 = *(a1 + 32);
    v11 = v5;
    v12 = @"axtty_conversation_updates";
    v10 = @"axtty_callID";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v13[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v6 sendMessageWithPayload:v8 andIdentifier:0x800000000];
  }

  if ([v3 hasPrefix:@"axtty_settings_key"])
  {
    [*(a1 + 40) addObject:v3];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_managerAXPIDState:(BOOL)a3
{
  v3 = a3;
  if (_AXSVoiceOverTouchEnabled() || _AXSAssistiveTouchScannerEnabled())
  {
    CFRunLoopRunInMode(*MEMORY[0x277CBF058], 0.25, 0);
  }

  v4 = getpid();
  if (v3)
  {

    MEMORY[0x282138FC0](v4, 0);
  }

  else
  {

    MEMORY[0x282138FC8](v4, 0);
  }
}

- (void)sendMessageWithPayload:(id)a3 andIdentifier:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 0x200000000000)
  {
    v7 = [(RTTServer *)self _createSandboxUrlForVoicemailMessage:v6];

    v6 = v7;
  }

  v8.receiver = self;
  v8.super_class = RTTServer;
  [(HCServer *)&v8 sendMessageWithPayload:v6 andIdentifier:a4];
}

- (void)handleMessageWithPayload:(id)a3 forIdentifier:(unint64_t)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4 > 0xFFFFFFFFFFLL)
  {
    if (a4 == 0x10000000000 || a4 == 0x20000000000)
    {
      goto LABEL_9;
    }

    v8 = 0x40000000000;
  }

  else
  {
    if (a4 == 0x800000000)
    {
LABEL_9:
      v9 = AXLogRTT();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v26) = a4;
        _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Handling message update: %d", buf, 8u);
      }

      messageProcessingQueue = self->_messageProcessingQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__RTTServer_handleMessageWithPayload_forIdentifier___block_invoke_55;
      block[3] = &unk_279AE7BB0;
      v16 = v7;
      v17 = self;
      v18 = a4;
      dispatch_async(messageProcessingQueue, block);
      v11 = v16;
LABEL_12:

      goto LABEL_13;
    }

    if (a4 == 0x1000000000)
    {
      v13 = [v6 valueForKey:@"result"];
      v14 = AXLogRTT();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26 = v7;
        _os_log_impl(&dword_261754000, v14, OS_LOG_TYPE_INFO, "Got result for action sheet: %@", buf, 0xCu);
      }

      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __52__RTTServer_handleMessageWithPayload_forIdentifier___block_invoke;
      v22 = &unk_279AE7760;
      v23 = v13;
      v24 = self;
      v11 = v13;
      AXPerformBlockAsynchronouslyOnMainThread();

      goto LABEL_12;
    }

    v8 = 0x4000000000;
  }

  if (a4 == v8)
  {
    goto LABEL_9;
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
}

void __52__RTTServer_handleMessageWithPayload_forIdentifier___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) actionCompletionBlock];

    if (v2)
    {
      [*(a1 + 40) _managerAXPIDState:0];
      v3 = [*(a1 + 40) actionCompletionBlock];
      v3[2](v3, [*(a1 + 32) unsignedIntegerValue]);

      v4 = *(a1 + 40);

      [v4 setActionCompletionBlock:0];
    }
  }
}

uint64_t __52__RTTServer_handleMessageWithPayload_forIdentifier___block_invoke_55(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__RTTServer_handleMessageWithPayload_forIdentifier___block_invoke_2;
  v6[3] = &unk_279AE7B88;
  v6[4] = *(a1 + 40);
  result = [v2 enumerateKeysAndObjectsUsingBlock:v6];
  if (*(a1 + 48) == 0x4000000000)
  {
    [*(*(a1 + 40) + 56) lock];
    v4 = *(*(a1 + 40) + 64);
    v5 = [*(a1 + 32) allKeys];
    [v4 removeObjectsForKeys:v5];

    return [*(*(a1 + 40) + 56) unlock];
  }

  return result;
}

void __52__RTTServer_handleMessageWithPayload_forIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(*(a1 + 32) + 56) lock];
  v7 = [*(*(a1 + 32) + 64) objectForKey:v5];
  v8 = [v7 copy];

  [*(*(a1 + 32) + 56) unlock];
  v9 = AXLogRTT();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = _Block_copy(v8);
    v12 = 138412546;
    v13 = v5;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Handling response for %@ with %@", &v12, 0x16u);
  }

  if (v8)
  {
    (v8)[2](v8, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleMessageError:(id)a3 destructive:(BOOL)a4
{
  v4 = a3;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [RTTServer handleMessageError:destructive:];
  }
}

- (void)shouldRestartOnInterruption:(id)a3
{
  v3 = MEMORY[0x277D12B60];
  v4 = a3;
  v4[2](v4, [v3 currentProcessIsInCallService]);
}

- (BOOL)isEmergencyNumber:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277D6EE28]) init];
  v5 = [v4 telephonyProvider];
  v6 = [v5 prioritizedSenderIdentities];

  v7 = [objc_alloc(MEMORY[0x277D6EF38]) init];
  if ([v6 count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v18 + 1) + 8 * i) UUID];
          v14 = [v7 isEmergencyNumberForDigits:v3 senderIdentityUUID:v13];

          if (v14)
          {

            goto LABEL_13;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_14;
  }

  if (([v7 isEmergencyNumberForDigits:v3 senderIdentityUUID:0] & 1) == 0)
  {
LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

LABEL_13:
  v15 = 1;
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)displayCallPromptForContact:(id)a3 withCompletion:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(RTTServer *)self isEmergencyNumber:v6])
  {
    if (+[RTTTelephonyUtilities isEmergencyRTTSupported](RTTTelephonyUtilities, "isEmergencyRTTSupported") || +[RTTTelephonyUtilities isTTYSupported])
    {
      v8 = AXLogRTT();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v6;
        _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_DEFAULT, "Contact matching emergency number, dialing through RTT immediately: %@", buf, 0xCu);
      }

      if (+[RTTTelephonyUtilities shouldUseRTT])
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      v7[2](v7, v9);
    }

    else
    {
      v29 = AXLogRTT();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v40 = v6;
        _os_log_impl(&dword_261754000, v29, OS_LOG_TYPE_DEFAULT, "Contact matching emergency number but emergency RTT isn't supported, dialing as voice call immediately: %@", buf, 0xCu);
      }

      v7[2](v7, 0);
    }
  }

  else
  {
    [(RTTServer *)self _managerAXPIDState:1];
    v10 = AXLogRTT();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v40 = v6;
      _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Display call prompt for %@", buf, 0xCu);
    }

    v11 = v6;
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = &stru_2873FC590;
    }

    objc_initWeak(&location, self);
    v13 = [(RTTServer *)self assertionInCallService];
    if (v13)
    {
      v14 = [(RTTServer *)self assertionInCallService];
      v15 = [v14 isValid];

      if (v15)
      {
        v16 = [(RTTServer *)self assertionInCallService];
        [v16 invalidate];
      }
    }

    v17 = [MEMORY[0x277D47008] targetWithPid:getpid()];
    v18 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.Accessibility" name:@"CallTypeSelection"];
    v19 = objc_alloc(MEMORY[0x277D46DB8]);
    v38 = v18;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    v21 = [v19 initWithExplanation:@"Prevent InCallService from sleeping to receive call type selection" target:v17 attributes:v20];
    [(RTTServer *)self setAssertionInCallService:v21];

    v22 = [(RTTServer *)self assertionInCallService];
    v34 = 0;
    v23 = [v22 acquireWithError:&v34];
    v24 = v34;

    if (v23)
    {
      v25 = AXLogRTT();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [(RTTServer *)self assertionInCallService];
        *buf = 138412290;
        v40 = v26;
        _os_log_impl(&dword_261754000, v25, OS_LOG_TYPE_INFO, "Took out assertion so that InCallService doesn't go to sleep on us: %@", buf, 0xCu);
      }
    }

    else
    {
      v27 = AXLogRTT();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [RTTServer displayCallPromptForContact:withCompletion:];
      }

      v25 = [(RTTServer *)self assertionInCallService];
      [v25 invalidate];
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __56__RTTServer_displayCallPromptForContact_withCompletion___block_invoke;
    v31[3] = &unk_279AE7BD8;
    v32 = v7;
    objc_copyWeak(&v33, &location);
    [(RTTServer *)self setActionCompletionBlock:v31];
    v36[0] = @"shouldShow";
    v36[1] = @"title";
    v37[0] = MEMORY[0x277CBEC38];
    v37[1] = v12;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    [(RTTServer *)self sendMessageWithPayload:v28 andIdentifier:0x1000000000];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __56__RTTServer_displayCallPromptForContact_withCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained assertionInCallService];
  [v2 invalidate];
}

- (void)cancelCallPromptDisplay
{
  [(RTTServer *)self _managerAXPIDState:0];

  [(RTTServer *)self sendMessageWithPayload:&unk_2873FFCD0 andIdentifier:0x1000000000];
}

- (void)registerResponseBlock:(id)a3 forUUID:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10 && [v6 length])
  {
    v7 = [v10 copy];
    [(NSLock *)self->_dataResponseBlocksLock lock];
    databaseResponseBlocks = self->_databaseResponseBlocks;
    v9 = _Block_copy(v7);
    [(NSMutableDictionary *)databaseResponseBlocks setObject:v9 forKey:v6];

    [(NSLock *)self->_dataResponseBlocksLock unlock];
  }
}

- (id)_createSandboxUrlForVoicemailMessage:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v3];
  v5 = [v3 objectForKey:@"axtty_voicemail_message_url"];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D6EF28]) initWithURL:v5 withExtensionType:0];
    v14 = 0;
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v14];
    v8 = v14;
    if (v8)
    {
      v9 = AXLogRTT();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [RTTServer _createSandboxUrlForVoicemailMessage:];
      }

      v10 = v3;
    }

    else
    {
      [v4 setValue:v7 forKey:@"axtty_voicemail_message_url"];
      v10 = v4;
    }

    v12 = v10;
  }

  else
  {
    v11 = AXLogRTT();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [RTTServer _createSandboxUrlForVoicemailMessage:];
    }

    v12 = v3;
  }

  return v12;
}

- (void)findConversationForCallUID:(id)a3 andResult:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 length];
  if (v7 && v8)
  {
    v9 = dispatch_get_global_queue(17, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__RTTServer_findConversationForCallUID_andResult___block_invoke;
    block[3] = &unk_279AE7C28;
    v11 = v6;
    v12 = self;
    v13 = v7;
    dispatch_async(v9, block);
  }
}

void __50__RTTServer_findConversationForCallUID_andResult___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"axtty_read_action", *(a1 + 32)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__RTTServer_findConversationForCallUID_andResult___block_invoke_2;
  v9[3] = &unk_279AE7C00;
  v3 = *(a1 + 40);
  v10 = *(a1 + 48);
  [v3 registerResponseBlock:v9 forUUID:v2];
  v13 = @"axtty_read_action";
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = @"axtty_callID";
  v12 = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v14[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [v5 sendMessageWithPayload:v7 andIdentifier:0x800000000];

  v8 = *MEMORY[0x277D85DE8];
}

void __50__RTTServer_findConversationForCallUID_andResult___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKey:@"axtty_conversation"];
  v5 = [MEMORY[0x277CBEB68] null];

  if (v4 == v5)
  {
    v11 = 0;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CCAAC8]);
    v7 = [v3 objectForKey:@"axtty_conversation"];
    v13 = 0;
    v8 = [v6 initForReadingFromData:v7 error:&v13];
    v9 = v13;

    if (v9)
    {
      v10 = AXLogRTT();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __50__RTTServer_findConversationForCallUID_andResult___block_invoke_2_cold_1();
      }

      v11 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
      v11 = [v8 decodeObjectOfClasses:v12 forKey:*MEMORY[0x277CCA308]];
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)sendString:(id)a3 forCallUID:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D12B60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentProcessIsRTTExternsion];
  v16 = @"axtty_conversation_updates";
  v14[0] = @"axtty_callID";
  v14[1] = @"axtty_value";
  v15[0] = v7;
  v15[1] = v8;
  v10 = &unk_2873FFDD0;
  if (!v9)
  {
    v10 = &unk_2873FFDE8;
  }

  v14[2] = @"axtty_sender_type";
  v14[3] = @"axtty_message_type";
  v15[2] = v10;
  v15[3] = &unk_2873FFDE8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];
  v17[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];

  [(RTTServer *)self sendMessageWithPayload:v12 andIdentifier:0x800000000];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendTranscription:(id)a3 forCallUUID:(id)a4 isNew:(BOOL)a5
{
  v5 = a5;
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277D12B60];
  v9 = a4;
  v10 = a3;
  v11 = [v8 currentProcessIsRTTExternsion];
  v19 = @"axtty_conversation_updates";
  v17[0] = @"axtty_callID";
  v17[1] = @"axtty_value";
  v18[0] = v9;
  v18[1] = v10;
  v12 = &unk_2873FFDE8;
  if (v11)
  {
    v12 = &unk_2873FFDD0;
  }

  v17[2] = @"axtty_sender_type";
  v17[3] = @"axtty_message_type";
  v13 = &unk_2873FFE00;
  if (v5)
  {
    v13 = &unk_2873FFDD0;
  }

  v18[2] = v12;
  v18[3] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v20[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

  [(RTTServer *)self sendMessageWithPayload:v15 andIdentifier:0x800000000];
  v16 = *MEMORY[0x277D85DE8];
}

- (void)sendConversationUpdate:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0;
  v5 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = AXLogRTT();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [RTTServer sendConversationUpdate:];
    }
  }

  else
  {
    v12 = v5;
    v13 = @"axtty_write_action";
    v11 = @"axtty_conversation";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [(RTTServer *)self sendMessageWithPayload:v8 andIdentifier:0x800000000];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)registerForUpdates:(id)a3 forCallUID:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"axtty_conversation_updates", v7];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__RTTServer_registerForUpdates_forCallUID___block_invoke;
    v12[3] = &unk_279AE7C00;
    v13 = v6;
    [(RTTServer *)self registerResponseBlock:v12 forUUID:v8];
    v15 = v7;
    v16 = @"axtty_conversation_updates";
    v14 = @"axtty_callID";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [(RTTServer *)self sendMessageWithPayload:v10 andIdentifier:0x800000000];
  }

  else
  {
    v8 = AXLogRTT();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RTTServer registerForUpdates:forCallUID:];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __43__RTTServer_registerForUpdates_forCallUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [v3 objectForKey:@"axtty_result"];
  v4 = [v3 objectForKey:@"axtty_value"];

  (*(*(a1 + 32) + 16))();
}

- (void)registerForUpdatesWithTranslation:(id)a3 forCallUID:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"axtty_conversation_updates", v7];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __58__RTTServer_registerForUpdatesWithTranslation_forCallUID___block_invoke;
    v12[3] = &unk_279AE7C00;
    v13 = v6;
    [(RTTServer *)self registerResponseBlock:v12 forUUID:v8];
    v15 = v7;
    v16 = @"axtty_conversation_updates";
    v14 = @"axtty_callID";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v17[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [(RTTServer *)self sendMessageWithPayload:v10 andIdentifier:0x800000000];
  }

  else
  {
    v8 = AXLogRTT();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RTTServer registerForUpdates:forCallUID:];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __58__RTTServer_registerForUpdatesWithTranslation_forCallUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 objectForKey:@"axtty_result"];
  v4 = [v3 objectForKey:@"axtty_value"];
  v5 = [v3 objectForKey:@"axtty_translated_message_text"];

  (*(*(a1 + 32) + 16))();
}

- (void)registerForRemoteUpdates:(id)a3 forCallUID:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"axtty_remote_conversation_updates", v7];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__RTTServer_registerForRemoteUpdates_forCallUID___block_invoke;
    v13[3] = &unk_279AE7C00;
    v14 = v6;
    [(RTTServer *)self registerResponseBlock:v13 forUUID:v8];
    v9 = AXLogRTT();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v7;
      _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Registered for remote updates for: %@", buf, 0xCu);
    }

    v16 = v7;
    v17 = @"axtty_remote_conversation_updates";
    v15 = @"axtty_callID";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v18 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    [(RTTServer *)self sendMessageWithPayload:v11 andIdentifier:0x10000000000];
  }

  else
  {
    v8 = AXLogRTT();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [RTTServer registerForUpdates:forCallUID:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __49__RTTServer_registerForRemoteUpdates_forCallUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 objectForKey:@"axtty_result"];
  v4 = [v3 objectForKey:@"axtty_value"];
  v5 = [v3 objectForKey:@"axtty_translated_message_text"];
  v6 = [v3 objectForKey:@"axtty_message_type"];

  [v6 integerValue];
  (*(*(a1 + 32) + 16))();
}

- (void)registerForServiceUpdates:(id)a3 forCallUID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", @"axtty_service_message_updates", v7];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__RTTServer_registerForServiceUpdates_forCallUID___block_invoke;
  v14[3] = &unk_279AE7C00;
  v15 = v6;
  v9 = v6;
  [(RTTServer *)self registerResponseBlock:v14 forUUID:v8];
  v10 = AXLogRTT();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v7;
    _os_log_impl(&dword_261754000, v10, OS_LOG_TYPE_INFO, "Registered for service updates for: %@", buf, 0xCu);
  }

  v17 = v7;
  v18 = @"axtty_service_message_updates";
  v16 = @"axtty_callID";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [(RTTServer *)self sendMessageWithPayload:v12 andIdentifier:0x20000000000];

  v13 = *MEMORY[0x277D85DE8];
}

void __50__RTTServer_registerForServiceUpdates_forCallUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 objectForKey:@"axtty_result"];
  v4 = [v3 objectForKey:@"axtty_value"];
  v5 = [v3 objectForKey:@"axtty_set_visible_service_update"];

  [v5 BOOLValue];
  (*(*(a1 + 32) + 16))();
}

- (BOOL)deleteConversationWithCallUID:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = @"axtty_delete_action";
  v10 = @"axtty_callID";
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  [(RTTServer *)self sendMessageWithPayload:v7 andIdentifier:0x800000000];
  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)contactIsTTYContact:(id)a3
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v5 = [v4 identifier];
  v6 = [v5 length];

  if (v6)
  {
    v7 = dispatch_semaphore_create(0);
    commonRequestQueue = self->_commonRequestQueue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __33__RTTServer_contactIsTTYContact___block_invoke;
    v13[3] = &unk_279AE7C78;
    v14 = v4;
    v15 = self;
    v16 = v7;
    v17 = &v18;
    v9 = v7;
    dispatch_async(commonRequestQueue, v13);
    v10 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v9, v10);
  }

  v11 = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __33__RTTServer_contactIsTTYContact___block_invoke(uint64_t a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277CBD098];
  v38[0] = *MEMORY[0x277CBD098];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
  LODWORD(v3) = [v3 areKeysAvailable:v5];

  if (v3)
  {
    v6 = [*(a1 + 32) phoneNumbers];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __33__RTTServer_contactIsTTYContact___block_invoke_2;
    v30[3] = &unk_279AE79C0;
    v7 = &v31;
    v31 = v2;
    [v6 enumerateObjectsUsingBlock:v30];
  }

  else
  {
    v6 = +[RTTTelephonyUtilities sharedUtilityProvider];
    v8 = [v6 contactStore];
    v9 = MEMORY[0x277CBDA58];
    v10 = [*(a1 + 32) identifier];
    v37 = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    v12 = [v9 predicateForContactsWithIdentifiers:v11];
    v36 = v4;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    v14 = [v8 unifiedContactsMatchingPredicate:v12 keysToFetch:v13 error:0];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __33__RTTServer_contactIsTTYContact___block_invoke_3;
    v28[3] = &unk_279AE79E8;
    v7 = &v29;
    v29 = v2;
    [v14 enumerateObjectsUsingBlock:v28];
  }

  if ([v2 count])
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [*(a1 + 32) identifier];
    v17 = [v15 stringWithFormat:@"%@_%@", @"axtty_contact_path_search_action", v16];

    v18 = *(a1 + 40);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __33__RTTServer_contactIsTTYContact___block_invoke_5;
    v26[3] = &unk_279AE7C50;
    v25 = *(a1 + 48);
    v19 = v25;
    v27 = v25;
    [v18 registerResponseBlock:v26 forUUID:v17];
    v34 = @"axtty_contact_path_search_action";
    v32[0] = @"axtty_contactID";
    v20 = *(a1 + 40);
    v21 = [*(a1 + 32) identifier];
    v32[1] = @"axtty_value";
    v33[0] = v21;
    v33[1] = v2;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v35 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
    [v20 sendMessageWithPayload:v23 andIdentifier:0x800000000];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __33__RTTServer_contactIsTTYContact___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 value];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

void __33__RTTServer_contactIsTTYContact___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 phoneNumbers];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__RTTServer_contactIsTTYContact___block_invoke_4;
  v4[3] = &unk_279AE79C0;
  v5 = *(a1 + 32);
  [v3 enumerateObjectsUsingBlock:v4];
}

void __33__RTTServer_contactIsTTYContact___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 value];
  v3 = [v4 stringValue];
  [v2 addObject:v3];
}

intptr_t __33__RTTServer_contactIsTTYContact___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"axtty_result"];
  *(*(*(a1 + 40) + 8) + 24) = [v3 BOOLValue];

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (id)valueForTTYSetting:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__1;
  v29 = __Block_byref_object_dispose__1;
  v30 = 0;
  if ([v4 length])
  {
    v5 = dispatch_get_current_queue();
    specific = dispatch_queue_get_specific(v5, &valueForTTYSetting__SemaphoreKey);
    if (specific)
    {
      v7 = specific;
    }

    else
    {
      v7 = dispatch_semaphore_create(0);
      dispatch_queue_set_specific(v5, &valueForTTYSetting__SemaphoreKey, v7, destructor);
      v8 = AXLogRTT();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v32 = v4;
        _os_log_impl(&dword_261754000, v8, OS_LOG_TYPE_INFO, "Making new semaphore for this request: %@", buf, 0xCu);
      }
    }

    v9 = AXLogRTT();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = v4;
      _os_log_impl(&dword_261754000, v9, OS_LOG_TYPE_INFO, "Requesting value remotely: %@", buf, 0xCu);
    }

    commonRequestQueue = self->_commonRequestQueue;
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __32__RTTServer_valueForTTYSetting___block_invoke;
    v20 = &unk_279AE7CC8;
    v21 = self;
    v24 = &v25;
    v22 = v4;
    v11 = v7;
    v23 = v11;
    dispatch_async(commonRequestQueue, &v17);
    v12 = dispatch_time(0, 3000000000);
    if (dispatch_semaphore_wait(v11, v12))
    {
      v13 = AXLogRTT();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [RTTServer valueForTTYSetting:];
      }

      dispatch_queue_set_specific(v5, &valueForTTYSetting__SemaphoreKey, 0, destructor);
      if ([MEMORY[0x277D12B60] isInternalInstall])
      {
        [(RTTServer *)self _takeStackshot];
      }
    }
  }

  v14 = v26[5];
  _Block_object_dispose(&v25, 8);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __32__RTTServer_valueForTTYSetting___block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%lld", @"axtty_settings_key", ++valueForTTYSetting__AtomicCount];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__RTTServer_valueForTTYSetting___block_invoke_2;
  v8[3] = &unk_279AE7CA0;
  v11 = *(a1 + 56);
  v3 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  [v3 registerResponseBlock:v8 forUUID:v2];
  v14[0] = @"axtty_uuid";
  v14[1] = @"axtty_settings_key";
  v4 = *(a1 + 40);
  v15[0] = v2;
  v15[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  v6 = AXLogRTT();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Dispatch requesting: %@", buf, 0xCu);
  }

  [*(a1 + 32) sendMessageWithPayload:v5 andIdentifier:0x4000000000];
  v7 = *MEMORY[0x277D85DE8];
}

void __32__RTTServer_valueForTTYSetting___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKey:@"axtty_result"];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = AXLogRTT();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v10 = 138412546;
    v11 = v8;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_261754000, v7, OS_LOG_TYPE_INFO, "Received remote RTT setting: %@={%@}", &v10, 0x16u);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_takeStackshot
{
  v2 = AXLogRTT();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_261754000, v2, OS_LOG_TYPE_INFO, "Writing out stackshot", v6, 2u);
  }

  v3 = _takeStackshot___gWriteStackshotReportFunction;
  if (_takeStackshot___gWriteStackshotReportFunction)
  {
    goto LABEL_7;
  }

  v4 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 1);
  if (v4)
  {
    v5 = v4;
    _takeStackshot___gWriteStackshotReportFunction = dlsym(v4, "WriteStackshotReport");
    dlclose(v5);
  }

  v3 = _takeStackshot___gWriteStackshotReportFunction;
  if (_takeStackshot___gWriteStackshotReportFunction)
  {
LABEL_7:
    v3(@"Timeout waiting for heard to respond", 3131746989);
  }
}

- (void)primeRTTServer
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"axtty_uuid";
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];
  v7[1] = @"axtty_settings_key";
  v8[0] = v4;
  v8[1] = kAXSRTTSettingsVersionPreference;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [(RTTServer *)self sendMessageWithPayload:v5 andIdentifier:0x4000000000];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)handleMessageError:destructive:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)displayCallPromptForContact:withCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_createSandboxUrlForVoicemailMessage:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_createSandboxUrlForVoicemailMessage:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__RTTServer_findConversationForCallUID_andResult___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)setViewControllerIsVisible:withCallID:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendConversationUpdate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_261754000, v1, OS_LOG_TYPE_ERROR, "Failed to archive RTTConversation %@ with error %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)registerForUpdates:forCallUID:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)valueForTTYSetting:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end