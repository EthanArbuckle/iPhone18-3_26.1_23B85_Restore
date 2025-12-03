@interface _STSpeechTranslatorClientList
+ (id)_keyForConnection:(id)connection;
- (NSString)description;
- (_STSpeechTranslatorClientConforming)delegate;
- (_STSpeechTranslatorClientList)initWithConfiguration:(id)configuration clientPeer:(id)peer translator:(id)translator;
- (const)_stringForState:(unint64_t)state;
- (id)_contextForKeyWhileDispatched:(id)dispatched;
- (id)_whileDispatchedTransitionFromIdleToState:(unint64_t *)state withError:(id)error;
- (id)_whileDispatchedTransitionFromInvalidatedToState:(unint64_t *)state;
- (id)_whileDispatchedTransitionFromResumingToState:(unint64_t *)state withError:(id)error;
- (id)_whileDispatchedTransitionFromRunningToState:(unint64_t *)state withError:(id)error;
- (id)_whileDispatchedTransitionFromStartingToState:(unint64_t *)state withError:(id)error;
- (id)_whileDispatchedTransitionFromStoppingToState:(unint64_t *)state withError:(id)error;
- (id)_whileDispatchedTransitionToState:(unint64_t)state withError:(id)error;
- (void)_handleTranslatorStartCallbackWhileDispatchedWithError:(id)error;
- (void)_handleTranslatorStopCallbackWhileDispatchedWithError:(id)error;
- (void)_notifyClientsOfTranslationDidPauseWhileDispatched;
- (void)_notifyClientsOfTranslationDidResumeWhileDispatched;
- (void)_notifyClientsOfTranslationDidStopWhileDispatchedWithError:(id)error;
- (void)_notifyClientsOfTranslatorStartWhileDispatchedWithError:(id)error;
- (void)_prefetchPreferredAudioFormatWithSourceLocale:(id)locale fromClass:(Class)class;
- (void)_prepareXPCConnection:(id)connection;
- (void)_removeSecondaryClientPeerWithConnectionKey:(id)key;
- (void)_resetPauseReasons;
- (void)_startTranslatorWhileDispatched;
- (void)_stopTranslatorWhileDispatchedWithError:(id)error;
- (void)_transitionToInvalidatedWhileDispatchedAndStopTranslator:(BOOL)translator withError:(id)error;
- (void)addSecondaryClientPeer:(id)peer withXPCConnection:(id)connection;
- (void)invalidate;
- (void)obtainCachedPreferredSourceAudioFormat:(BOOL)format inReply:(id)reply;
- (void)obtainIdentifierInReply:(id)reply;
- (void)pauseTranslationWithReason:(id)reason;
- (void)resumeTranslation;
- (void)setPreferredTranslatedAudioFormat:(id)format;
- (void)setProduceAudio:(BOOL)audio;
- (void)setProduceTranscripts:(BOOL)transcripts;
- (void)setProduceTranslatedText:(BOOL)text;
- (void)startTranslationWithReply:(id)reply;
- (void)stopTranslation;
- (void)translateAudioBuffer:(id)buffer;
- (void)translator:(id)translator didFinishWithError:(id)error;
- (void)translator:(id)translator didGenerateTranslatedAudio:(id)audio;
- (void)translator:(id)translator producedSpeechResult:(id)result;
- (void)translator:(id)translator producedTranslationResult:(id)result;
- (void)translator:(id)translator willStartTranslatedAudioWithMetadata:(id)metadata;
- (void)translatorDidFinishTranslatedAudio:(id)audio;
@end

@implementation _STSpeechTranslatorClientList

