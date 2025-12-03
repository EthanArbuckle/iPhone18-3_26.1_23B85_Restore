@interface TUIKeyboardBackendController
+ (BOOL)_isSmartActionEnabled;
+ (BOOL)_isSmartReplyEnabled;
+ (id)sharedInstance;
- (BOOL)hasActivePaths;
- (BOOL)shouldQueryCandidateMultiplexerForKeyboardState:(id)state;
- (BOOL)waitingForContinuousPathCandidates;
- (TUIKeyboardBackendController)init;
- (TUIKeyboardBackendController)initWithInputManagerMux:(id)mux;
- (TUIKeyboardBackendController)initWithInputManagerMux:(id)mux candidateMux:(id)candidateMux;
- (TUIKeyboardCandidateReceiver)candidateReceiver;
- (id)configuredMultiplexer;
- (void)_restoreSupplementalLexiconsIfNeeded;
- (void)acceptingCandidateWithTrigger:(id)trigger;
- (void)addUISupplementalLexicon:(id)lexicon;
- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity keyboardState:(id)state completionHandler:(id)handler;
- (void)candidateAccepted:(id)accepted keyboardState:(id)state candidateRquestToken:(id)token completionHandler:(id)handler;
- (void)candidateRejected:(id)rejected;
- (void)changingContextWithTrigger:(id)trigger;
- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range requestToken:(id)token completionHandler:(id)handler;
- (void)generateAutocorrectionsWithKeyboardState:(id)state completionHandler:(id)handler;
- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range requestToken:(id)token completionHandler:(id)handler;
- (void)generateReplacementsForString:(id)string keyLayout:(id)layout continuation:(id)continuation;
- (void)handleAcceptedCandidate:(id)candidate keyboardState:(id)state completionHandler:(id)handler;
- (void)handleKeyboardInput:(id)input keyboardState:(id)state completionHandler:(id)handler;
- (void)lastAcceptedCandidateCorrected;
- (void)logDiscoverabilityEvent:(int)event userInfo:(id)info;
- (void)performHitTestForTouchEvents:(id)events keyboardState:(id)state completionHandler:(id)handler;
- (void)removeUISupplementalLexicon:(id)lexicon;
- (void)resetPathState;
- (void)setOriginalInput:(id)input;
- (void)setWaitingForContinuousPathCandidates:(BOOL)candidates;
- (void)skipHitTestForTouchEvents:(id)events keyboardState:(id)state;
- (void)smartSelectionForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language tokenizedRanges:(id)ranges options:(unint64_t)options completion:(id)completion;
- (void)stickerWithIdentifier:(id)identifier stickerRoles:(id)roles completionHandler:(id)handler;
- (void)syncToKeyboardState:(id)state completionHandler:(id)handler;
- (void)textAccepted:(id)accepted completionHandler:(id)handler;
- (void)updatePathStateWithTouchEvents:(id)events;
- (void)writeTypologyLogWithCompletionHandler:(id)handler;
@end

@implementation TUIKeyboardBackendController

- (void)_restoreSupplementalLexiconsIfNeeded
{
  v15 = *MEMORY[0x1E69E9840];
  if (!self->_applicationIsInBackground && self->_needsRestoreSupplementalLexicons)
  {
    self->_needsRestoreSupplementalLexicons = 0;
    v3 = self->_supplementalLexicons;
    supplementalLexicons = self->_supplementalLexicons;
    self->_supplementalLexicons = 0;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v3;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(TUIKeyboardBackendController *)self addUISupplementalLexicon:*(*(&v10 + 1) + 8 * v9++), v10];
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

+ (BOOL)_isSmartReplyEnabled
{
  if (_isSmartReplyEnabled_onceToken != -1)
  {
    dispatch_once(&_isSmartReplyEnabled_onceToken, &__block_literal_global_10835);
  }

  return _isSmartReplyEnabled_enabled;
}

uint64_t __52__TUIKeyboardBackendController__isSmartReplyEnabled__block_invoke()
{
  v0 = MGGetBoolAnswer();
  v1 = _os_feature_enabled_impl();
  result = _os_feature_enabled_impl();
  _isSmartReplyEnabled_enabled = v0 & (v1 | result);
  return result;
}

+ (BOOL)_isSmartActionEnabled
{
  if (_isSmartActionEnabled_onceToken != -1)
  {
    dispatch_once(&_isSmartActionEnabled_onceToken, &__block_literal_global_6);
  }

  return _isSmartActionEnabled_enabled;
}

uint64_t __53__TUIKeyboardBackendController__isSmartActionEnabled__block_invoke()
{
  result = _os_feature_enabled_impl();
  _isSmartActionEnabled_enabled = result;
  return result;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10829 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_10829, &__block_literal_global_10_10830);
  }

  v3 = sharedInstance___instance_10831;

  return v3;
}

