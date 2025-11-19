@interface TUIKeyboardBackendController
+ (BOOL)_isSmartActionEnabled;
+ (BOOL)_isSmartReplyEnabled;
+ (id)sharedInstance;
- (BOOL)hasActivePaths;
- (BOOL)shouldQueryCandidateMultiplexerForKeyboardState:(id)a3;
- (BOOL)waitingForContinuousPathCandidates;
- (TUIKeyboardBackendController)init;
- (TUIKeyboardBackendController)initWithInputManagerMux:(id)a3;
- (TUIKeyboardBackendController)initWithInputManagerMux:(id)a3 candidateMux:(id)a4;
- (TUIKeyboardCandidateReceiver)candidateReceiver;
- (id)configuredMultiplexer;
- (void)_restoreSupplementalLexiconsIfNeeded;
- (void)acceptingCandidateWithTrigger:(id)a3;
- (void)addUISupplementalLexicon:(id)a3;
- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)a3 granularity:(int)a4 keyboardState:(id)a5 completionHandler:(id)a6;
- (void)candidateAccepted:(id)a3 keyboardState:(id)a4 candidateRquestToken:(id)a5 completionHandler:(id)a6;
- (void)candidateRejected:(id)a3;
- (void)changingContextWithTrigger:(id)a3;
- (void)generateAutocorrectionsWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 requestToken:(id)a5 completionHandler:(id)a6;
- (void)generateAutocorrectionsWithKeyboardState:(id)a3 completionHandler:(id)a4;
- (void)generateCandidatesWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 requestToken:(id)a5 completionHandler:(id)a6;
- (void)generateReplacementsForString:(id)a3 keyLayout:(id)a4 continuation:(id)a5;
- (void)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4 completionHandler:(id)a5;
- (void)handleKeyboardInput:(id)a3 keyboardState:(id)a4 completionHandler:(id)a5;
- (void)lastAcceptedCandidateCorrected;
- (void)logDiscoverabilityEvent:(int)a3 userInfo:(id)a4;
- (void)performHitTestForTouchEvents:(id)a3 keyboardState:(id)a4 completionHandler:(id)a5;
- (void)removeUISupplementalLexicon:(id)a3;
- (void)resetPathState;
- (void)setOriginalInput:(id)a3;
- (void)setWaitingForContinuousPathCandidates:(BOOL)a3;
- (void)skipHitTestForTouchEvents:(id)a3 keyboardState:(id)a4;
- (void)smartSelectionForTextInDocument:(id)a3 inRange:(_NSRange)a4 language:(id)a5 tokenizedRanges:(id)a6 options:(unint64_t)a7 completion:(id)a8;
- (void)stickerWithIdentifier:(id)a3 stickerRoles:(id)a4 completionHandler:(id)a5;
- (void)syncToKeyboardState:(id)a3 completionHandler:(id)a4;
- (void)textAccepted:(id)a3 completionHandler:(id)a4;
- (void)updatePathStateWithTouchEvents:(id)a3;
- (void)writeTypologyLogWithCompletionHandler:(id)a3;
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
  v3 = [MEMORY[0x1E695DF70] array];
  if (_os_feature_enabled_impl() && ((_os_feature_enabled_impl() & 1) != 0 || dyld_program_sdk_at_least()))
  {
    [v3 addObject:&unk_1F03D8DB0];
  }

  if ([objc_opt_class() _isSmartReplyEnabled])
  {
    [v3 addObject:&unk_1F03D8DC8];
  }

  if ([objc_opt_class() _isSmartActionEnabled])
  {
    [v3 addObject:&unk_1F03D8DE0];
  }

  if (_os_feature_enabled_impl())
  {
    [v3 addObject:&unk_1F03D8DF8];
  }

  [(TUIKeyboardCandidateMultiplexer *)v2 installGeneratorsForSources:v3];

  return v2;
}

- (void)resetPathState
{
  v3 = [(TUIKeyboardBackendController *)self activePaths];
  [v3 removeAllObjects];

  [(TUIKeyboardBackendController *)self setWaitingForContinuousPathCandidates:0];
}

- (TUIKeyboardCandidateReceiver)candidateReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_candidateReceiver);

  return WeakRetained;
}

- (void)stickerWithIdentifier:(id)a3 stickerRoles:(id)a4 completionHandler:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(TUIKeyboardBackendController *)self inputManager];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(TUIKeyboardBackendController *)self inputManager];
    [v12 stickerWithIdentifier:v13 stickerRoles:v8 completionHandler:v9];
  }
}

- (void)changingContextWithTrigger:(id)a3
{
  v4 = a3;
  v5 = [(TUIKeyboardBackendController *)self inputManager];
  [v5 changingContextWithTrigger:v4];
}

