@interface TIKeyboardInputManagerWrapper
- (TIKeyboardInputManagerLogging)logger;
- (TIKeyboardInputManagerWrapper)init;
- (id)generateInlineCompletions:(id)completions withPrefix:(id)prefix;
- (void)_updateKeyboardOutput:(id)output withSecureCandidatePayload:(id)payload keyboardState:(id)state;
- (void)acceptSecureCandidate:(id)candidate keyboardState:(id)state completion:(id)completion;
- (void)acceptingCandidateWithTrigger:(id)trigger;
- (void)addSupplementalLexicon:(id)lexicon completionHandler:(id)handler;
- (void)candidateRejected:(id)rejected;
- (void)changingContextWithTrigger:(id)trigger;
- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range completionHandler:(id)handler;
- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range requestToken:(id)token completionHandler:(id)handler;
- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range completionHandler:(id)handler;
- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range requestToken:(id)token completionHandler:(id)handler;
- (void)generateRefinementsForCandidate:(id)candidate keyboardState:(id)state completionHandler:(id)handler;
- (void)generateReplacementsForString:(id)string keyLayout:(id)layout continuation:(id)continuation;
- (void)handleAcceptedCandidate:(id)candidate acceptedSecureCandidate:(id)secureCandidate keyboardState:(id)state completionHandler:(id)handler;
- (void)handleAcceptedCandidate:(id)candidate keyboardState:(id)state completionHandler:(id)handler;
- (void)handleKeyboardInput:(id)input acceptedSecureCandidate:(id)candidate keyboardState:(id)state completionHandler:(id)handler;
- (void)handleKeyboardInput:(id)input keyboardState:(id)state completionHandler:(id)handler;
- (void)handleKeyboardState:(id)state withInputEvent:(id)event;
- (void)lastAcceptedCandidateCorrected;
- (void)performHitTestForTouchEvent:(id)event keyboardState:(id)state continuation:(id)continuation;
- (void)performHitTestForTouchEvents:(id)events keyboardState:(id)state continuation:(id)continuation;
- (void)registerLearning:(id)learning fullCandidate:(id)candidate keyboardState:(id)state mode:(id)mode;
- (void)registerLearningForCompletion:(id)completion fullCompletion:(id)fullCompletion context:(id)context prefix:(id)prefix mode:(id)mode;
- (void)removeSupplementalLexiconWithIdentifier:(unint64_t)identifier;
- (void)setLogger:(id)logger;
- (void)setOriginalInput:(id)input;
- (void)skipHitTestForTouchEvent:(id)event keyboardState:(id)state;
- (void)skipHitTestForTouchEvents:(id)events keyboardState:(id)state;
- (void)smartSelectionForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language tokenizedRanges:(id)ranges options:(unint64_t)options completion:(id)completion;
- (void)stickerWithIdentifier:(id)identifier stickerRoles:(id)roles completionHandler:(id)handler;
- (void)syncToKeyboardState:(id)state completionHandler:(id)handler;
- (void)textAccepted:(id)accepted completionHandler:(id)handler;
- (void)updateAnalyticsForRejectedSuggestion:(id)suggestion keyboardState:(id)state;
- (void)writeTypologyLogWithCompletionHandler:(id)handler;
@end

@implementation TIKeyboardInputManagerWrapper

- (TIKeyboardInputManagerWrapper)init
{
  v6.receiver = self;
  v6.super_class = TIKeyboardInputManagerWrapper;
  v2 = [(TIKeyboardInputManagerWrapper *)&v6 init];
  if (v2)
  {
    v3 = [[TIKeyboardInputManagerBase alloc] initWithInputMode:0 keyboardState:0];
    inputManager = v2->_inputManager;
    v2->_inputManager = v3;
  }

  return v2;
}

- (TIKeyboardInputManagerLogging)logger
{
  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  inputManagerLogger = [inputManager inputManagerLogger];

  return inputManagerLogger;
}

- (void)stickerWithIdentifier:(id)identifier stickerRoles:(id)roles completionHandler:(id)handler
{
  identifierCopy = identifier;
  rolesCopy = roles;
  handlerCopy = handler;
  if (_os_feature_enabled_impl())
  {
    v10 = _os_feature_enabled_impl();
  }

  else
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    languageCode = [currentLocale languageCode];

    inputMode = [(TIKeyboardInputManagerBase *)self->_inputManager inputMode];
    languageWithRegion = [inputMode languageWithRegion];

    if (_os_feature_enabled_impl() && [languageCode hasPrefix:@"en"])
    {
      v10 = [languageWithRegion hasPrefix:@"en"];
    }

    else
    {
      v10 = 0;
    }
  }

  if (identifierCopy && v10)
  {
    v15 = objc_alloc_init(TIStickerCandidateGenerator);
    v16 = [(TIStickerCandidateGenerator *)v15 keyboardStickerWithIdentifier:identifierCopy roles:rolesCopy];
    handlerCopy[2](handlerCopy, v16);
  }

  else
  {
    handlerCopy[2](handlerCopy, 0);
  }
}

- (void)removeSupplementalLexiconWithIdentifier:(unint64_t)identifier
{
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (self ^ 0xF));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "kbdManager.removeSupplementalLexicon", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v8 = +[TITransientLexiconManager sharedInstance];
  supplementalLexicons = [v8 supplementalLexicons];
  [supplementalLexicons removeLexiconWithIdentifier:identifier];

  kdebug_trace();
  v10 = kac_get_log();
  v11 = os_signpost_id_make_with_pointer(v10, (self ^ 0xF));
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v10, OS_SIGNPOST_INTERVAL_END, v12, "kbdManager.removeSupplementalLexicon", &unk_22CCA4FEF, v13, 2u);
    }
  }
}

- (void)addSupplementalLexicon:(id)lexicon completionHandler:(id)handler
{
  lexiconCopy = lexicon;
  handlerCopy = handler;
  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, (self ^ 0xE));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "kbdManager.addSupplementalLexicon", &unk_22CCA4FEF, buf, 2u);
    }
  }

  v11 = +[TITransientLexiconManager sharedInstance];
  ensureSupplementalLexicons = [v11 ensureSupplementalLexicons];
  [ensureSupplementalLexicons addLexicon:lexiconCopy];

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

  kdebug_trace();
  v13 = kac_get_log();
  v14 = os_signpost_id_make_with_pointer(v13, (self ^ 0xE));
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v13))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v13, OS_SIGNPOST_INTERVAL_END, v15, "kbdManager.addSupplementalLexicon", &unk_22CCA4FEF, v16, 2u);
    }
  }
}

- (void)writeTypologyLogWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager storeLanguageModelDynamicDataIncludingCache];

  inputManager2 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager2 clearHumanReadableTrace];

  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  writeToFile = [logger writeToFile];

  v8 = [writeToFile objectAtIndexedSubscript:0];
  handlerCopy[2](handlerCopy, v8);
}

- (void)lastAcceptedCandidateCorrected
{
  kdebug_trace();
  v3 = kac_get_log();
  v4 = os_signpost_id_make_with_pointer(v3, (self ^ 0xD));
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "kbdManager.lastAcceptedCorrected", &unk_22CCA4FEF, buf, 2u);
    }
  }

  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager lastAcceptedCandidateCorrected];

  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  [logger logReceivedLastAcceptedCandidateCorrected];

  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, (self ^ 0xD));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v8, OS_SIGNPOST_INTERVAL_END, v10, "kbdManager.lastAcceptedCorrected", &unk_22CCA4FEF, v11, 2u);
    }
  }
}

