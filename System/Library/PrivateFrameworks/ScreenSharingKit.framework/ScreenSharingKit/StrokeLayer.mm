@interface StrokeLayer
- (_TtC16ScreenSharingKit11StrokeLayer)init;
- (_TtC16ScreenSharingKit11StrokeLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
@end

@implementation StrokeLayer

- (void)layoutSublayers
{
  selfCopy = self;
  sub_264B3DB7C();
}

- (_TtC16ScreenSharingKit11StrokeLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterLayer) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_emitterCell) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeLayer) = 0;
  v2 = (self + OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_shapeBounds);
  *v2 = 0u;
  v2[1] = 0u;
  *(&self->super.super.isa + OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_path) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC16ScreenSharingKit11StrokeLayer_normalizedPath) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for StrokeLayer();
  return [(StrokeLayer *)&v4 init];
}

- (_TtC16ScreenSharingKit11StrokeLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_264B41664();
  swift_unknownObjectRelease();
  return sub_264B3ECA4(v4);
}

@end