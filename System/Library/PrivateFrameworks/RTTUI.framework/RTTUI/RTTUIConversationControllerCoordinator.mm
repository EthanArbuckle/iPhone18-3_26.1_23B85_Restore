@interface RTTUIConversationControllerCoordinator
+ (id)sharedInstance;
- (BOOL)realtimeTextDidChange:(id)change forUtterance:(id)utterance lastRowPath:(id)path;
- (RTTUIConversationControllerCoordinator)init;
- (id)conversationControllerForCallUUID:(id)d;
- (id)recentMessageControllerForCallUUID:(id)d;
- (void)_registerForTranscriptionUpdatesForCall:(id)call;
- (void)_sendNewUtteranceString:(id)string atIndex:(unint64_t)index forCellPath:(id)path call:(id)call;
- (void)hearingServerDidDie:(id)die;
- (void)processCallScreeningTranscription:(id)transcription transcriptionID:(id)d callUUID:(id)iD;
- (void)processUtteranceQueue;
- (void)registerForCallUpdates:(id)updates;
- (void)sendNewUtteranceString:(id)string controller:(id)controller;
@end

@implementation RTTUIConversationControllerCoordinator

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__RTTUIConversationControllerCoordinator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_Coordinator;

  return v2;
}

uint64_t __56__RTTUIConversationControllerCoordinator_sharedInstance__block_invoke()
{
  sharedInstance_Coordinator = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (RTTUIConversationControllerCoordinator)init
{
  v18.receiver = self;
  v18.super_class = RTTUIConversationControllerCoordinator;
  v2 = [(RTTUIConversationControllerCoordinator *)&v18 init];
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v4 = dispatch_queue_create("rtt_send_queue", v3);
  utteranceRequestQueue = v2->_utteranceRequestQueue;
  v2->_utteranceRequestQueue = v4;

  v6 = [MEMORY[0x277CCAC18] pointerArrayWithOptions:5];
  conversationControllers = v2->_conversationControllers;
  v2->_conversationControllers = v6;

  v8 = [MEMORY[0x277CCAC18] pointerArrayWithOptions:5];
  recentMessageControllers = v2->_recentMessageControllers;
  v2->_recentMessageControllers = v8;

  array = [MEMORY[0x277CBEB18] array];
  utteranceBuffer = v2->_utteranceBuffer;
  v2->_utteranceBuffer = array;

  v12 = objc_alloc_init(MEMORY[0x277CCAAF8]);
  realtimeSendLock = v2->_realtimeSendLock;
  v2->_realtimeSendLock = v12;

  v14 = [MEMORY[0x277CBEB58] set];
  registeredCalls = v2->_registeredCalls;
  v2->_registeredCalls = v14;

  mEMORY[0x277D440C8] = [MEMORY[0x277D440C8] sharedInstance];
  [mEMORY[0x277D440C8] startServerWithDelegate:v2];

  return v2;
}

- (void)sendNewUtteranceString:(id)string controller:(id)controller
{
  v40 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  controllerCopy = controller;
  call = [controllerCopy call];
  v9 = AXLogRTT();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = stringCopy;
    _os_log_impl(&dword_261725000, v9, OS_LOG_TYPE_INFO, "Sending utterance |%@|", &buf, 0xCu);
  }

  if ([stringCopy length])
  {
    v10 = [stringCopy copy];
    v11 = MEMORY[0x277D440E8];
    currentContactPath = [controllerCopy currentContactPath];
    v13 = [v11 utteranceWithContactPath:currentContactPath andText:v10];
    v14 = [controllerCopy addUtterance:v13];

    v15 = [controllerCopy utteranceCellAtIndexPath:v14];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v36 = 0x3032000000;
    v37 = __Block_byref_object_copy_;
    v38 = __Block_byref_object_dispose_;
    utterance = [v15 utterance];
    text = [utterance text];
    v39 = [text copy];

    v18 = AXLogRTT();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      utterance2 = [v15 utterance];
      *v29 = 138412802;
      v30 = v15;
      v31 = 2112;
      v32 = v14;
      v33 = 2112;
      v34 = utterance2;
      _os_log_impl(&dword_261725000, v18, OS_LOG_TYPE_INFO, "Got cell %@[%@] with utterance %@", v29, 0x20u);
    }

    utteranceRequestQueue = self->_utteranceRequestQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__RTTUIConversationControllerCoordinator_sendNewUtteranceString_controller___block_invoke;
    block[3] = &unk_279AE4C98;
    v24 = v10;
    selfCopy = self;
    p_buf = &buf;
    v26 = v14;
    v27 = call;
    v21 = v14;
    v22 = v10;
    dispatch_async(utteranceRequestQueue, block);

    _Block_object_dispose(&buf, 8);
  }
}

