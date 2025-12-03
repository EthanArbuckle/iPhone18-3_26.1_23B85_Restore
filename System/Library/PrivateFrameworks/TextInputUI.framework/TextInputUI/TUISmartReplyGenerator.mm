@interface TUISmartReplyGenerator
+ (BOOL)emptyInputContext:(id)context withTrimmedCharacters:(id)characters;
+ (BOOL)emptyOutOfProcessKeyboardContext:(id)context;
+ (id)obscuredArrayDescription:(id)description;
+ (id)obscuredStringDescription:(id)description;
+ (id)sharedInstance;
+ (id)stringForSmartReplyType:(int64_t)type;
- (BOOL)_isGMAvailableForMailReply;
- (BOOL)_isGMAvailableForMailReplyLongFormBasic;
- (BOOL)_isGMAvailableForMessagesReply;
- (BOOL)_queueOnly_isSmartReplyAvailableForClientAndType:(int64_t)type;
- (BOOL)_queueOnly_shouldAllowResponse:(id)response;
- (BOOL)_staging_inputContextHistory_IsValid:(id)valid;
- (BOOL)contextHistoryDidChange:(id)change;
- (BOOL)hasPendingRequestForContext:(id)context historyDidChange:(BOOL)change;
- (BOOL)isEnabledForCurrentKeyboardState;
- (TIInputContextHistory)currentInputContextHistory;
- (TUISmartReplyGenerator)init;
- (_TtC11TextInputUI18TUINetworkObserver)networkObserver;
- (id)createTimerWithDelay:(unint64_t)delay onQueue:(id)queue handler:(id)handler;
- (int64_t)conversationType:(id)type;
- (void)_performGenerateCandidatesForContext:(id)context completion:(id)completion;
- (void)candidateAccepted:(id)accepted keyboardState:(id)state candidateRequestToken:(id)token;
- (void)createLocalTextComposerClientIfNeeded;
- (void)didObserveNetworkAvailabilityChange:(BOOL)change;
- (void)generateCandidatesWithContext:(id)context completion:(id)completion;
- (void)returnResults:(id)results requestIDStr:(id)str multiStageEntryPointCandidate:(id)candidate smartReplyType:(int64_t)type conversationType:(int64_t)conversationType usesCandidateSelection:(BOOL)selection forCompletion:(id)completion fromTimeout:(BOOL)self0;
- (void)shouldGenerateCandidatesForContext:(id)context completion:(id)completion;
- (void)syncToKeyboardState:(id)state;
@end

@implementation TUISmartReplyGenerator

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_2061);
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __40__TUISmartReplyGenerator_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(TUISmartReplyGenerator);

  return MEMORY[0x1EEE66BB8]();
}

- (TUISmartReplyGenerator)init
{
  v12.receiver = self;
  v12.super_class = TUISmartReplyGenerator;
  v2 = [(TUISmartReplyGenerator *)&v12 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    pendingCallbacks = v2->_pendingCallbacks;
    v2->_pendingCallbacks = array;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    acceptedCandidates = v2->_acceptedCandidates;
    v2->_acceptedCandidates = dictionary;

    v7 = dispatch_queue_create("com.apple.TextInputUI.SmartReplyGenerator.Generation", 0);
    generationQueue = v2->_generationQueue;
    v2->_generationQueue = v7;

    v9 = dispatch_queue_create("com.apple.TextInputUI.SmartReplyGenerator.Callback", MEMORY[0x1E69E96A8]);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v9;
  }

  return v2;
}

- (BOOL)isEnabledForCurrentKeyboardState
{
  currentKeyboardState = [(TUISmartReplyGenerator *)self currentKeyboardState];
  clientIdentifier = [currentKeyboardState clientIdentifier];
  v5 = [(TUISmartReplyGenerator *)self isClientMessages:clientIdentifier];

  if (!v5)
  {
    currentKeyboardState2 = [(TUISmartReplyGenerator *)self currentKeyboardState];
    clientIdentifier2 = [currentKeyboardState2 clientIdentifier];
    [(TUISmartReplyGenerator *)self isClientMail:clientIdentifier2];
  }

  return _os_feature_enabled_impl();
}

- (void)didObserveNetworkAvailabilityChange:(BOOL)change
{
  changeCopy = change;
  v6 = *MEMORY[0x1E69E9840];
  v4 = TUISmartReplyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67109120;
    v5[1] = changeCopy;
    _os_log_debug_impl(&dword_18FFDC000, v4, OS_LOG_TYPE_DEBUG, "Observed network availbility: %d", v5, 8u);
  }
}

- (id)createTimerWithDelay:(unint64_t)delay onQueue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, queue);
  if (v8)
  {
    v9 = dispatch_time(0, 1000000000 * delay);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(v8, handlerCopy);
    dispatch_resume(v8);
  }

  return v8;
}

- (TIInputContextHistory)currentInputContextHistory
{
  currentKeyboardState = [(TUISmartReplyGenerator *)self currentKeyboardState];
  inputContextHistory = [currentKeyboardState inputContextHistory];

  return inputContextHistory;
}

- (void)syncToKeyboardState:(id)state
{
  stateCopy = state;
  textInputTraits = [stateCopy textInputTraits];
  secureTextEntry = [textInputTraits secureTextEntry];

  if (secureTextEntry)
  {
    v7 = 0;
  }

  else
  {
    v7 = [stateCopy copy];
  }

  generationQueue = [(TUISmartReplyGenerator *)self generationQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__TUISmartReplyGenerator_syncToKeyboardState___block_invoke;
  v10[3] = &unk_1E72D85E0;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_sync(generationQueue, v10);
}

uint64_t __46__TUISmartReplyGenerator_syncToKeyboardState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentKeyboardState:*(a1 + 40)];
  v2 = [*(a1 + 32) isEnabledForCurrentKeyboardState];
  v3 = *(a1 + 32);

  return [v3 setEnabled:v2];
}

- (BOOL)_staging_inputContextHistory_IsValid:(id)valid
{
  validCopy = valid;
  if (objc_opt_respondsToSelector())
  {
    validateForSmartReplyGeneration = [validCopy validateForSmartReplyGeneration];
  }

  else
  {
    validateForSmartReplyGeneration = 1;
  }

  return validateForSmartReplyGeneration;
}

