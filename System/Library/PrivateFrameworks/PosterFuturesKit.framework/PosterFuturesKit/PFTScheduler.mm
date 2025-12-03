@interface PFTScheduler
+ (PFTScheduler)globalAsyncScheduler;
+ (PFTScheduler)immediateScheduler;
+ (PFTScheduler)inlineScheduler;
+ (PFTScheduler)mainThreadScheduler;
+ (PFTScheduler)offMainThreadScheduler;
+ (PFTScheduler)schedulerWithDispatchQueue:(id)queue;
+ (id)offMainThreadSchedulerWithBackgroundScheduler:(id)scheduler;
+ (id)operationQueueScheduleWithQualityOfService:(unint64_t)service;
+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)count qualityOfService:(unint64_t)service;
+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)count qualityOfService:(unint64_t)service name:(id)name;
+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)count underlyingQueue:(id)queue qualityOfService:(unint64_t)service;
+ (id)operationQueueSchedulerWithOperationQueue:(id)queue qualityOfService:(unint64_t)service;
+ (id)serialDispatchQueueSchedulerWithName:(id)name;
+ (id)serialDispatchQueueSchedulerWithName:(id)name qualityOfService:(unsigned int)service;
+ (id)synchronousSerialDispatchQueueWithName:(id)name;
@end

@implementation PFTScheduler

+ (PFTScheduler)mainThreadScheduler
{
  if (mainThreadScheduler_pft_once_token_9 != -1)
  {
    +[PFTScheduler mainThreadScheduler];
  }

  v3 = mainThreadScheduler_pft_once_object_9;

  return v3;
}

+ (PFTScheduler)immediateScheduler
{
  if (immediateScheduler_pft_once_token_7 != -1)
  {
    +[PFTScheduler immediateScheduler];
  }

  v3 = immediateScheduler_pft_once_object_7;

  return v3;
}

uint64_t __34__PFTScheduler_immediateScheduler__block_invoke()
{
  immediateScheduler_pft_once_object_7 = objc_alloc_init(_PFTImmediateScheduler);

  return MEMORY[0x2821F96F8]();
}

+ (PFTScheduler)globalAsyncScheduler
{
  if (globalAsyncScheduler_pft_once_token_8 != -1)
  {
    +[PFTScheduler globalAsyncScheduler];
  }

  v3 = globalAsyncScheduler_pft_once_object_8;

  return v3;
}

uint64_t __36__PFTScheduler_globalAsyncScheduler__block_invoke()
{
  globalAsyncScheduler_pft_once_object_8 = objc_alloc_init(_PFTQueueScheduler);

  return MEMORY[0x2821F96F8]();
}

uint64_t __35__PFTScheduler_mainThreadScheduler__block_invoke()
{
  mainThreadScheduler_pft_once_object_9 = objc_alloc_init(_PFTMainThreadScheduler);

  return MEMORY[0x2821F96F8]();
}

+ (PFTScheduler)offMainThreadScheduler
{
  if (offMainThreadScheduler_pft_once_token_10 != -1)
  {
    +[PFTScheduler offMainThreadScheduler];
  }

  v3 = offMainThreadScheduler_pft_once_object_10;

  return v3;
}

uint64_t __38__PFTScheduler_offMainThreadScheduler__block_invoke()
{
  offMainThreadScheduler_pft_once_object_10 = objc_alloc_init(_PFTOffMainThreadScheduler);

  return MEMORY[0x2821F96F8]();
}

+ (id)offMainThreadSchedulerWithBackgroundScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v4 = [[_PFTOffMainThreadScheduler alloc] initWithBackgroundScheduler:schedulerCopy];

  return v4;
}

+ (PFTScheduler)inlineScheduler
{
  if (inlineScheduler_pft_once_token_11 != -1)
  {
    +[PFTScheduler inlineScheduler];
  }

  v3 = inlineScheduler_pft_once_object_11;

  return v3;
}

uint64_t __31__PFTScheduler_inlineScheduler__block_invoke()
{
  inlineScheduler_pft_once_object_11 = objc_alloc_init(_PFTInlineScheduler);

  return MEMORY[0x2821F96F8]();
}

+ (id)serialDispatchQueueSchedulerWithName:(id)name
{
  Serial = BSDispatchQueueCreateSerial();
  v4 = [[_PFTQueueScheduler alloc] initWithQueue:Serial];

  return v4;
}

+ (id)serialDispatchQueueSchedulerWithName:(id)name qualityOfService:(unsigned int)service
{
  SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
  v5 = [[_PFTQueueScheduler alloc] initWithQueue:SerialWithQoS];

  return v5;
}

+ (id)operationQueueScheduleWithQualityOfService:(unint64_t)service
{
  v3 = [[_PFTOperationQueueScheduler alloc] initWithMaxConcurrentOperationCount:-1 qualityOfService:service name:0];

  return v3;
}

+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)count underlyingQueue:(id)queue qualityOfService:(unint64_t)service
{
  queueCopy = queue;
  v8 = [[_PFTOperationQueueScheduler alloc] initWithMaxConcurrentOperationCount:count underlyingDispatchQueue:queueCopy qualityOfService:service];

  return v8;
}

+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)count qualityOfService:(unint64_t)service
{
  v4 = [[_PFTOperationQueueScheduler alloc] initWithMaxConcurrentOperationCount:count qualityOfService:service name:0];

  return v4;
}

+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)count qualityOfService:(unint64_t)service name:(id)name
{
  nameCopy = name;
  v8 = [[_PFTOperationQueueScheduler alloc] initWithMaxConcurrentOperationCount:count qualityOfService:service name:nameCopy];

  return v8;
}

+ (id)operationQueueSchedulerWithOperationQueue:(id)queue qualityOfService:(unint64_t)service
{
  queueCopy = queue;
  v6 = [[_PFTOperationQueueScheduler alloc] initWithOperationQueue:queueCopy qualityOfService:service];

  return v6;
}

+ (id)synchronousSerialDispatchQueueWithName:(id)name
{
  uTF8String = [name UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_DEFAULT, 0);
  v6 = dispatch_queue_create(uTF8String, v5);

  v7 = [[_PFTSynchronousQueueScheduler alloc] initWithQueue:v6];

  return v7;
}

+ (PFTScheduler)schedulerWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v4 = [[_PFTQueueScheduler alloc] initWithQueue:queueCopy];

  return v4;
}

@end