@interface _UIScrollEdgeEffectViewInteraction
- (BOOL)needsPockets;
- (NSString)description;
- (UIEdgeInsets)effectInsets;
- (UIView)_view;
- (UIView)view;
- (id)debugInfoVerbose:(BOOL)verbose;
- (id)edgeEffectFor:(unint64_t)for;
- (id)existingPocketFor:(unint64_t)for;
- (id)forcingPocketFor:(unint64_t)for;
- (void)_scrollPocketRegistrationInteractionDidInvalidatePosition:(id)position;
- (void)_viewVisibilityDidChange;
- (void)appendDescriptionToStream:(id)stream;
- (void)backgroundColorDidChange;
- (void)setBottomPocket:(id)pocket;
- (void)setIsEnabled:(BOOL)enabled;
- (void)setLeftPocket:(id)pocket;
- (void)setRegistrationInteraction:(id)interaction;
- (void)setRightPocket:(id)pocket;
- (void)setTopPocket:(id)pocket;
- (void)set_view:(id)set_view;
- (void)updateEffectAndCaptureViewFrames;
- (void)updatePocket:(id)pocket contentRect:(CGRect)rect velocity:(double)velocity isTracking:(BOOL)tracking shouldAnimateVisibility:(BOOL)visibility;
- (void)updateScrollPocketCollectorModelHidden;
- (void)updateWithContentRect:(CGRect)rect velocity:(double)velocity isTracking:(BOOL)tracking shouldAnimateVisibility:(BOOL)visibility;
@end

@implementation _UIScrollEdgeEffectViewInteraction

- (UIView)_view
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)set_view:(id)set_view
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  set_viewCopy = set_view;
  selfCopy = self;
  sub_189046E5C(Strong);
}

- (UIView)view
{
  _view = [(_UIScrollEdgeEffectViewInteraction *)self _view];

  return _view;
}

- (id)edgeEffectFor:(unint64_t)for
{
  selfCopy = self;
  v5 = sub_189047034(for);

  return v5;
}

- (void)setIsEnabled:(BOOL)enabled
{
  v4 = *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_isEnabled);
  *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_isEnabled) = enabled;
  if (v4 != enabled)
  {
    selfCopy = self;
    [(_UIScrollEdgeEffectViewInteraction *)selfCopy updateScrollPocketCollectorModelHidden];
    view = [(_UIScrollEdgeEffectViewInteraction *)selfCopy view];
    [(UIView *)view setNeedsLayout];
  }
}

- (void)setRegistrationInteraction:(id)interaction
{
  v4 = *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_registrationInteraction);
  *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_registrationInteraction) = interaction;
  interactionCopy = interaction;
}

- (void)setTopPocket:(id)pocket
{
  v4 = *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_topPocket);
  *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_topPocket) = pocket;
  pocketCopy = pocket;
}

- (void)setLeftPocket:(id)pocket
{
  v4 = *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_leftPocket);
  *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_leftPocket) = pocket;
  pocketCopy = pocket;
}

- (void)setBottomPocket:(id)pocket
{
  v4 = *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_bottomPocket);
  *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_bottomPocket) = pocket;
  pocketCopy = pocket;
}

- (void)setRightPocket:(id)pocket
{
  v4 = *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_rightPocket);
  *(self + OBJC_IVAR____UIScrollEdgeEffectViewInteraction_rightPocket) = pocket;
  pocketCopy = pocket;
}

- (id)existingPocketFor:(unint64_t)for
{
  selfCopy = self;
  v5 = sub_1890473E0(for);

  return v5;
}

- (id)forcingPocketFor:(unint64_t)for
{
  selfCopy = self;
  v5 = sub_189047484(for);

  return v5;
}

- (BOOL)needsPockets
{
  selfCopy = self;
  v3 = sub_189047838();

  return v3 & 1;
}

- (UIEdgeInsets)effectInsets
{
  selfCopy = self;
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
  selfCopy = self;
  sub_189048130();
}

- (void)updateWithContentRect:(CGRect)rect velocity:(double)velocity isTracking:(BOOL)tracking shouldAnimateVisibility:(BOOL)visibility
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_18904834C(tracking, visibility, x, y, width, height, velocity);
}

- (void)updateEffectAndCaptureViewFrames
{
  selfCopy = self;
  sub_1890485E8();
}

- (void)updatePocket:(id)pocket contentRect:(CGRect)rect velocity:(double)velocity isTracking:(BOOL)tracking shouldAnimateVisibility:(BOOL)visibility
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pocketCopy = pocket;
  selfCopy = self;
  sub_189048728(pocket, tracking, visibility, x, y, width, height, velocity);
}

- (void)backgroundColorDidChange
{
  selfCopy = self;
  sub_189049910();
}

- (void)_scrollPocketRegistrationInteractionDidInvalidatePosition:(id)position
{
  positionCopy = position;
  selfCopy = self;
  sub_18904AE58();
}

- (void)_viewVisibilityDidChange
{
  selfCopy = self;
  sub_189049AA4();
}

- (NSString)description
{
  v3 = objc_opt_self();
  selfCopy = self;
  descriptionForRootObject_ = [v3 descriptionForRootObject_];
  if (!descriptionForRootObject_)
  {
    sub_18A4A7288();
    descriptionForRootObject_ = sub_18A4A7258();
  }

  return descriptionForRootObject_;
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  selfCopy = self;
  sub_189049D24(streamCopy);
}

- (id)debugInfoVerbose:(BOOL)verbose
{
  selfCopy = self;
  sub_18904A2F4(verbose);

  v5 = sub_18A4A7258();

  return v5;
}

@end