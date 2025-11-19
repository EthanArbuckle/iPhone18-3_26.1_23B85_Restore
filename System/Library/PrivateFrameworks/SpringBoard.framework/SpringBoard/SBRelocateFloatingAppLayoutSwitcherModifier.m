@interface SBRelocateFloatingAppLayoutSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)a3;
- (SBRelocateFloatingAppLayoutSwitcherModifier)initWithTransitionID:(id)a3 floatingAppLayout:(id)a4 floatingConfiguration:(int64_t)a5 direction:(int64_t)a6 mixedGridModifier:(id)a7;
- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5;
- (double)scaleForIndex:(unint64_t)a3;
- (id)handleTimerEvent:(id)a3;
- (id)transitionDidEnd;
- (id)transitionWillBegin;
- (id)transitionWillUpdate;
@end

@implementation SBRelocateFloatingAppLayoutSwitcherModifier

- (SBRelocateFloatingAppLayoutSwitcherModifier)initWithTransitionID:(id)a3 floatingAppLayout:(id)a4 floatingConfiguration:(int64_t)a5 direction:(int64_t)a6 mixedGridModifier:(id)a7
{
  v13 = a4;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
  v15 = [(SBTransitionSwitcherModifier *)&v18 initWithTransitionID:a3];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_floatingAppLayout, a4);
    v16->_floatingConfiguration = a5;
    v16->_direction = a6;
    objc_storeStrong(&v16->_mixedGridModifier, a7);
    v16->_moveFloatingAppToLeadingSide = 0;
  }

  return v16;
}

- (id)transitionWillBegin
{
  v7.receiver = self;
  v7.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionWillBegin];
  if ([(SBRelocateFloatingAppLayoutSwitcherModifier *)self _goingToSwitcherWithLeadingFloatingApp])
  {
    v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:2];
    v5 = SBAppendSwitcherModifierResponse(v4, v3);

    v3 = v5;
  }

  return v3;
}

- (id)transitionWillUpdate
{
  v10.receiver = self;
  v10.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v10 transitionWillUpdate];
  if ([(SBRelocateFloatingAppLayoutSwitcherModifier *)self _comingFromSwitcherWithLeadingFloatingApp])
  {
    v4 = [(SBRelocateFloatingAppLayoutSwitcherModifier *)self medusaSettings];
    [v4 leadingSlideOverRelocationDelay];
    v6 = v5;

    v7 = [[SBTimerEventSwitcherEventResponse alloc] initWithDelay:0 validator:@"SBRelocateFloatingAppLayoutSwitcherModifierTimerReason" reason:v6];
    v8 = SBAppendSwitcherModifierResponse(v7, v3);

    v3 = v8;
  }

  return v3;
}

- (id)transitionDidEnd
{
  v7.receiver = self;
  v7.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
  v3 = [(SBTransitionSwitcherModifier *)&v7 transitionDidEnd];
  if ([(SBRelocateFloatingAppLayoutSwitcherModifier *)self _comingFromSwitcherWithLeadingFloatingApp])
  {
    v4 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:12 updateMode:3];
    v5 = SBAppendSwitcherModifierResponse(v4, v3);

    v3 = v5;
  }

  return v3;
}

- (id)handleTimerEvent:(id)a3
{
  v10.receiver = self;
  v10.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
  v4 = a3;
  v5 = [(SBTransitionSwitcherModifier *)&v10 handleTimerEvent:v4];
  v6 = [v4 reason];

  if ([(SBUpdateLayoutSwitcherEventResponse *)v6 isEqualToString:@"SBRelocateFloatingAppLayoutSwitcherModifierTimerReason"])
  {
    v7 = [(SBRelocateFloatingAppLayoutSwitcherModifier *)self _comingFromSwitcherWithLeadingFloatingApp];

    if (!v7)
    {
      goto LABEL_5;
    }

    self->_moveFloatingAppToLeadingSide = 1;
    v6 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:4 updateMode:2];
    v8 = SBAppendSwitcherModifierResponse(v6, v5);

    v5 = v8;
  }

LABEL_5:

  return v5;
}

- (CGRect)frameForIndex:(unint64_t)a3
{
  v5 = [(SBRelocateFloatingAppLayoutSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

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
    v19 = [(SBRelocateFloatingAppLayoutSwitcherModifier *)self switcherInterfaceOrientation];
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
      v23[6] = a3;
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
    [(SBRelocateFloatingAppLayoutSwitcherModifier *)&v22 floatingApplicationFrameInInterfaceOrientation:v19 floatingConfiguration:3];
  }

  else
  {
LABEL_2:
    v21.receiver = self;
    v21.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
    [(SBRelocateFloatingAppLayoutSwitcherModifier *)&v21 frameForIndex:a3];
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

- (double)opacityForLayoutRole:(int64_t)a3 inAppLayout:(id)a4 atIndex:(unint64_t)a5
{
  v8 = a4;
  if (self->_floatingAppLayout == v8 && [(SBRelocateFloatingAppLayoutSwitcherModifier *)self _comingFromSwitcherWithLeadingFloatingApp]&& !self->_moveFloatingAppToLeadingSide)
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
    [(SBRelocateFloatingAppLayoutSwitcherModifier *)&v12 opacityForLayoutRole:a3 inAppLayout:v8 atIndex:a5];
    v10 = v9;
  }

  return v10;
}

- (double)scaleForIndex:(unint64_t)a3
{
  v5 = [(SBRelocateFloatingAppLayoutSwitcherModifier *)self appLayouts];
  v6 = [v5 objectAtIndex:a3];

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
    v12[6] = a3;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:mixedGridModifier usingBlock:v12];
    v8 = v14[3];
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v11.receiver = self;
    v11.super_class = SBRelocateFloatingAppLayoutSwitcherModifier;
    [(SBRelocateFloatingAppLayoutSwitcherModifier *)&v11 scaleForIndex:a3];
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