@interface TIKeyboardInputManager_zh_Candidates
- (BOOL)hasIdeographicCandidates;
- (BOOL)makeCandidatesWithInputString:(id)string autoCommitString:(id)commitString predictionEnabled:(BOOL)enabled reanalysisMode:(BOOL)mode geometoryModelData:(id)data;
- (TIKeyboardInputManager_zh_Candidates)initWithConfig:(id)config keyboardState:(id)state wordSearch:(id)search;
- (id)candidateResultSetFromCandidateResultSet:(id)set lastCharacterCandidateResultSet:(id)resultSet;
- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state;
- (id)handleKeyboardInput:(id)input;
- (id)inputStringForLastCharacter:(id)character;
- (id)punctuationCandiadtesFor:(id)for withAutoCommit:(id)commit;
- (void)_notifyLastCharacterCandidate:(id)candidate forOperation:(id)operation;
- (void)_notifyUpdateCandidates;
- (void)_notifyWholePhraseCandidate:(id)candidate forOperation:(id)operation;
- (void)mecabraCandidateRefFromCandidate:(id)candidate;
- (void)performWordSearch:(id)search action:(SEL)action waitUntilFinished:(BOOL)finished;
@end

@implementation TIKeyboardInputManager_zh_Candidates

- (TIKeyboardInputManager_zh_Candidates)initWithConfig:(id)config keyboardState:(id)state wordSearch:(id)search
{
  searchCopy = search;
  v13.receiver = self;
  v13.super_class = TIKeyboardInputManager_zh_Candidates;
  v10 = [(TIKeyboardInputManagerChinesePhonetic *)&v13 initWithConfig:config keyboardState:state];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_kbws, search);
  }

  return v11;
}

- (BOOL)makeCandidatesWithInputString:(id)string autoCommitString:(id)commitString predictionEnabled:(BOOL)enabled reanalysisMode:(BOOL)mode geometoryModelData:(id)data
{
  stringCopy = string;
  commitStringCopy = commitString;
  objc_storeStrong(&self->_inputString, string);
  if (commitStringCopy)
  {
    v12 = commitStringCopy;
  }

  else
  {
    v12 = &stru_2A252F9A8;
  }

  objc_storeStrong(&self->_autoCommitString, v12);
  v13 = [(TIKeyboardInputManager_zh_Candidates *)self inputStringForLastCharacter:self->_inputString];
  [(TIKeyboardInputManager_zh_Candidates *)self setWholePhraseCandidateResultSet:0];
  [(TIKeyboardInputManager_zh_Candidates *)self setLastCharacterCandidateResultSet:0];
  [(TIKeyboardInputManager_zh_Candidates *)self setSkipLastCharacterCandidates:v13 == 0];
  [(TIKeyboardInputManager_zh_Candidates *)self performWordSearch:stringCopy action:sel__notifyWholePhraseCandidate_forOperation_ waitUntilFinished:1];
  if (v13)
  {
    [(TIKeyboardInputManager_zh_Candidates *)self performWordSearch:v13 action:sel__notifyLastCharacterCandidate_forOperation_ waitUntilFinished:0];
  }

  return 0;
}

