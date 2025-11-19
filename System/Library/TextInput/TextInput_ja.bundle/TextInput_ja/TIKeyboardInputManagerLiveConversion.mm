@interface TIKeyboardInputManagerLiveConversion
@end

@implementation TIKeyboardInputManagerLiveConversion

void __77__TIKeyboardInputManagerLiveConversion_ja_validCharacterSetForAutocorrection__block_invoke()
{
  v2 = [MEMORY[0x29EDBA040] characterSetWithRange:{97, 26}];
  [v2 addCharactersInString:@"ー"];
  v0 = [v2 copy];
  v1 = [TIKeyboardInputManagerLiveConversion_ja validCharacterSetForAutocorrection]::__validCharSet;
  [TIKeyboardInputManagerLiveConversion_ja validCharacterSetForAutocorrection]::__validCharSet = v0;
}

void __94__TIKeyboardInputManagerLiveConversion_ja_openCandidateGenerationContextWithCandidateHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setTimer:0];
  v2 = [*(a1 + 32) candidateHandlerForOpenRequest];
  [*(a1 + 32) setCandidateHandlerForOpenRequest:0];
  v3 = [*(a1 + 32) composingKeyboardInputManager];

  if (!v3)
  {
    v4 = *(a1 + 32);
    v5 = [TIKeyboardInputManager_ja_Candidates alloc];
    v6 = [*(a1 + 32) config];
    v7 = [*(a1 + 32) keyboardState];
    v8 = [*(a1 + 32) wordSearch];
    v9 = [(TIKeyboardInputManager_ja_Candidates *)v5 initWithConfig:v6 keyboardState:v7 wordSearch:v8];
    [v4 composeTextWith:v9];
  }

  v10 = [*(a1 + 32) candidateRange];
  v12 = v11;
  v13 = [*(a1 + 32) composingKeyboardInputManager];
  [v13 setCandidateRange:{v10, v12}];

  v14 = [*(a1 + 32) composingKeyboardInputManager];
  v15 = objc_alloc(MEMORY[0x29EDC7200]);
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 3221225472;
  v20 = __94__TIKeyboardInputManagerLiveConversion_ja_openCandidateGenerationContextWithCandidateHandler___block_invoke_2;
  v21 = &unk_29F3790B0;
  v22 = *(a1 + 32);
  v23 = v2;
  v16 = v2;
  v17 = [v15 initWithWrappedCandidateHandler:v16 resultSetHandlerBlock:&v18];
  [v14 openCandidateGenerationContextWithCandidateHandler:{v17, v18, v19, v20, v21, v22}];

  [*(a1 + 32) startPrediction];
}

void __94__TIKeyboardInputManagerLiveConversion_ja_openCandidateGenerationContextWithCandidateHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = a2;
  if ([*(a1 + 32) shouldShowPredictionCandidate:?])
  {
    [*(a1 + 32) addInlineCandidateIfNeeded:v13];
    v3 = [*(a1 + 32) keyboardState];
    v4 = [v3 inputForMarkedText];

    if (v4)
    {
      v5 = [*(a1 + 32) markedText];
      [v13 setUncommittedText:v5];
    }

    v6 = [*(a1 + 32) keyboardState];
    v7 = [v6 inputForMarkedText];

    if (v7)
    {
      v8 = [*(a1 + 32) markedText];
      [v13 setUncommittedText:v8];
    }

    if ([v13 initialSelectedIndex] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = MEMORY[0x29EDC7088];
      v10 = [*(a1 + 32) inputString];
      v11 = [*(a1 + 32) rawInputString];
      v12 = [v9 candidateWithCandidate:v10 forInput:v11];
      [v13 setDefaultCandidate:v12];
    }

    [*(a1 + 40) pushCandidateResultSet:v13];
  }
}

void __70__TIKeyboardInputManagerLiveConversion_ja_addInlineCandidateIfNeeded___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([v10 isPartialCandidate])
  {
    *a4 = 1;
    goto LABEL_9;
  }

  if (([v10 isTransliterationCandidate] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v10 candidate];
      v8 = [v7 isEqualToString:a1[4]];

      if (v8)
      {
        v9 = *(a1[5] + 8);
      }

      else
      {
        v9 = *(a1[6] + 8);
        if (*(v9 + 24) != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_9;
        }
      }

      *(v9 + 24) = a3;
    }
  }

LABEL_9:
}

@end