- (_STSpeechTranslatorClientList)initWithConfiguration:(id)configuration clientPeer:(id)peer translator:(id)translator
{
  v34 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  peerCopy = peer;
  translatorCopy = translator;
  v31.receiver = self;
  v31.super_class = _STSpeechTranslatorClientList;
  v11 = [(_STSpeechTranslatorClientList *)&v31 init];
  if (v11)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    [(_STSpeechTranslatorClientList *)v11 setIdentifier:uUID];

    v11->_state = 0;
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v14 = dispatch_queue_create("com.apple.speechtranslation._STSpeechTranslatorClientList", v13);
    stateQueue = v11->_stateQueue;
    v11->_stateQueue = v14;

    v16 = objc_opt_class();
    if (!v16)
    {
      v16 = objc_opt_class();
    }

    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    replyHandlers = v11->_replyHandlers;
    v11->_replyHandlers = v17;

    sourceLocale = [configurationCopy sourceLocale];
    [(_STSpeechTranslatorClientList *)v11 _prefetchPreferredAudioFormatWithSourceLocale:sourceLocale fromClass:v16];

    if (translatorCopy)
    {
      v20 = translatorCopy;
    }

    else
    {
      v20 = [[STSpeechTranslator alloc] initWithConfiguration:configurationCopy delegate:v11];
    }

    translator = v11->_translator;
    v11->_translator = v20;

    v23 = [[_STSpeechTranslatorClientContext alloc] initWithClientPeer:peerCopy];
    primaryClient = v11->_primaryClient;
    v11->_primaryClient = v23;

    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    secondaryClients = v11->_secondaryClients;
    v11->_secondaryClients = v25;

    v27 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = v11;
      _os_log_impl(&dword_26B5BC000, v27, OS_LOG_TYPE_DEFAULT, "Created clientList: %{public}@ successfully", buf, 0xCu);
    }

    v28 = v11;
  }

  else
  {
    v21 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [_STSpeechTranslatorClientList initWithConfiguration:clientPeer:translator:];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = _STSpeechTranslatorClientList;
  v4 = [(_STSpeechTranslatorClientList *)&v8 description];
  identifier = [(_STSpeechTranslatorClientList *)self identifier];
  v6 = [v3 stringWithFormat:@"{ %@ identifier: %@ }", v4, identifier];

  return v6;
}

- (void)invalidate
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43___STSpeechTranslatorClientList_invalidate__block_invoke;
  block[3] = &unk_279CF7C20;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)addSecondaryClientPeer:(id)peer withXPCConnection:(id)connection
{
  peerCopy = peer;
  connectionCopy = connection;
  v8 = [connectionCopy description];
  [(_STSpeechTranslatorClientList *)self _prepareXPCConnection:connectionCopy];
  v9 = [_STSpeechTranslatorClientList _keyForConnection:connectionCopy];

  stateQueue = self->_stateQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74___STSpeechTranslatorClientList_addSecondaryClientPeer_withXPCConnection___block_invoke;
  v14[3] = &unk_279CF7E28;
  v15 = peerCopy;
  selfCopy = self;
  v17 = v9;
  v18 = v8;
  v11 = v8;
  v12 = v9;
  v13 = peerCopy;
  dispatch_async(stateQueue, v14);
}

- (void)_prefetchPreferredAudioFormatWithSourceLocale:(id)locale fromClass:(Class)class
{
  localeCopy = locale;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __89___STSpeechTranslatorClientList__prefetchPreferredAudioFormatWithSourceLocale_fromClass___block_invoke;
  v12 = &unk_279CF7E78;
  objc_copyWeak(v14, &location);
  v7 = localeCopy;
  v13 = v7;
  v14[1] = class;
  v8 = _Block_copy(&v9);
  [(objc_class *)class preferredInputAudioFormatForLocale:v7 completion:v8, v9, v10, v11, v12];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

+ (id)_keyForConnection:(id)connection
{
  if (connection)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(connection, "hash")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_contextForKeyWhileDispatched:(id)dispatched
{
  dispatchedCopy = dispatched;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (dispatchedCopy)
  {
    v5 = [(NSMutableDictionary *)self->_secondaryClients objectForKeyedSubscript:dispatchedCopy];
    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_secondaryClients objectForKeyedSubscript:dispatchedCopy];
    }

    else
    {
      v6 = self->_primaryClient;
    }

    v7 = v6;
  }

  else
  {
    v7 = self->_primaryClient;
  }

  return v7;
}

- (void)_removeSecondaryClientPeerWithConnectionKey:(id)key
{
  keyCopy = key;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77___STSpeechTranslatorClientList__removeSecondaryClientPeerWithConnectionKey___block_invoke;
  v7[3] = &unk_279CF7D38;
  v7[4] = self;
  v8 = keyCopy;
  v6 = keyCopy;
  dispatch_async(stateQueue, v7);
}

