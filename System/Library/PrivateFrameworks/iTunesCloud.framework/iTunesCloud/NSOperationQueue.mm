@interface NSOperationQueue
@end

@implementation NSOperationQueue

uint64_t __91__NSOperationQueue_ICRequestAdditions__ic_sharedRequestOperationQueueWithQualityOfService___block_invoke_5()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_23;
  ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_23 = v0;

  [ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_23 setMaxConcurrentOperationCount:3];
  v2 = ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_23;

  return [v2 setName:@"com.apple.iTunesCloud.NSOperationQueue.ICRequestDefault"];
}

uint64_t __91__NSOperationQueue_ICRequestAdditions__ic_sharedRequestOperationQueueWithQualityOfService___block_invoke_4()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_16;
  ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_16 = v0;

  [ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_16 setMaxConcurrentOperationCount:3];
  [ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_16 setQualityOfService:9];
  v2 = ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_16;

  return [v2 setName:@"com.apple.iTunesCloud.NSOperationQueue.ICRequestBackground"];
}

uint64_t __91__NSOperationQueue_ICRequestAdditions__ic_sharedRequestOperationQueueWithQualityOfService___block_invoke_3()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_9;
  ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_9 = v0;

  [ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_9 setMaxConcurrentOperationCount:-1];
  [ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_9 setQualityOfService:33];
  v2 = ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_9;

  return [v2 setName:@"com.apple.iTunesCloud.NSOperationQueue.ICRequestUserInteractive"];
}

uint64_t __91__NSOperationQueue_ICRequestAdditions__ic_sharedRequestOperationQueueWithQualityOfService___block_invoke_2()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_2;
  ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_2 = v0;

  [ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_2 setMaxConcurrentOperationCount:-1];
  [ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_2 setQualityOfService:25];
  v2 = ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue_2;

  return [v2 setName:@"com.apple.iTunesCloud.NSOperationQueue.ICRequestUserIntitiated"];
}

uint64_t __91__NSOperationQueue_ICRequestAdditions__ic_sharedRequestOperationQueueWithQualityOfService___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue;
  ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue = v0;

  [ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue setMaxConcurrentOperationCount:3];
  [ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue setQualityOfService:17];
  v2 = ic_sharedRequestOperationQueueWithQualityOfService__sOperationQueue;

  return [v2 setName:@"com.apple.iTunesCloud.NSOperationQueue.ICRequestUtility"];
}

@end