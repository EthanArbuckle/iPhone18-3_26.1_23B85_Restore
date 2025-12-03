@interface BannerLayer
- (_TtC19ExtragalacticPoster11BannerLayer)init;
- (_TtC19ExtragalacticPoster11BannerLayer)initWithCoder:(id)coder;
- (_TtC19ExtragalacticPoster11BannerLayer)initWithLayer:(id)layer;
@end

@implementation BannerLayer

- (_TtC19ExtragalacticPoster11BannerLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_shapeLayers) = &_swiftEmptyArrayStorage;
  v3.receiver = self;
  v3.super_class = type metadata accessor for BannerLayer();
  return [(BannerLayer *)&v3 init];
}

- (_TtC19ExtragalacticPoster11BannerLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_100013AA8();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_shapeLayers) = &_swiftEmptyArrayStorage;
  sub_100003518(v8, v8[3]);
  v4 = sub_100013C78();
  v7.receiver = self;
  v7.super_class = type metadata accessor for BannerLayer();
  v5 = [(BannerLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  sub_10000254C(v8);
  return v5;
}

- (_TtC19ExtragalacticPoster11BannerLayer)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_descriptor) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC19ExtragalacticPoster11BannerLayer_shapeLayers) = &_swiftEmptyArrayStorage;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BannerLayer();
  coderCopy = coder;
  v5 = [(BannerLayer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end