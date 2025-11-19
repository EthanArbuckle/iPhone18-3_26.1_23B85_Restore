@interface TIKeyboardInputManager
@end

@implementation TIKeyboardInputManager

uint64_t __89__TIKeyboardInputManager_zh_Toneless_groupedCandidatesFromCandidates_usingSortingMethod___block_invoke(uint64_t a1, void *a2)
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
    v6 = &stru_2A252F9A8;
  }

  v7 = [v3 isEqualToString:v6];

  return v7 ^ 1u;
}

uint64_t __96__TIKeyboardInputManager_zh_RetroCorrection_groupedCandidatesFromCandidates_usingSortingMethod___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 candidate];
  LODWORD(a1) = [v3 isEqualToString:*(a1 + 32)];

  return a1 ^ 1;
}

void __61__TIKeyboardInputManager_zh_SegmentPicker_setPhraseBoundary___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 surface];
  *(*(a1[5] + 8) + 24) += [v7 length];

  if (a1[6] <= *(*(a1[5] + 8) + 24))
  {
    *(a1[4] + 848) = a3;
    *a4 = 1;
  }
}

void __94__TIKeyboardInputManager_zh_SegmentPicker_openCandidateGenerationContextWithCandidateHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) keyboardState];
  v4 = [v3 inputForMarkedText];

  if (v4)
  {
    [*(a1 + 32) updateMarkedText];
    v5 = [*(a1 + 32) markedText];
    [v6 setUncommittedText:v5];
  }

  [*(a1 + 40) pushCandidateResultSet:v6];
}

void __81__TIKeyboardInputManager_zh_Candidates__notifyWholePhraseCandidate_forOperation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setWholePhraseCandidateResultSet:v2];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 _notifyUpdateCandidates];
}

void __81__TIKeyboardInputManager_zh_Candidates__notifyWholePhraseCandidate_forOperation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained addProactiveTriggers:v3 withCompletionHandler:*(a1 + 32)];
}

uint64_t __113__TIKeyboardInputManager_zh_Candidates_candidateResultSetFromCandidateResultSet_lastCharacterCandidateResultSet___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 autoSelectCandidates];
  v5 = [v3 label];

  v6 = [v4 containsObject:v5];
  return v6;
}

@end