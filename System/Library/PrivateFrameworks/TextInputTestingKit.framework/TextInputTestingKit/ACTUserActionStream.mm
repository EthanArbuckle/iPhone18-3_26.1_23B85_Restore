@interface ACTUserActionStream
@end

@implementation ACTUserActionStream

void __41___ACTUserActionStream_tryContinuousPath__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v18 = a2;
  if (![*(a1 + 32) length])
  {
LABEL_5:
    v8 = [*(a1 + 40) delegate];
    v9 = [v8 keyplane];

    v10 = [*(a1 + 40) anyKeyForString:v18 keyplane:v9 wantSecondaryString:objc_msgSend(*(a1 + 40) substituteUpperCaseForLowerCase:{"lastActionUseSecondaryString"), 1}];
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v12 = [*(a1 + 40) delegate];
      v11 = [v12 mapShiftedKeyToUnShiftedKeyExcludeCapitalization:v18];

      if (!v11)
      {
        *(*(*(a1 + 72) + 8) + 24) = 1;
        *a3 = 1;
LABEL_13:

        goto LABEL_14;
      }
    }

    [*(a1 + 48) addObject:v11];
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v13 = [v11 representedString];
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    v16 = [v11 representedString];
    v17 = [v16 caseInsensitiveCompare:*(*(*(a1 + 56) + 8) + 40)];

    if (v17)
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }

    goto LABEL_13;
  }

  v5 = 0;
  while (1)
  {
    v6 = [*(a1 + 32) substringWithRange:{v5, 1}];
    v7 = [v18 isEqualToString:v6];

    if (v7)
    {
      break;
    }

    if (++v5 >= [*(a1 + 32) length])
    {
      goto LABEL_5;
    }
  }

LABEL_14:
}

uint64_t __56___ACTUserActionStream_candidateToSelectFromCandidates___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) cursor];
  v5 = [v4 rangeOfInputSegmentsForCandidate:v3];

  v6 = [v3 input];
  if ([v6 length])
  {
    v7 = [*(a1 + 32) delegate];
    v8 = [v7 document];
    v9 = [v3 input];
    v10 = [v8 hasSuffix:v9];
  }

  else
  {
    v10 = 1;
  }

  return (v5 != 0x7FFFFFFFFFFFFFFFLL) & v10;
}

uint64_t __56___ACTUserActionStream_candidateToSelectFromCandidates___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 candidate];
  v6 = [v5 length];

  v7 = [v4 candidate];

  v8 = [v7 length];
  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

@end