uint64_t __76__RTTUIConversationControllerCoordinator_sendNewUtteranceString_controller___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (![*(*(*(a1 + 64) + 8) + 40) length])
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 32));
  }

  v2 = [*(*(*(a1 + 64) + 8) + 40) rangeOfString:*(a1 + 32) options:4];
  v4 = v3;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v12.location = v2;
    v12.length = v4;
    v6 = NSStringFromRange(v12);
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "Found range of existing utterance: %@", &v9, 0xCu);
  }

  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2;
  }

  return [*(a1 + 40) _sendNewUtteranceString:*(*(*(a1 + 64) + 8) + 40) atIndex:v7 forCellPath:*(a1 + 48) call:*(a1 + 56)];
}

- (id)conversationControllerForCallUUID:(id)d
{
  dCopy = d;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [RTTUIConversationControllerCoordinator conversationControllerForCallUUID:];
  }

  conversationControllers = [(RTTUIConversationControllerCoordinator *)self conversationControllers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__RTTUIConversationControllerCoordinator_conversationControllerForCallUUID___block_invoke;
  v10[3] = &unk_279AE4CC0;
  v11 = dCopy;
  v6 = dCopy;
  v7 = [conversationControllers ax_filteredArrayUsingBlock:v10];
  lastObject = [v7 lastObject];

  return lastObject;
}

uint64_t __76__RTTUIConversationControllerCoordinator_conversationControllerForCallUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 call];
  v4 = [v3 callUUID];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (id)recentMessageControllerForCallUUID:(id)d
{
  dCopy = d;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [RTTUIConversationControllerCoordinator recentMessageControllerForCallUUID:];
  }

  recentMessageControllers = [(RTTUIConversationControllerCoordinator *)self recentMessageControllers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __77__RTTUIConversationControllerCoordinator_recentMessageControllerForCallUUID___block_invoke;
  v10[3] = &unk_279AE4CE8;
  v11 = dCopy;
  v6 = dCopy;
  v7 = [recentMessageControllers ax_filteredArrayUsingBlock:v10];
  lastObject = [v7 lastObject];

  return lastObject;
}

uint64_t __77__RTTUIConversationControllerCoordinator_recentMessageControllerForCallUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 call];
  v4 = [v3 callUUID];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