- (void)registerLearningForCompletion:(id)completion fullCompletion:(id)fullCompletion context:(id)context prefix:(id)prefix mode:(id)mode
{
  completionCopy = completion;
  fullCompletionCopy = fullCompletion;
  contextCopy = context;
  prefixCopy = prefix;
  modeCopy = mode;
  kdebug_trace();
  v17 = kac_get_log();
  v18 = os_signpost_id_make_with_pointer(v17, (self ^ 0xC));
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = v18;
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v19, "kbdManager.candidateRejected", &unk_22CCA4FEF, buf, 2u);
    }
  }

  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager registerLearningForCompletion:completionCopy fullCompletion:fullCompletionCopy context:contextCopy prefix:prefixCopy mode:modeCopy];

  kdebug_trace();
  v21 = kac_get_log();
  v22 = os_signpost_id_make_with_pointer(v21, (self ^ 0xC));
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v23 = v22;
    if (os_signpost_enabled(v21))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v21, OS_SIGNPOST_INTERVAL_END, v23, "kbdManager.candidateRejected", &unk_22CCA4FEF, v24, 2u);
    }
  }
}

- (void)registerLearning:(id)learning fullCandidate:(id)candidate keyboardState:(id)state mode:(id)mode
{
  learningCopy = learning;
  candidateCopy = candidate;
  stateCopy = state;
  modeCopy = mode;
  kdebug_trace();
  v14 = kac_get_log();
  v15 = os_signpost_id_make_with_pointer(v14, (self ^ 0xC));
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "kbdManager.candidateRejected", &unk_22CCA4FEF, buf, 2u);
    }
  }

  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager registerLearning:learningCopy fullCandidate:candidateCopy keyboardState:stateCopy mode:modeCopy];

  kdebug_trace();
  v18 = kac_get_log();
  v19 = os_signpost_id_make_with_pointer(v18, (self ^ 0xC));
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v19;
    if (os_signpost_enabled(v18))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v18, OS_SIGNPOST_INTERVAL_END, v20, "kbdManager.candidateRejected", &unk_22CCA4FEF, v21, 2u);
    }
  }
}

- (void)candidateRejected:(id)rejected
{
  rejectedCopy = rejected;
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (self ^ 0xC));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "kbdManager.candidateRejected", &unk_22CCA4FEF, buf, 2u);
    }
  }

  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager candidateRejected:rejectedCopy];

  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  [logger logReceivedCandidateRejected:rejectedCopy];

  kdebug_trace();
  v10 = kac_get_log();
  v11 = os_signpost_id_make_with_pointer(v10, (self ^ 0xC));
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v10, OS_SIGNPOST_INTERVAL_END, v12, "kbdManager.candidateRejected", &unk_22CCA4FEF, v13, 2u);
    }
  }
}

- (void)textAccepted:(id)accepted completionHandler:(id)handler
{
  acceptedCopy = accepted;
  handlerCopy = handler;
  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, (self ^ 0xB));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "kbdManager.textAccepted", &unk_22CCA4FEF, buf, 2u);
    }
  }

  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager textAccepted:acceptedCopy fromPredictiveInputBar:0 withInput:0];

  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  [logger logReceivedTextAccepted:acceptedCopy];

  inputManager2 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  keyboardConfiguration = [inputManager2 keyboardConfiguration];

  kdebug_trace();
  v15 = kac_get_log();
  v16 = os_signpost_id_make_with_pointer(v15, (self ^ 0xB));
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v15))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v15, OS_SIGNPOST_INTERVAL_END, v17, "kbdManager.textAccepted", &unk_22CCA4FEF, v18, 2u);
    }
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, keyboardConfiguration);
  }
}

- (void)setOriginalInput:(id)input
{
  inputCopy = input;
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (self ^ 0xA));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "kbdManager.setOriginalInput", &unk_22CCA4FEF, buf, 2u);
    }
  }

  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager setOriginalInput:inputCopy];

  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  [logger logReceivedSetOriginalInput:inputCopy];

  kdebug_trace();
  v10 = kac_get_log();
  v11 = os_signpost_id_make_with_pointer(v10, (self ^ 0xA));
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v10, OS_SIGNPOST_INTERVAL_END, v12, "kbdManager.setOriginalInput", &unk_22CCA4FEF, v13, 2u);
    }
  }
}

- (void)smartSelectionForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language tokenizedRanges:(id)ranges options:(unint64_t)options completion:(id)completion
{
  length = range.length;
  location = range.location;
  completionCopy = completion;
  rangesCopy = ranges;
  languageCopy = language;
  documentCopy = document;
  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v19 = [inputManager smartSelectionRangeForTextInDocument:documentCopy inRange:location language:length tokenizedRanges:languageCopy options:{rangesCopy, options}];
  v21 = v20;

  completionCopy[2](completionCopy, v19, v21);
}

- (void)skipHitTestForTouchEvents:(id)events keyboardState:(id)state
{
  v24 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  stateCopy = state;
  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:stateCopy];
  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  if (logger)
  {
    v9 = [stateCopy copy];
  }

  else
  {
    v9 = 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = eventsCopy;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
        [inputManager skipHitTestForTouchEvent:v15 keyboardState:stateCopy];

        logger2 = [(TIKeyboardInputManagerWrapper *)self logger];
        [logger2 logReceivedSkipHitTestForTouchEvent:v15 forKeyboardState:v9];
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)skipHitTestForTouchEvent:(id)event keyboardState:(id)state
{
  stateCopy = state;
  eventCopy = event;
  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:stateCopy];
  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  if (logger)
  {
    v8 = [stateCopy copy];
  }

  else
  {
    v8 = 0;
  }

  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager skipHitTestForTouchEvent:eventCopy keyboardState:stateCopy];

  logger2 = [(TIKeyboardInputManagerWrapper *)self logger];
  [logger2 logReceivedSkipHitTestForTouchEvent:eventCopy forKeyboardState:v8];
}

- (void)performHitTestForTouchEvents:(id)events keyboardState:(id)state continuation:(id)continuation
{
  eventsCopy = events;
  stateCopy = state;
  continuationCopy = continuation;
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, (self ^ 7));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "kbdManager.performHitTest", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:stateCopy];
  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  if (logger)
  {
    v15 = [stateCopy copy];
  }

  else
  {
    v15 = 0;
  }

  if ([eventsCopy count] >= 2)
  {
    v16 = 1;
    do
    {
      v17 = [eventsCopy objectAtIndexedSubscript:v16 - 1];
      inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
      [inputManager skipHitTestForTouchEvent:v17 keyboardState:stateCopy];

      logger2 = [(TIKeyboardInputManagerWrapper *)self logger];
      [logger2 logReceivedSkipHitTestForTouchEvent:v17 forKeyboardState:v15];

      ++v16;
    }

    while (v16 < [eventsCopy count]);
  }

  inputManager2 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  lastObject = [eventsCopy lastObject];
  v22 = [inputManager2 performHitTestForTouchEvent:lastObject keyboardState:stateCopy];

  continuationCopy[2](continuationCopy, v22);
  logger3 = [(TIKeyboardInputManagerWrapper *)self logger];
  lastObject2 = [eventsCopy lastObject];
  [logger3 logHitKeyCode:v22 forTouchEvent:lastObject2 keyboardState:v15];

  kdebug_trace();
  v25 = kac_get_log();
  v26 = os_signpost_id_make_with_pointer(v25, (self ^ 7));
  if (v26 - 1 < 0xFFFFFFFFFFFFFFFELL)
  {
    v27 = v26;
    if (os_signpost_enabled(v25))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v25, OS_SIGNPOST_INTERVAL_END, v27, "kbdManager.performHitTest", &unk_22CCA4FEF, v28, 2u);
    }
  }
}

