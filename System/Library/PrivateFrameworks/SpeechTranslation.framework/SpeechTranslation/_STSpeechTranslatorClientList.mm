@interface _STSpeechTranslatorClientList
+ (id)_keyForConnection:(id)a3;
- (NSString)description;
- (_STSpeechTranslatorClientConforming)delegate;
- (_STSpeechTranslatorClientList)initWithConfiguration:(id)a3 clientPeer:(id)a4 translator:(id)a5;
- (const)_stringForState:(unint64_t)a3;
- (id)_contextForKeyWhileDispatched:(id)a3;
- (id)_whileDispatchedTransitionFromIdleToState:(unint64_t *)a3 withError:(id)a4;
- (id)_whileDispatchedTransitionFromInvalidatedToState:(unint64_t *)a3;
- (id)_whileDispatchedTransitionFromResumingToState:(unint64_t *)a3 withError:(id)a4;
- (id)_whileDispatchedTransitionFromRunningToState:(unint64_t *)a3 withError:(id)a4;
- (id)_whileDispatchedTransitionFromStartingToState:(unint64_t *)a3 withError:(id)a4;
- (id)_whileDispatchedTransitionFromStoppingToState:(unint64_t *)a3 withError:(id)a4;
- (id)_whileDispatchedTransitionToState:(unint64_t)a3 withError:(id)a4;
- (void)_handleTranslatorStartCallbackWhileDispatchedWithError:(id)a3;
- (void)_handleTranslatorStopCallbackWhileDispatchedWithError:(id)a3;
- (void)_notifyClientsOfTranslationDidPauseWhileDispatched;
- (void)_notifyClientsOfTranslationDidResumeWhileDispatched;
- (void)_notifyClientsOfTranslationDidStopWhileDispatchedWithError:(id)a3;
- (void)_notifyClientsOfTranslatorStartWhileDispatchedWithError:(id)a3;
- (void)_prefetchPreferredAudioFormatWithSourceLocale:(id)a3 fromClass:(Class)a4;
- (void)_prepareXPCConnection:(id)a3;
- (void)_removeSecondaryClientPeerWithConnectionKey:(id)a3;
- (void)_resetPauseReasons;
- (void)_startTranslatorWhileDispatched;
- (void)_stopTranslatorWhileDispatchedWithError:(id)a3;
- (void)_transitionToInvalidatedWhileDispatchedAndStopTranslator:(BOOL)a3 withError:(id)a4;
- (void)addSecondaryClientPeer:(id)a3 withXPCConnection:(id)a4;
- (void)invalidate;
- (void)obtainCachedPreferredSourceAudioFormat:(BOOL)a3 inReply:(id)a4;
- (void)obtainIdentifierInReply:(id)a3;
- (void)pauseTranslationWithReason:(id)a3;
- (void)resumeTranslation;
- (void)setPreferredTranslatedAudioFormat:(id)a3;
- (void)setProduceAudio:(BOOL)a3;
- (void)setProduceTranscripts:(BOOL)a3;
- (void)setProduceTranslatedText:(BOOL)a3;
- (void)startTranslationWithReply:(id)a3;
- (void)stopTranslation;
- (void)translateAudioBuffer:(id)a3;
- (void)translator:(id)a3 didFinishWithError:(id)a4;
- (void)translator:(id)a3 didGenerateTranslatedAudio:(id)a4;
- (void)translator:(id)a3 producedSpeechResult:(id)a4;
- (void)translator:(id)a3 producedTranslationResult:(id)a4;
- (void)translator:(id)a3 willStartTranslatedAudioWithMetadata:(id)a4;
- (void)translatorDidFinishTranslatedAudio:(id)a3;
@end

@implementation _STSpeechTranslatorClientList

