@interface SBTransientlyVisibleSlideOverTongueWindowingModifier
- (SBTransientlyVisibleSlideOverTongueWindowingModifier)initWithTonguePresentationReason:(int64_t)reason;
- (double)_collapseSettlingDuration;
- (void)_collapseAndPrepareForDismiss;
- (void)didEdgeProtectSlideOverTongue:(id)tongue;
- (void)gestureWillBegin:(id)begin;
- (void)timerFired:(id)fired;
- (void)transitionWillBegin:(id)begin;
- (void)willBegin;
@end

@implementation SBTransientlyVisibleSlideOverTongueWindowingModifier

- (SBTransientlyVisibleSlideOverTongueWindowingModifier)initWithTonguePresentationReason:(int64_t)reason
{
  v5.receiver = self;
  v5.super_class = SBTransientlyVisibleSlideOverTongueWindowingModifier;
  result = [(SBWindowingModifier *)&v5 init];
  if (result)
  {
    result->_tonguePresentationReason = reason;
  }

  return result;
}

- (void)willBegin
{
  v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:32 updateMode:3];
  [(SBWindowingModifier *)self appendResponse:v3];
  if (self->_tonguePresentationReason == 1)
  {
    self->_didCollapseSlideOverTongue = 0;
    objc_initWeak(&location, self);
    v4 = [SBTimerEventSwitcherEventResponse alloc];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __65__SBTransientlyVisibleSlideOverTongueWindowingModifier_willBegin__block_invoke;
    v9 = &unk_2783AD4A0;
    objc_copyWeak(&v10, &location);
    v5 = [(SBTimerEventSwitcherEventResponse *)v4 initWithDelay:&v6 validator:@"SBSlideOverTongueDisappearanceReason" reason:3.0];
    [(SBWindowingModifier *)self appendResponse:v5, v6, v7, v8, v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

BOOL __65__SBTransientlyVisibleSlideOverTongueWindowingModifier_willBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (void)gestureWillBegin:(id)begin
{
  beginCopy = begin;
  displayItemInSlideOver = [(SBTransientlyVisibleSlideOverTongueWindowingModifier *)self displayItemInSlideOver];
  if (!displayItemInSlideOver || ([beginCopy isIndirectPanGestureEvent] & 1) == 0 && (!objc_msgSend(beginCopy, "isWindowDragGestureEvent") || (objc_msgSend(beginCopy, "selectedAppLayout"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsItem:", displayItemInSlideOver), v5, (v6 & 1) == 0)))
  {
    [(SBTransientlyVisibleSlideOverTongueWindowingModifier *)self _collapseAndPrepareForDismiss];
  }
}

- (void)transitionWillBegin:(id)begin
{
  beginCopy = begin;
  if ([beginCopy phase] == 1)
  {
    if (![beginCopy isRotationTransition] || (v4 = objc_msgSend(beginCopy, "toInterfaceOrientation"), v4 != objc_msgSend(beginCopy, "fromInterfaceOrientation")))
    {
      [(SBTransientlyVisibleSlideOverTongueWindowingModifier *)self _collapseAndPrepareForDismiss];
    }
  }
}

- (void)didEdgeProtectSlideOverTongue:(id)tongue
{
  isTonguePresented = [tongue isTonguePresented];
  tonguePresentationReason = self->_tonguePresentationReason;
  if (isTonguePresented)
  {
    if (!tonguePresentationReason)
    {
      if (self->_hasBegunEdgeProtect)
      {

        [(SBWindowingModifier *)self complete];
      }

      else
      {
        self->_hasBegunEdgeProtect = 1;
      }
    }
  }

  else if (tonguePresentationReason != 1)
  {

    [(SBTransientlyVisibleSlideOverTongueWindowingModifier *)self _collapseAndPrepareForDismiss];
  }
}

- (void)timerFired:(id)fired
{
  firedCopy = fired;
  reason = [firedCopy reason];
  if ([reason isEqualToString:@"SBSlideOverTongueDisappearanceReason"])
  {
    tonguePresentationReason = self->_tonguePresentationReason;

    if (tonguePresentationReason == 1)
    {
      [(SBTransientlyVisibleSlideOverTongueWindowingModifier *)self _collapseAndPrepareForDismiss];
      goto LABEL_8;
    }
  }

  else
  {
  }

  if (self->_finishedReason)
  {
    reason2 = [firedCopy reason];
    v7 = [reason2 isEqualToString:self->_finishedReason];

    if (v7)
    {
      [(SBWindowingModifier *)self complete];
    }
  }

LABEL_8:
}

- (void)_collapseAndPrepareForDismiss
{
  if (!self->_didCollapseSlideOverTongue)
  {
    self->_didCollapseSlideOverTongue = 1;
    v3 = [[SBUpdateLayoutSwitcherEventResponse alloc] initWithOptions:32 updateMode:3];
    [(SBWindowingModifier *)self appendResponse:v3];
  }

  if (!self->_finishedReason)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%p", @"SBSlideOverTongueFinishedReason", self];
    finishedReason = self->_finishedReason;
    self->_finishedReason = v4;
  }

  objc_initWeak(&location, self);
  v6 = [SBTimerEventSwitcherEventResponse alloc];
  [(SBTransientlyVisibleSlideOverTongueWindowingModifier *)self _collapseSettlingDuration];
  v8 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__SBTransientlyVisibleSlideOverTongueWindowingModifier__collapseAndPrepareForDismiss__block_invoke;
  v10[3] = &unk_2783AD4A0;
  objc_copyWeak(&v11, &location);
  v9 = [(SBTimerEventSwitcherEventResponse *)v6 initWithDelay:v10 validator:self->_finishedReason reason:v8];
  [(SBWindowingModifier *)self appendResponse:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

BOOL __85__SBTransientlyVisibleSlideOverTongueWindowingModifier__collapseAndPrepareForDismiss__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained parentModifier];
  v3 = v2 != 0;

  return v3;
}

- (double)_collapseSettlingDuration
{
  slideOverTongueLayoutElement = [(SBTransientlyVisibleSlideOverTongueWindowingModifier *)self slideOverTongueLayoutElement];
  v4 = [(SBWindowingModifier *)self animationAttributesForItem:slideOverTongueLayoutElement];

  positionSettings = [v4 positionSettings];
  v6 = positionSettings;
  if (positionSettings)
  {
    layoutSettings = positionSettings;
  }

  else
  {
    layoutSettings = [v4 layoutSettings];
  }

  v8 = layoutSettings;

  [v8 settlingDuration];
  v10 = v9;

  return v10;
}

@end