- (void)_prepareXPCConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [_STSpeechTranslatorClientList _keyForConnection:connectionCopy];
  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55___STSpeechTranslatorClientList__prepareXPCConnection___block_invoke;
  v8[3] = &unk_279CF7EA0;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  v6 = v5;
  v9 = v6;
  [connectionCopy setInterruptionHandler:v8];
  interruptionHandler = [connectionCopy interruptionHandler];
  [connectionCopy setInvalidationHandler:interruptionHandler];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)_notifyClientsOfTranslatorStartWhileDispatchedWithError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_stateQueue);
  startReply = self->_startReply;
  if (!startReply)
  {
    v7 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_STSpeechTranslatorClientList _notifyClientsOfTranslatorStartWhileDispatchedWithError:];
      if (errorCopy)
      {
        goto LABEL_6;
      }
    }

    else if (errorCopy)
    {
      goto LABEL_6;
    }

LABEL_9:
    clientPeer = [(_STSpeechTranslatorClientContext *)self->_primaryClient clientPeer];
    [clientPeer translationDidStart];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    allValues = [(NSMutableDictionary *)self->_secondaryClients allValues];
    v11 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        v14 = 0;
        do
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(allValues);
          }

          clientPeer2 = [*(*(&v18 + 1) + 8 * v14) clientPeer];
          [clientPeer2 translationDidStart];

          ++v14;
        }

        while (v12 != v14);
        v12 = [allValues countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    delegate = [(_STSpeechTranslatorClientList *)self delegate];
    [delegate translationDidStart];

    goto LABEL_17;
  }

  startReply[2](startReply, errorCopy);
  v6 = self->_startReply;
  self->_startReply = 0;

  if (!errorCopy)
  {
    goto LABEL_9;
  }

LABEL_6:
  v8 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [_STSpeechTranslatorClientList _notifyClientsOfTranslatorStartWhileDispatchedWithError:];
  }

LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_resetPauseReasons
{
  enqueuedPauseReasons = self->_enqueuedPauseReasons;
  self->_enqueuedPauseReasons = 0;

  latestPauseReason = self->_latestPauseReason;
  self->_latestPauseReason = 0;
}

