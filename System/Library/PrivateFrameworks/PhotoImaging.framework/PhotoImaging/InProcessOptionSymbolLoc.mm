@interface InProcessOptionSymbolLoc
@end

@implementation InProcessOptionSymbolLoc

void *__getVCPMediaAnalysisService_InProcessOptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPMediaAnalysisService_InProcessOption");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPMediaAnalysisService_InProcessOptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end