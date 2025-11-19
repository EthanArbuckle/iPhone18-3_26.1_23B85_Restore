@interface SBPlatterHomeGestureContext
- (BOOL)ownsHomeGesture;
- (SBPlatterHomeGestureContext)initWithParticipant:(id)a3 participantIdentifier:(int64_t)a4 windowScene:(id)a5;
- (SBPlatterHomeGestureContextDelegate)delegate;
- (SBUIPresentableHomeGestureParticipant)participant;
- (id)hideAnimationSettingsForBarSwipeAffordanceView:(id)a3;
- (id)keyboardHomeAffordanceAssertionForBarSwipeAffordanceControlling:(id)a3;
- (id)unhideAnimationSettingsForBarSwipeAffordanceView:(id)a3;
- (unint64_t)barSwipeAffordanceView:(id)a3 systemGestureTypeForType:(int64_t)a4;
- (void)_setOwnsHomeGesture:(BOOL)a3;
- (void)becomeActiveAffordanceIfPossible:(BOOL)a3;
- (void)dealloc;
- (void)setWantsHomeGesture:(BOOL)a3;
- (void)zStackParticipantDidChange:(id)a3;
@end

@implementation SBPlatterHomeGestureContext

- (BOOL)ownsHomeGesture
{
  v2 = [(SBBarSwipeAffordanceController *)self->_barSwipeAffordanceController zStackParticipant];
  v3 = [v2 ownsHomeGesture];

  return v3;
}

- (void)dealloc
{
  [(SBPlatterHomeGestureContext *)self becomeActiveAffordanceIfPossible:0];
  v3 = [(SBBarSwipeAffordanceController *)self->_barSwipeAffordanceController barSwipeAffordanceView];
  [v3 removeFromSuperview];

  [(BSInvalidatable *)self->_gestureRecognizerPriorityAssertion invalidate];
  gestureRecognizerPriorityAssertion = self->_gestureRecognizerPriorityAssertion;
  self->_gestureRecognizerPriorityAssertion = 0;

  v5.receiver = self;
  v5.super_class = SBPlatterHomeGestureContext;
  [(SBPlatterHomeGestureContext *)&v5 dealloc];
}

- (SBPlatterHomeGestureContext)initWithParticipant:(id)a3 participantIdentifier:(int64_t)a4 windowScene:(id)a5
{
  v9 = a3;
  v10 = a5;
  if (v9)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBPlatterHomeGestureContext initWithParticipant:a2 participantIdentifier:self windowScene:?];
    if (a4)
    {
      goto LABEL_3;
    }
  }

  [SBPlatterHomeGestureContext initWithParticipant:a2 participantIdentifier:self windowScene:?];
LABEL_3:
  v16.receiver = self;
  v16.super_class = SBPlatterHomeGestureContext;
  v11 = [(SBPlatterHomeGestureContext *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_participant, v9);
    v13 = [[SBBarSwipeAffordanceController alloc] initWithZStackParticipantIdentifier:a4 windowScene:v10];
    barSwipeAffordanceController = v12->_barSwipeAffordanceController;
    v12->_barSwipeAffordanceController = v13;

    [(SBBarSwipeAffordanceController *)v12->_barSwipeAffordanceController setDelegate:v12];
  }

  return v12;
}

- (void)becomeActiveAffordanceIfPossible:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  if ([(SBBarSwipeAffordanceController *)self->_barSwipeAffordanceController wantsToBeActiveAffordance]!= a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_participant);
    v6 = SBLogBanners();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"relinquish";
      if (v3)
      {
        v7 = @"obtain";
      }

      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = WeakRetained;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Banner participant asked to %{public}@ home gesture: %{public}@", &v9, 0x16u);
    }

    if (!v3)
    {
      v8 = [(SBBarSwipeAffordanceController *)self->_barSwipeAffordanceController barSwipeAffordanceView];
      [v8 setDelegate:0];
    }

    [(SBBarSwipeAffordanceController *)self->_barSwipeAffordanceController setWantsToBeActiveAffordance:v3];
  }
}

