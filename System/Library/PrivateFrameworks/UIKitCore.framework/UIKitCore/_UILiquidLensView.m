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
- (void)_removeAllAnimations:(BOOL)a3;
- (void)_visibilityDidChange;
- (void)actuallySetLifted:(BOOL)a3 animated:(BOOL)a4 alongsideAnimations:(id)a5 completion:(id)a6;
- (void)didMoveToWindow;
- (void)forceUnliftWithoutAnimations;
- (void)setAlpha:(double)a3;
- (void)setBelowGlassWarpBackdrop:(id)a3;
- (void)setLiftPortal:(id)a3;
- (void)setLifted:(BOOL)a3 animated:(BOOL)a4 alongsideAnimations:(id)a5 completion:(id)a6;
- (void)setLiftedContentMode:(int64_t)a3;
- (void)setLiftedContentPunchout:(id)a3;
- (void)setLiftedContentView:(id)a3;
- (void)setOverridePunchoutView:(id)a3;
- (void)setRestingBackgroundColor:(id)a3;
- (void)setRestingShadowProperties:(id)a3;
- (void)setStyle:(int64_t)a3;
- (void)setUnliftDelayTimer:(id)a3;
- (void)updateGlassPlacementIfNeededWithAnimated:(BOOL)a3;
- (void)updateProgressBasedAnimationsForPresentation:(BOOL)a3;
- (void)updatePunchoutView;
- (void)updateRestingBackgroundView;
@end

@implementation _UILiquidLensView

- (int64_t)style
{
  v2 = [(_UILiquidLensView *)self glass];
  v3 = *(&v2->super.super.super.isa + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_style);

  return v3;
}

- (void)setStyle:(int64_t)a3
{
  v5 = self;
  v4 = [(_UILiquidLensView *)v5 glass];
  *(&v4->super.super.super.isa + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_style) = a3;
  sub_1891F7824();
}

- (UIView)liftedContainerView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setLiftedContentView:(id)a3
{
  v6 = a3;
  v5 = self;
  sub_1891F8ED0(a3);
}

- (void)setLiftedContentMode:(int64_t)a3
{
  v4 = OBJC_IVAR____UILiquidLensView_liftedContentMode;
  *(self + OBJC_IVAR____UILiquidLensView_liftedContentMode) = a3;
  v6 = self;
  v5 = [(_UILiquidLensView *)v6 glass];
  [*(&v5->super.super.super.isa + OBJC_IVAR____TtCE5UIKitCSo17_UILiquidLensViewP33_4C400BD973F5E4E0B779D1A21A7AEB2714ClearGlassView_liftedContentPortalView) setHidesSourceView_];

  [(_UILiquidLensView *)v6 updateGlassPlacementIfNeededWithAnimated:0];
}

- (UIView)overridePunchoutView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setOverridePunchoutView:(id)a3
{
  swift_unknownObjectWeakAssign();

  [(_UILiquidLensView *)self updatePunchoutView];
}

- (void)setRestingBackgroundColor:(id)a3
{
  v4 = *(self + OBJC_IVAR____UILiquidLensView_restingBackgroundColor);
  *(self + OBJC_IVAR____UILiquidLensView_restingBackgroundColor) = a3;
  v5 = a3;
  v6 = self;

  [(_UILiquidLensView *)v6 updateRestingBackgroundView];
}

- (void)setRestingShadowProperties:(id)a3
{
  v4 = *(self + OBJC_IVAR____UILiquidLensView_restingShadowProperties);
  *(self + OBJC_IVAR____UILiquidLensView_restingShadowProperties) = a3;
  v5 = a3;
  v6 = self;

  sub_1891F154C();
}