- (void)_notifyClientsOfTranslationDidResumeWhileDispatched
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateQueue);
  clientPeer = [(_STSpeechTranslatorClientContext *)self->_primaryClient clientPeer];
  [clientPeer translationDidResume];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_secondaryClients allValues];
  v5 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        clientPeer2 = [*(*(&v12 + 1) + 8 * v8) clientPeer];
        [clientPeer2 translationDidResume];

        ++v8;
      }

      while (v6 != v8);
      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  delegate = [(_STSpeechTranslatorClientList *)self delegate];
  [delegate translationDidResume];

  [(_STSpeechTranslatorClientList *)self _resetPauseReasons];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleTranslatorStartCallbackWhileDispatchedWithError:(id)error
{
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = _LTOSLogSTMultiprocess();
  v6 = v5;
  if (errorCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_STSpeechTranslatorClientList _handleTranslatorStartCallbackWhileDispatchedWithError:?];
    }

    v7 = 0;
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      translator = self->_translator;
      v11 = 138543618;
      selfCopy = self;
      v13 = 2114;
      v14 = translator;
      _os_log_impl(&dword_26B5BC000, v6, OS_LOG_TYPE_INFO, "clientList: %{public}@ received callback from translator: %{public}@ start", &v11, 0x16u);
    }

    v7 = 2;
  }

  v9 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionToState:v7 withError:errorCopy];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_startTranslatorWhileDispatched
{
  v13 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateQueue);
  v3 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    translator = self->_translator;
    *buf = 138543618;
    selfCopy = self;
    v11 = 2114;
    v12 = translator;
    _os_log_impl(&dword_26B5BC000, v3, OS_LOG_TYPE_INFO, "clientList: %{public}@ starting translator: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v5 = self->_translator;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64___STSpeechTranslatorClientList__startTranslatorWhileDispatched__block_invoke;
  v7[3] = &unk_279CF7C48;
  objc_copyWeak(&v8, buf);
  [(STSpeechTranslating *)v5 start:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_handleTranslatorStopCallbackWhileDispatchedWithError:(id)error
{
  v14 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = _LTOSLogSTMultiprocess();
  v6 = v5;
  if (errorCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_STSpeechTranslatorClientList _handleTranslatorStopCallbackWhileDispatchedWithError:?];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    translator = self->_translator;
    v10 = 138543618;
    selfCopy = self;
    v12 = 2114;
    v13 = translator;
    _os_log_impl(&dword_26B5BC000, v6, OS_LOG_TYPE_INFO, "clientList: %{public}@ received callback from translator: %{public}@ stop", &v10, 0x16u);
  }

  v8 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionToState:0 withError:errorCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_stopTranslatorWhileDispatchedWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = _LTOSLogSTMultiprocess();
  v6 = v5;
  if (errorCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_STSpeechTranslatorClientList _stopTranslatorWhileDispatchedWithError:?];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    translator = self->_translator;
    *buf = 138543618;
    selfCopy = self;
    v16 = 2114;
    v17 = translator;
    _os_log_impl(&dword_26B5BC000, v6, OS_LOG_TYPE_INFO, "clientList: %{public}@ stopping translator: %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v8 = self->_translator;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73___STSpeechTranslatorClientList__stopTranslatorWhileDispatchedWithError___block_invoke;
  v11[3] = &unk_279CF7BD0;
  objc_copyWeak(&v13, buf);
  v9 = errorCopy;
  v12 = v9;
  [(STSpeechTranslating *)v8 stop:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_notifyClientsOfTranslationDidPauseWhileDispatched
{
  v30 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_stateQueue);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_enqueuedPauseReasons;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v25;
    do
    {
      v6 = 0;
      do
      {
        if (*v25 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v24 + 1) + 8 * v6);
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        allValues = [(NSMutableDictionary *)self->_secondaryClients allValues];
        v9 = [allValues countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(allValues);
              }

              clientPeer = [*(*(&v20 + 1) + 8 * v12) clientPeer];
              [clientPeer translationDidPauseWithReason:v7];

              ++v12;
            }

            while (v10 != v12);
            v10 = [allValues countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v10);
        }

        clientPeer2 = [(_STSpeechTranslatorClientContext *)self->_primaryClient clientPeer];
        [clientPeer2 translationDidPauseWithReason:v7];

        delegate = [(_STSpeechTranslatorClientList *)self delegate];
        [delegate translationDidPauseWithReason:v7];

        ++v6;
      }

      while (v6 != v4);
      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }

  lastObject = [(NSMutableArray *)self->_enqueuedPauseReasons lastObject];
  latestPauseReason = self->_latestPauseReason;
  self->_latestPauseReason = lastObject;

  [(NSMutableArray *)self->_enqueuedPauseReasons removeAllObjects];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_notifyClientsOfTranslationDidStopWhileDispatchedWithError:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_stateQueue);
  [(_STSpeechTranslatorClientList *)self _resetPauseReasons];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_secondaryClients allValues];
  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        clientPeer = [*(*(&v14 + 1) + 8 * v9) clientPeer];
        [clientPeer translationDidStopWithError:errorCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  clientPeer2 = [(_STSpeechTranslatorClientContext *)self->_primaryClient clientPeer];
  [clientPeer2 translationDidStopWithError:errorCopy];

  delegate = [(_STSpeechTranslatorClientList *)self delegate];
  [delegate translationDidStopWithError:errorCopy];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToInvalidatedWhileDispatchedAndStopTranslator:(BOOL)translator withError:(id)error
{
  translatorCopy = translator;
  v24 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_26B5BC000, v7, OS_LOG_TYPE_DEFAULT, "clientList: %{public}@ invalidating", buf, 0xCu);
  }

  [(_STSpeechTranslatorClientList *)self _resetPauseReasons];
  if (translatorCopy)
  {
    [(_STSpeechTranslatorClientList *)self _stopTranslatorWhileDispatchedWithError:errorCopy];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allValues = [(NSMutableDictionary *)self->_secondaryClients allValues];
  v9 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(allValues);
        }

        clientPeer = [*(*(&v17 + 1) + 8 * v12) clientPeer];
        [clientPeer clientShouldDisconnect];

        ++v12;
      }

      while (v10 != v12);
      v10 = [allValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  delegate = [(_STSpeechTranslatorClientList *)self delegate];
  [delegate clientShouldDisconnect];

  [(NSMutableArray *)self->_replyHandlers removeAllObjects];
  translator = self->_translator;
  self->_translator = 0;

  v16 = *MEMORY[0x277D85DE8];
}

