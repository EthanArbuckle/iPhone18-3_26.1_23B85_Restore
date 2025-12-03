@interface TIWordSearch
+ (id)configureUserDictionaryObserver:(id)observer previousObserver:(id)previousObserver;
+ (id)mecabraLearningDictionaryDirectory;
+ (id)recipientRecords;
+ (id)sharedOperationQueue;
- (BOOL)addFacemarkCandidatesToResultSet:(id)set forInput:(id)input;
- (BOOL)isCancelled;
- (NSCache)candidatesCache;
- (TIMecabraEnvironment)mecabraEnvironment;
- (TIMecabraWrapper)mecabraWrapper;
- (__Mecabra)mecabra;
- (id)baseLayout;
- (id)cachedCandidatesForOperation:(id)operation;
- (id)candidatesCacheKeyForOperation:(id)operation;
- (id)candidatesForOperation:(id)operation;
- (id)initTIWordSearchWithInputMode:(id)mode mecabraWrapper:(id)wrapper;
- (id)mecabraCreationOptionsDictionary;
- (int)mecabraLanguage;
- (void)_addFacemarkCandidatesToResultSet:(id)set forInput:(id)input;
- (void)adaptOfflineToParagraph:(id)paragraph adaptationContext:(id)context timeStamp:(double)stamp;
- (void)addContact:(id)contact toVocabulary:(void *)vocabulary toReadingPairs:(id)pairs;
- (void)adjustEnvironmentOnAction:(int64_t)action;
- (void)cancel;
- (void)clearCache;
- (void)clearLearningDictionary;
- (void)clearLeftDocumentContext;
- (void)clearObservers;
- (void)commitPunctuationSurface:(id)surface;
- (void)commitSurface:(id)surface;
- (void)completeOperationsInQueue;
- (void)contactStoreDidChange:(id)change;
- (void)dealloc;
- (void)declareEndOfSentence;
- (void)dynamicDictionariesRemoved:(id)removed;
- (void)flushDynamicData;
- (void)handleMemoryPressureLevel:(unint64_t)level excessMemoryInBytes:(unint64_t)bytes;
- (void)insertTopSupplementalCandidateSurroundingCursorToFrontOfResultSet:(id)set;
- (void)keyboardActivityDidTransition:(id)transition;
- (void)lastAcceptedCandidateCorrected;
- (void)performOperationAsync:(id)async withBackgroundActivityAssertion:(BOOL)assertion;
- (void)releaseBackgroundActivityAssertion;
- (void)resetMecabraEnvironment;
- (void)resetPreviousWord;
- (void)revertInlineCandidate;
- (void)saveLearningDictionary;
- (void)setDebuggingLogEnabled:(BOOL)enabled;
- (void)setDisablePersonalData:(BOOL)data;
- (void)setInTypeToSiriMode:(BOOL)mode;
- (void)setKeyboardLayout:(id)layout;
- (void)setLanguageModelAdaptationContext:(id)context;
- (void)setLanguageModelAdaptationContextWithClientIdentifier:(id)identifier recipientIdentifier:(id)recipientIdentifier;
- (void)setLeftDocumentContext:(id)context rightDocumentContext:(id)documentContext;
- (void)setMecabraTextContentType:(int)type;
- (void)setMecabraWrapper:(id)wrapper;
- (void)updateAddressBook;
- (void)updateDictionaryPaths;
- (void)updateMecabraState;
- (void)updateSupplementalLexicon;
- (void)updateUserWordEntries;
@end

@implementation TIWordSearch

- (void)setInTypeToSiriMode:(BOOL)mode
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__TIWordSearch_setInTypeToSiriMode___block_invoke;
  v5[3] = &unk_278730E80;
  v5[4] = self;
  modeCopy = mode;
  v4 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:v5];
  [(TIWordSearch *)self performOperationAsync:v4];
}

void __36__TIWordSearch_setInTypeToSiriMode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabraEnvironment];
  [v2 setInTypeToSiriMode:*(a1 + 40)];
}

- (void)setKeyboardLayout:(id)layout
{
  layoutCopy = layout;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __34__TIWordSearch_setKeyboardLayout___block_invoke;
  v10 = &unk_278733738;
  selfCopy = self;
  v12 = layoutCopy;
  v5 = layoutCopy;
  v6 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:&v7];
  [(TIWordSearch *)self performOperationAsync:v6, v7, v8, v9, v10, selfCopy];
}

void __34__TIWordSearch_setKeyboardLayout___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabraEnvironment];
  [v2 setKeyboardLayout:*(a1 + 40)];
}

- (id)baseLayout
{
  mecabraEnvironment = [(TIWordSearch *)self mecabraEnvironment];
  baseLayout = [mecabraEnvironment baseLayout];

  return baseLayout;
}

- (void)revertInlineCandidate
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__TIWordSearch_revertInlineCandidate__block_invoke;
  v4[3] = &unk_278733308;
  v4[4] = self;
  v3 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:v4];
  [(TIWordSearch *)self performOperationAsync:v3];
}

void __37__TIWordSearch_revertInlineCandidate__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mecabraEnvironment];
  [v1 revertInlineCandidate];
}

- (void)setMecabraTextContentType:(int)type
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__TIWordSearch_setMecabraTextContentType___block_invoke;
  v5[3] = &unk_278731070;
  v5[4] = self;
  typeCopy = type;
  v4 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:v5];
  [(TIWordSearch *)self performOperationAsync:v4];
}

void __42__TIWordSearch_setMecabraTextContentType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) mecabraEnvironment];
  [v2 setTextContentType:v1];
}

- (void)resetMecabraEnvironment
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__TIWordSearch_resetMecabraEnvironment__block_invoke;
  v4[3] = &unk_278733308;
  v4[4] = self;
  v3 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:v4];
  [(TIWordSearch *)self performOperationAsync:v3];
}

void __39__TIWordSearch_resetMecabraEnvironment__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mecabraEnvironment];
  [v1 reset];
}

- (void)commitPunctuationSurface:(id)surface
{
  surfaceCopy = surface;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __41__TIWordSearch_commitPunctuationSurface___block_invoke;
  v10 = &unk_278733738;
  selfCopy = self;
  v12 = surfaceCopy;
  v5 = surfaceCopy;
  v6 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:&v7];
  [(TIWordSearch *)self performOperationAsync:v6, v7, v8, v9, v10, selfCopy];
}

