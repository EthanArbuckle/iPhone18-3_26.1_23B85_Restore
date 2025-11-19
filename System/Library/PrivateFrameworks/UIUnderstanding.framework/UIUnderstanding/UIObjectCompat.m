@interface UIObjectCompat
- (NSArray)children;
- (NSString)description;
- (NSUUID)id;
- (UIObjectCompat)init;
- (UIObjectCompat)initWithDetection:(id)a3 clickable:(id)a4 focused:(id)a5 icon:(id)a6 boundingBox:(id)a7 children:(id)a8;
- (UIObjectCompat)initWithLabel:(int64_t)a3 confidence:(double)a4 text:(id)a5 boundingBox:(id)a6 children:(id)a7 clickable:(BOOL)a8 focused:(BOOL)a9;
- (_TtC15UIUnderstanding11BoundingBox)boundingBox;
- (_TtC15UIUnderstanding11UIDetection)detection;
- (_TtC15UIUnderstanding13IconDetection)iconDetection;
- (_TtC15UIUnderstanding14FocusDetection)focusDetection;
- (_TtC15UIUnderstanding21ClickabilityDetection)clickDetection;
- (void)setBoundingBox:(id)a3;
- (void)setChildren:(id)a3;
- (void)setDetection:(id)a3;
- (void)setId:(id)a3;
@end

@implementation UIObjectCompat

- (NSUUID)id
{
  v3 = sub_2702B3CEC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___UIObjectCompat_id;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = sub_2702B3CBC();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)setId:(id)a3
{
  v4 = sub_2702B3CEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2702B3CCC();
  v8 = OBJC_IVAR___UIObjectCompat_id;
  swift_beginAccess();
  v9 = *(v5 + 40);
  v10 = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (_TtC15UIUnderstanding11UIDetection)detection
{
  v3 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setDetection:(id)a3
{
  v5 = OBJC_IVAR___UIObjectCompat_detection;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (_TtC15UIUnderstanding11BoundingBox)boundingBox
{
  v3 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBoundingBox:(id)a3
{
  v5 = OBJC_IVAR___UIObjectCompat_boundingBox;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (_TtC15UIUnderstanding13IconDetection)iconDetection
{
  v3 = OBJC_IVAR___UIObjectCompat_iconDetection;
  swift_beginAccess();
  return *(self + v3);
}

- (_TtC15UIUnderstanding21ClickabilityDetection)clickDetection
{
  v3 = OBJC_IVAR___UIObjectCompat_clickDetection;
  swift_beginAccess();
  return *(self + v3);
}

- (_TtC15UIUnderstanding14FocusDetection)focusDetection
{
  v3 = OBJC_IVAR___UIObjectCompat_focusDetection;
  swift_beginAccess();
  return *(self + v3);
}

- (NSArray)children
{
  type metadata accessor for UIObject();

  v2 = sub_2702B41AC();

  return v2;
}

- (void)setChildren:(id)a3
{
  type metadata accessor for UIObject();
  *(self + OBJC_IVAR___UIObjectCompat_groupingInfo + 24) = sub_2702B41BC();
}

- (UIObjectCompat)initWithDetection:(id)a3 clickable:(id)a4 focused:(id)a5 icon:(id)a6 boundingBox:(id)a7 children:(id)a8
{
  type metadata accessor for UIObject();
  v13 = sub_2702B41BC();
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = sub_27028121C(v14, a4, a5, a6, a7, v13);

  return v18;
}

- (UIObjectCompat)initWithLabel:(int64_t)a3 confidence:(double)a4 text:(id)a5 boundingBox:(id)a6 children:(id)a7 clickable:(BOOL)a8 focused:(BOOL)a9
{
  if (a5)
  {
    v14 = sub_2702B402C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  type metadata accessor for UIObject();
  v17 = sub_2702B41BC();
  return UIObject.init(label:confidence:text:boundingBox:children:clickable:focused:)(a3, v14, v16, a6, a4, v17, a8, a9);
}

- (NSString)description
{
  v2 = self;
  sub_27027F510();

  v3 = sub_2702B3FFC();

  return v3;
}

- (UIObjectCompat)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end