@interface TUISmartReplyGenerator
+ (BOOL)emptyInputContext:(id)a3 withTrimmedCharacters:(id)a4;
+ (BOOL)emptyOutOfProcessKeyboardContext:(id)a3;
+ (id)obscuredArrayDescription:(id)a3;
+ (id)obscuredStringDescription:(id)a3;
+ (id)sharedInstance;
+ (id)stringForSmartReplyType:(int64_t)a3;
- (BOOL)_isGMAvailableForMailReply;
- (BOOL)_isGMAvailableForMailReplyLongFormBasic;
- (BOOL)_isGMAvailableForMessagesReply;
- (BOOL)_queueOnly_isSmartReplyAvailableForClientAndType:(int64_t)a3;
- (BOOL)_queueOnly_shouldAllowResponse:(id)a3;
- (BOOL)_staging_inputContextHistory_IsValid:(id)a3;
- (BOOL)contextHistoryDidChange:(id)a3;
- (BOOL)hasPendingRequestForContext:(id)a3 historyDidChange:(BOOL)a4;
- (BOOL)isEnabledForCurrentKeyboardState;
- (TIInputContextHistory)currentInputContextHistory;
- (TUISmartReplyGenerator)init;
- (_TtC11TextInputUI18TUINetworkObserver)networkObserver;
- (id)createTimerWithDelay:(unint64_t)a3 onQueue:(id)a4 handler:(id)a5;
- (int64_t)conversationType:(id)a3;
- (void)_performGenerateCandidatesForContext:(id)a3 completion:(id)a4;
- (void)candidateAccepted:(id)a3 keyboardState:(id)a4 candidateRequestToken:(id)a5;
- (void)createLocalTextComposerClientIfNeeded;
- (void)didObserveNetworkAvailabilityChange:(BOOL)a3;
- (void)generateCandidatesWithContext:(id)a3 completion:(id)a4;
- (void)returnResults:(id)a3 requestIDStr:(id)a4 multiStageEntryPointCandidate:(id)a5 smartReplyType:(int64_t)a6 conversationType:(int64_t)a7 usesCandidateSelection:(BOOL)a8 forCompletion:(id)a9 fromTimeout:(BOOL)a10;
- (void)shouldGenerateCandidatesForContext:(id)a3 completion:(id)a4;
- (void)syncToKeyboardState:(id)a3;
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
    v3 = [MEMORY[0x1E695DF70] array];
    pendingCallbacks = v2->_pendingCallbacks;
    v2->_pendingCallbacks = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    acceptedCandidates = v2->_acceptedCandidates;
    v2->_acceptedCandidates = v5;

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
  v3 = [(TUISmartReplyGenerator *)self currentKeyboardState];
  v4 = [v3 clientIdentifier];
  v5 = [(TUISmartReplyGenerator *)self isClientMessages:v4];

  if (!v5)
  {
    v6 = [(TUISmartReplyGenerator *)self currentKeyboardState];
    v7 = [v6 clientIdentifier];
    [(TUISmartReplyGenerator *)self isClientMail:v7];
  }

  return _os_feature_enabled_impl();
}

- (void)didObserveNetworkAvailabilityChange:(BOOL)a3
{
  v3 = a3;
  v6 = *MEMORY[0x1E69E9840];
  v4 = TUISmartReplyLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_debug_impl(&dword_18FFDC000, v4, OS_LOG_TYPE_DEBUG, "Observed network availbility: %d", v5, 8u);
  }
}

- (id)createTimerWithDelay:(unint64_t)a3 onQueue:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a4);
  if (v8)
  {
    v9 = dispatch_time(0, 1000000000 * a3);
    dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(v8, v7);
    dispatch_resume(v8);
  }

  return v8;
}

- (TIInputContextHistory)currentInputContextHistory
{
  v2 = [(TUISmartReplyGenerator *)self currentKeyboardState];
  v3 = [v2 inputContextHistory];

  return v3;
}

- (void)syncToKeyboardState:(id)a3
{
  v4 = a3;
  v5 = [v4 textInputTraits];
  v6 = [v5 secureTextEntry];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v4 copy];
  }

  v8 = [(TUISmartReplyGenerator *)self generationQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__TUISmartReplyGenerator_syncToKeyboardState___block_invoke;
  v10[3] = &unk_1E72D85E0;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_sync(v8, v10);
}