- (void)registerForCallUpdates:(id)updates
{
  v31 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  if (![(NSMutableSet *)self->_registeredCalls containsObject:updatesCopy])
  {
    [(NSMutableSet *)self->_registeredCalls addObject:updatesCopy];
    mEMORY[0x277D440C8] = [MEMORY[0x277D440C8] sharedInstance];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__RTTUIConversationControllerCoordinator_registerForCallUpdates___block_invoke;
    v21[3] = &unk_279AE4D38;
    v21[4] = self;
    v7 = updatesCopy;
    v22 = v7;
    [mEMORY[0x277D440C8] registerForUpdatesWithTranslation:v21 forCallUID:v7];

    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v8 = getAXProcessIsInCallServiceSymbolLoc_ptr;
    v26 = getAXProcessIsInCallServiceSymbolLoc_ptr;
    if (!getAXProcessIsInCallServiceSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v28 = __getAXProcessIsInCallServiceSymbolLoc_block_invoke;
      v29 = &unk_279AE4F10;
      v30 = &v23;
      v9 = AccessibilityUtilitiesLibrary();
      v10 = dlsym(v9, "AXProcessIsInCallService");
      *(v30[1] + 24) = v10;
      getAXProcessIsInCallServiceSymbolLoc_ptr = *(v30[1] + 24);
      v8 = v24[3];
    }

    _Block_object_dispose(&v23, 8);
    if (v8)
    {
      if (v8())
      {
        mEMORY[0x277D440C8]2 = [MEMORY[0x277D440C8] sharedInstance];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __65__RTTUIConversationControllerCoordinator_registerForCallUpdates___block_invoke_53;
        v19[3] = &unk_279AE4D88;
        v19[4] = self;
        v20 = v7;
        [mEMORY[0x277D440C8]2 registerForRemoteUpdates:v19 forCallUID:v20];

LABEL_18:
        mEMORY[0x277D440C8]3 = [MEMORY[0x277D440C8] sharedInstance];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __65__RTTUIConversationControllerCoordinator_registerForCallUpdates___block_invoke_56;
        v17[3] = &unk_279AE4DD8;
        v17[4] = self;
        v18 = v7;
        [mEMORY[0x277D440C8]3 registerForServiceUpdates:v17 forCallUID:v18];

        goto LABEL_19;
      }

      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v12 = getAXProcessIsRTTNotificationContentExtensionSymbolLoc_ptr;
      v26 = getAXProcessIsRTTNotificationContentExtensionSymbolLoc_ptr;
      if (!getAXProcessIsRTTNotificationContentExtensionSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v28 = __getAXProcessIsRTTNotificationContentExtensionSymbolLoc_block_invoke;
        v29 = &unk_279AE4F10;
        v30 = &v23;
        v13 = AccessibilityUtilitiesLibrary();
        v14 = dlsym(v13, "AXProcessIsRTTNotificationContentExtension");
        *(v30[1] + 24) = v14;
        getAXProcessIsRTTNotificationContentExtensionSymbolLoc_ptr = *(v30[1] + 24);
        v12 = v24[3];
      }

      _Block_object_dispose(&v23, 8);
      if (v12)
      {
        if (v12())
        {
          [(RTTUIConversationControllerCoordinator *)self _registerForTranscriptionUpdatesForCall:v7];
        }

        else
        {
          v15 = AXLogRTT();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_261725000, v15, OS_LOG_TYPE_INFO, "Not registering for remote updates", &buf, 2u);
          }
        }

        goto LABEL_18;
      }
    }

    [RTTUIConversationControllerCoordinator registerForCallUpdates:];
    __break(1u);
  }

  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = updatesCopy;
    _os_log_impl(&dword_261725000, v5, OS_LOG_TYPE_INFO, "Already registered to listen for updates from %@", &buf, 0xCu);
  }

LABEL_19:
}

void __65__RTTUIConversationControllerCoordinator_registerForCallUpdates___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13 = *(a1 + 40);
  v14 = v7;
  v15 = v9;
  v16 = v8;
  v10 = v8;
  v11 = v9;
  v12 = v7;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void __65__RTTUIConversationControllerCoordinator_registerForCallUpdates___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) conversationControllerForCallUUID:*(a1 + 40)];
  v3 = [*(a1 + 32) recentMessageControllerForCallUUID:*(a1 + 40)];
  [v3 deviceDidReceiveString:*(a1 + 48) forUtterance:*(a1 + 56)];
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v2;
    _os_log_impl(&dword_261725000, v4, OS_LOG_TYPE_INFO, "Got local update callback: %@ %@ for %@", &v9, 0x20u);
  }

  v7 = [*(a1 + 64) length];
  v8 = *(a1 + 56);
  if (v7)
  {
    [v2 deviceDidReceiveTranslation:*(a1 + 64) forUtterance:v8];
  }

  else
  {
    [v2 deviceDidReceiveString:*(a1 + 48) forUtterance:v8];
  }
}

void __65__RTTUIConversationControllerCoordinator_registerForCallUpdates___block_invoke_53(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v13 = *(a1 + 40);
  v14 = v7;
  v15 = v9;
  v10 = v9;
  v11 = v8;
  v12 = v7;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void __65__RTTUIConversationControllerCoordinator_registerForCallUpdates___block_invoke_2_54(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) conversationControllerForCallUUID:*(a1 + 40)];
  v3 = [*(a1 + 32) recentMessageControllerForCallUUID:*(a1 + 40)];
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    v25 = 138413058;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    v29 = 2112;
    v30 = v2;
    v31 = 2112;
    v32 = v3;
    _os_log_impl(&dword_261725000, v4, OS_LOG_TYPE_INFO, "Got remote update callback: %@ %@ for vc %@, %@", &v25, 0x2Au);
  }

  v7 = *(a1 + 72);
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      v18 = MEMORY[0x277D440E8];
      v19 = [v2 currentContactPath];
      v20 = [v18 utteranceWithContactPath:v19 andText:*(a1 + 48)];
      v21 = [v2 addUtterance:v20];

      v22 = MEMORY[0x277D440E8];
      v23 = [v3 currentContactPath];
      v24 = [v22 utteranceWithContactPath:v23 andText:*(a1 + 48)];
      [v3 addUtterance:v24];

      goto LABEL_16;
    }

    if (v7 != 2)
    {
      goto LABEL_16;
    }

    v12 = [v2 addTranscriptionText:*(a1 + 56) isNew:1];
    v13 = *(a1 + 56);
    v14 = v3;
    v15 = 1;
