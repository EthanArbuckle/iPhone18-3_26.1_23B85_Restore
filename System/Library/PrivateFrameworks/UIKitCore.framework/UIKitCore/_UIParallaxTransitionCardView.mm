@interface _UIParallaxTransitionCardView
- (_UIParallaxTransitionCardView)initWithCoder:(id)a3;
- (_UIVisualEffectViewBackdropCaptureGroup)backdropCaptureGroup;
- (void)setBackdropCaptureGroup:(id)a3;
- (void)setBackdropView:(id)a3;
- (void)updateProperties;
@end

@implementation _UIParallaxTransitionCardView

- (void)setBackdropView:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____UIParallaxTransitionCardView_backdropView);
  *(&self->super.super.super.isa + OBJC_IVAR____UIParallaxTransitionCardView_backdropView) = a3;
  v3 = a3;
}

- (_UIParallaxTransitionCardView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____UIParallaxTransitionCardView_contentView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UIView) init];
  *(&self->super.super.super.isa + OBJC_IVAR____UIParallaxTransitionCardView_backdropView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____UIParallaxTransitionCardView_roundsCorners) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____UIParallaxTransitionCardView_hasShadow) = 1;
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (_UIVisualEffectViewBackdropCaptureGroup)backdropCaptureGroup
{
  v2 = self;
  v3 = [(_UIParallaxTransitionCardView *)v2 backdropView];
  if (v3)
  {
    v4 = v3;
    v5 = [(_UIVisualEffectBackdropView *)v3 captureGroup];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setBackdropCaptureGroup:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1891E2800(a3);
}

- (void)updateProperties
{
  v2 = self;
  sub_1891E2B04();
}

@end