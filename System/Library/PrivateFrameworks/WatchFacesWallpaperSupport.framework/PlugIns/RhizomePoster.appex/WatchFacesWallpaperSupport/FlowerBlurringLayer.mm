@interface FlowerBlurringLayer
- (_TtC13RhizomePoster19FlowerBlurringLayer)init;
- (_TtC13RhizomePoster19FlowerBlurringLayer)initWithLayer:(id)layer;
@end

@implementation FlowerBlurringLayer

- (_TtC13RhizomePoster19FlowerBlurringLayer)init
{
  self->CABackdropLayer_opaque[OBJC_IVAR____TtC13RhizomePoster19FlowerBlurringLayer_blurEnabled] = 0;
  v2 = &self->CABackdropLayer_opaque[OBJC_IVAR____TtC13RhizomePoster19FlowerBlurringLayer_blurRadiusKeyPath];
  *v2 = 0xD000000000000020;
  *(v2 + 1) = 0x8000000100039FC0;
  *&self->CABackdropLayer_opaque[OBJC_IVAR____TtC13RhizomePoster19FlowerBlurringLayer_blurRadius] = 0x4014000000000000;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FlowerBlurringLayer();
  return [(FlowerBlurringLayer *)&v4 init];
}

- (_TtC13RhizomePoster19FlowerBlurringLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_100037298();
  swift_unknownObjectRelease();
  self->CABackdropLayer_opaque[OBJC_IVAR____TtC13RhizomePoster19FlowerBlurringLayer_blurEnabled] = 0;
  v4 = &self->CABackdropLayer_opaque[OBJC_IVAR____TtC13RhizomePoster19FlowerBlurringLayer_blurRadiusKeyPath];
  *v4 = 0xD000000000000020;
  *(v4 + 1) = 0x8000000100039FC0;
  *&self->CABackdropLayer_opaque[OBJC_IVAR____TtC13RhizomePoster19FlowerBlurringLayer_blurRadius] = 0x4014000000000000;
  sub_1000039A8(v9, v9[3]);
  v5 = sub_100037548();
  v8.receiver = self;
  v8.super_class = type metadata accessor for FlowerBlurringLayer();
  v6 = [(FlowerBlurringLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  sub_1000039EC(v9);
  return v6;
}

@end