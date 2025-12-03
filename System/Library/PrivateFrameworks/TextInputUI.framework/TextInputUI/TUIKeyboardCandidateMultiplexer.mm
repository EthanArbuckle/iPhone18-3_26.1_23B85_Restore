@interface TUIKeyboardCandidateMultiplexer
- (BOOL)_queueOnly_willHandleDeliveryForCandidates:(id)candidates requestToken:(id)token;
- (BOOL)willHandleDeliveryForCandidates:(id)candidates requestToken:(id)token;
- (NSString)debugDescription;
- (TUIKeyboardCandidateMultiplexer)init;
- (TUIKeyboardCandidateReceiver)candidateReceiver;
- (_TtC11TextInputUI28TUITextComposerClientWrapper)internalSharedClientWrapper;
- (id)_queueOnly_enabledGenerators;
- (id)_queueOnly_enabledGeneratorsForAccumulatorType:(int)type context:(id)context;
- (id)_queueOnly_enabledSourceTypesWithGenerators:(id)generators accumulatorType:(int)type context:(id)context;
- (id)_queueOnly_mergeKBDCorrections:(id)corrections withTextEffectsCorrections:(id)effectsCorrections;
- (id)_queueOnly_resultAccumulatorForContext:(id)context type:(int)type enabledCandidateSources:(id)sources;
- (void)_didReceiveCandidateResults:(id)results forAccumulator:(id)accumulator;
- (void)_queueOnly_candidateAccepted:(id)accepted keyboardState:(id)state candidateRequestToken:(id)token;
- (void)_queueOnly_generateCandidatesForContext:(id)context delayed:(BOOL)delayed;
- (void)_queueOnly_generateCandidatesForKeyboardState:(id)state requestToken:(id)token usesCandidateSelection:(BOOL)selection;
- (void)_queueOnly_performUpdatesToCandidateReceiverForRequest:(id)request type:(int)type didTimeout:(BOOL)timeout;
- (void)_sendSmartResponsesTelemetryForCandidates:(id)candidates forKeyboardState:(id)state;
- (void)addGenerator:(id)generator;
- (void)candidateAccepted:(id)accepted generationContext:(id)context;
- (void)candidateAccepted:(id)accepted keyboardState:(id)state candidateRequestToken:(id)token;
- (void)generateCandidatesForKeyboardState:(id)state requestToken:(id)token;
- (void)generateCandidatesWithKeyboardContext:(id)context;
- (void)installGeneratorForSource:(int64_t)source;
- (void)installGeneratorsForSources:(id)sources;
- (void)receiveExternalAutocorrectionUpdate:(id)update requestToken:(id)token;
- (void)receiveExternalCandidateResultSet:(id)set requestToken:(id)token;
- (void)syncToKeyboardState:(id)state;
@end

@implementation TUIKeyboardCandidateMultiplexer

- (TUIKeyboardCandidateMultiplexer)init
{
  v13.receiver = self;
  v13.super_class = TUIKeyboardCandidateMultiplexer;
  v2 = [(TUIKeyboardCandidateMultiplexer *)&v13 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    generators = v2->_generators;
    v2->_generators = dictionary;

    v5 = [[_TUIGeneratorResultAccumulatorCache alloc] initWithSize:20];
    pendingRequests = v2->_pendingRequests;
    v2->_pendingRequests = v5;

    v2->_enableKbdSource = 0;
    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v8 = dispatch_queue_create("com.apple.TextInputUI.CandidateMux.Internal", v7);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v8;

    v10 = dispatch_queue_create("com.apple.TextInputUI.CandidateMux.Receiver", v7);
    receiverQueue = v2->_receiverQueue;
    v2->_receiverQueue = v10;
  }

  return v2;
}

- (TUIKeyboardCandidateReceiver)candidateReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_candidateReceiver);

  return WeakRetained;
}

