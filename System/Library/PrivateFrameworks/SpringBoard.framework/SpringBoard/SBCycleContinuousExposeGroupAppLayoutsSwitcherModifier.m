@interface SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier
- (SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier)initWithAppLayout:(id)a3 behindAppLayout:(id)a4 generationCount:(unint64_t)a5;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (id)_completeIfNeededIgnoringHover:(BOOL)a3;
- (id)_timeoutReason;
- (id)appLayoutsForContinuousExposeIdentifier:(id)a3;
- (id)handleContinuousExposeIdentifiersChangedEvent:(id)a3;
- (id)handleHighlightEvent:(id)a3;
- (id)handleTimerEvent:(id)a3;
- (id)handleTransitionEvent:(id)a3;
- (id)visibleAppLayouts;
@end

@implementation SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier

- (SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier)initWithAppLayout:(id)a3 behindAppLayout:(id)a4 generationCount:(unint64_t)a5
{
  v10 = a3;
  v11 = a4;
  v14.receiver = self;
  v14.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
  v12 = [(SBSwitcherModifier *)&v14 init];
  if (v12)
  {
    if (v10)
    {
      if (v11)
      {
LABEL_4:
        objc_storeStrong(&v12->_appLayout, a3);
        objc_storeStrong(&v12->_behindAppLayout, a4);
        v12->_generationCount = a5;
        v12->_initialGenerationCount = a5;
        goto LABEL_5;
      }
    }

    else
    {
      [SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier initWithAppLayout:a2 behindAppLayout:v12 generationCount:?];
      if (v11)
      {
        goto LABEL_4;
      }
    }

    [SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier initWithAppLayout:a2 behindAppLayout:v12 generationCount:?];
    goto LABEL_4;
  }

LABEL_5:

  return v12;
}

- (id)visibleAppLayouts
{
  v9[2] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
  v3 = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)&v8 visibleAppLayouts];
  behindAppLayout = self->_behindAppLayout;
  v9[0] = self->_appLayout;
  v9[1] = behindAppLayout;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [v3 setByAddingObjectsFromArray:v5];

  return v6;
}

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  v9 = 0.0;
  if (([v8 isEqual:self->_appLayout] & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
    [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)&v12 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v9 = v10;
  }

  return v9;
}

- (id)appLayoutsForContinuousExposeIdentifier:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
  v5 = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)&v10 appLayoutsForContinuousExposeIdentifier:v4];
  if ([v5 count] >= 2 && (-[SBAppLayout continuousExposeIdentifier](self->_appLayout, "continuousExposeIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", v4), v6, v7) && !-[SBAppLayout isEqual:](self->_appLayout, "isEqual:", self->_behindAppLayout))
  {
    v8 = [v5 mutableCopy];
    if ([v8 containsObject:self->_appLayout] && objc_msgSend(v8, "containsObject:", self->_behindAppLayout))
    {
      [v8 removeObject:self->_appLayout];
    }
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (id)handleTransitionEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 appLayoutsWithRemovalContexts];
  v6 = [v5 containsObject:self->_appLayoutToOrderFront];

  if (v6)
  {
    appLayoutToOrderFront = self->_appLayoutToOrderFront;
    self->_appLayoutToOrderFront = 0;
  }

  v10.receiver = self;
  v10.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
  v8 = [(SBSwitcherModifier *)&v10 handleTransitionEvent:v4];

  return v8;
}

- (id)handleContinuousExposeIdentifiersChangedEvent:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v23 handleContinuousExposeIdentifiersChangedEvent:v4];
  if ([v4 isAnimated])
  {
    v6 = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self continuousExposeIdentifiersGenerationCount];
    self->_generationCount = v6;
    if (v6 == self->_initialGenerationCount)
    {
      v7 = [SBTimerEventSwitcherEventResponse alloc];
      v8 = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self _timeoutReason];
      v9 = [(SBTimerEventSwitcherEventResponse *)v7 initWithDelay:0 validator:v8 reason:1.5];

      v10 = SBAppendSwitcherModifierResponse(v9, v5);

      v5 = v10;
    }

    v11 = [v4 transitioningToAppLayout];
    v12 = [v11 continuousExposeIdentifier];
    v13 = [(SBAppLayout *)self->_appLayout continuousExposeIdentifier];
    v14 = [v12 isEqual:v13];

    if (v14)
    {
      v15 = [v4 transitioningToAppLayout];
      appLayoutToOrderFront = self->_appLayoutToOrderFront;
      self->_appLayoutToOrderFront = v15;

      if (![(SBAppLayout *)self->_appLayout isEqual:self->_behindAppLayout])
      {
        v17 = [v4 transitioningToAppLayout];
        v18 = [v17 isEqual:self->_behindAppLayout];

        if ((v18 & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v19 = self->_appLayoutToOrderFront;
      self->_appLayoutToOrderFront = 0;
    }

    v20 = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self _completeIfNeededIgnoringHover:1];
    v21 = SBAppendSwitcherModifierResponse(v20, v5);

    v5 = v21;
  }

LABEL_10:

  return v5;
}

- (id)handleTimerEvent:(id)a3
{
  v13.receiver = self;
  v13.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v13 handleTimerEvent:v4];
  v6 = [v4 reason];

  v7 = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self _timeoutReason];
  v8 = [v6 isEqualToString:v7];

  if (v8)
  {
    v9 = [(SBAppLayout *)self->_appLayout continuousExposeIdentifier];
    self->_isDelayingCompletionForHover = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self anyHighlightedAppLayoutsForContinuousExposeIdentifier:v9];

    v10 = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self _completeIfNeeded];
    v11 = SBAppendSwitcherModifierResponse(v10, v5);

    v5 = v11;
  }

  return v5;
}

- (id)handleHighlightEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
  v4 = a3;
  v5 = [(SBSwitcherModifier *)&v10 handleHighlightEvent:v4];
  v6 = [v4 isHoverEvent];

  if (v6 && self->_isDelayingCompletionForHover)
  {
    v7 = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self _completeIfNeeded];
    v8 = SBAppendSwitcherModifierResponse(v7, v5);

    v5 = v8;
  }

  return v5;
}

- (id)_completeIfNeededIgnoringHover:(BOOL)a3
{
  if ([(SBChainableModifier *)self state]== 1 || self->_isDelayingCompletionForHover && !a3 && ([(SBAppLayout *)self->_appLayout continuousExposeIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self anyHighlightedAppLayoutsForContinuousExposeIdentifier:v6], v6, (v7 & 1) != 0))
  {
    v5 = 0;
  }

  else
  {
    self->_isDelayingCompletionForHover = 0;
    if (self->_generationCount == self->_initialGenerationCount && self->_appLayoutToOrderFront)
    {
      v8 = [SBPerformTransitionSwitcherEventResponse alloc];
      v9 = [SBSwitcherTransitionRequest requestForActivatingAppLayout:self->_appLayoutToOrderFront];
      v10 = [(SBPerformTransitionSwitcherEventResponse *)v8 initWithTransitionRequest:v9 gestureInitiated:0];

      v5 = SBAppendSwitcherModifierResponse(v10, 0);
    }

    else
    {
      v5 = 0;
    }

    [(SBChainableModifier *)self setState:1];
  }

  return v5;
}

- (id)_timeoutReason
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@-%ld", v5, self->_initialGenerationCount];

  return v6;
}

- (void)initWithAppLayout:(uint64_t)a1 behindAppLayout:(uint64_t)a2 generationCount:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"appLayout"}];
}

- (void)initWithAppLayout:(uint64_t)a1 behindAppLayout:(uint64_t)a2 generationCount:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"behindAppLayout"}];
}

@end