LABEL_12:
    [v14 addTranscriptionText:v13 isNew:v15];
    goto LABEL_16;
  }

  switch(v7)
  {
    case 3:
      v16 = [v2 addTranscriptionText:*(a1 + 56) isNew:0];
      v13 = *(a1 + 56);
      v14 = v3;
      v15 = 0;
      goto LABEL_12;
    case 7:
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      v10 = v2;
      v11 = 1;
      goto LABEL_14;
    case 8:
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      v10 = v2;
      v11 = 0;
LABEL_14:
      v17 = [v10 addTranslatedTranscriptionText:v8 translatedText:v9 isNew:v11];
      break;
  }

LABEL_16:
}

void __65__RTTUIConversationControllerCoordinator_registerForCallUpdates___block_invoke_56(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = *(a1 + 40);
  v10 = v6;
  v7 = v6;
  v8 = v5;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void __65__RTTUIConversationControllerCoordinator_registerForCallUpdates___block_invoke_2_57(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) conversationControllerForCallUUID:*(a1 + 40)];
  v3 = *(a1 + 64);
  v4 = AXLogRTT();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = *(a1 + 48);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v2;
      _os_log_impl(&dword_261725000, v4, OS_LOG_TYPE_INFO, "Adding service update %@ for vc: %@", &v8, 0x16u);
    }

    [v2 addServiceCellWithUpdate:*(a1 + 48) options:*(a1 + 56)];
  }

  else
  {
    if (v5)
    {
      v7 = *(a1 + 48);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v2;
      _os_log_impl(&dword_261725000, v4, OS_LOG_TYPE_INFO, "Removing service update %@ for vc: %@", &v8, 0x16u);
    }

    [v2 removeServiceCellWithUpdate:*(a1 + 48)];
  }
}

