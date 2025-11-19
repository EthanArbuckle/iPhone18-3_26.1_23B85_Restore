@interface _PFTOperationQueueScheduler
+ (id)operationWithQualityOfService:(unint64_t)a3 block:(id)a4;
- (NSString)description;
- (_PFTOperationQueueScheduler)initWithMaxConcurrentOperationCount:(int64_t)a3 qualityOfService:(unint64_t)a4 name:(id)a5;
- (_PFTOperationQueueScheduler)initWithMaxConcurrentOperationCount:(int64_t)a3 underlyingDispatchQueue:(id)a4 qualityOfService:(unint64_t)a5;
- (_PFTOperationQueueScheduler)initWithOperationQueue:(id)a3 qualityOfService:(unint64_t)a4;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)blockWithCurrentQualityOfServiceForBlock:(id)a3 ifAllowedForRequestedQualityOfService:(unint64_t)a4;
- (id)performCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)_enqueueBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
@end

@implementation _PFTOperationQueueScheduler

- (_PFTOperationQueueScheduler)initWithMaxConcurrentOperationCount:(int64_t)a3 qualityOfService:(unint64_t)a4 name:(id)a5
{
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v9 setMaxConcurrentOperationCount:a3];
  if (v8)
  {
    [v9 setName:v8];
  }

  v10 = [(_PFTOperationQueueScheduler *)self initWithOperationQueue:v9 qualityOfService:a4];

  return v10;
}

- (_PFTOperationQueueScheduler)initWithMaxConcurrentOperationCount:(int64_t)a3 underlyingDispatchQueue:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v9 setMaxConcurrentOperationCount:a3];
  if (v8)
  {
    [v9 setUnderlyingQueue:v8];
  }

  v10 = [(_PFTOperationQueueScheduler *)self initWithOperationQueue:v9 qualityOfService:a5];

  return v10;
}

- (_PFTOperationQueueScheduler)initWithOperationQueue:(id)a3 qualityOfService:(unint64_t)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = _PFTOperationQueueScheduler;
  v8 = [(_PFTOperationQueueScheduler *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a3);
    if (a4)
    {
      if (a4 - 2 >= 4)
      {
        v10 = -1;
      }

      else
      {
        v10 = 8 * (a4 - 2) + 9;
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
  v6 = [v3 build];

  return v6;
}

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = [(_PFTOperationQueueScheduler *)self blockWithCurrentQualityOfServiceForBlock:a3 ifAllowedForRequestedQualityOfService:?];
  [(_PFTOperationQueueScheduler *)self _enqueueBlock:v6 qualityOfService:a4];
}

- (void)_enqueueBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = [objc_opt_class() operationWithQualityOfService:a4 block:v6];

  [(NSOperationQueue *)self->_queue addOperation:v7];
}

- (id)performCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(PFTOperationQueueSchedulerCancellationToken);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72___PFTOperationQueueScheduler_performCancellableBlock_qualityOfService___block_invoke;
  v21[3] = &unk_279A52AE8;
  v8 = v6;
  v23 = v8;
  v9 = v7;
  v22 = v9;
  v10 = MEMORY[0x25F8CF560](v21);
  v11 = [(_PFTOperationQueueScheduler *)self blockWithCurrentQualityOfServiceForBlock:v10 ifAllowedForRequestedQualityOfService:a4];

  v12 = [objc_opt_class() operationWithQualityOfService:a4 block:v11];
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

- (id)blockWithCurrentQualityOfServiceForBlock:(id)a3 ifAllowedForRequestedQualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = MEMORY[0x25F8CF560]();
  if (!a4 && !self->_isQualityOfServiceSpecified)
  {
    v8 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, v6);

    v7 = v8;
  }

  v9 = MEMORY[0x25F8CF560](v7);

  return v9;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  v9 = objc_alloc_init(PFTOperationQueueSchedulerCancellationToken);
  v10 = [(_PFTOperationQueueScheduler *)self blockWithCurrentQualityOfServiceForBlock:v8 ifAllowedForRequestedQualityOfService:a5];

  v11 = +[PFTScheduler globalAsyncScheduler];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __72___PFTOperationQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  v20 = &unk_279A52DA0;
  v12 = v9;
  v21 = v12;
  v22 = self;
  v23 = v10;
  v24 = a5;
  v13 = v10;
  v14 = [v11 afterDelay:&v17 performBlock:a3];

  [(PFTCancellationToken *)v12 addCancellable:v14, v17, v18, v19, v20];
  v15 = v12;

  return v12;
}

+ (id)operationWithQualityOfService:(unint64_t)a3 block:(id)a4
{
  v5 = [MEMORY[0x277CCA8C8] blockOperationWithBlock:a4];
  v6 = v5;
  if (a3 - 2 >= 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = 8 * (a3 - 2) + 9;
  }

  if ([v5 qualityOfService] != v7)
  {
    [v6 setQualityOfService:v7];
  }

  return v6;
}

@end