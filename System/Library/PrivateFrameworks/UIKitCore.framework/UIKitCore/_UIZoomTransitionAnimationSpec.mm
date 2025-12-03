@interface _UIZoomTransitionAnimationSpec
+ (id)settingsControllerModule;
- (void)setCornerRadiusAdjustment:(id)adjustment;
- (void)setDefaultValues;
- (void)setGeneral:(id)general;
- (void)setMorph:(id)morph;
- (void)setPosition:(id)position;
- (void)setTransform:(id)transform;
@end

@implementation _UIZoomTransitionAnimationSpec

- (void)setMorph:(id)morph
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_morph);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_morph) = morph;
  morphCopy = morph;
}

- (void)setTransform:(id)transform
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_transform);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_transform) = transform;
  transformCopy = transform;
}

- (void)setPosition:(id)position
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_position);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_position) = position;
  positionCopy = position;
}

- (void)setGeneral:(id)general
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_general);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_general) = general;
  generalCopy = general;
}

- (void)setCornerRadiusAdjustment:(id)adjustment
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_cornerRadiusAdjustment);
  *(&self->super.super.isa + OBJC_IVAR____TtC5UIKit30_UIZoomTransitionAnimationSpec_cornerRadiusAdjustment) = adjustment;
  adjustmentCopy = adjustment;
}

- (void)setDefaultValues
{
  selfCopy = self;
  sub_188FE0164();
}

+ (id)settingsControllerModule
{
  sub_188FE1160();

  return v2;
}

@end