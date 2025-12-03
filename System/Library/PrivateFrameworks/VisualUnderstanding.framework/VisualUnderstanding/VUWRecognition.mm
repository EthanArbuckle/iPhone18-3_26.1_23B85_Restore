@interface VUWRecognition
- (VUWRecognition)init;
- (VUWRecognition)initWithScore:(float)score tag:(id)tag matchType:(int64_t)type;
- (void)setTag:(id)tag;
@end

@implementation VUWRecognition

- (void)setTag:(id)tag
{
  v4 = *(&self->super.isa + OBJC_IVAR___VUWRecognition_tag);
  *(&self->super.isa + OBJC_IVAR___VUWRecognition_tag) = tag;
  tagCopy = tag;
}

- (VUWRecognition)initWithScore:(float)score tag:(id)tag matchType:(int64_t)type
{
  v5 = OBJC_IVAR___VUWRecognition_tag;
  *(&self->super.isa + OBJC_IVAR___VUWRecognition_tag) = 0;
  *(&self->super.isa + OBJC_IVAR___VUWRecognition_score) = score;
  *(&self->super.isa + v5) = tag;
  *(&self->super.isa + OBJC_IVAR___VUWRecognition_matchType) = type;
  v8.receiver = self;
  v8.super_class = VUWRecognition;
  tagCopy = tag;
  return [(VUWRecognition *)&v8 init];
}

- (VUWRecognition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end