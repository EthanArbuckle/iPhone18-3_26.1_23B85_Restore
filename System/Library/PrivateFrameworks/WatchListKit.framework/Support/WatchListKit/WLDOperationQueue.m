@interface WLDOperationQueue
@end

@implementation WLDOperationQueue

void __WLDOperationQueue_block_invoke(id a1)
{
  v1 = objc_alloc_init(NSOperationQueue);
  v2 = WLDOperationQueue___opQueue;
  WLDOperationQueue___opQueue = v1;

  [WLDOperationQueue___opQueue setMaxConcurrentOperationCount:1];
  v3 = WLDOperationQueue___opQueue;
  v4 = WLDDispatchQueue();
  [v3 setUnderlyingQueue:v4];
}

@end