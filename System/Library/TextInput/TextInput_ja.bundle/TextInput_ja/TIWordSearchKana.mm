@interface TIWordSearchKana
+ (id)configureContactCollectionObserver:(id)a3 previousObserver:(id)a4;
+ (id)sharedMecabraWrapper;
+ (void)clearCachedContactObserver;
+ (void)resetSharedMecabraWrapper;
- (BOOL)_insertString:(id)a3 input:(id)a4 at:(unint64_t)a5 force:(BOOL)a6;
- (BOOL)shouldMoveCursor:(id)a3;
- (id)candidateForDefault:(id)a3 rawInputString:(id)a4;
- (id)candidatesCacheKeyForOperation:(id)a3;
- (id)initTIWordSearchWithInputMode:(id)a3;
- (id)initTIWordSearchWithInputMode:(id)a3 mecabraWrapper:(id)a4;
- (id)makeCandidates:(id)a3 input:(id)a4 contextString:(id)a5 predictionEnabled:(BOOL)a6 reanalysisMode:(BOOL)a7 withInputManager:(id)a8 geometryModelData:(id)a9 flickUsed:(BOOL)a10 hardwareKeyboardMode:(BOOL)a11 referenceMode:(BOOL)a12 singlePhrase:(BOOL)a13;
- (void)dealloc;
- (void)dynamicDictionariesRemoved:(id)a3;
- (void)updateMecabraState;
@end

@implementation TIWordSearchKana

+ (id)sharedMecabraWrapper
{
  v2 = a1;
  objc_sync_enter(v2);
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
  objc_sync_exit(v2);

  return v10;
}

+ (void)resetSharedMecabraWrapper
{
  obj = a1;
  objc_sync_enter(obj);
  v2 = __mecabraWrapper;
  __mecabraWrapper = 0;

  objc_sync_exit(obj);
}

+ (id)configureContactCollectionObserver:(id)a3 previousObserver:(id)a4
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() sharedOperationQueue];
  v8 = TIPersonalizationContactOSLogFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s TIWordSearchKana:configureContactCollectionObserver - adding observer", "+[TIWordSearchKana configureContactCollectionObserver:previousObserver:]"];
    *buf = 138412290;
    v24 = v9;
    _os_log_impl(&dword_29EA26000, v8, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
  }

  v10 = [MEMORY[0x29EDC7268] sharedInstance];
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 3221225472;
  v20[2] = __72__TIWordSearchKana_configureContactCollectionObserver_previousObserver___block_invoke;
  v20[3] = &unk_29F379060;
  v11 = v7;
  v21 = v11;
  v12 = v5;
  v22 = v12;
  v13 = [v10 addContactObserver:v20];

  if (v6)
  {
    v14 = TIPersonalizationContactOSLogFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s TIWordSearchKana:configureContactCollectionObserver - removing observer", "+[TIWordSearchKana configureContactCollectionObserver:previousObserver:]"];
      *buf = 138412290;
      v24 = v15;
      _os_log_impl(&dword_29EA26000, v14, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
    }

    v16 = [MEMORY[0x29EDC7268] sharedInstance];
    [v16 removeContactObserver:v6];
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

- (id)initTIWordSearchWithInputMode:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() sharedMecabraWrapper];
  v6 = [(TIWordSearchKana *)self initTIWordSearchWithInputMode:v4 mecabraWrapper:v5];

  return v6;
}

- (id)initTIWordSearchWithInputMode:(id)a3 mecabraWrapper:(id)a4
{
  v10.receiver = self;
  v10.super_class = TIWordSearchKana;
  v4 = [(TIWordSearch *)&v10 initTIWordSearchWithInputMode:a3 mecabraWrapper:a4];
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

- (BOOL)shouldMoveCursor:(id)a3
{
  v4 = a3;
  if ([(TIWordSearchKana *)self supportsPairedPunctutationInput])
  {
    if (pairedPunctuations(void)::__onceToken != -1)
    {
      [TIWordSearchKana shouldMoveCursor:];
    }

    v5 = [pairedPunctuations(void)::__pairedPunctuations containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)candidateForDefault:(id)a3 rawInputString:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TIWordSearchKana *)self shouldMoveCursor:v7];
  v9 = [MEMORY[0x29EDC7088] candidateWithCandidate:v7 forInput:v6 cursorMovement:v8 << 63 >> 63];

  return v9;
}