- (_STSpeechTranslatorClientList)initWithConfiguration:(id)a3 clientPeer:(id)a4 translator:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v31.receiver = self;
  v31.super_class = _STSpeechTranslatorClientList;
  v11 = [(_STSpeechTranslatorClientList *)&v31 init];
  if (v11)
  {
    v12 = [MEMORY[0x277CCAD78] UUID];
    [(_STSpeechTranslatorClientList *)v11 setIdentifier:v12];

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

    v19 = [v8 sourceLocale];
    [(_STSpeechTranslatorClientList *)v11 _prefetchPreferredAudioFormatWithSourceLocale:v19 fromClass:v16];

    if (v10)
    {
      v20 = v10;
    }

    else
    {
      v20 = [[STSpeechTranslator alloc] initWithConfiguration:v8 delegate:v11];
    }

    translator = v11->_translator;
    v11->_translator = v20;

    v23 = [[_STSpeechTranslatorClientContext alloc] initWithClientPeer:v9];
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
  v5 = [(_STSpeechTranslatorClientList *)self identifier];
  v6 = [v3 stringWithFormat:@"{ %@ identifier: %@ }", v4, v5];

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

- (void)addSecondaryClientPeer:(id)a3 withXPCConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 description];
  [(_STSpeechTranslatorClientList *)self _prepareXPCConnection:v7];
  v9 = [_STSpeechTranslatorClientList _keyForConnection:v7];

  stateQueue = self->_stateQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74___STSpeechTranslatorClientList_addSecondaryClientPeer_withXPCConnection___block_invoke;
  v14[3] = &unk_279CF7E28;
  v15 = v6;
  v16 = self;
  v17 = v9;
  v18 = v8;
  v11 = v8;
  v12 = v9;
  v13 = v6;
  dispatch_async(stateQueue, v14);
}

- (void)_prefetchPreferredAudioFormatWithSourceLocale:(id)a3 fromClass:(Class)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __89___STSpeechTranslatorClientList__prefetchPreferredAudioFormatWithSourceLocale_fromClass___block_invoke;
  v12 = &unk_279CF7E78;
  objc_copyWeak(v14, &location);
  v7 = v6;
  v13 = v7;
  v14[1] = a4;
  v8 = _Block_copy(&v9);
  [(objc_class *)a4 preferredInputAudioFormatForLocale:v7 completion:v8, v9, v10, v11, v12];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

+ (id)_keyForConnection:(id)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a3, "hash")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_contextForKeyWhileDispatched:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_secondaryClients objectForKeyedSubscript:v4];
    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_secondaryClients objectForKeyedSubscript:v4];
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

- (void)_removeSecondaryClientPeerWithConnectionKey:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77___STSpeechTranslatorClientList__removeSecondaryClientPeerWithConnectionKey___block_invoke;
  v7[3] = &unk_279CF7D38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (void)_prepareXPCConnection:(id)a3
{
  v4 = a3;
  v5 = [_STSpeechTranslatorClientList _keyForConnection:v4];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55___STSpeechTranslatorClientList__prepareXPCConnection___block_invoke;
  v8[3] = &unk_279CF7EA0;
  objc_copyWeak(&v10, &location);
  objc_copyWeak(&v11, &from);
  v6 = v5;
  v9 = v6;
  [v4 setInterruptionHandler:v8];
  v7 = [v4 interruptionHandler];
  [v4 setInvalidationHandler:v7];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)_notifyClientsOfTranslatorStartWhileDispatchedWithError:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  startReply = self->_startReply;
  if (!startReply)
  {
    v7 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_STSpeechTranslatorClientList _notifyClientsOfTranslatorStartWhileDispatchedWithError:];
      if (v4)
      {
        goto LABEL_6;
      }
    }

    else if (v4)
    {
      goto LABEL_6;
    }

