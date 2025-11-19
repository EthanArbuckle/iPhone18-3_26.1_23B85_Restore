@interface TIKeyboardInputManager_zh_Candidates
- (BOOL)hasIdeographicCandidates;
- (BOOL)makeCandidatesWithInputString:(id)a3 autoCommitString:(id)a4 predictionEnabled:(BOOL)a5 reanalysisMode:(BOOL)a6 geometoryModelData:(id)a7;
- (TIKeyboardInputManager_zh_Candidates)initWithConfig:(id)a3 keyboardState:(id)a4 wordSearch:(id)a5;
- (id)candidateResultSetFromCandidateResultSet:(id)a3 lastCharacterCandidateResultSet:(id)a4;
- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4;
- (id)handleKeyboardInput:(id)a3;
- (id)inputStringForLastCharacter:(id)a3;
- (id)punctuationCandiadtesFor:(id)a3 withAutoCommit:(id)a4;
- (void)_notifyLastCharacterCandidate:(id)a3 forOperation:(id)a4;
- (void)_notifyUpdateCandidates;
- (void)_notifyWholePhraseCandidate:(id)a3 forOperation:(id)a4;
- (void)mecabraCandidateRefFromCandidate:(id)a3;
- (void)performWordSearch:(id)a3 action:(SEL)a4 waitUntilFinished:(BOOL)a5;
@end

@implementation TIKeyboardInputManager_zh_Candidates

- (TIKeyboardInputManager_zh_Candidates)initWithConfig:(id)a3 keyboardState:(id)a4 wordSearch:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = TIKeyboardInputManager_zh_Candidates;
  v10 = [(TIKeyboardInputManagerChinesePhonetic *)&v13 initWithConfig:a3 keyboardState:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_kbws, a5);
  }

  return v11;
}