- (UIView)restingBackgroundView
{
  v2 = self;
  if ([(_UILiquidLensView *)v2 hasCustomRestingBackground])
  {
    v3 = [(_UILiquidLensView *)v2 restingBackground];
  }

  else
  {
    v3 = 0;
  }

  return v3;
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

- (void)setAlpha:(double)a3
{
  v7.receiver = self;
  v7.super_class = _UILiquidLensView;
  v4 = self;
  [(UIView *)&v7 setAlpha:a3];
  if ([(_UILiquidLensView *)v4 liftedContentMode:v7.receiver])
  {
    v5 = [(_UILiquidLensView *)v4 liftedContentPunchout];
    if (v5)
    {
      v6 = v5;
      [(_UILiquidLensView *)v4 alpha];
      [(_UILiquidLensView *)v6 setAlpha:?];

      v4 = v6;
    }
  }
}

- (_UIPortalView)liftPortal
{
  v2 = self;
  v3 = sub_1891F1BC4();

  return v3;
}

- (void)setLiftPortal:(id)a3
{
  v4 = *(self + OBJC_IVAR____UILiquidLensView____lazy_storage___liftPortal);
  *(self + OBJC_IVAR____UILiquidLensView____lazy_storage___liftPortal) = a3;
  v3 = a3;
}

- (void)setBelowGlassWarpBackdrop:(id)a3
{
  v4 = *(self + OBJC_IVAR____UILiquidLensView_belowGlassWarpBackdrop);
  *(self + OBJC_IVAR____UILiquidLensView_belowGlassWarpBackdrop) = a3;
  v3 = a3;
}

- (void)setLiftedContentPunchout:(id)a3
{
  v4 = *(self + OBJC_IVAR____UILiquidLensView_liftedContentPunchout);
  *(self + OBJC_IVAR____UILiquidLensView_liftedContentPunchout) = a3;
  v3 = a3;
}

- (void)setUnliftDelayTimer:(id)a3
{
  v4 = *(self + OBJC_IVAR____UILiquidLensView_unliftDelayTimer);
  *(self + OBJC_IVAR____UILiquidLensView_unliftDelayTimer) = a3;
  v3 = a3;
}

- (void)_visibilityDidChange
{
  v2 = self;
  sub_1891F2EF8();
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_1891F3114();
}

- (void)forceUnliftWithoutAnimations
{
  v5 = self;
  v2 = [(_UILiquidLensView *)v5 unliftDelayTimer];
  if (v2)
  {
    v3 = v2;
    v4 = [(_UILiquidLensView *)v5 forceUnliftTimerWithoutAnimations];
    [(_UILiquidLensView *)v5 setForceUnliftTimerWithoutAnimations:1];
    [(NSTimer *)v3 fire];
    [(_UILiquidLensView *)v5 setUnliftDelayTimer:0];
    [(_UILiquidLensView *)v5 setForceUnliftTimerWithoutAnimations:v4];
  }
}

- (void)setLifted:(BOOL)a3 animated:(BOOL)a4 alongsideAnimations:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a5);
  v11 = _Block_copy(a6);
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
  v15 = self;
  sub_1891F343C(a3, a4, v10, v13, v12, v14);
  sub_188A55B8C(v12);
  sub_188A55B8C(v10);
}

- (void)actuallySetLifted:(BOOL)a3 animated:(BOOL)a4 alongsideAnimations:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a5);
  v11 = _Block_copy(a6);
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
  v15 = self;
  sub_1891F3B30(a3, a4, v10, v13, v12, v14);
  sub_188A55B8C(v12);
  sub_188A55B8C(v10);
}

- (void)updateGlassPlacementIfNeededWithAnimated:(BOOL)a3
{
  v4 = self;
  sub_1891F56EC(a3);
}

- (void)updatePunchoutView
{
  v2 = self;
  sub_1891F5D20();
}

- (void)_removeAllAnimations:(BOOL)a3
{
  v4 = self;
  sub_1891F63B0(a3);
}

- (void)updateProgressBasedAnimationsForPresentation:(BOOL)a3
{
  v4 = self;
  sub_1891F662C(a3);
}

- (void)updateRestingBackgroundView
{
  v2 = self;
  sub_1891F6980();
}

- (_TtC5UIKit28_UILiquidLensViewVariantSpec)spec
{
  v2 = self;
  v3 = sub_1891F6AF8();

  return v3;
}

@end