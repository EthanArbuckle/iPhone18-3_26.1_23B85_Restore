@interface NSOptimalLineBreaker
@end

@implementation NSOptimalLineBreaker

void __55___NSOptimalLineBreaker__shouldAvoidBreakingAfterWord___block_invoke()
{
  v29 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v1 = [&unk_1F01CC1D0 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v24;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v24 != v3)
        {
          objc_enumerationMutation(&unk_1F01CC1D0);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        v6 = MEMORY[0x1E695DFD8];
        v7 = [&unk_1F01CC1D0 objectForKeyedSubscript:v5];
        v8 = [v7 componentsSeparatedByString:@" "];
        v9 = [v6 setWithArray:v8];

        [v0 setObject:v9 forKeyedSubscript:v5];
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = qword_1ED4DF2A8;
              v16 = [*(*(&v19 + 1) + 8 * j) length];
              if (v15 <= v16)
              {
                v17 = v16;
              }

              else
              {
                v17 = v15;
              }

              qword_1ED4DF2A8 = v17;
            }

            v12 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v12);
        }
      }

      v2 = [&unk_1F01CC1D0 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v2);
  }

  v18 = qword_1ED4DF2A0;
  qword_1ED4DF2A0 = v0;
}

uint64_t __63___NSOptimalLineBreaker__enumerateOrdinaryLineBreaksWithBlock___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *a7 = 1;
  return result;
}

uint64_t __63___NSOptimalLineBreaker__enumerateOrdinaryLineBreaksWithBlock___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = *(*(result + 32) + 8);
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *a7 = 1;
  return result;
}

uint64_t __62___NSOptimalLineBreaker__enumerateNonBreakingSpacesWithBlock___block_invoke()
{
  qword_1ED4DF2B8 = [MEMORY[0x1E696AB08] characterSetWithRange:{160, 1}];

  return MEMORY[0x1EEE66BB8]();
}

void __45___NSOptimalLineBreaker__calculateLineBreaks__block_invoke_3(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    v4 = 138;
  }

  else
  {
    v4 = 10;
  }

  [(_NSOptimalLineBreaker *)v3 _addLineBreakWithRange:a2 flags:0, v4];
}

uint64_t __45___NSOptimalLineBreaker__calculateLineBreaks__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    result = -1;
  }

  else
  {
    result = *a3 < *a2;
  }

  if (!result)
  {
    v4 = a2[1] + *a2;
    v5 = a3[1] + *a3;
    if (v4 < v5)
    {
      return -1;
    }

    else
    {
      return v5 < v4;
    }
  }

  return result;
}

uint64_t __59___NSOptimalLineBreaker__bestNodeInNodeList_withLineCount___block_invoke(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  result = [(_NSOptimalLineBreaker *)a1[4] _node:a3 isBetterThanNode:*(*(a1[5] + 8) + 24)];
  if (result)
  {
    v6 = a1[6];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL || v6 == a3[2])
    {
      *(*(a1[5] + 8) + 24) = a3;
    }
  }

  return result;
}

uint64_t __70___NSOptimalLineBreaker__calculateOptimalWrappingWithLineBreakFilter___block_invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if ([(_NSOptimalLineBreaker *)a1[4] _bestNode:a3 dominatesNode:?])
  {
    if (*(*(a1[6] + 8) + 24) == a3)
    {
      __70___NSOptimalLineBreaker__calculateOptimalWrappingWithLineBreakFilter___block_invoke_cold_1();
    }

    v5 = *(a1[4] + 184);

    return [v5 releaseNode:a3];
  }

  else
  {
    v7 = a1[5];

    return [v7 appendValue:a3];
  }
}

@end