void __41__TIWordSearch_commitPunctuationSurface___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabraEnvironment];
  [v2 addPunctuationCandidateToContext:*(a1 + 40)];
}

- (void)commitSurface:(id)surface
{
  surfaceCopy = surface;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __30__TIWordSearch_commitSurface___block_invoke;
  v10 = &unk_278733738;
  selfCopy = self;
  v12 = surfaceCopy;
  v5 = surfaceCopy;
  v6 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:&v7];
  [(TIWordSearch *)self performOperationAsync:v6, v7, v8, v9, v10, selfCopy];
}

void __30__TIWordSearch_commitSurface___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabraEnvironment];
  [v2 addStringCandidateToContext:*(a1 + 40)];
}

- (void)declareEndOfSentence
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__TIWordSearch_declareEndOfSentence__block_invoke;
  v4[3] = &unk_278733308;
  v4[4] = self;
  v3 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:v4];
  [(TIWordSearch *)self performOperationAsync:v3];
}

void __36__TIWordSearch_declareEndOfSentence__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) mecabraEnvironment];
  [v1 declareEndOfSentence];
}

- (void)adjustEnvironmentOnAction:(int64_t)action
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__TIWordSearch_adjustEnvironmentOnAction___block_invoke;
  v5[3] = &unk_278731048;
  v5[4] = self;
  v5[5] = action;
  v4 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:v5];
  [(TIWordSearch *)self performOperationAsync:v4];
}

void __42__TIWordSearch_adjustEnvironmentOnAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabraEnvironment];
  [v2 adjustEnvironmentOnAction:*(a1 + 40)];
}

- (void)clearLeftDocumentContext
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__TIWordSearch_clearLeftDocumentContext__block_invoke;
  v4[3] = &unk_278733308;
  v4[4] = self;
  v3 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:v4];
  [(TIWordSearch *)self performOperationAsync:v3];
}

void __40__TIWordSearch_clearLeftDocumentContext__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) mecabraEnvironment];
  [v1 setLeftDocumentContext:&stru_283FDFAF8];

  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v2 = TIOSLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s [Environment] Clear left context", "-[TIWordSearch clearLeftDocumentContext]_block_invoke"];
      *buf = 138412290;
      v6 = v4;
      _os_log_debug_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)setLeftDocumentContext:(id)context rightDocumentContext:(id)documentContext
{
  contextCopy = context;
  documentContextCopy = documentContext;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__TIWordSearch_setLeftDocumentContext_rightDocumentContext___block_invoke;
  v11[3] = &unk_278731020;
  v11[4] = self;
  v12 = contextCopy;
  v13 = documentContextCopy;
  v8 = documentContextCopy;
  v9 = contextCopy;
  v10 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:v11];
  [(TIWordSearch *)self performOperationAsync:v10];
}

void __60__TIWordSearch_setLeftDocumentContext_rightDocumentContext___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) mecabraEnvironment];
  [v3 setLeftDocumentContext:v2];

  v4 = *(a1 + 48);
  v5 = [*(a1 + 32) mecabraEnvironment];
  [v5 setRightDocumentContext:v4];

  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v6 = TIOSLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [*(a1 + 32) mecabraEnvironment];
      v10 = [v9 leftDocumentContext];
      v11 = [*(a1 + 32) mecabraEnvironment];
      v12 = [v11 rightDocumentContext];
      v13 = [v8 stringWithFormat:@"%s [Environment] Set left context: %@, Right context: %@", "-[TIWordSearch setLeftDocumentContext:rightDocumentContext:]_block_invoke", v10, v12];
      *buf = 138412290;
      v15 = v13;
      _os_log_debug_impl(&dword_22CA55000, v6, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)flushDynamicData
{
  if ([(TIWordSearch *)self mecabra])
  {
    v4 = [[TIWordSearchOperationFlushDynamicData alloc] initWithWordSearch:self];
    v3 = +[TIWordSearch sharedOperationQueue];
    [v3 addOperation:v4];
  }
}

- (void)adaptOfflineToParagraph:(id)paragraph adaptationContext:(id)context timeStamp:(double)stamp
{
  paragraphCopy = paragraph;
  contextCopy = context;
  if ([(TIWordSearch *)self mecabra])
  {
    v9 = [[TIWordSearchOperationAdaptOffline alloc] initWithWordSearch:self paragraph:paragraphCopy adaptationContext:contextCopy timeStamp:stamp];
    v10 = +[TIWordSearch sharedOperationQueue];
    [v10 addOperation:v9];
  }
}

- (void)setDisablePersonalData:(BOOL)data
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__TIWordSearch_setDisablePersonalData___block_invoke;
  v5[3] = &unk_278730E80;
  v5[4] = self;
  dataCopy = data;
  v4 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:v5];
  [(TIWordSearch *)self performOperationAsync:v4];
}

void __39__TIWordSearch_setDisablePersonalData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabraEnvironment];
  [v2 setPrivateMode:*(a1 + 40)];
}