LABEL_9:
    v9 = [(_STSpeechTranslatorClientContext *)self->_primaryClient clientPeer];
    [v9 translationDidStart];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [(NSMutableDictionary *)self->_secondaryClients allValues];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v18 + 1) + 8 * v14) clientPeer];
          [v15 translationDidStart];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    v16 = [(_STSpeechTranslatorClientList *)self delegate];
    [v16 translationDidStart];

    goto LABEL_17;
  }

  startReply[2](startReply, v4);
  v6 = self->_startReply;
  self->_startReply = 0;

  if (!v4)
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
  v3 = [(_STSpeechTranslatorClientContext *)self->_primaryClient clientPeer];
  [v3 translationDidResume];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(NSMutableDictionary *)self->_secondaryClients allValues];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) clientPeer];
        [v9 translationDidResume];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [(_STSpeechTranslatorClientList *)self delegate];
  [v10 translationDidResume];

  [(_STSpeechTranslatorClientList *)self _resetPauseReasons];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)_handleTranslatorStartCallbackWhileDispatchedWithError:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = _LTOSLogSTMultiprocess();
  v6 = v5;
  if (v4)
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
      v12 = self;
      v13 = 2114;
      v14 = translator;
      _os_log_impl(&dword_26B5BC000, v6, OS_LOG_TYPE_INFO, "clientList: %{public}@ received callback from translator: %{public}@ start", &v11, 0x16u);
    }

    v7 = 2;
  }

  v9 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionToState:v7 withError:v4];

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
    v10 = self;
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

- (void)_handleTranslatorStopCallbackWhileDispatchedWithError:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = _LTOSLogSTMultiprocess();
  v6 = v5;
  if (v4)
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
    v11 = self;
    v12 = 2114;
    v13 = translator;
    _os_log_impl(&dword_26B5BC000, v6, OS_LOG_TYPE_INFO, "clientList: %{public}@ received callback from translator: %{public}@ stop", &v10, 0x16u);
  }

  v8 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionToState:0 withError:v4];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_stopTranslatorWhileDispatchedWithError:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  v5 = _LTOSLogSTMultiprocess();
  v6 = v5;
  if (v4)
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
    v15 = self;
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
  v9 = v4;
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
        v8 = [(NSMutableDictionary *)self->_secondaryClients allValues];
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
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
                objc_enumerationMutation(v8);
              }

              v13 = [*(*(&v20 + 1) + 8 * v12) clientPeer];
              [v13 translationDidPauseWithReason:v7];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
          }

          while (v10);
        }

        v14 = [(_STSpeechTranslatorClientContext *)self->_primaryClient clientPeer];
        [v14 translationDidPauseWithReason:v7];

        v15 = [(_STSpeechTranslatorClientList *)self delegate];
        [v15 translationDidPauseWithReason:v7];

        ++v6;
      }

      while (v6 != v4);
      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v4);
  }

  v16 = [(NSMutableArray *)self->_enqueuedPauseReasons lastObject];
  latestPauseReason = self->_latestPauseReason;
  self->_latestPauseReason = v16;

  [(NSMutableArray *)self->_enqueuedPauseReasons removeAllObjects];
  v18 = *MEMORY[0x277D85DE8];
}

- (void)_notifyClientsOfTranslationDidStopWhileDispatchedWithError:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_stateQueue);
  [(_STSpeechTranslatorClientList *)self _resetPauseReasons];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_secondaryClients allValues];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) clientPeer];
        [v10 translationDidStopWithError:v4];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [(_STSpeechTranslatorClientContext *)self->_primaryClient clientPeer];
  [v11 translationDidStopWithError:v4];

  v12 = [(_STSpeechTranslatorClientList *)self delegate];
  [v12 translationDidStopWithError:v4];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToInvalidatedWhileDispatchedAndStopTranslator:(BOOL)a3 withError:(id)a4
{
  v4 = a3;
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = _LTOSLogSTMultiprocess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = self;
    _os_log_impl(&dword_26B5BC000, v7, OS_LOG_TYPE_DEFAULT, "clientList: %{public}@ invalidating", buf, 0xCu);
  }

  [(_STSpeechTranslatorClientList *)self _resetPauseReasons];
  if (v4)
  {
    [(_STSpeechTranslatorClientList *)self _stopTranslatorWhileDispatchedWithError:v6];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(NSMutableDictionary *)self->_secondaryClients allValues];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * v12) clientPeer];
        [v13 clientShouldDisconnect];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [(_STSpeechTranslatorClientList *)self delegate];
  [v14 clientShouldDisconnect];

  [(NSMutableArray *)self->_replyHandlers removeAllObjects];
  translator = self->_translator;
  self->_translator = 0;

  v16 = *MEMORY[0x277D85DE8];
}