- (id)inputStringForLastCharacter:(id)character
{
  characterCopy = character;
  if ([characterCopy length] < 2 || (objc_msgSend(MEMORY[0x29EDB9F50], "zhuyinToneCharacterSet"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(characterCopy, "rangeOfCharacterFromSet:options:range:", v4, 4, 0, objc_msgSend(characterCopy, "length") - 1), v4, v5 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = 0;
  }

  else
  {
    v6 = [characterCopy substringFromIndex:v5 + 1];
  }

  return v6;
}

- (void)_notifyWholePhraseCandidate:(id)candidate forOperation:(id)operation
{
  candidateCopy = candidate;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __81__TIKeyboardInputManager_zh_Candidates__notifyWholePhraseCandidate_forOperation___block_invoke;
  v13[3] = &unk_29F37D580;
  objc_copyWeak(&v15, &location);
  v14 = candidateCopy;
  v6 = candidateCopy;
  v7 = MEMORY[0x29EDA6130](v13);
  objc_initWeak(&from, self);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 3221225472;
  v9[2] = __81__TIKeyboardInputManager_zh_Candidates__notifyWholePhraseCandidate_forOperation___block_invoke_2;
  v9[3] = &unk_29F37D5A8;
  objc_copyWeak(&v11, &from);
  v10 = v7;
  v8 = v7;
  [(TIKeyboardInputManagerMecabra *)self addStickers:v6 withCompletionHandler:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&from);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

- (void)_notifyLastCharacterCandidate:(id)candidate forOperation:(id)operation
{
  [(TIKeyboardInputManager_zh_Candidates *)self setLastCharacterCandidateResultSet:candidate, operation];

  [(TIKeyboardInputManager_zh_Candidates *)self _notifyUpdateCandidates];
}

- (void)_notifyUpdateCandidates
{
  wholePhraseCandidateResultSet = [(TIKeyboardInputManager_zh_Candidates *)self wholePhraseCandidateResultSet];
  if (wholePhraseCandidateResultSet)
  {
    v4 = wholePhraseCandidateResultSet;
    if ([(TIKeyboardInputManager_zh_Candidates *)self skipLastCharacterCandidates])
    {
    }

    else
    {
      lastCharacterCandidateResultSet = [(TIKeyboardInputManager_zh_Candidates *)self lastCharacterCandidateResultSet];

      if (!lastCharacterCandidateResultSet)
      {
        return;
      }
    }

    wholePhraseCandidateResultSet2 = [(TIKeyboardInputManager_zh_Candidates *)self wholePhraseCandidateResultSet];
    lastCharacterCandidateResultSet2 = [(TIKeyboardInputManager_zh_Candidates *)self lastCharacterCandidateResultSet];
    v10 = [(TIKeyboardInputManager_zh_Candidates *)self candidateResultSetFromCandidateResultSet:wholePhraseCandidateResultSet2 lastCharacterCandidateResultSet:lastCharacterCandidateResultSet2];

    candidates = [v10 candidates];
    firstObject = [candidates firstObject];
    [v10 setDefaultCandidate:firstObject];

    [(TIKeyboardInputManager_zh_Candidates *)self closeCandidateGenerationContextWithResults:v10];
  }
}

- (id)candidateResultSetFromCandidateResultSet:(id)set lastCharacterCandidateResultSet:(id)resultSet
{
  v69 = *MEMORY[0x29EDCA608];
  setCopy = set;
  resultSetCopy = resultSet;
  array = [MEMORY[0x29EDB8DE8] array];
  v57 = array;
  v54 = resultSetCopy;
  v55 = setCopy;
  if (setCopy)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    candidates = [setCopy candidates];
    v10 = [candidates countByEnumeratingWithState:&v63 objects:v68 count:16];
    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = v10;
    v12 = *v64;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v64 != v12)
        {
          objc_enumerationMutation(candidates);
        }

        v14 = *(*(&v63 + 1) + 8 * i);
        input = [v14 input];
        if ([input isEqualToString:self->_inputString])
        {
          label = [v14 label];
          v17 = [label isEqualToString:self->_inputString];

          if (v17)
          {
            continue;
          }

          mecabraCandidatePointerValue = [v14 mecabraCandidatePointerValue];
          unsignedLongLongValue = [mecabraCandidatePointerValue unsignedLongLongValue];

          v20 = objc_alloc(MEMORY[0x29EDC70C8]);
          autoCommitString = self->_autoCommitString;
          candidate = [v14 candidate];
          v23 = [(NSString *)autoCommitString stringByAppendingString:candidate];
          input = [v20 initWithMecabraCandidate:unsignedLongLongValue candidate:v23];

          [v57 addObject:input];
        }
      }

      v11 = [candidates countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (!v11)
      {
LABEL_13:

        v24 = [(TIKeyboardInputManager_zh_Candidates *)self punctuationCandiadtesFor:self->_inputString withAutoCommit:self->_autoCommitString];
        array = v57;
        [v57 addObjectsFromArray:v24];

        resultSetCopy = v54;
        setCopy = v55;
        break;
      }
    }
  }

  if (resultSetCopy)
  {
    v25 = [(TIKeyboardInputManager_zh_Candidates *)self inputStringForLastCharacter:self->_inputString];
    candidates2 = [setCopy candidates];
    firstObject = [candidates2 firstObject];
    label2 = [firstObject label];

    array = v57;
    v53 = label2;
    _stringByTrimmingLastCharacter = [label2 _stringByTrimmingLastCharacter];
    v56 = [(NSString *)self->_autoCommitString stringByAppendingString:?];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    candidates3 = [resultSetCopy candidates];
    v30 = [candidates3 countByEnumeratingWithState:&v59 objects:v67 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v60;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v60 != v32)
          {
            objc_enumerationMutation(candidates3);
          }

          v34 = *(*(&v59 + 1) + 8 * j);
          label3 = [v34 label];
          v36 = [label3 isEqualToString:v25];

          if ((v36 & 1) == 0)
          {
            mecabraCandidatePointerValue2 = [v34 mecabraCandidatePointerValue];
            unsignedLongLongValue2 = [mecabraCandidatePointerValue2 unsignedLongLongValue];

            v39 = objc_alloc(MEMORY[0x29EDC70C8]);
            candidate2 = [v34 candidate];
            v41 = [v56 stringByAppendingString:candidate2];
            v42 = [v39 initWithMecabraCandidate:unsignedLongLongValue2 candidate:v41];

            array = v57;
            [v57 addObject:v42];
          }
        }

        v31 = [candidates3 countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v31);
    }

    v43 = [(TIKeyboardInputManager_zh_Candidates *)self punctuationCandiadtesFor:v25 withAutoCommit:v56];
    [array addObjectsFromArray:v43];

    resultSetCopy = v54;
    setCopy = v55;
  }

  v44 = objc_alloc(MEMORY[0x29EDC7088]);
  syntheticCandidate = [(TIKeyboardInputManager_zh_Candidates *)self syntheticCandidate];
  syntheticCandidate2 = [(TIKeyboardInputManager_zh_Candidates *)self syntheticCandidate];
  v47 = [v44 initWithCandidate:syntheticCandidate forInput:syntheticCandidate2 rawInput:0 extensionCandidate:1];

  [v47 setTypingEngine:5];
  [array addObject:v47];
  v58[0] = MEMORY[0x29EDCA5F8];
  v58[1] = 3221225472;
  v58[2] = __113__TIKeyboardInputManager_zh_Candidates_candidateResultSetFromCandidateResultSet_lastCharacterCandidateResultSet___block_invoke;
  v58[3] = &unk_29F37D5D0;
  v58[4] = self;
  v48 = [array indexOfObjectPassingTest:v58];
  if (v48 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v49 = [(TIKeyboardInputManager_zh_Candidates *)self candidateResultSetFromCandidates:array];
  }

  else
  {
    [array exchangeObjectAtIndex:0 withObjectAtIndex:v48];
    v49 = [(TIKeyboardInputManager_zh_Candidates *)self candidateResultSetFromCandidates:array];
    [v49 setInitialSelectedIndex:0];
  }

  v50 = *MEMORY[0x29EDCA608];

  return v49;
}

