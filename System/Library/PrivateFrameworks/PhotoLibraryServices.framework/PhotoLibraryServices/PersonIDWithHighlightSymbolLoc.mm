@interface PersonIDWithHighlightSymbolLoc
@end

@implementation PersonIDWithHighlightSymbolLoc

void *__getVCPMediaAnalyzerOption_PersonIDWithHighlightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "VCPMediaAnalyzerOption_PersonIDWithHighlight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPMediaAnalyzerOption_PersonIDWithHighlightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end