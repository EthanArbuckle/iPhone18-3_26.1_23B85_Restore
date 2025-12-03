@interface PXStoryDummyProgressiveTimelineProducer
- (PXStoryDummyProgressiveTimelineProducer)init;
- (id)requestTimelineWithConfiguration:(id)configuration options:(unint64_t)options resultHandler:(id)handler;
@end

@implementation PXStoryDummyProgressiveTimelineProducer

- (id)requestTimelineWithConfiguration:(id)configuration options:(unint64_t)options resultHandler:(id)handler
{
  optionsCopy = options;
  configurationCopy = configuration;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __98__PXStoryDummyProgressiveTimelineProducer_requestTimelineWithConfiguration_options_resultHandler___block_invoke;
  aBlock[3] = &unk_1E772E708;
  aBlock[4] = self;
  aBlock[5] = configurationCopy;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if ((optionsCopy & 2) != 0)
  {
    workQueue = [(PXStoryDummyProgressiveTimelineProducer *)self workQueue];
    numberOfIterations = 1;
  }

  else
  {
    v12 = (*(v10 + 2))(v10, 0.0);
    v13 = [[PXStoryProducerResult alloc] initWithObject:v12];
    v14 = [(PXStoryProducerResult *)v13 flags:1];
    handlerCopy[2](handlerCopy, v14);

    workQueue = [(PXStoryDummyProgressiveTimelineProducer *)self workQueue];
    numberOfIterations = [(PXStoryDummyProgressiveTimelineProducer *)self numberOfIterations];
  }

  [(PXStoryDummyProgressiveTimelineProducer *)self delayBetweenIterations];
  [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:numberOfIterations];
  objc_claimAutoreleasedReturnValue();
  v17 = handlerCopy;
  v18 = v11;
  v19 = workQueue;
  PXIterateAsynchronously();
}

id __98__PXStoryDummyProgressiveTimelineProducer_requestTimelineWithConfiguration_options_resultHandler___block_invoke(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) timelineProducer];
  v5 = [v4 createTimelineWithConfiguration:*(a1 + 40) detailsFraction:a2];

  return v5;
}

void __98__PXStoryDummyProgressiveTimelineProducer_requestTimelineWithConfiguration_options_resultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_time(0, (*(a1 + 64) * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __98__PXStoryDummyProgressiveTimelineProducer_requestTimelineWithConfiguration_options_resultHandler___block_invoke_3;
  block[3] = &unk_1E772E730;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v12 = *(a1 + 72);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_after(v4, v5, block);
}

void __98__PXStoryDummyProgressiveTimelineProducer_requestTimelineWithConfiguration_options_resultHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) isCancelled];
  v3 = *(a1 + 40);
  if (v2)
  {

    [v3 stop];
  }

  else
  {
    v4 = ([v3 index] + 1) / *(a1 + 64);
    v8 = (*(*(a1 + 48) + 16))(v4);
    v5 = *(a1 + 56);
    v6 = [[PXStoryProducerResult alloc] initWithObject:v8];
    v7 = [(PXStoryProducerResult *)v6 flags:v4 < 1.0];
    (*(v5 + 16))(v5, v7);

    [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "completedUnitCount") + 1}];
    [*(a1 + 40) next];
  }
}

- (PXStoryDummyProgressiveTimelineProducer)init
{
  v13.receiver = self;
  v13.super_class = PXStoryDummyProgressiveTimelineProducer;
  v2 = [(PXStoryDummyProgressiveTimelineProducer *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(PXStoryDummyTimelineProducer);
    timelineProducer = v2->_timelineProducer;
    v2->_timelineProducer = v3;

    v2->_numberOfIterations = 10;
    v2->_delayBetweenIterations = 1.0;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    uTF8String = [v6 UTF8String];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);
    v10 = dispatch_queue_create(uTF8String, v9);
    workQueue = v2->_workQueue;
    v2->_workQueue = v10;
  }

  return v2;
}

@end