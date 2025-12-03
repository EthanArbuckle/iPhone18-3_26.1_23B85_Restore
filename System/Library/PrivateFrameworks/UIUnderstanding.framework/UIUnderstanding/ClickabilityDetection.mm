@interface ClickabilityDetection
- (_TtC15UIUnderstanding21ClickabilityDetection)init;
- (_TtC15UIUnderstanding21ClickabilityDetection)initWithClickable:(BOOL)clickable clickType:(int64_t)type confidence:(double)confidence;
@end

@implementation ClickabilityDetection

- (_TtC15UIUnderstanding21ClickabilityDetection)initWithClickable:(BOOL)clickable clickType:(int64_t)type confidence:(double)confidence
{
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable) = clickable;
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType) = type;
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence) = confidence;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ClickabilityDetection();
  return [(ClickabilityDetection *)&v6 init];
}

- (_TtC15UIUnderstanding21ClickabilityDetection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end