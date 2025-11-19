@interface _UIMagicMorphView
- (BOOL)isUserInteractionEnabled;
- (id)destinationFor:(id)a3;
- (void)addMilestone:(id)a3 named:(id)a4;
- (void)dealloc;
- (void)finalizeDestination;
- (void)layoutSubviews;
- (void)morphTo:(id)a3;
- (void)refreshWithPreview:(id)a3;
- (void)removeMilestoneWithNamed:(id)a3;
- (void)reset;
- (void)setBackgroundView:(id)a3;
- (void)setClippingView:(id)a3;
- (void)setCrossBlurWhenMorphing:(BOOL)a3;
- (void)setShadowIntensity:(float)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)setWantsEdgeAntialiasing:(BOOL)a3;
- (void)updateContentSize;
- (void)willMoveToWindow:(id)a3;
@end

@implementation _UIMagicMorphView

- (void)layoutSubviews
{
  v2 = self;
  sub_188D61A98();
}

- (void)setClippingView:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_clippingView);
  *(&self->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_clippingView) = a3;
  v3 = a3;
}

- (void)setWantsEdgeAntialiasing:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_1890DF484(v3);
}

- (void)setCrossBlurWhenMorphing:(BOOL)a3
{
  v3 = a3;
  v4 = self;
  sub_188D738F8(v3);
}

- (void)setShadowIntensity:(float)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_shadowIntensity);
  *(&self->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_shadowIntensity) = a3;
  if (v4 != a3)
  {
    v5 = self;
    sub_188D79A58();
  }
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1890DF7BC(a3);
}

- (BOOL)isUserInteractionEnabled
{
  v2 = self;
  v3 = sub_1890DF8C4();

  return v3 & 1;
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for _UIMagicMorphView();
  [(UIView *)&v4 setUserInteractionEnabled:v3];
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_multiLayerAssertion);
  v4 = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for _UIMagicMorphView();
  [(UIView *)&v5 dealloc];
}

- (void)refreshWithPreview:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890DFB38(v4);
}

- (void)morphTo:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188D6C074(v4);
}

- (id)destinationFor:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1890E03DC(v4);

  return v6;
}

- (void)reset
{
  v2 = self;
  sub_1890E0B5C();
}

- (void)finalizeDestination
{
  v2 = self;
  sub_1890E11BC();
}

- (void)willMoveToWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1890E1A24(a3);
}

- (void)updateContentSize
{
  *(&self->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_contentSizeDidChange) = 1;
  v2 = self;
  [(UIView *)v2 setNeedsLayout];
  if ([objc_opt_self() _isInAnimationBlock])
  {
    [(UIView *)v2 layoutIfNeeded];
  }

  sub_1890E07A8();
}

- (void)addMilestone:(id)a3 named:(id)a4
{
  v6 = sub_18A4A7288();
  v8 = v7;
  v9 = OBJC_IVAR____UIMagicMorphView_milestones;
  swift_beginAccess();
  v10 = a3;
  v11 = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(&self->super.super.super.isa + v9);
  *(&self->super.super.super.isa + v9) = 0x8000000000000000;
  sub_188E9D90C(v10, v6, v8, isUniquelyReferenced_nonNull_native);

  *(&self->super.super.super.isa + v9) = v13;
  swift_endAccess();
}

- (void)removeMilestoneWithNamed:(id)a3
{
  v4 = sub_18A4A7288();
  v6 = v5;
  swift_beginAccess();
  v7 = self;
  sub_188F27F18(0, v4, v6);
  swift_endAccess();
}

@end