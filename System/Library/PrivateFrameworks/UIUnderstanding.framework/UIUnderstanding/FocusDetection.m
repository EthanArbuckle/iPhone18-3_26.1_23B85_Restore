@interface FocusDetection
- (_TtC15UIUnderstanding14FocusDetection)init;
- (_TtC15UIUnderstanding14FocusDetection)initWithFocused:(BOOL)a3 confidence:(double)a4;
@end

@implementation FocusDetection

- (_TtC15UIUnderstanding14FocusDetection)initWithFocused:(BOOL)a3 confidence:(double)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_confidence) = a4;
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