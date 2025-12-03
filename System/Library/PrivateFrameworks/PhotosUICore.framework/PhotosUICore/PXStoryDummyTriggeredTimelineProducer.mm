@interface PXStoryDummyTriggeredTimelineProducer
- (PXStoryDummyTriggeredTimelineProducer)initWithNumberOfIterations:(int64_t)iterations;
- (id)requestTimelineWithConfiguration:(id)configuration options:(unint64_t)options resultHandler:(id)handler;
- (void)setResultHandler:(id)handler;
- (void)trigger;
@end

@implementation PXStoryDummyTriggeredTimelineProducer

- (void)trigger
{
  currentIteration = [(PXStoryDummyTriggeredTimelineProducer *)self currentIteration];
  v4 = currentIteration / [(PXStoryDummyTriggeredTimelineProducer *)self numberOfIterations];
  timelineProducer = [(PXStoryDummyTriggeredTimelineProducer *)self timelineProducer];
  configuration = [(PXStoryDummyTriggeredTimelineProducer *)self configuration];
  v10 = [timelineProducer createTimelineWithConfiguration:configuration detailsFraction:v4];

  resultHandler = [(PXStoryDummyTriggeredTimelineProducer *)self resultHandler];
  v8 = [[PXStoryProducerResult alloc] initWithObject:v10];
  v9 = [(PXStoryProducerResult *)v8 flags:v4 < 1.0];
  (resultHandler)[2](resultHandler, v9);

  [(PXStoryDummyTriggeredTimelineProducer *)self setCurrentIteration:currentIteration + 1];
}

- (id)requestTimelineWithConfiguration:(id)configuration options:(unint64_t)options resultHandler:(id)handler
{
  handlerCopy = handler;
  [(PXStoryDummyTriggeredTimelineProducer *)self setConfiguration:configuration];
  [(PXStoryDummyTriggeredTimelineProducer *)self setResultHandler:handlerCopy];

  [(PXStoryDummyTriggeredTimelineProducer *)self trigger];
  return 0;
}

- (void)setResultHandler:(id)handler
{
  handlerCopy = handler;
  resultHandler = self->_resultHandler;
  if (resultHandler != handlerCopy)
  {
    v10 = handlerCopy;
    if (resultHandler)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryDummyTriggeredTimelineProducer.m" lineNumber:39 description:@"not supporting multiple concurrent requests"];
    }

    v7 = [v10 copy];
    v8 = self->_resultHandler;
    self->_resultHandler = v7;

    handlerCopy = v10;
  }
}

- (PXStoryDummyTriggeredTimelineProducer)initWithNumberOfIterations:(int64_t)iterations
{
  v8.receiver = self;
  v8.super_class = PXStoryDummyTriggeredTimelineProducer;
  v4 = [(PXStoryDummyTriggeredTimelineProducer *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(PXStoryDummyTimelineProducer);
    timelineProducer = v4->_timelineProducer;
    v4->_timelineProducer = v5;

    v4->_numberOfIterations = iterations;
  }

  return v4;
}

@end