@interface _UICloudChamber
+ (Class)layerClass;
- (_TtC5UIKit15_UICloudChamber)initWithCoder:(id)a3;
- (_TtC5UIKit15_UICloudChamber)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation _UICloudChamber

+ (Class)layerClass
{
  sub_188A34624(0, &qword_1EA92E868);

  return swift_getObjCClassFromMetadata();
}

- (_TtC5UIKit15_UICloudChamber)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC5UIKit15_UICloudChamber_emitterCell;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E6979360]) init];
  v5 = self + OBJC_IVAR____TtC5UIKit15_UICloudChamber_appliedSpriteHash;
  *v5 = 0;
  v5[8] = 1;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_188FB331C();
}

- (_TtC5UIKit15_UICloudChamber)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end