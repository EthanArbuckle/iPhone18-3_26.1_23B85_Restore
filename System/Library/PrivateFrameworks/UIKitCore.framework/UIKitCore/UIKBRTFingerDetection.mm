@interface UIKBRTFingerDetection
@end

@implementation UIKBRTFingerDetection

void __54___UIKBRTFingerDetection_touchIdentifiersForFingerId___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  if ([a3 identity] == *(a1 + 40))
  {
    v7 = [MEMORY[0x1E695DFD8] setWithObject:v10];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

void __54___UIKBRTFingerDetection_touchIdentifiersForFingerId___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 identity] == *(a1 + 40))
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __51___UIKBRTFingerDetection_touchLocationForFingerId___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([v7 identity] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

BOOL __93___UIKBRTFingerDetection_fingerIdsRelatedToTouchWithIdentifier_sinceTimestamp_includeThumbs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 identity] == *(a1 + 40))
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v3, "identity")}];
    if ([v5 containsObject:v6])
    {
      [v3 lastSeenTimestamp];
      v4 = v7 > *(a1 + 48);
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t __102___UIKBRTFingerDetection__linkTouchesInArray_withIndexes_opposingHandIndexes_unassignedIndexes_thumb___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 location];
  if (a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = vabdd_f64(v6, *(*(*(a1 + 40) + 8) + 24)) + *(*(*(a1 + 32) + 8) + 24);
  }

  *(*(*(a1 + 40) + 8) + 24) = v6;
  return result;
}

void __99___UIKBRTFingerDetection__updateTouchInfoFromOutsideInWithArray_indexes_newIdentityDict_fakeIndex___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v13 = a2;
  if ([*(a1 + 32) count] <= a3)
  {
    *a4 = 1;
  }

  else
  {
    v7 = [*(a1 + 40) indexOfObject:v13];
    v8 = *(a1 + 48);
    v9 = MEMORY[0x1E696AD98];
    v10 = [*(a1 + 32) objectAtIndex:a3];
    v11 = [v9 numberWithInt:{objc_msgSend(v10, "intValue")}];
    v12 = [v8 objectForKey:v11];
    [v12 addIndex:v7];

    [*(a1 + 56) removeIndex:v7];
  }
}

uint64_t __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 location];
  v7 = v6;
  [v5 location];
  v9 = v7 - v8;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v10 = 1;
      goto LABEL_7;
    }

    [v5 location];
    v12 = v11;
    [v4 location];
    if (v12 - v13 >= 0.0)
    {
      v10 = v12 - v13 > 0.0;
      goto LABEL_7;
    }
  }

  v10 = -1;
LABEL_7:

  return v10;
}

double __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 location];
  v3 = *(*(a1 + 32) + 8);
  result = v4 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

double __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 location];
  v4 = *(*(a1 + 32) + 8);
  result = (v3 - *(a1 + 40)) * (v3 - *(a1 + 40)) + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

BOOL __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_5(uint64_t a1, void *a2)
{
  [a2 location];
  v4 = v3 - *(a1 + 32);
  return v4 > 0.0 && v4 * v4 > *(a1 + 40) * 3.0;
}

void __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_6(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 < a2 + a3)
  {
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = v3;
    v21 = v7;
    v22 = v8;
    v9 = a3;
    v10 = a2;
    do
    {
      v12 = [*(a1 + 32) objectAtIndex:{v10, v17, v18, v19, v20, v21, v22}];
      [v12 location];
      v14 = vabdd_f64(v13, *(a1 + 72));
      v15 = *(*(*(a1 + 40) + 8) + 24);
      v16 = *(*(a1 + 48) + 8);
      if (v14 >= v15)
      {
        if (v14 < *(v16 + 24))
        {
          *(v16 + 24) = v14;
          *(*(*(a1 + 56) + 8) + 24) = v10;
        }
      }

      else
      {
        *(v16 + 24) = v15;
        *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24);
        *(*(*(a1 + 64) + 8) + 24) = v10;
        *(*(*(a1 + 40) + 8) + 24) = v14;
      }

      ++v10;
      --v9;
    }

    while (v9);
  }
}

void __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 objectAtIndex:a3];
  [v5 setIdentity:{objc_msgSend(v6, "intValue")}];
}

void *__54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_9(uint64_t a1, void *a2, uint64_t a3)
{
  [a2 location];
  v6 = v5;
  v7 = *(a1 + 32);
  if (v7 && ([v7 location], v6 < v8))
  {
    v9 = 40;
  }

  else
  {
    result = *(a1 + 48);
    if (!result)
    {
      return result;
    }

    result = [result location];
    if (v6 <= v11)
    {
      return result;
    }

    v9 = 56;
  }

  v12 = *(a1 + v9);

  return [v12 addIndex:a3];
}

uint64_t __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_10(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 location];
  if (v6 >= *(a1 + 48))
  {
    if (v6 <= *(a1 + 56))
    {
      return result;
    }

    v7 = 40;
  }

  else
  {
    v7 = 32;
  }

  v8 = *(a1 + v7);

  return [v8 addIndex:a3];
}

void __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_11(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v7 = [v5 intValue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_12;
    v8[3] = &unk_1E7118AF0;
    v9 = *(a1 + 32);
    v10 = v7;
    [v6 enumerateRangesUsingBlock:v8];
  }
}

void __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_12(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 < a2 + a3)
  {
    v16 = v8;
    v17 = v7;
    v18 = v6;
    v19 = v5;
    v20 = v4;
    v21 = v3;
    v22 = v9;
    v23 = v10;
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *(a1 + 40);
      v15 = [*(a1 + 32) objectAtIndex:{v12, v16, v17, v18, v19, v20, v21, v22, v23}];
      [v15 setIdentity:v14];

      ++v12;
      --v11;
    }

    while (v11);
  }
}

BOOL __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_13(uint64_t a1, void *a2)
{
  [a2 location];
  v4 = v3;
  [*(a1 + 32) location];
  return v4 > v5;
}

BOOL __54___UIKBRTFingerDetection__updateTouchInfoForFingerID___block_invoke_14(uint64_t a1, void *a2)
{
  [a2 location];
  v4 = v3;
  [*(a1 + 32) location];
  return v4 < v5;
}

@end