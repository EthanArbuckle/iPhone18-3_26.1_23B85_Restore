@interface _UIDurationBounceAnimationSpec
+ (id)settingsControllerModule;
- (_TtC5UIKit30_UIDurationBounceAnimationSpec)initWithDefaultValues;
@end

@implementation _UIDurationBounceAnimationSpec

+ (id)settingsControllerModule
{
  sub_188E807A8();

  return v2;
}

- (_TtC5UIKit30_UIDurationBounceAnimationSpec)initWithDefaultValues
{
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_duration) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_bounce) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIDurationBounceAnimationSpec_delay) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for _UIDurationBounceAnimationSpec();
  return [(PTSettings *)&v3 initWithDefaultValues];
}

@end