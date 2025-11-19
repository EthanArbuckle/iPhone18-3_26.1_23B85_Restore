@interface NSTextHighlightCluster
@end

@implementation NSTextHighlightCluster

void __53___NSTextHighlightCluster_addRunsWithTextRangeArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[_NSTextHighlightRun alloc] initWithTextRange:v3 withCluster:*(a1 + 32)];

  [*(a1 + 32) registerMinYOfRun:v4];
  [*(a1 + 32) registerMaxYOfRun:v4];
  [*(*(a1 + 32) + 32) addObject:v4];
}

uint64_t __62___NSTextHighlightCluster_accessBorderDict_forKey_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  [a2 rectValue];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void __132___NSTextHighlightCluster_topNeighborExistsAtPoint_withinDistance_withLeftCornerExtensionDistance_withRightCornerExtensionDistance___block_invoke(uint64_t a1, void *a2)
{
  [a2 rectValue];
  OUTLINED_FUNCTION_11_1();
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
  }

  else
  {
    WeakRetained = 0;
  }

  OUTLINED_FUNCTION_8_1();

  OUTLINED_FUNCTION_17_0();
}

void __135___NSTextHighlightCluster_bottomNeighborExistsAtPoint_withinDistance_withLeftCornerExtensionDistance_withRightCornerExtensionDistance___block_invoke(uint64_t a1, void *a2)
{
  [a2 rectValue];
  OUTLINED_FUNCTION_11_1();
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 24));
  }

  else
  {
    WeakRetained = 0;
  }

  OUTLINED_FUNCTION_8_1();

  OUTLINED_FUNCTION_17_0();
}

@end