@interface PXStoryPassthroughProducer
- (PXStoryPassthroughProducer)initWithResult:(id)result options:(unint64_t)options;
- (id)requestResultWithOptions:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryPassthroughProducer

- (id)requestResultWithOptions:(unint64_t)options resultHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  result = [(PXStoryPassthroughProducer *)self result];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__PXStoryPassthroughProducer_requestResultWithOptions_resultHandler___block_invoke;
  aBlock[3] = &unk_1E774C2F0;
  v8 = handlerCopy;
  v21 = v8;
  v9 = result;
  v20 = v9;
  v10 = _Block_copy(aBlock);
  prefersAsynchronousDelivery = [(PXStoryPassthroughProducer *)self prefersAsynchronousDelivery];
  if ((optionsCopy & 1) != 0 || !prefersAsynchronousDelivery)
  {
    v10[2](v10);
    v13 = 0;
  }

  else
  {
    if ([(PXStoryPassthroughProducer *)self allowsProgress])
    {
      v12 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:0];
    }

    else
    {
      v12 = 0;
    }

    workQueue = [(PXStoryPassthroughProducer *)self workQueue];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__PXStoryPassthroughProducer_requestResultWithOptions_resultHandler___block_invoke_2;
    v16[3] = &unk_1E774C2F0;
    v13 = v12;
    v17 = v13;
    v18 = v10;
    dispatch_async(workQueue, v16);
  }

  return v13;
}

void __69__PXStoryPassthroughProducer_requestResultWithOptions_resultHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [[PXStoryProducerResult alloc] initWithObject:*(a1 + 32)];
  (*(v1 + 16))(v1, v2);
}

uint64_t __69__PXStoryPassthroughProducer_requestResultWithOptions_resultHandler___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isCancelled];
  if ((result & 1) == 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

- (PXStoryPassthroughProducer)initWithResult:(id)result options:(unint64_t)options
{
  optionsCopy = options;
  resultCopy = result;
  v18.receiver = self;
  v18.super_class = PXStoryPassthroughProducer;
  v8 = [(PXStoryPassthroughProducer *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_result, result);
    v9->_prefersAsynchronousDelivery = optionsCopy & 1;
    v9->_allowsProgress = (optionsCopy & 2) == 0;
    if (optionsCopy)
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      uTF8String = [v11 UTF8String];
      v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_USER_INITIATED, 0);
      v15 = dispatch_queue_create(uTF8String, v14);
      workQueue = v9->_workQueue;
      v9->_workQueue = v15;
    }
  }

  return v9;
}

@end