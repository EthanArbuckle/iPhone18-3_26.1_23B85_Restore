@interface AllowStreamingOptionSymbolLoc
@end

@implementation AllowStreamingOptionSymbolLoc

void *__getVCPMediaAnalysisService_AllowStreamingOptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "VCPMediaAnalysisService_AllowStreamingOption");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPMediaAnalysisService_AllowStreamingOptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end