- (void)translator:(id)a3 producedSpeechResult:(id)a4
{
  v5 = a4;
  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65___STSpeechTranslatorClientList_translator_producedSpeechResult___block_invoke;
  v8[3] = &unk_279CF7D38;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(stateQueue, v8);
}

- (void)translator:(id)a3 producedTranslationResult:(id)a4
{
  v5 = a4;
  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70___STSpeechTranslatorClientList_translator_producedTranslationResult___block_invoke;
  v8[3] = &unk_279CF7D38;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(stateQueue, v8);
}

- (void)translator:(id)a3 willStartTranslatedAudioWithMetadata:(id)a4
{
  v5 = a4;
  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81___STSpeechTranslatorClientList_translator_willStartTranslatedAudioWithMetadata___block_invoke;
  v8[3] = &unk_279CF7D38;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(stateQueue, v8);
}

- (void)translator:(id)a3 didGenerateTranslatedAudio:(id)a4
{
  v5 = a4;
  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71___STSpeechTranslatorClientList_translator_didGenerateTranslatedAudio___block_invoke;
  v8[3] = &unk_279CF7D38;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(stateQueue, v8);
}

- (void)translatorDidFinishTranslatedAudio:(id)a3
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68___STSpeechTranslatorClientList_translatorDidFinishTranslatedAudio___block_invoke;
  block[3] = &unk_279CF7C20;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

- (void)translator:(id)a3 didFinishWithError:(id)a4
{
  v4 = a4;
  v5 = _LTOSLogSTMultiprocess();
  v6 = v5;
  if (v4)
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

- (void)obtainIdentifierInReply:(id)a3
{
  v5 = a3;
  v6 = [(_STSpeechTranslatorClientList *)self identifier];
  (*(a3 + 2))(v5, v6);
}

- (void)startTranslationWithReply:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___STSpeechTranslatorClientList_startTranslationWithReply___block_invoke;
  v7[3] = &unk_279CF7EC8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (void)setProduceTranscripts:(BOOL)a3
{
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  v6 = [v5 description];
  v7 = [_STSpeechTranslatorClientList _keyForConnection:v5];
  stateQueue = self->_stateQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55___STSpeechTranslatorClientList_setProduceTranscripts___block_invoke;
  v11[3] = &unk_279CF7EF0;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v14 = a3;
  v9 = v6;
  v10 = v7;
  dispatch_async(stateQueue, v11);
}

- (void)setProduceTranslatedText:(BOOL)a3
{
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  v6 = [v5 description];
  v7 = [_STSpeechTranslatorClientList _keyForConnection:v5];
  stateQueue = self->_stateQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58___STSpeechTranslatorClientList_setProduceTranslatedText___block_invoke;
  v11[3] = &unk_279CF7EF0;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v14 = a3;
  v9 = v6;
  v10 = v7;
  dispatch_async(stateQueue, v11);
}

- (void)setProduceAudio:(BOOL)a3
{
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  v6 = [v5 description];
  v7 = [_STSpeechTranslatorClientList _keyForConnection:v5];
  stateQueue = self->_stateQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49___STSpeechTranslatorClientList_setProduceAudio___block_invoke;
  v11[3] = &unk_279CF7EF0;
  v11[4] = self;
  v12 = v7;
  v13 = v6;
  v14 = a3;
  v9 = v6;
  v10 = v7;
  dispatch_async(stateQueue, v11);
}

- (void)setPreferredTranslatedAudioFormat:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67___STSpeechTranslatorClientList_setPreferredTranslatedAudioFormat___block_invoke;
  v7[3] = &unk_279CF7D38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (void)obtainCachedPreferredSourceAudioFormat:(BOOL)a3 inReply:(id)a4
{
  v6 = a4;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80___STSpeechTranslatorClientList_obtainCachedPreferredSourceAudioFormat_inReply___block_invoke;
  block[3] = &unk_279CF7F18;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(stateQueue, block);
}

- (void)translateAudioBuffer:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54___STSpeechTranslatorClientList_translateAudioBuffer___block_invoke;
  v7[3] = &unk_279CF7D38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

- (void)pauseTranslationWithReason:(id)a3
{
  v4 = a3;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60___STSpeechTranslatorClientList_pauseTranslationWithReason___block_invoke;
  v7[3] = &unk_279CF7D38;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
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

- (id)_whileDispatchedTransitionFromIdleToState:(unint64_t *)a3 withError:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = 0;
  v8 = *a3;
  if (*a3 > 2)
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

      [(_STSpeechTranslatorClientList *)self _transitionToInvalidatedWhileDispatchedAndStopTranslator:0 withError:v6];
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
        *a3 = 0;
        if (!v7)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      [(_STSpeechTranslatorClientList *)self _notifyClientsOfTranslationDidStopWhileDispatchedWithError:v6];
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
    *a3 = 0;
  }

LABEL_20:

  return v7;
}

