@interface UserInitiatedModeOptionSymbolLoc
@end

@implementation UserInitiatedModeOptionSymbolLoc

void *__getVCPMediaAnalysisService_UserInitiatedModeOptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary();
  result = dlsym(v2, "VCPMediaAnalysisService_UserInitiatedModeOption");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPMediaAnalysisService_UserInitiatedModeOptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end