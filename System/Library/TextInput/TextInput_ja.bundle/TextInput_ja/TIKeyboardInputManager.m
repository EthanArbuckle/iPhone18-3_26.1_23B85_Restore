@interface TIKeyboardInputManager
@end

@implementation TIKeyboardInputManager

void __68__TIKeyboardInputManager_ja_Kana_validCharacterSetForAutocorrection__block_invoke()
{
  v2 = [MEMORY[0x29EDBA040] characterSetWithRange:{12353, 84}];
  [v2 addCharactersInString:@"、。？！"];
  v0 = [v2 copy];
  v1 = [TIKeyboardInputManager_ja_Kana validCharacterSetForAutocorrection]::__validCharSet;
  [TIKeyboardInputManager_ja_Kana validCharacterSetForAutocorrection]::__validCharSet = v0;
}

void __87__TIKeyboardInputManager_ja_Inline_openCandidateGenerationContextWithCandidateHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained removeInlineCandidate:v3];
  v4 = [WeakRetained markedText];
  [v3 setUncommittedText:v4];

  v5 = [WeakRetained inlineCandidate];
  [v3 setDefaultCandidate:v5];

  [*(a1 + 32) pushCandidateResultSet:v3];
}

uint64_t __58__TIKeyboardInputManager_ja_Inline_removeInlineCandidate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 candidate];
  v4 = [*(a1 + 32) candidate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_2A2525CC0;
  }

  v7 = [v3 isEqualToString:v6];

  return v7 ^ 1u;
}

void __52__TIKeyboardInputManager_ja_Romaji_deleteFromInput___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x29EDC71F8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [v5 initWithCharacters:v4 nearbyKeys:MEMORY[0x29EDB8E90]];

  [v2 composeNew:v6];
}

void __70__TIKeyboardInputManager_ja_Romaji_validCharacterSetForAutocorrection__block_invoke()
{
  v2 = [MEMORY[0x29EDBA040] characterSetWithRange:{97, 26}];
  [v2 addCharactersInString:{@"ー、。？！「」()-/:@$&[]{}#%^*+=_;|<>”’€£., ？！・\\""}];
  v0 = [v2 copy];
  v1 = [TIKeyboardInputManager_ja_Romaji validCharacterSetForAutocorrection]::__validCharSet;
  [TIKeyboardInputManager_ja_Romaji validCharacterSetForAutocorrection]::__validCharSet = v0;
}

void __94__TIKeyboardInputManager_ja_SegmentPicker_openCandidateGenerationContextWithCandidateHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) keyboardState];
  v4 = [v3 inputForMarkedText];

  if (v4)
  {
    v5 = [*(a1 + 32) liveConversionSegments];
    [v5 buildMarkedText];

    v6 = [*(a1 + 32) markedText];
    [v7 setUncommittedText:v6];
  }

  [*(a1 + 40) pushCandidateResultSet:v7];
}

void __77__TIKeyboardInputManager_ja_Candidates__notifyUpdateCandidates_forOperation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 wordSearchCandidateResultSet];
  v4 = [v2 candidateResultSetFromWordSearchCandidateResultSet:v3];

  v5 = [v4 candidates];
  v6 = [v5 count];
  v7 = [*(a1 + 32) transliterationCandidatesCount];

  if (v6 > v7)
  {
    v8 = [v4 candidates];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(*(a1 + 32), "transliterationCandidatesCount")}];
    [v4 setDefaultCandidate:v9];
  }

  if ([*(a1 + 32) autoSelectTransliterateCandidate])
  {
    v10 = [*(a1 + 32) indexFromTransliterationType:{objc_msgSend(*(a1 + 32), "autoSelectTransliterateCandidate")}];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v10;
      [v4 setInitialSelectedIndex:v10];
      v12 = [*(a1 + 32) transliterationCandidates];
      v13 = [v12 objectAtIndexedSubscript:v11];
      [v4 setDefaultCandidate:v13];
    }
  }

  v14 = [*(a1 + 32) autoSelectCandidate];
  if (v14)
  {
    v15 = v14;
    v16 = [v4 initialSelectedIndex];

    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = MEMORY[0x29EDCA5F8];
      v25 = 3221225472;
      v26 = __77__TIKeyboardInputManager_ja_Candidates__notifyUpdateCandidates_forOperation___block_invoke_2;
      v27 = &unk_29F379210;
      v28 = *(a1 + 32);
      v17 = v4;
      v29 = v17;
      v18 = MEMORY[0x29EDA3C60](&v24);
      v19 = [v17 sortMethodGroups];
      v20 = [v19 objectForKeyedSubscript:@"UI-Sort-Common"];
      v21 = [v20 firstObject];

      if (v21)
      {
        v22 = [v21 candidates];
        [v22 enumerateObjectsUsingBlock:v18];
      }

      if ([v17 initialSelectedIndex] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v23 = [v17 candidates];
        [v23 enumerateObjectsUsingBlock:v18];
      }
    }
  }

  if ([*(a1 + 32) autoSelectFirstCandidate] && objc_msgSend(v4, "initialSelectedIndex") == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setInitialSelectedIndex:{objc_msgSend(*(a1 + 32), "transliterationCandidatesCount")}];
  }

  [*(a1 + 32) closeCandidateGenerationContextWithResults:v4];
}

