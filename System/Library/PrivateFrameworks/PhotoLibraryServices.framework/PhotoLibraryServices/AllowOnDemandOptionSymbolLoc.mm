@interface AllowOnDemandOptionSymbolLoc
@end

@implementation AllowOnDemandOptionSymbolLoc

void *__getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MediaAnalysisLibrary_44795();
  result = dlsym(v2, "VCPMediaAnalysisService_AllowOnDemandOption");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVCPMediaAnalysisService_AllowOnDemandOptionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

@end