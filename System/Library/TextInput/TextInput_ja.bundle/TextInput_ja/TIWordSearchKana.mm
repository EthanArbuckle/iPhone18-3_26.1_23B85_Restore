@interface TIWordSearchKana
+ (id)configureContactCollectionObserver:(id)observer previousObserver:(id)previousObserver;
+ (id)sharedMecabraWrapper;
+ (void)clearCachedContactObserver;
+ (void)resetSharedMecabraWrapper;
- (BOOL)_insertString:(id)string input:(id)input at:(unint64_t)at force:(BOOL)force;
- (BOOL)shouldMoveCursor:(id)cursor;
- (id)candidateForDefault:(id)default rawInputString:(id)string;
- (id)candidatesCacheKeyForOperation:(id)operation;
- (id)initTIWordSearchWithInputMode:(id)mode;
- (id)initTIWordSearchWithInputMode:(id)mode mecabraWrapper:(id)wrapper;
- (id)makeCandidates:(id)candidates input:(id)input contextString:(id)string predictionEnabled:(BOOL)enabled reanalysisMode:(BOOL)mode withInputManager:(id)manager geometryModelData:(id)data flickUsed:(BOOL)self0 hardwareKeyboardMode:(BOOL)self1 referenceMode:(BOOL)self2 singlePhrase:(BOOL)self3;
- (void)dealloc;
- (void)dynamicDictionariesRemoved:(id)removed;
- (void)updateMecabraState;
@end

@implementation TIWordSearchKana

+ (id)sharedMecabraWrapper
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = __mecabraWrapper;
  if (!__mecabraWrapper)
  {
    v4 = [objc_alloc(MEMORY[0x29EDC7258]) initWithInputMethodType:1 learningDictionaryDirectoryURL:objc_msgSend(objc_opt_class() creationOptions:{"mecabraLearningDictionaryDirectory"), 3}];
    v5 = __mecabraWrapper;
    __mecabraWrapper = v4;

    v6 = [objc_opt_class() configureContactCollectionObserver:__mecabraWrapper previousObserver:__contactCollectionObserver];
    v7 = __contactCollectionObserver;
    __contactCollectionObserver = v6;

    v8 = [objc_opt_class() configureUserDictionaryObserver:__mecabraWrapper previousObserver:__userDictionaryObserver];
    v9 = __userDictionaryObserver;
    __userDictionaryObserver = v8;

    v3 = __mecabraWrapper;
  }

  v10 = v3;
  objc_sync_exit(selfCopy);

  return v10;
}

+ (void)resetSharedMecabraWrapper
{
  obj = self;
  objc_sync_enter(obj);
  v2 = __mecabraWrapper;
  __mecabraWrapper = 0;

  objc_sync_exit(obj);
}

+ (id)configureContactCollectionObserver:(id)observer previousObserver:(id)previousObserver
{
  v25 = *MEMORY[0x29EDCA608];
  observerCopy = observer;
  previousObserverCopy = previousObserver;
  sharedOperationQueue = [objc_opt_class() sharedOperationQueue];
  v8 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s TIWordSearchKana:configureContactCollectionObserver - adding observer", "+[TIWordSearchKana configureContactCollectionObserver:previousObserver:]"];
    *buf = 138412290;
    v24 = v9;
    _os_log_impl(&dword_29EA26000, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  mEMORY[0x29EDC7268] = [MEMORY[0x29EDC7268] sharedInstance];
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 3221225472;
  v20[2] = __72__TIWordSearchKana_configureContactCollectionObserver_previousObserver___block_invoke;
  v20[3] = &unk_29F379060;
  v11 = sharedOperationQueue;
  v21 = v11;
  v12 = observerCopy;
  v22 = v12;
  v13 = [mEMORY[0x29EDC7268] addContactObserver:v20];

  if (previousObserverCopy)
  {
    v14 = TIPersonalizationContactOSLogFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s TIWordSearchKana:configureContactCollectionObserver - removing observer", "+[TIWordSearchKana configureContactCollectionObserver:previousObserver:]"];
      *buf = 138412290;
      v24 = v15;
      _os_log_impl(&dword_29EA26000, v14, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    mEMORY[0x29EDC7268]2 = [MEMORY[0x29EDC7268] sharedInstance];
    [mEMORY[0x29EDC7268]2 removeContactObserver:previousObserverCopy];
  }

  v17 = MEMORY[0x29EDA3C60](v13);

  v18 = *MEMORY[0x29EDCA608];

  return v17;
}

void __72__TIWordSearchKana_configureContactCollectionObserver_previousObserver___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s TITextCheckerExemptions:addObserverAssertion - processing %ld contacts", "+[TIWordSearchKana configureContactCollectionObserver:previousObserver:]_block_invoke", objc_msgSend(v3, "count")];
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_29EA26000, v4, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v6 = [v3 copy];
  v7 = MEMORY[0x29EDC7260];
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 3221225472;
  v12[2] = __72__TIWordSearchKana_configureContactCollectionObserver_previousObserver___block_invoke_7;
  v12[3] = &unk_29F379038;
  v8 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = v6;
  v9 = v6;
  v10 = [v7 blockOperationWithBlock:v12];
  [v8 addOperation:v10];

  v11 = *MEMORY[0x29EDCA608];
}

uint64_t __72__TIWordSearchKana_configureContactCollectionObserver_previousObserver___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) mecabraRef];
  v3 = *(a1 + 40);
  v4 = TICreateNameReadingPairsFromContactCollection();

  return MEMORY[0x2A1C70B40](v2, v4);
}

