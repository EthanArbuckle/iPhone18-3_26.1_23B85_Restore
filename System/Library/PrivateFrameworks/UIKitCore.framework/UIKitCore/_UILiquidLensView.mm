@interface _UILiquidLensView
- (CGRect)bounds;
- (CGRect)frame;
- (UIView)liftedContainerView;
- (UIView)overridePunchoutView;
- (UIView)restingBackgroundView;
- (_TtC5UIKit28_UILiquidLensViewVariantSpec)spec;
- (_UIPortalView)liftPortal;
- (double)alpha;
- (int64_t)style;
- (void)_removeAllAnimations:(BOOL)animations;
- (void)_visibilityDidChange;
- (void)actuallySetLifted:(BOOL)lifted animated:(BOOL)animated alongsideAnimations:(id)animations completion:(id)completion;
- (void)didMoveToWindow;
- (void)forceUnliftWithoutAnimations;
- (void)setAlpha:(double)alpha;
- (void)setBelowGlassWarpBackdrop:(id)backdrop;
- (void)setLiftPortal:(id)portal;
- (void)setLifted:(BOOL)lifted animated:(BOOL)animated alongsideAnimations:(id)animations completion:(id)completion;
- (void)setLiftedContentMode:(int64_t)mode;
- (void)setLiftedContentPunchout:(id)punchout;
- (void)setLiftedContentView:(id)view;
- (void)setOverridePunchoutView:(id)view;
- (void)setRestingBackgroundColor:(id)color;
- (void)setRestingShadowProperties:(id)properties;
- (void)setStyle:(int64_t)style;
- (void)setUnliftDelayTimer:(id)timer;
- (void)updateGlassPlacementIfNeededWithAnimated:(BOOL)animated;
- (void)updateProgressBasedAnimationsForPresentation:(BOOL)presentation;
- (void)updatePunchoutView;
- (void)updateRestingBackgroundView;
@end

@implementation _UILiquidLensView

- (int64_t)style
{
  glass = [(_UILiquidLensView *)self glass];
  v3 = *(&glass->super.super.super.isa + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_style);

  return v3;
}

- (void)setStyle:(int64_t)style
{
  selfCopy = self;
  glass = [(_UILiquidLensView *)selfCopy glass];
  *(&glass->super.super.super.isa + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_style) = style;
  sub_1891F7824();
}

- (UIView)liftedContainerView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setLiftedContentView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1891F8ED0(view);
}

- (void)setLiftedContentMode:(int64_t)mode
{
  v4 = OBJC_IVAR____UILiquidLensView_liftedContentMode;
  *(self + OBJC_IVAR____UILiquidLensView_liftedContentMode) = mode;
  selfCopy = self;
  glass = [(_UILiquidLensView *)selfCopy glass];
  [*(&glass->super.super.super.isa + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_liftedContentPortalView) setHidesSourceView_];

  [(_UILiquidLensView *)selfCopy updateGlassPlacementIfNeededWithAnimated:0];
}

- (UIView)overridePunchoutView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setOverridePunchoutView:(id)view
{
  swift_unknownObjectWeakAssign();

  [(_UILiquidLensView *)self updatePunchoutView];
}

- (void)setRestingBackgroundColor:(id)color
{
  v4 = *(self + OBJC_IVAR____UILiquidLensView_restingBackgroundColor);
  *(self + OBJC_IVAR____UILiquidLensView_restingBackgroundColor) = color;
  colorCopy = color;
  selfCopy = self;

  [(_UILiquidLensView *)selfCopy updateRestingBackgroundView];
}

- (void)setRestingShadowProperties:(id)properties
{
  v4 = *(self + OBJC_IVAR____UILiquidLensView_restingShadowProperties);
  *(self + OBJC_IVAR____UILiquidLensView_restingShadowProperties) = properties;
  propertiesCopy = properties;
  selfCopy = self;

  sub_1891F154C();
}