- (BOOL)realtimeTextDidChange:(id)change forUtterance:(id)utterance lastRowPath:(id)path
{
  v52 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  utteranceCopy = utterance;
  pathCopy = path;
  call = [changeCopy call];
  tryLock = [(NSLock *)self->_realtimeSendLock tryLock];
  if (tryLock)
  {
    if ([utteranceCopy isMe] && (objc_msgSend(utteranceCopy, "hasTimedOut") & 1) == 0)
    {
      text = [utteranceCopy text];
      textViewUtterance = [changeCopy textViewUtterance];
      [utteranceCopy updateText:textViewUtterance];
      callUUID = [call callUUID];
      v32 = [(RTTUIConversationControllerCoordinator *)self recentMessageControllerForCallUUID:callUUID];

      [v32 didSendString:textViewUtterance];
      objc_storeStrong(&self->_inProgressRealTimeIndexPath, path);
      v20 = [utteranceCopy copy];
      inProgressRealTimeUtterance = self->_inProgressRealTimeUtterance;
      self->_inProgressRealTimeUtterance = v20;

      *&buf = 0;
      *(&buf + 1) = &buf;
      v50 = 0x2020000000;
      v51 = 0x7FFFFFFFFFFFFFFFLL;
      v22 = AXLogRTT();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *v45 = 138740227;
        v46 = text;
        v47 = 2117;
        v48 = textViewUtterance;
        _os_log_impl(&dword_261725000, v22, OS_LOG_TYPE_INFO, "KNOWN |%{sensitive}@| NEW |%{sensitive}@|", v45, 0x16u);
      }

      v23 = [text length];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __89__RTTUIConversationControllerCoordinator_realtimeTextDidChange_forUtterance_lastRowPath___block_invoke;
      v42[3] = &unk_279AE4E00;
      v24 = textViewUtterance;
      v43 = v24;
      p_buf = &buf;
      [text enumerateSubstringsInRange:0 options:v23 usingBlock:{2, v42}];
      string = [MEMORY[0x277CCAB68] string];
      if (*(*(&buf + 1) + 24) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v26 = [v24 substringFromIndex:{objc_msgSend(text, "length")}];
        [string appendString:v26];
      }

      else
      {
        v27 = [text length];
        v28 = *(*(&buf + 1) + 24);
        v29 = v27 - v28;
        if (v27 != v28)
        {
          do
          {
            [string appendFormat:@"%c", 8];
            --v29;
          }

          while (v29);
          v27 = *(*(&buf + 1) + 24);
        }

        v26 = [v24 substringFromIndex:v27];
        [string appendString:v26];
      }

      utteranceRequestQueue = self->_utteranceRequestQueue;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __89__RTTUIConversationControllerCoordinator_realtimeTextDidChange_forUtterance_lastRowPath___block_invoke_64;
      v38[3] = &unk_279AE4E28;
      v38[4] = self;
      v31 = string;
      v39 = v31;
      v40 = pathCopy;
      v41 = call;
      dispatch_async(utteranceRequestQueue, v38);
      if (![v31 length])
      {
        [(NSLock *)self->_realtimeSendLock unlock];
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v12 = AXLogRTT();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_261725000, v12, OS_LOG_TYPE_INFO, "Nothing to send. Releasing lock", &buf, 2u);
      }

      [(NSLock *)self->_realtimeSendLock unlock];
    }
  }

  else
  {
    v13 = AXLogRTT();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      textViewUtterance2 = [changeCopy textViewUtterance];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = textViewUtterance2;
      _os_log_impl(&dword_261725000, v13, OS_LOG_TYPE_INFO, "Collision, trying again |%@|", &buf, 0xCu);
    }

    v15 = dispatch_time(0, 200000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__RTTUIConversationControllerCoordinator_realtimeTextDidChange_forUtterance_lastRowPath___block_invoke_65;
    block[3] = &unk_279AE4E28;
    block[4] = self;
    v35 = changeCopy;
    v36 = utteranceCopy;
    v37 = pathCopy;
    dispatch_after(v15, MEMORY[0x277D85CD0], block);
  }

  return tryLock;
}

void __89__RTTUIConversationControllerCoordinator_realtimeTextDidChange_forUtterance_lastRowPath___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v22 = *MEMORY[0x277D85DE8];
  v11 = a2;
  if (a3 + a4 > [*(a1 + 32) length] || (objc_msgSend(*(a1 + 32), "substringWithRange:", a3, a4), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "caseInsensitiveCompare:", v11), v12, v13))
  {
    v14 = [*(a1 + 32) length];
    v15 = AXLogRTT();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (a3 + a4 <= v14)
    {
      if (v16)
      {
        v18 = [*(a1 + 32) substringWithRange:{a3, a4}];
        v19 = 138412546;
        *v20 = v18;
        *&v20[8] = 2112;
        v21 = v11;
        _os_log_impl(&dword_261725000, v15, OS_LOG_TYPE_INFO, "NOT EQUAL |%@| = |%@|", &v19, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [*(a1 + 32) length];
      v19 = 67109376;
      *v20 = a3;
      *&v20[4] = 1024;
      *&v20[6] = v17;
      _os_log_impl(&dword_261725000, v15, OS_LOG_TYPE_INFO, "NOT EQUAL %d, %d", &v19, 0xEu);
    }

    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a7 = 1;
  }
}

- (void)_sendNewUtteranceString:(id)string atIndex:(unint64_t)index forCellPath:(id)path call:(id)call
{
  v35 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  pathCopy = path;
  callCopy = call;
  v13 = AXLogRTT();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v30 = stringCopy;
    v31 = 1024;
    indexCopy = index;
    v33 = 2112;
    v34 = pathCopy;
    _os_log_impl(&dword_261725000, v13, OS_LOG_TYPE_INFO, "_sending new utterance: %@ at index: %d for path: %@", buf, 0x1Cu);
  }

  v14 = [stringCopy length];
  if (v14 > index)
  {
    v15 = v14;
    do
    {
      utteranceBuffer = [(RTTUIConversationControllerCoordinator *)self utteranceBuffer];
      v17 = [RTTUtteranceRequest utteranceRequestWithIndex:index forString:stringCopy inCellPath:pathCopy call:callCopy];
      [utteranceBuffer addObject:v17];

      v18 = [stringCopy rangeOfComposedCharacterSequencesForRange:{index, 1}];
      index = v18 + v19;
    }

    while (v18 + v19 < v15);
  }

  if ([RTTUIUtilities ttyShouldBeRealtimeForCall:callCopy])
  {
    [(NSLock *)self->_realtimeSendLock unlock];
  }

  else
  {
    v20 = AXLogRTT();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_261725000, v20, OS_LOG_TYPE_INFO, "Sending trailing space", buf, 2u);
    }

    utteranceBuffer2 = [(RTTUIConversationControllerCoordinator *)self utteranceBuffer];
    v22 = [RTTUtteranceRequest utteranceRequestWithIndex:0 forString:@" " inCellPath:0 call:callCopy];
    [utteranceBuffer2 addObject:v22];

    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __91__RTTUIConversationControllerCoordinator__sendNewUtteranceString_atIndex_forCellPath_call___block_invoke;
    v26 = &unk_279AE4E50;
    selfCopy = self;
    v28 = pathCopy;
    dispatch_async(MEMORY[0x277D85CD0], &v23);
  }

  if (![(RTTUIConversationControllerCoordinator *)self processingUtteranceBuffer:v23])
  {
    [(RTTUIConversationControllerCoordinator *)self processUtteranceQueue];
  }
}