- (BOOL)makeCandidatesWithInputString:(id)a3 autoCommitString:(id)a4 predictionEnabled:(BOOL)a5 reanalysisMode:(BOOL)a6 geometoryModelData:(id)a7
{
  v10 = a3;
  v11 = a4;
  objc_storeStrong(&self->_inputString, a3);
  if (v11)
  {
    v12 = v11;
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
  [(TIKeyboardInputManager_zh_Candidates *)self performWordSearch:v10 action:sel__notifyWholePhraseCandidate_forOperation_ waitUntilFinished:1];
  if (v13)
  {
    [(TIKeyboardInputManager_zh_Candidates *)self performWordSearch:v13 action:sel__notifyLastCharacterCandidate_forOperation_ waitUntilFinished:0];
  }

  return 0;
}

- (id)inputStringForLastCharacter:(id)a3
{
  v3 = a3;
  if ([v3 length] < 2 || (objc_msgSend(MEMORY[0x29EDB9F50], "zhuyinToneCharacterSet"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "rangeOfCharacterFromSet:options:range:", v4, 4, 0, objc_msgSend(v3, "length") - 1), v4, v5 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 substringFromIndex:v5 + 1];
  }

  return v6;
}

- (void)_notifyWholePhraseCandidate:(id)a3 forOperation:(id)a4
{
  v5 = a3;
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3221225472;
  v13[2] = __81__TIKeyboardInputManager_zh_Candidates__notifyWholePhraseCandidate_forOperation___block_invoke;
  v13[3] = &unk_29F37D580;
  objc_copyWeak(&v15, &location);
  v14 = v5;
  v6 = v5;
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

- (void)_notifyLastCharacterCandidate:(id)a3 forOperation:(id)a4
{
  [(TIKeyboardInputManager_zh_Candidates *)self setLastCharacterCandidateResultSet:a3, a4];

  [(TIKeyboardInputManager_zh_Candidates *)self _notifyUpdateCandidates];
}

- (void)_notifyUpdateCandidates
{
  v3 = [(TIKeyboardInputManager_zh_Candidates *)self wholePhraseCandidateResultSet];
  if (v3)
  {
    v4 = v3;
    if ([(TIKeyboardInputManager_zh_Candidates *)self skipLastCharacterCandidates])
    {
    }

    else
    {
      v5 = [(TIKeyboardInputManager_zh_Candidates *)self lastCharacterCandidateResultSet];

      if (!v5)
      {
        return;
      }
    }

    v6 = [(TIKeyboardInputManager_zh_Candidates *)self wholePhraseCandidateResultSet];
    v7 = [(TIKeyboardInputManager_zh_Candidates *)self lastCharacterCandidateResultSet];
    v10 = [(TIKeyboardInputManager_zh_Candidates *)self candidateResultSetFromCandidateResultSet:v6 lastCharacterCandidateResultSet:v7];

    v8 = [v10 candidates];
    v9 = [v8 firstObject];
    [v10 setDefaultCandidate:v9];

    [(TIKeyboardInputManager_zh_Candidates *)self closeCandidateGenerationContextWithResults:v10];
  }
}

- (id)candidateResultSetFromCandidateResultSet:(id)a3 lastCharacterCandidateResultSet:(id)a4
{
  v69 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x29EDB8DE8] array];
  v57 = v8;
  v54 = v7;
  v55 = v6;
  if (v6)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v9 = [v6 candidates];
    v10 = [v9 countByEnumeratingWithState:&v63 objects:v68 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v63 + 1) + 8 * i);
        v15 = [v14 input];
        if ([v15 isEqualToString:self->_inputString])
        {
          v16 = [v14 label];
          v17 = [v16 isEqualToString:self->_inputString];

          if (v17)
          {
            continue;
          }

          v18 = [v14 mecabraCandidatePointerValue];
          v19 = [v18 unsignedLongLongValue];

          v20 = objc_alloc(MEMORY[0x29EDC70C8]);
          autoCommitString = self->_autoCommitString;
          v22 = [v14 candidate];
          v23 = [(NSString *)autoCommitString stringByAppendingString:v22];
          v15 = [v20 initWithMecabraCandidate:v19 candidate:v23];

          [v57 addObject:v15];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (!v11)
      {
LABEL_13:

        v24 = [(TIKeyboardInputManager_zh_Candidates *)self punctuationCandiadtesFor:self->_inputString withAutoCommit:self->_autoCommitString];
        v8 = v57;
        [v57 addObjectsFromArray:v24];

        v7 = v54;
        v6 = v55;
        break;
      }
    }
  }

  if (v7)
  {
    v25 = [(TIKeyboardInputManager_zh_Candidates *)self inputStringForLastCharacter:self->_inputString];
    v26 = [v6 candidates];
    v27 = [v26 firstObject];
    v28 = [v27 label];

    v8 = v57;
    v53 = v28;
    v52 = [v28 _stringByTrimmingLastCharacter];
    v56 = [(NSString *)self->_autoCommitString stringByAppendingString:?];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v29 = [v7 candidates];
    v30 = [v29 countByEnumeratingWithState:&v59 objects:v67 count:16];
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
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v59 + 1) + 8 * j);
          v35 = [v34 label];
          v36 = [v35 isEqualToString:v25];

          if ((v36 & 1) == 0)
          {
            v37 = [v34 mecabraCandidatePointerValue];
            v38 = [v37 unsignedLongLongValue];

            v39 = objc_alloc(MEMORY[0x29EDC70C8]);
            v40 = [v34 candidate];
            v41 = [v56 stringByAppendingString:v40];
            v42 = [v39 initWithMecabraCandidate:v38 candidate:v41];

            v8 = v57;
            [v57 addObject:v42];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v59 objects:v67 count:16];
      }

      while (v31);
    }

    v43 = [(TIKeyboardInputManager_zh_Candidates *)self punctuationCandiadtesFor:v25 withAutoCommit:v56];
    [v8 addObjectsFromArray:v43];

    v7 = v54;
    v6 = v55;
  }

  v44 = objc_alloc(MEMORY[0x29EDC7088]);
  v45 = [(TIKeyboardInputManager_zh_Candidates *)self syntheticCandidate];
  v46 = [(TIKeyboardInputManager_zh_Candidates *)self syntheticCandidate];
  v47 = [v44 initWithCandidate:v45 forInput:v46 rawInput:0 extensionCandidate:1];

  [v47 setTypingEngine:5];
  [v8 addObject:v47];
  v58[0] = MEMORY[0x29EDCA5F8];
  v58[1] = 3221225472;
  v58[2] = __113__TIKeyboardInputManager_zh_Candidates_candidateResultSetFromCandidateResultSet_lastCharacterCandidateResultSet___block_invoke;
  v58[3] = &unk_29F37D5D0;
  v58[4] = self;
  v48 = [v8 indexOfObjectPassingTest:v58];
  if (v48 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v49 = [(TIKeyboardInputManager_zh_Candidates *)self candidateResultSetFromCandidates:v8];
  }

  else
  {
    [v8 exchangeObjectAtIndex:0 withObjectAtIndex:v48];
    v49 = [(TIKeyboardInputManager_zh_Candidates *)self candidateResultSetFromCandidates:v8];
    [v49 setInitialSelectedIndex:0];
  }

  v50 = *MEMORY[0x29EDCA608];

  return v49;
}

