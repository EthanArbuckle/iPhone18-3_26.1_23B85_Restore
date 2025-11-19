@interface SBFinishUnstashingSlideOverItemAnimationModifier
- (BOOL)shouldInterruptForActivity:(id)a3;
- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5;
- (id)animationAttributesForItem:(id)a3;
- (void)transitionWillBegin:(id)a3;
@end

@implementation SBFinishUnstashingSlideOverItemAnimationModifier

- (BOOL)shouldInterruptForActivity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_transitionID && [v4 isTransitionEvent])
  {
    v6 = [v5 transitionID];
    if (BSEqualObjects())
    {
      v7 = [v5 isGestureEvent];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = [v5 isGestureEvent];
  }

  return v7;
}

- (void)transitionWillBegin:(id)a3
{
  v4 = [a3 transitionID];
  transitionID = self->_transitionID;
  self->_transitionID = v4;
}

- (id)animationAttributesForItem:(id)a3
{
  v6.receiver = self;
  v6.super_class = SBFinishUnstashingSlideOverItemAnimationModifier;
  v3 = [(SBWindowingModifier *)&v6 animationAttributesForItem:a3];
  v4 = [v3 mutableCopy];

  [v4 setUpdateMode:3];

  return v4;
}

- (CGRect)frameForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 withBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = [v11 itemForLayoutRole:a3];
  v13 = [v11 itemForLayoutRole:a3];
  v14 = [(SBFinishUnstashingSlideOverItemAnimationModifier *)self displayItemInSlideOver];
  if (!BSEqualObjects())
  {

    goto LABEL_5;
  }

  v15 = [(SBWindowingModifier *)self transitionPhase];

  if (v15 != 2)
  {
LABEL_5:
    v35.receiver = self;
    v35.super_class = SBFinishUnstashingSlideOverItemAnimationModifier;
    [(SBFinishUnstashingSlideOverItemAnimationModifier *)&v35 frameForLayoutRole:a3 inAppLayout:v11 withBounds:x, y, width, height];
    v20 = v27;
    v22 = v28;
    v24 = v29;
    v26 = v30;
    goto LABEL_6;
  }

  v16 = [(SBFinishUnstashingSlideOverItemAnimationModifier *)self layoutAttributesForDisplayItem:v12 inAppLayout:v11];
  v17 = [(SBFinishUnstashingSlideOverItemAnimationModifier *)self displayItemLayoutAttributesCalculator];
  v18 = [(SBWindowingModifier *)self windowingConfiguration];
  [v17 sizeForLayoutAttributes:v16 windowingConfiguration:v18];
  [v17 centerForLayoutAttributes:v16 windowingConfiguration:v18];
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