- (void)translator:(id)translator producedSpeechResult:(id)result
{
  resultCopy = result;
  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65___STSpeechTranslatorClientList_translator_producedSpeechResult___block_invoke;
  v8[3] = &unk_279CF7D38;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(stateQueue, v8);
}

- (void)translator:(id)translator producedTranslationResult:(id)result
{
  resultCopy = result;
  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70___STSpeechTranslatorClientList_translator_producedTranslationResult___block_invoke;
  v8[3] = &unk_279CF7D38;
  v8[4] = self;
  v9 = resultCopy;
  v7 = resultCopy;
  dispatch_async(stateQueue, v8);
}

- (void)translator:(id)translator willStartTranslatedAudioWithMetadata:(id)metadata
{
  metadataCopy = metadata;
  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81___STSpeechTranslatorClientList_translator_willStartTranslatedAudioWithMetadata___block_invoke;
  v8[3] = &unk_279CF7D38;
  v8[4] = self;
  v9 = metadataCopy;
  v7 = metadataCopy;
  dispatch_async(stateQueue, v8);
}

- (void)translator:(id)translator didGenerateTranslatedAudio:(id)audio
{
  audioCopy = audio;
  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71___STSpeechTranslatorClientList_translator_didGenerateTranslatedAudio___block_invoke;
  v8[3] = &unk_279CF7D38;
  v8[4] = self;
  v9 = audioCopy;
  v7 = audioCopy;
  dispatch_async(stateQueue, v8);
}

- (void)translatorDidFinishTranslatedAudio:(id)audio
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68___STSpeechTranslatorClientList_translatorDidFinishTranslatedAudio___block_invoke;
  block[3] = &unk_279CF7C20;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)translator:(id)translator didFinishWithError:(id)error
{
  errorCopy = error;
  v5 = _LTOSLogSTMultiprocess();
  v6 = v5;
  if (errorCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [_STSpeechTranslatorClientList translator:didFinishWithError:];
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_26B5BC000, v6, OS_LOG_TYPE_INFO, "Translator finished", v7, 2u);
  }
}

- (void)obtainIdentifierInReply:(id)reply
{
  replyCopy = reply;
  identifier = [(_STSpeechTranslatorClientList *)self identifier];
  (*(reply + 2))(replyCopy, identifier);
}

- (void)startTranslationWithReply:(id)reply
{
  replyCopy = reply;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___STSpeechTranslatorClientList_startTranslationWithReply___block_invoke;
  v7[3] = &unk_279CF7EC8;
  v7[4] = self;
  v8 = replyCopy;
  v6 = replyCopy;
  dispatch_async(stateQueue, v7);
}

- (void)stopTranslation
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48___STSpeechTranslatorClientList_stopTranslation__block_invoke;
  block[3] = &unk_279CF7C20;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)setProduceTranscripts:(BOOL)transcripts
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v6 = [currentConnection description];
  v7 = [_STSpeechTranslatorClientList _keyForConnection:currentConnection];
  stateQueue = self->_stateQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55___STSpeechTranslatorClientList_setProduceTranscripts___block_invoke;
  v11[3] = &unk_279CF7EF0;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  transcriptsCopy = transcripts;
  v9 = v6;
  v10 = v7;
  dispatch_async(stateQueue, v11);
}

- (void)setProduceTranslatedText:(BOOL)text
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v6 = [currentConnection description];
  v7 = [_STSpeechTranslatorClientList _keyForConnection:currentConnection];
  stateQueue = self->_stateQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58___STSpeechTranslatorClientList_setProduceTranslatedText___block_invoke;
  v11[3] = &unk_279CF7EF0;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  textCopy = text;
  v9 = v6;
  v10 = v7;
  dispatch_async(stateQueue, v11);
}

