@interface SBTransientOverlayPresentWorkspaceTransaction
- (BOOL)_canBeInterrupted;
- (BOOL)canInterruptForTransitionRequest:(id)a3;
- (SBTransientOverlayPresentWorkspaceTransaction)initWithTransitionRequest:(id)a3;
- (void)_begin;
- (void)_didComplete;
- (void)_logForInterruptAttemptReason:(id)a3;
- (void)_performStandardPresentationAnimated:(BOOL)a3;
- (void)_willBegin;
- (void)_willInterruptWithReason:(id)a3;
- (void)animationControllerDidFinishAnimation:(id)a3;
@end

@implementation SBTransientOverlayPresentWorkspaceTransaction

- (SBTransientOverlayPresentWorkspaceTransaction)initWithTransitionRequest:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBTransientOverlayPresentWorkspaceTransaction;
  return [(SBMainWorkspaceTransaction *)&v4 initWithTransitionRequest:a3];
}

- (void)_willBegin
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"SBTransientOverlayPresentWorkspaceTransaction.m" lineNumber:61 description:{@"No publisher for window scene: %@; self: %@", a3, a2}];
}

- (void)_begin
{
  v19.receiver = self;
  v19.super_class = SBTransientOverlayPresentWorkspaceTransaction;
  [(SBTransientOverlayPresentWorkspaceTransaction *)&v19 _begin];
  [(SBTransientOverlayPresentWorkspaceTransaction *)self addMilestone:@"SBTransientOverlayPresentWorkspaceTransactionMilestonePresentationCompletion"];
  v3 = [(SBWorkspaceTransaction *)self transitionRequest];
  v4 = [v3 transientOverlayContext];
  v5 = [v4 transientOverlay];
  v6 = [(SBWorkspaceTransaction *)self windowScene];
  v7 = [v6 switcherController];

  v8 = [v3 workspace];
  v9 = [v8 keyboardFocusController];
  v10 = [(SBWorkspaceTransaction *)self windowScene];
  v11 = [v9 bufferEventsForSpringBoardScene:v10 reason:@"SBTransientOverlayPresentWorkspaceTransaction"];
  eventBufferingAssertion = self->_eventBufferingAssertion;
  self->_eventBufferingAssertion = v11;

  if (v5 && [v7 unlockedEnvironmentMode] == 2)
  {
    v13 = [v7 appLayoutForWorkspaceTransientOverlay:v5];
    if (v13)
    {
      v14 = [v5 viewController];
      v15 = [v14 preferredUnlockedGestureDismissalStyle] == 3;
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

  v16 = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
  [v16 beginTransitionForWorkspaceTransaction:self];
  if (v15)
  {
    v17 = [v7 animationControllerForTransitionRequest:v3];
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
    -[SBTransientOverlayPresentWorkspaceTransaction _performStandardPresentationAnimated:](self, "_performStandardPresentationAnimated:", [v4 isAnimated]);
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

- (BOOL)canInterruptForTransitionRequest:(id)a3
{
  v4 = a3;
  if (self->_animation)
  {
    v5 = objc_opt_class();
    v6 = SBSafeCast(v5, v4);
    v7 = [v6 copyMainWorkspaceTransitionRequest];
    if ([(SBTransientOverlayPresentWorkspaceTransaction *)self isInterrupted])
    {
      [(SBTransientOverlayPresentWorkspaceTransaction *)self _logForInterruptAttemptReason:@"<SBTransientOverlayPresentWorkspaceTransaction:%p> not interruptible because: already interrupted", self];
LABEL_17:
      LOBYTE(v12) = 0;
      goto LABEL_18;
    }

    v14 = [v7 applicationContext];
    v15 = [v14 isBackground];

    if (v15)
    {
      [(SBTransientOverlayPresentWorkspaceTransaction *)self _logForInterruptAttemptReason:@"<SBTransientOverlayPresentWorkspaceTransaction:%p> not interruptible because: request is for background activation", self];
      goto LABEL_17;
    }

    v16 = +[SBSetupManager sharedInstance];
    if ([v16 isInSetupMode])
    {
      v17 = +[SBSetupManager sharedInstance];
      v18 = [v17 isInSetupModeReadyToExit];

      if ((v18 & 1) == 0)
      {
        [(SBTransientOverlayPresentWorkspaceTransaction *)self _logForInterruptAttemptReason:@"<SBTransientOverlayPresentWorkspaceTransaction:%p> not interruptible because: we are in setup mode", self];
        goto LABEL_17;
      }
    }

    else
    {
    }

    v19 = [(SBWorkspaceTransaction *)self transitionRequest];
    v20 = [v19 source];

    if (v20 == 31)
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

      if (!v7 || [v7 source] != 14)
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

  v8 = [(SBWorkspaceTransaction *)self transitionRequest];
  v9 = [v8 transientOverlayContext];
  v6 = [v9 transientOverlay];

  v10 = [v4 transientOverlayContext];
  v7 = [v10 transientOverlay];

  if ([v6 isAnalogousToEntity:v7] && (objc_msgSend(v4, "transientOverlayContext"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "transitionType"), v11, v12 == 1))
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

- (void)_willInterruptWithReason:(id)a3
{
  v5.receiver = self;
  v5.super_class = SBTransientOverlayPresentWorkspaceTransaction;
  [(SBTransientOverlayPresentWorkspaceTransaction *)&v5 _willInterruptWithReason:a3];
  v4 = [(SBWorkspaceTransaction *)self layoutStateTransitionCoordinator];
  if ([v4 isTransitioning])
  {
    [v4 willEndTransition];
    [v4 endTransitionWithError:0];
  }
}

- (void)animationControllerDidFinishAnimation:(id)a3
{
  [(SBTransientOverlayPresentWorkspaceTransaction *)self _performStandardPresentationAnimated:0];

  [(SBTransientOverlayPresentWorkspaceTransaction *)self removeMilestone:@"SBTransientOverlayPresentWorkspaceTransactionMilestoneAnimation"];
}

- (void)_logForInterruptAttemptReason:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  if ([(SBTransientOverlayPresentWorkspaceTransaction *)self isAuditHistoryEnabled])
  {
    [(SBTransientOverlayPresentWorkspaceTransaction *)self _addAuditHistoryItem:@"%@", v6];
  }
}

- (void)_performStandardPresentationAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBWorkspaceTransaction *)self transitionRequest];
  v6 = [v5 transientOverlayContext];
  v7 = [v6 transientOverlay];
  v8 = [v7 viewController];
  v9 = [v6 presentationManager];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __86__SBTransientOverlayPresentWorkspaceTransaction__performStandardPresentationAnimated___block_invoke;
  v31[3] = &unk_2783A8C18;
  v31[4] = self;
  v10 = MEMORY[0x223D6F7F0](v31);
  if (-[SBTransientOverlayPresentWorkspaceTransaction isInterrupted](self, "isInterrupted") || !v8 || ([v9 isPresentingViewController:v8] & 1) != 0)
  {
    v10[2](v10);
  }

  else
  {
    v11 = [(SBWorkspaceTransaction *)self windowScene];
    v12 = [v11 switcherController];

    v17 = [v12 isAcquiredTransientOverlayViewController:v8];
    if (v17)
    {
      [v8 beginIgnoringAppearanceUpdates];
      [v8 beginIgnoringContentOverlayInsetUpdates];
      [v12 removeAcquiredTransientOverlayViewController:v8];
    }

    v13 = [(SBTransientOverlayPresentationRequest *)[SBMutableTransientOverlayPresentationRequest alloc] initWithViewController:v8];
    [(SBMutableTransientOverlayPresentationRequest *)v13 setAnimated:v3];
    -[SBMutableTransientOverlayPresentationRequest setShouldDismissSiri:](v13, "setShouldDismissSiri:", [v6 shouldDismissSiriUponPresentation]);
    v14 = [v6 originatingProcess];
    [(SBMutableTransientOverlayPresentationRequest *)v13 setOriginatingProcess:v14];

    v15 = [v6 windowScene];
    [(SBMutableTransientOverlayPresentationRequest *)v13 setWindowScene:v15];

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
    [v9 performPresentationRequest:v13];
    if ((v28[3] & 1) == 0)
    {
      *(v24 + 24) = 1;
    }

    if (v17)
    {
      [v8 endIgnoringAppearanceUpdates];
      [v8 endIgnoringContentOverlayInsetUpdates];
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