- (void)updateDictionaryPaths
{
  v17[1] = *MEMORY[0x277D85DE8];
  mecabraWrapper = [(TIWordSearch *)self mecabraWrapper];
  mecabraRef = [mecabraWrapper mecabraRef];
  inputMode = [(TIWordSearch *)self inputMode];
  v17[0] = inputMode;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v7 = +[TIWordSearch sharedOperationQueue];
  v8 = [TIMecabraEnvironment loadMobileAssetContentsWhenMobileAssetChangesForMecabra:mecabraRef inputModes:v6 onQueue:v7 oldMobileAssetChangeListener:self->_dictionaryUpdateObserver];
  dictionaryUpdateObserver = self->_dictionaryUpdateObserver;
  self->_dictionaryUpdateObserver = v8;

  v10 = TIAssetsOSLogFacility();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v12 = MEMORY[0x277CCACA8];
    inputMode2 = [(TIWordSearch *)self inputMode];
    v14 = [v12 stringWithFormat:@"%s updateDictionaryPaths for %@", "-[TIWordSearch updateDictionaryPaths]", inputMode2];
    *buf = 138412290;
    v16 = v14;
    _os_log_debug_impl(&dword_22CA55000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateAddressBook
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  if (self->_contactObserver)
  {
    v5 = TIPersonalizationContactOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %@:updateAddressBook - removing observer", "-[TIWordSearch updateAddressBook]", v4];
      *buf = 138412290;
      v27 = v6;
      _os_log_impl(&dword_22CA55000, v5, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v7 = +[TITransientLexiconManager sharedInstance];
    [v7 removeContactObserver:self->_contactObserver];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  mecabraWrapper = [(TIWordSearch *)selfCopy mecabraWrapper];
  mecabraEnvironment = [(TIWordSearch *)selfCopy mecabraEnvironment];
  objc_sync_exit(selfCopy);

  objc_initWeak(&location, selfCopy);
  v11 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %@:updateAddressBook - adding observer", "-[TIWordSearch updateAddressBook]", v4];
    *buf = 138412290;
    v27 = v12;
    _os_log_impl(&dword_22CA55000, v11, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v13 = +[TITransientLexiconManager sharedInstance];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __33__TIWordSearch_updateAddressBook__block_invoke;
  v20[3] = &unk_278730FF8;
  v21 = v4;
  v14 = v4;
  objc_copyWeak(&v24, &location);
  v22 = mecabraEnvironment;
  v23 = mecabraWrapper;
  v15 = mecabraWrapper;
  v16 = mecabraEnvironment;
  v17 = [v13 addContactObserver:v20];
  contactObserver = self->_contactObserver;
  self->_contactObserver = v17;

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
  v19 = *MEMORY[0x277D85DE8];
}

void __33__TIWordSearch_updateAddressBook__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %@:updateAddressBook - processing %ld contacts", "-[TIWordSearch updateAddressBook]_block_invoke", *(a1 + 32), objc_msgSend(v3, "count")];
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_22CA55000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v6 = [v3 copy];
  v7 = _TIQueueBackground();
  objc_copyWeak(&v12, (a1 + 56));
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v8 = v6;
  TIDispatchAsync();

  objc_destroyWeak(&v12);
  v9 = *MEMORY[0x277D85DE8];
}

void __33__TIWordSearch_updateAddressBook__block_invoke_117(id *a1)
{
  v61 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = objc_opt_new();
    if ([WeakRetained shareVocabulary])
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy__10217;
      v56 = __Block_byref_object_dispose__10218;
      v57 = 0;
      v47 = MEMORY[0x277D85DD0];
      v48 = 3221225472;
      v49 = __33__TIWordSearch_updateAddressBook__block_invoke_118;
      v50 = &unk_278733760;
      v51 = &v52;
      TIDispatchSync();
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v5 = v53[5];
      v6 = [v5 countByEnumeratingWithState:&v43 objects:v60 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v44;
        do
        {
          v9 = 0;
          do
          {
            if (*v44 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v43 + 1) + 8 * v9);
            LanguageWithRegion = TIInputModeGetLanguageWithRegion();
            CFArrayAppendValue(Mutable, LanguageWithRegion);
            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v43 objects:v60 count:16];
        }

        while (v7);
      }

      SharedVocabulary = LMVocabularyGetSharedVocabulary();
      LMVocabularyReset();
      LMVocabularySetLanguages();
      CFRelease(Mutable);
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v13 = a1[4];
      v14 = [v13 countByEnumeratingWithState:&v39 objects:v59 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v40;
        do
        {
          v17 = 0;
          do
          {
            if (*v40 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [a1[4] objectForKeyedSubscript:*(*(&v39 + 1) + 8 * v17)];
            [WeakRetained addContact:v18 toVocabulary:SharedVocabulary toReadingPairs:v3];

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v39 objects:v59 count:16];
        }

        while (v15);
      }

      _Block_object_dispose(&v52, 8);
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v19 = a1[4];
      v20 = [v19 countByEnumeratingWithState:&v35 objects:v58 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v36;
        do
        {
          v23 = 0;
          do
          {
            if (*v36 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [a1[4] objectForKeyedSubscript:*(*(&v35 + 1) + 8 * v23)];
            TICreateNameReadingPairFromContactAndAppendToArray(v24, [WeakRetained nameReadingPairGenerationMode], a1[5], v3);

            ++v23;
          }

          while (v21 != v23);
          v21 = [v19 countByEnumeratingWithState:&v35 objects:v58 count:16];
        }

        while (v21);
      }
    }

    v25 = +[TIWordSearch sharedOperationQueue];
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __33__TIWordSearch_updateAddressBook__block_invoke_2;
    v32 = &unk_278733738;
    v33 = a1[6];
    v34 = v3;
    v26 = v3;
    v27 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:&v29];
    [v25 addOperation:{v27, v29, v30, v31, v32}];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __33__TIWordSearch_updateAddressBook__block_invoke_118(uint64_t a1)
{
  v5 = [MEMORY[0x277D6F380] sharedInputModeController];
  v2 = [v5 enabledInputModeIdentifiers];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

uint64_t __33__TIWordSearch_updateAddressBook__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabraRef];
  v3 = *(a1 + 40);

  return MEMORY[0x2821F8F90](v2, v3);
}

- (void)addContact:(id)contact toVocabulary:(void *)vocabulary toReadingPairs:(id)pairs
{
  contactCopy = contact;
  pairsCopy = pairs;
  firstName = [contactCopy firstName];
  lastName = [contactCopy lastName];
  if (!(firstName | lastName))
  {
    goto LABEL_17;
  }

  nameReadingPairGenerationMode = [(TIWordSearch *)self nameReadingPairGenerationMode];
  mecabraEnvironment = [(TIWordSearch *)self mecabraEnvironment];
  TICreateNameReadingPairFromContactAndAppendToArray(contactCopy, nameReadingPairGenerationMode, mecabraEnvironment, pairsCopy);

  [contactCopy score];
  v13 = v12;
  if (firstName && lastName)
  {
    if ((([firstName _containsIdeographicCharacters] & 1) != 0 || (objc_msgSend(firstName, "_containsHiraganaOrKatakana") & 1) != 0 || objc_msgSend(firstName, "_containsKorean")) && ((objc_msgSend(lastName, "_containsIdeographicCharacters") & 1) != 0 || (objc_msgSend(lastName, "_containsHiraganaOrKatakana") & 1) != 0 || objc_msgSend(firstName, "_containsKorean")))
    {
      v14 = [lastName stringByAppendingString:firstName];
      log10(v13);
      LMVocabularyAddLemma();
    }
  }

  else
  {
    if (!lastName)
    {
      goto LABEL_15;
    }

    if (!firstName)
    {
      log10(v12);
      LMVocabularyAddLemma();
    }
  }

  log10(v13);
  LMVocabularyAddLemma();
LABEL_15:
  if (firstName)
  {
    log10(v13);
    LMVocabularyAddLemma();
  }

LABEL_17:
}

- (void)updateSupplementalLexicon
{
  supplementalLexiconObserver = [(TIWordSearch *)self supplementalLexiconObserver];

  if (supplementalLexiconObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    supplementalLexiconObserver2 = [(TIWordSearch *)self supplementalLexiconObserver];
    [defaultCenter removeObserver:supplementalLexiconObserver2];

    [(TIWordSearch *)self setSupplementalLexiconObserver:0];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  mecabraWrapper = [(TIWordSearch *)selfCopy mecabraWrapper];
  objc_sync_exit(selfCopy);

  objc_initWeak(&location, selfCopy);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__TIWordSearch_updateSupplementalLexicon__block_invoke;
  aBlock[3] = &unk_278730F70;
  aBlock[4] = selfCopy;
  objc_copyWeak(&v20, &location);
  v19 = mecabraWrapper;
  v8 = mecabraWrapper;
  v9 = _Block_copy(aBlock);
  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __41__TIWordSearch_updateSupplementalLexicon__block_invoke_3;
  v16[3] = &unk_278730FA8;
  v17 = v9;
  v11 = v9;
  v12 = [defaultCenter2 addObserverForName:@"TIActiveLexiconDidChangeNotification" object:0 queue:0 usingBlock:v16];
  [(TIWordSearch *)selfCopy setSupplementalLexiconObserver:v12];

  v13 = +[TITransientLexiconManager sharedInstance];
  supplementalLexicons = [v13 supplementalLexicons];
  activeLexicon = [supplementalLexicons activeLexicon];
  v11[2](v11, activeLexicon);

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __41__TIWordSearch_updateSupplementalLexicon__block_invoke(id *a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v37 = v3;
  [v3 items];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v56 = 0u;
  v38 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
  if (v38)
  {
    v34 = *v54;
    do
    {
      v5 = 0;
      do
      {
        if (*v54 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v5;
        v6 = *(*(&v53 + 1) + 8 * v5);
        v7 = [a1[4] nameReadingPairGenerationMode];
        v8 = [a1[4] mecabraEnvironment];
        v9 = [v6 core_nameReadingPairsWithGenerationMode:v7 mecabraEnvironment:v8];

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v2 = v9;
        v10 = [v2 countByEnumeratingWithState:&v49 objects:v60 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v50;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v50 != v12)
              {
                objc_enumerationMutation(v2);
              }

              v14 = *(*(&v49 + 1) + 8 * i);
              v15 = [v4 objectForKeyedSubscript:v14];
              if (!v15)
              {
                v15 = objc_opt_new();
                [v4 setObject:v15 forKeyedSubscript:v14];
              }

              v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v6, "identifier")}];
              [v15 addObject:v16];
            }

            v11 = [v2 countByEnumeratingWithState:&v49 objects:v60 count:16];
          }

          while (v11);
        }

        v5 = v40 + 1;
      }

      while (v40 + 1 != v38);
      v38 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
    }

    while (v38);
  }

  v39 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v17 = v4;
  v41 = [v17 countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v41)
  {
    v35 = *v46;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v46 != v35)
        {
          objc_enumerationMutation(v17);
        }

        v19 = *(*(&v45 + 1) + 8 * j);
        v57[0] = *MEMORY[0x277D82A88];
        v20 = [v19 name];
        v58[0] = v20;
        v57[1] = *MEMORY[0x277D82A80];
        v21 = [v19 reading];
        v22 = v21;
        if (!v21)
        {
          v2 = [MEMORY[0x277CBEB68] null];
          v22 = v2;
        }

        v58[1] = v22;
        v57[2] = *MEMORY[0x277D82A70];
        v23 = [v17 objectForKeyedSubscript:v19];
        v24 = [v23 allObjects];
        v58[2] = v24;
        v57[3] = *MEMORY[0x277D82A78];
        v25 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v37, "searchPrefixCharacter")}];
        v58[3] = v25;
        v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:4];

        if (!v21)
        {
        }

        [v39 addObject:v26];
      }

      v41 = [v17 countByEnumeratingWithState:&v45 objects:v59 count:16];
    }

    while (v41);
  }

  v27 = v17;

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v29 = [objc_opt_class() sharedOperationQueue];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __41__TIWordSearch_updateSupplementalLexicon__block_invoke_2;
  v42[3] = &unk_278733738;
  v43 = a1[5];
  v44 = v39;
  v30 = v39;
  v31 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:v42];
  [v29 addOperation:v31];

  v32 = *MEMORY[0x277D85DE8];
}