- (id)handleKeyboardInput:(id)a3
{
  if ([a3 isBackspace])
  {
    [(TIKeyboardInputManagerMecabra *)self cancelComposition];
  }

  return 0;
}

- (id)handleAcceptedCandidate:(id)a3 keyboardState:(id)a4
{
  v5 = a3;
  v6 = [(TIKeyboardInputManager_zh_Candidates *)self inputString];
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

  v10 = [(TIKeyboardInputManager_zh_Candidates *)self mecabraCandidateRefFromCandidate:v5];
  v11 = [(TIKeyboardInputManagerChinese *)self wordSearch];
  [v11 performAccept:v10 isPartial:v9 & 1];

  [(TIKeyboardInputManagerMecabra *)self completeComposition];
  return 0;
}

- (void)performWordSearch:(id)a3 action:(SEL)a4 waitUntilFinished:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x29EDC7148];
  v9 = a3;
  v10 = [v8 alloc];
  LOBYTE(v14) = 1;
  BYTE2(v13) = 0;
  LOWORD(v13) = 1;
  v15 = [v10 initWithWordSearch:self->_kbws inputString:v9 keyboardInput:0 segmentBreakIndex:0x7FFFFFFFFFFFFFFFLL disambiguationCandidates:0 unambiguousSyllableCount:0 selectedDisambiguationCandidateIndex:0x7FFFFFFFFFFFFFFFLL regenerateDisambiguationCandidates:v13 predictionEnabled:self reanalysisMode:a4 target:MEMORY[0x29EDB8E90] action:v14 geometryModelData:0 hardwareKeyboardMode:? logger:?];

  v11 = [v15 results];

  if (v11)
  {
    v12 = [v15 results];
    [self a4];
  }

  else
  {
    [(TIWordSearch *)self->_kbws performOperationAsync:v15];
    if (v5)
    {
      [v15 waitUntilFinished];
    }
  }
}

- (id)punctuationCandiadtesFor:(id)a3 withAutoCommit:(id)a4
{
  v31 = *MEMORY[0x29EDCA608];
  v5 = a3;
  v25 = a4;
  v6 = +[TIZhuyinPunctuationManager shareZhuyinPunctuationManager];
  v7 = v5;
  v8 = [v6 candidatesFor:v5];

  v9 = [MEMORY[0x29EDB8DE8] array];
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
        v16 = [v14 candidate];
        v17 = [v25 stringByAppendingString:v16];
        v18 = [v14 label];
        v19 = [v15 initWithCandidate:v17 forInput:v7 label:v18];

        v20 = [v14 alternativeText];
        [v19 setAlternativeText:v20];

        [v9 addObject:v19];
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  v21 = [v9 copy];
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
    v4 = [(TIKeyboardInputManager_zh_Candidates *)self wholePhraseCandidateResultSet];
    v5 = [v4 candidates];

    v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v23 + 1) + 8 * v9) candidate];
        v11 = [v10 _containsIdeographicCharacters];

        if (v11)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
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
      v12 = [(TIKeyboardInputManager_zh_Candidates *)self lastCharacterCandidateResultSet];
      v5 = [v12 candidates];

      v3 = [v5 countByEnumeratingWithState:&v19 objects:v28 count:16];
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
          objc_enumerationMutation(v5);
        }

        v15 = [*(*(&v19 + 1) + 8 * v14) candidate];
        v16 = [v15 _containsIdeographicCharacters];

        if (v16)
        {
          break;
        }

        if (v3 == ++v14)
        {
          v3 = [v5 countByEnumeratingWithState:&v19 objects:v28 count:16];
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

- (void)mecabraCandidateRefFromCandidate:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TIKeyboardInputManager_zh_Candidates;
  v5 = [(TIKeyboardInputManagerMecabra *)&v13 mecabraCandidateRefFromCandidate:v4];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && !v5)
  {
    v6 = [(TIKeyboardInputManager_zh_Candidates *)self wholePhraseCandidateResultSet];
    v7 = [v6 candidateRefsDictionary];
    v8 = [v4 mecabraCandidatePointerValue];
    v5 = [v7 objectForKey:v8];

    if (!v5)
    {
      v9 = [(TIKeyboardInputManager_zh_Candidates *)self lastCharacterCandidateResultSet];
      v10 = [v9 candidateRefsDictionary];
      v11 = [v4 mecabraCandidatePointerValue];
      v5 = [v10 objectForKey:v11];
    }
  }

  return v5;
}

@end