- (void)shouldGenerateCandidatesForContext:(id)context completion:(id)completion
{
  v67[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  keyboardState = [context keyboardState];
  v8 = keyboardState;
  if (!keyboardState)
  {
    v22 = TUISmartReplyLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:

      goto LABEL_11;
    }

    *buf = 0;
    v23 = "Cancelled smart reply generation due to no state";
LABEL_9:
    _os_log_impl(&dword_18FFDC000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
    goto LABEL_10;
  }

  textInputTraits = [keyboardState textInputTraits];
  secureTextEntry = [textInputTraits secureTextEntry];

  if (secureTextEntry)
  {
    goto LABEL_11;
  }

  documentState = [v8 documentState];
  markedText = [documentState markedText];
  v13 = [markedText length];

  if (v13)
  {
    goto LABEL_11;
  }

  documentState2 = [v8 documentState];
  contextBeforeInput = [documentState2 contextBeforeInput];
  v16 = [contextBeforeInput length];

  if (v16)
  {
    v17 = objc_opt_class();
    documentState3 = [v8 documentState];
    contextBeforeInput2 = [documentState3 contextBeforeInput];
    controlCharacterSet = [MEMORY[0x1E696AB08] controlCharacterSet];
    v67[0] = controlCharacterSet;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
    LOBYTE(v17) = [v17 emptyInputContext:contextBeforeInput2 withTrimmedCharacters:v21];

    if ((v17 & 1) == 0)
    {
LABEL_11:
      completionCopy[2](completionCopy, 0);
      goto LABEL_12;
    }
  }

  else
  {
    v24 = TUISmartReplyLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18FFDC000, v24, OS_LOG_TYPE_DEFAULT, "Document state contextBeforeInput length is zero.", buf, 2u);
    }
  }

  documentState4 = [v8 documentState];
  contextAfterInput = [documentState4 contextAfterInput];
  v27 = [contextAfterInput length];

  if (v27)
  {
    if ([MEMORY[0x1E69DCBB8] isKeyboardProcess])
    {
      v28 = objc_opt_class();
      documentState5 = [v8 documentState];
      contextAfterInput2 = [documentState5 contextAfterInput];
      LODWORD(v28) = [v28 emptyOutOfProcessKeyboardContext:contextAfterInput2];

      if (v28)
      {
        goto LABEL_11;
      }
    }

    else
    {
      currentKeyboardState = [(TUISmartReplyGenerator *)self currentKeyboardState];
      v32 = [(TUISmartReplyGenerator *)self conversationType:currentKeyboardState];

      controlCharacterSet2 = [MEMORY[0x1E696AB08] controlCharacterSet];
      v34 = controlCharacterSet2;
      if (v32 == 1)
      {
        v66[0] = controlCharacterSet2;
        newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
        v66[1] = newlineCharacterSet;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
      }

      else
      {
        v65 = controlCharacterSet2;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
      }

      v37 = objc_opt_class();
      documentState6 = [v8 documentState];
      contextAfterInput3 = [documentState6 contextAfterInput];
      LOBYTE(v37) = [v37 emptyInputContext:contextAfterInput3 withTrimmedCharacters:v36];

      if ((v37 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  documentState7 = [v8 documentState];
  selectedText = [documentState7 selectedText];
  v42 = [selectedText length];

  if (!v42)
  {
    goto LABEL_31;
  }

  clientIdentifier = [v8 clientIdentifier];
  v44 = [(TUISmartReplyGenerator *)self isClientMail:clientIdentifier];

  controlCharacterSet3 = [MEMORY[0x1E696AB08] controlCharacterSet];
  v46 = controlCharacterSet3;
  if (v44)
  {
    v64[0] = controlCharacterSet3;
    newlineCharacterSet2 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v64[1] = newlineCharacterSet2;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
  }

  else
  {
    v63 = controlCharacterSet3;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
  }

  v48 = objc_opt_class();
  documentState8 = [v8 documentState];
  selectedText2 = [documentState8 selectedText];
  LOBYTE(v48) = [v48 emptyInputContext:selectedText2 withTrimmedCharacters:v36];

  if ((v48 & 1) == 0)
  {
LABEL_36:
    completionCopy[2](completionCopy, 0);

    goto LABEL_12;
  }

LABEL_31:
  inputContextHistory = [v8 inputContextHistory];

  if (!inputContextHistory)
  {
    v22 = TUISmartReplyLog();
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *buf = 0;
    v23 = "Cancelled smart reply generation due to nil ICH";
    goto LABEL_9;
  }

  inputContextHistory2 = [v8 inputContextHistory];
  v53 = [(TUISmartReplyGenerator *)self _staging_inputContextHistory_IsValid:inputContextHistory2];

  if (!v53)
  {
    v22 = TUISmartReplyLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      inputContextHistory3 = [v8 inputContextHistory];
      v58 = [inputContextHistory3 debugDescription];
      *buf = 138477827;
      v62 = v58;
      _os_log_impl(&dword_18FFDC000, v22, OS_LOG_TYPE_DEFAULT, "Cancelled smart reply generation due to invalid ICH %{private}@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (-[TUISmartReplyGenerator conversationType:](self, "conversationType:", v8) == 1 && ([v8 clientIdentifier], v54 = objc_claimAutoreleasedReturnValue(), v55 = -[TUISmartReplyGenerator isClientMail:](self, "isClientMail:", v54), v54, v55))
  {
    networkObserver = [(TUISmartReplyGenerator *)self networkObserver];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __72__TUISmartReplyGenerator_shouldGenerateCandidatesForContext_completion___block_invoke;
    v59[3] = &unk_1E72D8160;
    v60 = completionCopy;
    [networkObserver isNetworkAvailableWithCompletion:v59];
  }

  else
  {
    completionCopy[2](completionCopy, 1);
  }

LABEL_12:
}

uint64_t __72__TUISmartReplyGenerator_shouldGenerateCandidatesForContext_completion___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = TUISmartReplyLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_18FFDC000, v3, OS_LOG_TYPE_DEFAULT, "Cancelled smart reply generation due to network access", v5, 2u);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)returnResults:(id)results requestIDStr:(id)str multiStageEntryPointCandidate:(id)candidate smartReplyType:(int64_t)type conversationType:(int64_t)conversationType usesCandidateSelection:(BOOL)selection forCompletion:(id)completion fromTimeout:(BOOL)self0
{
  selectionCopy = selection;
  v107 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  strCopy = str;
  candidateCopy = candidate;
  completionCopy = completion;
  v17 = TUISmartReplyLog();
  selfCopy = self;
  v65 = completionCopy;
  v66 = candidateCopy;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [objc_opt_class() obscuredArrayDescription:resultsCopy];
    v19 = [objc_opt_class() stringForSmartReplyType:type];
    v20 = objc_opt_class();
    candidate = [candidateCopy candidate];
    v22 = [v20 obscuredStringDescription:candidate];
    *buf = 138413315;
    v98 = strCopy;
    v99 = 2113;
    v100 = v18;
    v101 = 2112;
    v102 = v19;
    v103 = 2113;
    v104 = v22;
    v105 = 1024;
    timeoutCopy = timeout;
    _os_log_impl(&dword_18FFDC000, v17, OS_LOG_TYPE_DEFAULT, "Returning new smart reply candidates for request (ID: %@): %{private}@ type: %@, entry point candidate: %{private}@, timeout: %d", buf, 0x30u);

    completionCopy = v65;
  }

  responseTimer = [(TUISmartReplyGenerator *)self responseTimer];

  if (responseTimer)
  {
    responseTimer2 = [(TUISmartReplyGenerator *)self responseTimer];
    dispatch_source_cancel(responseTimer2);

    [(TUISmartReplyGenerator *)self setResponseTimer:0];
  }

  if ([resultsCopy count])
  {
    v62 = strCopy;
    array = [MEMORY[0x1E695DF70] array];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v63 = resultsCopy;
    obj = resultsCopy;
    v26 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
    pendingCallbacks2 = array;
    if (v26)
    {
      v27 = v26;
      v28 = *v91;
      v67 = (candidateCopy | type) == 0;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v91 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v90 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_respondsToSelector())
          {
            if (v67)
            {
              currentKeyboardState = [(TUISmartReplyGenerator *)selfCopy currentKeyboardState];
              v32 = [(TUISmartReplyGenerator *)selfCopy conversationType:currentKeyboardState];

              array = pendingCallbacks2;
              v33 = v32 == 1;
              candidateCopy = v66;
              v34 = 2;
              if (v33)
              {
                v34 = 18;
              }
            }

            else
            {
              v34 = 2;
            }

            if (type == 1)
            {
              v36 = v34 | 0x40;
            }

            else
            {
              v36 = v34;
            }

            v35 = [MEMORY[0x1E69D95F0] candidateWithCandidate:v30 forInput:&stru_1F03BA8F8 property:v36];
          }

          else
          {
            v35 = [MEMORY[0x1E69D95F0] candidateWithCandidate:v30 forInput:&stru_1F03BA8F8];
          }

          v37 = v35;
          if (candidateCopy && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v37 setSmartReplySourceCandidate:candidateCopy];
          }

          [array addObject:v37];
        }

        v27 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
      }

      while (v27);
    }

    v38 = [objc_alloc(MEMORY[0x1E69D9588]) initWithAutocorrection:0 alternateCorrections:array];
    obja = v38;
    if (selectionCopy)
    {
      v39 = [MEMORY[0x1E69D95E8] setWithCandidates:array];
      v40 = [_TUIKeyboardCandidateContainer forSourceType:2 withKeyboardCandidateResultSet:v39];
      v41 = selfCopy;
      v42 = v65;
    }

    else
    {
      v41 = selfCopy;
      v42 = v65;
      if (type > 1)
      {
        v39 = 0;
      }

      else
      {
        v39 = [MEMORY[0x1E69D9570] listWithCorrections:v38 predictions:array emojiList:0 inlineCompletions:0];
      }

      v40 = [_TUIKeyboardCandidateContainer forSourceType:2 withAutocorrectionList:v39];
    }

    if (v42)
    {
      v50 = [v42 copy];
      callbackQueue = [(TUISmartReplyGenerator *)v41 callbackQueue];
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __164__TUISmartReplyGenerator_returnResults_requestIDStr_multiStageEntryPointCandidate_smartReplyType_conversationType_usesCandidateSelection_forCompletion_fromTimeout___block_invoke;
      v87[3] = &unk_1E72D77D8;
      v89 = v50;
      v88 = v40;
      v52 = v50;
      dispatch_async(callbackQueue, v87);
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    pendingCallbacks = [(TUISmartReplyGenerator *)v41 pendingCallbacks];
    v54 = [pendingCallbacks countByEnumeratingWithState:&v83 objects:v95 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v84;
      do
      {
        for (j = 0; j != v55; ++j)
        {
          if (*v84 != v56)
          {
            objc_enumerationMutation(pendingCallbacks);
          }

          v58 = *(*(&v83 + 1) + 8 * j);
          callbackQueue2 = [(TUISmartReplyGenerator *)selfCopy callbackQueue];
          v80[0] = MEMORY[0x1E69E9820];
          v80[1] = 3221225472;
          v80[2] = __164__TUISmartReplyGenerator_returnResults_requestIDStr_multiStageEntryPointCandidate_smartReplyType_conversationType_usesCandidateSelection_forCompletion_fromTimeout___block_invoke_2;
          v80[3] = &unk_1E72D77D8;
          v82 = v58;
          v81 = v40;
          dispatch_async(callbackQueue2, v80);
        }

        v55 = [pendingCallbacks countByEnumeratingWithState:&v83 objects:v95 count:16];
      }

      while (v55);
    }

    strCopy = v62;
    resultsCopy = v63;
LABEL_53:
    self = selfCopy;
    completionCopy = v65;
    candidateCopy = v66;
    goto LABEL_54;
  }

  if (completionCopy)
  {
    callbackQueue3 = [(TUISmartReplyGenerator *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __164__TUISmartReplyGenerator_returnResults_requestIDStr_multiStageEntryPointCandidate_smartReplyType_conversationType_usesCandidateSelection_forCompletion_fromTimeout___block_invoke_3;
    block[3] = &unk_1E72D8500;
    v79 = completionCopy;
    dispatch_async(callbackQueue3, block);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  pendingCallbacks2 = [(TUISmartReplyGenerator *)self pendingCallbacks];
  v44 = [pendingCallbacks2 countByEnumeratingWithState:&v74 objects:v94 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v75;
    do
    {
      for (k = 0; k != v45; ++k)
      {
        if (*v75 != v46)
        {
          objc_enumerationMutation(pendingCallbacks2);
        }

        v48 = *(*(&v74 + 1) + 8 * k);
        callbackQueue4 = [(TUISmartReplyGenerator *)selfCopy callbackQueue];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __164__TUISmartReplyGenerator_returnResults_requestIDStr_multiStageEntryPointCandidate_smartReplyType_conversationType_usesCandidateSelection_forCompletion_fromTimeout___block_invoke_4;
        v73[3] = &unk_1E72D8500;
        v73[4] = v48;
        dispatch_async(callbackQueue4, v73);
      }

      v45 = [pendingCallbacks2 countByEnumeratingWithState:&v74 objects:v94 count:16];
    }

    while (v45);
    goto LABEL_53;
  }

LABEL_54:

  [(TUISmartReplyGenerator *)self setPendingRequestThreadIdentifier:0];
  pendingCallbacks3 = [(TUISmartReplyGenerator *)self pendingCallbacks];
  [pendingCallbacks3 removeAllObjects];

  acceptedCandidates = [(TUISmartReplyGenerator *)self acceptedCandidates];
  [acceptedCandidates removeAllObjects];
}

void __164__TUISmartReplyGenerator_returnResults_requestIDStr_multiStageEntryPointCandidate_smartReplyType_conversationType_usesCandidateSelection_forCompletion_fromTimeout___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [_TUIKeyboardCandidateContainer forSourceType:2];
  (*(v1 + 16))(v1, v2);
}

void __164__TUISmartReplyGenerator_returnResults_requestIDStr_multiStageEntryPointCandidate_smartReplyType_conversationType_usesCandidateSelection_forCompletion_fromTimeout___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [_TUIKeyboardCandidateContainer forSourceType:2];
  (*(v1 + 16))(v1, v2);
}