void __41__TIWordSearch_updateSupplementalLexicon__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"TIActiveLexiconDidChangeUserInfo_ActiveLexicon"];

  (*(*(a1 + 32) + 16))();
}

uint64_t __41__TIWordSearch_updateSupplementalLexicon__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabraRef];
  v3 = *(a1 + 40);

  return MEMORY[0x2821F8FC8](v2, v3);
}

- (void)updateUserWordEntries
{
  v3 = objc_opt_class();
  mecabraWrapper = [(TIWordSearch *)self mecabraWrapper];
  v4 = [v3 configureUserDictionaryObserver:mecabraWrapper previousObserver:self->_userDictionaryObserver];
  userDictionaryObserver = self->_userDictionaryObserver;
  self->_userDictionaryObserver = v4;
}

- (void)setLanguageModelAdaptationContext:(id)context
{
  contextCopy = context;
  if ([(TIWordSearch *)self mecabra])
  {
    v4 = [[TIWordSearchOperationSetLanguageModelAdaptationContext alloc] initWithWordSearch:self adaptationContext:contextCopy];
    [(TIWordSearch *)self performOperationAsync:v4];
  }
}

- (void)setLanguageModelAdaptationContextWithClientIdentifier:(id)identifier recipientIdentifier:(id)recipientIdentifier
{
  identifierCopy = identifier;
  recipientIdentifierCopy = recipientIdentifier;
  if ([(TIWordSearch *)self mecabra])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __90__TIWordSearch_setLanguageModelAdaptationContextWithClientIdentifier_recipientIdentifier___block_invoke;
    block[3] = &unk_278733308;
    block[4] = self;
    if ([TIWordSearch setLanguageModelAdaptationContextWithClientIdentifier:recipientIdentifier:]::dispatchOnce != -1)
    {
      dispatch_once(&[TIWordSearch setLanguageModelAdaptationContextWithClientIdentifier:recipientIdentifier:]::dispatchOnce, block);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__TIWordSearch_setLanguageModelAdaptationContextWithClientIdentifier_recipientIdentifier___block_invoke_2;
    aBlock[3] = &unk_278730F20;
    v18 = identifierCopy;
    v8 = recipientIdentifierCopy;
    v19 = v8;
    selfCopy = self;
    v9 = _Block_copy(aBlock);
    if ([v8 length])
    {
      v10 = +[TIWordSearch recipientRecords];
      v11 = [v10 objectForKey:v8];

      if (v11)
      {
        if ([v11 count])
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        (v9)[2](v9, v12);
      }

      else
      {
        v13 = [MEMORY[0x277CBEB98] setWithObject:v8];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __90__TIWordSearch_setLanguageModelAdaptationContextWithClientIdentifier_recipientIdentifier___block_invoke_99;
        v14[3] = &unk_278730F48;
        v15 = v8;
        v16 = v9;
        TIAddressBookFindRecordsMatchingRecipientsAsync(v13, v14);
      }
    }

    else
    {
      v9[2](v9, 0);
    }
  }
}