void __46__TUIKeyboardBackendController_sharedInstance__block_invoke()
{
  v0 = [TUIKeyboardBackendController alloc];
  v3 = +[TUIKeyboardInputManagerMux sharedInstance];
  v1 = [(TUIKeyboardBackendController *)v0 initWithInputManagerMux:v3];
  v2 = sharedInstance___instance_10831;
  sharedInstance___instance_10831 = v1;
}

- (id)configuredMultiplexer
{
  v2 = objc_alloc_init(TUIKeyboardCandidateMultiplexer);
  [(TUIKeyboardCandidateMultiplexer *)v2 setEnableKbdSource:1];
  array = [MEMORY[0x1E695DF70] array];
  if (_os_feature_enabled_impl() && ((_os_feature_enabled_impl() & 1) != 0 || dyld_program_sdk_at_least()))
  {
    [array addObject:&unk_1F03D8DB0];
  }

  if ([objc_opt_class() _isSmartReplyEnabled])
  {
    [array addObject:&unk_1F03D8DC8];
  }

  if ([objc_opt_class() _isSmartActionEnabled])
  {
    [array addObject:&unk_1F03D8DE0];
  }

  if (_os_feature_enabled_impl())
  {
    [array addObject:&unk_1F03D8DF8];
  }

  [(TUIKeyboardCandidateMultiplexer *)v2 installGeneratorsForSources:array];

  return v2;
}

- (void)resetPathState
{
  activePaths = [(TUIKeyboardBackendController *)self activePaths];
  [activePaths removeAllObjects];

  [(TUIKeyboardBackendController *)self setWaitingForContinuousPathCandidates:0];
}

- (TUIKeyboardCandidateReceiver)candidateReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_candidateReceiver);

  return WeakRetained;
}

- (void)stickerWithIdentifier:(id)identifier stickerRoles:(id)roles completionHandler:(id)handler
{
  identifierCopy = identifier;
  rolesCopy = roles;
  handlerCopy = handler;
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    inputManager2 = [(TUIKeyboardBackendController *)self inputManager];
    [inputManager2 stickerWithIdentifier:identifierCopy stickerRoles:rolesCopy completionHandler:handlerCopy];
  }
}

- (void)changingContextWithTrigger:(id)trigger
{
  triggerCopy = trigger;
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager changingContextWithTrigger:triggerCopy];
}

- (void)acceptingCandidateWithTrigger:(id)trigger
{
  triggerCopy = trigger;
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager acceptingCandidateWithTrigger:triggerCopy];
}

- (void)removeUISupplementalLexicon:(id)lexicon
{
  supplementalLexicons = self->_supplementalLexicons;
  lexiconCopy = lexicon;
  [(NSHashTable *)supplementalLexicons removeObject:lexiconCopy];
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  v6 = [lexiconCopy valueForKeyPath:@"_internal"];

  [inputManager removeSupplementalLexiconWithIdentifier:{objc_msgSend(v6, "identifier")}];
}

- (void)addUISupplementalLexicon:(id)lexicon
{
  lexiconCopy = lexicon;
  supplementalLexicons = self->_supplementalLexicons;
  if (!supplementalLexicons)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_supplementalLexicons;
    self->_supplementalLexicons = weakObjectsHashTable;

    supplementalLexicons = self->_supplementalLexicons;
  }

  [(NSHashTable *)supplementalLexicons addObject:lexiconCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__TUIKeyboardBackendController_addUISupplementalLexicon___block_invoke;
  aBlock[3] = &unk_1E72D83A0;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  v10 = [lexiconCopy valueForKeyPath:@"_internal"];
  [inputManager addSupplementalLexicon:v10 completionHandler:v8];
}