- (BOOL)_insertString:(id)a3 input:(id)a4 at:(unint64_t)a5 force:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = 0;
  if (v10 && a5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v10 length])
    {
      v13 = [(TIWordSearchKana *)self candidateResultSet];
      v14 = [v13 candidates];

      v15 = [v14 count];
      if (v15 >= a5)
      {
        v16 = a5;
      }

      else
      {
        v16 = v15;
      }

      v24 = v16;
      if (v15)
      {
        v17 = v15;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          v20 = v19;
          v19 = [v14 objectAtIndex:v18];

          v21 = [v19 candidate];
          LODWORD(v20) = [v10 isEqualToString:v21];

          if (v20)
          {
            break;
          }

          if (v17 == ++v18)
          {
            goto LABEL_14;
          }
        }

        if (v24 >= v18 && !v6)
        {
          v12 = 0;
          goto LABEL_16;
        }

        v22 = [(TIWordSearchKana *)self candidateResultSet];
        [v22 moveCandidate:v19 fromIndex:v18 toIndex:v24];
      }

      else
      {
        v19 = 0;
LABEL_14:
        v22 = [(TIWordSearchKana *)self candidateResultSet];
        [v22 insertSyntheticMecabraCandidateWithSurface:v10 input:v11 atIndex:v24];
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

- (id)candidatesCacheKeyForOperation:(id)a3
{
  v3 = a3;
  v4 = [v3 keyboardInput];
  if (!v4)
  {
    v5 = [v3 inputString];
    goto LABEL_5;
  }

  if ([v4 hasKindOf:objc_opt_class()])
  {
    v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%lud", v4];
LABEL_5:
    v6 = v5;
    goto LABEL_8;
  }

  v7 = [v4 asSearchString];
  v6 = [v7 stringByAppendingFormat:@"%lud", objc_msgSend(v4, "asSearchTextCursorIndex")];

  if (![v6 length])
  {
    v8 = [v4 asInlineText];

    v6 = v8;
  }

LABEL_8:
  if (([v3 phraseBoundarySet] & 1) != 0 || (objc_msgSend(v3, "predictionEnabled") & 1) == 0)
  {
    v9 = [v6 stringByAppendingString:@" *"];

    v6 = v9;
  }

  if ([v3 allowIncompleteRomaji])
  {
    v10 = [v6 stringByAppendingString:@" #"];

    v6 = v10;
  }

  if ([v3 referenceMode])
  {
    v11 = [v6 stringByAppendingString:@" r"];

    v6 = v11;
  }

  if ([v3 segmentBreakIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = v6;
  }

  else
  {
    v12 = [v6 stringByAppendingFormat:@" %ld", objc_msgSend(v3, "segmentBreakIndex")];
  }

  v13 = v12;

  return v13;
}

- (id)makeCandidates:(id)a3 input:(id)a4 contextString:(id)a5 predictionEnabled:(BOOL)a6 reanalysisMode:(BOOL)a7 withInputManager:(id)a8 geometryModelData:(id)a9 flickUsed:(BOOL)a10 hardwareKeyboardMode:(BOOL)a11 referenceMode:(BOOL)a12 singlePhrase:(BOOL)a13
{
  v14 = a7;
  v15 = a6;
  v19 = a3;
  v20 = a4;
  v45 = a5;
  v46 = a8;
  v21 = a9;
  v22 = objc_alloc_init(MEMORY[0x29EDC7278]);
  if (v15)
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

  v24 = [(TIWordSearch *)self shouldLearnAcceptedCandidate];
  v25 = v23 | 0x80;
  if (v24)
  {
    v25 = v23;
  }

  if (v14)
  {
    v25 |= 0x4000uLL;
  }

  if (!v14 || a12)
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
    if (!a10 && ![(TIWordSearchKana *)self flickOnly])
    {
      v26 |= 0x1000000uLL;
    }

    if (![(TIWordSearchKana *)self flickOnly])
    {
      v26 |= 0x4000000uLL;
    }
  }

  v27 = [(TIWordSearch *)self autoCorrects];
  v28 = v26 | 0x40;
  if (v20 | v21)
  {
    v29 = v26 | 0x40;
  }

  else
  {
    v29 = v26;
  }

  if (!v15)
  {
    v28 = v26;
  }

  if (a11)
  {
    v29 = v28;
  }

  if (!v27)
  {
    v29 = v26;
  }

  v30 = v29 | a12;
  if (a13)
  {
    v30 |= 0x400000uLL;
  }

  if (a11)
  {
    v31 = v30 | 0x20000000;
  }

  else
  {
    v31 = v30;
  }

  v32 = [(TIWordSearch *)self mecabraEnvironment];
  [v32 setGeometryModel:v46 modelData:v21];

  if (![v19 length])
  {
    v33 = [v20 inputs];
    v34 = [v33 count];

    if (!v34)
    {
      v35 = [(TIWordSearch *)self mecabraEnvironment];
      [v35 setLeftDocumentContext:v45];

      v36 = [(TIWordSearch *)self mecabraEnvironment];
      [v36 adjustEnvironmentDirectly:0];
    }
  }

  v37 = [(TIWordSearch *)self mecabraEnvironment];
  v38 = v37;
  if (v20)
  {
    v39 = [v37 analyzeInput:v20 options:v31];

    if ((v39 & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v40 = [v37 analyzeString:v19 options:v31];

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
  if (![v19 length])
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

- (void)dynamicDictionariesRemoved:(id)a3
{
  v4 = a3;
  v5 = [(TIWordSearch *)self mecabraWrapper];
  v8.receiver = self;
  v8.super_class = TIWordSearchKana;
  [(TIWordSearch *)&v8 dynamicDictionariesRemoved:v4];

  v6 = [objc_opt_class() sharedMecabraWrapper];

  if (v5 == v6)
  {
    [objc_opt_class() resetSharedMecabraWrapper];
  }

  v7 = [objc_opt_class() sharedMecabraWrapper];
  [(TIWordSearch *)self setMecabraWrapper:v7];

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

    v4 = [MEMORY[0x29EDC7268] sharedInstance];
    [v4 removeContactObserver:__contactCollectionObserver];

    v5 = __contactCollectionObserver;
    __contactCollectionObserver = 0;
  }

  v6 = *MEMORY[0x29EDCA608];
}

@end