- (NSString)debugDescription
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8277;
  v11 = __Block_byref_object_dispose__8278;
  v12 = 0;
  internalQueue = [(TUIKeyboardCandidateMultiplexer *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__TUIKeyboardCandidateMultiplexer_debugDescription__block_invoke;
  block[3] = &unk_1E72D7CC8;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(internalQueue, block);

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p, enabledGenerators: %@>", objc_opt_class(), self, v8[5]];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __51__TUIKeyboardCandidateMultiplexer_debugDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queueOnly_enabledGenerators];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (BOOL)_queueOnly_willHandleDeliveryForCandidates:(id)candidates requestToken:(id)token
{
  v26 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  candidatesCopy = candidates;
  v8 = [_TUIKeyboardCandidateContainer forSourceType:0 withAutocorrectionList:candidatesCopy];
  predictions = [candidatesCopy predictions];

  lastObject = [predictions lastObject];

  customInfoType = [lastObject customInfoType];
  v12 = (customInfoType >> 5) & 1;
  if ((customInfoType & 0x20) != 0)
  {
    v15 = [(TUIKeyboardCandidateMultiplexer *)self _queueOnly_cachedResultAccumulatorForRequestToken:tokenCopy type:0];
    v16 = v15;
    if (v15 && self->_enableKbdSource)
    {
      context = [v15 context];
      v13 = [(TUIKeyboardCandidateMultiplexer *)self _queueOnly_resultAccumulatorForContext:context type:v12 enabledCandidateSources:&unk_1F03D9008];
    }

    else
    {
      v13 = 0;
    }

    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_11:
    [(TUIKeyboardCandidateMultiplexer *)self _didReceiveCandidateResults:v8 forAccumulator:v13];
    goto LABEL_12;
  }

  v13 = [(TUIKeyboardCandidateMultiplexer *)self _queueOnly_cachedResultAccumulatorForRequestToken:tokenCopy type:v12];
  if (v13)
  {
    goto LABEL_11;
  }

LABEL_3:
  v14 = TUICandidateGenerationLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    shortIdentifier = [tokenCopy shortIdentifier];
    v20 = 136315650;
    uTF8String = [shortIdentifier UTF8String];
    v22 = 1024;
    v23 = v12;
    v24 = 2080;
    v25 = "[TUIKeyboardCandidateMultiplexer _queueOnly_willHandleDeliveryForCandidates:requestToken:]";
    _os_log_error_impl(&dword_18FFDC000, v14, OS_LOG_TYPE_ERROR, "Could not find cached accumulator for token=%s type:%u in %s", &v20, 0x1Cu);
  }

LABEL_12:
  return v13 != 0;
}

- (BOOL)willHandleDeliveryForCandidates:(id)candidates requestToken:(id)token
{
  candidatesCopy = candidates;
  tokenCopy = token;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = [(TUIKeyboardCandidateMultiplexer *)self internalQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__TUIKeyboardCandidateMultiplexer_willHandleDeliveryForCandidates_requestToken___block_invoke;
  v12[3] = &unk_1E72D7CA0;
  v12[4] = self;
  v13 = candidatesCopy;
  v14 = tokenCopy;
  v15 = &v16;
  v9 = tokenCopy;
  v10 = candidatesCopy;
  dispatch_sync(internalQueue, v12);

  LOBYTE(candidatesCopy) = *(v17 + 24);
  _Block_object_dispose(&v16, 8);
  return candidatesCopy;
}

uint64_t __80__TUIKeyboardCandidateMultiplexer_willHandleDeliveryForCandidates_requestToken___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queueOnly_willHandleDeliveryForCandidates:*(a1 + 40) requestToken:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)syncToKeyboardState:(id)state
{
  v4 = [state copy];
  internalQueue = [(TUIKeyboardCandidateMultiplexer *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__TUIKeyboardCandidateMultiplexer_syncToKeyboardState___block_invoke;
  v7[3] = &unk_1E72D85E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __55__TUIKeyboardCandidateMultiplexer_syncToKeyboardState___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) generators];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 syncToKeyboardState:*(a1 + 40)];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_sendSmartResponsesTelemetryForCandidates:(id)candidates forKeyboardState:(id)state
{
  candidatesCopy = candidates;
  stateCopy = state;
  inputContextHistory = [stateCopy inputContextHistory];
  threadIdentifier = [inputContextHistory threadIdentifier];

  if ([candidatesCopy hasCandidates])
  {
    candidateResultSet = [candidatesCopy candidateResultSet];
    autocorrectionList = [candidatesCopy autocorrectionList];
    v10 = autocorrectionList;
    if (candidateResultSet)
    {
      candidates = [candidateResultSet candidates];
    }

    else
    {
      corrections = [autocorrectionList corrections];
      candidates = [corrections alternateCorrections];
    }

    firstObject = [candidates firstObject];
    candidateProperty = [firstObject candidateProperty];

    if ((candidateProperty & 2) != 0 && threadIdentifier)
    {
      inputContextHistory2 = +[TUISmartReplyGenerator sharedInstance];
      v16 = [inputContextHistory2 conversationType:stateCopy];
      mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier = [mainBundle bundleIdentifier];
      [TUIInputAnalytics didHandleSmartReplyAnalyticsEventOfType:4 withBundleId:bundleIdentifier withInputContextHistoryRequestId:0 withMsgOrMailThreadId:threadIdentifier withSmartReplyResponse:0 withConversationType:v16];
    }

    else
    {
      firstObject2 = [candidates firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0 || !threadIdentifier)
      {
        goto LABEL_12;
      }

      inputContextHistory2 = [stateCopy inputContextHistory];
      [TUIInputAnalytics sendSmartRepliesPollActionShownSignalWithInputContextHistory:inputContextHistory2];
    }

LABEL_12:
  }
}

- (void)_queueOnly_performUpdatesToCandidateReceiverForRequest:(id)request type:(int)type didTimeout:(BOOL)timeout
{
  v5 = *&type;
  v60 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (v5 == 1 || ([(_TUIGeneratorResultAccumulatorCache *)self->_pendingRequests accumulatorForToken:requestCopy type:1], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v9 = [(_TUIGeneratorResultAccumulatorCache *)self->_pendingRequests accumulatorForToken:requestCopy type:v5];
    v10 = v9;
    if (!v9)
    {
LABEL_23:

      goto LABEL_24;
    }

    v11 = [v9 containerForCandidateSource:4];
    hasCandidates = [v11 hasCandidates];

    if (hasCandidates)
    {
      v13 = TUICandidateGenerationLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        shortIdentifier = [requestCopy shortIdentifier];
        v15 = shortIdentifier;
        v16 = "N";
        if (v5 == 2)
        {
          v16 = "Y";
        }

        *buf = 138412546;
        v57 = shortIdentifier;
        v58 = 2080;
        v59 = v16;
      }

      v17 = v10;
      v18 = 4;
LABEL_14:
      v23 = [v17 containerForCandidateSource:v18];
      keyboardState = [v10 keyboardState];
      [(TUIKeyboardCandidateMultiplexer *)self _sendSmartResponsesTelemetryForCandidates:v23 forKeyboardState:keyboardState];
LABEL_15:

LABEL_16:
      v25 = TUICandidateGenerationLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        shortIdentifier2 = [requestCopy shortIdentifier];
        *buf = 138412546;
        v57 = v23;
        v58 = 2112;
        v59 = shortIdentifier2;
        _os_log_impl(&dword_18FFDC000, v25, OS_LOG_TYPE_DEFAULT, "Preparing to push %@ to candidate receiver, for request token: %@", buf, 0x16u);
      }

      if (v23)
      {
        receiverQueue = [(TUIKeyboardCandidateMultiplexer *)self receiverQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __106__TUIKeyboardCandidateMultiplexer__queueOnly_performUpdatesToCandidateReceiverForRequest_type_didTimeout___block_invoke;
        block[3] = &unk_1E72D80E8;
        v53 = v23;
        v54 = requestCopy;
        selfCopy = self;
        dispatch_async(receiverQueue, block);

        v28 = v53;
      }

      else
      {
        v28 = TUICandidateGenerationLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          shortIdentifier3 = [requestCopy shortIdentifier];
          *buf = 138412290;
          v57 = shortIdentifier3;
          _os_log_error_impl(&dword_18FFDC000, v28, OS_LOG_TYPE_ERROR, "containerToPush is nil, will not push anything to candidate receiver for request token: %@", buf, 0xCu);
        }
      }

      goto LABEL_23;
    }

    v19 = [v10 containerForCandidateSource:2];
    hasCandidates2 = [v19 hasCandidates];

    if (hasCandidates2)
    {
      v21 = TUICandidateGenerationLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        shortIdentifier4 = [requestCopy shortIdentifier];
        *buf = 138412290;
        v57 = shortIdentifier4;
      }

      v17 = v10;
      v18 = 2;
      goto LABEL_14;
    }

    v29 = [v10 containerForCandidateSource:1];
    hasCandidates3 = [v29 hasCandidates];

    if (hasCandidates3)
    {
      v31 = TUICandidateGenerationLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        shortIdentifier5 = [requestCopy shortIdentifier];
        *buf = 138412290;
        v57 = shortIdentifier5;
      }

      v33 = v10;
      v34 = 1;
LABEL_29:
      v23 = [v33 containerForCandidateSource:v34];
      goto LABEL_16;
    }

    v35 = [v10 containerForCandidateSource:3];
    hasCandidates4 = [v35 hasCandidates];

    if (hasCandidates4)
    {
      v37 = TUICandidateGenerationLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        shortIdentifier6 = [requestCopy shortIdentifier];
        *buf = 138412290;
        v57 = shortIdentifier6;
      }

      v39 = [v10 containerForCandidateSource:3];
      keyboardState = [v39 autocorrectionList];

      v40 = [v10 containerForCandidateSource:0];
      autocorrectionList = [v40 autocorrectionList];

      v42 = [(TUIKeyboardCandidateMultiplexer *)self _queueOnly_mergeKBDCorrections:autocorrectionList withTextEffectsCorrections:keyboardState];
      v23 = [_TUIKeyboardCandidateContainer forSourceType:3 withAutocorrectionList:v42];

      goto LABEL_15;
    }

    v43 = [v10 containerForCandidateSource:0];
    hasCandidates5 = [v43 hasCandidates];

    if (hasCandidates5)
    {
      context = [v10 context];
      usesCandidateSelection = [context usesCandidateSelection];

      if ((usesCandidateSelection & 1) == 0)
      {
        v47 = TUICandidateGenerationLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          shortIdentifier7 = [requestCopy shortIdentifier];
          *buf = 138412290;
          v57 = shortIdentifier7;
        }

        v33 = v10;
        v34 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v49 = TUICandidateGenerationLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        shortIdentifier8 = [requestCopy shortIdentifier];
        *buf = 138412290;
        v57 = shortIdentifier8;
      }
    }

    v23 = 0;
    goto LABEL_16;
  }