void __57__TUIKeyboardBackendController_addUISupplementalLexicon___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0B8] currentConnection];

  if (v2)
  {
    if (!*(*(a1 + 32) + 8))
    {
      v3 = [MEMORY[0x1E696B0B8] currentConnection];
      v4 = [v3 processIdentifier];

      v5 = dispatch_source_create(MEMORY[0x1E69E96F0], v4, 0x80000000uLL, MEMORY[0x1E69E96A0]);
      v6 = *(a1 + 32);
      v7 = *(v6 + 8);
      *(v6 + 8) = v5;

      v8 = *(a1 + 32);
      v9 = *(v8 + 8);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __57__TUIKeyboardBackendController_addUISupplementalLexicon___block_invoke_2;
      handler[3] = &unk_1E72D83A0;
      handler[4] = v8;
      dispatch_source_set_event_handler(v9, handler);
      dispatch_resume(*(*(a1 + 32) + 8));
    }
  }
}

uint64_t __57__TUIKeyboardBackendController_addUISupplementalLexicon___block_invoke_2(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  *(*(a1 + 32) + 17) = 1;
  v4 = *(a1 + 32);

  return [v4 _restoreSupplementalLexiconsIfNeeded];
}

- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity keyboardState:(id)state completionHandler:(id)handler
{
  v7 = *&granularity;
  directionCopy = direction;
  handlerCopy = handler;
  stateCopy = state;
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager adjustPhraseBoundaryInForwardDirection:directionCopy granularity:v7 keyboardState:stateCopy completionHandler:handlerCopy];
}

- (void)writeTypologyLogWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager writeTypologyLogWithCompletionHandler:handlerCopy];
}

- (void)logDiscoverabilityEvent:(int)event userInfo:(id)info
{
  v4 = *&event;
  infoCopy = info;
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager logDiscoverabilityEvent:v4 userInfo:infoCopy];
}

- (void)lastAcceptedCandidateCorrected
{
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager lastAcceptedCandidateCorrected];
}

- (void)candidateRejected:(id)rejected
{
  rejectedCopy = rejected;
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager candidateRejected:rejectedCopy];
}

- (void)textAccepted:(id)accepted completionHandler:(id)handler
{
  handlerCopy = handler;
  acceptedCopy = accepted;
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager textAccepted:acceptedCopy completionHandler:handlerCopy];
}

- (void)setOriginalInput:(id)input
{
  inputCopy = input;
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager setOriginalInput:inputCopy];
}

- (void)candidateAccepted:(id)accepted keyboardState:(id)state candidateRquestToken:(id)token completionHandler:(id)handler
{
  handlerCopy = handler;
  tokenCopy = token;
  stateCopy = state;
  acceptedCopy = accepted;
  candidateMultiplexer = [(TUIKeyboardBackendController *)self candidateMultiplexer];
  [candidateMultiplexer candidateAccepted:acceptedCopy keyboardState:stateCopy candidateRequestToken:tokenCopy];

  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager textAccepted:acceptedCopy completionHandler:handlerCopy];
}

- (void)generateReplacementsForString:(id)string keyLayout:(id)layout continuation:(id)continuation
{
  continuationCopy = continuation;
  layoutCopy = layout;
  stringCopy = string;
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager generateReplacementsForString:stringCopy keyLayout:layoutCopy continuation:continuationCopy];
}

- (void)handleAcceptedCandidate:(id)candidate keyboardState:(id)state completionHandler:(id)handler
{
  candidateCopy = candidate;
  stateCopy = state;
  handlerCopy = handler;
  if (([candidateCopy candidateProperty] & 0x80) != 0)
  {
    v11 = TUIBackendControllerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_18FFDC000, v11, OS_LOG_TYPE_INFO, "Candidate is of smart action (polls) type. Will not forward to kbd, forwarding nil instead.", v13, 2u);
    }

    [stateCopy setCurrentCandidate:0];
    candidateCopy = 0;
  }

  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager handleAcceptedCandidate:candidateCopy keyboardState:stateCopy completionHandler:handlerCopy];
}