- (id)handleKeyboardInput:(id)input
{
  if ([input isBackspace])
  {
    [(TIKeyboardInputManagerMecabra *)self cancelComposition];
  }

  return 0;
}

- (id)handleAcceptedCandidate:(id)candidate keyboardState:(id)state
{
  candidateCopy = candidate;
  inputString = [(TIKeyboardInputManager_zh_Candidates *)self inputString];
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

  v10 = [(TIKeyboardInputManager_zh_Candidates *)self mecabraCandidateRefFromCandidate:candidateCopy];
  wordSearch = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [wordSearch performAccept:v10 isPartial:v9 & 1];

  [(TIKeyboardInputManagerMecabra *)self completeComposition];
  return 0;
}

- (void)performWordSearch:(id)search action:(SEL)action waitUntilFinished:(BOOL)finished
{
  finishedCopy = finished;
  v8 = MEMORY[0x29EDC7148];
  searchCopy = search;
  v10 = [v8 alloc];
  LOBYTE(v14) = 1;
  BYTE2(v13) = 0;
  LOWORD(v13) = 1;
  v15 = [v10 initWithWordSearch:self->_kbws inputString:searchCopy keyboardInput:0 segmentBreakIndex:0x7FFFFFFFFFFFFFFFLL disambiguationCandidates:0 unambiguousSyllableCount:0 selectedDisambiguationCandidateIndex:0x7FFFFFFFFFFFFFFFLL regenerateDisambiguationCandidates:v13 predictionEnabled:self reanalysisMode:action target:MEMORY[0x29EDB8E90] action:v14 geometryModelData:0 hardwareKeyboardMode:? logger:?];

  results = [v15 results];

  if (results)
  {
    results2 = [v15 results];
    [self action];
  }

  else
  {
    [(TIWordSearch *)self->_kbws performOperationAsync:v15];
    if (finishedCopy)
    {
      [v15 waitUntilFinished];
    }
  }
}

