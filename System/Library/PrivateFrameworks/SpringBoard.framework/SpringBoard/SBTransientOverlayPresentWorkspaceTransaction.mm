@interface SBTransientOverlayPresentWorkspaceTransaction
- (BOOL)_canBeInterrupted;
- (BOOL)canInterruptForTransitionRequest:(id)request;
- (SBTransientOverlayPresentWorkspaceTransaction)initWithTransitionRequest:(id)request;
- (void)_begin;
- (void)_didComplete;
- (void)_logForInterruptAttemptReason:(id)reason;
- (void)_performStandardPresentationAnimated:(BOOL)animated;
- (void)_willBegin;
- (void)_willInterruptWithReason:(id)reason;
- (void)animationControllerDidFinishAnimation:(id)animation;
@end

@implementation SBTransientOverlayPresentWorkspaceTransaction

- (SBTransientOverlayPresentWorkspaceTransaction)initWithTransitionRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = SBTransientOverlayPresentWorkspaceTransaction;
  return [(SBMainWorkspaceTransaction *)&v4 initWithTransitionRequest:request];
}

- (void)_willBegin
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBTransientOverlayPresentWorkspaceTransaction.m" lineNumber:61 description:{@"No publisher for window scene: %@; self: %@", a3, a2}];
}

- (void)_begin
{
  v19.receiver = self;
  v19.super_class = SBTransientOverlayPresentWorkspaceTransaction;
  [(SBTransientOverlayPresentWorkspaceTransaction *)&v19 _begin];
  [(SBTransientOverlayPresentWorkspaceTransaction *)self addMilestone:@"SBTransientOverlayPresentWorkspaceTransactionMilestonePresentationCompletion"];
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  transientOverlayContext = [transitionRequest transientOverlayContext];
  transientOverlay = [transientOverlayContext transientOverlay];
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  switcherController = [windowScene switcherController];

  workspace = [transitionRequest workspace];
  keyboardFocusController = [workspace keyboardFocusController];
  windowScene2 = [(SBWorkspaceTransaction *)self windowScene];
  v11 = [keyboardFocusController bufferEventsForSpringBoardScene:windowScene2 reason:@"SBTransientOverlayPresentWorkspaceTransaction"];
  eventBufferingAssertion = self->_eventBufferingAssertion;
  self->_eventBufferingAssertion = v11;

  if (transientOverlay && [switcherController unlockedEnvironmentMode] == 2)
  {
    v13 = [switcherController appLayoutForWorkspaceTransientOverlay:transientOverlay];
    if (v13)
    {
      viewController = [transientOverlay viewController];
      v15 = [viewController preferredUnlockedGestureDismissalStyle] == 3;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  layoutStateTransitionCoordinator = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
  [layoutStateTransitionCoordinator beginTransitionForWorkspaceTransaction:self];
  if (v15)
  {
    v17 = [switcherController animationControllerForTransitionRequest:transitionRequest];
    animation = self->_animation;
    self->_animation = v17;

    if (self->_animation)
    {
      [(SBTransientOverlayPresentWorkspaceTransaction *)self addMilestone:@"SBTransientOverlayPresentWorkspaceTransactionMilestoneAnimation"];
      [(SBUIAnimationController *)self->_animation addObserver:self];
      [(SBTransientOverlayPresentWorkspaceTransaction *)self addChildTransaction:self->_animation withSchedulingPolicy:0];
    }
  }

  else
  {
    -[SBTransientOverlayPresentWorkspaceTransaction _performStandardPresentationAnimated:](self, "_performStandardPresentationAnimated:", [transientOverlayContext isAnimated]);
  }
}

- (BOOL)_canBeInterrupted
{
  if ([(SBUIAnimationController *)self->_animation isReasonableMomentToInterrupt])
  {
    return 1;
  }

  return [(SBWorkspaceTransaction *)self _isInterruptingForTransitionRequest];
}

- (void)_didComplete
{
  [(BSInvalidatable *)self->_displayLayoutTransitionAssertion invalidate];
  displayLayoutTransitionAssertion = self->_displayLayoutTransitionAssertion;
  self->_displayLayoutTransitionAssertion = 0;

  [(BSInvalidatable *)self->_eventBufferingAssertion invalidate];
  v4.receiver = self;
  v4.super_class = SBTransientOverlayPresentWorkspaceTransaction;
  [(SBMainWorkspaceTransaction *)&v4 _didComplete];
}

- (BOOL)canInterruptForTransitionRequest:(id)request
{
  requestCopy = request;
  if (self->_animation)
  {
    v5 = objc_opt_class();
    transientOverlay = SBSafeCast(v5, requestCopy);
    copyMainWorkspaceTransitionRequest = [transientOverlay copyMainWorkspaceTransitionRequest];
    if ([(SBTransientOverlayPresentWorkspaceTransaction *)self isInterrupted])
    {
      [(SBTransientOverlayPresentWorkspaceTransaction *)self _logForInterruptAttemptReason:@"<SBTransientOverlayPresentWorkspaceTransaction:%p> not interruptible because: already interrupted", self];
LABEL_17:
      LOBYTE(v12) = 0;
      goto LABEL_18;
    }

    applicationContext = [copyMainWorkspaceTransitionRequest applicationContext];
    isBackground = [applicationContext isBackground];

    if (isBackground)
    {
      [(SBTransientOverlayPresentWorkspaceTransaction *)self _logForInterruptAttemptReason:@"<SBTransientOverlayPresentWorkspaceTransaction:%p> not interruptible because: request is for background activation", self];
      goto LABEL_17;
    }

    v16 = +[SBSetupManager sharedInstance];
    if ([v16 isInSetupMode])
    {
      v17 = +[SBSetupManager sharedInstance];
      isInSetupModeReadyToExit = [v17 isInSetupModeReadyToExit];

      if ((isInSetupModeReadyToExit & 1) == 0)
      {
        [(SBTransientOverlayPresentWorkspaceTransaction *)self _logForInterruptAttemptReason:@"<SBTransientOverlayPresentWorkspaceTransaction:%p> not interruptible because: we are in setup mode", self];
        goto LABEL_17;
      }
    }

    else
    {
    }

    transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
    source = [transitionRequest source];

    if (source == 31)
    {
      [(SBTransientOverlayPresentWorkspaceTransaction *)self _logForInterruptAttemptReason:@"<SBTransientOverlayPresentWorkspaceTransaction:%p> not interruptible because: we are in a startup transition", self];
      goto LABEL_17;
    }

    v22 = self->_animation;
    if (([(SBUIAnimationController *)v22 isInterruptible]& 1) != 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = 0;
        v27 = &v26;
        v28 = 0x2020000000;
        v29 = 0;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __82__SBTransientOverlayPresentWorkspaceTransaction_canInterruptForTransitionRequest___block_invoke;
        v25[3] = &unk_2783A8D30;
        v25[4] = &v26;
        [(SBUIAnimationController *)v22 _enumerateCoordinatingAnimationsWithBlock:v25];
        if ((v27[3] & 1) == 0)
        {
          [(SBTransientOverlayPresentWorkspaceTransaction *)self _logForInterruptAttemptReason:@"<SBTransientOverlayPresentWorkspaceTransaction:%p> not interruptible because: animation isn't switcher animation and doesn't have switcher animation as a child", self];
          _Block_object_dispose(&v26, 8);
          goto LABEL_27;
        }

        _Block_object_dispose(&v26, 8);
      }

      if (!copyMainWorkspaceTransitionRequest || [copyMainWorkspaceTransitionRequest source] != 14)
      {
        LOBYTE(v12) = 1;
        goto LABEL_29;
      }

      [(SBTransientOverlayPresentWorkspaceTransaction *)self _logForInterruptAttemptReason:@"<SBTransientOverlayPresentWorkspaceTransaction:%p> not interruptible because: rotation", self];
    }

    else
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      [(SBTransientOverlayPresentWorkspaceTransaction *)self _logForInterruptAttemptReason:@"<SBTransientOverlayPresentWorkspaceTransaction:%p> not interruptible because: animation isn't interruptible: animationController=<%@:%p>", self, v24, v22];
    }

LABEL_27:
    LOBYTE(v12) = 0;
LABEL_29:

    goto LABEL_18;
  }

  transitionRequest2 = [(SBWorkspaceTransaction *)self transitionRequest];
  transientOverlayContext = [transitionRequest2 transientOverlayContext];
  transientOverlay = [transientOverlayContext transientOverlay];

  transientOverlayContext2 = [requestCopy transientOverlayContext];
  copyMainWorkspaceTransitionRequest = [transientOverlayContext2 transientOverlay];

  if ([transientOverlay isAnalogousToEntity:copyMainWorkspaceTransitionRequest] && (objc_msgSend(requestCopy, "transientOverlayContext"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "transitionType"), v11, v12 == 1))
  {
    v13 = @"<SBTransientOverlayPresentWorkspaceTransaction:%p> interruptible because: next request is to dismiss the same transient overlay we're currently presenting";
  }

  else
  {
    LOBYTE(v12) = 0;
    v13 = @"<SBTransientOverlayPresentWorkspaceTransaction:%p> not interruptible because: _animation is nil";
  }

  [(SBTransientOverlayPresentWorkspaceTransaction *)self _logForInterruptAttemptReason:v13, self];
LABEL_18:

  return v12;
}