- (void)candidateAccepted:(id)accepted keyboardState:(id)state candidateRequestToken:(id)token
{
  acceptedCopy = accepted;
  stateCopy = state;
  generationQueue = [(TUISmartReplyGenerator *)self generationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__TUISmartReplyGenerator_candidateAccepted_keyboardState_candidateRequestToken___block_invoke;
  block[3] = &unk_1E72D80E8;
  v13 = acceptedCopy;
  selfCopy = self;
  v15 = stateCopy;
  v10 = stateCopy;
  v11 = acceptedCopy;
  dispatch_async(generationQueue, block);
}

void __80__TUISmartReplyGenerator_candidateAccepted_keyboardState_candidateRequestToken___block_invoke(id *a1)
{
  if (([a1[4] candidateProperty] & 0x10) != 0)
  {
    v2 = [a1[5] acceptedCandidates];
    [v2 removeAllObjects];

    v3 = a1[4];
    v6 = [a1[5] acceptedCandidates];
    v4 = [a1[6] inputContextHistory];
    v5 = [v4 threadIdentifier];
    [v6 setObject:v3 forKeyedSubscript:v5];
  }
}

- (BOOL)_queueOnly_shouldAllowResponse:(id)response
{
  responseCopy = response;
  type = [responseCopy type];
  if (type == 1)
  {
    goto LABEL_5;
  }

  if (!type)
  {
    v6 = [responseCopy contentWarning] + 1;
    if (v6 < 4)
    {
      v3 = 2u >> (v6 & 0xF);
      goto LABEL_6;
    }

LABEL_5:
    LOBYTE(v3) = (([responseCopy contentWarning] + 1) & 0xFFFFFFFFFFFFFFFDLL) != 0;
  }

LABEL_6:

  return v3 & 1;
}

- (int64_t)conversationType:(id)type
{
  typeCopy = type;
  clientIdentifier = [typeCopy clientIdentifier];
  v6 = [(TUISmartReplyGenerator *)self isClientMessages:clientIdentifier];

  if (!v6)
  {
    clientIdentifier2 = [typeCopy clientIdentifier];
    v9 = [(TUISmartReplyGenerator *)self isClientMail:clientIdentifier2];

    if (v9)
    {
      v7 = 1;
      goto LABEL_13;
    }

    inputContextHistory = [typeCopy inputContextHistory];
    infoDict = [inputContextHistory infoDict];
    v12 = [infoDict objectForKeyedSubscript:@"ConversationType"];

    if ([v12 integerValue] != 1)
    {
      if ([v12 integerValue] == 2)
      {
        v7 = 1;
LABEL_12:

        goto LABEL_13;
      }

      v13 = TUISmartReplyLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_error_impl(&dword_18FFDC000, v13, OS_LOG_TYPE_ERROR, "Unexpected missing conversation type, fallback to message", v15, 2u);
      }
    }

    v7 = 0;
    goto LABEL_12;
  }

  v7 = 0;
LABEL_13:

  return v7;
}