- (void)setWantsHomeGesture:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_wantsToBeActiveAffordance != a3)
  {
    self->_wantsToBeActiveAffordance = a3;
    WeakRetained = objc_loadWeakRetained(&self->_participant);
    v5 = SBLogBanners();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"relinquish";
      if (self->_wantsToBeActiveAffordance)
      {
        v6 = @"obtain";
      }

      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = WeakRetained;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Banner participant wants to %{public}@ home gesture: %{public}@", &v8, 0x16u);
    }

    v7 = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [v7 wantsHomeGestureDidChangeForBannerManagerHomeGestureContext:self];
    }
  }
}

- (void)zStackParticipantDidChange:(id)a3
{
  v4 = [(SBPlatterHomeGestureContext *)self ownsHomeGesture];

  [(SBPlatterHomeGestureContext *)self _setOwnsHomeGesture:v4];
}

- (id)keyboardHomeAffordanceAssertionForBarSwipeAffordanceControlling:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![(SBPlatterHomeGestureContext *)self wantsToBeActiveAffordance]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) == 0)
  {
    v5 = [MEMORY[0x277D0AAD8] keyboardScene];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 clientSettings];
      v8 = [v7 preferredSceneHostIdentity];
      v9 = objc_loadWeakRetained(&self->_participant);
      v10 = objc_opt_class();
      v11 = v9;
      if (v10)
      {
        v12 = (objc_opt_isKindOfClass() & 1) != 0 ? v11 : 0;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      v14 = [v13 scene];

      v15 = [v14 identityToken];
      v16 = [v8 isEqual:v15];

      if (v16)
      {

LABEL_12:
        v17 = 0;
        goto LABEL_15;
      }
    }
  }

  v17 = [WeakRetained keyboardHomeAffordanceAssertionForBannerManagerHomeGestureContext:self];
LABEL_15:

  return v17;
}

- (unint64_t)barSwipeAffordanceView:(id)a3 systemGestureTypeForType:(int64_t)a4
{
  if ((a4 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a4 + 113;
  }
}

- (id)hideAnimationSettingsForBarSwipeAffordanceView:(id)a3
{
  v3 = [MEMORY[0x277D65E80] rootSettings];
  v4 = [v3 hideForHomeGestureOwnershipAnimationSettings];
  v5 = [v4 BSAnimationSettings];

  return v5;
}

- (id)unhideAnimationSettingsForBarSwipeAffordanceView:(id)a3
{
  v3 = [MEMORY[0x277D65E80] rootSettings];
  v4 = [v3 unhideForHomeGestureOwnershipAnimationSettings];
  v5 = [v4 BSAnimationSettings];

  return v5;
}

- (void)_setOwnsHomeGesture:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(SBBarSwipeAffordanceController *)self->_barSwipeAffordanceController barSwipeAffordanceView];
  v6 = v5;
  if (v3)
  {
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  [v5 setDelegate:v7];

  WeakRetained = objc_loadWeakRetained(&self->_participant);
  v9 = SBLogBanners();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"relinquish";
    if (v3)
    {
      v10 = @"obtain";
    }

    v15 = 138543618;
    v16 = v10;
    v17 = 2114;
    v18 = WeakRetained;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Banner participant did %{public}@ home gesture: %{public}@", &v15, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [WeakRetained homeGestureOwnershipDidChange:v3];
  }

  v11 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [v11 bannerManagerHomeGestureContext:self homeGestureOwnershipDidChange:v3];
  }

  gestureRecognizerPriorityAssertion = self->_gestureRecognizerPriorityAssertion;
  if (v3)
  {
    if (!gestureRecognizerPriorityAssertion && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v13 = [v11 gestureRecognizerPriorityAssertionForBannerManagerHomeGestureContext:self];
LABEL_18:
      v14 = self->_gestureRecognizerPriorityAssertion;
      self->_gestureRecognizerPriorityAssertion = v13;
    }
  }

  else if (gestureRecognizerPriorityAssertion)
  {
    [(BSInvalidatable *)gestureRecognizerPriorityAssertion invalidate];
    v13 = 0;
    goto LABEL_18;
  }
}

- (SBPlatterHomeGestureContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBUIPresentableHomeGestureParticipant)participant
{
  WeakRetained = objc_loadWeakRetained(&self->_participant);

  return WeakRetained;
}

- (void)initWithParticipant:(uint64_t)a1 participantIdentifier:(uint64_t)a2 windowScene:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPlatterHomeGestureContext.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"participant"}];
}

- (void)initWithParticipant:(uint64_t)a1 participantIdentifier:(uint64_t)a2 windowScene:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPlatterHomeGestureContext.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
}

@end