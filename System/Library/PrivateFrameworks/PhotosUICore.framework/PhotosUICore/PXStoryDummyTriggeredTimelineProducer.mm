@interface PXStoryDummyTriggeredTimelineProducer
- (PXStoryDummyTriggeredTimelineProducer)initWithNumberOfIterations:(int64_t)a3;
- (id)requestTimelineWithConfiguration:(id)a3 options:(unint64_t)a4 resultHandler:(id)a5;
- (void)setResultHandler:(id)a3;
- (void)trigger;
@end

@implementation PXStoryDummyTriggeredTimelineProducer

- (void)trigger
{
  v3 = [(PXStoryDummyTriggeredTimelineProducer *)self currentIteration];
  v4 = v3 / [(PXStoryDummyTriggeredTimelineProducer *)self numberOfIterations];
  v5 = [(PXStoryDummyTriggeredTimelineProducer *)self timelineProducer];
  v6 = [(PXStoryDummyTriggeredTimelineProducer *)self configuration];
  v10 = [v5 createTimelineWithConfiguration:v6 detailsFraction:v4];

  v7 = [(PXStoryDummyTriggeredTimelineProducer *)self resultHandler];
  v8 = [[PXStoryProducerResult alloc] initWithObject:v10];
  v9 = [(PXStoryProducerResult *)v8 flags:v4 < 1.0];
  (v7)[2](v7, v9);

  [(PXStoryDummyTriggeredTimelineProducer *)self setCurrentIteration:v3 + 1];
}

- (id)requestTimelineWithConfiguration:(id)a3 options:(unint64_t)a4 resultHandler:(id)a5
{
  v7 = a5;
  [(PXStoryDummyTriggeredTimelineProducer *)self setConfiguration:a3];
  [(PXStoryDummyTriggeredTimelineProducer *)self setResultHandler:v7];

  [(PXStoryDummyTriggeredTimelineProducer *)self trigger];
  return 0;
}

- (void)setResultHandler:(id)a3
{
  v5 = a3;
  resultHandler = self->_resultHandler;
  if (resultHandler != v5)
  {
    v10 = v5;
    if (resultHandler)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"PXStoryDummyTriggeredTimelineProducer.m" lineNumber:39 description:@"not supporting multiple concurrent requests"];
    }

    v7 = [v10 copy];
    v8 = self->_resultHandler;
    self->_resultHandler = v7;

    v5 = v10;
  }
}

- (PXStoryDummyTriggeredTimelineProducer)initWithNumberOfIterations:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = PXStoryDummyTriggeredTimelineProducer;
  v4 = [(PXStoryDummyTriggeredTimelineProducer *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(PXStoryDummyTimelineProducer);
    timelineProducer = v4->_timelineProducer;
    v4->_timelineProducer = v5;

    v4->_numberOfIterations = a3;
  }

  return v4;
}

@end