- (void)acceptingCandidateWithTrigger:(id)a3
{
  v4 = a3;
  v5 = [(TUIKeyboardBackendController *)self inputManager];
  [v5 acceptingCandidateWithTrigger:v4];
}

- (void)removeUISupplementalLexicon:(id)a3
{
  supplementalLexicons = self->_supplementalLexicons;
  v5 = a3;
  [(NSHashTable *)supplementalLexicons removeObject:v5];
  v7 = [(TUIKeyboardBackendController *)self inputManager];
  v6 = [v5 valueForKeyPath:@"_internal"];

  [v7 removeSupplementalLexiconWithIdentifier:{objc_msgSend(v6, "identifier")}];
}

- (void)addUISupplementalLexicon:(id)a3
{
  v4 = a3;
  supplementalLexicons = self->_supplementalLexicons;
  if (!supplementalLexicons)
  {
    v6 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v7 = self->_supplementalLexicons;
    self->_supplementalLexicons = v6;

    supplementalLexicons = self->_supplementalLexicons;
  }

  [(NSHashTable *)supplementalLexicons addObject:v4];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__TUIKeyboardBackendController_addUISupplementalLexicon___block_invoke;
  aBlock[3] = &unk_1E72D83A0;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v9 = [(TUIKeyboardBackendController *)self inputManager];
  v10 = [v4 valueForKeyPath:@"_internal"];
  [v9 addSupplementalLexicon:v10 completionHandler:v8];
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

- (void)adjustPhraseBoundaryInForwardDirection:(BOOL)a3 granularity:(int)a4 keyboardState:(id)a5 completionHandler:(id)a6
{
  v7 = *&a4;
  v8 = a3;
  v10 = a6;
  v11 = a5;
  v12 = [(TUIKeyboardBackendController *)self inputManager];
  [v12 adjustPhraseBoundaryInForwardDirection:v8 granularity:v7 keyboardState:v11 completionHandler:v10];
}

- (void)writeTypologyLogWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(TUIKeyboardBackendController *)self inputManager];
  [v5 writeTypologyLogWithCompletionHandler:v4];
}

- (void)logDiscoverabilityEvent:(int)a3 userInfo:(id)a4
{
  v4 = *&a3;
  v6 = a4;
  v7 = [(TUIKeyboardBackendController *)self inputManager];
  [v7 logDiscoverabilityEvent:v4 userInfo:v6];
}

- (void)lastAcceptedCandidateCorrected
{
  v2 = [(TUIKeyboardBackendController *)self inputManager];
  [v2 lastAcceptedCandidateCorrected];
}

- (void)candidateRejected:(id)a3
{
  v4 = a3;
  v5 = [(TUIKeyboardBackendController *)self inputManager];
  [v5 candidateRejected:v4];
}

- (void)textAccepted:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUIKeyboardBackendController *)self inputManager];
  [v8 textAccepted:v7 completionHandler:v6];
}

- (void)setOriginalInput:(id)a3
{
  v4 = a3;
  v5 = [(TUIKeyboardBackendController *)self inputManager];
  [v5 setOriginalInput:v4];
}

- (void)candidateAccepted:(id)a3 keyboardState:(id)a4 candidateRquestToken:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(TUIKeyboardBackendController *)self candidateMultiplexer];
  [v14 candidateAccepted:v13 keyboardState:v12 candidateRequestToken:v11];

  v15 = [(TUIKeyboardBackendController *)self inputManager];
  [v15 textAccepted:v13 completionHandler:v10];
}

- (void)generateReplacementsForString:(id)a3 keyLayout:(id)a4 continuation:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(TUIKeyboardBackendController *)self inputManager];
  [v11 generateReplacementsForString:v10 keyLayout:v9 continuation:v8];
}

- (void)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v8 candidateProperty] & 0x80) != 0)
  {
    v11 = TUIBackendControllerLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_18FFDC000, v11, OS_LOG_TYPE_INFO, "Candidate is of smart action (polls) type. Will not forward to kbd, forwarding nil instead.", v13, 2u);
    }

    [v9 setCurrentCandidate:0];
    v8 = 0;
  }

  v12 = [(TUIKeyboardBackendController *)self inputManager];
  [v12 handleAcceptedCandidate:v8 keyboardState:v9 completionHandler:v10];
}