- (UIView)restingBackgroundView
{
  selfCopy = self;
  if ([(_UILiquidLensView *)selfCopy hasCustomRestingBackground])
  {
    restingBackground = [(_UILiquidLensView *)selfCopy restingBackground];
  }

  else
  {
    restingBackground = 0;
  }

  return restingBackground;
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UILiquidLensView;
  [(UIView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = _UILiquidLensView;
  [(UIView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)alpha
{
  v3.receiver = self;
  v3.super_class = _UILiquidLensView;
  [(UIView *)&v3 alpha];
  return result;
}

- (void)setAlpha:(double)alpha
{
  v7.receiver = self;
  v7.super_class = _UILiquidLensView;
  selfCopy = self;
  [(UIView *)&v7 setAlpha:alpha];
  if ([(_UILiquidLensView *)selfCopy liftedContentMode:v7.receiver])
  {
    liftedContentPunchout = [(_UILiquidLensView *)selfCopy liftedContentPunchout];
    if (liftedContentPunchout)
    {
      v6 = liftedContentPunchout;
      [(_UILiquidLensView *)selfCopy alpha];
      [(_UILiquidLensView *)v6 setAlpha:?];

      selfCopy = v6;
    }
  }
}

- (_UIPortalView)liftPortal
{
  selfCopy = self;
  v3 = sub_1891F1BC4();

  return v3;
}

- (void)setLiftPortal:(id)portal
{
  v4 = *(self + OBJC_IVAR____UILiquidLensView____lazy_storage___liftPortal);
  *(self + OBJC_IVAR____UILiquidLensView____lazy_storage___liftPortal) = portal;
  portalCopy = portal;
}

- (void)setBelowGlassWarpBackdrop:(id)backdrop
{
  v4 = *(self + OBJC_IVAR____UILiquidLensView_belowGlassWarpBackdrop);
  *(self + OBJC_IVAR____UILiquidLensView_belowGlassWarpBackdrop) = backdrop;
  backdropCopy = backdrop;
}

- (void)setLiftedContentPunchout:(id)punchout
{
  v4 = *(self + OBJC_IVAR____UILiquidLensView_liftedContentPunchout);
  *(self + OBJC_IVAR____UILiquidLensView_liftedContentPunchout) = punchout;
  punchoutCopy = punchout;
}

- (void)setUnliftDelayTimer:(id)timer
{
  v4 = *(self + OBJC_IVAR____UILiquidLensView_unliftDelayTimer);
  *(self + OBJC_IVAR____UILiquidLensView_unliftDelayTimer) = timer;
  timerCopy = timer;
}

- (void)_visibilityDidChange
{
  selfCopy = self;
  sub_1891F2EF8();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1891F3114();
}

- (void)forceUnliftWithoutAnimations
{
  selfCopy = self;
  unliftDelayTimer = [(_UILiquidLensView *)selfCopy unliftDelayTimer];
  if (unliftDelayTimer)
  {
    v3 = unliftDelayTimer;
    forceUnliftTimerWithoutAnimations = [(_UILiquidLensView *)selfCopy forceUnliftTimerWithoutAnimations];
    [(_UILiquidLensView *)selfCopy setForceUnliftTimerWithoutAnimations:1];
    [(NSTimer *)v3 fire];
    [(_UILiquidLensView *)selfCopy setUnliftDelayTimer:0];
    [(_UILiquidLensView *)selfCopy setForceUnliftTimerWithoutAnimations:forceUnliftTimerWithoutAnimations];
  }
}

- (void)setLifted:(BOOL)lifted animated:(BOOL)animated alongsideAnimations:(id)animations completion:(id)completion
{
  v10 = _Block_copy(animations);
  v11 = _Block_copy(completion);
  v12 = v11;
  if (v10)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    v10 = sub_188EB2CC4;
    if (v12)
    {
LABEL_3:
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      v12 = sub_1891F95B8;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  selfCopy = self;
  sub_1891F343C(lifted, animated, v10, v13, v12, v14);
  sub_188A55B8C(v12);
  sub_188A55B8C(v10);
}

- (void)actuallySetLifted:(BOOL)lifted animated:(BOOL)animated alongsideAnimations:(id)animations completion:(id)completion
{
  v10 = _Block_copy(animations);
  v11 = _Block_copy(completion);
  v12 = v11;
  if (v10)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    v10 = sub_188A4AA04;
    if (v12)
    {
LABEL_3:
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      v12 = sub_188AB8420;
      goto LABEL_6;
    }
  }

  else
  {
    v13 = 0;
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_6:
  selfCopy = self;
  sub_1891F3B30(lifted, animated, v10, v13, v12, v14);
  sub_188A55B8C(v12);
  sub_188A55B8C(v10);
}

- (void)updateGlassPlacementIfNeededWithAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_1891F56EC(animated);
}

- (void)updatePunchoutView
{
  selfCopy = self;
  sub_1891F5D20();
}

- (void)_removeAllAnimations:(BOOL)animations
{
  selfCopy = self;
  sub_1891F63B0(animations);
}

- (void)updateProgressBasedAnimationsForPresentation:(BOOL)presentation
{
  selfCopy = self;
  sub_1891F662C(presentation);
}

- (void)updateRestingBackgroundView
{
  selfCopy = self;
  sub_1891F6980();
}

- (_TtC5UIKit28_UILiquidLensViewVariantSpec)spec
{
  selfCopy = self;
  v3 = sub_1891F6AF8();

  return v3;
}

@end