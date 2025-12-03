@interface FocusDetection
- (_TtC15UIUnderstanding14FocusDetection)init;
- (_TtC15UIUnderstanding14FocusDetection)initWithFocused:(BOOL)focused confidence:(double)confidence;
@end

@implementation FocusDetection

- (_TtC15UIUnderstanding14FocusDetection)initWithFocused:(BOOL)focused confidence:(double)confidence
{
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused) = focused;
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_confidence) = confidence;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FocusDetection();
  return [(FocusDetection *)&v5 init];
}

- (_TtC15UIUnderstanding14FocusDetection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end