- (void)_performGenerateCandidatesForContext:(id)context completion:(id)completion
{
  v114 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  generationQueue = [(TUISmartReplyGenerator *)self generationQueue];
  dispatch_assert_queue_V2(generationQueue);

  v81 = contextCopy;
  keyboardState = [contextCopy keyboardState];
  acceptedCandidates = [(TUISmartReplyGenerator *)self acceptedCandidates];
  inputContextHistory = [keyboardState inputContextHistory];
  threadIdentifier = [inputContextHistory threadIdentifier];
  v13 = [acceptedCandidates objectForKeyedSubscript:threadIdentifier];

  if (v13 && (-[TUISmartReplyGenerator currentKeyboardState](self, "currentKeyboardState"), v14 = objc_claimAutoreleasedReturnValue(), [v14 clientIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[TUISmartReplyGenerator isClientMail:](self, "isClientMail:", v15), v15, v14, v16))
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(TUISmartReplyGenerator *)self conversationType:keyboardState];
  if ([(TUISmartReplyGenerator *)self _queueOnly_isSmartReplyAvailableForClientAndType:v17 != 0])
  {
    v76 = v17 != 0;
    v77 = v18;
    textComposerClient = [(TUISmartReplyGenerator *)self textComposerClient];
    generateRequestToken = [textComposerClient generateRequestToken];

    v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", generateRequestToken];
    v21 = TUISmartReplyLog();
    v79 = v13;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = @"not nil";
      if (!keyboardState)
      {
        v22 = @"nil";
      }

      v71 = v22;
      inputContextHistory2 = [keyboardState inputContextHistory];
      inputContextHistory3 = [keyboardState inputContextHistory];
      threadIdentifier2 = [inputContextHistory3 threadIdentifier];
      v23 = objc_opt_class();
      [v13 candidate];
      v24 = v73 = generateRequestToken;
      v25 = [v23 obscuredStringDescription:v24];
      v74 = completionCopy;
      v26 = objc_opt_class();
      inputContextHistory4 = [keyboardState inputContextHistory];
      [inputContextHistory4 mostRecentNonSenderTextEntry];
      v29 = v28 = v17;
      v30 = [v26 obscuredStringDescription:v29];
      *buf = 138413571;
      v103 = v80;
      v104 = 2112;
      v105 = v71;
      v106 = 2048;
      v107 = inputContextHistory2;
      v108 = 2113;
      v109 = threadIdentifier2;
      v110 = 2113;
      v111 = v25;
      v112 = 2113;
      v113 = v30;
      _os_log_impl(&dword_18FFDC000, v21, OS_LOG_TYPE_DEFAULT, "Preparing smart reply candidate generation request (ID: %@) for state: (%@),  context: <TIInputContextHistory: %p, id: %{private}@>, candidate: %{private}@, lastEntry: %{private}@", buf, 0x3Eu);

      v17 = v28;
      v13 = v79;

      generateRequestToken = v73;
      completionCopy = v74;
    }

    v31 = TUISmartReplyLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      inputContextHistory5 = [keyboardState inputContextHistory];
      mostRecentTextEntryLogString = [inputContextHistory5 mostRecentTextEntryLogString];
      *buf = 138477827;
      v103 = mostRecentTextEntryLogString;
      _os_log_debug_impl(&dword_18FFDC000, v31, OS_LOG_TYPE_DEBUG, "   Supplemental privacy lastEntry: %{private}@", buf, 0xCu);
    }

    inputContextHistory6 = [keyboardState inputContextHistory];
    v33 = [(TUISmartReplyGenerator *)self contextHistoryDidChange:inputContextHistory6];

    v78 = v17;
    if (completionCopy && ([keyboardState inputContextHistory], v34 = objc_claimAutoreleasedReturnValue(), v35 = -[TUISmartReplyGenerator hasPendingRequestForContext:historyDidChange:](self, "hasPendingRequestForContext:historyDidChange:", v34, v33), v34, v35))
    {
      v36 = TUISmartReplyLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v103 = v80;
        _os_log_impl(&dword_18FFDC000, v36, OS_LOG_TYPE_DEFAULT, "Ignored smart reply candidate generation request (ID: %@) due to pending request", buf, 0xCu);
      }

      pendingCallbacks = [(TUISmartReplyGenerator *)self pendingCallbacks];
      v38 = [completionCopy copy];
      [pendingCallbacks addObject:v38];
      v39 = v80;
    }

    else
    {
      [(TUISmartReplyGenerator *)self setCurrentKeyboardState:keyboardState];
      v43 = objc_alloc(MEMORY[0x1E69D9328]);
      currentInputContextHistory = [(TUISmartReplyGenerator *)self currentInputContextHistory];
      v45 = [v43 initWithTIInputContextHistory:currentInputContextHistory];

      if (completionCopy)
      {
        responseTimer = [(TUISmartReplyGenerator *)self responseTimer];

        if (responseTimer)
        {
          responseTimer2 = [(TUISmartReplyGenerator *)self responseTimer];
          dispatch_source_cancel(responseTimer2);

          [(TUISmartReplyGenerator *)self setResponseTimer:0];
        }

        generationQueue2 = [(TUISmartReplyGenerator *)self generationQueue];
        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 3221225472;
        v90[2] = __74__TUISmartReplyGenerator__performGenerateCandidatesForContext_completion___block_invoke_24;
        v90[3] = &unk_1E72D2B98;
        v91 = v80;
        selfCopy = self;
        v97 = generateRequestToken;
        v93 = keyboardState;
        v98 = v76;
        v99 = v77;
        v94 = v17;
        v95 = v81;
        v96 = completionCopy;
        v49 = [(TUISmartReplyGenerator *)self createTimerWithDelay:5 onQueue:generationQueue2 handler:v90];
        [(TUISmartReplyGenerator *)self setResponseTimer:v49];
      }

      v50 = TUISmartReplyLog();
      v75 = v45;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        currentInputContextHistory2 = [(TUISmartReplyGenerator *)self currentInputContextHistory];
        v52 = objc_opt_class();
        candidate = [v17 candidate];
        v54 = [v52 obscuredStringDescription:candidate];
        *buf = 138412803;
        v103 = v80;
        v104 = 2048;
        v105 = currentInputContextHistory2;
        v106 = 2113;
        v107 = v54;
        _os_log_impl(&dword_18FFDC000, v50, OS_LOG_TYPE_DEFAULT, "Smart reply generation requested (ID: %@) for context: <TIInputContextHistory %p>, entryPoint: %{private}@", buf, 0x20u);

        v13 = v79;
      }

      currentInputContextHistory3 = [(TUISmartReplyGenerator *)self currentInputContextHistory];
      threadIdentifier3 = [currentInputContextHistory3 threadIdentifier];
      [(TUISmartReplyGenerator *)self setPendingRequestThreadIdentifier:threadIdentifier3];

      if (!v17)
      {
        clientIdentifier = [keyboardState clientIdentifier];
        inputContextHistory7 = [keyboardState inputContextHistory];
        threadIdentifier4 = [inputContextHistory7 threadIdentifier];
        [TUIInputAnalytics didHandleSmartReplyAnalyticsEventOfType:0 withBundleId:clientIdentifier withInputContextHistoryRequestId:v80 withMsgOrMailThreadId:threadIdentifier4 withSmartReplyResponse:0 withConversationType:v77];

        v13 = v79;
      }

      v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:generateRequestToken];
      [v38 setObject:v60 forKeyedSubscript:*MEMORY[0x1E69D94F0]];

      v61 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
      [v38 setObject:v61 forKeyedSubscript:*MEMORY[0x1E69D94A0]];

      v62 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(keyboardState, "autocapitalizationEnabled")}];
      [v38 setObject:v62 forKeyedSubscript:*MEMORY[0x1E69D94E8]];

      textComposerClient2 = [(TUISmartReplyGenerator *)self textComposerClient];

      if (!textComposerClient2)
      {
        v64 = TUISmartReplyLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18FFDC000, v64, OS_LOG_TYPE_DEFAULT, "Composer client wrapper is unexpectedly nil.", buf, 2u);
        }
      }

      textComposerClient3 = [(TUISmartReplyGenerator *)self textComposerClient];
      candidate2 = [v13 candidate];
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __74__TUISmartReplyGenerator__performGenerateCandidatesForContext_completion___block_invoke_27;
      v82[3] = &unk_1E72D2BE8;
      v82[4] = self;
      v39 = v80;
      v83 = v80;
      v84 = keyboardState;
      v88 = v76;
      v89 = v77;
      v85 = v78;
      v86 = v81;
      v87 = completionCopy;
      v13 = v79;
      pendingCallbacks = v75;
      [textComposerClient3 requestSmartRepliesWithContext:v86 inputContextHistory:v75 conversationType:v77 smartReplyType:v76 candidateString:candidate2 options:v38 completion:v82];
    }

    v17 = v78;
  }

  else
  {
    v40 = TUISmartReplyLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [objc_opt_class() stringForSmartReplyType:v17 != 0];
      *buf = 138543362;
      v103 = v41;
      _os_log_impl(&dword_18FFDC000, v40, OS_LOG_TYPE_DEFAULT, "Feature unavailable for client and reply type %{public}@", buf, 0xCu);
    }

    callbackQueue = [(TUISmartReplyGenerator *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__TUISmartReplyGenerator__performGenerateCandidatesForContext_completion___block_invoke;
    block[3] = &unk_1E72D8500;
    v101 = completionCopy;
    dispatch_async(callbackQueue, block);

    v39 = v101;
  }
}

