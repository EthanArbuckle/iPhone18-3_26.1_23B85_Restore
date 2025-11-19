@interface SearchQueryStringSymbolLoc
@end

@implementation SearchQueryStringSymbolLoc

void *__getVCPMediaAnalyzerOption_SearchQueryStringSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "VCPMediaAnalyzerOption_SearchQueryString");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPMediaAnalyzerOption_SearchQueryStringSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end