void __90__TIWordSearch_setLanguageModelAdaptationContextWithClientIdentifier_recipientIdentifier___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:*(a1 + 32) selector:sel_contactStoreDidChange_ name:*MEMORY[0x277CBD140] object:0];
}

void __90__TIWordSearch_setLanguageModelAdaptationContextWithClientIdentifier_recipientIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[TILanguageModelAdaptationContext alloc] initWithClientIdentifier:*(a1 + 32) andRecipientRecord:v3];
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  if (TICanLogMessageAtLevel_logLevel >= 2)
  {
    v5 = TIOSLogFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Language model adaptation context = %@, recipient = %@ (%@)", "-[TIWordSearch setLanguageModelAdaptationContextWithClientIdentifier:recipientIdentifier:]_block_invoke_2", v4, *(a1 + 40), v3];
      *buf = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_22CA55000, v5, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  v6 = [[TIWordSearchOperationSetLanguageModelAdaptationContext alloc] initWithWordSearch:*(a1 + 48) adaptationContext:v4];
  [*(a1 + 48) performOperationAsync:v6];

  v7 = *MEMORY[0x277D85DE8];
}

void __90__TIWordSearch_setLanguageModelAdaptationContextWithClientIdentifier_recipientIdentifier___block_invoke_99(uint64_t a1, void *a2)
{
  v7 = [a2 objectForKey:*(a1 + 32)];
  v3 = *(a1 + 40);
  if ([v7 count])
  {
    v4 = v7;
  }

  else
  {
    v4 = 0;
  }

  (*(v3 + 16))(v3, v4);
  v5 = +[TIWordSearch recipientRecords];
  if (v7)
  {
    v6 = v7;
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  [v5 setObject:v6 forKey:*(a1 + 32)];
}

- (void)contactStoreDidChange:(id)change
{
  changeCopy = change;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v5 = +[TIWordSearch recipientRecords];
    [v5 removeAllObjects];
  }

  else
  {
    [(TIWordSearch *)self performSelectorOnMainThread:a2 withObject:changeCopy waitUntilDone:1];
  }
}

- (void)insertTopSupplementalCandidateSurroundingCursorToFrontOfResultSet:(id)set
{
  setCopy = set;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __82__TIWordSearch_insertTopSupplementalCandidateSurroundingCursorToFrontOfResultSet___block_invoke;
  v15 = &unk_278733738;
  selfCopy = self;
  v5 = setCopy;
  v17 = v5;
  v6 = _Block_copy(&v12);
  currentQueue = [MEMORY[0x277CCABD8] currentQueue];
  v8 = +[TIWordSearch sharedOperationQueue];
  v9 = [currentQueue isEqual:v8];

  if (v9)
  {
    v6[2](v6);
  }

  else
  {
    v10 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v6];
    [(TIWordSearch *)self performOperationAsync:v10];

    v11 = +[TIWordSearch sharedOperationQueue];
    [v11 waitUntilAllOperationsAreFinished];
  }
}

void __82__TIWordSearch_insertTopSupplementalCandidateSurroundingCursorToFrontOfResultSet___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabraEnvironment];
  v6 = [v2 findSupplementalLexiconCandidatesSurroundingCursor];

  if ([v6 count])
  {
    v3 = [v6 firstObject];

    v4 = MecabraCandidateGetSurface();
    v5 = [objc_alloc(MEMORY[0x277D6F448]) initWithMecabraCandidate:v3 input:v4];
    [*(a1 + 40) insertMecabraCandidate:v5 mecabraCandidateRef:v3 atIndex:0];
  }
}

- (void)dynamicDictionariesRemoved:(id)removed
{
  [(TIWordSearch *)self completeOperationsInQueue];
  [(TIWordSearch *)self clearObservers];
  obj = self;
  objc_sync_enter(obj);
  mecabraWrapper = obj->_mecabraWrapper;
  obj->_mecabraWrapper = 0;

  mecabraEnvironment = obj->_mecabraEnvironment;
  obj->_mecabraEnvironment = 0;

  objc_sync_exit(obj);
}

- (void)clearObservers
{
  if (self->_userDictionaryObserver)
  {
    v3 = +[TIUserDictionaryServer sharedInstance];
    [v3 removeObserver:self->_userDictionaryObserver];

    userDictionaryObserver = self->_userDictionaryObserver;
    self->_userDictionaryObserver = 0;
  }

  if (self->_dictionaryUpdateObserver)
  {
    [TIMecabraEnvironment removeMobileAssetListener:?];
    dictionaryUpdateObserver = self->_dictionaryUpdateObserver;
    self->_dictionaryUpdateObserver = 0;
  }

  if (self->_supplementalLexiconObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_supplementalLexiconObserver];

    supplementalLexiconObserver = self->_supplementalLexiconObserver;
    self->_supplementalLexiconObserver = 0;
  }

  if (self->_contactObserver)
  {
    v8 = +[TITransientLexiconManager sharedInstance];
    [v8 removeContactObserver:self->_contactObserver];

    contactObserver = self->_contactObserver;
    self->_contactObserver = 0;
  }
}

