@interface SAVolumeSizerMock
+ (void)computeSizeOfVolumeAtURL:(id)l completionHandler:(id)handler;
@end

@implementation SAVolumeSizerMock

+ (void)computeSizeOfVolumeAtURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  NSLog(&cfstr_SavolumesizerC.isa, lCopy);
  v7 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SAVolumeSizerMock_computeSizeOfVolumeAtURL_completionHandler___block_invoke;
  block[3] = &unk_279D22338;
  v11 = lCopy;
  v12 = handlerCopy;
  v8 = lCopy;
  v9 = handlerCopy;
  dispatch_async(v7, block);
}

void __64__SAVolumeSizerMock_computeSizeOfVolumeAtURL_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:844000000000];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:200000000000];
  NSLog(&cfstr_SavolumesizerC_0.isa, v2, v4, v3);
}

@end