- (id)punctuationCandiadtesFor:(id)for withAutoCommit:(id)commit
{
  v31 = *MEMORY[0x29EDCA608];
  forCopy = for;
  commitCopy = commit;
  v6 = +[TIZhuyinPunctuationManager shareZhuyinPunctuationManager];
  v7 = forCopy;
  v8 = [v6 candidatesFor:forCopy];

  array = [MEMORY[0x29EDB8DE8] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = objc_alloc(MEMORY[0x29EDC70C0]);
        candidate = [v14 candidate];
        v17 = [commitCopy stringByAppendingString:candidate];
        label = [v14 label];
        v19 = [v15 initWithCandidate:v17 forInput:v7 label:label];

        alternativeText = [v14 alternativeText];
        [v19 setAlternativeText:alternativeText];

        [array addObject:v19];
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v21 = [array copy];
  v22 = *MEMORY[0x29EDCA608];

  return v21;
}

- (BOOL)hasIdeographicCandidates
{
  v30 = *MEMORY[0x29EDCA608];
  v27.receiver = self;
  v27.super_class = TIKeyboardInputManager_zh_Candidates;
  if (![(TIKeyboardInputManagerChinese *)&v27 hasIdeographicCandidates])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    wholePhraseCandidateResultSet = [(TIKeyboardInputManager_zh_Candidates *)self wholePhraseCandidateResultSet];
    candidates = [wholePhraseCandidateResultSet candidates];

    v6 = [candidates countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
LABEL_5:
      v9 = 0;
      while (1)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(candidates);
        }

        candidate = [*(*(&v23 + 1) + 8 * v9) candidate];
        _containsIdeographicCharacters = [candidate _containsIdeographicCharacters];

        if (_containsIdeographicCharacters)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [candidates countByEnumeratingWithState:&v23 objects:v29 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      lastCharacterCandidateResultSet = [(TIKeyboardInputManager_zh_Candidates *)self lastCharacterCandidateResultSet];
      candidates = [lastCharacterCandidateResultSet candidates];

      v3 = [candidates countByEnumeratingWithState:&v19 objects:v28 count:16];
      if (!v3)
      {
LABEL_21:

        goto LABEL_22;
      }

      v13 = *v20;
LABEL_13:
      v14 = 0;
      while (1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(candidates);
        }

        candidate2 = [*(*(&v19 + 1) + 8 * v14) candidate];
        _containsIdeographicCharacters2 = [candidate2 _containsIdeographicCharacters];

        if (_containsIdeographicCharacters2)
        {
          break;
        }

        if (v3 == ++v14)
        {
          v3 = [candidates countByEnumeratingWithState:&v19 objects:v28 count:16];
          if (v3)
          {
            goto LABEL_13;
          }

          goto LABEL_21;
        }
      }
    }

    LOBYTE(v3) = 1;
    goto LABEL_21;
  }

  LOBYTE(v3) = 1;
LABEL_22:
  v17 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)mecabraCandidateRefFromCandidate:(id)candidate
{
  candidateCopy = candidate;
  v13.receiver = self;
  v13.super_class = TIKeyboardInputManager_zh_Candidates;
  v5 = [(TIKeyboardInputManagerMecabra *)&v13 mecabraCandidateRefFromCandidate:candidateCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !v5)
  {
    wholePhraseCandidateResultSet = [(TIKeyboardInputManager_zh_Candidates *)self wholePhraseCandidateResultSet];
    candidateRefsDictionary = [wholePhraseCandidateResultSet candidateRefsDictionary];
    mecabraCandidatePointerValue = [candidateCopy mecabraCandidatePointerValue];
    v5 = [candidateRefsDictionary objectForKey:mecabraCandidatePointerValue];

    if (!v5)
    {
      lastCharacterCandidateResultSet = [(TIKeyboardInputManager_zh_Candidates *)self lastCharacterCandidateResultSet];
      candidateRefsDictionary2 = [lastCharacterCandidateResultSet candidateRefsDictionary];
      mecabraCandidatePointerValue2 = [candidateCopy mecabraCandidatePointerValue];
      v5 = [candidateRefsDictionary2 objectForKey:mecabraCandidatePointerValue2];
    }
  }

  return v5;
}

@end