@interface NSOperationQueue
+ (id)tsu_newSerialOperationQueueWithName:(id)a3;
@end

@implementation NSOperationQueue

+ (id)tsu_newSerialOperationQueueWithName:(id)a3
{
  v4 = objc_alloc_init(NSOperationQueue);
  [v4 setName:a3];
  [v4 setMaxConcurrentOperationCount:1];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = TSUCreateRecursiveQueue(a3, v5);
  [v4 setUnderlyingQueue:v6];

  return v4;
}

@end