- (void)generateCandidatesWithKeyboardState:(id)state candidateRange:(_NSRange)range requestToken:(id)token completionHandler:(id)handler
{
  length = range.length;
  v9 = range.location;
  stateCopy = state;
  tokenCopy = token;
  handlerCopy = handler;
  v14 = [(TUIKeyboardBackendController *)self shouldQueryCandidateMultiplexerForKeyboardState:stateCopy];
  v15 = TUIBackendControllerLog();
  v16 = os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    if (v16)
    {
      LOWORD(location[0]) = 0;
      _os_log_debug_impl(&dword_18FFDC000, &v15->super, OS_LOG_TYPE_DEBUG, "Generate candidates for keyboard state using [CANDIDATE SELECTION] flow.", location, 2u);
    }

    candidateReceiver = [(TUIKeyboardBackendController *)self candidateReceiver];
    candidateMultiplexer = [(TUIKeyboardBackendController *)self candidateMultiplexer];
    [candidateMultiplexer setCandidateReceiver:candidateReceiver];

    v15 = [[_TUIKeyboardCandidateGenerationContext alloc] initWith:stateCopy requestToken:tokenCopy usesCandidateSelection:1];
    candidateMultiplexer2 = [(TUIKeyboardBackendController *)self candidateMultiplexer];
    [candidateMultiplexer2 generateCandidatesWithKeyboardContext:v15];
  }

  else if (v16)
  {
    LOWORD(location[0]) = 0;
    _os_log_debug_impl(&dword_18FFDC000, &v15->super, OS_LOG_TYPE_DEBUG, "SKIPPED - Generate candidates for keyboard state using [CANDIDATE SELECTION] flow.", location, 2u);
  }

  objc_initWeak(location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __114__TUIKeyboardBackendController_generateCandidatesWithKeyboardState_candidateRange_requestToken_completionHandler___block_invoke;
  aBlock[3] = &unk_1E72D7F38;
  objc_copyWeak(&v31, location);
  aBlock[4] = self;
  v29 = tokenCopy;
  v30 = handlerCopy;
  v20 = handlerCopy;
  v21 = tokenCopy;
  v22 = _Block_copy(aBlock);
  currentCandidate = [stateCopy currentCandidate];
  candidateProperty = [currentCandidate candidateProperty];

  if (candidateProperty < 0)
  {
    v25 = TUIBackendControllerLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *v27 = 0;
      _os_log_impl(&dword_18FFDC000, v25, OS_LOG_TYPE_INFO, "Candidate is of smart action (polls) type. Will not forward to kbd, forwarding nil instead.", v27, 2u);
    }

    [stateCopy setCurrentCandidate:0];
  }

  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager generateCandidatesWithKeyboardState:stateCopy candidateRange:v9 requestToken:length completionHandler:{v21, v22}];

  objc_destroyWeak(&v31);
  objc_destroyWeak(location);
}

void __114__TUIKeyboardBackendController_generateCandidatesWithKeyboardState_candidateRange_requestToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [*(a1 + 32) setWaitingForContinuousPathCandidates:0];
    v4 = [WeakRetained candidateMultiplexer];
    [v4 receiveExternalCandidateResultSet:v6 requestToken:*(a1 + 40)];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