- (void)performHitTestForTouchEvent:(id)event keyboardState:(id)state continuation:(id)continuation
{
  eventCopy = event;
  stateCopy = state;
  continuationCopy = continuation;
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, (self ^ 7));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "kbdManager.performHitTest", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:stateCopy];
  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  if (logger)
  {
    v15 = [stateCopy copy];
  }

  else
  {
    v15 = 0;
  }

  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v17 = [inputManager performHitTestForTouchEvent:eventCopy keyboardState:stateCopy];

  continuationCopy[2](continuationCopy, v17);
  logger2 = [(TIKeyboardInputManagerWrapper *)self logger];
  [logger2 logHitKeyCode:v17 forTouchEvent:eventCopy keyboardState:v15];

  kdebug_trace();
  v19 = kac_get_log();
  v20 = os_signpost_id_make_with_pointer(v19, (self ^ 7));
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = v20;
    if (os_signpost_enabled(v19))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v19, OS_SIGNPOST_INTERVAL_END, v21, "kbdManager.performHitTest", &unk_22CCA4FEF, v22, 2u);
    }
  }
}

- (void)generateRefinementsForCandidate:(id)candidate keyboardState:(id)state completionHandler:(id)handler
{
  candidateCopy = candidate;
  stateCopy = state;
  handlerCopy = handler;
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, (self ^ 6));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "kbdManager.generateRefinements", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:stateCopy];
  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  if (logger)
  {
    v15 = [stateCopy copy];
  }

  else
  {
    v15 = 0;
  }

  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v17 = [inputManager generateRefinementsForCandidate:candidateCopy];

  handlerCopy[2](handlerCopy, v17);
  logger2 = [(TIKeyboardInputManagerWrapper *)self logger];
  [logger2 logRefinements:v17 forCandidate:candidateCopy keyboardState:v15];

  kdebug_trace();
  v19 = kac_get_log();
  v20 = os_signpost_id_make_with_pointer(v19, (self ^ 6));
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v21 = v20;
    if (os_signpost_enabled(v19))
    {
      *v22 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v19, OS_SIGNPOST_INTERVAL_END, v21, "kbdManager.generateRefinements", &unk_22CCA4FEF, v22, 2u);
    }
  }
}

- (void)generateReplacementsForString:(id)string keyLayout:(id)layout continuation:(id)continuation
{
  stringCopy = string;
  layoutCopy = layout;
  continuationCopy = continuation;
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, (self ^ 5));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "kbdManager.generateReplacements", &unk_22CCA4FEF, buf, 2u);
    }
  }

  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v15 = [inputManager generateReplacementsForString:stringCopy keyLayout:layoutCopy];

  continuationCopy[2](continuationCopy, v15);
  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  [logger logReplacements:v15 forString:stringCopy keyLayout:layoutCopy];

  kdebug_trace();
  v17 = kac_get_log();
  v18 = os_signpost_id_make_with_pointer(v17, (self ^ 5));
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = v18;
    if (os_signpost_enabled(v17))
    {
      *v20 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v17, OS_SIGNPOST_INTERVAL_END, v19, "kbdManager.generateReplacements", &unk_22CCA4FEF, v20, 2u);
    }
  }
}

- (void)changingContextWithTrigger:(id)trigger
{
  triggerCopy = trigger;
  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v5 = [inputManager isMemberOfClass:objc_opt_class()];

  if (v5)
  {
    [(TIKeyboardInputManagerWrapper *)self setCachedContextChangeTrigger:triggerCopy];
  }

  else
  {
    inputManager2 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    [inputManager2 changingContextWithTrigger:triggerCopy];
  }
}

- (void)acceptingCandidateWithTrigger:(id)trigger
{
  triggerCopy = trigger;
  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager acceptingCandidateWithTrigger:triggerCopy];
}

- (void)handleAcceptedCandidate:(id)candidate acceptedSecureCandidate:(id)secureCandidate keyboardState:(id)state completionHandler:(id)handler
{
  candidateCopy = candidate;
  secureCandidateCopy = secureCandidate;
  stateCopy = state;
  handlerCopy = handler;
  kdebug_trace();
  v14 = kac_get_log();
  v15 = os_signpost_id_make_with_pointer(v14, (self ^ 4));
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = v15;
    if (os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "kbdManager.acceptCandidate", &unk_22CCA4FEF, buf, 2u);
    }
  }

  if (!candidateCopy)
  {
    v18 = secureCandidateCopy;
    v19 = 0;
    goto LABEL_17;
  }

  slotID = [candidateCopy slotID];
  v18 = secureCandidateCopy;

  v19 = 0;
  if (secureCandidateCopy == candidateCopy || !slotID)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v18;
    proactivePredictedItem = [v20 proactivePredictedItem];
    v18 = v20;
    if (proactivePredictedItem)
    {
      v22 = proactivePredictedItem;
      proactivePredictedItem2 = [v20 proactivePredictedItem];
      if ([proactivePredictedItem2 itemType] != 1)
      {

        v18 = v20;
        goto LABEL_14;
      }

      proactivePredictedItem3 = [v20 proactivePredictedItem];
      operationData = [proactivePredictedItem3 operationData];

      v18 = v20;
      if (operationData)
      {
        v18 = [v20 candidateByReplacingWithCandidate:&stru_283FDFAF8];
        v22 = v20;
LABEL_14:
      }
    }
  }

  v19 = 1;
LABEL_17:
  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:stateCopy];
  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  if (logger)
  {
    v27 = [stateCopy copy];
  }

  else
  {
    v27 = 0;
  }

  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v29 = [inputManager handleAcceptedCandidate:v18 keyboardState:stateCopy];

  v30 = objc_alloc_init(MEMORY[0x277D6F410]);
  [v30 setTextToCommit:v29];
  if (v19)
  {
    v31 = +[TIAppAutofillManager sharedInstance];
    secureCandidateRenderer = [v31 secureCandidateRenderer];

    v33 = [secureCandidateRenderer cachedPayloadForSecureCandidateSlotID:{objc_msgSend(v18, "slotID")}];
    [(TIKeyboardInputManagerWrapper *)self _updateKeyboardOutput:v30 withSecureCandidatePayload:v33 keyboardState:stateCopy];
  }

  inputManager2 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  keyboardConfiguration = [inputManager2 keyboardConfiguration];

  handlerCopy[2](handlerCopy, keyboardConfiguration, v30);
  logger2 = [(TIKeyboardInputManagerWrapper *)self logger];
  [logger2 logKeyboardConfig:keyboardConfiguration textToCommit:v29 forAcceptedCandidate:v18 keyboardState:v27];

  kdebug_trace();
  v37 = kac_get_log();
  v38 = os_signpost_id_make_with_pointer(v37, (self ^ 4));
  if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v39 = v38;
    if (os_signpost_enabled(v37))
    {
      *v40 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v37, OS_SIGNPOST_INTERVAL_END, v39, "kbdManager.acceptCandidate", &unk_22CCA4FEF, v40, 2u);
    }
  }
}