- (id)initTIWordSearchWithInputMode:(id)mode
{
  modeCopy = mode;
  sharedMecabraWrapper = [objc_opt_class() sharedMecabraWrapper];
  v6 = [(TIWordSearchKana *)self initTIWordSearchWithInputMode:modeCopy mecabraWrapper:sharedMecabraWrapper];

  return v6;
}

- (id)initTIWordSearchWithInputMode:(id)mode mecabraWrapper:(id)wrapper
{
  v10.receiver = self;
  v10.super_class = TIWordSearchKana;
  v4 = [(TIWordSearch *)&v10 initTIWordSearchWithInputMode:mode mecabraWrapper:wrapper];
  v5 = v4;
  if (v4)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __65__TIWordSearchKana_initTIWordSearchWithInputMode_mecabraWrapper___block_invoke;
    block[3] = &unk_29F379088;
    v6 = v4;
    v9 = v6;
    if ([TIWordSearchKana initTIWordSearchWithInputMode:mecabraWrapper:]::onceToken != -1)
    {
      dispatch_once(&[TIWordSearchKana initTIWordSearchWithInputMode:mecabraWrapper:]::onceToken, block);
    }

    v6[11] = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)dealloc
{
  [(TIWordSearch *)self completeOperationsInQueue];
  v3.receiver = self;
  v3.super_class = TIWordSearchKana;
  [(TIWordSearch *)&v3 dealloc];
}

