@interface CaptionWithHighlightSymbolLoc
@end

@implementation CaptionWithHighlightSymbolLoc

void *__getVCPMediaAnalyzerOption_CaptionWithHighlightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "VCPMediaAnalyzerOption_CaptionWithHighlight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPMediaAnalyzerOption_CaptionWithHighlightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end