- (void)handleAcceptedCandidate:(id)candidate keyboardState:(id)state completionHandler:(id)handler
{
  candidateCopy = candidate;
  stateCopy = state;
  handlerCopy = handler;
  if (candidateCopy && [candidateCopy slotID])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __89__TIKeyboardInputManagerWrapper_handleAcceptedCandidate_keyboardState_completionHandler___block_invoke;
    v11[3] = &unk_27872F2B0;
    v11[4] = self;
    v12 = candidateCopy;
    v13 = stateCopy;
    v14 = handlerCopy;
    [(TIKeyboardInputManagerWrapper *)self acceptSecureCandidate:v12 keyboardState:v13 completion:v11];
  }

  else
  {
    [(TIKeyboardInputManagerWrapper *)self updateAnalyticsForRejectedSuggestion:candidateCopy keyboardState:stateCopy];
    [(TIKeyboardInputManagerWrapper *)self handleAcceptedCandidate:candidateCopy acceptedSecureCandidate:candidateCopy keyboardState:stateCopy completionHandler:handlerCopy];
  }
}

uint64_t __89__TIKeyboardInputManagerWrapper_handleAcceptedCandidate_keyboardState_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  if (a2)
  {
    v6 = a1[7];
    v7 = a2;
  }

  else
  {
    [v3 updateAnalyticsForRejectedSuggestion:v4 keyboardState:a1[6]];
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];
    v6 = a1[7];
    v7 = v4;
  }

  return [v3 handleAcceptedCandidate:v4 acceptedSecureCandidate:v7 keyboardState:v5 completionHandler:v6];
}

- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range requestToken:(id)token completionHandler:(id)handler
{
  stateCopy = state;
  tokenCopy = token;
  handlerCopy = handler;
  kdebug_trace();
  v12 = kac_get_log();
  v13 = os_signpost_id_make_with_pointer(v12, (self ^ 3));
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "kbdManager.generateCandidates", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:stateCopy];
  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  if (logger)
  {
    v16 = [stateCopy copy];
  }

  else
  {
    v16 = 0;
  }

  objc_initWeak(buf, self);
  v17 = [TIStreamingCandidateHandler alloc];
  clientProxy = [(TIKeyboardInputManagerWrapper *)self clientProxy];
  logger2 = [(TIKeyboardInputManagerWrapper *)self logger];
  inputManager = self->_inputManager;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __115__TIKeyboardInputManagerWrapper_generateCandidatesWithKeyboardState_candidateRange_requestToken_completionHandler___block_invoke;
  v27[3] = &unk_27872F288;
  objc_copyWeak(&v31, buf);
  v29 = tokenCopy;
  v30 = handlerCopy;
  v28 = v16;
  v21 = tokenCopy;
  v22 = v16;
  v23 = handlerCopy;
  v24 = [(TIStreamingCandidateHandler *)v17 initWithClientProxy:clientProxy keyboardState:v22 requestToken:v21 logger:logger2 inputManager:inputManager candidateResultSetHandler:v27];

  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager generateCandidatesWithKeyboardState:stateCopy candidateRange:range.location candidateHandler:{range.length, v24}];

  objc_destroyWeak(&v31);
  objc_destroyWeak(buf);
}

void __115__TIKeyboardInputManagerWrapper_generateCandidatesWithKeyboardState_candidateRange_requestToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  (*(*(a1 + 48) + 16))();
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (WeakRetained ^ 3));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_END, v7, "kbdManager.generateCandidates", &unk_22CCA4FEF, v12, 2u);
    }
  }

  v8 = [WeakRetained logger];
  v9 = [WeakRetained inputManager];
  v10 = [v9 humanReadableTrace];
  [v8 logCandidateResultSet:v3 trace:v10 forKeyboardState:*(a1 + 32) requestToken:*(a1 + 40)];

  v11 = [WeakRetained inputManager];
  [v11 clearHumanReadableTrace];
}

- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  stateCopy = state;
  handlerCopy = handler;
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, (self ^ 3));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "kbdManager.generateCandidates", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:stateCopy];
  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  if (logger)
  {
    v15 = [stateCopy copy];
  }

  else
  {
    v15 = 0;
  }

  v16 = [TIAccumulatingCandidateHandler alloc];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __102__TIKeyboardInputManagerWrapper_generateCandidatesWithKeyboardState_candidateRange_completionHandler___block_invoke;
  v21[3] = &unk_27872F260;
  v22 = v15;
  v23 = handlerCopy;
  v21[4] = self;
  v17 = v15;
  v18 = handlerCopy;
  v19 = [(TIAccumulatingCandidateHandler *)v16 initWithResultSetHandlerBlock:v21];
  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager generateCandidatesWithKeyboardState:stateCopy candidateRange:location candidateHandler:{length, v19}];
}

void __102__TIKeyboardInputManagerWrapper_generateCandidatesWithKeyboardState_candidateRange_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 48) + 16))();
  v4 = *(a1 + 32);
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (*(a1 + 32) ^ 3));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_END, v7, "kbdManager.generateCandidates", &unk_22CCA4FEF, v12, 2u);
    }
  }

  v8 = [*(a1 + 32) logger];
  v9 = [*(a1 + 32) inputManager];
  v10 = [v9 humanReadableTrace];
  [v8 logCandidateResultSet:v3 trace:v10 forKeyboardState:*(a1 + 40) requestToken:0];

  v11 = [*(a1 + 32) inputManager];
  [v11 clearHumanReadableTrace];
}

- (id)generateInlineCompletions:(id)completions withPrefix:(id)prefix
{
  prefixCopy = prefix;
  completionsCopy = completions;
  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v9 = [inputManager generateInlineCompletions:completionsCopy withPrefix:prefixCopy];

  inputManager2 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager2 clearHumanReadableTrace];

  return v9;
}

- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range requestToken:(id)token completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  stateCopy = state;
  tokenCopy = token;
  handlerCopy = handler;
  kdebug_trace();
  v13 = kac_get_log();
  v14 = os_signpost_id_make_with_pointer(v13, (self ^ 1));
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = v14;
    if (os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "kbdManager.generateAutocorrections", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:stateCopy];
  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  if (logger)
  {
    v17 = [stateCopy copy];
  }

  else
  {
    v17 = 0;
  }

  v18 = [TIStreamingCandidateHandler alloc];
  clientProxy = [(TIKeyboardInputManagerWrapper *)self clientProxy];
  logger2 = [(TIKeyboardInputManagerWrapper *)self logger];
  inputManager = self->_inputManager;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __120__TIKeyboardInputManagerWrapper_generateAutocorrectionsWithKeyboardState_candidateRange_requestToken_completionHandler___block_invoke;
  v29[3] = &unk_27872F238;
  v32 = stateCopy;
  v33 = handlerCopy;
  v29[4] = self;
  v30 = v17;
  v31 = tokenCopy;
  v22 = stateCopy;
  v23 = tokenCopy;
  v24 = v17;
  v25 = handlerCopy;
  v26 = [(TIStreamingCandidateHandler *)v18 initWithClientProxy:clientProxy keyboardState:v24 requestToken:v23 logger:logger2 inputManager:inputManager candidateHandler:v29];

  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager generateAutocorrectionsWithKeyboardState:v22 candidateRange:location candidateHandler:{length, v26}];
}