uint64_t __46__TUISmartReplyGenerator_syncToKeyboardState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentKeyboardState:*(a1 + 40)];
  v2 = [*(a1 + 32) isEnabledForCurrentKeyboardState];
  v3 = *(a1 + 32);

  return [v3 setEnabled:v2];
}

- (BOOL)_staging_inputContextHistory_IsValid:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 validateForSmartReplyGeneration];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)shouldGenerateCandidatesForContext:(id)a3 completion:(id)a4
{
  v67[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a3 keyboardState];
  v8 = v7;
  if (!v7)
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

  v9 = [v7 textInputTraits];
  v10 = [v9 secureTextEntry];

  if (v10)
  {
    goto LABEL_11;
  }

  v11 = [v8 documentState];
  v12 = [v11 markedText];
  v13 = [v12 length];

  if (v13)
  {
    goto LABEL_11;
  }

  v14 = [v8 documentState];
  v15 = [v14 contextBeforeInput];
  v16 = [v15 length];

  if (v16)
  {
    v17 = objc_opt_class();
    v18 = [v8 documentState];
    v19 = [v18 contextBeforeInput];
    v20 = [MEMORY[0x1E696AB08] controlCharacterSet];
    v67[0] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:1];
    LOBYTE(v17) = [v17 emptyInputContext:v19 withTrimmedCharacters:v21];

    if ((v17 & 1) == 0)
    {
LABEL_11:
      v6[2](v6, 0);
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

  v25 = [v8 documentState];
  v26 = [v25 contextAfterInput];
  v27 = [v26 length];

  if (v27)
  {
    if ([MEMORY[0x1E69DCBB8] isKeyboardProcess])
    {
      v28 = objc_opt_class();
      v29 = [v8 documentState];
      v30 = [v29 contextAfterInput];
      LODWORD(v28) = [v28 emptyOutOfProcessKeyboardContext:v30];

      if (v28)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v31 = [(TUISmartReplyGenerator *)self currentKeyboardState];
      v32 = [(TUISmartReplyGenerator *)self conversationType:v31];

      v33 = [MEMORY[0x1E696AB08] controlCharacterSet];
      v34 = v33;
      if (v32 == 1)
      {
        v66[0] = v33;
        v35 = [MEMORY[0x1E696AB08] newlineCharacterSet];
        v66[1] = v35;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
      }

      else
      {
        v65 = v33;
        v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:1];
      }

      v37 = objc_opt_class();
      v38 = [v8 documentState];
      v39 = [v38 contextAfterInput];
      LOBYTE(v37) = [v37 emptyInputContext:v39 withTrimmedCharacters:v36];

      if ((v37 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  v40 = [v8 documentState];
  v41 = [v40 selectedText];
  v42 = [v41 length];

  if (!v42)
  {
    goto LABEL_31;
  }

  v43 = [v8 clientIdentifier];
  v44 = [(TUISmartReplyGenerator *)self isClientMail:v43];

  v45 = [MEMORY[0x1E696AB08] controlCharacterSet];
  v46 = v45;
  if (v44)
  {
    v64[0] = v45;
    v47 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    v64[1] = v47;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
  }

  else
  {
    v63 = v45;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
  }

  v48 = objc_opt_class();
  v49 = [v8 documentState];
  v50 = [v49 selectedText];
  LOBYTE(v48) = [v48 emptyInputContext:v50 withTrimmedCharacters:v36];

  if ((v48 & 1) == 0)
  {
LABEL_36:
    v6[2](v6, 0);

    goto LABEL_12;
  }

LABEL_31:
  v51 = [v8 inputContextHistory];

  if (!v51)
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

  v52 = [v8 inputContextHistory];
  v53 = [(TUISmartReplyGenerator *)self _staging_inputContextHistory_IsValid:v52];

  if (!v53)
  {
    v22 = TUISmartReplyLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v57 = [v8 inputContextHistory];
      v58 = [v57 debugDescription];
      *buf = 138477827;
      v62 = v58;
      _os_log_impl(&dword_18FFDC000, v22, OS_LOG_TYPE_DEFAULT, "Cancelled smart reply generation due to invalid ICH %{private}@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (-[TUISmartReplyGenerator conversationType:](self, "conversationType:", v8) == 1 && ([v8 clientIdentifier], v54 = objc_claimAutoreleasedReturnValue(), v55 = -[TUISmartReplyGenerator isClientMail:](self, "isClientMail:", v54), v54, v55))
  {
    v56 = [(TUISmartReplyGenerator *)self networkObserver];
    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __72__TUISmartReplyGenerator_shouldGenerateCandidatesForContext_completion___block_invoke;
    v59[3] = &unk_1E72D8160;
    v60 = v6;
    [v56 isNetworkAvailableWithCompletion:v59];
  }

  else
  {
    v6[2](v6, 1);
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

- (void)returnResults:(id)a3 requestIDStr:(id)a4 multiStageEntryPointCandidate:(id)a5 smartReplyType:(int64_t)a6 conversationType:(int64_t)a7 usesCandidateSelection:(BOOL)a8 forCompletion:(id)a9 fromTimeout:(BOOL)a10
{
  v64 = a8;
  v107 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a9;
  v17 = TUISmartReplyLog();
  v72 = self;
  v65 = v16;
  v66 = v15;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [objc_opt_class() obscuredArrayDescription:v13];
    v19 = [objc_opt_class() stringForSmartReplyType:a6];
    v20 = objc_opt_class();
    v21 = [v15 candidate];
    v22 = [v20 obscuredStringDescription:v21];
    *buf = 138413315;
    v98 = v14;
    v99 = 2113;
    v100 = v18;
    v101 = 2112;
    v102 = v19;
    v103 = 2113;
    v104 = v22;
    v105 = 1024;
    v106 = a10;
    _os_log_impl(&dword_18FFDC000, v17, OS_LOG_TYPE_DEFAULT, "Returning new smart reply candidates for request (ID: %@): %{private}@ type: %@, entry point candidate: %{private}@, timeout: %d", buf, 0x30u);

    v16 = v65;
  }

  v23 = [(TUISmartReplyGenerator *)self responseTimer];

  if (v23)
  {
    v24 = [(TUISmartReplyGenerator *)self responseTimer];
    dispatch_source_cancel(v24);

    [(TUISmartReplyGenerator *)self setResponseTimer:0];
  }

  if ([v13 count])
  {
    v62 = v14;
    v25 = [MEMORY[0x1E695DF70] array];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v63 = v13;
    obj = v13;
    v26 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
    v71 = v25;
    if (v26)
    {
      v27 = v26;
      v28 = *v91;
      v67 = (v15 | a6) == 0;
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
              v31 = [(TUISmartReplyGenerator *)v72 currentKeyboardState];
              v32 = [(TUISmartReplyGenerator *)v72 conversationType:v31];

              v25 = v71;
              v33 = v32 == 1;
              v15 = v66;
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

            if (a6 == 1)
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
          if (v15 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v37 setSmartReplySourceCandidate:v15];
          }

          [v25 addObject:v37];
        }

        v27 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
      }

      while (v27);
    }

    v38 = [objc_alloc(MEMORY[0x1E69D9588]) initWithAutocorrection:0 alternateCorrections:v25];
    obja = v38;
    if (v64)
    {
      v39 = [MEMORY[0x1E69D95E8] setWithCandidates:v25];
      v40 = [_TUIKeyboardCandidateContainer forSourceType:2 withKeyboardCandidateResultSet:v39];
      v41 = v72;
      v42 = v65;
    }

    else
    {
      v41 = v72;
      v42 = v65;
      if (a6 > 1)
      {
        v39 = 0;
      }

      else
      {
        v39 = [MEMORY[0x1E69D9570] listWithCorrections:v38 predictions:v25 emojiList:0 inlineCompletions:0];
      }

      v40 = [_TUIKeyboardCandidateContainer forSourceType:2 withAutocorrectionList:v39];
    }

    if (v42)
    {
      v50 = [v42 copy];
      v51 = [(TUISmartReplyGenerator *)v41 callbackQueue];
      v87[0] = MEMORY[0x1E69E9820];
      v87[1] = 3221225472;
      v87[2] = __164__TUISmartReplyGenerator_returnResults_requestIDStr_multiStageEntryPointCandidate_smartReplyType_conversationType_usesCandidateSelection_forCompletion_fromTimeout___block_invoke;
      v87[3] = &unk_1E72D77D8;
      v89 = v50;
      v88 = v40;
      v52 = v50;
      dispatch_async(v51, v87);
    }

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v53 = [(TUISmartReplyGenerator *)v41 pendingCallbacks];
    v54 = [v53 countByEnumeratingWithState:&v83 objects:v95 count:16];
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
            objc_enumerationMutation(v53);
          }

          v58 = *(*(&v83 + 1) + 8 * j);
          v59 = [(TUISmartReplyGenerator *)v72 callbackQueue];
          v80[0] = MEMORY[0x1E69E9820];
          v80[1] = 3221225472;
          v80[2] = __164__TUISmartReplyGenerator_returnResults_requestIDStr_multiStageEntryPointCandidate_smartReplyType_conversationType_usesCandidateSelection_forCompletion_fromTimeout___block_invoke_2;
          v80[3] = &unk_1E72D77D8;
          v82 = v58;
          v81 = v40;
          dispatch_async(v59, v80);
        }

        v55 = [v53 countByEnumeratingWithState:&v83 objects:v95 count:16];
      }

      while (v55);
    }

    v14 = v62;
    v13 = v63;
LABEL_53:
    self = v72;
    v16 = v65;
    v15 = v66;
    goto LABEL_54;
  }

  if (v16)
  {
    v43 = [(TUISmartReplyGenerator *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __164__TUISmartReplyGenerator_returnResults_requestIDStr_multiStageEntryPointCandidate_smartReplyType_conversationType_usesCandidateSelection_forCompletion_fromTimeout___block_invoke_3;
    block[3] = &unk_1E72D8500;
    v79 = v16;
    dispatch_async(v43, block);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v71 = [(TUISmartReplyGenerator *)self pendingCallbacks];
  v44 = [v71 countByEnumeratingWithState:&v74 objects:v94 count:16];
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
          objc_enumerationMutation(v71);
        }

        v48 = *(*(&v74 + 1) + 8 * k);
        v49 = [(TUISmartReplyGenerator *)v72 callbackQueue];
        v73[0] = MEMORY[0x1E69E9820];
        v73[1] = 3221225472;
        v73[2] = __164__TUISmartReplyGenerator_returnResults_requestIDStr_multiStageEntryPointCandidate_smartReplyType_conversationType_usesCandidateSelection_forCompletion_fromTimeout___block_invoke_4;
        v73[3] = &unk_1E72D8500;
        v73[4] = v48;
        dispatch_async(v49, v73);
      }

      v45 = [v71 countByEnumeratingWithState:&v74 objects:v94 count:16];
    }

    while (v45);
    goto LABEL_53;
  }