LABEL_24:
}

void __106__TUIKeyboardCandidateMultiplexer__queueOnly_performUpdatesToCandidateReceiverForRequest_type_didTimeout___block_invoke(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [a1[4] autocorrectionList];

  if (v2)
  {
    v3 = TUICandidateGenerationLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [a1[5] shortIdentifier];
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_18FFDC000, v3, OS_LOG_TYPE_DEFAULT, "containerToPush has an autocorrection list.  pushing to candidate receiver with request token. %@.", &v11, 0xCu);
    }

    v5 = [a1[6] candidateReceiver];
    v6 = [a1[4] autocorrectionList];
    [v5 pushAutocorrections:v6 requestToken:a1[5]];
LABEL_9:

    goto LABEL_10;
  }

  v7 = [a1[4] candidateResultSet];

  v8 = TUICandidateGenerationLog();
  v5 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [a1[5] shortIdentifier];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_18FFDC000, v5, OS_LOG_TYPE_DEFAULT, "containerToPush has an candidate result set.  pushing to candidate receiver with request token. %@.", &v11, 0xCu);
    }

    v5 = [a1[6] candidateReceiver];
    v6 = [a1[4] candidateResultSet];
    [v5 pushCandidateResultSet:v6 requestToken:a1[5]];
    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v10 = [a1[5] shortIdentifier];
    v11 = 138412290;
    v12 = v10;
    _os_log_error_impl(&dword_18FFDC000, v5, OS_LOG_TYPE_ERROR, "containerToPush is contained no valid candidates., will not push anything to candidate receiver for request token: %@", &v11, 0xCu);
  }

LABEL_10:
}

