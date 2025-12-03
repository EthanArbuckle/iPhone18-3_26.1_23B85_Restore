@interface NSOperationQueue
+ (id)tsu_newSerialOperationQueueWithName:(id)name;
@end

@implementation NSOperationQueue

+ (id)tsu_newSerialOperationQueueWithName:(id)name
{
  v4 = objc_alloc_init(NSOperationQueue);
  [v4 setName:name];
  [v4 setMaxConcurrentOperationCount:1];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = TSUCreateRecursiveQueue(name, v5);
  [v4 setUnderlyingQueue:v6];

  return v4;
}

@end