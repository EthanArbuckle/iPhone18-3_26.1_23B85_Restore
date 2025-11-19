@interface UIFocusMovementPerformer
@end

@implementation UIFocusMovementPerformer

void __98___UIFocusMovementPerformer__findFocusCandidateBySearchingLinearFocusMovementSequencesForRequest___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 _linearFocusMovementSequences];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __98___UIFocusMovementPerformer__findFocusCandidateBySearchingLinearFocusMovementSequencesForRequest___block_invoke_2;
    v11[3] = &unk_1E7108C98;
    v14 = *(a1 + 64);
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    *&v9 = *(a1 + 48);
    *(&v9 + 1) = *(a1 + 56);
    *&v10 = v7;
    *(&v10 + 1) = v8;
    v12 = v10;
    v13 = v9;
    v15 = a3;
    [v6 enumerateObjectsUsingBlock:v11];
  }
}

void __98___UIFocusMovementPerformer__findFocusCandidateBySearchingLinearFocusMovementSequencesForRequest___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1 + 64) & 0x110;
  v23 = v6;
  v8 = [v6 items];
  v9 = v8;
  if (!v7)
  {
    v10 = [v8 reverseObjectEnumerator];
    v11 = [v10 allObjects];

    v9 = v11;
  }

  v12 = [v9 indexOfObjectIdenticalTo:*(a1 + 32)];
  v13 = v12;
  if ((*(a1 + 64) & 0x30) != 0)
  {
    if (v12 <= 0x7FFFFFFFFFFFFFFDLL)
    {
      i = v12 + 1;
      goto LABEL_8;
    }
  }

  else if ([v9 count])
  {
    for (i = 0; ; ++i)
    {
LABEL_8:
      if (i >= [v9 count])
      {
        if ((*(a1 + 64) & 0x30) == 0 || ![v23 isLooping])
        {
          goto LABEL_20;
        }

        i = 0;
      }

      if (i == v13)
      {
        goto LABEL_20;
      }

      v15 = [v9 objectAtIndexedSubscript:i];
      v16 = *(a1 + 40);
      v17 = [*(a1 + 48) searchInfo];
      LOBYTE(v16) = _UIFocusItemIsFocusableInFocusSystemWithSearchInfo(v15, v16, v17);

      if (v16)
      {
        break;
      }
    }

    if (v15)
    {
      v18 = [[UIFocusUpdateContext alloc] _initWithFocusMovementRequest:*(a1 + 48) nextFocusedItem:v15];
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      if ([*(*(*(a1 + 56) + 8) + 40) _isValidInFocusSystem:*(a1 + 40)])
      {
        *a4 = 1;
        **(a1 + 72) = 1;
      }

      else
      {
        v21 = *(*(a1 + 56) + 8);
        v22 = *(v21 + 40);
        *(v21 + 40) = 0;
      }
    }
  }

LABEL_20:
}

void __63___UIFocusMovementPerformer__isMovementValidForFocusSequences___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 _linearFocusMovementSequences];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63___UIFocusMovementPerformer__isMovementValidForFocusSequences___block_invoke_2;
    v10[3] = &unk_1E7108CE8;
    v7 = *(a1 + 32);
    v9 = *(a1 + 40);
    v8 = *(a1 + 48);
    v11 = v7;
    v12 = v9;
    v13 = v8;
    v14 = a3;
    [v6 enumerateObjectsUsingBlock:v10];
  }
}

void __63___UIFocusMovementPerformer__isMovementValidForFocusSequences___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 items];
  v7 = [*(a1 + 32) nextFocusedItem];
  v8 = [v6 indexOfObjectIdenticalTo:v7];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL && [v11 restrictsEnteringSequence])
  {
    if (!v8 || *(a1 + 48) != 16)
    {
      v9 = [v11 items];
      if (v8 == [v9 count] - 1)
      {

LABEL_9:
        *a4 = 1;
        **(a1 + 56) = 1;
        goto LABEL_10;
      }

      v10 = *(a1 + 48);

      if (v10 != 32)
      {
        goto LABEL_9;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_9;
  }

LABEL_10:
}

@end