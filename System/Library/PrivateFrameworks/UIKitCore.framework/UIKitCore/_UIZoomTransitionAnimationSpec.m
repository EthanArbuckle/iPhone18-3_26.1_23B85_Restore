@interface _UIZoomTransitionAnimationSpec
+ (id)settingsControllerModule;
- (void)setCornerRadiusAdjustment:(id)a3;
- (void)setDefaultValues;
- (void)setGeneral:(id)a3;
- (void)setMorph:(id)a3;
- (void)setPosition:(id)a3;
- (void)setTransform:(id)a3;
@end

@implementation _UIZoomTransitionAnimationSpec

- (void)setMorph:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_morph);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_morph) = a3;
  v3 = a3;
}

- (void)setTransform:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_transform);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_transform) = a3;
  v3 = a3;
}

- (void)setPosition:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_position);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_position) = a3;
  v3 = a3;
}

- (void)setGeneral:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_general);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_general) = a3;
  v3 = a3;
}

- (void)setCornerRadiusAdjustment:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_cornerRadiusAdjustment);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_cornerRadiusAdjustment) = a3;
  v3 = a3;
}

- (void)setDefaultValues
{
  v2 = self;
  sub_188FE0164();
}

+ (id)settingsControllerModule
{
  sub_188FE1160();

  return v2;
}

@end