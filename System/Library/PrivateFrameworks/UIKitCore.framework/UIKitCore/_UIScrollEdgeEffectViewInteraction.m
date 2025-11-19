@interface _UIScrollEdgeEffectViewInteraction
- (BOOL)needsPockets;
- (NSString)description;
- (UIEdgeInsets)effectInsets;
- (UIView)_view;
- (UIView)view;
- (id)debugInfoVerbose:(BOOL)a3;
- (id)edgeEffectFor:(unint64_t)a3;
- (id)existingPocketFor:(unint64_t)a3;
- (id)forcingPocketFor:(unint64_t)a3;
- (void)_scrollPocketRegistrationInteractionDidInvalidatePosition:(id)a3;
- (void)_viewVisibilityDidChange;
- (void)appendDescriptionToStream:(id)a3;
- (void)backgroundColorDidChange;
- (void)setBottomPocket:(id)a3;
- (void)setIsEnabled:(BOOL)a3;
- (void)setLeftPocket:(id)a3;
- (void)setRegistrationInteraction:(id)a3;
- (void)setRightPocket:(id)a3;
- (void)setTopPocket:(id)a3;
- (void)set_view:(id)a3;
- (void)updateEffectAndCaptureViewFrames;
- (void)updatePocket:(id)a3 contentRect:(CGRect)a4 velocity:(double)a5 isTracking:(BOOL)a6 shouldAnimateVisibility:(BOOL)a7;
- (void)updateScrollPocketCollectorModelHidden;
- (void)updateWithContentRect:(CGRect)a3 velocity:(double)a4 isTracking:(BOOL)a5 shouldAnimateVisibility:(BOOL)a6;
@end

@implementation _UIScrollEdgeEffectViewInteraction

- (UIView)_view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)set_view:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v6 = a3;
  v7 = self;
  sub_189046E5C(Strong);
}

- (UIView)view
{
  v2 = [(_UIScrollEdgeEffectViewInteraction *)self _view];

  return v2;
}

- (id)edgeEffectFor:(unint64_t)a3
{
  v4 = self;
  v5 = sub_189047034(a3);

  return v5;
}

- (void)setIsEnabled:(BOOL)a3
{
  v4 = *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_isEnabled);
  *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_isEnabled) = a3;
  if (v4 != a3)
  {
    v6 = self;
    [(_UIScrollEdgeEffectViewInteraction *)v6 updateScrollPocketCollectorModelHidden];
    v5 = [(_UIScrollEdgeEffectViewInteraction *)v6 view];
    [(UIView *)v5 setNeedsLayout];
  }
}

- (void)setRegistrationInteraction:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_registrationInteraction);
  *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_registrationInteraction) = a3;
  v3 = a3;
}

- (void)setTopPocket:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_topPocket);
  *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_topPocket) = a3;
  v3 = a3;
}

- (void)setLeftPocket:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_leftPocket);
  *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_leftPocket) = a3;
  v3 = a3;
}

- (void)setBottomPocket:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_bottomPocket);
  *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_bottomPocket) = a3;
  v3 = a3;
}

- (void)setRightPocket:(id)a3
{
  v4 = *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_rightPocket);
  *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_rightPocket) = a3;
  v3 = a3;
}

- (id)existingPocketFor:(unint64_t)a3
{
  v4 = self;
  v5 = sub_1890473E0(a3);

  return v5;
}

- (id)forcingPocketFor:(unint64_t)a3
{
  v4 = self;
  v5 = sub_189047484(a3);

  return v5;
}

- (BOOL)needsPockets
{
  v2 = self;
  v3 = sub_189047838();

  return v3 & 1;
}

- (UIEdgeInsets)effectInsets
{
  v2 = self;
  sub_189047B5C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)updateScrollPocketCollectorModelHidden
{
  v2 = self;
  sub_189048130();
}

- (void)updateWithContentRect:(CGRect)a3 velocity:(double)a4 isTracking:(BOOL)a5 shouldAnimateVisibility:(BOOL)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = self;
  sub_18904834C(a5, a6, x, y, width, height, a4);
}

- (void)updateEffectAndCaptureViewFrames
{
  v2 = self;
  sub_1890485E8();
}

- (void)updatePocket:(id)a3 contentRect:(CGRect)a4 velocity:(double)a5 isTracking:(BOOL)a6 shouldAnimateVisibility:(BOOL)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a3;
  v17 = self;
  sub_189048728(a3, a6, a7, x, y, width, height, a5);
}

- (void)backgroundColorDidChange
{
  v2 = self;
  sub_189049910();
}

- (void)_scrollPocketRegistrationInteractionDidInvalidatePosition:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_18904AE58();
}

- (void)_viewVisibilityDidChange
{
  v2 = self;
  sub_189049AA4();
}

- (NSString)description
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 descriptionForRootObject_];
  if (!v5)
  {
    sub_18A4A7288();
    v5 = sub_18A4A7258();
  }

  return v5;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_189049D24(v4);
}

- (id)debugInfoVerbose:(BOOL)a3
{
  v4 = self;
  sub_18904A2F4(a3);

  v5 = sub_18A4A7258();

  return v5;
}

@end