void __91__RTTUIConversationControllerCoordinator__sendNewUtteranceString_atIndex_forCellPath_call___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) conversationControllers];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v16;
    *&v4 = 138412546;
    v14 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [v8 utteranceCellAtIndexPath:{*(a1 + 40), v14}];
        v10 = AXLogRTT();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = v14;
          v20 = v8;
          v21 = 2112;
          v22 = v9;
          _os_log_impl(&dword_261725000, v10, OS_LOG_TYPE_INFO, "Updated controller with text: %@ -> %@", buf, 0x16u);
        }

        v11 = [v9 utterance];
        v12 = [v11 text];
        v13 = [v12 stringByAppendingString:@" "];
        [v11 updateText:v13];
      }

      v5 = [v2 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v5);
  }
}

- (void)processUtteranceQueue
{
  v43 = *MEMORY[0x277D85DE8];
  utteranceBuffer = [(RTTUIConversationControllerCoordinator *)self utteranceBuffer];
  v4 = [utteranceBuffer count];

  [(NSMutableArray *)self->_utteranceBuffer ax_removeObjectsFromArrayUsingBlock:&__block_literal_global];
  utteranceBuffer2 = [(RTTUIConversationControllerCoordinator *)self utteranceBuffer];
  v6 = [utteranceBuffer2 count];

  if (v4 != v6)
  {
    v7 = AXLogRTT();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v40) = v4 - v6;
      _os_log_impl(&dword_261725000, v7, OS_LOG_TYPE_INFO, "Discarded %d utterance requests from disconnected calls", buf, 8u);
    }
  }

  if (!v6)
  {
    inProgressRealTimeUtterance = self->_inProgressRealTimeUtterance;
    self->_inProgressRealTimeUtterance = 0;

    inProgressRealTimeIndexPath = self->_inProgressRealTimeIndexPath;
    self->_inProgressRealTimeIndexPath = 0;

    [(RTTUIConversationControllerCoordinator *)self setProcessingUtteranceBuffer:0];
    return;
  }

  [(RTTUIConversationControllerCoordinator *)self setProcessingUtteranceBuffer:1];
  utteranceBuffer3 = [(RTTUIConversationControllerCoordinator *)self utteranceBuffer];
  firstObject = [utteranceBuffer3 firstObject];

  string = [firstObject string];
  v11 = [string rangeOfComposedCharacterSequencesForRange:{objc_msgSend(firstObject, "index"), 1}];
  v13 = v12;

  string2 = [firstObject string];
  v15 = [string2 substringWithRange:{v11, v13}];

  v16 = AXLogRTT();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [(__CFString *)v15 characterAtIndex:0];
    v18 = @"BACKSPACE";
    if (v17 != 8)
    {
      v18 = v15;
    }

    *buf = 138412546;
    v40 = v18;
    v41 = 2112;
    v42 = firstObject;
    _os_log_impl(&dword_261725000, v16, OS_LOG_TYPE_INFO, "Sending %@ - %@", buf, 0x16u);
  }

  mEMORY[0x277D440C8] = [MEMORY[0x277D440C8] sharedInstance];
  call = [firstObject call];
  callUUID = [call callUUID];
  [mEMORY[0x277D440C8] sendString:v15 forCallUID:callUUID];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__RTTUIConversationControllerCoordinator_processUtteranceQueue__block_invoke_74;
  block[3] = &unk_279AE4E50;
  block[4] = self;
  v22 = firstObject;
  v38 = v22;
  dispatch_async(MEMORY[0x277D85CD0], block);
  utteranceBuffer4 = [(RTTUIConversationControllerCoordinator *)self utteranceBuffer];
  [utteranceBuffer4 removeObject:v22];

  utteranceBuffer5 = [(RTTUIConversationControllerCoordinator *)self utteranceBuffer];
  if ([utteranceBuffer5 count])
  {
    call2 = [v22 call];
    status = [call2 status];

    if (status == 1)
    {
      call3 = [v22 call];
      isTTY = [call3 isTTY];

      if (isTTY)
      {
        v29 = 200000000;
      }

      else
      {
        v29 = 50000000;
      }

      v30 = dispatch_time(0, v29);
      utteranceRequestQueue = self->_utteranceRequestQueue;
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __63__RTTUIConversationControllerCoordinator_processUtteranceQueue__block_invoke_75;
      v36[3] = &unk_279AE4E98;
      v36[4] = self;
      dispatch_after(v30, utteranceRequestQueue, v36);
      goto LABEL_19;
    }
  }

  else
  {
  }

  v34 = self->_inProgressRealTimeUtterance;
  self->_inProgressRealTimeUtterance = 0;

  v35 = self->_inProgressRealTimeIndexPath;
  self->_inProgressRealTimeIndexPath = 0;

  [(RTTUIConversationControllerCoordinator *)self setProcessingUtteranceBuffer:0];