- (id)_queueOnly_mergeKBDCorrections:(id)corrections withTextEffectsCorrections:(id)effectsCorrections
{
  correctionsCopy = corrections;
  effectsCorrectionsCopy = effectsCorrections;
  v7 = effectsCorrectionsCopy;
  if (!(correctionsCopy | effectsCorrectionsCopy))
  {
    v8 = 0;
    goto LABEL_18;
  }

  if (!correctionsCopy)
  {
    v25 = effectsCorrectionsCopy;
LABEL_17:
    v8 = v25;
    goto LABEL_18;
  }

  if (!effectsCorrectionsCopy)
  {
    v25 = correctionsCopy;
    goto LABEL_17;
  }

  corrections = [effectsCorrectionsCopy corrections];

  if (corrections)
  {
    v10 = v7;
  }

  else
  {
    v10 = correctionsCopy;
  }

  corrections2 = [v10 corrections];
  array = [MEMORY[0x1E695DF70] array];
  predictions = [v7 predictions];
  if (predictions)
  {
    v14 = predictions;
    predictions2 = [v7 predictions];
    v16 = [predictions2 count];

    if (v16)
    {
      predictions3 = [v7 predictions];
      v18 = [predictions3 objectAtIndexedSubscript:0];
      [array addObject:v18];
    }
  }

  predictions4 = [correctionsCopy predictions];
  if (predictions4)
  {
    v20 = predictions4;
    predictions5 = [correctionsCopy predictions];
    v22 = [predictions5 count];

    if (v22)
    {
      predictions6 = [correctionsCopy predictions];
      v24 = [predictions6 objectAtIndexedSubscript:0];
      [array addObject:v24];
    }
  }

  v8 = [MEMORY[0x1E69D9570] listWithCorrections:corrections2 predictions:array];

LABEL_18:

  return v8;
}

- (void)_queueOnly_candidateAccepted:(id)accepted keyboardState:(id)state candidateRequestToken:(id)token
{
  acceptedCopy = accepted;
  stateCopy = state;
  tokenCopy = token;
  _queueOnly_enabledGenerators = [(TUIKeyboardCandidateMultiplexer *)self _queueOnly_enabledGenerators];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __100__TUIKeyboardCandidateMultiplexer__queueOnly_candidateAccepted_keyboardState_candidateRequestToken___block_invoke;
  v15[3] = &unk_1E72D7C78;
  v16 = acceptedCopy;
  v17 = stateCopy;
  v18 = tokenCopy;
  v12 = tokenCopy;
  v13 = stateCopy;
  v14 = acceptedCopy;
  [_queueOnly_enabledGenerators enumerateObjectsUsingBlock:v15];
}

void __100__TUIKeyboardCandidateMultiplexer__queueOnly_candidateAccepted_keyboardState_candidateRequestToken___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 candidateAccepted:a1[4] keyboardState:a1[5] candidateRequestToken:a1[6]];
  }
}

- (void)candidateAccepted:(id)accepted keyboardState:(id)state candidateRequestToken:(id)token
{
  acceptedCopy = accepted;
  tokenCopy = token;
  v10 = [state copy];
  internalQueue = [(TUIKeyboardCandidateMultiplexer *)self internalQueue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __89__TUIKeyboardCandidateMultiplexer_candidateAccepted_keyboardState_candidateRequestToken___block_invoke;
  v15[3] = &unk_1E72D8110;
  v15[4] = self;
  v16 = acceptedCopy;
  v17 = v10;
  v18 = tokenCopy;
  v12 = tokenCopy;
  v13 = v10;
  v14 = acceptedCopy;
  dispatch_async(internalQueue, v15);
}

uint64_t __89__TUIKeyboardCandidateMultiplexer_candidateAccepted_keyboardState_candidateRequestToken___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _queueOnly_candidateAccepted:*(a1 + 40) keyboardState:*(a1 + 48) candidateRequestToken:*(a1 + 56)];
  result = [*(a1 + 40) candidateProperty];
  if ((result & 0x10) != 0)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 generateCandidatesForKeyboardState:v4 requestToken:v5];
  }

  return result;
}

- (void)candidateAccepted:(id)accepted generationContext:(id)context
{
  contextCopy = context;
  acceptedCopy = accepted;
  keyboardState = [contextCopy keyboardState];
  requestToken = [contextCopy requestToken];

  [(TUIKeyboardCandidateMultiplexer *)self candidateAccepted:acceptedCopy keyboardState:keyboardState candidateRequestToken:requestToken];
}