- (void)generateCandidatesWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 requestToken:(id)a5 completionHandler:(id)a6
{
  length = a4.length;
  v9 = a4.location;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [(TUIKeyboardBackendController *)self shouldQueryCandidateMultiplexerForKeyboardState:v11];
  v15 = TUIBackendControllerLog();
  v16 = os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    if (v16)
    {
      LOWORD(location[0]) = 0;
      _os_log_debug_impl(&dword_18FFDC000, &v15->super, OS_LOG_TYPE_DEBUG, "Generate candidates for keyboard state using [CANDIDATE SELECTION] flow.", location, 2u);
    }

    v17 = [(TUIKeyboardBackendController *)self candidateReceiver];
    v18 = [(TUIKeyboardBackendController *)self candidateMultiplexer];
    [v18 setCandidateReceiver:v17];

    v15 = [[_TUIKeyboardCandidateGenerationContext alloc] initWith:v11 requestToken:v12 usesCandidateSelection:1];
    v19 = [(TUIKeyboardBackendController *)self candidateMultiplexer];
    [v19 generateCandidatesWithKeyboardContext:v15];
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
  v29 = v12;
  v30 = v13;
  v20 = v13;
  v21 = v12;
  v22 = _Block_copy(aBlock);
  v23 = [v11 currentCandidate];
  v24 = [v23 candidateProperty];

  if (v24 < 0)
  {
    v25 = TUIBackendControllerLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *v27 = 0;
      _os_log_impl(&dword_18FFDC000, v25, OS_LOG_TYPE_INFO, "Candidate is of smart action (polls) type. Will not forward to kbd, forwarding nil instead.", v27, 2u);
    }

    [v11 setCurrentCandidate:0];
  }

  v26 = [(TUIKeyboardBackendController *)self inputManager];
  [v26 generateCandidatesWithKeyboardState:v11 candidateRange:v9 requestToken:length completionHandler:{v21, v22}];

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

- (void)generateAutocorrectionsWithKeyboardState:(id)a3 candidateRange:(_NSRange)a4 requestToken:(id)a5 completionHandler:(id)a6
{
  length = a4.length;
  v9 = a4.location;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [(TUIKeyboardBackendController *)self shouldQueryCandidateMultiplexerForKeyboardState:v11];
  v15 = TUIBackendControllerLog();
  v16 = os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    if (v16)
    {
      LOWORD(location[0]) = 0;
      _os_log_debug_impl(&dword_18FFDC000, &v15->super, OS_LOG_TYPE_DEBUG, "Generate candidates for keyboard state using [AUTOCORRECTIONS] flow.", location, 2u);
    }

    v17 = [(TUIKeyboardBackendController *)self candidateReceiver];
    v18 = [(TUIKeyboardBackendController *)self candidateMultiplexer];
    [v18 setCandidateReceiver:v17];

    v15 = [[_TUIKeyboardCandidateGenerationContext alloc] initWith:v11 requestToken:v12 usesCandidateSelection:0];
    v19 = [(TUIKeyboardBackendController *)self candidateMultiplexer];
    [v19 generateCandidatesWithKeyboardContext:v15];
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
  v28 = self;
  v29 = v12;
  v30 = v13;
  v20 = v13;
  v21 = v12;
  v22 = _Block_copy(&v24);
  v23 = [(TUIKeyboardBackendController *)self inputManager:v24];
  [v23 generateAutocorrectionsWithKeyboardState:v11 candidateRange:v9 requestToken:length completionHandler:{v21, v22}];

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

- (void)generateAutocorrectionsWithKeyboardState:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUIKeyboardBackendController *)self inputManager];
  [v8 generateAutocorrectionsWithKeyboardState:v7 completionHandler:v6];
}

- (void)handleKeyboardInput:(id)a3 keyboardState:(id)a4 completionHandler:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v8 touchEvent];
  v12 = v11;
  if (v11)
  {
    v20[0] = v11;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    [(TUIKeyboardBackendController *)self updatePathStateWithTouchEvents:v13];
  }

  v14 = [v8 acceptedCandidate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = MEMORY[0x1E69D95F0];
    v16 = [v14 candidate];
    v17 = [v14 input];
    v18 = [v15 candidateWithCandidate:v16 forInput:v17 property:{objc_msgSend(v14, "candidateProperty")}];
    [v8 setAcceptedCandidate:v18];
  }

  v19 = [(TUIKeyboardBackendController *)self inputManager];
  [v19 handleKeyboardInput:v8 keyboardState:v10 completionHandler:v9];
}

- (void)smartSelectionForTextInDocument:(id)a3 inRange:(_NSRange)a4 language:(id)a5 tokenizedRanges:(id)a6 options:(unint64_t)a7 completion:(id)a8
{
  length = a4.length;
  location = a4.location;
  v15 = a8;
  v16 = a6;
  v17 = a5;
  v18 = a3;
  v19 = [(TUIKeyboardBackendController *)self inputManager];
  [v19 smartSelectionForTextInDocument:v18 inRange:location language:length tokenizedRanges:v17 options:v16 completion:{a7, v15}];
}

- (void)skipHitTestForTouchEvents:(id)a3 keyboardState:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(TUIKeyboardBackendController *)self updatePathStateWithTouchEvents:v7];
  v8 = [(TUIKeyboardBackendController *)self inputManager];
  [v8 skipHitTestForTouchEvents:v7 keyboardState:v6];
}

