@interface SBRelocateFloatingAppLayoutSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)index;
- (SBRelocateFloatingAppLayoutSwitcherModifier)initWithTransitionID:(id)d floatingAppLayout:(id)layout floatingConfiguration:(int64_t)configuration direction:(int64_t)direction mixedGridModifier:(id)modifier;
- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index;
- (double)scaleForIndex:(unint64_t)index;
- (id)handleTimerEvent:(id)event;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
@end

@implementation SBRelocateFloatingAppLayoutSwitcherModifier

- (SBRelocateFloatingAppLayoutSwitcherModifier)initWithTransitionID:(id)d floatingAppLayout:(id)layout floatingConfiguration:(int64_t)configuration direction:(int64_t)direction mixedGridModifier:(id)modifier
{
  layoutCopy = layout;
  modifierCopy = modifier;
  v18.receiver = self;
  v18.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
  v15 = [(SBTransitionSwitcherModifier *)&v18 initWithTransitionID:d];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_floatingAppLayout, layout);
    v16->_floatingConfiguration = configuration;
    v16->_direction = direction;
    objc_storeStrong(&v16->_mixedGridModifier, modifier);
    v16->_moveFloatingAppToLeadingSide = 0;
  }

  return v16;
}

- (id)transitionWillBegin
{
  v7.receiver = self;
  v7.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
  transitionWillBegin = [(SBTransitionSwitcherModifier *)&v7 transitionWillBegin];
  if ([(SBRelocateFloatingAppLayoutSwitcherModifier *)self _goingToSwitcherWithLeadingFloatingApp])
  {
    v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:2];
    v5 = SBAppendSwitcherModifierResponse(v4, transitionWillBegin);

    transitionWillBegin = v5;
  }

  return transitionWillBegin;
}

- (id)transitionWillUpdate
{
  v10.receiver = self;
  v10.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
  transitionWillUpdate = [(SBTransitionSwitcherModifier *)&v10 transitionWillUpdate];
  if ([(SBRelocateFloatingAppLayoutSwitcherModifier *)self _comingFromSwitcherWithLeadingFloatingApp])
  {
    medusaSettings = [(SBRelocateFloatingAppLayoutSwitcherModifier *)self medusaSettings];
    [medusaSettings leadingSlideOverRelocationDelay];
    v6 = v5;

    v7 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBRelocateFloatingAppLayoutSwitcherModifierTimerReason" reason:v6];
    v8 = SBAppendSwitcherModifierResponse(v7, transitionWillUpdate);

    transitionWillUpdate = v8;
  }

  return transitionWillUpdate;
}

- (id)transitionDidEnd
{
  v7.receiver = self;
  v7.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
  transitionDidEnd = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  if ([(SBRelocateFloatingAppLayoutSwitcherModifier *)self _comingFromSwitcherWithLeadingFloatingApp])
  {
    v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:3];
    v5 = SBAppendSwitcherModifierResponse(v4, transitionDidEnd);

    transitionDidEnd = v5;
  }

  return transitionDidEnd;
}

- (id)handleTimerEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
  eventCopy = event;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:eventCopy];
  reason = [eventCopy reason];

  if ([(SBUpdateLayoutSwitcherEventResponse *)reason isEqualToString:@"SBRelocateFloatingAppLayoutSwitcherModifierTimerReason"])
  {
    _comingFromSwitcherWithLeadingFloatingApp = [(SBRelocateFloatingAppLayoutSwitcherModifier *)self _comingFromSwitcherWithLeadingFloatingApp];

    if (!_comingFromSwitcherWithLeadingFloatingApp)
    {
      goto LABEL_5;
    }

    self->_moveFloatingAppToLeadingSide = 1;
    reason = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:2];
    v8 = SBAppendSwitcherModifierResponse(reason, v5);

    v5 = v8;
  }