- (void)_didReceiveCandidateResults:(id)results forAccumulator:(id)accumulator
{
  v21 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  accumulatorCopy = accumulator;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  peekingGenerators = [(TUIKeyboardCandidateMultiplexer *)self peekingGenerators];
  v9 = [peekingGenerators countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(peekingGenerators);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        candidateSourceType = [v13 candidateSourceType];
        if (candidateSourceType != [resultsCopy candidateSourceType] && (objc_opt_respondsToSelector() & 1) != 0)
        {
          context = [accumulatorCopy context];
          [v13 peekAtCandidates:resultsCopy forContext:context];
        }
      }

      v10 = [peekingGenerators countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [accumulatorCopy updateWithContainer:resultsCopy];
}

- (void)_queueOnly_generateCandidatesForContext:(id)context delayed:(BOOL)delayed
{
  delayedCopy = delayed;
  v50 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = TUICandidateGenerationLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    requestToken = [contextCopy requestToken];
    shortIdentifier = [requestToken shortIdentifier];
    usesCandidateSelection = [contextCopy usesCandidateSelection];
    v30 = "N";
    if (usesCandidateSelection)
    {
      v31 = "Y";
    }

    else
    {
      v31 = "N";
    }

    *buf = 138412802;
    v45 = shortIdentifier;
    v47 = v31;
    v46 = 2080;
    if (delayedCopy)
    {
      v30 = "Y";
    }

    v48 = 2080;
    v49 = v30;
    _os_log_debug_impl(&dword_18FFDC000, v7, OS_LOG_TYPE_DEBUG, "multiplexer:generateCandidatesForKeyboardState (tokenID=%@, candSel=%s, delayed=%s)", buf, 0x20u);
  }

  if (!delayedCopy || (-[TUIKeyboardCandidateMultiplexer mostRecentRequest](self, "mostRecentRequest"), v8 = objc_claimAutoreleasedReturnValue(), [contextCopy requestToken], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isSameRequestAs:", v9), v9, v8, v10))
  {
    requestToken2 = [contextCopy requestToken];
    [(TUIKeyboardCandidateMultiplexer *)self setMostRecentRequest:requestToken2];

    _queueOnly_enabledGenerators = [(TUIKeyboardCandidateMultiplexer *)self _queueOnly_enabledGenerators];
    if (![_queueOnly_enabledGenerators count] || (-[TUIKeyboardCandidateMultiplexer candidateReceiver](self, "candidateReceiver"), (v13 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_24:

      goto LABEL_25;
    }

    v14 = v13;
    requestToken3 = [contextCopy requestToken];

    if (requestToken3)
    {
      if (delayedCopy)
      {
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      _queueOnly_enabledGenerators = [(TUIKeyboardCandidateMultiplexer *)self _queueOnly_enabledGeneratorsForAccumulatorType:v16 context:contextCopy];
      v17 = [(TUIKeyboardCandidateMultiplexer *)self _queueOnly_enabledSourceTypesWithGenerators:_queueOnly_enabledGenerators accumulatorType:v16 context:contextCopy];
      v18 = v17;
      if (!delayedCopy || [v17 count])
      {
        v33 = v18;
        v34 = contextCopy;
        v32 = [(TUIKeyboardCandidateMultiplexer *)self _queueOnly_resultAccumulatorForContext:contextCopy type:v16 enabledCandidateSources:v18];
        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v20 = _queueOnly_enabledGenerators;
        v21 = [v20 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v40;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v40 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v39 + 1) + 8 * i);
              if ((objc_opt_respondsToSelector() & 1) != 0 && [v25 wantsToPeekAtCandidates])
              {
                [v19 addObject:v25];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v39 objects:v43 count:16];
          }

          while (v22);
        }

        [(TUIKeyboardCandidateMultiplexer *)self setPeekingGenerators:v19];
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __83__TUIKeyboardCandidateMultiplexer__queueOnly_generateCandidatesForContext_delayed___block_invoke;
        v35[3] = &unk_1E72D7C50;
        contextCopy = v34;
        v36 = v34;
        selfCopy = self;
        v38 = v32;
        v26 = v32;
        [v20 enumerateObjectsUsingBlock:v35];

        v18 = v33;
      }

      goto LABEL_24;
    }
  }

LABEL_25:
}

void __83__TUIKeyboardCandidateMultiplexer__queueOnly_generateCandidatesForContext_delayed___block_invoke(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__TUIKeyboardCandidateMultiplexer__queueOnly_generateCandidatesForContext_delayed___block_invoke_2;
  v5[3] = &unk_1E72D7C28;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 generateCandidatesWithContext:v3 completion:v5];
}

void __83__TUIKeyboardCandidateMultiplexer__queueOnly_generateCandidatesForContext_delayed___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__TUIKeyboardCandidateMultiplexer__queueOnly_generateCandidatesForContext_delayed___block_invoke_3;
  block[3] = &unk_1E72D80E8;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

- (void)_queueOnly_generateCandidatesForKeyboardState:(id)state requestToken:(id)token usesCandidateSelection:(BOOL)selection
{
  selectionCopy = selection;
  tokenCopy = token;
  stateCopy = state;
  v10 = [[_TUIKeyboardCandidateGenerationContext alloc] initWith:stateCopy requestToken:tokenCopy usesCandidateSelection:selectionCopy keyboardSuggestionOptions:[(TUIKeyboardCandidateMultiplexer *)self keyboardSuggestionOptions]];

  [(TUIKeyboardCandidateMultiplexer *)self _queueOnly_generateCandidatesForContext:v10 delayed:0];
}

- (void)generateCandidatesForKeyboardState:(id)state requestToken:(id)token
{
  tokenCopy = token;
  v7 = [state copy];
  internalQueue = [(TUIKeyboardCandidateMultiplexer *)self internalQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__TUIKeyboardCandidateMultiplexer_generateCandidatesForKeyboardState_requestToken___block_invoke;
  block[3] = &unk_1E72D80E8;
  block[4] = self;
  v12 = v7;
  v13 = tokenCopy;
  v9 = tokenCopy;
  v10 = v7;
  dispatch_async(internalQueue, block);
}

- (void)generateCandidatesWithKeyboardContext:(id)context
{
  contextCopy = context;
  internalQueue = [(TUIKeyboardCandidateMultiplexer *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__TUIKeyboardCandidateMultiplexer_generateCandidatesWithKeyboardContext___block_invoke;
  v7[3] = &unk_1E72D85E0;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(internalQueue, v7);
}

void __73__TUIKeyboardCandidateMultiplexer_generateCandidatesWithKeyboardContext___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = [*(a1 + 40) keyboardState];
  v3 = [*(a1 + 40) requestToken];
  [v2 _queueOnly_generateCandidatesForKeyboardState:v4 requestToken:v3 usesCandidateSelection:{objc_msgSend(*(a1 + 40), "usesCandidateSelection")}];
}

- (id)_queueOnly_resultAccumulatorForContext:(id)context type:(int)type enabledCandidateSources:(id)sources
{
  v6 = *&type;
  v47 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  sourcesCopy = sources;
  requestToken = [contextCopy requestToken];
  v11 = [(TUIKeyboardCandidateMultiplexer *)self _queueOnly_cachedResultAccumulatorForRequestToken:requestToken type:v6];

  if (v11)
  {
    v12 = TUICandidateGenerationLog();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    requestToken2 = [contextCopy requestToken];
    shortIdentifier = [requestToken2 shortIdentifier];
    *buf = 136315650;
    uTF8String = [shortIdentifier UTF8String];
    v43 = 1024;
    v44 = v6;
    v45 = 2080;
    v46 = "[TUIKeyboardCandidateMultiplexer _queueOnly_resultAccumulatorForContext:type:enabledCandidateSources:]";
    _os_log_error_impl(&dword_18FFDC000, v12, OS_LOG_TYPE_ERROR, "Unexpected accumulator cache hit for token=%s type:%u in %s", buf, 0x1Cu);
  }

  else
  {
    if (v6 == 1)
    {
      pendingRequests = self->_pendingRequests;
      requestToken3 = [contextCopy requestToken];
      v17 = [(_TUIGeneratorResultAccumulatorCache *)pendingRequests accumulatorForToken:requestToken3 type:0];

      if (([v17 areAllGeneratorsComplete] & 1) == 0)
      {
        v18 = [MEMORY[0x1E69D9570] listWithCorrections:0 predictions:MEMORY[0x1E695E0F0]];
        v19 = [_TUIKeyboardCandidateContainer forSourceType:0 withAutocorrectionList:v18];
        [v17 updateWithContainer:v19];
      }
    }

    v20 = [_TUIGeneratorResultAccumulatorPolicy policyForContext:contextCopy enabledCandidateSources:sourcesCopy];
    keyboardState = [contextCopy keyboardState];
    textInputTraits = [keyboardState textInputTraits];
    secureTextEntry = [textInputTraits secureTextEntry];

    if (secureTextEntry)
    {
      v24 = objc_alloc_init(MEMORY[0x1E69D9660]);
      v25 = [_TUIKeyboardCandidateGenerationContext alloc];
      requestToken4 = [contextCopy requestToken];
      v12 = -[_TUIKeyboardCandidateGenerationContext initWith:requestToken:usesCandidateSelection:keyboardSuggestionOptions:](v25, "initWith:requestToken:usesCandidateSelection:keyboardSuggestionOptions:", v24, requestToken4, [contextCopy usesCandidateSelection], -[TUIKeyboardCandidateMultiplexer keyboardSuggestionOptions](self, "keyboardSuggestionOptions"));
    }

    else
    {
      v12 = contextCopy;
    }

    v27 = [_TUIGeneratorResultAccumulator alloc];
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __103__TUIKeyboardCandidateMultiplexer__queueOnly_resultAccumulatorForContext_type_enabledCandidateSources___block_invoke;
    v36 = &unk_1E72D7C00;
    selfCopy = self;
    v40 = v6;
    v38 = contextCopy;
    v39 = v20;
    requestToken2 = v20;
    v28 = [(_TUIGeneratorResultAccumulator *)v27 initWithRequestContext:v12 enabledCandidateSources:sourcesCopy policy:requestToken2 onComplete:&v33];
    [(_TUIGeneratorResultAccumulatorCache *)self->_pendingRequests addToCache:v28 type:v6, v33, v34, v35, v36, selfCopy];
  }

LABEL_13:
  v29 = self->_pendingRequests;
  requestToken5 = [contextCopy requestToken];
  v31 = [(_TUIGeneratorResultAccumulatorCache *)v29 accumulatorForToken:requestToken5 type:v6];

  return v31;
}

void __103__TUIKeyboardCandidateMultiplexer__queueOnly_resultAccumulatorForContext_type_enabledCandidateSources___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __103__TUIKeyboardCandidateMultiplexer__queueOnly_resultAccumulatorForContext_type_enabledCandidateSources___block_invoke_2;
  v6[3] = &unk_1E72D7BD8;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  v9 = *(a1 + 56);
  v10 = a2;
  v8 = *(a1 + 48);
  dispatch_async(v4, v6);
}

void __103__TUIKeyboardCandidateMultiplexer__queueOnly_resultAccumulatorForContext_type_enabledCandidateSources___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) requestToken];
  [v2 _queueOnly_performUpdatesToCandidateReceiverForRequest:v3 type:*(a1 + 56) didTimeout:*(a1 + 60)];

  if (!*(a1 + 56))
  {
    v4 = [*(a1 + 32) mostRecentRequest];
    v5 = [*(a1 + 40) requestToken];
    v6 = [v4 isSameRequestAs:v5];

    if (v6)
    {
      [*(a1 + 48) delayedGenerationInterval];
      v8 = dispatch_time(0, (v7 * 1000000000.0));
      v9 = [*(a1 + 32) internalQueue];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __103__TUIKeyboardCandidateMultiplexer__queueOnly_resultAccumulatorForContext_type_enabledCandidateSources___block_invoke_3;
      v12[3] = &unk_1E72D85E0;
      v10 = *(a1 + 40);
      v11 = *(a1 + 32);
      v13 = v10;
      v14 = v11;
      dispatch_after(v8, v9, v12);
    }
  }
}