- (id)_whileDispatchedTransitionFromStartingToState:(unint64_t *)a3 withError:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = 0;
  v8 = *a3;
  if (*a3 > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        [(_STSpeechTranslatorClientList *)self _stopTranslatorWhileDispatchedWithError:v6];
      }

      else
      {
        if (v8 != 5)
        {
          goto LABEL_19;
        }

        [(_STSpeechTranslatorClientList *)self _transitionToInvalidatedWhileDispatchedAndStopTranslator:1 withError:v6];
      }

      goto LABEL_18;
    }

    v9 = 5;
  }

  else
  {
    if (!v8)
    {
      if (!v6)
      {
        v6 = [MEMORY[0x277CCA9B8] st_errorForCode:6];
      }

LABEL_12:
      [(_STSpeechTranslatorClientList *)self _notifyClientsOfTranslatorStartWhileDispatchedWithError:v6];
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
    *a3 = 1;
  }

LABEL_19:

  return v7;
}

- (id)_whileDispatchedTransitionFromRunningToState:(unint64_t *)a3 withError:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = 0;
  v8 = *a3;
  if (*a3 > 2)
  {
    if (v8 != 3)
    {
      if (v8 != 4)
      {
        if (v8 != 5)
        {
          goto LABEL_18;
        }

        [(_STSpeechTranslatorClientList *)self _transitionToInvalidatedWhileDispatchedAndStopTranslator:1 withError:v6];
        goto LABEL_13;
      }

LABEL_12:
      [(_STSpeechTranslatorClientList *)self _stopTranslatorWhileDispatchedWithError:v6];
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
      if (!v6)
      {
        v6 = [MEMORY[0x277CCA9B8] st_errorForCode:6];
      }

      *a3 = 4;
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
    *a3 = 2;
  }

LABEL_18:

  return v7;
}

- (id)_whileDispatchedTransitionFromResumingToState:(unint64_t *)a3 withError:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = 0;
  v8 = *a3;
  if (*a3 > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        [(_STSpeechTranslatorClientList *)self _stopTranslatorWhileDispatchedWithError:v6];
      }

      else
      {
        if (v8 != 5)
        {
          goto LABEL_19;
        }

        [(_STSpeechTranslatorClientList *)self _transitionToInvalidatedWhileDispatchedAndStopTranslator:1 withError:v6];
      }

      goto LABEL_18;
    }

    v9 = 5;
  }

  else
  {
    if (!v8)
    {
      if (!v6)
      {
        v6 = [MEMORY[0x277CCA9B8] st_errorForCode:6];
      }

      [(_STSpeechTranslatorClientList *)self _notifyClientsOfTranslationDidStopWhileDispatchedWithError:v6];
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
    *a3 = 3;
  }

LABEL_19:

  return v7;
}

