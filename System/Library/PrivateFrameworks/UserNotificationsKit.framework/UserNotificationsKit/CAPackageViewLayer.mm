@interface CAPackageViewLayer
- (_TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer)init;
- (_TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer)initWithCoder:(id)a3;
- (_TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer)initWithLayer:(id)a3;
- (void)layoutSublayers;
@end

@implementation CAPackageViewLayer

- (void)layoutSublayers
{
  v2 = self;
  sub_270A4CBEC();
}

- (_TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer_packageLayer) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer_contentMode) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CAPackageViewLayer();
  return [(CAPackageViewLayer *)&v3 init];
}

- (_TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_270A89270();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer_packageLayer) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer_contentMode) = 0;
  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v4 = sub_270A89560();
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAPackageViewLayer();
  v5 = [(CAPackageViewLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

- (_TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer_packageLayer) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC20UserNotificationsKitP33_FEAE57ECABF8A8575F8E92CA6992345618CAPackageViewLayer_contentMode) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CAPackageViewLayer();
  v4 = a3;
  v5 = [(CAPackageViewLayer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end