void __74__TUISmartReplyGenerator__performGenerateCandidatesForContext_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [_TUIKeyboardCandidateContainer forSourceType:2];
    (*(v1 + 16))(v1, v2);
  }
}

uint64_t __74__TUISmartReplyGenerator__performGenerateCandidatesForContext_completion___block_invoke_24(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = TUISmartReplyLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_18FFDC000, v2, OS_LOG_TYPE_DEFAULT, "Smart reply generation timed out for request (ID: %@)", buf, 0xCu);
  }

  v4 = [*(a1 + 40) textComposerClient];
  v5 = *(a1 + 80);
  v6 = [*(a1 + 48) clientIdentifier];
  [v4 cancelRequestWithToken:v5 forClient:v6];

  v7 = *(a1 + 88);
  if (!v7)
  {
    v8 = [*(a1 + 48) clientIdentifier];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 48) inputContextHistory];
    v11 = [v10 threadIdentifier];
    [TUIInputAnalytics didHandleSmartReplyAnalyticsEventOfType:3 withBundleId:v8 withInputContextHistoryRequestId:v9 withMsgOrMailThreadId:v11 withSmartReplyResponse:0 withConversationType:*(a1 + 96)];

    v7 = *(a1 + 88);
  }

  LOBYTE(v13) = 1;
  return [*(a1 + 40) returnResults:0 requestIDStr:*(a1 + 32) multiStageEntryPointCandidate:*(a1 + 56) smartReplyType:v7 conversationType:*(a1 + 96) usesCandidateSelection:objc_msgSend(*(a1 + 64) forCompletion:"usesCandidateSelection") fromTimeout:{*(a1 + 72), v13}];
}

