@interface TIKeyboardInputManager_ja_Candidates
+ (id)sortTitleFromSort:(unint64_t)sort;
+ (unint64_t)sortFromSortTitle:(id)title;
- (BOOL)_adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity;
- (TIKeyboardInputManager_ja_Candidates)initWithConfig:(id)config keyboardState:(id)state wordSearch:(id)search;
- (id)candidateResultSetFromCandidates:(id)candidates proactiveTriggers:(id)triggers;
- (id)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method;
- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state;
- (id)handleKeyboardInput:(id)input;
- (id)indexTitlesForGroupTitles:(id)titles sortingMethod:(id)method;
- (id)sortingMethods;
- (id)transliterationCandidates;
- (int64_t)indexFromTransliterationType:(int64_t)type;
- (int64_t)transliterationCandidatesCount;
- (void)_notifyUpdateCandidates:(id)candidates forOperation:(id)operation;
- (void)sortingMethods;
@end

@implementation TIKeyboardInputManager_ja_Candidates

- (TIKeyboardInputManager_ja_Candidates)initWithConfig:(id)config keyboardState:(id)state wordSearch:(id)search
{
  searchCopy = search;
  v15.receiver = self;
  v15.super_class = TIKeyboardInputManager_ja_Candidates;
  v10 = [(TIKeyboardInputManagerMecabra *)&v15 initWithConfig:config keyboardState:state];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_wordSearch, search);
    v12 = objc_alloc_init(TICandidateSorter);
    candidateSorter = v11->_candidateSorter;
    v11->_candidateSorter = v12;

    [(TICandidateSorter *)v11->_candidateSorter setLiveConversionEnabled:1];
    v11->_hardwareKeyboardMode = 1;
  }

  return v11;
}

- (id)handleKeyboardInput:(id)input
{
  inputCopy = input;
  if (![inputCopy transliterationType])
  {
    string = [inputCopy string];
    _isSpace = [string _isSpace];

    if ((_isSpace & 1) == 0)
    {
      if ([inputCopy isBackspace])
      {
        [(TIKeyboardInputManagerMecabra *)self cancelComposition];
      }

      else
      {
        [(TIKeyboardInputManagerMecabra *)self completeComposition];
      }
    }
  }

  return 0;
}

- (void)_notifyUpdateCandidates:(id)candidates forOperation:(id)operation
{
  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:candidates, operation];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __77__TIKeyboardInputManager_ja_Candidates__notifyUpdateCandidates_forOperation___block_invoke;
  v7[3] = &unk_29F379238;
  v7[4] = self;
  v5 = MEMORY[0x29EDA3C60](v7);
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  [(TIKeyboardInputManagerMecabra *)self addProactiveTriggers:wordSearchCandidateResultSet withCompletionHandler:v5];
}

- (id)transliterationCandidates
{
  if ([(TIKeyboardInputManager_ja_Candidates *)self hardwareKeyboardMode])
  {
    v3 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:5];
    for (i = 0; i != 5; ++i)
    {
      v5 = kTransliterationCandidatesTypes[i];
      inputString = [(TIKeyboardInputManager_ja_Candidates *)self inputString];
      v7 = TIJapaneseTransliterate(inputString, v5);

      autoCommitString = [(TIKeyboardInputManager_ja_Candidates *)self autoCommitString];
      v9 = [autoCommitString stringByAppendingString:v7];

      v10 = objc_alloc(MEMORY[0x29EDC70C0]);
      inputString2 = [(TIKeyboardInputManager_ja_Candidates *)self inputString];
      v12 = [v10 initWithCandidate:v9 forInput:inputString2 label:v7 transliterationType:v5];
      [v3 addObject:v12];
    }
  }

  else
  {
    v3 = MEMORY[0x29EDB8E90];
  }

  return v3;
}

