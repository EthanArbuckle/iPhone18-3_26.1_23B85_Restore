@interface _PFTOperationQueueScheduler
+ (id)operationWithQualityOfService:(unint64_t)service block:(id)block;
- (NSString)description;
- (_PFTOperationQueueScheduler)initWithMaxConcurrentOperationCount:(int64_t)count qualityOfService:(unint64_t)service name:(id)name;
- (_PFTOperationQueueScheduler)initWithMaxConcurrentOperationCount:(int64_t)count underlyingDispatchQueue:(id)queue qualityOfService:(unint64_t)service;
- (_PFTOperationQueueScheduler)initWithOperationQueue:(id)queue qualityOfService:(unint64_t)service;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)blockWithCurrentQualityOfServiceForBlock:(id)block ifAllowedForRequestedQualityOfService:(unint64_t)service;
- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)_enqueueBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation _PFTOperationQueueScheduler

- (_PFTOperationQueueScheduler)initWithMaxConcurrentOperationCount:(int64_t)count qualityOfService:(unint64_t)service name:(id)name
{
  nameCopy = name;
  v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v9 setMaxConcurrentOperationCount:count];
  if (nameCopy)
  {
    [v9 setName:nameCopy];
  }

  v10 = [(_PFTOperationQueueScheduler *)self initWithOperationQueue:v9 qualityOfService:service];

  return v10;
}

- (_PFTOperationQueueScheduler)initWithMaxConcurrentOperationCount:(int64_t)count underlyingDispatchQueue:(id)queue qualityOfService:(unint64_t)service
{
  queueCopy = queue;
  v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v9 setMaxConcurrentOperationCount:count];
  if (queueCopy)
  {
    [v9 setUnderlyingQueue:queueCopy];
  }

  v10 = [(_PFTOperationQueueScheduler *)self initWithOperationQueue:v9 qualityOfService:service];

  return v10;
}

- (_PFTOperationQueueScheduler)initWithOperationQueue:(id)queue qualityOfService:(unint64_t)service
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = _PFTOperationQueueScheduler;
  v8 = [(_PFTOperationQueueScheduler *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    if (service)
    {
      if (service - 2 >= 4)
      {
        v10 = -1;
      }

      else
      {
        v10 = 8 * (service - 2) + 9;
      }

      [(NSOperationQueue *)v9->_queue setQualityOfService:v10];
      v9->_isQualityOfServiceSpecified = 1;
    }

    v11 = v9;
  }

  return v9;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[NSOperationQueue maxConcurrentOperationCount](self->_queue withName:{"maxConcurrentOperationCount"), @"width"}];
  v5 = [v3 appendUnsignedInteger:-[NSOperationQueue operationCount](self->_queue withName:{"operationCount"), @"blocks"}];
  build = [v3 build];

  return build;
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  v6 = [(_PFTOperationQueueScheduler *)self blockWithCurrentQualityOfServiceForBlock:block ifAllowedForRequestedQualityOfService:?];
  [(_PFTOperationQueueScheduler *)self _enqueueBlock:v6 qualityOfService:service];
}

- (void)_enqueueBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v7 = [objc_opt_class() operationWithQualityOfService:service block:blockCopy];

  [(NSOperationQueue *)self->_queue addOperation:v7];
}

- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v7 = objc_alloc_init(PFTOperationQueueSchedulerCancellationToken);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72___PFTOperationQueueScheduler_performCancellableBlock_qualityOfService___block_invoke;
  v21[3] = &unk_279A52AE8;
  v8 = blockCopy;
  v23 = v8;
  v9 = v7;
  v22 = v9;
  v10 = MEMORY[0x25F8CF560](v21);
  v11 = [(_PFTOperationQueueScheduler *)self blockWithCurrentQualityOfServiceForBlock:v10 ifAllowedForRequestedQualityOfService:service];

  v12 = [objc_opt_class() operationWithQualityOfService:service block:v11];
  objc_initWeak(&location, v12);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __72___PFTOperationQueueScheduler_performCancellableBlock_qualityOfService___block_invoke_2;
  v18 = &unk_279A52D78;
  objc_copyWeak(&v19, &location);
  [(PFTCancellationToken *)v9 addCancellationBlock:&v15];
  [(NSOperationQueue *)self->_queue addOperation:v12, v15, v16, v17, v18];
  v13 = v9;
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v13;
}

- (id)blockWithCurrentQualityOfServiceForBlock:(id)block ifAllowedForRequestedQualityOfService:(unint64_t)service
{
  blockCopy = block;
  v7 = MEMORY[0x25F8CF560]();
  if (!service && !self->_isQualityOfServiceSpecified)
  {
    v8 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, blockCopy);

    v7 = v8;
  }

  v9 = MEMORY[0x25F8CF560](v7);

  return v9;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v9 = objc_alloc_init(PFTOperationQueueSchedulerCancellationToken);
  v10 = [(_PFTOperationQueueScheduler *)self blockWithCurrentQualityOfServiceForBlock:blockCopy ifAllowedForRequestedQualityOfService:service];

  v11 = +[PFTScheduler globalAsyncScheduler];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __72___PFTOperationQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  v20 = &unk_279A52DA0;
  v12 = v9;
  v21 = v12;
  selfCopy = self;
  v23 = v10;
  serviceCopy = service;
  v13 = v10;
  v14 = [v11 afterDelay:&v17 performBlock:delay];

  [(PFTCancellationToken *)v12 addCancellable:v14, v17, v18, v19, v20];
  v15 = v12;

  return v12;
}

+ (id)operationWithQualityOfService:(unint64_t)service block:(id)block
{
  v5 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:block];
  v6 = v5;
  if (service - 2 >= 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = 8 * (service - 2) + 9;
  }

  if ([v5 qualityOfService] != v7)
  {
    [v6 setQualityOfService:v7];
  }

  return v6;
}

@end