- (id)_whileDispatchedTransitionFromStoppingToState:(unint64_t *)a3 withError:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_stateQueue);
  v7 = 0;
  v8 = *a3;
  if (*a3 <= 2)
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
    if (v6 || !v10)
    {
      [(_STSpeechTranslatorClientList *)self _notifyClientsOfTranslationDidStopWhileDispatchedWithError:v6];
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
      [(_STSpeechTranslatorClientList *)self _transitionToInvalidatedWhileDispatchedAndStopTranslator:0 withError:v6];
      goto LABEL_20;
    default:
      goto LABEL_21;
  }

LABEL_17:
  v7 = [MEMORY[0x277CCA9B8] st_errorForCode:v9];
  if (v7)
  {
    *a3 = 4;
  }

LABEL_21:

  return v7;
}

- (id)_whileDispatchedTransitionFromInvalidatedToState:(unint64_t *)a3
{
  dispatch_assert_queue_V2(self->_stateQueue);
  *a3 = 5;
  v4 = MEMORY[0x277CCA9B8];

  return [v4 st_errorForCode:7];
}

- (id)_whileDispatchedTransitionToState:(unint64_t)a3 withError:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a4;
  dispatch_assert_queue_V2(self->_stateQueue);
  v22 = a3;
  state = self->_state;
  if (state > 2)
  {
    switch(state)
    {
      case 3:
        v8 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionFromResumingToState:&v22 withError:v6];
        break;
      case 4:
        v8 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionFromStoppingToState:&v22 withError:v6];
        break;
      case 5:
        v8 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionFromInvalidatedToState:&v22];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (state)
  {
    if (state == 1)
    {
      v8 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionFromStartingToState:&v22 withError:v6];
    }

    else
    {
      if (state != 2)
      {
        goto LABEL_15;
      }

      v8 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionFromRunningToState:&v22 withError:v6];
    }
  }

  else
  {
    v8 = [(_STSpeechTranslatorClientList *)self _whileDispatchedTransitionFromIdleToState:&v22 withError:v6];
  }

  v9 = v8;

  v6 = v9;
LABEL_15:
  v10 = v22;
  if (v22 != self->_state)
  {
    v11 = _LTOSLogSTMultiprocess();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = self->_state;
      v13 = v11;
      v14 = [(_STSpeechTranslatorClientList *)self _descriptionForState:v12];
      v15 = [(_STSpeechTranslatorClientList *)self _descriptionForState:v22];
      *buf = 138543874;
      v24 = self;
      v25 = 2114;
      v26 = v14;
      v27 = 2114;
      v28 = v15;
      _os_log_impl(&dword_26B5BC000, v13, OS_LOG_TYPE_INFO, "clientList: %{public}@ transitioning from state: %{public}@ to state: %{public}@", buf, 0x20u);
    }

    v10 = v22;
    self->_state = v22;
  }

  if (v10 != a3)
  {
    if (v6)
    {
      v16 = _LTOSLogSTMultiprocess();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v19 = v16;
        v20 = [(_STSpeechTranslatorClientList *)self _descriptionForState:a3];
        v21 = [(_STSpeechTranslatorClientList *)self _descriptionForState:self->_state];
        *buf = 138544130;
        v24 = self;
        v25 = 2114;
        v26 = v20;
        v27 = 2114;
        v28 = v21;
        v29 = 2112;
        v30 = v6;
        _os_log_error_impl(&dword_26B5BC000, v19, OS_LOG_TYPE_ERROR, "clientList: %{public}@ failed to reach desired state: %{public}@, current state: %{public}@, error: %@", buf, 0x2Au);
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (const)_stringForState:(unint64_t)a3
{
  if (a3 > 5)
  {
    return "Invalid";
  }

  else
  {
    return off_279CF7F38[a3];
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