- (void)performHitTestForTouchEvents:(id)a3 keyboardState:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [(TUIKeyboardBackendController *)self updatePathStateWithTouchEvents:v10];
  v11 = [(TUIKeyboardBackendController *)self inputManager];
  [v11 performHitTestForTouchEvents:v10 keyboardState:v9 continuation:v8];
}

- (void)syncToKeyboardState:(id)a3 completionHandler:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(TUIKeyboardBackendController *)self resetPathState];
  v7 = [(TUIKeyboardBackendController *)self inputManager];
  [v7 syncToKeyboardState:v10 completionHandler:v6];

  v8 = [(TUIKeyboardBackendController *)self candidateMultiplexer];

  if (v8)
  {
    v9 = [(TUIKeyboardBackendController *)self candidateMultiplexer];
    [v9 syncToKeyboardState:v10];
  }
}

- (BOOL)shouldQueryCandidateMultiplexerForKeyboardState:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [(TUIKeyboardBackendController *)self hasActivePaths];
  v5 = [(TUIKeyboardBackendController *)self waitingForContinuousPathCandidates];
  v6 = [(TUIKeyboardBackendController *)self candidateMultiplexer];
  v7 = v6 != 0 && !v4 && !v5;

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

    v11 = [(TUIKeyboardBackendController *)self candidateMultiplexer];
    v15 = 136316162;
    v16 = "[TUIKeyboardBackendController shouldQueryCandidateMultiplexerForKeyboardState:]";
    if (v11)
    {
      v12 = "YES";
    }

    else
    {
      v12 = "NO";
    }

    v18 = v10;
    if (v4)
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    v17 = 2080;
    if (v5)
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
  v2 = [(TUIKeyboardBackendController *)self activePaths];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)updatePathStateWithTouchEvents:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25 = [(TUIKeyboardBackendController *)self hasActivePaths];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = v4;
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
        v11 = [v10 pathIndex];
        v12 = [v10 continuousPathState];
        if (v12 <= 6)
        {
          if (((1 << v12) & 0x47) != 0)
          {
            v13 = [(TUIKeyboardBackendController *)self activePaths];
            v14 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
            [v13 removeObject:v14];
LABEL_11:

            goto LABEL_12;
          }

          if (((1 << v12) & 0x18) != 0)
          {
            v13 = [(TUIKeyboardBackendController *)self activePaths];
            v14 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
            [v13 addObject:v14];
            goto LABEL_11;
          }

          v15 = [(TUIKeyboardBackendController *)self activePaths];
          v16 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
          [v15 removeObject:v16];

          v17 = [(TUIKeyboardBackendController *)self activePaths];
          v18 = [v17 count];

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

  v20 = [(TUIKeyboardBackendController *)self hasActivePaths];
  if (v25 != v20)
  {
    v21 = v20;
    v22 = TUIBackendControllerLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v23 = "NO";
      if (v25)
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

- (void)setWaitingForContinuousPathCandidates:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_waitingForContinuousPathCandidates != v3)
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

      if (v3)
      {
        v6 = "YES";
      }

      v8 = 136315394;
      v9 = v7;
      v10 = 2080;
      v11 = v6;
      _os_log_debug_impl(&dword_18FFDC000, v5, OS_LOG_TYPE_DEBUG, "Changing _waitingForContinuousPathCandidate from %s to %s", &v8, 0x16u);
    }

    self->_waitingForContinuousPathCandidates = v3;
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

- (TUIKeyboardBackendController)initWithInputManagerMux:(id)a3 candidateMux:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TUIKeyboardBackendController;
  v9 = [(TUIKeyboardBackendController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inputManager, a3);
    objc_storeStrong(&v10->_candidateMultiplexer, a4);
    [(TUIKeyboardInputManagerMux *)v10->_inputManager setCandidateMultiplexer:v10->_candidateMultiplexer];
    v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    activePaths = v10->_activePaths;
    v10->_activePaths = v11;

    v10->_lock._os_unfair_lock_opaque = 0;
    v10->_waitingForContinuousPathCandidates = 0;
  }

  return v10;
}

- (TUIKeyboardBackendController)initWithInputManagerMux:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = [(TUIKeyboardBackendController *)self configuredMultiplexer];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(TUIKeyboardBackendController *)self initWithInputManagerMux:v4 candidateMux:v5];

  return v6;
}

- (TUIKeyboardBackendController)init
{
  v3 = +[TUIKeyboardInputManagerMux sharedInstance];
  if (_os_feature_enabled_impl())
  {
    v4 = [(TUIKeyboardBackendController *)self configuredMultiplexer];
  }

  else
  {
    v4 = 0;
  }

  v5 = [(TUIKeyboardBackendController *)self initWithInputManagerMux:v3 candidateMux:v4];

  return v5;
}

@end