void __74__TUISmartReplyGenerator__performGenerateCandidatesForContext_completion___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) generationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__TUISmartReplyGenerator__performGenerateCandidatesForContext_completion___block_invoke_2;
  block[3] = &unk_1E72D2BC0;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v14 = *(a1 + 80);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v5 = v3;
  dispatch_async(v4, block);
}

void __74__TUISmartReplyGenerator__performGenerateCandidatesForContext_completion___block_invoke_2(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = TUISmartReplyLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v43 = *(a1 + 40);
    v4 = objc_opt_class();
    v5 = [*(a1 + 40) srResponse];
    v6 = [v5 responseTexts];
    v7 = [v4 obscuredArrayDescription:v6];
    v8 = [*(a1 + 40) contentWarning];
    v9 = [*(a1 + 56) inputContextHistory];
    v10 = [*(a1 + 56) inputContextHistory];
    v11 = [v10 threadIdentifier];
    *buf = 138413571;
    v45 = v3;
    v46 = 2048;
    v47 = v43;
    v48 = 2113;
    v49 = v7;
    v50 = 2048;
    v51 = v8;
    v52 = 2048;
    v53 = v9;
    v54 = 2113;
    v55 = v11;
    _os_log_impl(&dword_18FFDC000, v2, OS_LOG_TYPE_DEFAULT, "Smart reply generation response for (ID: %@): <TUISmartReplyResponse %p> with text: %{private}@ (contentWarning: %ld) for context: <TIInputContextHistory %p, threadId: %{private}@>", buf, 0x3Eu);
  }

  v12 = [*(a1 + 40) srResponse];
  v13 = TUISmartReplyLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(a1 + 40) threadIdentifier];
    v15 = [*(a1 + 48) currentInputContextHistory];
    v16 = [v15 threadIdentifier];
    *buf = 138478083;
    v45 = v14;
    v46 = 2113;
    v47 = v16;
    _os_log_impl(&dword_18FFDC000, v13, OS_LOG_TYPE_DEFAULT, "srResponse.threadIdentifier=%{private}@ self.currentInputContextHistory.threadIdentifier=%{private}@", buf, 0x16u);
  }

  v17 = [*(a1 + 40) threadIdentifier];
  v18 = [*(a1 + 48) currentInputContextHistory];
  v19 = [v18 threadIdentifier];
  if ([v17 isEqualToString:v19])
  {

LABEL_7:
    if (!*(a1 + 88))
    {
      v20 = [v12 responseTexts];
      if (v20 && (v21 = v20, [v12 responseTexts], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "count"), v22, v21, v23))
      {
        v17 = [*(a1 + 56) clientIdentifier];
        v24 = *(a1 + 32);
        v18 = [*(a1 + 56) inputContextHistory];
        v19 = [v18 threadIdentifier];
        v25 = *(a1 + 40);
        v26 = *(a1 + 96);
        v27 = 1;
      }

      else
      {
        v17 = [*(a1 + 56) clientIdentifier];
        v24 = *(a1 + 32);
        v18 = [*(a1 + 56) inputContextHistory];
        v19 = [v18 threadIdentifier];
        v25 = *(a1 + 40);
        v26 = *(a1 + 96);
        v27 = 2;
      }

      [TUIInputAnalytics didHandleSmartReplyAnalyticsEventOfType:v27 withBundleId:v17 withInputContextHistoryRequestId:v24 withMsgOrMailThreadId:v19 withSmartReplyResponse:v25 withConversationType:v26];
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v28 = [*(a1 + 40) threadIdentifier];
  if (![v28 isEqualToString:&stru_1F03BA8F8])
  {

LABEL_17:
    goto LABEL_18;
  }

  v29 = [*(a1 + 48) currentInputContextHistory];
  v30 = [v29 threadIdentifier];

  if (!v30)
  {
    goto LABEL_7;
  }

LABEL_18:
  if ([*(a1 + 48) _queueOnly_shouldAllowResponse:*(a1 + 40)] && (objc_msgSend(*(a1 + 48), "currentInputContextHistory"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "mostRecentTextEntryIsByMe"), v31, (v32 & 1) == 0))
  {
    v40 = *(a1 + 48);
    v41 = [v12 responseTexts];
    LOBYTE(v42) = 0;
    [v40 returnResults:v41 requestIDStr:*(a1 + 32) multiStageEntryPointCandidate:*(a1 + 64) smartReplyType:*(a1 + 88) conversationType:*(a1 + 96) usesCandidateSelection:objc_msgSend(*(a1 + 72) forCompletion:"usesCandidateSelection") fromTimeout:{*(a1 + 80), v42}];
  }

  else
  {
    v33 = TUISmartReplyLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 32);
      v35 = [*(a1 + 40) type];
      v36 = @"Long";
      if (!v35)
      {
        v36 = @"Short";
      }

      v37 = v36;
      v38 = [*(a1 + 40) contentWarning];
      if ((v38 + 1) > 3)
      {
        v39 = @"None";
      }

      else
      {
        v39 = off_1E72D2C08[v38 + 1];
      }

      *buf = 138412802;
      v45 = v34;
      v46 = 2112;
      v47 = v37;
      v48 = 2112;
      v49 = v39;
      _os_log_impl(&dword_18FFDC000, v33, OS_LOG_TYPE_DEFAULT, "Smart reply generation response for (ID: %@): suppressing response for replyType=%@ contentWarning=%@", buf, 0x20u);
    }

    LOBYTE(v42) = 1;
    [*(a1 + 48) returnResults:0 requestIDStr:*(a1 + 32) multiStageEntryPointCandidate:*(a1 + 64) smartReplyType:*(a1 + 88) conversationType:*(a1 + 96) usesCandidateSelection:objc_msgSend(*(a1 + 72) forCompletion:"usesCandidateSelection") fromTimeout:{*(a1 + 80), v42}];
  }
}

