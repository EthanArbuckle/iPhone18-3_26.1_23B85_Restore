@interface SBSwitcherSwipeUpGestureFloatingSwitcherModifier
- (CGRect)frameForIndex:(unint64_t)index;
- (SBSwitcherSwipeUpGestureFloatingSwitcherModifier)initWithGestureID:(id)d;
- (double)scaleForIndex:(unint64_t)index;
- (id)handleGestureEvent:(id)event;
- (id)responseForProposedChildResponse:(id)response childModifier:(id)modifier event:(id)event;
@end

@implementation SBSwitcherSwipeUpGestureFloatingSwitcherModifier

- (SBSwitcherSwipeUpGestureFloatingSwitcherModifier)initWithGestureID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = SBSwitcherSwipeUpGestureFloatingSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v11 initWithGestureID:dCopy];
  if (v5)
  {
    v6 = [[SBGridSwipeUpGestureSwitcherModifier alloc] initWithGestureID:dCopy];
    gridSwipeUpGestureModifier = v5->_gridSwipeUpGestureModifier;
    v5->_gridSwipeUpGestureModifier = v6;

    [(SBChainableModifier *)v5 addChildModifier:v5->_gridSwipeUpGestureModifier];
    v8 = objc_alloc_init(SBDismissSiriSwitcherModifier);
    dismissSiriModifier = v5->_dismissSiriModifier;
    v5->_dismissSiriModifier = v8;

    [(SBChainableModifier *)v5 addChildModifier:v5->_dismissSiriModifier];
  }

  return v5;
}

- (id)responseForProposedChildResponse:(id)response childModifier:(id)modifier event:(id)event
{
  v12.receiver = self;
  v12.super_class = SBSwitcherSwipeUpGestureFloatingSwitcherModifier;
  modifierCopy = modifier;
  v9 = [(SBChainableModifier *)&v12 responseForProposedChildResponse:response childModifier:modifierCopy event:event];
  gridSwipeUpGestureModifier = self->_gridSwipeUpGestureModifier;

  if (gridSwipeUpGestureModifier == modifierCopy)
  {

    v9 = 0;
  }

  return v9;
}

- (id)handleGestureEvent:(id)event
{
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = SBSwitcherSwipeUpGestureFloatingSwitcherModifier;
  v5 = [(SBGestureSwitcherModifier *)&v15 handleGestureEvent:eventCopy];
  if ([eventCopy phase] == 3)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v14[3] = 0;
    gridSwipeUpGestureModifier = self->_gridSwipeUpGestureModifier;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__SBSwitcherSwipeUpGestureFloatingSwitcherModifier_handleGestureEvent___block_invoke;
    v11[3] = &unk_2783AB258;
    v13 = v14;
    v11[4] = self;
    v12 = eventCopy;
    [(SBChainableModifier *)self performTransactionWithTemporaryChildModifier:gridSwipeUpGestureModifier usingBlock:v11];
    v7 = objc_alloc_init(SBMutableSwitcherTransitionRequest);
    [(SBSwitcherTransitionRequest *)v7 setFloatingSwitcherVisible:BSSettingFlagIfYes()];
    v8 = [[SBPerformTransitionSwitcherEventResponse alloc] initWithTransitionRequest:v7 gestureInitiated:1];
    v9 = [(SBChainableModifierEventResponse *)SBSwitcherModifierEventResponse responseByAppendingResponse:v8 toResponse:v5];

    [(SBChainableModifier *)self setState:1];
    _Block_object_dispose(v14, 8);
    v5 = v9;
  }

  return v5;
}

uint64_t __71__SBSwitcherSwipeUpGestureFloatingSwitcherModifier_handleGestureEvent___block_invoke(void *a1)
{
  result = [*(a1[4] + 152) finalResponseForGestureEvent:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (CGRect)frameForIndex:(unint64_t)index
{
  [(SBSwitcherSwipeUpGestureFloatingSwitcherModifier *)self switcherViewBounds];
  UIRectGetCenter();
  v12.receiver = self;
  v12.super_class = SBSwitcherSwipeUpGestureFloatingSwitcherModifier;
  [(SBSwitcherSwipeUpGestureFloatingSwitcherModifier *)&v12 frameForIndex:index];
  UIRectGetCenter();
  v11.receiver = self;
  v11.super_class = SBSwitcherSwipeUpGestureFloatingSwitcherModifier;
  [(SBSwitcherSwipeUpGestureFloatingSwitcherModifier *)&v11 contentViewScale];
  CGAffineTransformMakeScale(&v10, v5, v5);
  SBRectWithSize();
  SBUnintegralizedRectCenteredAboutPoint();
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (double)scaleForIndex:(unint64_t)index
{
  v9.receiver = self;
  v9.super_class = SBSwitcherSwipeUpGestureFloatingSwitcherModifier;
  [(SBSwitcherSwipeUpGestureFloatingSwitcherModifier *)&v9 scaleForIndex:index];
  v5 = v4;
  v8.receiver = self;
  v8.super_class = SBSwitcherSwipeUpGestureFloatingSwitcherModifier;
  [(SBSwitcherSwipeUpGestureFloatingSwitcherModifier *)&v8 contentViewScale];
  return v5 * v6;
}

@end