void __120__TIKeyboardInputManagerWrapper_generateAutocorrectionsWithKeyboardState_candidateRange_requestToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 64) + 16))();
  v4 = *(a1 + 32);
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (*(a1 + 32) ^ 1));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_END, v7, "kbdManager.generateAutocorrections", &unk_22CCA4FEF, v13, 2u);
    }
  }

  v8 = [*(a1 + 32) logger];
  v9 = [*(a1 + 32) inputManager];
  v10 = [v9 humanReadableTrace];
  [v8 logAutocorrections:v3 trace:v10 forKeyboardState:*(a1 + 40) requestToken:*(a1 + 48)];

  v11 = [*(a1 + 32) inputManager];
  [v11 candidatesOfferedFeedback:v3 keyboardState:*(a1 + 56)];

  v12 = [*(a1 + 32) inputManager];
  [v12 clearHumanReadableTrace];
}

- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range completionHandler:(id)handler
{
  length = range.length;
  location = range.location;
  stateCopy = state;
  handlerCopy = handler;
  kdebug_trace();
  v11 = kac_get_log();
  v12 = os_signpost_id_make_with_pointer(v11, (self ^ 1));
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "kbdManager.generateAutocorrections", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:stateCopy];
  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  if (logger)
  {
    v15 = [stateCopy copy];
  }

  else
  {
    v15 = 0;
  }

  v16 = [TIAccumulatingCandidateHandler alloc];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __107__TIKeyboardInputManagerWrapper_generateAutocorrectionsWithKeyboardState_candidateRange_completionHandler___block_invoke;
  v25 = &unk_27872F210;
  selfCopy = self;
  v27 = v15;
  v28 = stateCopy;
  v29 = handlerCopy;
  v17 = stateCopy;
  v18 = v15;
  v19 = handlerCopy;
  v20 = [(TIAccumulatingCandidateHandler *)v16 initWithHandlerBlock:&v22];
  v21 = [(TIKeyboardInputManagerWrapper *)self inputManager:v22];
  [v21 generateAutocorrectionsWithKeyboardState:v17 candidateRange:location candidateHandler:{length, v20}];
}

void __107__TIKeyboardInputManagerWrapper_generateAutocorrectionsWithKeyboardState_candidateRange_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  (*(*(a1 + 56) + 16))();
  v4 = *(a1 + 32);
  kdebug_trace();
  v5 = kac_get_log();
  v6 = os_signpost_id_make_with_pointer(v5, (*(a1 + 32) ^ 1));
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v5, OS_SIGNPOST_INTERVAL_END, v7, "kbdManager.generateAutocorrections", &unk_22CCA4FEF, v13, 2u);
    }
  }

  v8 = [*(a1 + 32) logger];
  v9 = [*(a1 + 32) inputManager];
  v10 = [v9 humanReadableTrace];
  [v8 logAutocorrections:v3 trace:v10 forKeyboardState:*(a1 + 40) requestToken:0];

  v11 = [*(a1 + 32) inputManager];
  [v11 candidatesOfferedFeedback:v3 keyboardState:*(a1 + 48)];

  v12 = [*(a1 + 32) inputManager];
  [v12 clearHumanReadableTrace];
}

- (void)handleKeyboardInput:(id)input acceptedSecureCandidate:(id)candidate keyboardState:(id)state completionHandler:(id)handler
{
  v69[1] = *MEMORY[0x277D85DE8];
  inputCopy = input;
  candidateCopy = candidate;
  stateCopy = state;
  handlerCopy = handler;
  acceptedCandidate = [inputCopy acceptedCandidate];

  if (acceptedCandidate == candidateCopy)
  {
    v21 = 0;
  }

  else
  {
    [inputCopy setAcceptedCandidate:candidateCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = candidateCopy;
      proactivePredictedItem = [v14 proactivePredictedItem];
      if (proactivePredictedItem)
      {
        v16 = proactivePredictedItem;
        proactivePredictedItem2 = [v14 proactivePredictedItem];
        if ([proactivePredictedItem2 itemType] == 1)
        {
          proactivePredictedItem3 = [v14 proactivePredictedItem];
          operationData = [proactivePredictedItem3 operationData];
          v20 = operationData == 0;
        }

        else
        {
          v20 = 1;
        }
      }

      else
      {
        v20 = 1;
      }
    }

    else
    {
      v20 = 1;
    }

    acceptedCandidate2 = [inputCopy acceptedCandidate];
    candidate = [acceptedCandidate2 candidate];
    v24 = [candidate length];

    if (v20 && v24)
    {
      v25 = MEMORY[0x277CCACA8];
      acceptedCandidate3 = [inputCopy acceptedCandidate];
      candidate2 = [acceptedCandidate3 candidate];
      string = [inputCopy string];
      v29 = string;
      v30 = &stru_283FDFAF8;
      if (string)
      {
        v30 = string;
      }

      v31 = [v25 stringWithFormat:@"%@%@", candidate2, v30];
      [inputCopy setString:v31];
    }

    else
    {
      [inputCopy setString:&stru_283FDFAF8];
    }

    inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
    acceptedCandidate4 = [inputCopy acceptedCandidate];
    input = [acceptedCandidate4 input];
    v35 = [inputManager deletionCountForString:input];

    acceptedCandidate5 = [inputCopy acceptedCandidate];
    customInfoType = [acceptedCandidate5 customInfoType];

    if (customInfoType == 4096)
    {
      v21 = 0;
    }

    else
    {
      v21 = v35;
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:stateCopy withInputEvent:inputCopy];
  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  if (logger)
  {
    v66 = [stateCopy copy];
  }

  else
  {
    v66 = 0;
  }

  inputManager2 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  if ([inputManager2 isHardwareKeyboardAutocorrectionEnabled])
  {
    touchEvent = [inputCopy touchEvent];

    if (touchEvent)
    {
      goto LABEL_28;
    }

    inputManager2 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    [inputManager2 addSynthesizedTouchToInput:inputCopy keyboardState:stateCopy];
  }

LABEL_28:
  touchEvent2 = [inputCopy touchEvent];

  if (touchEvent2)
  {
    inputManager3 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    touchEvent3 = [inputCopy touchEvent];
    [inputManager3 skipHitTestForTouchEvent:touchEvent3 keyboardState:stateCopy];
  }

  acceptedCandidate6 = [inputCopy acceptedCandidate];

  if (acceptedCandidate6)
  {
    inputManager4 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    acceptedCandidate7 = [inputCopy acceptedCandidate];
    [inputManager4 textAccepted:acceptedCandidate7 fromPredictiveInputBar:objc_msgSend(inputCopy withInput:{"isSynthesizedByAcceptingCandidate"), inputCopy}];
  }

  inputManager5 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager5 syncToKeyboardState:stateCopy];

  inputManager6 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v49 = [inputManager6 handleKeyboardInput:inputCopy];

  if (![stateCopy secureTextEntry] || (objc_msgSend(stateCopy, "textInputTraits"), v50 = objc_claimAutoreleasedReturnValue(), v51 = objc_msgSend(v50, "keyboardAppearance"), v50, v51 != 5))
  {
    v52 = +[TIAppAutofillManager sharedInstance];
    secureCandidateRenderer = [v52 secureCandidateRenderer];

    if (acceptedCandidate == candidateCopy)
    {
LABEL_42:
      if ([stateCopy needAutofill])
      {
        v57 = +[TIAppAutofillManager sharedInstance];
        secureCandidateRenderer2 = [v57 secureCandidateRenderer];
        [secureCandidateRenderer2 clearSecureCandidateCache];
      }

      else
      {
        [secureCandidateRenderer clearSecureCandidateCache];
      }

      goto LABEL_46;
    }

    [v49 setDeletionCount:v21];
    if ([candidateCopy customInfoType] == 1024)
    {
      v68 = @"AutofillSuggestedUsername";
      candidate3 = [candidateCopy candidate];
      v69[0] = candidate3;
      v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:&v68 count:1];
    }

    else
    {
      if (([candidateCopy customInfoType] & 0x800) != 0)
      {
        v56 = 0;
        goto LABEL_41;
      }

      candidate3 = [inputCopy acceptedCandidate];
      v55 = [secureCandidateRenderer cachedPayloadForSecureCandidateSlotID:{objc_msgSend(candidate3, "slotID")}];
    }

    v56 = v55;

LABEL_41:
    [(TIKeyboardInputManagerWrapper *)self _updateKeyboardOutput:v49 withSecureCandidatePayload:v56 keyboardState:stateCopy];

    goto LABEL_42;
  }