- (void)generateAutocorrectionsWithKeyboardState:(id)state candidateRange:(_NSRange)range requestToken:(id)token completionHandler:(id)handler
{
  length = range.length;
  v9 = range.location;
  stateCopy = state;
  tokenCopy = token;
  handlerCopy = handler;
  v14 = [(TUIKeyboardBackendController *)self shouldQueryCandidateMultiplexerForKeyboardState:stateCopy];
  v15 = TUIBackendControllerLog();
  v16 = os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    if (v16)
    {
      LOWORD(location[0]) = 0;
      _os_log_debug_impl(&dword_18FFDC000, &v15->super, OS_LOG_TYPE_DEBUG, "Generate candidates for keyboard state using [AUTOCORRECTIONS] flow.", location, 2u);
    }

    candidateReceiver = [(TUIKeyboardBackendController *)self candidateReceiver];
    candidateMultiplexer = [(TUIKeyboardBackendController *)self candidateMultiplexer];
    [candidateMultiplexer setCandidateReceiver:candidateReceiver];

    v15 = [[_TUIKeyboardCandidateGenerationContext alloc] initWith:stateCopy requestToken:tokenCopy usesCandidateSelection:0];
    candidateMultiplexer2 = [(TUIKeyboardBackendController *)self candidateMultiplexer];
    [candidateMultiplexer2 generateCandidatesWithKeyboardContext:v15];
  }

  else if (v16)
  {
    LOWORD(location[0]) = 0;
    _os_log_debug_impl(&dword_18FFDC000, &v15->super, OS_LOG_TYPE_DEBUG, "SKIPPED - Generate candidates for keyboard state using [AUTOCORRECTIONS] flow.", location, 2u);
  }

  objc_initWeak(location, self);
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __119__TUIKeyboardBackendController_generateAutocorrectionsWithKeyboardState_candidateRange_requestToken_completionHandler___block_invoke;
  v27 = &unk_1E72D7F10;
  objc_copyWeak(&v31, location);
  selfCopy = self;
  v29 = tokenCopy;
  v30 = handlerCopy;
  v20 = handlerCopy;
  v21 = tokenCopy;
  v22 = _Block_copy(&v24);
  v23 = [(TUIKeyboardBackendController *)self inputManager:v24];
  [v23 generateAutocorrectionsWithKeyboardState:stateCopy candidateRange:v9 requestToken:length completionHandler:{v21, v22}];

  objc_destroyWeak(&v31);
  objc_destroyWeak(location);
}

void __119__TUIKeyboardBackendController_generateAutocorrectionsWithKeyboardState_candidateRange_requestToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [*(a1 + 32) setWaitingForContinuousPathCandidates:0];
    v4 = [WeakRetained candidateMultiplexer];
    [v4 receiveExternalAutocorrectionUpdate:v6 requestToken:*(a1 + 40)];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v6);
  }
}

- (void)generateAutocorrectionsWithKeyboardState:(id)state completionHandler:(id)handler
{
  handlerCopy = handler;
  stateCopy = state;
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager generateAutocorrectionsWithKeyboardState:stateCopy completionHandler:handlerCopy];
}

- (void)handleKeyboardInput:(id)input keyboardState:(id)state completionHandler:(id)handler
{
  v20[1] = *MEMORY[0x1E69E9840];
  inputCopy = input;
  handlerCopy = handler;
  stateCopy = state;
  touchEvent = [inputCopy touchEvent];
  v12 = touchEvent;
  if (touchEvent)
  {
    v20[0] = touchEvent;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [(TUIKeyboardBackendController *)self updatePathStateWithTouchEvents:v13];
  }

  acceptedCandidate = [inputCopy acceptedCandidate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = MEMORY[0x1E69D95F0];
    candidate = [acceptedCandidate candidate];
    input = [acceptedCandidate input];
    v18 = [v15 candidateWithCandidate:candidate forInput:input property:{objc_msgSend(acceptedCandidate, "candidateProperty")}];
    [inputCopy setAcceptedCandidate:v18];
  }

  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager handleKeyboardInput:inputCopy keyboardState:stateCopy completionHandler:handlerCopy];
}

- (void)smartSelectionForTextInDocument:(id)document inRange:(_NSRange)range language:(id)language tokenizedRanges:(id)ranges options:(unint64_t)options completion:(id)completion
{
  length = range.length;
  location = range.location;
  completionCopy = completion;
  rangesCopy = ranges;
  languageCopy = language;
  documentCopy = document;
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager smartSelectionForTextInDocument:documentCopy inRange:location language:length tokenizedRanges:languageCopy options:rangesCopy completion:{options, completionCopy}];
}

- (void)skipHitTestForTouchEvents:(id)events keyboardState:(id)state
{
  stateCopy = state;
  eventsCopy = events;
  [(TUIKeyboardBackendController *)self updatePathStateWithTouchEvents:eventsCopy];
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager skipHitTestForTouchEvents:eventsCopy keyboardState:stateCopy];
}