- (int64_t)indexFromTransliterationType:(int64_t)type
{
  result = 0;
  while (kTransliterationCandidatesTypes[result] != type)
  {
    if (++result == 5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (id)candidateResultSetFromCandidates:(id)candidates proactiveTriggers:(id)triggers
{
  v34 = *MEMORY[0x29EDCA608];
  candidatesCopy = candidates;
  triggersCopy = triggers;
  v7 = MEMORY[0x29EDB8DE8];
  transliterationCandidates = [(TIKeyboardInputManager_ja_Candidates *)self transliterationCandidates];
  v9 = [v7 arrayWithArray:transliterationCandidates];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = candidatesCopy;
  v10 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      v13 = 0;
      v26 = v11;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          mecabraCandidatePointerValue = [v14 mecabraCandidatePointerValue];
          unsignedLongLongValue = [mecabraCandidatePointerValue unsignedLongLongValue];

          v17 = objc_alloc(MEMORY[0x29EDC70C8]);
          autoCommitString = self->_autoCommitString;
          candidate = [v14 candidate];
          v20 = [(NSString *)autoCommitString stringByAppendingString:candidate];
          v21 = [v17 initWithMecabraCandidate:unsignedLongLongValue candidate:v20];

          if ([(TIKeyboardInputManager_ja_Candidates *)self showsPartialCandidate])
          {
            [v21 setPartialCandidate:0];
          }

          [v9 addObject:v21];

          v11 = v26;
        }

        else
        {
          [v9 addObject:v14];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v11);
  }

  v28.receiver = self;
  v28.super_class = TIKeyboardInputManager_ja_Candidates;
  v22 = [(TIKeyboardInputManager_ja_Candidates *)&v28 candidateResultSetFromCandidates:v9 proactiveTriggers:triggersCopy];
  [TIKeyboardInputManager_ja addFullwidthAnnotationToResultSet:v22];

  v23 = *MEMORY[0x29EDCA608];

  return v22;
}

- (int64_t)transliterationCandidatesCount
{
  if ([(TIKeyboardInputManager_ja_Candidates *)self hardwareKeyboardMode])
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

+ (id)sortTitleFromSort:(unint64_t)sort
{
  if (sort > 4)
  {
    return 0;
  }

  else
  {
    return off_29F379258[sort];
  }
}

+ (unint64_t)sortFromSortTitle:(id)title
{
  titleCopy = title;
  if ([titleCopy isEqualToString:@"UI-Sort-Common"])
  {
    v4 = 0;
  }

  else if ([titleCopy isEqualToString:@"UI-Sort-Yomi"])
  {
    v4 = 2;
  }

  else if ([titleCopy isEqualToString:@"UI-Sort-Radical"])
  {
    v4 = 1;
  }

  else if ([titleCopy isEqualToString:@"UI-Sort-Facemark"])
  {
    v4 = 3;
  }

  else if ([titleCopy isEqualToString:@"UI-Sort-Emoji"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)sortingMethods
{
  wordSearchCandidateResultSet = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  candidates = [wordSearchCandidateResultSet candidates];

  if ([candidates count])
  {
    v6 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:5];
    for (i = 0; i != 5; ++i)
    {
      v8 = objc_opt_class();
      v9 = kCandidateSorts[i];
      v10 = [v8 sortTitleFromSort:v9];
      if (v10)
      {
        candidateSorter = [(TIKeyboardInputManager_ja_Candidates *)self candidateSorter];
        inputString = [(TIKeyboardInputManager_ja_Candidates *)self inputString];
        v13 = [candidateSorter hasCandidatesFromCandidates:candidates inputString:inputString sortedBy:v9 omittingEmoji:0];

        if (v13)
        {
          [v6 addObject:v10];
        }
      }

      else
      {
        [(TIKeyboardInputManager_ja_Candidates *)a2 sortingMethods];
      }
    }
  }

  else
  {
    v14 = MEMORY[0x29EDB8D80];
    v15 = [objc_opt_class() sortTitleFromSort:0];
    v6 = [v14 arrayWithObject:v15];
  }

  return v6;
}

- (id)groupedCandidatesFromCandidates:(id)candidates usingSortingMethod:(id)method
{
  candidatesCopy = candidates;
  methodCopy = method;
  if (methodCopy)
  {
    v9 = [objc_opt_class() sortFromSortTitle:methodCopy];
    candidateSorter = [(TIKeyboardInputManager_ja_Candidates *)self candidateSorter];
    inputString = [(TIKeyboardInputManager_ja_Candidates *)self inputString];
    v12 = [candidateSorter candidatesFromCandidates:candidatesCopy inputString:inputString sortedBy:v9 omittingEmoji:0];
  }

  else
  {
    [(TIKeyboardInputManager_ja_Candidates *)a2 groupedCandidatesFromCandidates:&v14 usingSortingMethod:?];
    v12 = 0;
    candidateSorter = v14;
  }

  return v12;
}

- (id)indexTitlesForGroupTitles:(id)titles sortingMethod:(id)method
{
  titlesCopy = titles;
  if ([method isEqualToString:@"UI-Sort-Yomi"])
  {
    v6 = &unk_2A25295E8;
  }

  else
  {
    v6 = titlesCopy;
  }

  return v6;
}

- (BOOL)_adjustPhraseBoundaryInForwardDirection:(BOOL)direction granularity:(int)granularity
{
  directionCopy = direction;
  v15 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[TIKeyboardInputManager_ja_Candidates _adjustPhraseBoundaryInForwardDirection:granularity:]";
    v11 = 1024;
    v12 = directionCopy;
    v13 = 1024;
    granularityCopy = granularity;
    _os_log_impl(&dword_29EA26000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s  adjust phrase: %d %d", &v9, 0x18u);
  }

  [(TIKeyboardInputManagerMecabra *)self cancelComposition];
  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state
{
  candidateCopy = candidate;
  inputString = [(TIKeyboardInputManager_ja_Candidates *)self inputString];
  v7 = [inputString length];
  input = [candidateCopy input];
  if (v7 <= [input length])
  {
    v9 = 0;
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass() ^ 1;
  }

  v10 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:candidateCopy];
  wordSearch = [(TIKeyboardInputManager_ja_Candidates *)self wordSearch];
  [wordSearch performAccept:v10 isPartial:v9 & 1];

  [(TIKeyboardInputManagerMecabra *)self completeComposition];
  return 0;
}

- (void)sortingMethods
{
  currentHandler = [MEMORY[0x29EDB9F28] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"TIKeyboardInputManager_ja_Candidates.m" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"sortTitle != nil"}];
}

- (uint64_t)groupedCandidatesFromCandidates:(void *)a3 usingSortingMethod:.cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x29EDB9F28] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"TIKeyboardInputManager_ja_Candidates.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"sortTitle != nil"}];
}

@end