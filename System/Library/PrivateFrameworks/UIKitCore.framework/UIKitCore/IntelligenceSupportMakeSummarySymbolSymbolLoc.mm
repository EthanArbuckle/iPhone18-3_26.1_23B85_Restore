@interface IntelligenceSupportMakeSummarySymbolSymbolLoc
@end

@implementation IntelligenceSupportMakeSummarySymbolSymbolLoc

void *__get_IntelligenceSupportMakeSummarySymbolSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SwiftUILibrary();
  result = dlsym(v2, "_IntelligenceSupportMakeSummarySymbol");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1ED49E560 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end