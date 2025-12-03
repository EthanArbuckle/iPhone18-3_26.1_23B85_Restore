@interface SBContinuousExposeIdentifierSlideModifier
- (CGPoint)anchorPointForIndex:(unint64_t)index;
- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout;
- (CGRect)frameForIndex:(unint64_t)index;
- (SBContinuousExposeIdentifierSlideModifier)initWithContinuousExposeIdentifier:(id)identifier previousContinuousExposeIdentifiersInSwitcher:(id)switcher previousContinuousExposeIdentifiersInStrip:(id)strip direction:(unint64_t)direction;
- (double)scaleForIndex:(unint64_t)index;
- (id)_beginAnimation;
- (id)animationAttributesForLayoutElement:(id)element;
- (id)handleContinuousExposeIdentifiersChangedEvent:(id)event;
- (id)handleTimerEvent:(id)event;
- (void)_performBlockWithIdentifiersInSwitcher:(id)switcher identifiersInStrip:(id)strip block:(id)block;
@end

@implementation SBContinuousExposeIdentifierSlideModifier

- (SBContinuousExposeIdentifierSlideModifier)initWithContinuousExposeIdentifier:(id)identifier previousContinuousExposeIdentifiersInSwitcher:(id)switcher previousContinuousExposeIdentifiersInStrip:(id)strip direction:(unint64_t)direction
{
  identifierCopy = identifier;
  switcherCopy = switcher;
  stripCopy = strip;
  v25.receiver = self;
  v25.super_class = SBContinuousExposeIdentifierSlideModifier;
  v14 = [(SBSwitcherModifier *)&v25 init];
  if (v14)
  {
    if (identifierCopy)
    {
      if (switcherCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [SBContinuousExposeIdentifierSlideModifier initWithContinuousExposeIdentifier:a2 previousContinuousExposeIdentifiersInSwitcher:v14 previousContinuousExposeIdentifiersInStrip:? direction:?];
      if (switcherCopy)
      {
LABEL_4:
        if (stripCopy)
        {
LABEL_5:
          v15 = [identifierCopy copy];
          continuousExposeIdentifier = v14->_continuousExposeIdentifier;
          v14->_continuousExposeIdentifier = v15;

          v17 = [switcherCopy copy];
          previousContinuousExposeIdentifiersInSwitcher = v14->_previousContinuousExposeIdentifiersInSwitcher;
          v14->_previousContinuousExposeIdentifiersInSwitcher = v17;

          v19 = [stripCopy copy];
          previousContinuousExposeIdentifiersInStrip = v14->_previousContinuousExposeIdentifiersInStrip;
          v14->_previousContinuousExposeIdentifiersInStrip = v19;

          v14->_direction = direction;
          uUID = [MEMORY[0x277CCAD78] UUID];
          uUIDString = [uUID UUIDString];
          uniqueAnimationIdentifier = v14->_uniqueAnimationIdentifier;
          v14->_uniqueAnimationIdentifier = uUIDString;

          goto LABEL_6;
        }

LABEL_9:
        [SBContinuousExposeIdentifierSlideModifier initWithContinuousExposeIdentifier:a2 previousContinuousExposeIdentifiersInSwitcher:v14 previousContinuousExposeIdentifiersInStrip:? direction:?];
        goto LABEL_5;
      }
    }

    [SBContinuousExposeIdentifierSlideModifier initWithContinuousExposeIdentifier:a2 previousContinuousExposeIdentifiersInSwitcher:v14 previousContinuousExposeIdentifiersInStrip:? direction:?];
    if (stripCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_6:

  return v14;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  v38.receiver = self;
  v38.super_class = SBContinuousExposeIdentifierSlideModifier;
  [(SBContinuousExposeIdentifierSlideModifier *)&v38 frameForIndex:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  appLayouts = [(SBContinuousExposeIdentifierSlideModifier *)self appLayouts];
  v14 = [appLayouts objectAtIndex:index];

  continuousExposeIdentifier = [v14 continuousExposeIdentifier];
  if (![continuousExposeIdentifier isEqualToString:self->_continuousExposeIdentifier])
  {
LABEL_12:

    goto LABEL_13;
  }

  appLayoutOnStage = [(SBContinuousExposeIdentifierSlideModifier *)self appLayoutOnStage];
  v17 = [appLayoutOnStage isOrContainsAppLayout:v14];

  if ((v17 & 1) == 0)
  {
    if (self->_isWaitingToPrepareLayout && !self->_direction)
    {
LABEL_8:
      continuousExposeIdentifier = [(SBSwitcherModifier *)self windowingConfiguration];
      [continuousExposeIdentifier stripWidth];
      v21 = v20;
      [continuousExposeIdentifier screenEdgePadding];
      v23 = v22;
      if (([(SBContinuousExposeIdentifierSlideModifier *)self isRTLEnabled]& 1) != 0)
      {
        [(SBContinuousExposeIdentifierSlideModifier *)self containerViewBounds];
        v26 = v21 + v23 + v24 + v25;
      }

      else
      {
        v26 = -(v21 + v23);
      }

      v6 = v26 + v10 * -0.5;
      goto LABEL_12;
    }

    if (self->_isWaitingToBeginAnimation && self->_direction == 1)
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x4010000000;
      v35 = &unk_21F9DA6A3;
      previousContinuousExposeIdentifiersInSwitcher = self->_previousContinuousExposeIdentifiersInSwitcher;
      previousContinuousExposeIdentifiersInStrip = self->_previousContinuousExposeIdentifiersInStrip;
      v36 = 0u;
      v37 = 0u;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __59__SBContinuousExposeIdentifierSlideModifier_frameForIndex___block_invoke;
      v31[3] = &unk_2783AA618;
      v31[5] = &v32;
      v31[6] = index;
      v31[4] = self;
      [(SBContinuousExposeIdentifierSlideModifier *)self _performBlockWithIdentifiersInSwitcher:previousContinuousExposeIdentifiersInSwitcher identifiersInStrip:previousContinuousExposeIdentifiersInStrip block:v31];
      v8 = v33[5];
      v10 = v33[6];
      v12 = v33[7];
      _Block_object_dispose(&v32, 8);
      goto LABEL_8;
    }
  }

LABEL_13:

  v27 = v6;
  v28 = v8;
  v29 = v10;
  v30 = v12;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

id __59__SBContinuousExposeIdentifierSlideModifier_frameForIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v9.receiver = *(a1 + 32);
  v9.super_class = SBContinuousExposeIdentifierSlideModifier;
  result = objc_msgSendSuper2(&v9, sel_frameForIndex_, v2);
  v4 = *(*(a1 + 40) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

- (CGPoint)anchorPointForIndex:(unint64_t)index
{
  v25.receiver = self;
  v25.super_class = SBContinuousExposeIdentifierSlideModifier;
  [(SBContinuousExposeIdentifierSlideModifier *)&v25 anchorPointForIndex:?];
  v6 = v5;
  v8 = v7;
  appLayouts = [(SBContinuousExposeIdentifierSlideModifier *)self appLayouts];
  v10 = [appLayouts objectAtIndex:index];

  continuousExposeIdentifier = [v10 continuousExposeIdentifier];
  if ([continuousExposeIdentifier isEqualToString:self->_continuousExposeIdentifier])
  {
    appLayoutOnStage = [(SBContinuousExposeIdentifierSlideModifier *)self appLayoutOnStage];
    v13 = [appLayoutOnStage isOrContainsAppLayout:v10];

    if ((v13 & 1) == 0 && (!self->_isWaitingToPrepareLayout || self->_direction) && self->_isWaitingToBeginAnimation && self->_direction == 1)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x3010000000;
      previousContinuousExposeIdentifiersInSwitcher = self->_previousContinuousExposeIdentifiersInSwitcher;
      v23 = 0;
      v24 = 0;
      previousContinuousExposeIdentifiersInStrip = self->_previousContinuousExposeIdentifiersInStrip;
      v22 = &unk_21F9DA6A3;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __65__SBContinuousExposeIdentifierSlideModifier_anchorPointForIndex___block_invoke;
      v18[3] = &unk_2783AA618;
      v18[5] = &v19;
      v18[6] = index;
      v18[4] = self;
      [(SBContinuousExposeIdentifierSlideModifier *)self _performBlockWithIdentifiersInSwitcher:previousContinuousExposeIdentifiersInSwitcher identifiersInStrip:previousContinuousExposeIdentifiersInStrip block:v18];
      v6 = v20[4];
      v8 = v20[5];
      _Block_object_dispose(&v19, 8);
    }
  }

  else
  {
  }

  v16 = v6;
  v17 = v8;
  result.y = v17;
  result.x = v16;
  return result;
}

id __65__SBContinuousExposeIdentifierSlideModifier_anchorPointForIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v7.receiver = *(a1 + 32);
  v7.super_class = SBContinuousExposeIdentifierSlideModifier;
  result = objc_msgSendSuper2(&v7, sel_anchorPointForIndex_, v2);
  v4 = *(*(a1 + 40) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  v20.receiver = self;
  v20.super_class = SBContinuousExposeIdentifierSlideModifier;
  [(SBContinuousExposeIdentifierSlideModifier *)&v20 scaleForIndex:?];
  v6 = v5;
  appLayouts = [(SBContinuousExposeIdentifierSlideModifier *)self appLayouts];
  v8 = [appLayouts objectAtIndex:index];

  continuousExposeIdentifier = [v8 continuousExposeIdentifier];
  if ([continuousExposeIdentifier isEqualToString:self->_continuousExposeIdentifier])
  {
    appLayoutOnStage = [(SBContinuousExposeIdentifierSlideModifier *)self appLayoutOnStage];
    v11 = [appLayoutOnStage isOrContainsAppLayout:v8];

    if ((v11 & 1) == 0 && (!self->_isWaitingToPrepareLayout || self->_direction) && self->_isWaitingToBeginAnimation && self->_direction == 1)
    {
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      previousContinuousExposeIdentifiersInSwitcher = self->_previousContinuousExposeIdentifiersInSwitcher;
      previousContinuousExposeIdentifiersInStrip = self->_previousContinuousExposeIdentifiersInStrip;
      v19 = 0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __59__SBContinuousExposeIdentifierSlideModifier_scaleForIndex___block_invoke;
      v15[3] = &unk_2783AA618;
      v15[5] = &v16;
      v15[6] = index;
      v15[4] = self;
      [(SBContinuousExposeIdentifierSlideModifier *)self _performBlockWithIdentifiersInSwitcher:previousContinuousExposeIdentifiersInSwitcher identifiersInStrip:previousContinuousExposeIdentifiersInStrip block:v15];
      v6 = v17[3];
      _Block_object_dispose(&v16, 8);
    }
  }

  else
  {
  }

  return v6;
}

id __59__SBContinuousExposeIdentifierSlideModifier_scaleForIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5.receiver = *(a1 + 32);
  v5.super_class = SBContinuousExposeIdentifierSlideModifier;
  result = objc_msgSendSuper2(&v5, sel_scaleForIndex_, v2);
  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (CGRect)adjustedSpaceAccessoryViewFrame:(CGRect)frame forAppLayout:(id)layout
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  layoutCopy = layout;
  v48.receiver = self;
  v48.super_class = SBContinuousExposeIdentifierSlideModifier;
  [(SBContinuousExposeIdentifierSlideModifier *)&v48 adjustedSpaceAccessoryViewFrame:layoutCopy forAppLayout:x, y, width, height];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  continuousExposeIdentifier = [layoutCopy continuousExposeIdentifier];
  if (![continuousExposeIdentifier isEqualToString:self->_continuousExposeIdentifier])
  {
LABEL_12:

    goto LABEL_13;
  }

  appLayoutOnStage = [(SBContinuousExposeIdentifierSlideModifier *)self appLayoutOnStage];
  v20 = [appLayoutOnStage isOrContainsAppLayout:layoutCopy];

  if ((v20 & 1) == 0)
  {
    if (self->_isWaitingToPrepareLayout && !self->_direction)
    {
LABEL_8:
      continuousExposeIdentifier = [(SBSwitcherModifier *)self windowingConfiguration];
      [continuousExposeIdentifier stripWidth];
      v24 = v23;
      [continuousExposeIdentifier screenEdgePadding];
      v26 = v25;
      if (([(SBContinuousExposeIdentifierSlideModifier *)self isRTLEnabled]& 1) != 0)
      {
        [(SBContinuousExposeIdentifierSlideModifier *)self containerViewBounds];
        v29 = v24 + v26 + v27 + v28;
      }

      else
      {
        v29 = -(v24 + v26);
      }

      v11 = v29 + v15 * -0.5;
      goto LABEL_12;
    }

    if (self->_isWaitingToBeginAnimation && self->_direction == 1)
    {
      v42 = 0;
      v43 = &v42;
      v44 = 0x4010000000;
      v45 = &unk_21F9DA6A3;
      previousContinuousExposeIdentifiersInSwitcher = self->_previousContinuousExposeIdentifiersInSwitcher;
      v46 = 0u;
      v47 = 0u;
      previousContinuousExposeIdentifiersInStrip = self->_previousContinuousExposeIdentifiersInStrip;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __90__SBContinuousExposeIdentifierSlideModifier_adjustedSpaceAccessoryViewFrame_forAppLayout___block_invoke;
      v34[3] = &unk_2783AA6E0;
      v37 = &v42;
      v38 = x;
      v39 = y;
      v40 = width;
      v41 = height;
      v35 = layoutCopy;
      selfCopy = self;
      [(SBContinuousExposeIdentifierSlideModifier *)self _performBlockWithIdentifiersInSwitcher:previousContinuousExposeIdentifiersInSwitcher identifiersInStrip:previousContinuousExposeIdentifiersInStrip block:v34];
      v13 = v43[5];
      v15 = v43[6];
      v17 = v43[7];

      _Block_object_dispose(&v42, 8);
      goto LABEL_8;
    }
  }

LABEL_13:

  v30 = v11;
  v31 = v13;
  v32 = v15;
  v33 = v17;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

id __90__SBContinuousExposeIdentifierSlideModifier_adjustedSpaceAccessoryViewFrame_forAppLayout___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9.receiver = *(a1 + 40);
  v9.super_class = SBContinuousExposeIdentifierSlideModifier;
  result = objc_msgSendSuper2(&v9, sel_adjustedSpaceAccessoryViewFrame_forAppLayout_, v2, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  v4 = *(*(a1 + 48) + 8);
  v4[4] = v5;
  v4[5] = v6;
  v4[6] = v7;
  v4[7] = v8;
  return result;
}

- (id)animationAttributesForLayoutElement:(id)element
{
  elementCopy = element;
  v5 = elementCopy;
  if (!self->_isWaitingToBeginAnimation || [elementCopy switcherLayoutElementType] || (-[SBContinuousExposeIdentifierSlideModifier appLayoutOnStage](self, "appLayoutOnStage"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqual:", v5), v6, (v7 & 1) != 0))
  {
    v14.receiver = self;
    v14.super_class = SBContinuousExposeIdentifierSlideModifier;
    v8 = [(SBContinuousExposeIdentifierSlideModifier *)&v14 animationAttributesForLayoutElement:v5];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = SBContinuousExposeIdentifierSlideModifier;
    v10 = [(SBContinuousExposeIdentifierSlideModifier *)&v15 animationAttributesForLayoutElement:v5];
    v8 = [v10 mutableCopy];

    [v8 setLayoutUpdateMode:3];
    switcherSettings = [(SBContinuousExposeIdentifierSlideModifier *)self switcherSettings];
    windowingSettings = [switcherSettings windowingSettings];
    appToAppLayoutSettings = [windowingSettings appToAppLayoutSettings];
    [v8 setLayoutSettings:appToAppLayoutSettings];
  }

  return v8;
}

- (id)handleContinuousExposeIdentifiersChangedEvent:(id)event
{
  v14.receiver = self;
  v14.super_class = SBContinuousExposeIdentifierSlideModifier;
  eventCopy = event;
  v5 = [(SBSwitcherModifier *)&v14 handleContinuousExposeIdentifiersChangedEvent:eventCopy];
  isAnimated = [eventCopy isAnimated];

  if (isAnimated)
  {
    direction = self->_direction;
    if (direction == 1)
    {
      if (self->_isWaitingToBeginAnimation)
      {
        goto LABEL_10;
      }

      _beginAnimation = [(SBContinuousExposeIdentifierSlideModifier *)self _beginAnimation];
      v12 = SBAppendSwitcherModifierResponse(_beginAnimation, v5);
      goto LABEL_9;
    }

    if (!direction && !self->_isWaitingToPrepareLayout && !self->_isWaitingToBeginAnimation)
    {
      _beginAnimation = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:2 updateMode:2];
      v9 = SBAppendSwitcherModifierResponse(_beginAnimation, v5);

      v10 = [SBTimerEventSwitcherEventResponse alloc];
      _waitingToPrepareLayoutReason = [(SBContinuousExposeIdentifierSlideModifier *)self _waitingToPrepareLayoutReason];
      v5 = [(SBTimerEventSwitcherEventResponse *)v10 initWithDelay:0 validator:_waitingToPrepareLayoutReason reason:0.0];

      v12 = SBAppendSwitcherModifierResponse(v5, v9);

      self->_isWaitingToPrepareLayout = 1;
LABEL_9:

      v5 = v12;
    }
  }

LABEL_10:

  return v5;
}

- (id)handleTimerEvent:(id)event
{
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = SBContinuousExposeIdentifierSlideModifier;
  v5 = [(SBSwitcherModifier *)&v15 handleTimerEvent:eventCopy];
  if (!self->_direction && self->_isWaitingToPrepareLayout && ([eventCopy reason], v6 = objc_claimAutoreleasedReturnValue(), -[SBContinuousExposeIdentifierSlideModifier _waitingToPrepareLayoutReason](self, "_waitingToPrepareLayoutReason"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqualToString:", v7), v7, v6, v8))
  {
    self->_isWaitingToPrepareLayout = 0;
    _beginAnimation = [(SBContinuousExposeIdentifierSlideModifier *)self _beginAnimation];
    v10 = SBAppendSwitcherModifierResponse(_beginAnimation, v5);

    v5 = v10;
  }

  else if (self->_isWaitingToBeginAnimation)
  {
    reason = [eventCopy reason];
    _waitingToAnimateReason = [(SBContinuousExposeIdentifierSlideModifier *)self _waitingToAnimateReason];
    v13 = [reason isEqualToString:_waitingToAnimateReason];

    if (v13)
    {
      self->_isWaitingToBeginAnimation = 0;
      [(SBChainableModifier *)self setState:1];
    }
  }

  return v5;
}

- (id)_beginAnimation
{
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:3];
  switcherSettings = [(SBContinuousExposeIdentifierSlideModifier *)self switcherSettings];
  windowingSettings = [switcherSettings windowingSettings];
  appToAppLayoutSettings = [windowingSettings appToAppLayoutSettings];
  [appToAppLayoutSettings response];
  v8 = v7 * 0.5;

  v9 = [SBTimerEventSwitcherEventResponse alloc];
  _waitingToAnimateReason = [(SBContinuousExposeIdentifierSlideModifier *)self _waitingToAnimateReason];
  v11 = [(SBTimerEventSwitcherEventResponse *)v9 initWithDelay:0 validator:_waitingToAnimateReason reason:v8];

  v12 = SBAppendSwitcherModifierResponse(v11, v3);

  self->_isWaitingToBeginAnimation = 1;

  return v12;
}

- (void)_performBlockWithIdentifiersInSwitcher:(id)switcher identifiersInStrip:(id)strip block:(id)block
{
  blockCopy = block;
  stripCopy = strip;
  switcherCopy = switcher;
  v11 = [[SBOverrideContinuousExposeIdentifiersSwitcherModifier alloc] initWithContinuousExposeIdentifiersInSwitcher:switcherCopy continuousExposeIdentifiersInStrip:stripCopy];

  [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:v11 usingBlock:blockCopy];
}

- (void)initWithContinuousExposeIdentifier:(uint64_t)a1 previousContinuousExposeIdentifiersInSwitcher:(uint64_t)a2 previousContinuousExposeIdentifiersInStrip:direction:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeIdentifierSlideModifier.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"continuousExposeIdentifier"}];
}

- (void)initWithContinuousExposeIdentifier:(uint64_t)a1 previousContinuousExposeIdentifiersInSwitcher:(uint64_t)a2 previousContinuousExposeIdentifiersInStrip:direction:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeIdentifierSlideModifier.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"previousContinuousExposeIdentifiersInSwitcher"}];
}

- (void)initWithContinuousExposeIdentifier:(uint64_t)a1 previousContinuousExposeIdentifiersInSwitcher:(uint64_t)a2 previousContinuousExposeIdentifiersInStrip:direction:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBContinuousExposeIdentifierSlideModifier.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"previousContinuousExposeIdentifiersInStrip"}];
}

@end