LABEL_19:
}

BOOL __63__RTTUIConversationControllerCoordinator_processUtteranceQueue__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 call];
  v3 = [v2 status] == 6;

  return v3;
}

void __63__RTTUIConversationControllerCoordinator_processUtteranceQueue__block_invoke_74(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) conversationControllers];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 134218499;
    v15 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v16 + 1) + 8 * v7);
        v9 = [*(a1 + 40) cellIndexPath];
        v10 = [v8 utteranceCellAtIndexPath:v9];

        v11 = AXLogRTT();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [v10 utterance];
          v13 = [v12 text];
          v14 = [*(a1 + 40) index];
          *buf = v15;
          v21 = v8;
          v22 = 2117;
          v23 = v13;
          v24 = 1024;
          v25 = v14;
          _os_log_impl(&dword_261725000, v11, OS_LOG_TYPE_INFO, "Process utterance queue: %p for cell %{sensitive}@ with index: %d", buf, 0x1Cu);
        }

        [v10 setSendProgressIndex:{objc_msgSend(*(a1 + 40), "index")}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v5);
  }
}

- (void)_registerForTranscriptionUpdatesForCall:(id)call
{
  callCopy = call;
  mEMORY[0x277D440C8] = [MEMORY[0x277D440C8] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__RTTUIConversationControllerCoordinator__registerForTranscriptionUpdatesForCall___block_invoke;
  v7[3] = &unk_279AE4D88;
  v7[4] = self;
  v8 = callCopy;
  v6 = callCopy;
  [mEMORY[0x277D440C8] registerForRemoteUpdates:v7 forCallUID:v6];
}

void __82__RTTUIConversationControllerCoordinator__registerForTranscriptionUpdatesForCall___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if ((a5 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __82__RTTUIConversationControllerCoordinator__registerForTranscriptionUpdatesForCall___block_invoke_2;
    v25 = &unk_279AE4EC0;
    v12 = *(a1 + 40);
    v26 = *(a1 + 32);
    v13 = &v27;
    v27 = v12;
    v14 = &v28;
    v28 = v9;
    v15 = v29;
    v29[0] = v10;
    v29[1] = a5;
    AXPerformBlockAsynchronouslyOnMainThread();
LABEL_5:

    goto LABEL_6;
  }

  if ((a5 - 7) <= 1)
  {
    v16 = *(a1 + 40);
    v13 = &v17;
    v17 = v16;
    v14 = &v18;
    v18 = v9;
    v15 = &v19;
    v19 = v10;
    v20 = v11;
    v21 = a5;
    AXPerformBlockAsynchronouslyOnMainThread();

    goto LABEL_5;
  }

LABEL_6:
}

void __82__RTTUIConversationControllerCoordinator__registerForTranscriptionUpdatesForCall___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) conversationControllerForCallUUID:*(a1 + 40)];
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v7 = 138412802;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v2;
    _os_log_impl(&dword_261725000, v3, OS_LOG_TYPE_INFO, "Got remote update callback: %@ %@ for vc %@", &v7, 0x20u);
  }

  v6 = [v2 addTranscriptionText:*(a1 + 56) isNew:*(a1 + 64) == 2];
}