- (void)setProduceAudio:(BOOL)audio
{
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v6 = [currentConnection description];
  v7 = [_STSpeechTranslatorClientList _keyForConnection:currentConnection];
  stateQueue = self->_stateQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49___STSpeechTranslatorClientList_setProduceAudio___block_invoke;
  v11[3] = &unk_279CF7EF0;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  audioCopy = audio;
  v9 = v6;
  v10 = v7;
  dispatch_async(stateQueue, v11);
}

- (void)setPreferredTranslatedAudioFormat:(id)format
{
  formatCopy = format;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67___STSpeechTranslatorClientList_setPreferredTranslatedAudioFormat___block_invoke;
  v7[3] = &unk_279CF7D38;
  v7[4] = self;
  v8 = formatCopy;
  v6 = formatCopy;
  dispatch_async(stateQueue, v7);
}

- (void)obtainCachedPreferredSourceAudioFormat:(BOOL)format inReply:(id)reply
{
  replyCopy = reply;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80___STSpeechTranslatorClientList_obtainCachedPreferredSourceAudioFormat_inReply___block_invoke;
  block[3] = &unk_279CF7F18;
  block[4] = self;
  v10 = replyCopy;
  formatCopy = format;
  v8 = replyCopy;
  dispatch_async(stateQueue, block);
}

- (void)translateAudioBuffer:(id)buffer
{
  bufferCopy = buffer;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54___STSpeechTranslatorClientList_translateAudioBuffer___block_invoke;
  v7[3] = &unk_279CF7D38;
  v7[4] = self;
  v8 = bufferCopy;
  v6 = bufferCopy;
  dispatch_async(stateQueue, v7);
}

- (void)pauseTranslationWithReason:(id)reason
{
  reasonCopy = reason;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60___STSpeechTranslatorClientList_pauseTranslationWithReason___block_invoke;
  v7[3] = &unk_279CF7D38;
  v7[4] = self;
  v8 = reasonCopy;
  v6 = reasonCopy;
  dispatch_async(stateQueue, v7);
}

- (void)resumeTranslation
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50___STSpeechTranslatorClientList_resumeTranslation__block_invoke;
  block[3] = &unk_279CF7C20;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (_STSpeechTranslatorClientConforming)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_whileDispatchedTransitionFromIdleToState:(unint64_t *)state withError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = 0;
  v8 = *state;
  if (*state > 2)
  {
    if (v8 == 3)
    {
LABEL_11:
      [(_STSpeechTranslatorClientList *)self _startTranslatorWhileDispatched];
LABEL_12:
      v7 = 0;
      goto LABEL_20;
    }

    if (v8 != 4)
    {
      if (v8 != 5)
      {
        goto LABEL_20;
      }

      [(_STSpeechTranslatorClientList *)self _transitionToInvalidatedWhileDispatchedAndStopTranslator:0 withError:errorCopy];
      goto LABEL_12;
    }

    if ([(NSMutableArray *)self->_enqueuedPauseReasons count])
    {
      [(_STSpeechTranslatorClientList *)self _notifyClientsOfTranslationDidPauseWhileDispatched];
    }

    else
    {
      if (!self->_enqueuedPauseReasons)
      {
        v7 = [MEMORY[0x277CCA9B8] st_errorForCode:4];
LABEL_18:
        *state = 0;
        if (!v7)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      [(_STSpeechTranslatorClientList *)self _notifyClientsOfTranslationDidStopWhileDispatchedWithError:errorCopy];
    }

    v7 = 0;
    goto LABEL_18;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

  if (v8 == 1)
  {
    goto LABEL_11;
  }

  if (v8 != 2)
  {
    goto LABEL_20;
  }

LABEL_5:
  v7 = [MEMORY[0x277CCA9B8] st_errorForCode:6];
  if (v7)
  {
LABEL_19:
    *state = 0;
  }

LABEL_20:

  return v7;
}

- (id)_whileDispatchedTransitionFromStartingToState:(unint64_t *)state withError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = 0;
  v8 = *state;
  if (*state > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        [(_STSpeechTranslatorClientList *)self _stopTranslatorWhileDispatchedWithError:errorCopy];
      }

      else
      {
        if (v8 != 5)
        {
          goto LABEL_19;
        }

        [(_STSpeechTranslatorClientList *)self _transitionToInvalidatedWhileDispatchedAndStopTranslator:1 withError:errorCopy];
      }

      goto LABEL_18;
    }

    v9 = 5;
  }

  else
  {
    if (!v8)
    {
      if (!errorCopy)
      {
        errorCopy = [MEMORY[0x277CCA9B8] st_errorForCode:6];
      }

LABEL_12:
      [(_STSpeechTranslatorClientList *)self _notifyClientsOfTranslatorStartWhileDispatchedWithError:errorCopy];
LABEL_18:
      v7 = 0;
      goto LABEL_19;
    }

    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    v9 = 2;
  }

  v7 = [MEMORY[0x277CCA9B8] st_errorForCode:v9];
  if (v7)
  {
    *state = 1;
  }

