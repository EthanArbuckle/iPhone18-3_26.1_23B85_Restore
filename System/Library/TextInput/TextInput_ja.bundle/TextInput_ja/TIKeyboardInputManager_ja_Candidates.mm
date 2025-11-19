@interface TIKeyboardInputManager_ja_Candidates
+ (id)sortTitleFromSort:(unint64_t)a3;
+ (unint64_t)sortFromSortTitle:(id)a3;
- (BOOL)_adjustPhraseBoundaryInForwardDirection:(BOOL)a3 granularity:(int)a4;
- (TIKeyboardInputManager_ja_Candidates)initWithConfig:(id)a3 keyboardState:(id)a4 wordSearch:(id)a5;
- (id)candidateResultSetFromCandidates:(id)a3 proactiveTriggers:(id)a4;
- (id)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4;
- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4;
- (id)handleKeyboardInput:(id)a3;
- (id)indexTitlesForGroupTitles:(id)a3 sortingMethod:(id)a4;
- (id)sortingMethods;
- (id)transliterationCandidates;
- (int64_t)indexFromTransliterationType:(int64_t)a3;
- (int64_t)transliterationCandidatesCount;
- (void)_notifyUpdateCandidates:(id)a3 forOperation:(id)a4;
- (void)sortingMethods;
@end

@implementation TIKeyboardInputManager_ja_Candidates

- (TIKeyboardInputManager_ja_Candidates)initWithConfig:(id)a3 keyboardState:(id)a4 wordSearch:(id)a5
{
  v9 = a5;
  v15.receiver = self;
  v15.super_class = TIKeyboardInputManager_ja_Candidates;
  v10 = [(TIKeyboardInputManagerMecabra *)&v15 initWithConfig:a3 keyboardState:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_wordSearch, a5);
    v12 = objc_alloc_init(TICandidateSorter);
    candidateSorter = v11->_candidateSorter;
    v11->_candidateSorter = v12;

    [(TICandidateSorter *)v11->_candidateSorter setLiveConversionEnabled:1];
    v11->_hardwareKeyboardMode = 1;
  }

  return v11;
}