uint64_t __103__TUIKeyboardCandidateMultiplexer__queueOnly_resultAccumulatorForContext_type_enabledCandidateSources___block_invoke_3(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUICandidateGenerationLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) requestToken];
    v4 = [v3 shortIdentifier];
    v6 = 136315138;
    v7 = [v4 UTF8String];
    _os_log_impl(&dword_18FFDC000, v2, OS_LOG_TYPE_DEFAULT, "Performing delayed generation for token=%s", &v6, 0xCu);
  }

  return [*(a1 + 40) _queueOnly_generateCandidatesForContext:*(a1 + 32) delayed:1];
}

- (id)_queueOnly_enabledSourceTypesWithGenerators:(id)generators accumulatorType:(int)type context:(id)context
{
  generatorsCopy = generators;
  v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(generatorsCopy, "count") + 1}];
  v9 = v8;
  if (type != 2 && self->_enableKbdSource)
  {
    [v8 addObject:&unk_1F03D8D50];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __103__TUIKeyboardCandidateMultiplexer__queueOnly_enabledSourceTypesWithGenerators_accumulatorType_context___block_invoke;
  v13[3] = &unk_1E72D7BB0;
  v14 = v9;
  v10 = v9;
  [generatorsCopy enumerateObjectsUsingBlock:v13];
  allObjects = [v10 allObjects];

  return allObjects;
}