void __82__SBTransientOverlayPresentWorkspaceTransaction_canInterruptForTransitionRequest___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)_willInterruptWithReason:(id)reason
{
  v5.receiver = self;
  v5.super_class = SBTransientOverlayPresentWorkspaceTransaction;
  [(SBTransientOverlayPresentWorkspaceTransaction *)&v5 _willInterruptWithReason:reason];
  layoutStateTransitionCoordinator = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
  if ([layoutStateTransitionCoordinator isTransitioning])
  {
    [layoutStateTransitionCoordinator willEndTransition];
    [layoutStateTransitionCoordinator endTransitionWithError:0];
  }
}

- (void)animationControllerDidFinishAnimation:(id)animation
{
  [(SBTransientOverlayPresentWorkspaceTransaction *)self _performStandardPresentationAnimated:0];

  [(SBTransientOverlayPresentWorkspaceTransaction *)self removeMilestone:@"SBTransientOverlayPresentWorkspaceTransactionMilestoneAnimation"];
}

- (void)_logForInterruptAttemptReason:(id)reason
{
  v4 = MEMORY[0x277CCACA8];
  reasonCopy = reason;
  v6 = [[v4 alloc] initWithFormat:reasonCopy arguments:&v7];

  if ([(SBTransientOverlayPresentWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    [(SBTransientOverlayPresentWorkspaceTransaction *)self _addAuditHistoryItem:@"%@", v6];
  }
}

- (void)_performStandardPresentationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  transientOverlayContext = [transitionRequest transientOverlayContext];
  transientOverlay = [transientOverlayContext transientOverlay];
  viewController = [transientOverlay viewController];
  presentationManager = [transientOverlayContext presentationManager];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __86__SBTransientOverlayPresentWorkspaceTransaction__performStandardPresentationAnimated___block_invoke;
  v31[3] = &unk_2783A8C18;
  v31[4] = self;
  v10 = MEMORY[0x223D6F7F0](v31);
  if (-[SBTransientOverlayPresentWorkspaceTransaction isInterrupted](self, "isInterrupted") || !viewController || ([presentationManager isPresentingViewController:viewController] & 1) != 0)
  {
    v10[2](v10);
  }

  else
  {
    windowScene = [(SBWorkspaceTransaction *)self windowScene];
    switcherController = [windowScene switcherController];

    v17 = [switcherController isAcquiredTransientOverlayViewController:viewController];
    if (v17)
    {
      [viewController beginIgnoringAppearanceUpdates];
      [viewController beginIgnoringContentOverlayInsetUpdates];
      [switcherController removeAcquiredTransientOverlayViewController:viewController];
    }

    v13 = [(SBTransientOverlayPresentationRequest *)[SBMutableTransientOverlayPresentationRequest alloc] initWithViewController:viewController];
    [(SBMutableTransientOverlayPresentationRequest *)v13 setAnimated:animatedCopy];
    -[SBMutableTransientOverlayPresentationRequest setShouldDismissSiri:](v13, "setShouldDismissSiri:", [transientOverlayContext shouldDismissSiriUponPresentation]);
    originatingProcess = [transientOverlayContext originatingProcess];
    [(SBMutableTransientOverlayPresentationRequest *)v13 setOriginatingProcess:originatingProcess];

    windowScene2 = [transientOverlayContext windowScene];
    [(SBMutableTransientOverlayPresentationRequest *)v13 setWindowScene:windowScene2];

    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __86__SBTransientOverlayPresentWorkspaceTransaction__performStandardPresentationAnimated___block_invoke_2;
    v19[3] = &unk_2783A8D58;
    v21 = &v23;
    v16 = v10;
    v20 = v16;
    v22 = &v27;
    [(SBMutableTransientOverlayPresentationRequest *)v13 setCompletionHandler:v19];
    [presentationManager performPresentationRequest:v13];
    if ((v28[3] & 1) == 0)
    {
      *(v24 + 24) = 1;
    }

    if (v17)
    {
      [viewController endIgnoringAppearanceUpdates];
      [viewController endIgnoringContentOverlayInsetUpdates];
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __86__SBTransientOverlayPresentWorkspaceTransaction__performStandardPresentationAnimated___block_invoke_3;
    v18[3] = &unk_2783A8D80;
    v18[4] = self;
    [(SBTransientOverlayPresentWorkspaceTransaction *)self _enumerateObserversWithBlock:v18];
    if (*(v28 + 24) == 1)
    {
      v16[2](v16);
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);
  }
}

void __86__SBTransientOverlayPresentWorkspaceTransaction__performStandardPresentationAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutStateTransitionCoordinator];
  if ([v2 isTransitioning])
  {
    [v2 willEndTransition];
    [v2 endTransitionWithError:0];
  }

  [*(a1 + 32) removeMilestone:@"SBTransientOverlayPresentWorkspaceTransactionMilestonePresentationCompletion"];
}

uint64_t __86__SBTransientOverlayPresentWorkspaceTransaction__performStandardPresentationAnimated___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (*(*(*(result + 40) + 8) + 24) == 1)
  {
    result = (*(*(result + 32) + 16))();
  }

  *(*(*(v1 + 48) + 8) + 24) = 1;
  return result;
}

void __86__SBTransientOverlayPresentWorkspaceTransaction__performStandardPresentationAnimated___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 transientOverlayPresentWorkspaceTransactionDidPerformPresentation:*(a1 + 32)];
  }
}

@end