@interface _UIToolbarSpec
+ (id)settingsControllerModule;
- (_TtC5UIKit14_UIToolbarSpec)initWithDefaultValues;
- (void)setDefaultValues;
- (void)setPadding:(id)a3;
@end

@implementation _UIToolbarSpec

- (void)setPadding:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding) = a3;
  v3 = a3;
}

- (void)setDefaultValues
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for _UIToolbarSpec();
  v2 = v4.receiver;
  [(PTSettings *)&v4 setDefaultValues];
  v3 = *&v2[OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding];
  [v3 setDefaultValues];
}

+ (id)settingsControllerModule
{
  sub_188F7D68C();

  return v2;
}

- (_TtC5UIKit14_UIToolbarSpec)initWithDefaultValues
{
  v3 = OBJC_IVAR____TtC5UIKit14_UIToolbarSpec_padding;
  type metadata accessor for _UIToolbarPaddingSpec();
  *(&self->super.super.isa + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for _UIToolbarSpec();
  return [(PTSettings *)&v5 initWithDefaultValues];
}

@end