void __82__RTTUIConversationControllerCoordinator__registerForTranscriptionUpdatesForCall___block_invoke_76(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) conversationControllerForCallUUID:*(a1 + 40)];
  v3 = AXLogRTT();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v8 = 138413058;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v2;
    _os_log_impl(&dword_261725000, v3, OS_LOG_TYPE_INFO, "Got remote translation update callback: %@ %@ %@ for vc %@", &v8, 0x2Au);
  }

  v7 = [v2 addTranslatedTranscriptionText:*(a1 + 56) translatedText:*(a1 + 64) isNew:*(a1 + 72) == 7];
}

- (void)processCallScreeningTranscription:(id)transcription transcriptionID:(id)d callUUID:(id)iD
{
  v29 = *MEMORY[0x277D85DE8];
  transcriptionCopy = transcription;
  dCopy = d;
  iDCopy = iD;
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", iDCopy, dCopy];
  v12 = [dCopy isEqualToString:self->_latestCallScreeningTranscriptionID] ^ 1;
  v13 = MEMORY[0x277CCACA8];
  v14 = ttyLocString();
  transcriptionCopy = [v13 stringWithFormat:v14, transcriptionCopy];

  objc_storeStrong(&self->_latestCallScreeningTranscriptionID, dCopy);
  v16 = AXLogRTT();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithBool:v12];
    *buf = 138413058;
    v22 = transcriptionCopy;
    v23 = 2112;
    v24 = dCopy;
    v25 = 2112;
    v26 = iDCopy;
    v27 = 2112;
    v28 = v17;
    _os_log_impl(&dword_261725000, v16, OS_LOG_TYPE_INFO, "Received call screening RTT transcript: %@ (id %@), callID: %@, isNew: %@", buf, 0x2Au);
  }

  v20 = iDCopy;
  v18 = transcriptionCopy;
  v19 = iDCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void __101__RTTUIConversationControllerCoordinator_processCallScreeningTranscription_transcriptionID_callUUID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) conversationControllerForCallUUID:*(a1 + 40)];
  v3 = [v2 addTranscriptionText:*(a1 + 48) isNew:*(a1 + 56)];

  v4 = [MEMORY[0x277D440C8] sharedInstance];
  [v4 sendTranscription:*(a1 + 48) forCallUUID:*(a1 + 40) isNew:*(a1 + 56)];
}

- (void)hearingServerDidDie:(id)die
{
  v4 = AXLogRTT();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_261725000, v4, OS_LOG_TYPE_INFO, "heard died, sending it the up-to-date conversations to save to database", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__RTTUIConversationControllerCoordinator_hearingServerDidDie___block_invoke;
  block[3] = &unk_279AE4E98;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__RTTUIConversationControllerCoordinator_hearingServerDidDie___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = [*(a1 + 32) conversationControllers];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      v5 = 0;
      do
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * v5);
        v7 = [MEMORY[0x277D440C8] sharedInstance];
        v8 = [v6 conversation];
        [v7 sendConversationUpdate:v8];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }
}

- (uint64_t)registerForCallUpdates:.cold.1()
{
  dlerror();
  v0 = abort_report_np();
  return [(RTTUIConversationViewController *)v0 isCurrentCallReceivingOnHold];
}

@end