@interface SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier
- (SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier)initWithAppLayout:(id)layout behindAppLayout:(id)appLayout generationCount:(unint64_t)count;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (id)_completeIfNeededIgnoringHover:(BOOL)hover;
- (id)_timeoutReason;
- (id)appLayoutsForContinuousExposeIdentifier:(id)identifier;
- (id)handleContinuousExposeIdentifiersChangedEvent:(id)event;
- (id)handleHighlightEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (id)handleTransitionEvent:(id)event;
- (id)visibleAppLayouts;
@end

@implementation SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier

- (SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier)initWithAppLayout:(id)layout behindAppLayout:(id)appLayout generationCount:(unint64_t)count
{
  layoutCopy = layout;
  appLayoutCopy = appLayout;
  v14.receiver = self;
  v14.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
  v12 = [(SBSwitcherModifier *)&v14 init];
  if (v12)
  {
    if (layoutCopy)
    {
      if (appLayoutCopy)
      {
LABEL_4:
        objc_storeStrong(&v12->_appLayout, layout);
        objc_storeStrong(&v12->_behindAppLayout, appLayout);
        v12->_generationCount = count;
        v12->_initialGenerationCount = count;
        goto LABEL_5;
      }
    }

    else
    {
      [SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier initWithAppLayout:a2 behindAppLayout:v12 generationCount:?];
      if (appLayoutCopy)
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
  visibleAppLayouts = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)&v8 visibleAppLayouts];
  behindAppLayout = self->_behindAppLayout;
  v9[0] = self->_appLayout;
  v9[1] = behindAppLayout;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v6 = [visibleAppLayouts setByAddingObjectsFromArray:v5];

  return v6;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  v9 = 0.0;
  if (([layoutCopy isEqual:self->_appLayout] & 1) == 0)
  {
    v12.receiver = self;
    v12.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
    [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)&v12 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v9 = v10;
  }

  return v9;
}

- (id)appLayoutsForContinuousExposeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
  v5 = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)&v10 appLayoutsForContinuousExposeIdentifier:identifierCopy];
  if ([v5 count] >= 2 && (-[SBAppLayout continuousExposeIdentifier](self->_appLayout, "continuousExposeIdentifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", identifierCopy), v6, v7) && !-[SBAppLayout isEqual:](self->_appLayout, "isEqual:", self->_behindAppLayout))
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

- (id)handleTransitionEvent:(id)event
{
  eventCopy = event;
  appLayoutsWithRemovalContexts = [eventCopy appLayoutsWithRemovalContexts];
  v6 = [appLayoutsWithRemovalContexts containsObject:self->_appLayoutToOrderFront];

  if (v6)
  {
    appLayoutToOrderFront = self->_appLayoutToOrderFront;
    self->_appLayoutToOrderFront = 0;
  }

  v10.receiver = self;
  v10.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
  v8 = [(SBSwitcherModifier *)&v10 handleTransitionEvent:eventCopy];

  return v8;
}

- (id)handleContinuousExposeIdentifiersChangedEvent:(id)event
{
  eventCopy = event;
  v23.receiver = self;
  v23.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
  v5 = [(SBSwitcherModifier *)&v23 handleContinuousExposeIdentifiersChangedEvent:eventCopy];
  if ([eventCopy isAnimated])
  {
    continuousExposeIdentifiersGenerationCount = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self continuousExposeIdentifiersGenerationCount];
    self->_generationCount = continuousExposeIdentifiersGenerationCount;
    if (continuousExposeIdentifiersGenerationCount == self->_initialGenerationCount)
    {
      v7 = [SBTimerEventSwitcherEventResponse alloc];
      _timeoutReason = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self _timeoutReason];
      v9 = [(SBTimerEventSwitcherEventResponse *)v7 initWithDelay:0 validator:_timeoutReason reason:1.5];

      v10 = SBAppendSwitcherModifierResponse(v9, v5);

      v5 = v10;
    }

    transitioningToAppLayout = [eventCopy transitioningToAppLayout];
    continuousExposeIdentifier = [transitioningToAppLayout continuousExposeIdentifier];
    continuousExposeIdentifier2 = [(SBAppLayout *)self->_appLayout continuousExposeIdentifier];
    v14 = [continuousExposeIdentifier isEqual:continuousExposeIdentifier2];

    if (v14)
    {
      transitioningToAppLayout2 = [eventCopy transitioningToAppLayout];
      appLayoutToOrderFront = self->_appLayoutToOrderFront;
      self->_appLayoutToOrderFront = transitioningToAppLayout2;

      if (![(SBAppLayout *)self->_appLayout isEqual:self->_behindAppLayout])
      {
        transitioningToAppLayout3 = [eventCopy transitioningToAppLayout];
        v18 = [transitioningToAppLayout3 isEqual:self->_behindAppLayout];

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

- (id)handleTimerEvent:(id)event
{
  v13.receiver = self;
  v13.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v13 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  _timeoutReason = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self _timeoutReason];
  v8 = [reason isEqualToString:_timeoutReason];

  if (v8)
  {
    continuousExposeIdentifier = [(SBAppLayout *)self->_appLayout continuousExposeIdentifier];
    self->_isDelayingCompletionForHover = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self anyHighlightedAppLayoutsForContinuousExposeIdentifier:continuousExposeIdentifier];

    _completeIfNeeded = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self _completeIfNeeded];
    v11 = SBAppendSwitcherModifierResponse(_completeIfNeeded, v5);

    v5 = v11;
  }

  return v5;
}

- (id)handleHighlightEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v10 handleHighlightEvent:eventCopy];
  isHoverEvent = [eventCopy isHoverEvent];

  if (isHoverEvent && self->_isDelayingCompletionForHover)
  {
    _completeIfNeeded = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self _completeIfNeeded];
    v8 = SBAppendSwitcherModifierResponse(_completeIfNeeded, v5);

    v5 = v8;
  }

  return v5;
}

- (id)_completeIfNeededIgnoringHover:(BOOL)hover
{
  if ([(SBChainableModifier *)self state]== 1 || self->_isDelayingCompletionForHover && !hover && ([(SBAppLayout *)self->_appLayout continuousExposeIdentifier], v6 = objc_claimAutoreleasedReturnValue(), v7 = [(SBCycleContinuousExposeGroupAppLayoutsSwitcherModifier *)self anyHighlightedAppLayoutsForContinuousExposeIdentifier:v6], v6, (v7 & 1) != 0))
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