LABEL_5:

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  appLayouts = [(SBRelocateFloatingAppLayoutSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (v6 != self->_floatingAppLayout)
  {
    goto LABEL_2;
  }

  if ([(SBRelocateFloatingAppLayoutSwitcherModifier *)self _goingToSwitcherWithLeadingFloatingApp]&& [(SBTransitionSwitcherModifier *)self isPreparingLayout])
  {
    v30.receiver = self;
    v30.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
    [(SBRelocateFloatingAppLayoutSwitcherModifier *)&v30 floatingApplicationFrameInInterfaceOrientation:[(SBRelocateFloatingAppLayoutSwitcherModifier *)self switcherInterfaceOrientation] floatingConfiguration:4];
    goto LABEL_3;
  }

  if ([(SBRelocateFloatingAppLayoutSwitcherModifier *)self _comingFromSwitcherWithLeadingFloatingApp])
  {
    switcherInterfaceOrientation = [(SBRelocateFloatingAppLayoutSwitcherModifier *)self switcherInterfaceOrientation];
    if (!self->_moveFloatingAppToLeadingSide)
    {
      v24 = 0;
      v25 = &v24;
      v26 = 0x4010000000;
      v27 = &unk_21F9DA6A3;
      mixedGridModifier = self->_mixedGridModifier;
      v28 = 0u;
      v29 = 0u;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __61__SBRelocateFloatingAppLayoutSwitcherModifier_frameForIndex___block_invoke;
      v23[3] = &unk_2783AA618;
      v23[4] = self;
      v23[5] = &v24;
      v23[6] = index;
      [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v23];
      v11 = v25[4];
      v12 = v25[5];
      v13 = v25[6];
      v14 = v25[7];
      _Block_object_dispose(&v24, 8);
      goto LABEL_4;
    }

    v22.receiver = self;
    v22.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
    [(SBRelocateFloatingAppLayoutSwitcherModifier *)&v22 floatingApplicationFrameInInterfaceOrientation:switcherInterfaceOrientation floatingConfiguration:3];
  }

  else
  {
LABEL_2:
    v21.receiver = self;
    v21.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
    [(SBRelocateFloatingAppLayoutSwitcherModifier *)&v21 frameForIndex:index];
  }

LABEL_3:
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
LABEL_4:

  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

void __61__SBRelocateFloatingAppLayoutSwitcherModifier_frameForIndex___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 192) frameForIndex:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 8);
  v2[4] = v3;
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;
  if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
  {
    Width = -CGRectGetWidth(*(*(*(a1 + 40) + 8) + 32));
  }

  else
  {
    [*(a1 + 32) switcherViewBounds];
    Width = CGRectGetWidth(v8);
  }

  *(*(*(a1 + 40) + 8) + 32) = Width;
}

- (double)opacityForLayoutRole:(int64_t)role inAppLayout:(id)layout atIndex:(unint64_t)index
{
  layoutCopy = layout;
  if (self->_floatingAppLayout == layoutCopy && [(SBRelocateFloatingAppLayoutSwitcherModifier *)self _comingFromSwitcherWithLeadingFloatingApp]&& !self->_moveFloatingAppToLeadingSide)
  {
    if ([(SBTransitionSwitcherModifier *)self isPreparingLayout])
    {
      v10 = 1.0;
    }

    else
    {
      v10 = 0.0;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
    [(SBRelocateFloatingAppLayoutSwitcherModifier *)&v12 opacityForLayoutRole:role inAppLayout:layoutCopy atIndex:index];
    v10 = v9;
  }

  return v10;
}

- (double)scaleForIndex:(unint64_t)index
{
  appLayouts = [(SBRelocateFloatingAppLayoutSwitcherModifier *)self appLayouts];
  v6 = [appLayouts objectAtIndex:index];

  if (v6 == self->_floatingAppLayout && [(SBRelocateFloatingAppLayoutSwitcherModifier *)self _comingFromSwitcherWithLeadingFloatingApp]&& !self->_moveFloatingAppToLeadingSide)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    mixedGridModifier = self->_mixedGridModifier;
    v16 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__SBRelocateFloatingAppLayoutSwitcherModifier_scaleForIndex___block_invoke;
    v12[3] = &unk_2783AA618;
    v12[4] = self;
    v12[5] = &v13;
    v12[6] = index;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v12];
    v8 = v14[3];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
    [(SBRelocateFloatingAppLayoutSwitcherModifier *)&v11 scaleForIndex:index];
    v8 = v7;
  }

  return v8;
}

uint64_t __61__SBRelocateFloatingAppLayoutSwitcherModifier_scaleForIndex___block_invoke(void *a1)
{
  result = [*(a1[4] + 192) scaleForIndex:a1[6]];
  *(*(a1[5] + 8) + 24) = v3;
  return result;
}

@end