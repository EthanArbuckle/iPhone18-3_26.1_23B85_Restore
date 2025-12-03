@interface SBFinishUnstashingSlideOverItemAnimationModifier
- (BOOL)shouldInterruptForActivity:(id)activity;
- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds;
- (id)animationAttributesForItem:(id)item;
- (void)transitionWillBegin:(id)begin;
@end

@implementation SBFinishUnstashingSlideOverItemAnimationModifier

- (BOOL)shouldInterruptForActivity:(id)activity
{
  activityCopy = activity;
  v5 = activityCopy;
  if (self->_transitionID && [activityCopy isTransitionEvent])
  {
    transitionID = [v5 transitionID];
    if (BSEqualObjects())
    {
      isGestureEvent = [v5 isGestureEvent];
    }

    else
    {
      isGestureEvent = 1;
    }
  }

  else
  {
    isGestureEvent = [v5 isGestureEvent];
  }

  return isGestureEvent;
}

- (void)transitionWillBegin:(id)begin
{
  transitionID = [begin transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = transitionID;
}

- (id)animationAttributesForItem:(id)item
{
  v6.receiver = self;
  v6.super_class = SBFinishUnstashingSlideOverItemAnimationModifier;
  v3 = [(SBWindowingModifier *)&v6 animationAttributesForItem:item];
  v4 = [v3 mutableCopy];

  [v4 setUpdateMode:3];

  return v4;
}

- (CGRect)frameForLayoutRole:(int64_t)role inAppLayout:(id)layout withBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  layoutCopy = layout;
  v12 = [layoutCopy itemForLayoutRole:role];
  v13 = [layoutCopy itemForLayoutRole:role];
  displayItemInSlideOver = [(SBFinishUnstashingSlideOverItemAnimationModifier *)self displayItemInSlideOver];
  if (!BSEqualObjects())
  {

    goto LABEL_5;
  }

  transitionPhase = [(SBWindowingModifier *)self transitionPhase];

  if (transitionPhase != 2)
  {
LABEL_5:
    v35.receiver = self;
    v35.super_class = SBFinishUnstashingSlideOverItemAnimationModifier;
    [(SBFinishUnstashingSlideOverItemAnimationModifier *)&v35 frameForLayoutRole:role inAppLayout:layoutCopy withBounds:x, y, width, height];
    v20 = v27;
    v22 = v28;
    v24 = v29;
    v26 = v30;
    goto LABEL_6;
  }

  v16 = [(SBFinishUnstashingSlideOverItemAnimationModifier *)self layoutAttributesForDisplayItem:v12 inAppLayout:layoutCopy];
  displayItemLayoutAttributesCalculator = [(SBFinishUnstashingSlideOverItemAnimationModifier *)self displayItemLayoutAttributesCalculator];
  windowingConfiguration = [(SBWindowingModifier *)self windowingConfiguration];
  [displayItemLayoutAttributesCalculator sizeForLayoutAttributes:v16 windowingConfiguration:windowingConfiguration];
  [displayItemLayoutAttributesCalculator centerForLayoutAttributes:v16 windowingConfiguration:windowingConfiguration];
  SBRectWithSize();
  UIRectCenteredAboutPoint();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

LABEL_6:
  v31 = v20;
  v32 = v22;
  v33 = v24;
  v34 = v26;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

@end