- (id)handleKeyboardInput:(id)a3
{
  v4 = a3;
  if (![v4 transliterationType])
  {
    v5 = [v4 string];
    v6 = [v5 _isSpace];

    if ((v6 & 1) == 0)
    {
      if ([v4 isBackspace])
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

- (void)_notifyUpdateCandidates:(id)a3 forOperation:(id)a4
{
  [(TIKeyboardInputManagerMecabra *)self setWordSearchCandidateResultSet:a3, a4];
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = __77__TIKeyboardInputManager_ja_Candidates__notifyUpdateCandidates_forOperation___block_invoke;
  v7[3] = &unk_29F379238;
  v7[4] = self;
  v5 = MEMORY[0x29EDA3C60](v7);
  v6 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  [(TIKeyboardInputManagerMecabra *)self addProactiveTriggers:v6 withCompletionHandler:v5];
}

- (id)transliterationCandidates
{
  if ([(TIKeyboardInputManager_ja_Candidates *)self hardwareKeyboardMode])
  {
    v3 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:5];
    for (i = 0; i != 5; ++i)
    {
      v5 = kTransliterationCandidatesTypes[i];
      v6 = [(TIKeyboardInputManager_ja_Candidates *)self inputString];
      v7 = TIJapaneseTransliterate(v6, v5);

      v8 = [(TIKeyboardInputManager_ja_Candidates *)self autoCommitString];
      v9 = [v8 stringByAppendingString:v7];

      v10 = objc_alloc(MEMORY[0x29EDC70C0]);
      v11 = [(TIKeyboardInputManager_ja_Candidates *)self inputString];
      v12 = [v10 initWithCandidate:v9 forInput:v11 label:v7 transliterationType:v5];
      [v3 addObject:v12];
    }
  }

  else
  {
    v3 = MEMORY[0x29EDB8E90];
  }

  return v3;
}

- (int64_t)indexFromTransliterationType:(int64_t)a3
{
  result = 0;
  while (kTransliterationCandidatesTypes[result] != a3)
  {
    if (++result == 5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (id)candidateResultSetFromCandidates:(id)a3 proactiveTriggers:(id)a4
{
  v34 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v25 = a4;
  v7 = MEMORY[0x29EDB8DE8];
  v8 = [(TIKeyboardInputManager_ja_Candidates *)self transliterationCandidates];
  v9 = [v7 arrayWithArray:v8];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
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
          v15 = [v14 mecabraCandidatePointerValue];
          v16 = [v15 unsignedLongLongValue];

          v17 = objc_alloc(MEMORY[0x29EDC70C8]);
          autoCommitString = self->_autoCommitString;
          v19 = [v14 candidate];
          v20 = [(NSString *)autoCommitString stringByAppendingString:v19];
          v21 = [v17 initWithMecabraCandidate:v16 candidate:v20];

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
  v22 = [(TIKeyboardInputManager_ja_Candidates *)&v28 candidateResultSetFromCandidates:v9 proactiveTriggers:v25];
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

+ (id)sortTitleFromSort:(unint64_t)a3
{
  if (a3 > 4)
  {
    return 0;
  }

  else
  {
    return off_29F379258[a3];
  }
}

+ (unint64_t)sortFromSortTitle:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UI-Sort-Common"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"UI-Sort-Yomi"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"UI-Sort-Radical"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UI-Sort-Facemark"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"UI-Sort-Emoji"])
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
  v4 = [(TIKeyboardInputManagerMecabra *)self wordSearchCandidateResultSet];
  v5 = [v4 candidates];

  if ([v5 count])
  {
    v6 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:5];
    for (i = 0; i != 5; ++i)
    {
      v8 = objc_opt_class();
      v9 = kCandidateSorts[i];
      v10 = [v8 sortTitleFromSort:v9];
      if (v10)
      {
        v11 = [(TIKeyboardInputManager_ja_Candidates *)self candidateSorter];
        v12 = [(TIKeyboardInputManager_ja_Candidates *)self inputString];
        v13 = [v11 hasCandidatesFromCandidates:v5 inputString:v12 sortedBy:v9 omittingEmoji:0];

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

- (id)groupedCandidatesFromCandidates:(id)a3 usingSortingMethod:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = [objc_opt_class() sortFromSortTitle:v8];
    v10 = [(TIKeyboardInputManager_ja_Candidates *)self candidateSorter];
    v11 = [(TIKeyboardInputManager_ja_Candidates *)self inputString];
    v12 = [v10 candidatesFromCandidates:v7 inputString:v11 sortedBy:v9 omittingEmoji:0];
  }

  else
  {
    [(TIKeyboardInputManager_ja_Candidates *)a2 groupedCandidatesFromCandidates:&v14 usingSortingMethod:?];
    v12 = 0;
    v10 = v14;
  }

  return v12;
}

- (id)indexTitlesForGroupTitles:(id)a3 sortingMethod:(id)a4
{
  v5 = a3;
  if ([a4 isEqualToString:@"UI-Sort-Yomi"])
  {
    v6 = &unk_2A25295E8;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (BOOL)_adjustPhraseBoundaryInForwardDirection:(BOOL)a3 granularity:(int)a4
{
  v5 = a3;
  v15 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[TIKeyboardInputManager_ja_Candidates _adjustPhraseBoundaryInForwardDirection:granularity:]";
    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = a4;
    _os_log_impl(&dword_29EA26000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "%s  adjust phrase: %d %d", &v9, 0x18u);
  }

  [(TIKeyboardInputManagerMecabra *)self cancelComposition];
  v7 = *MEMORY[0x29EDCA608];
  return 0;
}

- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4
{
  v5 = a3;
  v6 = [(TIKeyboardInputManager_ja_Candidates *)self inputString];
  v7 = [v6 length];
  v8 = [v5 input];
  if (v7 <= [v8 length])
  {
    v9 = 0;
  }

  else
  {
    objc_opt_class();
    v9 = objc_opt_isKindOfClass() ^ 1;
  }

  v10 = [(TIKeyboardInputManagerMecabra *)self mecabraCandidateRefFromCandidate:v5];
  v11 = [(TIKeyboardInputManager_ja_Candidates *)self wordSearch];
  [v11 performAccept:v10 isPartial:v9 & 1];

  [(TIKeyboardInputManagerMecabra *)self completeComposition];
  return 0;
}

- (void)sortingMethods
{
  v4 = [MEMORY[0x29EDB9F28] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TIKeyboardInputManager_ja_Candidates.m" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"sortTitle != nil"}];
}

- (uint64_t)groupedCandidatesFromCandidates:(void *)a3 usingSortingMethod:.cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x29EDB9F28] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"TIKeyboardInputManager_ja_Candidates.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"sortTitle != nil"}];
}

@end