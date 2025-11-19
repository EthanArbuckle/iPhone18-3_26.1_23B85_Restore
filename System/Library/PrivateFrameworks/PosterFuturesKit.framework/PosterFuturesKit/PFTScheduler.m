@interface PFTScheduler
+ (PFTScheduler)globalAsyncScheduler;
+ (PFTScheduler)immediateScheduler;
+ (PFTScheduler)inlineScheduler;
+ (PFTScheduler)mainThreadScheduler;
+ (PFTScheduler)offMainThreadScheduler;
+ (PFTScheduler)schedulerWithDispatchQueue:(id)a3;
+ (id)offMainThreadSchedulerWithBackgroundScheduler:(id)a3;
+ (id)operationQueueScheduleWithQualityOfService:(unint64_t)a3;
+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)a3 qualityOfService:(unint64_t)a4;
+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)a3 qualityOfService:(unint64_t)a4 name:(id)a5;
+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)a3 underlyingQueue:(id)a4 qualityOfService:(unint64_t)a5;
+ (id)operationQueueSchedulerWithOperationQueue:(id)a3 qualityOfService:(unint64_t)a4;
+ (id)serialDispatchQueueSchedulerWithName:(id)a3;
+ (id)serialDispatchQueueSchedulerWithName:(id)a3 qualityOfService:(unsigned int)a4;
+ (id)synchronousSerialDispatchQueueWithName:(id)a3;
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

+ (id)offMainThreadSchedulerWithBackgroundScheduler:(id)a3
{
  v3 = a3;
  v4 = [[_PFTOffMainThreadScheduler alloc] initWithBackgroundScheduler:v3];

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

+ (id)serialDispatchQueueSchedulerWithName:(id)a3
{
  Serial = BSDispatchQueueCreateSerial();
  v4 = [[_PFTQueueScheduler alloc] initWithQueue:Serial];

  return v4;
}

+ (id)serialDispatchQueueSchedulerWithName:(id)a3 qualityOfService:(unsigned int)a4
{
  SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
  v5 = [[_PFTQueueScheduler alloc] initWithQueue:SerialWithQoS];

  return v5;
}

+ (id)operationQueueScheduleWithQualityOfService:(unint64_t)a3
{
  v3 = [[_PFTOperationQueueScheduler alloc] initWithMaxConcurrentOperationCount:-1 qualityOfService:a3 name:0];

  return v3;
}

+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)a3 underlyingQueue:(id)a4 qualityOfService:(unint64_t)a5
{
  v7 = a4;
  v8 = [[_PFTOperationQueueScheduler alloc] initWithMaxConcurrentOperationCount:a3 underlyingDispatchQueue:v7 qualityOfService:a5];

  return v8;
}

+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)a3 qualityOfService:(unint64_t)a4
{
  v4 = [[_PFTOperationQueueScheduler alloc] initWithMaxConcurrentOperationCount:a3 qualityOfService:a4 name:0];

  return v4;
}

+ (id)operationQueueSchedulerWithMaxConcurrentOperationCount:(int64_t)a3 qualityOfService:(unint64_t)a4 name:(id)a5
{
  v7 = a5;
  v8 = [[_PFTOperationQueueScheduler alloc] initWithMaxConcurrentOperationCount:a3 qualityOfService:a4 name:v7];

  return v8;
}

+ (id)operationQueueSchedulerWithOperationQueue:(id)a3 qualityOfService:(unint64_t)a4
{
  v5 = a3;
  v6 = [[_PFTOperationQueueScheduler alloc] initWithOperationQueue:v5 qualityOfService:a4];

  return v6;
}

+ (id)synchronousSerialDispatchQueueWithName:(id)a3
{
  v3 = [a3 UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_DEFAULT, 0);
  v6 = dispatch_queue_create(v3, v5);

  v7 = [[_PFTSynchronousQueueScheduler alloc] initWithQueue:v6];

  return v7;
}

+ (PFTScheduler)schedulerWithDispatchQueue:(id)a3
{
  v3 = a3;
  v4 = [[_PFTQueueScheduler alloc] initWithQueue:v3];

  return v4;
}

@end