LABEL_46:
  inputManager7 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  keyboardConfiguration = [inputManager7 keyboardConfiguration];

  handlerCopy[2](handlerCopy, v49, keyboardConfiguration);
  logger2 = [(TIKeyboardInputManagerWrapper *)self logger];
  inputManager8 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  humanReadableTrace = [inputManager8 humanReadableTrace];
  [logger2 logKeyboardOutput:v49 keyboardConfiguration:keyboardConfiguration trace:humanReadableTrace forKeyboardInput:inputCopy keyboardState:v66];

  inputManager9 = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager9 clearHumanReadableTrace];

  v65 = *MEMORY[0x277D85DE8];
}

- (void)handleKeyboardInput:(id)input keyboardState:(id)state completionHandler:(id)handler
{
  inputCopy = input;
  stateCopy = state;
  handlerCopy = handler;
  acceptedCandidate = [inputCopy acceptedCandidate];
  v12 = acceptedCandidate;
  if (acceptedCandidate && [acceptedCandidate slotID])
  {
    acceptedCandidate2 = [inputCopy acceptedCandidate];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __85__TIKeyboardInputManagerWrapper_handleKeyboardInput_keyboardState_completionHandler___block_invoke;
    v14[3] = &unk_27872F1E8;
    v14[4] = self;
    v15 = inputCopy;
    v16 = stateCopy;
    v18 = handlerCopy;
    v17 = v12;
    [(TIKeyboardInputManagerWrapper *)self acceptSecureCandidate:acceptedCandidate2 keyboardState:v16 completion:v14];
  }

  else
  {
    [(TIKeyboardInputManagerWrapper *)self updateAnalyticsForRejectedSuggestion:v12 keyboardState:stateCopy];
    [(TIKeyboardInputManagerWrapper *)self handleKeyboardInput:inputCopy acceptedSecureCandidate:v12 keyboardState:stateCopy completionHandler:handlerCopy];
  }
}

uint64_t __85__TIKeyboardInputManagerWrapper_handleKeyboardInput_keyboardState_completionHandler___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v4 = a1[6];
  if (a2)
  {
    v5 = a1[5];
    v6 = a1[8];
    v7 = a2;
  }

  else
  {
    [v3 updateAnalyticsForRejectedSuggestion:a1[7] keyboardState:a1[6]];
    v3 = a1[4];
    v5 = a1[5];
    v4 = a1[6];
    v7 = a1[7];
    v6 = a1[8];
  }

  return [v3 handleKeyboardInput:v5 acceptedSecureCandidate:v7 keyboardState:v4 completionHandler:v6];
}

- (void)_updateKeyboardOutput:(id)output withSecureCandidatePayload:(id)payload keyboardState:(id)state
{
  outputCopy = output;
  payloadCopy = payload;
  stateCopy = state;
  if (outputCopy && payloadCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [payloadCopy mutableCopy];
      [outputCopy setCustomInfo:v9];
LABEL_5:

      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stickerIdentifier = [payloadCopy stickerIdentifier];

      if (stickerIdentifier)
      {
        [outputCopy setAcceptedCandidate:payloadCopy];
        [outputCopy setTextToCommit:&stru_283FDFAF8];
        goto LABEL_16;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = payloadCopy;
      proactivePredictedItem = [v9 proactivePredictedItem];
      if (!proactivePredictedItem)
      {
        goto LABEL_29;
      }

      dictionary = proactivePredictedItem;
      proactivePredictedItem2 = [v9 proactivePredictedItem];
      if ([proactivePredictedItem2 itemType] == 1)
      {
        proactivePredictedItem3 = [v9 proactivePredictedItem];
        operationData = [proactivePredictedItem3 operationData];

        if (!operationData)
        {
          goto LABEL_29;
        }

        proactivePredictedItem4 = [v9 proactivePredictedItem];
        operationData2 = [proactivePredictedItem4 operationData];
        v18 = [operationData2 objectForKey:@"bundleID"];
        v19 = [v18 isEqualToString:@"com.apple.messages.currentLocation"];

        if (v19)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:@"com.apple.messages.currentLocation" forKey:*MEMORY[0x277D6F8B8]];
          proactivePredictedItem5 = [v9 proactivePredictedItem];
          identifier = [proactivePredictedItem5 identifier];
          v22 = [identifier isEqualToString:@"currentLocation"];

          if (v22)
          {
            [outputCopy setShouldSendCurrentLocation:1];
            v23 = MEMORY[0x277D6F900];
          }

          else
          {
            proactivePredictedItem6 = [v9 proactivePredictedItem];
            identifier2 = [proactivePredictedItem6 identifier];
            v33 = [identifier2 isEqualToString:@"requestLocation"];

            if (!v33)
            {
LABEL_25:
              [outputCopy setCustomInfo:dictionary];
LABEL_28:

LABEL_29:
              v36 = +[TIProactiveQuickTypeManager sharedInstance];
              usePQT2Flow = [v36 usePQT2Flow];

              proactivePredictedItem7 = [v9 proactivePredictedItem];
              documentState = proactivePredictedItem7;
              if (usePQT2Flow)
              {
                if (!proactivePredictedItem7)
                {
                  goto LABEL_5;
                }

                proactivePredictedItem8 = [v9 proactivePredictedItem];
                if (![proactivePredictedItem8 itemType])
                {
                  needContactAutofill = [stateCopy needContactAutofill];

                  if (!needContactAutofill)
                  {
                    goto LABEL_5;
                  }

                  documentState = [stateCopy documentState];
                  proactivePredictedItem8 = [documentState contextBeforeInput];
                  [outputCopy setDeletionCount:{objc_msgSend(proactivePredictedItem8, "length")}];
                }
              }

              else
              {
                if (!proactivePredictedItem7)
                {
                  goto LABEL_5;
                }

                proactivePredictedItem8 = [v9 proactivePredictedItem];
                if (![proactivePredictedItem8 itemType])
                {
                  proactivePredictedItem9 = [v9 proactivePredictedItem];
                  trigger = [proactivePredictedItem9 trigger];
                  if (trigger)
                  {
                    v44 = trigger;
                    proactivePredictedItem10 = [v9 proactivePredictedItem];
                    trigger2 = [proactivePredictedItem10 trigger];
                    attributedString = [trigger2 attributedString];
                    v47 = [attributedString objectForKey:@"contextBeforeInput"];

                    if (!v47)
                    {
                      goto LABEL_5;
                    }

                    documentState = [v9 proactivePredictedItem];
                    proactivePredictedItem8 = [documentState trigger];
                    proactivePredictedItem9 = [proactivePredictedItem8 attributedString];
                    v48 = [proactivePredictedItem9 objectForKey:@"contextBeforeInput"];
                    [outputCopy setDeletionCount:{objc_msgSend(v48, "length")}];
                  }
                }
              }

              goto LABEL_5;
            }

            v23 = MEMORY[0x277D6F908];
          }

          v34 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [dictionary setObject:v34 forKey:*v23];

          goto LABEL_25;
        }

        proactivePredictedItem11 = [v9 proactivePredictedItem];
        operationData3 = [proactivePredictedItem11 operationData];
        v26 = [operationData3 objectForKey:@"bundleID"];
        v27 = [v26 isEqualToString:@"com.apple.SafetyMonitorApp.SafetyMonitorMessages"];

        proactivePredictedItem12 = [v9 proactivePredictedItem];
        dictionary = proactivePredictedItem12;
        if (v27)
        {
          identifier3 = [proactivePredictedItem12 identifier];
          v30 = [identifier3 isEqualToString:@"start check-in"];

          if (!v30)
          {
            goto LABEL_29;
          }

          dictionary = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:@"com.apple.SafetyMonitorApp.SafetyMonitorMessages" forKey:*MEMORY[0x277D6F8B8]];
          goto LABEL_25;
        }

        proactivePredictedItem2 = [proactivePredictedItem12 operationData];
        v35 = [proactivePredictedItem2 mutableCopy];
        [outputCopy setCustomInfo:v35];
      }

      goto LABEL_28;
    }
  }