- (void)generateCandidatesWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__TUISmartReplyGenerator_generateCandidatesWithContext_completion___block_invoke;
  v10[3] = &unk_1E72D2B70;
  v10[4] = self;
  v11 = contextCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = contextCopy;
  [(TUISmartReplyGenerator *)self shouldGenerateCandidatesForContext:v9 completion:v10];
}

void __67__TUISmartReplyGenerator_generateCandidatesWithContext_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) generationQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__TUISmartReplyGenerator_generateCandidatesWithContext_completion___block_invoke_2;
    block[3] = &unk_1E72D2B48;
    v4 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v10 = v4;
    v11 = *(a1 + 48);
    dispatch_async(v3, block);
  }

  else
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = [_TUIKeyboardCandidateContainer forSourceType:2];
      (*(v5 + 16))(v5, v6);
    }

    v7 = TUISmartReplyLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_18FFDC000, v7, OS_LOG_TYPE_DEFAULT, "Cancelled Smart Reply generateCandidates", v8, 2u);
    }
  }
}

uint64_t __67__TUISmartReplyGenerator_generateCandidatesWithContext_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) createLocalTextComposerClientIfNeeded];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v2 _performGenerateCandidatesForContext:v3 completion:v4];
}

- (BOOL)hasPendingRequestForContext:(id)context historyDidChange:(BOOL)change
{
  changeCopy = change;
  contextCopy = context;
  threadIdentifier = [contextCopy threadIdentifier];
  if ([threadIdentifier length])
  {
    threadIdentifier2 = [contextCopy threadIdentifier];
    pendingRequestThreadIdentifier = [(TUISmartReplyGenerator *)self pendingRequestThreadIdentifier];
    v10 = [threadIdentifier2 isEqualToString:pendingRequestThreadIdentifier] & !changeCopy;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)contextHistoryDidChange:(id)change
{
  changeCopy = change;
  threadIdentifier = [changeCopy threadIdentifier];
  currentInputContextHistory = [(TUISmartReplyGenerator *)self currentInputContextHistory];
  threadIdentifier2 = [currentInputContextHistory threadIdentifier];
  v8 = [threadIdentifier isEqualToString:threadIdentifier2];

  if (v8 && (-[TUISmartReplyGenerator currentInputContextHistory](self, "currentInputContextHistory"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [changeCopy isEqual:v9], v9, v10))
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__2030;
    v27 = __Block_byref_object_dispose__2031;
    v28 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
    currentInputContextHistory2 = [(TUISmartReplyGenerator *)self currentInputContextHistory];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __50__TUISmartReplyGenerator_contextHistoryDidChange___block_invoke;
    v22[3] = &unk_1E72D2B20;
    v22[4] = &v23;
    [currentInputContextHistory2 enumerateAllContextEntriesWithEntryId:v22];

    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__2030;
    v20 = __Block_byref_object_dispose__2031;
    v21 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__TUISmartReplyGenerator_contextHistoryDidChange___block_invoke_2;
    v15[3] = &unk_1E72D2B20;
    v15[4] = &v16;
    [changeCopy enumerateAllContextEntriesWithEntryId:v15];
    [v17[5] timeIntervalSinceDate:v24[5]];
    v13 = v12 != 0.0;
    _Block_object_dispose(&v16, 8);

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

void __50__TUISmartReplyGenerator_contextHistoryDidChange___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [v6 timeIntervalSinceDate:*(*(*(a1 + 32) + 8) + 40)];
  if (v5 > 0.0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

void __50__TUISmartReplyGenerator_contextHistoryDidChange___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [v6 timeIntervalSinceDate:*(*(*(a1 + 32) + 8) + 40)];
  if (v5 > 0.0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  }
}

- (BOOL)_queueOnly_isSmartReplyAvailableForClientAndType:(int64_t)type
{
  currentKeyboardState = [(TUISmartReplyGenerator *)self currentKeyboardState];
  clientIdentifier = [currentKeyboardState clientIdentifier];
  v7 = [(TUISmartReplyGenerator *)self isClientMail:clientIdentifier];

  if (v7)
  {
    if (type != 1)
    {
      if (!type)
      {

        return [(TUISmartReplyGenerator *)self _isGMAvailableForMailReply];
      }

      return 0;
    }

    return [(TUISmartReplyGenerator *)self _isGMAvailableForMailReplyLongFormBasic];
  }

  else
  {
    currentKeyboardState2 = [(TUISmartReplyGenerator *)self currentKeyboardState];
    clientIdentifier2 = [currentKeyboardState2 clientIdentifier];
    v11 = [(TUISmartReplyGenerator *)self isClientMessages:clientIdentifier2];

    if (v11)
    {
      if (type)
      {
        return 0;
      }
    }

    else
    {
      v12 = _os_feature_enabled_impl();
      if (type || !v12)
      {
        return 0;
      }
    }

    return [(TUISmartReplyGenerator *)self _isGMAvailableForMessagesReply];
  }
}

- (BOOL)_isGMAvailableForMailReplyLongFormBasic
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[_TtC11TextInputUI28TUITextComposerClientWrapper isGMAvailableForMailReplyLongFormBasic];
  v3 = TUISmartReplyLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (v2)
    {
      v4 = "YES";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_18FFDC000, v3, OS_LOG_TYPE_DEFAULT, "Feature available for MailReplyLongFormBasic: %s", &v6, 0xCu);
  }

  return v2;
}

- (BOOL)_isGMAvailableForMailReply
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[_TtC11TextInputUI28TUITextComposerClientWrapper isGMAvailableForMailReply];
  v3 = TUISmartReplyLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (v2)
    {
      v4 = "YES";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_18FFDC000, v3, OS_LOG_TYPE_DEFAULT, "Feature available for MailReply: %s", &v6, 0xCu);
  }

  return v2;
}

