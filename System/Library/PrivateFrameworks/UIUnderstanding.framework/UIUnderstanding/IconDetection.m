@interface IconDetection
- (NSString)labelString;
- (_TtC15UIUnderstanding13IconDetection)init;
- (_TtC15UIUnderstanding13IconDetection)initWithLabel:(int64_t)a3 confidence:(double)a4;
@end

@implementation IconDetection

- (NSString)labelString
{
  IconLabel.toString()();
  v2 = sub_2702B3FFC();

  return v2;
}

- (_TtC15UIUnderstanding13IconDetection)initWithLabel:(int64_t)a3 confidence:(double)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding13IconDetection_label) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC15UIUnderstanding13IconDetection_confidence) = a4;
  v5.receiver = self;
  v5.super_class = type metadata accessor for IconDetection();
  return [(IconDetection *)&v5 init];
}

- (_TtC15UIUnderstanding13IconDetection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end