- (void)saveLearningDictionary
{
  mecabraWrapper = [(TIWordSearch *)self mecabraWrapper];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__TIWordSearch_saveLearningDictionary__block_invoke;
  v6[3] = &unk_278733308;
  v7 = mecabraWrapper;
  v4 = mecabraWrapper;
  v5 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:v6];
  [(TIWordSearch *)self performOperationAsync:v5 withBackgroundActivityAssertion:1];
}

uint64_t __38__TIWordSearch_saveLearningDictionary__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (TICanLogMessageAtLevel_onceToken != -1)
  {
    dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
  }

  v2 = TIOSLogFacility();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Calling MecabraFlushDynamicData", "-[TIWordSearch saveLearningDictionary]_block_invoke"];
    *buf = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_22CA55000, v2, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  [*(a1 + 32) mecabraRef];
  result = MecabraFlushDynamicData();
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)completeOperationsInQueue
{
  v2 = +[TIWordSearch sharedOperationQueue];
  [v2 cancelAllOperations];

  v3 = +[TIWordSearch sharedOperationQueue];
  [v3 waitUntilAllOperationsAreFinished];
}

- (void)lastAcceptedCandidateCorrected
{
  if ([(TIWordSearch *)self mecabra])
  {
    v3 = [[TIWordSearchOperationCancelLastAcceptedCandidate alloc] initWithWordSearch:self];
    [(TIWordSearch *)self performOperationAsync:v3];
  }
}

- (void)releaseBackgroundActivityAssertion
{
  v2 = +[TIKeyboardAssertionManager sharedAssertionManager];
  [v2 releaseBackgroundActivityAssertion];
}

- (void)performOperationAsync:(id)async withBackgroundActivityAssertion:(BOOL)assertion
{
  assertionCopy = assertion;
  v29 = *MEMORY[0x277D85DE8];
  asyncCopy = async;
  if (assertionCopy)
  {
    v7 = +[TIKeyboardAssertionManager sharedAssertionManager];
    [v7 retainBackgroundActivityAssertion];

    objc_initWeak(&location, self);
    completionBlock = [asyncCopy completionBlock];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __70__TIWordSearch_performOperationAsync_withBackgroundActivityAssertion___block_invoke;
    v24[3] = &unk_278730EF8;
    objc_copyWeak(&v26, &location);
    v25 = completionBlock;
    v9 = completionBlock;
    [asyncCopy setCompletionBlock:v24];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = +[TIWordSearch sharedOperationQueue];
    operations = [v10 operations];

    v12 = [operations countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        v15 = 0;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(operations);
          }

          v16 = *(*(&v20 + 1) + 8 * v15);
          if ([v16 isMemberOfClass:objc_opt_class()])
          {
            v17 = v16;
            if (([v17 isExecuting] & 1) == 0)
            {
              [v17 cancel];
            }
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [operations countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v13);
    }
  }

  v18 = +[TIWordSearch sharedOperationQueue];
  [v18 addOperation:asyncCopy];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __70__TIWordSearch_performOperationAsync_withBackgroundActivityAssertion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained performSelectorOnMainThread:sel_releaseBackgroundActivityAssertion withObject:0 waitUntilDone:0];

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)resetPreviousWord
{
  v3 = [[TIWordSearchOperationAcceptCandidate alloc] initWithWordSearch:self mecabraCandidate:0 isPartial:0];
  [(TIWordSearch *)self performOperationAsync:v3];
}

- (BOOL)isCancelled
{
  operation = [(TIWordSearch *)self operation];
  isCancelled = [operation isCancelled];

  return isCancelled;
}

- (void)cancel
{
  v3 = +[TIWordSearch sharedOperationQueue];
  [v3 cancelAllOperations];

  if ([(TIWordSearch *)self mecabra])
  {
    mecabra = [(TIWordSearch *)self mecabra];

    MEMORY[0x2821F8CC8](mecabra);
  }
}

- (BOOL)addFacemarkCandidatesToResultSet:(id)set forInput:(id)input
{
  setCopy = set;
  inputCopy = input;
  if (([inputCopy isEqualToString:@"^_^"] & 1) == 0 && (objc_msgSend(inputCopy, "isEqualToString:", @"☺") & 1) == 0 && (objc_msgSend(inputCopy, "isEqualToString:", @"☻") & 1) == 0 && (objc_msgSend(inputCopy, "isEqualToString:", @"^_^") & 1) == 0)
  {
    if (([inputCopy isEqualToString:@"……"] & 1) == 0 && !objc_msgSend(inputCopy, "isEqualToString:", @"⋯⋯"))
    {
      v8 = 0;
      goto LABEL_9;
    }

    [setCopy addSyntheticMecabraCandidateWithSurface:inputCopy input:inputCopy];
  }

  [(TIWordSearch *)self _addFacemarkCandidatesToResultSet:setCopy forInput:inputCopy];
  v8 = 1;
LABEL_9:

  return v8;
}

- (void)_addFacemarkCandidatesToResultSet:(id)set forInput:(id)input
{
  v19 = *MEMORY[0x277D85DE8];
  setCopy = set;
  inputCopy = input;
  [(TIWordSearch *)self mecabra];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = MecabraCreateFacemarkCandidates();
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [setCopy addMecabraFacemarkCandidate:*(*(&v14 + 1) + 8 * v12++) forInput:{inputCopy, v14}];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)cachedCandidatesForOperation:(id)operation
{
  operationCopy = operation;
  candidatesCache = [(TIWordSearch *)self candidatesCache];
  v6 = [(TIWordSearch *)self candidatesCacheKeyForOperation:operationCopy];

  v7 = [candidatesCache objectForKey:v6];

  return v7;
}