LABEL_54:

  [(TUISmartReplyGenerator *)self setPendingRequestThreadIdentifier:0];
  v60 = [(TUISmartReplyGenerator *)self pendingCallbacks];
  [v60 removeAllObjects];

  v61 = [(TUISmartReplyGenerator *)self acceptedCandidates];
  [v61 removeAllObjects];
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

- (void)candidateAccepted:(id)a3 keyboardState:(id)a4 candidateRequestToken:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(TUISmartReplyGenerator *)self generationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__TUISmartReplyGenerator_candidateAccepted_keyboardState_candidateRequestToken___block_invoke;
  block[3] = &unk_1E72D80E8;
  v13 = v7;
  v14 = self;
  v15 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
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

- (BOOL)_queueOnly_shouldAllowResponse:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  if (v5 == 1)
  {
    goto LABEL_5;
  }

  if (!v5)
  {
    v6 = [v4 contentWarning] + 1;
    if (v6 < 4)
    {
      v3 = 2u >> (v6 & 0xF);
      goto LABEL_6;
    }

LABEL_5:
    LOBYTE(v3) = (([v4 contentWarning] + 1) & 0xFFFFFFFFFFFFFFFDLL) != 0;
  }

LABEL_6:

  return v3 & 1;
}

- (int64_t)conversationType:(id)a3
{
  v4 = a3;
  v5 = [v4 clientIdentifier];
  v6 = [(TUISmartReplyGenerator *)self isClientMessages:v5];

  if (!v6)
  {
    v8 = [v4 clientIdentifier];
    v9 = [(TUISmartReplyGenerator *)self isClientMail:v8];

    if (v9)
    {
      v7 = 1;
      goto LABEL_13;
    }

    v10 = [v4 inputContextHistory];
    v11 = [v10 infoDict];
    v12 = [v11 objectForKeyedSubscript:@"ConversationType"];

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

- (void)_performGenerateCandidatesForContext:(id)a3 completion:(id)a4
{
  v114 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(TUISmartReplyGenerator *)self generationQueue];
  dispatch_assert_queue_V2(v8);

  v81 = v6;
  v9 = [v6 keyboardState];
  v10 = [(TUISmartReplyGenerator *)self acceptedCandidates];
  v11 = [v9 inputContextHistory];
  v12 = [v11 threadIdentifier];
  v13 = [v10 objectForKeyedSubscript:v12];

  if (v13 && (-[TUISmartReplyGenerator currentKeyboardState](self, "currentKeyboardState"), v14 = objc_claimAutoreleasedReturnValue(), [v14 clientIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[TUISmartReplyGenerator isClientMail:](self, "isClientMail:", v15), v15, v14, v16))
  {
    v17 = v13;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(TUISmartReplyGenerator *)self conversationType:v9];
  if ([(TUISmartReplyGenerator *)self _queueOnly_isSmartReplyAvailableForClientAndType:v17 != 0])
  {
    v76 = v17 != 0;
    v77 = v18;
    v19 = [(TUISmartReplyGenerator *)self textComposerClient];
    v20 = [v19 generateRequestToken];

    v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v20];
    v21 = TUISmartReplyLog();
    v79 = v13;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = @"not nil";
      if (!v9)
      {
        v22 = @"nil";
      }

      v71 = v22;
      v70 = [v9 inputContextHistory];
      v72 = [v9 inputContextHistory];
      v69 = [v72 threadIdentifier];
      v23 = objc_opt_class();
      [v13 candidate];
      v24 = v73 = v20;
      v25 = [v23 obscuredStringDescription:v24];
      v74 = v7;
      v26 = objc_opt_class();
      v27 = [v9 inputContextHistory];
      [v27 mostRecentNonSenderTextEntry];
      v29 = v28 = v17;
      v30 = [v26 obscuredStringDescription:v29];
      *buf = 138413571;
      v103 = v80;
      v104 = 2112;
      v105 = v71;
      v106 = 2048;
      v107 = v70;
      v108 = 2113;
      v109 = v69;
      v110 = 2113;
      v111 = v25;
      v112 = 2113;
      v113 = v30;
      _os_log_impl(&dword_18FFDC000, v21, OS_LOG_TYPE_DEFAULT, "Preparing smart reply candidate generation request (ID: %@) for state: (%@),  context: <TIInputContextHistory: %p, id: %{private}@>, candidate: %{private}@, lastEntry: %{private}@", buf, 0x3Eu);

      v17 = v28;
      v13 = v79;

      v20 = v73;
      v7 = v74;
    }

    v31 = TUISmartReplyLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      v67 = [v9 inputContextHistory];
      v68 = [v67 mostRecentTextEntryLogString];
      *buf = 138477827;
      v103 = v68;
      _os_log_debug_impl(&dword_18FFDC000, v31, OS_LOG_TYPE_DEBUG, "   Supplemental privacy lastEntry: %{private}@", buf, 0xCu);
    }

    v32 = [v9 inputContextHistory];
    v33 = [(TUISmartReplyGenerator *)self contextHistoryDidChange:v32];

    v78 = v17;
    if (v7 && ([v9 inputContextHistory], v34 = objc_claimAutoreleasedReturnValue(), v35 = -[TUISmartReplyGenerator hasPendingRequestForContext:historyDidChange:](self, "hasPendingRequestForContext:historyDidChange:", v34, v33), v34, v35))
    {
      v36 = TUISmartReplyLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v103 = v80;
        _os_log_impl(&dword_18FFDC000, v36, OS_LOG_TYPE_DEFAULT, "Ignored smart reply candidate generation request (ID: %@) due to pending request", buf, 0xCu);
      }

      v37 = [(TUISmartReplyGenerator *)self pendingCallbacks];
      v38 = [v7 copy];
      [v37 addObject:v38];
      v39 = v80;
    }

    else
    {
      [(TUISmartReplyGenerator *)self setCurrentKeyboardState:v9];
      v43 = objc_alloc(MEMORY[0x1E69D9328]);
      v44 = [(TUISmartReplyGenerator *)self currentInputContextHistory];
      v45 = [v43 initWithTIInputContextHistory:v44];

      if (v7)
      {
        v46 = [(TUISmartReplyGenerator *)self responseTimer];

        if (v46)
        {
          v47 = [(TUISmartReplyGenerator *)self responseTimer];
          dispatch_source_cancel(v47);

          [(TUISmartReplyGenerator *)self setResponseTimer:0];
        }

        v48 = [(TUISmartReplyGenerator *)self generationQueue];
        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 3221225472;
        v90[2] = __74__TUISmartReplyGenerator__performGenerateCandidatesForContext_completion___block_invoke_24;
        v90[3] = &unk_1E72D2B98;
        v91 = v80;
        v92 = self;
        v97 = v20;
        v93 = v9;
        v98 = v76;
        v99 = v77;
        v94 = v17;
        v95 = v81;
        v96 = v7;
        v49 = [(TUISmartReplyGenerator *)self createTimerWithDelay:5 onQueue:v48 handler:v90];
        [(TUISmartReplyGenerator *)self setResponseTimer:v49];
      }

      v50 = TUISmartReplyLog();
      v75 = v45;
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = [(TUISmartReplyGenerator *)self currentInputContextHistory];
        v52 = objc_opt_class();
        v53 = [v17 candidate];
        v54 = [v52 obscuredStringDescription:v53];
        *buf = 138412803;
        v103 = v80;
        v104 = 2048;
        v105 = v51;
        v106 = 2113;
        v107 = v54;
        _os_log_impl(&dword_18FFDC000, v50, OS_LOG_TYPE_DEFAULT, "Smart reply generation requested (ID: %@) for context: <TIInputContextHistory %p>, entryPoint: %{private}@", buf, 0x20u);

        v13 = v79;
      }

      v55 = [(TUISmartReplyGenerator *)self currentInputContextHistory];
      v56 = [v55 threadIdentifier];
      [(TUISmartReplyGenerator *)self setPendingRequestThreadIdentifier:v56];

      if (!v17)
      {
        v57 = [v9 clientIdentifier];
        v58 = [v9 inputContextHistory];
        v59 = [v58 threadIdentifier];
        [TUIInputAnalytics didHandleSmartReplyAnalyticsEventOfType:0 withBundleId:v57 withInputContextHistoryRequestId:v80 withMsgOrMailThreadId:v59 withSmartReplyResponse:0 withConversationType:v77];

        v13 = v79;
      }

      v38 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
      [v38 setObject:v60 forKeyedSubscript:*MEMORY[0x1E69D94F0]];

      v61 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
      [v38 setObject:v61 forKeyedSubscript:*MEMORY[0x1E69D94A0]];

      v62 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "autocapitalizationEnabled")}];
      [v38 setObject:v62 forKeyedSubscript:*MEMORY[0x1E69D94E8]];

      v63 = [(TUISmartReplyGenerator *)self textComposerClient];

      if (!v63)
      {
        v64 = TUISmartReplyLog();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_18FFDC000, v64, OS_LOG_TYPE_DEFAULT, "Composer client wrapper is unexpectedly nil.", buf, 2u);
        }
      }

      v65 = [(TUISmartReplyGenerator *)self textComposerClient];
      v66 = [v13 candidate];
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3221225472;
      v82[2] = __74__TUISmartReplyGenerator__performGenerateCandidatesForContext_completion___block_invoke_27;
      v82[3] = &unk_1E72D2BE8;
      v82[4] = self;
      v39 = v80;
      v83 = v80;
      v84 = v9;
      v88 = v76;
      v89 = v77;
      v85 = v78;
      v86 = v81;
      v87 = v7;
      v13 = v79;
      v37 = v75;
      [v65 requestSmartRepliesWithContext:v86 inputContextHistory:v75 conversationType:v77 smartReplyType:v76 candidateString:v66 options:v38 completion:v82];
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

    v42 = [(TUISmartReplyGenerator *)self callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__TUISmartReplyGenerator__performGenerateCandidatesForContext_completion___block_invoke;
    block[3] = &unk_1E72D8500;
    v101 = v7;
    dispatch_async(v42, block);

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

- (void)generateCandidatesWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__TUISmartReplyGenerator_generateCandidatesWithContext_completion___block_invoke;
  v10[3] = &unk_1E72D2B70;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (BOOL)hasPendingRequestForContext:(id)a3 historyDidChange:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 threadIdentifier];
  if ([v7 length])
  {
    v8 = [v6 threadIdentifier];
    v9 = [(TUISmartReplyGenerator *)self pendingRequestThreadIdentifier];
    v10 = [v8 isEqualToString:v9] & !v4;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)contextHistoryDidChange:(id)a3
{
  v4 = a3;
  v5 = [v4 threadIdentifier];
  v6 = [(TUISmartReplyGenerator *)self currentInputContextHistory];
  v7 = [v6 threadIdentifier];
  v8 = [v5 isEqualToString:v7];

  if (v8 && (-[TUISmartReplyGenerator currentInputContextHistory](self, "currentInputContextHistory"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v4 isEqual:v9], v9, v10))
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__2030;
    v27 = __Block_byref_object_dispose__2031;
    v28 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
    v11 = [(TUISmartReplyGenerator *)self currentInputContextHistory];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __50__TUISmartReplyGenerator_contextHistoryDidChange___block_invoke;
    v22[3] = &unk_1E72D2B20;
    v22[4] = &v23;
    [v11 enumerateAllContextEntriesWithEntryId:v22];

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
    [v4 enumerateAllContextEntriesWithEntryId:v15];
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

- (BOOL)_queueOnly_isSmartReplyAvailableForClientAndType:(int64_t)a3
{
  v5 = [(TUISmartReplyGenerator *)self currentKeyboardState];
  v6 = [v5 clientIdentifier];
  v7 = [(TUISmartReplyGenerator *)self isClientMail:v6];

  if (v7)
  {
    if (a3 != 1)
    {
      if (!a3)
      {

        return [(TUISmartReplyGenerator *)self _isGMAvailableForMailReply];
      }

      return 0;
    }

    return [(TUISmartReplyGenerator *)self _isGMAvailableForMailReplyLongFormBasic];
  }

  else
  {
    v9 = [(TUISmartReplyGenerator *)self currentKeyboardState];
    v10 = [v9 clientIdentifier];
    v11 = [(TUISmartReplyGenerator *)self isClientMessages:v10];

    if (v11)
    {
      if (a3)
      {
        return 0;
      }
    }

    else
    {
      v12 = _os_feature_enabled_impl();
      if (a3 || !v12)
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

+ (id)obscuredStringDescription:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if ([v3 length])
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

+ (id)obscuredArrayDescription:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
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

+ (id)stringForSmartReplyType:(int64_t)a3
{
  if (a3)
  {
    return @"long";
  }

  else
  {
    return @"short";
  }
}

+ (BOOL)emptyOutOfProcessKeyboardContext:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 newlineCharacterSet];
  v6 = [v4 rangeOfCharacterFromSet:v5 options:0 range:{0, 1}];

  return v6 == 0x7FFFFFFFFFFFFFFFLL;
}

+ (BOOL)emptyInputContext:(id)a3 withTrimmedCharacters:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E696AD48]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v6;
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

  v13 = [v5 stringByTrimmingCharactersInSet:v7];
  v14 = [v13 length] == 0;

  return v14;
}

@end