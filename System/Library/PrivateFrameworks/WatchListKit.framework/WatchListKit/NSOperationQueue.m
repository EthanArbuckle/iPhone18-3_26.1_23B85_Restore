@interface NSOperationQueue
@end

@implementation NSOperationQueue

uint64_t __59__NSOperationQueue_WLKAdditions__wlkDefaultConcurrentQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = wlkDefaultConcurrentQueue___wlkDefaultConQueue;
  wlkDefaultConcurrentQueue___wlkDefaultConQueue = v0;

  [wlkDefaultConcurrentQueue___wlkDefaultConQueue setName:@"com.apple.WatchListKit.defaultconcurrentqueue"];
  v2 = wlkDefaultConcurrentQueue___wlkDefaultConQueue;

  return [v2 setMaxConcurrentOperationCount:10];
}

uint64_t __49__NSOperationQueue_WLKAdditions__wlkDefaultQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCABD8]);
  v1 = wlkDefaultQueue___wlkDefaultQueue;
  wlkDefaultQueue___wlkDefaultQueue = v0;

  [wlkDefaultQueue___wlkDefaultQueue setName:@"com.apple.WatchListKit.defaultqueue"];
  v2 = wlkDefaultQueue___wlkDefaultQueue;

  return [v2 setMaxConcurrentOperationCount:1];
}

@end