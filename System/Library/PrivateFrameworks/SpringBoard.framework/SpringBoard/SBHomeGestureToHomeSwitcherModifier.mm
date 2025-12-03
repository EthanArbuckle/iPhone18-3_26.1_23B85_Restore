@interface SBHomeGestureToHomeSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)index;
- (SBHomeGestureToHomeSwitcherModifier)initWithTransitionID:(id)d showingOrAnimatingCardsForFlyIn:(BOOL)in;
- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (id)appLayoutsToCacheSnapshots;
- (id)visibleAppLayouts;
- (unint64_t)transactionCompletionOptions;
@end

@implementation SBHomeGestureToHomeSwitcherModifier

- (SBHomeGestureToHomeSwitcherModifier)initWithTransitionID:(id)d showingOrAnimatingCardsForFlyIn:(BOOL)in
{
  v6.receiver = self;
  v6.super_class = SBHomeGestureToHomeSwitcherModifier;
  result = [(SBTransitionSwitcherModifier *)&v6 initWithTransitionID:d];
  if (result)
  {
    result->_showingOrAnimatingCardsForFlyIn = in;
  }

  return result;
}

- (id)visibleAppLayouts
{
  appLayouts = [(SBHomeGestureToHomeSwitcherModifier *)self appLayouts];
  firstObject = [appLayouts firstObject];

  if (firstObject)
  {
    [MEMORY[0x277CBEB98] setWithObject:firstObject];
  }

  else
  {
    [MEMORY[0x277CBEB98] set];
  }
  v4 = ;

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v8.receiver = self;
  v8.super_class = SBHomeGestureToHomeSwitcherModifier;
  [(SBHomeGestureToHomeSwitcherModifier *)&v8 frameForIndex:index];
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

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBHomeGestureToHomeSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  windowManagementContext = [(SBHomeGestureToHomeSwitcherModifier *)self windowManagementContext];
  if ([windowManagementContext isFlexibleWindowingEnabled])
  {
    peekingAppLayout = [(SBHomeGestureToHomeSwitcherModifier *)self peekingAppLayout];
    v9 = [peekingAppLayout isOrContainsAppLayout:v6];

    if (v9)
    {
      [(SBHomeGestureToHomeSwitcherModifier *)&v16 scaleForIndex:index, v15.receiver, v15.super_class, self, SBHomeGestureToHomeSwitcherModifier];
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
    [(SBHomeGestureToHomeSwitcherModifier *)&v15 scaleForIndex:index, self, SBHomeGestureToHomeSwitcherModifier, v16.receiver, v16.super_class];
    goto LABEL_8;
  }

  switcherSettings = [(SBHomeGestureToHomeSwitcherModifier *)self switcherSettings];
  [switcherSettings offscreenCardScaleForFlyIn];
  v13 = v12;

LABEL_9:
  return v13;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  result = 0.0;
  if (!index)
  {
    return 1.0;
  }

  return result;
}

- (UIRectCornerRadii)cornerRadiiForIndex:(unint64_t)index
{
  [(SBHomeGestureToHomeSwitcherModifier *)self displayCornerRadius];
  SBRectCornerRadiiForRadius();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  appLayouts = [(SBHomeGestureToHomeSwitcherModifier *)self appLayouts];
  v14 = [appLayouts objectAtIndex:index];

  windowManagementContext = [(SBHomeGestureToHomeSwitcherModifier *)self windowManagementContext];
  if ([windowManagementContext isFlexibleWindowingEnabled])
  {
    peekingAppLayout = [(SBHomeGestureToHomeSwitcherModifier *)self peekingAppLayout];
    v17 = [peekingAppLayout isOrContainsAppLayout:v14];

    if (v17)
    {
      windowingConfiguration = [(SBSwitcherModifier *)self windowingConfiguration];
      [windowingConfiguration solariumStageCornerRadii];

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
  appLayouts = [(SBHomeGestureToHomeSwitcherModifier *)self appLayouts];
  if ([appLayouts count])
  {
    switcherSettings = [(SBHomeGestureToHomeSwitcherModifier *)self switcherSettings];
    numberOfSnapshotsToAlwaysKeepAround = [switcherSettings numberOfSnapshotsToAlwaysKeepAround];
    if (!numberOfSnapshotsToAlwaysKeepAround)
    {
      if (self->_showingOrAnimatingCardsForFlyIn || [(SBHomeGestureToHomeSwitcherModifier *)self isDevicePad])
      {
        numberOfSnapshotsToAlwaysKeepAround = [switcherSettings numberOfSnapshotsToCacheInSwitcher];
      }

      else
      {
        numberOfSnapshotsToAlwaysKeepAround = 0;
      }
    }

    v6 = [(SBSwitcherModifier *)self appLayoutsToCacheSnapshotsWithVisibleRange:0 numberOfSnapshotsToCache:1 biasForward:numberOfSnapshotsToAlwaysKeepAround, 1];
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