LABEL_16:
}

- (void)updateAnalyticsForRejectedSuggestion:(id)suggestion keyboardState:(id)state
{
  suggestionCopy = suggestion;
  stateCopy = state;
  v6 = +[TIAppAutofillManager sharedInstance];
  secureCandidateRenderer = [v6 secureCandidateRenderer];

  if (suggestionCopy)
  {
    v8 = [suggestionCopy slotID] != 0;
    if (!secureCandidateRenderer)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
    if (!secureCandidateRenderer)
    {
      goto LABEL_12;
    }
  }

  secureCandidateCache = [secureCandidateRenderer secureCandidateCache];
  if ([secureCandidateCache count] != 0 && !v8)
  {
    if ([stateCopy needAutofill])
    {
      autofillMode = [stateCopy autofillMode];

      if (autofillMode)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    secureCandidateCache = +[TIProactiveQuickTypeManager sharedInstance];
    secureCandidateCache2 = [secureCandidateRenderer secureCandidateCache];
    allValues = [secureCandidateCache2 allValues];
    [secureCandidateCache suggestionNotAccepted:allValues];
  }

LABEL_12:
}

- (void)acceptSecureCandidate:(id)candidate keyboardState:(id)state completion:(id)completion
{
  v93[1] = *MEMORY[0x277D85DE8];
  candidateCopy = candidate;
  stateCopy = state;
  completionCopy = completion;
  v11 = +[TIAppAutofillManager sharedInstance];
  secureCandidateRenderer = [v11 secureCandidateRenderer];

  if (!candidateCopy)
  {
    v17 = 0;
    goto LABEL_34;
  }

  slotID = [candidateCopy slotID];
  v14 = candidateCopy;
  v15 = v14;
  if (secureCandidateRenderer)
  {
    v16 = slotID == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = v14;
    goto LABEL_34;
  }

  v81 = completionCopy;
  v18 = +[TIKeyboardSecureTouchManager sharedInstance];
  eventAuthenticationMessage = [stateCopy eventAuthenticationMessage];
  [v18 touchEventWithAuthenticationMessage:eventAuthenticationMessage];

  v20 = +[TIKeyboardSecureTouchManager sharedInstance];
  v21 = [v20 verifySlotID:{objc_msgSend(v15, "slotID")}];

  selfCopy = self;
  if (v21)
  {
    [secureCandidateRenderer cachedCandidateForSecureCandidate:v15];
  }

  else
  {
    [MEMORY[0x277D6F3D8] candidateWithUnchangedInput:&stru_283FDFAF8];
  }
  v17 = ;

  candidate = [v17 candidate];
  v80 = secureCandidateRenderer;
  if (![candidate length])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      proactivePredictedItem = [v17 proactivePredictedItem];
      value = [proactivePredictedItem value];

      candidate = value;
    }
  }

  v83 = stateCopy;
  v84 = v17;
  v82 = candidate;
  if ([v17 indexForMetrics])
  {
    if ([v17 indexForMetrics] != 1)
    {
      goto LABEL_20;
    }

    inputMode = [(TIKeyboardInputManagerBase *)selfCopy->_inputManager inputMode];
    languageWithRegion = [inputMode languageWithRegion];
    proactiveTrigger = [v17 proactiveTrigger];
    textInputTraits = [stateCopy textInputTraits];
    textContentType = [textInputTraits textContentType];
    v93[0] = candidate;
    v30 = MEMORY[0x277CBEA60];
    v31 = candidate;
    v32 = textContentType;
    v33 = proactiveTrigger;
    v34 = languageWithRegion;
    v35 = [v30 arrayWithObjects:v93 count:1];

    v36 = v34;
    v37 = v33;
    v38 = 7;
  }

  else
  {
    inputMode = [(TIKeyboardInputManagerBase *)selfCopy->_inputManager inputMode];
    languageWithRegion2 = [inputMode languageWithRegion];
    proactiveTrigger2 = [v17 proactiveTrigger];
    textInputTraits = [stateCopy textInputTraits];
    textContentType2 = [textInputTraits textContentType];
    v93[0] = candidate;
    v42 = MEMORY[0x277CBEA60];
    v43 = candidate;
    v32 = textContentType2;
    v33 = proactiveTrigger2;
    v34 = languageWithRegion2;
    v35 = [v42 arrayWithObjects:v93 count:1];

    v36 = v34;
    v37 = v33;
    v38 = 6;
  }

  TIStatisticLogProactive(v36, v37, v38, v32, v35);

  stateCopy = v83;
  v17 = v84;