- (BOOL)_isGMAvailableForMessagesReply
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = +[_TtC11TextInputUI28TUITextComposerClientWrapper isGMAvailableForMessagesReply];
  v3 = TUISmartReplyLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "NO";
    if (v2)
    {
      v4 = "YES";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_18FFDC000, v3, OS_LOG_TYPE_DEFAULT, "Feature available for MessagesReply: %s", &v6, 0xCu);
  }

  return v2;
}

- (void)createLocalTextComposerClientIfNeeded
{
  if (!self->_textComposerClient)
  {
    v4 = objc_alloc_init(_TtC11TextInputUI28TUITextComposerClientWrapper);
    textComposerClient = self->_textComposerClient;
    self->_textComposerClient = v4;

    MEMORY[0x1EEE66BB8](v4, textComposerClient);
  }
}

- (_TtC11TextInputUI18TUINetworkObserver)networkObserver
{
  networkObserver = self->_networkObserver;
  if (!networkObserver)
  {
    v4 = objc_alloc_init(_TtC11TextInputUI18TUINetworkObserver);
    v5 = self->_networkObserver;
    self->_networkObserver = v4;

    [(TUINetworkObserver *)self->_networkObserver setDelegate:self];
    networkObserver = self->_networkObserver;
  }

  return networkObserver;
}

+ (id)obscuredStringDescription:(id)description
{
  descriptionCopy = description;
  v4 = descriptionCopy;
  if (descriptionCopy)
  {
    if ([descriptionCopy length])
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<Privacy Hash: %lu>", objc_msgSend(v4, "hash")];
    }

    else
    {
      v5 = @"<empty_string>";
    }
  }

  else
  {
    v5 = @"<nil_string>";
  }

  return v5;
}

+ (id)obscuredArrayDescription:(id)description
{
  v17 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (descriptionCopy)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(descriptionCopy, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = descriptionCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = [objc_opt_class() obscuredStringDescription:{*(*(&v12 + 1) + 8 * i), v12}];
          [v4 addObject:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)stringForSmartReplyType:(int64_t)type
{
  if (type)
  {
    return @"long";
  }

  else
  {
    return @"short";
  }
}

+ (BOOL)emptyOutOfProcessKeyboardContext:(id)context
{
  v3 = MEMORY[0x1E696AB08];
  contextCopy = context;
  newlineCharacterSet = [v3 newlineCharacterSet];
  v6 = [contextCopy rangeOfCharacterFromSet:newlineCharacterSet options:0 range:{0, 1}];

  return v6 == 0x7FFFFFFFFFFFFFFFLL;
}

+ (BOOL)emptyInputContext:(id)context withTrimmedCharacters:(id)characters
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  charactersCopy = characters;
  v7 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = charactersCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v8);
        }

        [v7 formUnionWithCharacterSet:{*(*(&v16 + 1) + 8 * i), v16}];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v13 = [contextCopy stringByTrimmingCharactersInSet:v7];
  v14 = [v13 length] == 0;

  return v14;
}

@end