LABEL_19:

  return v7;
}

- (id)_whileDispatchedTransitionFromRunningToState:(unint64_t *)state withError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = 0;
  v8 = *state;
  if (*state > 2)
  {
    if (v8 != 3)
    {
      if (v8 != 4)
      {
        if (v8 != 5)
        {
          goto LABEL_18;
        }

        [(_STSpeechTranslatorClientList *)self _transitionToInvalidatedWhileDispatchedAndStopTranslator:1 withError:errorCopy];
        goto LABEL_13;
      }

LABEL_12:
      [(_STSpeechTranslatorClientList *)self _stopTranslatorWhileDispatchedWithError:errorCopy];
LABEL_13:
      v7 = 0;
      goto LABEL_18;
    }

    v9 = 5;
  }

  else
  {
    if (!v8)
    {
LABEL_5:
      if (!errorCopy)
      {
        errorCopy = [MEMORY[0x277CCA9B8] st_errorForCode:6];
      }

      *state = 4;
      goto LABEL_12;
    }

    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_18;
      }

      goto LABEL_5;
    }

    v9 = 2;
  }

  v7 = [MEMORY[0x277CCA9B8] st_errorForCode:v9];
  if (v7)
  {
    *state = 2;
  }

LABEL_18:

  return v7;
}

- (id)_whileDispatchedTransitionFromResumingToState:(unint64_t *)state withError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = 0;
  v8 = *state;
  if (*state > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        [(_STSpeechTranslatorClientList *)self _stopTranslatorWhileDispatchedWithError:errorCopy];
      }

      else
      {
        if (v8 != 5)
        {
          goto LABEL_19;
        }

        [(_STSpeechTranslatorClientList *)self _transitionToInvalidatedWhileDispatchedAndStopTranslator:1 withError:errorCopy];
      }

      goto LABEL_18;
    }

    v9 = 5;
  }

  else
  {
    if (!v8)
    {
      if (!errorCopy)
      {
        errorCopy = [MEMORY[0x277CCA9B8] st_errorForCode:6];
      }

      [(_STSpeechTranslatorClientList *)self _notifyClientsOfTranslationDidStopWhileDispatchedWithError:errorCopy];
LABEL_18:
      v7 = 0;
      goto LABEL_19;
    }

    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_19;
      }

      [(_STSpeechTranslatorClientList *)self _notifyClientsOfTranslationDidResumeWhileDispatched];
      goto LABEL_18;
    }

    v9 = 2;
  }

  v7 = [MEMORY[0x277CCA9B8] st_errorForCode:v9];
  if (v7)
  {
    *state = 3;
  }

LABEL_19:

  return v7;
}

- (id)_whileDispatchedTransitionFromStoppingToState:(unint64_t *)state withError:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = 0;
  v8 = *state;
  if (*state <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = 2;
      }

      else
      {
        if (v8 != 2)
        {
          goto LABEL_21;
        }

        v9 = 6;
      }

      goto LABEL_17;
    }

    v10 = [(NSMutableArray *)self->_enqueuedPauseReasons count];
    if (errorCopy || !v10)
    {
      [(_STSpeechTranslatorClientList *)self _notifyClientsOfTranslationDidStopWhileDispatchedWithError:errorCopy];
    }

    else
    {
      [(_STSpeechTranslatorClientList *)self _notifyClientsOfTranslationDidPauseWhileDispatched];
    }

    goto LABEL_20;
  }

  switch(v8)
  {
    case 3uLL:
      v9 = 5;
      break;
    case 4uLL:
      if (self->_enqueuedPauseReasons)
      {
LABEL_20:
        v7 = 0;
        goto LABEL_21;
      }

      v9 = 3;
      break;
    case 5uLL:
      [(_STSpeechTranslatorClientList *)self _transitionToInvalidatedWhileDispatchedAndStopTranslator:0 withError:errorCopy];
      goto LABEL_20;
    default:
      goto LABEL_21;
  }