- (BOOL)shouldMoveCursor:(id)cursor
{
  cursorCopy = cursor;
  if ([(TIWordSearchKana *)self supportsPairedPunctutationInput])
  {
    if (pairedPunctuations(void)::__onceToken != -1)
    {
      [TIWordSearchKana shouldMoveCursor:];
    }

    v5 = [pairedPunctuations(void)::__pairedPunctuations containsObject:cursorCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)candidateForDefault:(id)default rawInputString:(id)string
{
  stringCopy = string;
  defaultCopy = default;
  v8 = [(TIWordSearchKana *)self shouldMoveCursor:defaultCopy];
  v9 = [MEMORY[0x29EDC7088] candidateWithCandidate:defaultCopy forInput:stringCopy cursorMovement:v8 << 63 >> 63];

  return v9;
}

- (BOOL)_insertString:(id)string input:(id)input at:(unint64_t)at force:(BOOL)force
{
  forceCopy = force;
  stringCopy = string;
  inputCopy = input;
  v12 = 0;
  if (stringCopy && at != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([stringCopy length])
    {
      candidateResultSet = [(TIWordSearchKana *)self candidateResultSet];
      candidates = [candidateResultSet candidates];

      v15 = [candidates count];
      if (v15 >= at)
      {
        atCopy = at;
      }

      else
      {
        atCopy = v15;
      }

      v24 = atCopy;
      if (v15)
      {
        v17 = v15;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          v20 = v19;
          v19 = [candidates objectAtIndex:v18];

          candidate = [v19 candidate];
          LODWORD(v20) = [stringCopy isEqualToString:candidate];

          if (v20)
          {
            break;
          }

          if (v17 == ++v18)
          {
            goto LABEL_14;
          }
        }

        if (v24 >= v18 && !forceCopy)
        {
          v12 = 0;
          goto LABEL_16;
        }

        candidateResultSet2 = [(TIWordSearchKana *)self candidateResultSet];
        [candidateResultSet2 moveCandidate:v19 fromIndex:v18 toIndex:v24];
      }

      else
      {
        v19 = 0;
LABEL_14:
        candidateResultSet2 = [(TIWordSearchKana *)self candidateResultSet];
        [candidateResultSet2 insertSyntheticMecabraCandidateWithSurface:stringCopy input:inputCopy atIndex:v24];
      }

      v12 = 1;
LABEL_16:

      goto LABEL_17;
    }

    v12 = 0;
  }

LABEL_17:

  return v12;
}

- (id)candidatesCacheKeyForOperation:(id)operation
{
  operationCopy = operation;
  keyboardInput = [operationCopy keyboardInput];
  if (!keyboardInput)
  {
    inputString = [operationCopy inputString];
    goto LABEL_5;
  }

  if ([keyboardInput hasKindOf:objc_opt_class()])
  {
    inputString = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%lud", keyboardInput];
LABEL_5:
    v6 = inputString;
    goto LABEL_8;
  }

  asSearchString = [keyboardInput asSearchString];
  v6 = [asSearchString stringByAppendingFormat:@"%lud", objc_msgSend(keyboardInput, "asSearchTextCursorIndex")];

  if (![v6 length])
  {
    asInlineText = [keyboardInput asInlineText];

    v6 = asInlineText;
  }

LABEL_8:
  if (([operationCopy phraseBoundarySet] & 1) != 0 || (objc_msgSend(operationCopy, "predictionEnabled") & 1) == 0)
  {
    v9 = [v6 stringByAppendingString:@" *"];

    v6 = v9;
  }

  if ([operationCopy allowIncompleteRomaji])
  {
    v10 = [v6 stringByAppendingString:@" #"];

    v6 = v10;
  }

  if ([operationCopy referenceMode])
  {
    v11 = [v6 stringByAppendingString:@" r"];

    v6 = v11;
  }

  if ([operationCopy segmentBreakIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v6;
  }

  else
  {
    v12 = [v6 stringByAppendingFormat:@" %ld", objc_msgSend(operationCopy, "segmentBreakIndex")];
  }

  v13 = v12;

  return v13;
}

- (id)makeCandidates:(id)candidates input:(id)input contextString:(id)string predictionEnabled:(BOOL)enabled reanalysisMode:(BOOL)mode withInputManager:(id)manager geometryModelData:(id)data flickUsed:(BOOL)self0 hardwareKeyboardMode:(BOOL)self1 referenceMode:(BOOL)self2 singlePhrase:(BOOL)self3
{
  modeCopy = mode;
  enabledCopy = enabled;
  candidatesCopy = candidates;
  inputCopy = input;
  stringCopy = string;
  managerCopy = manager;
  dataCopy = data;
  v22 = objc_alloc_init(MEMORY[0x29EDC7278]);
  if (enabledCopy)
  {
    v23 = 0;
  }

  else
  {
    v23 = 2;
  }

  if ([(TIWordSearchKana *)self isAnalyzingJapaneseRomaji])
  {
    v23 |= 0x100uLL;
  }

  shouldLearnAcceptedCandidate = [(TIWordSearch *)self shouldLearnAcceptedCandidate];
  v25 = v23 | 0x80;
  if (shouldLearnAcceptedCandidate)
  {
    v25 = v23;
  }

  if (modeCopy)
  {
    v25 |= 0x4000uLL;
  }

  if (!modeCopy || referenceMode)
  {
    v26 = v25 | 8;
  }

  else
  {
    v26 = v25;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!used && ![(TIWordSearchKana *)self flickOnly])
    {
      v26 |= 0x1000000uLL;
    }

    if (![(TIWordSearchKana *)self flickOnly])
    {
      v26 |= 0x4000000uLL;
    }
  }

  autoCorrects = [(TIWordSearch *)self autoCorrects];
  v28 = v26 | 0x40;
  if (inputCopy | dataCopy)
  {
    v29 = v26 | 0x40;
  }

  else
  {
    v29 = v26;
  }

  if (!enabledCopy)
  {
    v28 = v26;
  }

  if (keyboardMode)
  {
    v29 = v28;
  }

  if (!autoCorrects)
  {
    v29 = v26;
  }

  v30 = v29 | referenceMode;
  if (phrase)
  {
    v30 |= 0x400000uLL;
  }

  if (keyboardMode)
  {
    v31 = v30 | 0x20000000;
  }

  else
  {
    v31 = v30;
  }

  mecabraEnvironment = [(TIWordSearch *)self mecabraEnvironment];
  [mecabraEnvironment setGeometryModel:managerCopy modelData:dataCopy];

  if (![candidatesCopy length])
  {
    inputs = [inputCopy inputs];
    v34 = [inputs count];

    if (!v34)
    {
      mecabraEnvironment2 = [(TIWordSearch *)self mecabraEnvironment];
      [mecabraEnvironment2 setLeftDocumentContext:stringCopy];

      mecabraEnvironment3 = [(TIWordSearch *)self mecabraEnvironment];
      [mecabraEnvironment3 adjustEnvironmentDirectly:0];
    }
  }

  mecabraEnvironment4 = [(TIWordSearch *)self mecabraEnvironment];
  v38 = mecabraEnvironment4;
  if (inputCopy)
  {
    v39 = [mecabraEnvironment4 analyzeInput:inputCopy options:v31];

    if ((v39 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v40 = [mecabraEnvironment4 analyzeString:candidatesCopy options:v31];

    if (!v40)
    {
      goto LABEL_43;
    }
  }

  [(TIWordSearch *)self mecabra];
  NextCandidate = MecabraGetNextCandidate();
  if (NextCandidate)
  {
    v42 = NextCandidate;
    do
    {
      v43 = [objc_alloc(MEMORY[0x29EDC70D0]) initWithMecabraCandidate:v42 cursorMovement:{-[TIWordSearchKana shouldMoveCursor:](self, "shouldMoveCursor:", MecabraCandidateGetSurface()) << 63 >> 63}];
      [v22 addMecabraCandidate:v43 mecabraCandidateRef:v42];

      [(TIWordSearch *)self mecabra];
      v42 = MecabraGetNextCandidate();
    }

    while (v42);
  }

LABEL_43:
  if (![candidatesCopy length])
  {
    [(TIWordSearch *)self insertTopSupplementalCandidateSurroundingCursorToFrontOfResultSet:v22];
  }

  return v22;
}

- (void)updateMecabraState
{
  v3.receiver = self;
  v3.super_class = TIWordSearchKana;
  [(TIWordSearch *)&v3 updateMecabraState];
  [(TIWordSearch *)self updateUserWordEntries];
}

- (void)dynamicDictionariesRemoved:(id)removed
{
  removedCopy = removed;
  mecabraWrapper = [(TIWordSearch *)self mecabraWrapper];
  v8.receiver = self;
  v8.super_class = TIWordSearchKana;
  [(TIWordSearch *)&v8 dynamicDictionariesRemoved:removedCopy];

  sharedMecabraWrapper = [objc_opt_class() sharedMecabraWrapper];

  if (mecabraWrapper == sharedMecabraWrapper)
  {
    [objc_opt_class() resetSharedMecabraWrapper];
  }

  sharedMecabraWrapper2 = [objc_opt_class() sharedMecabraWrapper];
  [(TIWordSearch *)self setMecabraWrapper:sharedMecabraWrapper2];

  [(TIWordSearch *)self updateDictionaryPaths];
}

+ (void)clearCachedContactObserver
{
  v9 = *MEMORY[0x29EDCA608];
  if (__contactCollectionObserver)
  {
    v2 = TIPersonalizationContactOSLogFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s TIWordSearchKana:clearCachedContactObserver - removing observer", "+[TIWordSearchKana(TestingSupport) clearCachedContactObserver]"];
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_29EA26000, v2, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    mEMORY[0x29EDC7268] = [MEMORY[0x29EDC7268] sharedInstance];
    [mEMORY[0x29EDC7268] removeContactObserver:__contactCollectionObserver];

    v5 = __contactCollectionObserver;
    __contactCollectionObserver = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
}

@end