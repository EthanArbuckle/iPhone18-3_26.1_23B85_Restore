@interface _UIMagicMorphView
- (BOOL)isUserInteractionEnabled;
- (id)destinationFor:(id)for;
- (void)addMilestone:(id)milestone named:(id)named;
- (void)dealloc;
- (void)finalizeDestination;
- (void)layoutSubviews;
- (void)morphTo:(id)to;
- (void)refreshWithPreview:(id)preview;
- (void)removeMilestoneWithNamed:(id)named;
- (void)reset;
- (void)setBackgroundView:(id)view;
- (void)setClippingView:(id)view;
- (void)setCrossBlurWhenMorphing:(BOOL)morphing;
- (void)setShadowIntensity:(float)intensity;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)setWantsEdgeAntialiasing:(BOOL)antialiasing;
- (void)updateContentSize;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIMagicMorphView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_188D61A98();
}

- (void)setClippingView:(id)view
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_clippingView);
  *(&self->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_clippingView) = view;
  viewCopy = view;
}

- (void)setWantsEdgeAntialiasing:(BOOL)antialiasing
{
  antialiasingCopy = antialiasing;
  selfCopy = self;
  sub_1890DF484(antialiasingCopy);
}

- (void)setCrossBlurWhenMorphing:(BOOL)morphing
{
  morphingCopy = morphing;
  selfCopy = self;
  sub_188D738F8(morphingCopy);
}

- (void)setShadowIntensity:(float)intensity
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_shadowIntensity);
  *(&self->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_shadowIntensity) = intensity;
  if (v4 != intensity)
  {
    selfCopy = self;
    sub_188D79A58();
  }
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1890DF7BC(view);
}

- (BOOL)isUserInteractionEnabled
{
  selfCopy = self;
  v3 = sub_1890DF8C4();

  return v3 & 1;
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4.receiver = self;
  v4.super_class = type metadata accessor for _UIMagicMorphView();
  [(UIView *)&v4 setUserInteractionEnabled:enabledCopy];
}

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_multiLayerAssertion);
  selfCopy = self;
  if (v3)
  {
    [v3 invalidate];
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for _UIMagicMorphView();
  [(UIView *)&v5 dealloc];
}

- (void)refreshWithPreview:(id)preview
{
  previewCopy = preview;
  selfCopy = self;
  sub_1890DFB38(previewCopy);
}

- (void)morphTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  sub_188D6C074(toCopy);
}

- (id)destinationFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_1890E03DC(forCopy);

  return v6;
}

- (void)reset
{
  selfCopy = self;
  sub_1890E0B5C();
}

- (void)finalizeDestination
{
  selfCopy = self;
  sub_1890E11BC();
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  sub_1890E1A24(window);
}

- (void)updateContentSize
{
  *(&self->super.super.super.isa + OBJC_IVAR____UIMagicMorphView_contentSizeDidChange) = 1;
  selfCopy = self;
  [(UIView *)selfCopy setNeedsLayout];
  if ([objc_opt_self() _isInAnimationBlock])
  {
    [(UIView *)selfCopy layoutIfNeeded];
  }

  sub_1890E07A8();
}

- (void)addMilestone:(id)milestone named:(id)named
{
  v6 = sub_18A4A7288();
  v8 = v7;
  v9 = OBJC_IVAR____UIMagicMorphView_milestones;
  swift_beginAccess();
  milestoneCopy = milestone;
  selfCopy = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(&self->super.super.super.isa + v9);
  *(&self->super.super.super.isa + v9) = 0x8000000000000000;
  sub_188E9D90C(milestoneCopy, v6, v8, isUniquelyReferenced_nonNull_native);

  *(&self->super.super.super.isa + v9) = v13;
  swift_endAccess();
}

- (void)removeMilestoneWithNamed:(id)named
{
  v4 = sub_18A4A7288();
  v6 = v5;
  swift_beginAccess();
  selfCopy = self;
  sub_188F27F18(0, v4, v6);
  swift_endAccess();
}

@end