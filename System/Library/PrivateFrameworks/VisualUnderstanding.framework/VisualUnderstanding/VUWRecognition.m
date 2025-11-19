@interface VUWRecognition
- (VUWRecognition)init;
- (VUWRecognition)initWithScore:(float)a3 tag:(id)a4 matchType:(int64_t)a5;
- (void)setTag:(id)a3;
@end

@implementation VUWRecognition

- (void)setTag:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___VUWRecognition_tag);
  *(&self->super.isa + OBJC_IVAR___VUWRecognition_tag) = a3;
  v3 = a3;
}

- (VUWRecognition)initWithScore:(float)a3 tag:(id)a4 matchType:(int64_t)a5
{
  v5 = OBJC_IVAR___VUWRecognition_tag;
  *(&self->super.isa + OBJC_IVAR___VUWRecognition_tag) = 0;
  *(&self->super.isa + OBJC_IVAR___VUWRecognition_score) = a3;
  *(&self->super.isa + v5) = a4;
  *(&self->super.isa + OBJC_IVAR___VUWRecognition_matchType) = a5;
  v8.receiver = self;
  v8.super_class = VUWRecognition;
  v6 = a4;
  return [(VUWRecognition *)&v8 init];
}

- (VUWRecognition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end