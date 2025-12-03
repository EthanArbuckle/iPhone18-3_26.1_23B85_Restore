@interface ExtragalacticBannerLayer
- (_TtC19ExtragalacticPoster24ExtragalacticBannerLayer)init;
- (_TtC19ExtragalacticPoster24ExtragalacticBannerLayer)initWithCoder:(id)coder;
- (_TtC19ExtragalacticPoster24ExtragalacticBannerLayer)initWithLayer:(id)layer;
@end

@implementation ExtragalacticBannerLayer

- (_TtC19ExtragalacticPoster24ExtragalacticBannerLayer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExtragalacticBannerLayer();
  return [(BannerLayer *)&v3 init];
}

- (_TtC19ExtragalacticPoster24ExtragalacticBannerLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_100013AA8();
  swift_unknownObjectRelease();
  sub_100003518(v8, v8[3]);
  v4 = sub_100013C78();
  v7.receiver = self;
  v7.super_class = type metadata accessor for ExtragalacticBannerLayer();
  v5 = [(BannerLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  sub_10000254C(v8);
  return v5;
}

- (_TtC19ExtragalacticPoster24ExtragalacticBannerLayer)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ExtragalacticBannerLayer();
  coderCopy = coder;
  v5 = [(BannerLayer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end