- (id)candidatesForOperation:(id)operation
{
  operationCopy = operation;
  v5 = [(TIWordSearch *)self candidatesCacheKeyForOperation:operationCopy];
  candidatesCache = [(TIWordSearch *)self candidatesCache];
  v7 = [candidatesCache objectForKey:v5];

  if (!v7)
  {
    v7 = [(TIWordSearch *)self uncachedCandidatesForOperation:operationCopy];
    if (([operationCopy isCancelled] & 1) == 0)
    {
      if (v7)
      {
        [(TIWordSearch *)self clearCache];
        candidatesCache2 = [(TIWordSearch *)self candidatesCache];
        [candidatesCache2 setObject:v7 forKey:v5];
      }
    }
  }

  return v7;
}

- (id)candidatesCacheKeyForOperation:(id)operation
{
  operationCopy = operation;
  inputString = [operationCopy inputString];
  v5 = inputString;
  if (inputString)
  {
    v6 = inputString;
  }

  else
  {
    v6 = &stru_283FDFAF8;
  }

  predictionEnabled = [operationCopy predictionEnabled];

  if (predictionEnabled)
  {
    v8 = @"-1";
  }

  else
  {
    v8 = @"-0";
  }

  v9 = [(__CFString *)v6 stringByAppendingString:v8];

  return v9;
}

- (NSCache)candidatesCache
{
  candidatesCache = self->_candidatesCache;
  if (!candidatesCache)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v5 = self->_candidatesCache;
    self->_candidatesCache = v4;

    candidatesCache = self->_candidatesCache;
  }

  return candidatesCache;
}

- (void)handleMemoryPressureLevel:(unint64_t)level excessMemoryInBytes:(unint64_t)bytes
{
  v7 = +[TIKeyboardActivityController sharedController];
  activityState = [v7 activityState];

  if (activityState == 3)
  {
    mecabraWrapper = [(TIWordSearch *)self mecabraWrapper];
    v10 = level - 1;
    v11 = level - 1 >= 3;
    v12 = MEMORY[0x277CCA8C8];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__TIWordSearch_handleMemoryPressureLevel_excessMemoryInBytes___block_invoke;
    v16[3] = &unk_278730ED0;
    if (v11)
    {
      v13 = 0;
    }

    else
    {
      v13 = v10 + 1;
    }

    v19 = v13;
    v17 = mecabraWrapper;
    bytesCopy = bytes;
    v14 = mecabraWrapper;
    v15 = [v12 blockOperationWithBlock:v16];
    [(TIWordSearch *)self performOperationAsync:v15 withBackgroundActivityAssertion:1];
  }
}

uint64_t __62__TIWordSearch_handleMemoryPressureLevel_excessMemoryInBytes___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabraRef];
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);

  return MEMORY[0x2821F8F20](v2, v3, v4);
}

- (void)keyboardActivityDidTransition:(id)transition
{
  transitionCopy = transition;
  if ([transitionCopy toState] == 3)
  {
    mecabraWrapper = [(TIWordSearch *)self mecabraWrapper];
    v6 = MEMORY[0x277CCA8C8];
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __46__TIWordSearch_keyboardActivityDidTransition___block_invoke;
    v12 = &unk_278733738;
    v13 = mecabraWrapper;
    v14 = transitionCopy;
    v7 = mecabraWrapper;
    v8 = [v6 blockOperationWithBlock:&v9];
    [(TIWordSearch *)self performOperationAsync:v8 withBackgroundActivityAssertion:1, v9, v10, v11, v12];
  }
}

uint64_t __46__TIWordSearch_keyboardActivityDidTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabraRef];
  v3 = [*(a1 + 40) excessMemoryInBytes];

  return MEMORY[0x2821F8F20](v2, 0, v3);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(TIWordSearch *)self clearObservers];
  v4 = +[TIKeyboardActivityController sharedController];
  [v4 removeActivityObserver:self];

  v5.receiver = self;
  v5.super_class = TIWordSearch;
  [(TIWordSearch *)&v5 dealloc];
}

- (id)initTIWordSearchWithInputMode:(id)mode mecabraWrapper:(id)wrapper
{
  modeCopy = mode;
  wrapperCopy = wrapper;
  v15.receiver = self;
  v15.super_class = TIWordSearch;
  v9 = [(TIWordSearch *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_inputMode, mode);
    [(TIWordSearch *)v10 setAutoCorrects:1];
    if (wrapperCopy)
    {
      [(TIWordSearch *)v10 setMecabraWrapper:wrapperCopy];
    }

    else
    {
      mecabraWrapper = [(TIWordSearch *)v10 mecabraWrapper];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_dynamicDictionariesRemoved_ name:@"TIKeyboardInputManagerDynamicDictionariesRemovedNotification" object:0];

    v13 = +[TIKeyboardActivityController sharedController];
    [v13 addActivityObserver:v10];

    TILanguageModelScheduleMaintenance();
  }

  return v10;
}

- (id)mecabraCreationOptionsDictionary
{
  keys[1] = *MEMORY[0x277D85DE8];
  keys[0] = *MEMORY[0x277D82A58];
  values = *MEMORY[0x277CBED28];
  v2 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (int)mecabraLanguage
{
  v2 = [(TIWordSearch *)self mecabraInputMethodType]- 1;
  if (v2 > 0x11)
  {
    return -1;
  }

  else
  {
    return dword_22CC8A590[v2];
  }
}

- (__Mecabra)mecabra
{
  mecabraWrapper = [(TIWordSearch *)self mecabraWrapper];
  mecabraRef = [mecabraWrapper mecabraRef];

  return mecabraRef;
}

- (void)setMecabraWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_mecabraWrapper != wrapperCopy)
  {
    objc_storeStrong(&selfCopy->_mecabraWrapper, wrapper);
  }

  [(TIWordSearch *)selfCopy updateMecabraState];
  objc_sync_exit(selfCopy);
}

