@interface UIDetection
- (NSString)labelString;
- (NSString)text;
- (_TtC15UIUnderstanding11UIDetection)init;
- (_TtC15UIUnderstanding11UIDetection)initWithLabel:(int64_t)a3 confidence:(double)a4 text:(id)a5;
- (void)setText:(id)a3;
@end

@implementation UIDetection

- (NSString)labelString
{
  UIType.toString()();
  v2 = sub_2702B3FFC();

  return v2;
}

- (NSString)text
{
  v2 = self + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_2702B3FFC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setText:(id)a3
{
  if (a3)
  {
    v4 = sub_2702B402C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (_TtC15UIUnderstanding11UIDetection)initWithLabel:(int64_t)a3 confidence:(double)a4 text:(id)a5
{
  if (a5)
  {
    v8 = sub_2702B402C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = (self + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
  *v11 = 0;
  v11[1] = 0;
  *(self + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature) = 0;
  *(self + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) = a3;
  *(self + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) = a4;
  swift_beginAccess();
  *v11 = v8;
  v11[1] = v10;
  v13.receiver = self;
  v13.super_class = type metadata accessor for UIDetection();
  return [(UIDetection *)&v13 init];
}

- (_TtC15UIUnderstanding11UIDetection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end