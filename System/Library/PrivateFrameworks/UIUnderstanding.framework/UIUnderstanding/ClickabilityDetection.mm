@interface ClickabilityDetection
- (_TtC15UIUnderstanding21ClickabilityDetection)init;
- (_TtC15UIUnderstanding21ClickabilityDetection)initWithClickable:(BOOL)a3 clickType:(int64_t)a4 confidence:(double)a5;
@end

@implementation ClickabilityDetection

- (_TtC15UIUnderstanding21ClickabilityDetection)initWithClickable:(BOOL)a3 clickType:(int64_t)a4 confidence:(double)a5
{
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence) = a5;
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