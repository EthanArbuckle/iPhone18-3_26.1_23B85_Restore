@interface ExtragalacticBannerLayer
- (_TtC19ExtragalacticPoster24ExtragalacticBannerLayer)init;
- (_TtC19ExtragalacticPoster24ExtragalacticBannerLayer)initWithCoder:(id)a3;
- (_TtC19ExtragalacticPoster24ExtragalacticBannerLayer)initWithLayer:(id)a3;
@end

@implementation ExtragalacticBannerLayer

- (_TtC19ExtragalacticPoster24ExtragalacticBannerLayer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ExtragalacticBannerLayer();
  return [(BannerLayer *)&v3 init];
}

- (_TtC19ExtragalacticPoster24ExtragalacticBannerLayer)initWithLayer:(id)a3
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

- (_TtC19ExtragalacticPoster24ExtragalacticBannerLayer)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ExtragalacticBannerLayer();
  v4 = a3;
  v5 = [(BannerLayer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end