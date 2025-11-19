@interface NSTextHighlightRun
@end

@implementation NSTextHighlightRun

uint64_t __45___NSTextHighlightRun_textRangeIsInSameLine___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (*(a1 + 32) == v4)
  {
    goto LABEL_6;
  }

  v6 = [v4 rangeInElement];
  v7 = [v6 endLocation];
  v8 = [*(a1 + 40) endLocation];
  if ([v7 isEqual:v8])
  {

LABEL_6:
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v13 = 0;
    goto LABEL_7;
  }

  v9 = [v5 rangeInElement];
  v10 = [v9 location];
  v11 = [*(a1 + 40) endLocation];
  v12 = [v10 compare:v11];

  if (v12 == -1)
  {
    goto LABEL_6;
  }

  v13 = 1;
LABEL_7:

  return v13;
}

uint64_t __41___NSTextHighlightRun_drawRunUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [(_NSTextHighlightRunSegment *)a2 calculateCGPath];

  return [v2 addObject:v3];
}

void __71___NSTextHighlightRun_getMetricsForTextSize_cornerRadius_cornerOutset___block_invoke()
{
  v1 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v1 doubleForKey:@"_NSTextHighlightShapeProviderOutsetIncrement"];
  qword_1ED4DF308 = v0;
}

void __53___NSTextHighlightRun_initWithTextRange_withCluster___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_6_1();
  v6 = v5;
  v8 = v7;
  v9 = [_NSTextHighlightRunSegment alloc];
  WeakRetained = objc_loadWeakRetained((*(*(v6 + 40) + 8) + 40));
  OUTLINED_FUNCTION_1_0();
  v11 = [_NSTextHighlightRunSegment initWithTextSegmentFrame:withRun:];

  [(_NSTextHighlightRunSegment *)v11 setTextRange:v8];
  if (v11)
  {
    v11[8] = a4;
  }

  [*(*(v6 + 32) + 56) addObject:v11];
}

uint64_t __54___NSTextHighlightRun_enumerateRunSegmentsUsingBlock___block_invoke()
{
  OUTLINED_FUNCTION_6_1();
  v1 = v0;
  v3 = v2;
  v4 = *(v1 + 32);
  if (v4)
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 count];
  v7 = OUTLINED_FUNCTION_1_0();
  if ([v8 isSegmentFrameRenderable:v6 forIndex:v7])
  {
    if (*(v1 + 64) != 1 || ([v3 isNotEmpty] & 1) != 0 || (objc_msgSend(v3, "endLocation"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", *(v1 + 40)), v9, (v10 & 1) == 0))
    {
      v11 = OUTLINED_FUNCTION_1_0();
      v12(v11);
    }
  }

  *(*(*(v1 + 56) + 8) + 24) = [*(v1 + 32) textRangeIsInSameLine:v3] ^ 1;

  return 1;
}

uint64_t __41___NSTextHighlightRun_drawRunUsingBlock___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[5];
  v7 = a1[4];
  if (v7)
  {
    v8 = *(v7 + 16);
  }

  else
  {
    v8 = 0;
  }

  result = (*(v6 + 16))(v6, a2, a2, v8, *(a1[6] + 8) + 24);
  *a4 = *(*(a1[6] + 8) + 24);
  return result;
}

@end