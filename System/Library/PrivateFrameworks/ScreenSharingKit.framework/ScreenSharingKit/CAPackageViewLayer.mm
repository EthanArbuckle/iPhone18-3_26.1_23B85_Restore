@interface CAPackageViewLayer
- (_TtC16ScreenSharingKit18CAPackageViewLayer)init;
- (_TtC16ScreenSharingKit18CAPackageViewLayer)initWithCoder:(id)coder;
- (_TtC16ScreenSharingKit18CAPackageViewLayer)initWithLayer:(id)layer;
- (void)layoutSublayers;
@end

@implementation CAPackageViewLayer

- (void)layoutSublayers
{
  selfCopy = self;
  sub_264A58EA0();
}

- (_TtC16ScreenSharingKit18CAPackageViewLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAPackageViewLayer();
  return [(CAPackageViewLayer *)&v3 init];
}

- (_TtC16ScreenSharingKit18CAPackageViewLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_264B41664();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer) = 0;
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v4 = sub_264B41A94();
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAPackageViewLayer();
  v5 = [(CAPackageViewLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

- (_TtC16ScreenSharingKit18CAPackageViewLayer)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC16ScreenSharingKit18CAPackageViewLayer_packageLayer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAPackageViewLayer();
  coderCopy = coder;
  v5 = [(CAPackageViewLayer *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end