void __103__TUIKeyboardCandidateMultiplexer__queueOnly_enabledSourceTypesWithGenerators_accumulatorType_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a2, "candidateSourceType")}];
  [v2 addObject:v3];
}

- (id)_queueOnly_enabledGeneratorsForAccumulatorType:(int)type context:(id)context
{
  contextCopy = context;
  keyboardState = [contextCopy keyboardState];
  documentState = [keyboardState documentState];
  [documentState documentIsEmpty];

  keyboardState2 = [contextCopy keyboardState];
  [keyboardState2 inputContextHistory];

  generators = [(TUIKeyboardCandidateMultiplexer *)self generators];
  allValues = [generators allValues];

  if (type == 2)
  {
    keyboardState3 = [contextCopy keyboardState];
    documentState2 = [keyboardState3 documentState];
    [documentState2 documentIsEmpty];

    v12 = &__block_literal_global_21;
  }

  else if (type == 1)
  {
    v12 = &__block_literal_global_19;
  }

  else if (type)
  {
    v12 = 0;
  }

  else
  {
    v12 = &__block_literal_global_17;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __90__TUIKeyboardCandidateMultiplexer__queueOnly_enabledGeneratorsForAccumulatorType_context___block_invoke_4;
  v18[3] = &unk_1E72D7B88;
  v19 = v12;
  v15 = [allValues indexesOfObjectsPassingTest:v18];
  v16 = [allValues objectsAtIndexes:v15];

  return v16;
}

uint64_t __90__TUIKeyboardCandidateMultiplexer__queueOnly_enabledGeneratorsForAccumulatorType_context___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 candidateSourceType] == 4)
  {
    v3 = [v2 enabled];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t __90__TUIKeyboardCandidateMultiplexer__queueOnly_enabledGeneratorsForAccumulatorType_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 candidateSourceType] == 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 enabled];
  }

  return v3;
}

- (id)_queueOnly_enabledGenerators
{
  generators = [(TUIKeyboardCandidateMultiplexer *)self generators];
  allValues = [generators allValues];

  v4 = [allValues indexesOfObjectsPassingTest:&__block_literal_global_8332];
  v5 = [allValues objectsAtIndexes:v4];

  return v5;
}

- (void)addGenerator:(id)generator
{
  generatorCopy = generator;
  internalQueue = [(TUIKeyboardCandidateMultiplexer *)self internalQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__TUIKeyboardCandidateMultiplexer_addGenerator___block_invoke;
  v7[3] = &unk_1E72D85E0;
  v7[4] = self;
  v8 = generatorCopy;
  v6 = generatorCopy;
  dispatch_async(internalQueue, v7);
}

void __48__TUIKeyboardCandidateMultiplexer_addGenerator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) generators];
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "candidateSourceType")}];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = TUICandidateGenerationLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_18FFDC000, v5, OS_LOG_TYPE_ERROR, "generator of same source type already exists, should only be one per source", v9, 2u);
    }
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) generators];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "candidateSourceType")}];
  [v7 setObject:v6 forKeyedSubscript:v8];
}

- (void)receiveExternalCandidateResultSet:(id)set requestToken:(id)token
{
  v17 = *MEMORY[0x1E69E9840];
  setCopy = set;
  tokenCopy = token;
  if (self->_enableKbdSource)
  {
    v8 = TUICandidateGenerationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      candidates = [setCopy candidates];
      *buf = 134217984;
      v16 = [candidates count];
      _os_log_error_impl(&dword_18FFDC000, v8, OS_LOG_TYPE_ERROR, "Received external candidate resultset. Total number of candidates: %lu", buf, 0xCu);
    }

    internalQueue = [(TUIKeyboardCandidateMultiplexer *)self internalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__TUIKeyboardCandidateMultiplexer_receiveExternalCandidateResultSet_requestToken___block_invoke;
    block[3] = &unk_1E72D80E8;
    v12 = setCopy;
    selfCopy = self;
    v14 = tokenCopy;
    dispatch_async(internalQueue, block);
  }
}

void __82__TUIKeyboardCandidateMultiplexer_receiveExternalCandidateResultSet_requestToken___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [_TUIKeyboardCandidateContainer forSourceType:0 withKeyboardCandidateResultSet:*(a1 + 32)];
  v3 = [*(a1 + 40) _queueOnly_cachedResultAccumulatorForRequestToken:*(a1 + 48) type:0];
  if (v3)
  {
    [*(a1 + 40) _didReceiveCandidateResults:v2 forAccumulator:v3];
  }

  else
  {
    v4 = TUICandidateGenerationLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 48) shortIdentifier];
      v6 = 136315650;
      v7 = [v5 UTF8String];
      v8 = 1024;
      v9 = 0;
      v10 = 2080;
      v11 = "[TUIKeyboardCandidateMultiplexer receiveExternalCandidateResultSet:requestToken:]_block_invoke";
      _os_log_error_impl(&dword_18FFDC000, v4, OS_LOG_TYPE_ERROR, "Could not find cached accumulator for token=%s type:%u in %s", &v6, 0x1Cu);
    }
  }
}

