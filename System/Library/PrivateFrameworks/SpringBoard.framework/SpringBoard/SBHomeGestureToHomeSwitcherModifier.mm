@interface SBHomeGestureToHomeSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBHomeGestureToHomeSwitcherModifier)initWithTransitionID:(id)a3 showingOrAnimatingCardsForFlyIn:(BOOL)a4;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (id)appLayoutsToCacheSnapshots;
- (id)visibleAppLayouts;
- (unint64_t)transactionCompletionOptions;
@end

@implementation SBHomeGestureToHomeSwitcherModifier

- (SBHomeGestureToHomeSwitcherModifier)initWithTransitionID:(id)a3 showingOrAnimatingCardsForFlyIn:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = SBHomeGestureToHomeSwitcherModifier;
  result = [(SBTransitionSwitcherModifier *)&v6 initWithTransitionID:a3];
  if (result)
  {
    result->_showingOrAnimatingCardsForFlyIn = a4;
  }

  return result;
}

- (id)visibleAppLayouts
{
  v2 = [(SBHomeGestureToHomeSwitcherModifier *)self appLayouts];
  v3 = [v2 firstObject];

  if (v3)
  {
    [MEMORY[0x277CBEB98] setWithObject:v3];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v4 = ;

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = SBHomeGestureToHomeSwitcherModifier;
  [(SBHomeGestureToHomeSwitcherModifier *)&v8 frameForIndex:a3];
  if (self->_showingOrAnimatingCardsForFlyIn)
  {
    v4 = v4 + -1.0;
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBHomeGestureToHomeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  v7 = [(SBHomeGestureToHomeSwitcherModifier *)self windowManagementContext];
  if ([v7 isFlexibleWindowingEnabled])
  {
    v8 = [(SBHomeGestureToHomeSwitcherModifier *)self peekingAppLayout];
    v9 = [v8 isOrContainsAppLayout:v6];

    if (v9)
    {
      [(SBHomeGestureToHomeSwitcherModifier *)&v16 scaleForIndex:a3, v15.receiver, v15.super_class, self, SBHomeGestureToHomeSwitcherModifier];
LABEL_8:
      v13 = v10;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (!self->_showingOrAnimatingCardsForFlyIn)
  {
    [(SBHomeGestureToHomeSwitcherModifier *)&v15 scaleForIndex:a3, self, SBHomeGestureToHomeSwitcherModifier, v16.receiver, v16.super_class];
    goto LABEL_8;
  }

  v11 = [(SBHomeGestureToHomeSwitcherModifier *)self switcherSettings];
  [v11 offscreenCardScaleForFlyIn];
  v13 = v12;

LABEL_9:
  return v13;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  result = 0.0;
  if (!a5)
  {
    return 1.0;
  }

  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)a3
{
  [(SBHomeGestureToHomeSwitcherModifier *)self displayCornerRadius];
  SBRectCornerRadiiForRadius();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(SBHomeGestureToHomeSwitcherModifier *)self appLayouts];
  v14 = [v13 objectAtIndex:a3];

  v15 = [(SBHomeGestureToHomeSwitcherModifier *)self windowManagementContext];
  if ([v15 isFlexibleWindowingEnabled])
  {
    v16 = [(SBHomeGestureToHomeSwitcherModifier *)self peekingAppLayout];
    v17 = [v16 isOrContainsAppLayout:v14];

    if (v17)
    {
      v18 = [(SBSwitcherModifier *)self windowingConfiguration];
      [v18 solariumStageCornerRadii];

      SBRectCornerRadiiForRadius();
      v6 = v19;
      v8 = v20;
      v10 = v21;
      v12 = v22;
    }
  }

  else
  {
  }

  v23 = v6;
  v24 = v8;
  v25 = v10;
  v26 = v12;
  result.topRight = v26;
  result.bottomRight = v25;
  result.bottomLeft = v24;
  result.topLeft = v23;
  return result;
}

- (id)appLayoutsToCacheSnapshots
{
  v3 = [(SBHomeGestureToHomeSwitcherModifier *)self appLayouts];
  if ([v3 count])
  {
    v4 = [(SBHomeGestureToHomeSwitcherModifier *)self switcherSettings];
    v5 = [v4 numberOfSnapshotsToAlwaysKeepAround];
    if (!v5)
    {
      if (self->_showingOrAnimatingCardsForFlyIn || [(SBHomeGestureToHomeSwitcherModifier *)self isDevicePad])
      {
        v5 = [v4 numberOfSnapshotsToCacheInSwitcher];
      }

      else
      {
        v5 = 0;
      }
    }

    v6 = [(SBSwitcherModifier *)self appLayoutsToCacheSnapshotsWithVisibleRange:0 numberOfSnapshotsToCache:1 biasForward:v5, 1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (unint64_t)transactionCompletionOptions
{
  if (!self->_showingOrAnimatingCardsForFlyIn)
  {
    return 0;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = SBHomeGestureToHomeSwitcherModifier;
  return [(SBHomeGestureToHomeSwitcherModifier *)&v5 transactionCompletionOptions];
}

@end