LABEL_17:
  v7 = [MEMORY[0x277CCA9B8] st_errorForCode:v9];
  if (v7)
  {
    *state = 4;
  }

LABEL_21:

  return v7;
}

- (id)_whileDispatchedTransitionFromInvalidatedToState:(unint64_t *)state
{
  dispatch_assert_queue_V2(self->_stateQueue);
  *state = 5;
  v4 = MEMORY[0x277CCA9B8];

  return [v4 st_errorForCode:7];
}

- (id)_whileDispatchedTransitionToState:(unint64_t)state withError:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_stateQueue);
  stateCopy = state;
  state = self->_state;
  if (state > 2)
  {
    switch(state)
    {
      case 3:
        v8 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionFromResumingToState:&stateCopy withError:errorCopy];
        break;
      case 4:
        v8 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionFromStoppingToState:&stateCopy withError:errorCopy];
        break;
      case 5:
        v8 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionFromInvalidatedToState:&stateCopy];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      v8 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionFromStartingToState:&stateCopy withError:errorCopy];
    }

    else
    {
      if (state != 2)
      {
        goto LABEL_15;
      }

      v8 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionFromRunningToState:&stateCopy withError:errorCopy];
    }
  }

  else
  {
    v8 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionFromIdleToState:&stateCopy withError:errorCopy];
  }

  v9 = v8;

  errorCopy = v9;
LABEL_15:
  v10 = stateCopy;
  if (stateCopy != self->_state)
  {
    v11 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = self->_state;
      v13 = v11;
      v14 = [(_STSpeechTranslatorClientList *)self _descriptionForState:v12];
      v15 = [(_STSpeechTranslatorClientList *)self _descriptionForState:stateCopy];
      *buf = 138543874;
      selfCopy2 = self;
      v25 = 2114;
      v26 = v14;
      v27 = 2114;
      v28 = v15;
      _os_log_impl(&dword_26B5BC000, v13, OS_LOG_TYPE_INFO, "clientList: %{public}@ transitioning from state: %{public}@ to state: %{public}@", buf, 0x20u);
    }

    v10 = stateCopy;
    self->_state = stateCopy;
  }

  if (v10 != state)
  {
    if (errorCopy)
    {
      v16 = _LTOSLogSTMultiprocess();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = v16;
        v20 = [(_STSpeechTranslatorClientList *)self _descriptionForState:state];
        v21 = [(_STSpeechTranslatorClientList *)self _descriptionForState:self->_state];
        *buf = 138544130;
        selfCopy2 = self;
        v25 = 2114;
        v26 = v20;
        v27 = 2114;
        v28 = v21;
        v29 = 2112;
        v30 = errorCopy;
        _os_log_error_impl(&dword_26B5BC000, v19, OS_LOG_TYPE_ERROR, "clientList: %{public}@ failed to reach desired state: %{public}@, current state: %{public}@, error: %@", buf, 0x2Au);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return errorCopy;
}

- (const)_stringForState:(unint64_t)state
{
  if (state > 5)
  {
    return "Invalid";
  }

  else
  {
    return off_279CF7F38[state];
  }
}

- (void)initWithConfiguration:clientPeer:translator:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_notifyClientsOfTranslatorStartWhileDispatchedWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_notifyClientsOfTranslatorStartWhileDispatchedWithError:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handleTranslatorStartCallbackWhileDispatchedWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_handleTranslatorStopCallbackWhileDispatchedWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_stopTranslatorWhileDispatchedWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)translator:didFinishWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_26B5BC000, v0, OS_LOG_TYPE_ERROR, "Translator finished with error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end