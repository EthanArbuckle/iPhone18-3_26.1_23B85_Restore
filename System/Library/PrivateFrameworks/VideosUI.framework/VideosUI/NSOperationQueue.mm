@interface NSOperationQueue
@end

@implementation NSOperationQueue

uint64_t __49__NSOperationQueue_VUIAdditions__vuiDefaultQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = vuiDefaultQueue__vuiDefaultQueue;
  vuiDefaultQueue__vuiDefaultQueue = v0;

  [vuiDefaultQueue__vuiDefaultQueue setName:@"com.apple.videosui.defaultqueue"];
  v2 = vuiDefaultQueue__vuiDefaultQueue;

  return [v2 setMaxConcurrentOperationCount:1];
}

@end