- (void)performHitTestForTouchEvents:(id)events keyboardState:(id)state completionHandler:(id)handler
{
  handlerCopy = handler;
  stateCopy = state;
  eventsCopy = events;
  [(TUIKeyboardBackendController *)self updatePathStateWithTouchEvents:eventsCopy];
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager performHitTestForTouchEvents:eventsCopy keyboardState:stateCopy continuation:handlerCopy];
}

- (void)syncToKeyboardState:(id)state completionHandler:(id)handler
{
  stateCopy = state;
  handlerCopy = handler;
  [(TUIKeyboardBackendController *)self resetPathState];
  inputManager = [(TUIKeyboardBackendController *)self inputManager];
  [inputManager syncToKeyboardState:stateCopy completionHandler:handlerCopy];

  candidateMultiplexer = [(TUIKeyboardBackendController *)self candidateMultiplexer];

  if (candidateMultiplexer)
  {
    candidateMultiplexer2 = [(TUIKeyboardBackendController *)self candidateMultiplexer];
    [candidateMultiplexer2 syncToKeyboardState:stateCopy];
  }
}

- (BOOL)shouldQueryCandidateMultiplexerForKeyboardState:(id)state
{
  v25 = *MEMORY[0x1E69E9840];
  hasActivePaths = [(TUIKeyboardBackendController *)self hasActivePaths];
  waitingForContinuousPathCandidates = [(TUIKeyboardBackendController *)self waitingForContinuousPathCandidates];
  candidateMultiplexer = [(TUIKeyboardBackendController *)self candidateMultiplexer];
  v7 = candidateMultiplexer != 0 && !hasActivePaths && !waitingForContinuousPathCandidates;

  v8 = TUISmartReplyLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (v7)
    {
      v10 = "YES";
    }

    else
    {
      v10 = "NO";
    }

    candidateMultiplexer2 = [(TUIKeyboardBackendController *)self candidateMultiplexer];
    v15 = 136316162;
    v16 = "[TUIKeyboardBackendController shouldQueryCandidateMultiplexerForKeyboardState:]";
    if (candidateMultiplexer2)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    v18 = v10;
    if (hasActivePaths)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v17 = 2080;
    if (waitingForContinuousPathCandidates)
    {
      v14 = "YES";
    }

    else
    {
      v14 = "NO";
    }

    v19 = 2080;
    v20 = v12;
    v21 = 2080;
    v22 = v13;
    v23 = 2080;
    v24 = v14;
    _os_log_debug_impl(&dword_18FFDC000, v8, OS_LOG_TYPE_DEBUG, "%s => %s (hasCandidateMux=%s, hasActivePaths=%s, waitingForCPCandidates=%s)", &v15, 0x34u);
  }

  return v7;
}

- (BOOL)hasActivePaths
{
  activePaths = [(TUIKeyboardBackendController *)self activePaths];
  v3 = [activePaths count] != 0;

  return v3;
}

