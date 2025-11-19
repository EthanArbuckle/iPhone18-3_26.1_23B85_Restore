@interface SBHomeGestureToZoomDownSwitcherModifier
- (SBHomeGestureToZoomDownSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 nonGestureInitiatedZoomModifier:(id)a5 effectiveStartingEnvironmentMode:(int64_t)a6 liftOffVelocity:(CGPoint)a7 adjustAnimationAttributes:(BOOL)a8 showingOrAnimatingCardsForFlyIn:(BOOL)a9;
- (id)appLayoutsToCacheFullsizeSnapshots;
- (id)appLayoutsToCacheSnapshots;
- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5;
@end

@implementation SBHomeGestureToZoomDownSwitcherModifier

- (SBHomeGestureToZoomDownSwitcherModifier)initWithTransitionID:(id)a3 appLayout:(id)a4 nonGestureInitiatedZoomModifier:(id)a5 effectiveStartingEnvironmentMode:(int64_t)a6 liftOffVelocity:(CGPoint)a7 adjustAnimationAttributes:(BOOL)a8 showingOrAnimatingCardsForFlyIn:(BOOL)a9
{
  v10 = a8;
  y = a7.y;
  x = a7.x;
  v19 = a4;
  v20 = a5;
  v25.receiver = self;
  v25.super_class = SBHomeGestureToZoomDownSwitcherModifier;
  v21 = [(SBTransitionSwitcherModifier *)&v25 initWithTransitionID:a3];
  if (v21)
  {
    if (!v19)
    {
      [SBHomeGestureToZoomDownSwitcherModifier initWithTransitionID:a2 appLayout:v21 nonGestureInitiatedZoomModifier:? effectiveStartingEnvironmentMode:? liftOffVelocity:? adjustAnimationAttributes:? showingOrAnimatingCardsForFlyIn:?];
    }

    objc_storeStrong(&v21->_appLayout, a4);
    objc_storeStrong(&v21->_nonGestureInitiatedZoomModifier, a5);
    v21->_startingEnvironmentMode = a6;
    v21->_showingOrAnimatingCardsForFlyIn = a9;
    [(SBChainableModifier *)v21 addChildModifier:v21->_nonGestureInitiatedZoomModifier];
    if (v10)
    {
      v22 = [[SBGestureInitiatedIconZoomAnimationAttributesSwitcherModifier alloc] initWithAppLayout:v19 gestureEdge:4 liftOffVelocity:x, y];
      animationAttributesModifier = v21->_animationAttributesModifier;
      v21->_animationAttributesModifier = v22;

      [(SBChainableModifier *)v21 addChildModifier:v21->_animationAttributesModifier];
    }
  }

  return v21;
}

- (id)responseForProposedChildResponse:(id)a3 childModifier:(id)a4 event:(id)a5
{
  v8 = a4;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = SBHomeGestureToZoomDownSwitcherModifier;
  v10 = [(SBChainableModifier *)&v18 responseForProposedChildResponse:a3 childModifier:v8 event:v9];
  if (v10 && self->_nonGestureInitiatedZoomModifier == v8 && [v9 type] == 1)
  {
    v11 = v9;
    v12 = [v11 transitionID];
    v13 = [(SBTransitionSwitcherModifier *)self transitionID];
    if ([v12 isEqual:v13])
    {
      v14 = [v11 phase];

      if (v14 == 1)
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __96__SBHomeGestureToZoomDownSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke;
        v17[3] = &unk_2783B4CC8;
        v17[4] = self;
        v15 = [v10 responseByTransformingResponseWithTransformer:v17];

        v10 = v15;
      }
    }

    else
    {
    }
  }

  return v10;
}

id __96__SBHomeGestureToZoomDownSwitcherModifier_responseForProposedChildResponse_childModifier_event___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 10)
  {
    v4 = 0;
LABEL_3:

    v3 = v4;
    goto LABEL_7;
  }

  if ([v3 type] == 13)
  {
    v5 = *(a1 + 32);
    if (v5[23] == 2)
    {
      v6 = [v5 switcherSettings];
      v7 = [v6 animationSettings];
      v8 = [v7 switcherZoomDownIconFadeOutSettings];

      v4 = [[SBIconViewVisibilitySwitcherEventResponse alloc] initWithAppLayout:*(*(a1 + 32) + 168) visible:0 animationSettings:v8 excludedIconLocations:0];
      v3 = v8;
      goto LABEL_3;
    }
  }

LABEL_7:

  return v3;
}

- (id)appLayoutsToCacheSnapshots
{
  if (([(SBHomeGestureToZoomDownSwitcherModifier *)self isDevicePad]& 1) != 0 || self->_showingOrAnimatingCardsForFlyIn)
  {
    v3 = [(SBHomeGestureToZoomDownSwitcherModifier *)self appLayouts];
    if ([v3 count])
    {
      v4 = [v3 indexOfObject:self->_appLayout];
      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v5 = [(SBHomeGestureToZoomDownSwitcherModifier *)self appLayouts];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __69__SBHomeGestureToZoomDownSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke;
        v11[3] = &unk_2783AE1A0;
        v11[4] = self;
        v4 = [v5 indexOfObjectPassingTest:v11];
      }

      v6 = [(SBHomeGestureToZoomDownSwitcherModifier *)self switcherSettings];
      v7 = [v6 numberOfSnapshotsToAlwaysKeepAround];
      if (!v7)
      {
        v7 = [v6 numberOfSnapshotsToCacheInSwitcher];
      }

      v8 = [(SBSwitcherModifier *)self appLayoutsToCacheSnapshotsWithVisibleRange:v4 numberOfSnapshotsToCache:1 biasForward:v7, 1];
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SBHomeGestureToZoomDownSwitcherModifier;
    v8 = [(SBHomeGestureToZoomDownSwitcherModifier *)&v10 appLayoutsToCacheSnapshots];
  }

  return v8;
}

uint64_t __69__SBHomeGestureToZoomDownSwitcherModifier_appLayoutsToCacheSnapshots__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isOrContainsAppLayout:*(*(a1 + 32) + 168)])
  {
    v4 = 1;
  }

  else
  {
    v4 = [*(*(a1 + 32) + 168) isOrContainsAppLayout:v3];
  }

  return v4;
}

- (id)appLayoutsToCacheFullsizeSnapshots
{
  v3 = self->_appLayout;
  if (v3)
  {
    v4 = [(SBHomeGestureToZoomDownSwitcherModifier *)self appLayouts];
    v5 = [v4 indexOfObject:v3];

    if (v5)
    {
      v6 = v5 - 1;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }
  }

  else
  {
    v6 = 0;
    v7 = 1;
  }

  v8 = [(SBHomeGestureToZoomDownSwitcherModifier *)self appLayouts];
  v14.length = [v8 count];
  v13.location = v6;
  v13.length = v7;
  v14.location = 0;
  v9 = NSIntersectionRange(v13, v14);
  v10 = [v8 subarrayWithRange:{v9.location, v9.length}];

  return v10;
}

- (void)initWithTransitionID:(uint64_t)a1 appLayout:(uint64_t)a2 nonGestureInitiatedZoomModifier:effectiveStartingEnvironmentMode:liftOffVelocity:adjustAnimationAttributes:showingOrAnimatingCardsForFlyIn:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBHomeGestureToZoomDownSwitcherModifier.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

@end