- (TIMecabraWrapper)mecabraWrapper
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  mecabraWrapper = selfCopy->_mecabraWrapper;
  v4 = mecabraWrapper;
  if (!mecabraWrapper)
  {
    mecabraInputMethodType = [(TIWordSearch *)selfCopy mecabraInputMethodType];
    mecabraLearningDictionaryDirectory = [objc_opt_class() mecabraLearningDictionaryDirectory];
    mecabraCreationOptions = [(TIWordSearch *)selfCopy mecabraCreationOptions];
    mecabraCreationOptionsDictionary = [(TIWordSearch *)selfCopy mecabraCreationOptionsDictionary];
    v9 = [TIMecabraWrapper alloc];
    if (mecabraCreationOptionsDictionary)
    {
      v10 = [(TIMecabraWrapper *)v9 initWithInputMethodType:mecabraInputMethodType learningDictionaryDirectoryURL:mecabraLearningDictionaryDirectory creationOptionsDictionary:mecabraCreationOptionsDictionary];
    }

    else
    {
      v10 = [(TIMecabraWrapper *)v9 initWithInputMethodType:mecabraInputMethodType learningDictionaryDirectoryURL:mecabraLearningDictionaryDirectory creationOptions:mecabraCreationOptions];
    }

    v11 = selfCopy->_mecabraWrapper;
    selfCopy->_mecabraWrapper = v10;

    v4 = selfCopy->_mecabraWrapper;
  }

  v12 = v4;
  objc_sync_exit(selfCopy);

  if (!mecabraWrapper)
  {
    [(TIWordSearch *)selfCopy updateMecabraState];
  }

  return v12;
}

- (TIMecabraEnvironment)mecabraEnvironment
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_mecabraEnvironment && selfCopy->_mecabraWrapper)
  {
    v3 = [TIMecabraEnvironment alloc];
    mecabraWrapper = [(TIWordSearch *)selfCopy mecabraWrapper];
    v5 = -[TIMecabraEnvironment initWithMecabraEngine:language:](v3, "initWithMecabraEngine:language:", [mecabraWrapper mecabraRef], -[TIWordSearch mecabraLanguage](selfCopy, "mecabraLanguage"));
    mecabraEnvironment = selfCopy->_mecabraEnvironment;
    selfCopy->_mecabraEnvironment = v5;
  }

  objc_sync_exit(selfCopy);

  v7 = selfCopy->_mecabraEnvironment;

  return v7;
}

- (void)clearLearningDictionary
{
  if ([(TIWordSearch *)self mecabra])
  {
    [(TIWordSearch *)self completeOperationsInQueue];
    mecabra = [(TIWordSearch *)self mecabra];

    MEMORY[0x2821F8DE8](mecabra);
  }
}

- (void)updateMecabraState
{
  [(TIWordSearch *)self updateSupplementalLexicon];

  [(TIWordSearch *)self updateAddressBook];
}

- (void)setDebuggingLogEnabled:(BOOL)enabled
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__TIWordSearch_setDebuggingLogEnabled___block_invoke;
  v5[3] = &unk_278730E80;
  v5[4] = self;
  enabledCopy = enabled;
  v3 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:v5];
  sharedOperationQueue = [objc_opt_class() sharedOperationQueue];
  [sharedOperationQueue addOperation:v3];
}

uint64_t __39__TIWordSearch_setDebuggingLogEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabra];
  v3 = *(a1 + 40);

  return MEMORY[0x2821F8FA0](v2, v3);
}

- (void)clearCache
{
  candidatesCache = [(TIWordSearch *)self candidatesCache];
  [candidatesCache removeAllObjects];
}

+ (id)recipientRecords
{
  if (+[TIWordSearch recipientRecords]::dispatchOnce != -1)
  {
    dispatch_once(&+[TIWordSearch recipientRecords]::dispatchOnce, &__block_literal_global_87);
  }

  v3 = +[TIWordSearch recipientRecords]::__recipientRecords;

  return v3;
}

uint64_t __32__TIWordSearch_recipientRecords__block_invoke()
{
  v0 = [[TILRUDictionary alloc] initWithMaximumCapacity:10];
  v1 = +[TIWordSearch recipientRecords]::__recipientRecords;
  +[TIWordSearch recipientRecords]::__recipientRecords = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)sharedOperationQueue
{
  if (+[TIWordSearch sharedOperationQueue]::__onceToken != -1)
  {
    dispatch_once(&+[TIWordSearch sharedOperationQueue]::__onceToken, &__block_literal_global_10274);
  }

  v3 = +[TIWordSearch sharedOperationQueue]::__operationQueue;

  return v3;
}

void __36__TIWordSearch_sharedOperationQueue__block_invoke()
{
  if (!+[TIWordSearch sharedOperationQueue]::__operationQueue)
  {
    v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v1 = +[TIWordSearch sharedOperationQueue]::__operationQueue;
    +[TIWordSearch sharedOperationQueue]::__operationQueue = v0;

    [+[TIWordSearch sharedOperationQueue]::__operationQueue setMaxConcurrentOperationCount:1];
    v2 = +[TIWordSearch sharedOperationQueue]::__operationQueue;

    [v2 setQualityOfService:25];
  }
}

+ (id)mecabraLearningDictionaryDirectory
{
  v2 = *MEMORY[0x277CBECE8];
  v3 = UIKeyboardUserDirectory();
  v4 = CFURLCreateWithFileSystemPath(v2, v3, kCFURLPOSIXPathStyle, 1u);

  return v4;
}

+ (id)configureUserDictionaryObserver:(id)observer previousObserver:(id)previousObserver
{
  observerCopy = observer;
  if (previousObserver)
  {
    previousObserverCopy = previousObserver;
    v7 = +[TIUserDictionaryServer sharedInstance];
    [v7 removeObserver:previousObserverCopy];
  }

  sharedOperationQueue = [objc_opt_class() sharedOperationQueue];
  v9 = +[TIUserDictionaryServer sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__TIWordSearch_configureUserDictionaryObserver_previousObserver___block_invoke;
  v14[3] = &unk_278730EA8;
  v15 = sharedOperationQueue;
  v16 = observerCopy;
  v10 = observerCopy;
  v11 = sharedOperationQueue;
  v12 = [v9 addObserver:v14];

  return v12;
}

void __65__TIWordSearch_configureUserDictionaryObserver_previousObserver___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __65__TIWordSearch_configureUserDictionaryObserver_previousObserver___block_invoke_2;
    v9 = &unk_278733738;
    v4 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v3;
    v5 = [(NSBlockOperation *)TINoncancellableBlockOperation blockOperationWithBlock:&v6];
    [v4 addOperation:{v5, v6, v7, v8, v9}];
  }
}

uint64_t __65__TIWordSearch_configureUserDictionaryObserver_previousObserver___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabraRef];
  v3 = *(a1 + 40);

  return MEMORY[0x2821F8FD0](v2, v3);
}

@end