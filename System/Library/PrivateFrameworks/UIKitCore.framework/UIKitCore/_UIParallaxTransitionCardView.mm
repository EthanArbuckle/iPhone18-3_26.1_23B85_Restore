@interface _UIParallaxTransitionCardView
- (_UIParallaxTransitionCardView)initWithCoder:(id)coder;
- (_UIVisualEffectViewBackdropCaptureGroup)backdropCaptureGroup;
- (void)setBackdropCaptureGroup:(id)group;
- (void)setBackdropView:(id)view;
- (void)updateProperties;
@end

@implementation _UIParallaxTransitionCardView

- (void)setBackdropView:(id)view
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____UIParallaxTransitionCardView_backdropView);
  *(&self->super.super.super.isa + OBJC_IVAR____UIParallaxTransitionCardView_backdropView) = view;
  viewCopy = view;
}

- (_UIParallaxTransitionCardView)initWithCoder:(id)coder
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
  selfCopy = self;
  backdropView = [(_UIParallaxTransitionCardView *)selfCopy backdropView];
  if (backdropView)
  {
    v4 = backdropView;
    captureGroup = [(_UIVisualEffectBackdropView *)backdropView captureGroup];
  }

  else
  {
    captureGroup = 0;
  }

  return captureGroup;
}

- (void)setBackdropCaptureGroup:(id)group
{
  groupCopy = group;
  selfCopy = self;
  sub_1891E2800(group);
}

- (void)updateProperties
{
  selfCopy = self;
  sub_1891E2B04();
}

@end