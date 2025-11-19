@interface SBSwitcherToAppExposeSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBSwitcherToAppExposeSwitcherModifier)initWithTransitionID:(id)a3 bundleIdentifier:(id)a4 appExposeModifier:(id)a5;
- (double)_offsetForPushingCardsOffscreenAtIndex:(unint64_t)a3;
- (id)animationAttributesForLayoutElement:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
- (id)visibleAppLayouts;
@end

@implementation SBSwitcherToAppExposeSwitcherModifier

- (SBSwitcherToAppExposeSwitcherModifier)initWithTransitionID:(id)a3 bundleIdentifier:(id)a4 appExposeModifier:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = SBSwitcherToAppExposeSwitcherModifier;
  v11 = [(SBTransitionSwitcherModifier *)&v16 initWithTransitionID:v9];
  if (v11)
  {
    if (a4)
    {
      if (v10)
      {
LABEL_4:
        objc_storeStrong(&v11->_appExposeModifier, a5);
        v12 = [SBRouteToAppExposeSwitcherModifier alloc];
        v13 = [(SBSwitcherToAppExposeSwitcherModifier *)v11 _newAppExposeModifier];
        v14 = [(SBRouteToAppExposeSwitcherModifier *)v12 initWithTransitionID:v9 appExposeModifier:v13];

        [(SBChainableModifier *)v11 addChildModifier:v14 atLevel:0 key:0];
        goto LABEL_5;
      }
    }

    else
    {
      [SBSwitcherToAppExposeSwitcherModifier initWithTransitionID:a2 bundleIdentifier:v11 appExposeModifier:?];
      if (v10)
      {
        goto LABEL_4;
      }
    }

    [SBSwitcherToAppExposeSwitcherModifier initWithTransitionID:a2 bundleIdentifier:v11 appExposeModifier:?];
    goto LABEL_4;
  }

LABEL_5:

  return v11;
}

- (id)transitionWillBegin
{
  v12.receiver = self;
  v12.super_class = SBSwitcherToAppExposeSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v12 transitionWillBegin];
  v11.receiver = self;
  v11.super_class = SBSwitcherToAppExposeSwitcherModifier;
  v4 = [(SBSwitcherToAppExposeSwitcherModifier *)&v11 visibleAppLayouts];
  appLayoutsVisibleBeforeTransition = self->_appLayoutsVisibleBeforeTransition;
  self->_appLayoutsVisibleBeforeTransition = v4;

  [(SBChainableModifier *)self addChildModifier:self->_appExposeModifier atLevel:1 key:0];
  v6 = objc_alloc_init(SBInvalidateAdjustedAppLayoutsSwitcherEventResponse);
  v7 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v3 toResponse:v6];

  v8 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"Switcher to App Expose did begin" reason:0.0];
  v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v7];

  return v9;
}

- (id)handleTimerEvent:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = SBSwitcherToAppExposeSwitcherModifier;
  v5 = [(SBTransitionSwitcherModifier *)&v25 handleTimerEvent:v4];
  v6 = [v4 reason];
  v7 = [v6 isEqualToString:@"Switcher to App Expose did begin"];

  if (v7)
  {
    v8 = [(SBSwitcherToAppExposeSwitcherModifier *)self appLayouts];
    v9 = [v8 firstObject];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      while (2)
      {
        v14 = 0;
        v15 = v9;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v21 + 1) + 8 * v14);
          if ([v16 environment] == 1)
          {
            v9 = v15;
            goto LABEL_12;
          }

          v9 = v16;

          ++v14;
          v15 = v9;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if (v9)
    {
      v17 = [[SBScrollToAppLayoutSwitcherEventResponse alloc] initWithAppLayout:v9 alignment:0 animated:0];
      v18 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v17 toResponse:v5];

      v19 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
      v5 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v19 toResponse:v18];
    }
  }

  return v5;
}

- (id)transitionWillUpdate
{
  [(SBChainableModifier *)self removeChildModifier:self->_appExposeModifier];
  appExposeModifier = self->_appExposeModifier;
  self->_appExposeModifier = 0;

  v6.receiver = self;
  v6.super_class = SBSwitcherToAppExposeSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v6 transitionWillUpdate];

  return v4;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v19.receiver = self;
  v19.super_class = SBSwitcherToAppExposeSwitcherModifier;
  [(SBSwitcherToAppExposeSwitcherModifier *)&v19 frameForIndex:?];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  if (self->_appExposeModifier)
  {
    [(SBSwitcherToAppExposeSwitcherModifier *)self _offsetForPushingCardsOffscreenAtIndex:a3];
    v14 = v13;
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v21 = CGRectOffset(v20, v14, 0.0);
    x = v21.origin.x;
    y = v21.origin.y;
    width = v21.size.width;
    height = v21.size.height;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)visibleAppLayouts
{
  v6.receiver = self;
  v6.super_class = SBSwitcherToAppExposeSwitcherModifier;
  v3 = [(SBSwitcherToAppExposeSwitcherModifier *)&v6 visibleAppLayouts];
  v4 = [v3 setByAddingObjectsFromSet:self->_appLayoutsVisibleBeforeTransition];

  return v4;
}

- (id)animationAttributesForLayoutElement:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBSwitcherToAppExposeSwitcherModifier;
  v4 = [(SBTransitionSwitcherModifier *)&v10 animationAttributesForLayoutElement:a3];
  v5 = [v4 mutableCopy];

  v6 = [(SBSwitcherToAppExposeSwitcherModifier *)self switcherSettings];
  v7 = [v6 animationSettings];
  v8 = [v7 toggleAppSwitcherSettings];
  [v5 setLayoutSettings:v8];

  return v5;
}

- (double)_offsetForPushingCardsOffscreenAtIndex:(unint64_t)a3
{
  v5 = [(SBSwitcherToAppExposeSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

  LODWORD(v5) = [v6 environment] != 2;
  [(SBSwitcherToAppExposeSwitcherModifier *)self switcherViewBounds];
  v8 = v7;
  if ([(SBSwitcherToAppExposeSwitcherModifier *)self isRTLEnabled]!= v5)
  {
    v8 = -v8;
  }

  return v8;
}

- (void)initWithTransitionID:(uint64_t)a1 bundleIdentifier:(uint64_t)a2 appExposeModifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherToAppExposeSwitcherModifier.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"bundleIdentifier"}];
}

- (void)initWithTransitionID:(uint64_t)a1 bundleIdentifier:(uint64_t)a2 appExposeModifier:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSwitcherToAppExposeSwitcherModifier.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"appExposeModifier"}];
}

@end