- (void)receiveExternalAutocorrectionUpdate:(id)update requestToken:(id)token
{
  updateCopy = update;
  tokenCopy = token;
  if (self->_enableKbdSource)
  {
    internalQueue = [(TUIKeyboardCandidateMultiplexer *)self internalQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__TUIKeyboardCandidateMultiplexer_receiveExternalAutocorrectionUpdate_requestToken___block_invoke;
    block[3] = &unk_1E72D80E8;
    v10 = updateCopy;
    selfCopy = self;
    v12 = tokenCopy;
    dispatch_async(internalQueue, block);
  }
}

void __84__TUIKeyboardCandidateMultiplexer_receiveExternalAutocorrectionUpdate_requestToken___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [_TUIKeyboardCandidateContainer forSourceType:0 withAutocorrectionList:*(a1 + 32)];
  v3 = [*(a1 + 40) _queueOnly_cachedResultAccumulatorForRequestToken:*(a1 + 48) type:0];
  if (v3)
  {
    [*(a1 + 40) _didReceiveCandidateResults:v2 forAccumulator:v3];
  }

  else
  {
    v4 = TUICandidateGenerationLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 48) shortIdentifier];
      v6 = 136315650;
      v7 = [v5 UTF8String];
      v8 = 1024;
      v9 = 0;
      v10 = 2080;
      v11 = "[TUIKeyboardCandidateMultiplexer receiveExternalAutocorrectionUpdate:requestToken:]_block_invoke";
      _os_log_error_impl(&dword_18FFDC000, v4, OS_LOG_TYPE_ERROR, "Could not find cached accumulator for token=%s type:%u in %s", &v6, 0x1Cu);
    }
  }
}

- (void)installGeneratorForSource:(int64_t)source
{
  internalQueue = [(TUIKeyboardCandidateMultiplexer *)self internalQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__TUIKeyboardCandidateMultiplexer_installGeneratorForSource___block_invoke;
  v6[3] = &unk_1E72D84B0;
  v6[4] = self;
  v6[5] = source;
  dispatch_async(internalQueue, v6);
}

void __61__TUIKeyboardCandidateMultiplexer_installGeneratorForSource___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = TUICandidateGenerationLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v13 = 136315394;
    v14 = "[TUIKeyboardCandidateMultiplexer installGeneratorForSource:]_block_invoke";
    v15 = 2048;
    v16 = v3;
    _os_log_impl(&dword_18FFDC000, v2, OS_LOG_TYPE_DEFAULT, "%s: Multiplexer is installing generator for source: %ld", &v13, 0x16u);
  }

  v4 = *(a1 + 40);
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v9 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
      v6 = [v9 currentInputMode];

      v10 = [(TUIMathCompletionGenerator *)v6 primaryLanguage];
      v11 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v10];
      v12 = [[TUITextEffectsGenerator alloc] initWithLocale:v11];
      [(TUITextEffectsGenerator *)v12 setEnabled:0];
      [*(a1 + 32) addGenerator:v12];

      goto LABEL_16;
    }

    if (v4 == 4)
    {
      v5 = objc_alloc_init(TUISmartActionGenerator);
      goto LABEL_10;
    }
  }

  else
  {
    if (v4 == 1)
    {
      v6 = objc_alloc_init(TUIMathCompletionGenerator);
      [(TUIMathCompletionGenerator *)v6 setEnabled:1];
      goto LABEL_14;
    }

    if (v4 == 2)
    {
      v5 = +[TUISmartReplyGenerator sharedInstance];
LABEL_10:
      v6 = v5;
      [(TUISmartActionGenerator *)v5 setEnabled:1];
      v7 = [*(a1 + 32) internalSharedClientWrapper];
      [(TUIMathCompletionGenerator *)v6 setTextComposerClient:v7];

LABEL_14:
      [*(a1 + 32) addGenerator:v6];
      goto LABEL_16;
    }
  }

  v6 = TUICandidateGenerationLog();
  if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v13 = 134217984;
    v14 = v8;
    _os_log_impl(&dword_18FFDC000, &v6->super, OS_LOG_TYPE_DEFAULT, "Candidate source type: %ld is not supported. Nothing to install.", &v13, 0xCu);
  }

LABEL_16:
}

- (void)installGeneratorsForSources:(id)sources
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __63__TUIKeyboardCandidateMultiplexer_installGeneratorsForSources___block_invoke;
  v3[3] = &unk_1E72D7B20;
  v3[4] = self;
  [sources enumerateObjectsUsingBlock:v3];
}

uint64_t __63__TUIKeyboardCandidateMultiplexer_installGeneratorsForSources___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 installGeneratorForSource:v3];
}

- (_TtC11TextInputUI28TUITextComposerClientWrapper)internalSharedClientWrapper
{
  internalSharedClientWrapper = self->_internalSharedClientWrapper;
  if (!internalSharedClientWrapper)
  {
    v4 = objc_alloc_init(_TtC11TextInputUI28TUITextComposerClientWrapper);
    v5 = self->_internalSharedClientWrapper;
    self->_internalSharedClientWrapper = v4;

    internalSharedClientWrapper = self->_internalSharedClientWrapper;
  }

  return internalSharedClientWrapper;
}

@end