void __77__TIKeyboardInputManager_ja_Candidates__notifyUpdateCandidates_forOperation___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 label];
  v8 = [*(a1 + 32) autoSelectCandidate];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    [*(a1 + 40) setInitialSelectedIndex:a3];
    [*(a1 + 40) setDefaultCandidate:v10];
    *a4 = 1;
  }
}

void __66__TIKeyboardInputManager_ja__notifyUpdateCandidates_forOperation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 wordSearchCandidateResultSet];
  v4 = [*(a1 + 32) rawInputString];
  [v2 updateProactiveCandidatesForCandidateResultSet:v3 withInput:v4];

  if ([*(a1 + 32) isTypologyEnabled])
  {
    [*(a1 + 32) logInputString];
  }

  [*(a1 + 32) setMarkedText];
  v5 = *(a1 + 32);
  v6 = [v5 wordSearchCandidateResultSet];
  v7 = [v5 candidateResultSetFromWordSearchCandidateResultSet:v6];

  [*(a1 + 32) closeCandidateGenerationContextWithResults:v7];
}

void __66__TIKeyboardInputManager_ja__notifyUpdateCandidates_forOperation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addProactiveTriggers:v3 withCompletionHandler:*(a1 + 32)];
}

void __91__TIKeyboardInputManager_ja_groupedCandidatesFromCandidates_usingSortingMethod_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) groupedCandidatesFromCandidates:*(a1 + 40) usingSortingMethod:*(a1 + 48) inputString:*(a1 + 56)];
  v3 = [MEMORY[0x29EDBA088] mainQueue];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __91__TIKeyboardInputManager_ja_groupedCandidatesFromCandidates_usingSortingMethod_completion___block_invoke_2;
  v6[3] = &unk_29F3792D8;
  v4 = *(a1 + 64);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [v3 addOperationWithBlock:v6];
}

uint64_t __73__TIKeyboardInputManager_ja_addRecentlyCommittedCandidatesForReanalysis___block_invoke(uint64_t a1)
{
  Surface = MecabraCandidateGetSurface();
  v3 = *(a1 + 32);

  return [Surface _containsSubstring:v3];
}

void __54__TIKeyboardInputManager_ja_mecabraLearningValidator___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      __54__TIKeyboardInputManager_ja_mecabraLearningValidator___block_invoke_cold_1(v5);
    }
  }

  else if (a2)
  {
    if (notificationQueue(void)::onceToken != -1)
    {
      __54__TIKeyboardInputManager_ja_mecabraLearningValidator___block_invoke_cold_2();
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    TIDispatchAsync();
  }

  else if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[TIKeyboardInputManager_ja mecabraLearningValidator:]_block_invoke";
    v11 = 2080;
    v12 = "[TIKeyboardInputManager_ja mecabraLearningValidator:]_block_invoke";
    _os_log_impl(&dword_29EA26000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "%s  [%s]Notifications are disabled.", buf, 0x16u);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void __54__TIKeyboardInputManager_ja_mecabraLearningValidator___block_invoke_189(uint64_t a1)
{
  v11 = objc_alloc_init(MEMORY[0x29EDBCCC0]);
  [v11 setTitle:@"Learning corruption detected"];
  [v11 setShouldIgnoreDoNotDisturb:1];
  [v11 setShouldIgnoreDowntime:1];
  [v11 setRelevanceScore:1.0];
  [v11 setInterruptionLevel:2];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x29EDC9700]];

  v4 = [*(a1 + 32) userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x29EDC9708]];

  v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"We learned %@ as %@. If it's wrong, please report us.", v5, v3];
  [v11 setBody:v6];

  v7 = MEMORY[0x29EDBCCD8];
  v8 = objc_opt_new();
  v9 = [v8 UUIDString];
  v10 = [v7 requestWithIdentifier:v9 content:v11 trigger:0];

  [*(a1 + 40) addNotificationRequest:v10 withCompletionHandler:&__block_literal_global_5];
}

void __54__TIKeyboardInputManager_ja_mecabraLearningValidator___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    __54__TIKeyboardInputManager_ja_mecabraLearningValidator___block_invoke_2_cold_1(v2);
  }
}

void __54__TIKeyboardInputManager_ja_mecabraLearningValidator___block_invoke_cold_1(void *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = [a1 localizedDescription];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_29EA26000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%s  [%s]Error requesting notification authorization: %@", v3, 0x20u);

  v2 = *MEMORY[0x29EDCA608];
}

void __54__TIKeyboardInputManager_ja_mecabraLearningValidator___block_invoke_2_cold_1(void *a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = [a1 localizedDescription];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_29EA26000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "%s  [%s]Notification posted with error: %@", v3, 0x20u);

  v2 = *MEMORY[0x29EDCA608];
}

@end