- (void)updatePathStateWithTouchEvents:(id)events
{
  v35 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  hasActivePaths = [(TUIKeyboardBackendController *)self hasActivePaths];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    do
    {
      v9 = 0;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        pathIndex = [v10 pathIndex];
        continuousPathState = [v10 continuousPathState];
        if (continuousPathState <= 6)
        {
          if (((1 << continuousPathState) & 0x47) != 0)
          {
            activePaths = [(TUIKeyboardBackendController *)self activePaths];
            v14 = [MEMORY[0x1E696AD98] numberWithInteger:pathIndex];
            [activePaths removeObject:v14];
LABEL_11:

            goto LABEL_12;
          }

          if (((1 << continuousPathState) & 0x18) != 0)
          {
            activePaths = [(TUIKeyboardBackendController *)self activePaths];
            v14 = [MEMORY[0x1E696AD98] numberWithInteger:pathIndex];
            [activePaths addObject:v14];
            goto LABEL_11;
          }

          activePaths2 = [(TUIKeyboardBackendController *)self activePaths];
          v16 = [MEMORY[0x1E696AD98] numberWithInteger:pathIndex];
          [activePaths2 removeObject:v16];

          activePaths3 = [(TUIKeyboardBackendController *)self activePaths];
          v18 = [activePaths3 count];

          if (!v18)
          {
            [(TUIKeyboardBackendController *)self setWaitingForContinuousPathCandidates:1];
          }
        }

LABEL_12:
        ++v9;
      }

      while (v7 != v9);
      v19 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
      v7 = v19;
    }

    while (v19);
  }

  hasActivePaths2 = [(TUIKeyboardBackendController *)self hasActivePaths];
  if (hasActivePaths != hasActivePaths2)
  {
    v21 = hasActivePaths2;
    v22 = TUIBackendControllerLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = "NO";
      if (hasActivePaths)
      {
        v24 = "YES";
      }

      else
      {
        v24 = "NO";
      }

      if (v21)
      {
        v23 = "YES";
      }

      *buf = 136315394;
      v31 = v24;
      v32 = 2080;
      v33 = v23;
      _os_log_debug_impl(&dword_18FFDC000, v22, OS_LOG_TYPE_DEBUG, "hasActivePaths state changed from %s to %s", buf, 0x16u);
    }
  }
}

- (void)setWaitingForContinuousPathCandidates:(BOOL)candidates
{
  candidatesCopy = candidates;
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_waitingForContinuousPathCandidates != candidatesCopy)
  {
    v5 = TUIBackendControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = "NO";
      if (self->_waitingForContinuousPathCandidates)
      {
        v7 = "YES";
      }

      else
      {
        v7 = "NO";
      }

      if (candidatesCopy)
      {
        v6 = "YES";
      }

      v8 = 136315394;
      v9 = v7;
      v10 = 2080;
      v11 = v6;
      _os_log_debug_impl(&dword_18FFDC000, v5, OS_LOG_TYPE_DEBUG, "Changing _waitingForContinuousPathCandidate from %s to %s", &v8, 0x16u);
    }

    self->_waitingForContinuousPathCandidates = candidatesCopy;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)waitingForContinuousPathCandidates
{
  os_unfair_lock_lock(&self->_lock);
  waitingForContinuousPathCandidates = self->_waitingForContinuousPathCandidates;
  os_unfair_lock_unlock(&self->_lock);
  return waitingForContinuousPathCandidates;
}

- (TUIKeyboardBackendController)initWithInputManagerMux:(id)mux candidateMux:(id)candidateMux
{
  muxCopy = mux;
  candidateMuxCopy = candidateMux;
  v14.receiver = self;
  v14.super_class = TUIKeyboardBackendController;
  v9 = [(TUIKeyboardBackendController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inputManager, mux);
    objc_storeStrong(&v10->_candidateMultiplexer, candidateMux);
    [(TUIKeyboardInputManagerMux *)v10->_inputManager setCandidateMultiplexer:v10->_candidateMultiplexer];
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activePaths = v10->_activePaths;
    v10->_activePaths = v11;

    v10->_lock._os_unfair_lock_opaque = 0;
    v10->_waitingForContinuousPathCandidates = 0;
  }

  return v10;
}

- (TUIKeyboardBackendController)initWithInputManagerMux:(id)mux
{
  muxCopy = mux;
  if (_os_feature_enabled_impl())
  {
    configuredMultiplexer = [(TUIKeyboardBackendController *)self configuredMultiplexer];
  }

  else
  {
    configuredMultiplexer = 0;
  }

  v6 = [(TUIKeyboardBackendController *)self initWithInputManagerMux:muxCopy candidateMux:configuredMultiplexer];

  return v6;
}

- (TUIKeyboardBackendController)init
{
  v3 = +[TUIKeyboardInputManagerMux sharedInstance];
  if (_os_feature_enabled_impl())
  {
    configuredMultiplexer = [(TUIKeyboardBackendController *)self configuredMultiplexer];
  }

  else
  {
    configuredMultiplexer = 0;
  }

  v5 = [(TUIKeyboardBackendController *)self initWithInputManagerMux:v3 candidateMux:configuredMultiplexer];

  return v5;
}

@end