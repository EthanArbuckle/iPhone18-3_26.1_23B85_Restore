@interface _UIFlexInteractionGlowContainerView
- (_UIFlexInteractionGlowContainerView)initWithCoder:(id)a3;
- (void)_privateSubview_setValue:(id)a3 forObservedLayerKeyPath:(id)a4;
@end

@implementation _UIFlexInteractionGlowContainerView

- (_UIFlexInteractionGlowContainerView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____UIFlexInteractionGlowContainerView_bigGlow;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIView) init];
  *(&self->super.super.super.isa + OBJC_IVAR____UIFlexInteractionGlowContainerView_littleGlow) = 0;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (void)_privateSubview_setValue:(id)a3 forObservedLayerKeyPath:(id)a4
{
  swift_unknownObjectRetain();
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(&v4);
}

@end