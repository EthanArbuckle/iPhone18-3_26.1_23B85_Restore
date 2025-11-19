@interface PXStoryExceptionThrowingSongsProducer
- (PXStoryExceptionThrowingSongsProducer)init;
- (id)requestSongsWithOptions:(unint64_t)a3 resultHandler:(id)a4;
- (unint64_t)logContext;
- (void)setLogContext:(unint64_t)a3;
@end

@implementation PXStoryExceptionThrowingSongsProducer

- (id)requestSongsWithOptions:(unint64_t)a3 resultHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = self;
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

- (void)setLogContext:(unint64_t)a3
{
  v5 = OBJC_IVAR___PXStoryExceptionThrowingSongsProducer_logContext;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (PXStoryExceptionThrowingSongsProducer)init
{
  *(&self->super.isa + OBJC_IVAR___PXStoryExceptionThrowingSongsProducer_logContext) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for StoryExceptionThrowingSongsProducer();
  return [(PXStoryExceptionThrowingSongsProducer *)&v3 init];
}

@end