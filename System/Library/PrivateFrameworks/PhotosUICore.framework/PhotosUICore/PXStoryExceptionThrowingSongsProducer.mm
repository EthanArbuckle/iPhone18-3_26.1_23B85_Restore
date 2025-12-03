@interface PXStoryExceptionThrowingSongsProducer
- (PXStoryExceptionThrowingSongsProducer)init;
- (id)requestSongsWithOptions:(unint64_t)options resultHandler:(id)handler;
- (unint64_t)logContext;
- (void)setLogContext:(unint64_t)context;
@end

@implementation PXStoryExceptionThrowingSongsProducer

- (id)requestSongsWithOptions:(unint64_t)options resultHandler:(id)handler
{
  v5 = _Block_copy(handler);
  selfCopy = self;
  _Block_release(v5);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (unint64_t)logContext
{
  v3 = OBJC_IVAR___PXStoryExceptionThrowingSongsProducer_logContext;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setLogContext:(unint64_t)context
{
  v5 = OBJC_IVAR___PXStoryExceptionThrowingSongsProducer_logContext;
  swift_beginAccess();
  *(&self->super.isa + v5) = context;
}

- (PXStoryExceptionThrowingSongsProducer)init
{
  *(&self->super.isa + OBJC_IVAR___PXStoryExceptionThrowingSongsProducer_logContext) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for StoryExceptionThrowingSongsProducer();
  return [(PXStoryExceptionThrowingSongsProducer *)&v3 init];
}

@end