LABEL_20:
  v44 = +[TIProactiveQuickTypeManager sharedInstance];
  inputMode2 = [(TIKeyboardInputManagerBase *)selfCopy->_inputManager inputMode];
  languageWithRegion3 = [inputMode2 languageWithRegion];
  textInputTraits2 = [stateCopy textInputTraits];
  textContentType3 = [textInputTraits2 textContentType];
  [v44 suggestionAccepted:languageWithRegion3 fieldType:textContentType3];

  proactiveTrigger3 = [v17 proactiveTrigger];
  attributes = [proactiveTrigger3 attributes];
  v51 = [attributes objectForKeyedSubscript:@"subtype"];

  if ([proactiveTrigger3 triggerSourceType] == 2 || (objc_msgSend(v51, "isEqual:", @"recent location") & 1) != 0 || objc_msgSend(v51, "isEqual:", @"recent phone"))
  {
    if ([proactiveTrigger3 triggerSourceType])
    {
      v52 = [proactiveTrigger3 triggerSourceType] == 1;
    }

    else
    {
      v52 = 1;
    }

    v76 = v52;
    objc_opt_class();
    v77 = v51;
    v79 = proactiveTrigger3;
    if (objc_opt_isKindOfClass())
    {
      v53 = v17;
    }

    else
    {
      v53 = 0;
    }

    [v17 proactiveTrigger];
    v55 = v54 = v17;
    attributes2 = [v55 attributes];
    v57 = [attributes2 objectForKeyedSubscript:@"field"];
    v58 = v57;
    if (v57)
    {
      v59 = v57;
    }

    else
    {
      proactiveTrigger4 = [v54 proactiveTrigger];
      attributes3 = [proactiveTrigger4 attributes];
      v59 = [attributes3 objectForKeyedSubscript:@"type"];
    }

    fromBundleId = [v53 fromBundleId];
    stateCopy = v83;
    clientIdentifier = [v83 clientIdentifier];
    v64 = +[TIConnectionsMetricsTracker sharedInstance];
    ageForConnectionsMetrics = [v53 ageForConnectionsMetrics];
    textInputTraits3 = [v83 textInputTraits];
    textContentType4 = [textInputTraits3 textContentType];
    BYTE1(v75) = !v76;
    LOBYTE(v75) = v76;
    [v64 trackPredictionEngagmentWithConversion:1 age:ageForConnectionsMetrics fieldType:textContentType4 resultType:v59 fromBundleId:fromBundleId targetApp:clientIdentifier linguistic:v75 semantic:?];

    v17 = v84;
    v51 = v77;
    proactiveTrigger3 = v79;
  }

  secureCandidateRenderer = v80;
  completionCopy = v81;
LABEL_34:
  if ([candidateCopy customInfoType] == 64 || objc_msgSend(candidateCopy, "customInfoType") == 512)
  {
    v68 = +[TIAppAutofillManager sharedInstance];
    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __80__TIKeyboardInputManagerWrapper_acceptSecureCandidate_keyboardState_completion___block_invoke;
    v89[3] = &unk_27872F1C0;
    v92 = completionCopy;
    v90 = v17;
    v91 = candidateCopy;
    [v68 shouldAcceptOneTimeCode:v91 completion:v89];
  }

  else if ([candidateCopy customInfoType] == 1024)
  {
    v70 = +[TIAppAutofillManager sharedInstance];
    [v70 presentHideMyEmailUI:candidateCopy keyboardState:stateCopy completion:completionCopy];
  }

  else
  {
    if ([stateCopy needAutofill])
    {
      v71 = +[TIAppAutofillManager sharedInstance];
      secureCandidateRenderer2 = [v71 secureCandidateRenderer];
      v73 = [secureCandidateRenderer2 cachedPayloadForSecureCandidateSlotID:{objc_msgSend(candidateCopy, "slotID")}];
    }

    else
    {
      v73 = [secureCandidateRenderer cachedPayloadForSecureCandidateSlotID:{objc_msgSend(candidateCopy, "slotID")}];
    }

    v74 = +[TIAppAutofillManager sharedInstance];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __80__TIKeyboardInputManagerWrapper_acceptSecureCandidate_keyboardState_completion___block_invoke_2;
    v85[3] = &unk_27872F1C0;
    v88 = completionCopy;
    v86 = v17;
    v87 = candidateCopy;
    [v74 shouldAcceptAutofill:v87 withPayload:v73 completion:v85];
  }

  v69 = *MEMORY[0x277D85DE8];
}

uint64_t __80__TIKeyboardInputManagerWrapper_acceptSecureCandidate_keyboardState_completion___block_invoke(uint64_t a1, int a2)
{
  v2 = 40;
  if (a2)
  {
    v2 = 32;
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + v2));
}

uint64_t __80__TIKeyboardInputManagerWrapper_acceptSecureCandidate_keyboardState_completion___block_invoke_2(uint64_t a1, int a2)
{
  v2 = 40;
  if (a2)
  {
    v2 = 32;
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + v2));
}

- (void)syncToKeyboardState:(id)state completionHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, self);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "kbdManager.syncState", &unk_22CCA4FEF, buf, 2u);
    }
  }

  [(TIKeyboardInputManagerWrapper *)self handleKeyboardState:stateCopy];
  logger = [(TIKeyboardInputManagerWrapper *)self logger];
  if (logger)
  {
    v12 = [stateCopy copy];
  }

  else
  {
    v12 = 0;
  }

  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __71__TIKeyboardInputManagerWrapper_syncToKeyboardState_completionHandler___block_invoke;
  v24[3] = &unk_27872F198;
  v14 = handlerCopy;
  v26 = v14;
  v24[4] = self;
  v15 = v12;
  v25 = v15;
  v16 = [inputManager syncToKeyboardState:stateCopy completionHandler:v24];

  if ((v16 & 1) == 0)
  {
    inputManager2 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    [inputManager2 syncToKeyboardState:stateCopy];

    inputManager3 = [(TIKeyboardInputManagerWrapper *)self inputManager];
    keyboardConfiguration = [inputManager3 keyboardConfiguration];

    (*(v14 + 2))(v14, keyboardConfiguration);
    logger2 = [(TIKeyboardInputManagerWrapper *)self logger];
    [logger2 logKeyboardConfig:keyboardConfiguration forSyncToKeyboardState:v15];

    kdebug_trace();
    v21 = kac_get_log();
    v22 = os_signpost_id_make_with_pointer(v21, self);
    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v23 = v22;
      if (os_signpost_enabled(v21))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22CA55000, v21, OS_SIGNPOST_INTERVAL_END, v23, "kbdManager.syncState", &unk_22CCA4FEF, buf, 2u);
      }
    }
  }
}

void __71__TIKeyboardInputManagerWrapper_syncToKeyboardState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  v6 = [*(a1 + 32) logger];
  [v6 logKeyboardConfig:v5 forSyncToKeyboardState:*(a1 + 40)];

  v7 = *(a1 + 32);
  kdebug_trace();
  v8 = kac_get_log();
  v9 = os_signpost_id_make_with_pointer(v8, *(a1 + 32));
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_22CA55000, v8, OS_SIGNPOST_INTERVAL_END, v10, "kbdManager.syncState", &unk_22CCA4FEF, v11, 2u);
    }
  }
}

- (void)handleKeyboardState:(id)state withInputEvent:(id)event
{
  stateCopy = state;
  canSuggestSupplementalItemsForCurrentSelection = [stateCopy canSuggestSupplementalItemsForCurrentSelection];
  v6 = +[TITransientLexiconManager sharedInstance];
  [v6 setSupplementalLexiconSearchEnabled:canSuggestSupplementalItemsForCurrentSelection];

  v9 = +[TITransientLexiconManager sharedInstance];
  supplementalLexicons = [v9 supplementalLexicons];
  supplementalLexiconIdentifier = [stateCopy supplementalLexiconIdentifier];

  [supplementalLexicons setActiveLexiconWithIdentifier:supplementalLexiconIdentifier];
}

- (void)setLogger:(id)logger
{
  loggerCopy = logger;
  inputManager = [(TIKeyboardInputManagerWrapper *)self inputManager];
  [inputManager setInputManagerLogger:loggerCopy];
}

@end