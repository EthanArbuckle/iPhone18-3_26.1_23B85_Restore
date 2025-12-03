@interface SBPlatterHomeGestureContext
- (BOOL)ownsHomeGesture;
- (SBPlatterHomeGestureContext)initWithParticipant:(id)participant participantIdentifier:(int64_t)identifier windowScene:(id)scene;
- (SBPlatterHomeGestureContextDelegate)delegate;
- (SBUIPresentableHomeGestureParticipant)participant;
- (id)hideAnimationSettingsForBarSwipeAffordanceView:(id)view;
- (id)keyboardHomeAffordanceAssertionForBarSwipeAffordanceControlling:(id)controlling;
- (id)unhideAnimationSettingsForBarSwipeAffordanceView:(id)view;
- (unint64_t)barSwipeAffordanceView:(id)view systemGestureTypeForType:(int64_t)type;
- (void)_setOwnsHomeGesture:(BOOL)gesture;
- (void)becomeActiveAffordanceIfPossible:(BOOL)possible;
- (void)dealloc;
- (void)setWantsHomeGesture:(BOOL)gesture;
- (void)zStackParticipantDidChange:(id)change;
@end

@implementation SBPlatterHomeGestureContext

- (BOOL)ownsHomeGesture
{
  zStackParticipant = [(SBBarSwipeAffordanceController *)self->_barSwipeAffordanceController zStackParticipant];
  ownsHomeGesture = [zStackParticipant ownsHomeGesture];

  return ownsHomeGesture;
}

- (void)dealloc
{
  [(SBPlatterHomeGestureContext *)self becomeActiveAffordanceIfPossible:0];
  barSwipeAffordanceView = [(SBBarSwipeAffordanceController *)self->_barSwipeAffordanceController barSwipeAffordanceView];
  [barSwipeAffordanceView removeFromSuperview];

  [(BSInvalidatable *)self->_gestureRecognizerPriorityAssertion invalidate];
  gestureRecognizerPriorityAssertion = self->_gestureRecognizerPriorityAssertion;
  self->_gestureRecognizerPriorityAssertion = 0;

  v5.receiver = self;
  v5.super_class = SBPlatterHomeGestureContext;
  [(SBPlatterHomeGestureContext *)&v5 dealloc];
}

- (SBPlatterHomeGestureContext)initWithParticipant:(id)participant participantIdentifier:(int64_t)identifier windowScene:(id)scene
{
  participantCopy = participant;
  sceneCopy = scene;
  if (participantCopy)
  {
    if (identifier)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBPlatterHomeGestureContext initWithParticipant:a2 participantIdentifier:self windowScene:?];
    if (identifier)
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
    objc_storeWeak(&v11->_participant, participantCopy);
    v13 = [[SBBarSwipeAffordanceController alloc] initWithZStackParticipantIdentifier:identifier windowScene:sceneCopy];
    barSwipeAffordanceController = v12->_barSwipeAffordanceController;
    v12->_barSwipeAffordanceController = v13;

    [(SBBarSwipeAffordanceController *)v12->_barSwipeAffordanceController setDelegate:v12];
  }

  return v12;
}

- (void)becomeActiveAffordanceIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  v13 = *MEMORY[0x277D85DE8];
  if ([(SBBarSwipeAffordanceController *)self->_barSwipeAffordanceController wantsToBeActiveAffordance]!= possible)
  {
    WeakRetained = objc_loadWeakRetained(&self->_participant);
    v6 = SBLogBanners();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"relinquish";
      if (possibleCopy)
      {
        v7 = @"obtain";
      }

      v9 = 138543618;
      v10 = v7;
      v11 = 2114;
      v12 = WeakRetained;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Banner participant asked to %{public}@ home gesture: %{public}@", &v9, 0x16u);
    }

    if (!possibleCopy)
    {
      barSwipeAffordanceView = [(SBBarSwipeAffordanceController *)self->_barSwipeAffordanceController barSwipeAffordanceView];
      [barSwipeAffordanceView setDelegate:0];
    }

    [(SBBarSwipeAffordanceController *)self->_barSwipeAffordanceController setWantsToBeActiveAffordance:possibleCopy];
  }
}

- (void)setWantsHomeGesture:(BOOL)gesture
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_wantsToBeActiveAffordance != gesture)
  {
    self->_wantsToBeActiveAffordance = gesture;
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

- (void)zStackParticipantDidChange:(id)change
{
  ownsHomeGesture = [(SBPlatterHomeGestureContext *)self ownsHomeGesture];

  [(SBPlatterHomeGestureContext *)self _setOwnsHomeGesture:ownsHomeGesture];
}

- (id)keyboardHomeAffordanceAssertionForBarSwipeAffordanceControlling:(id)controlling
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (![(SBPlatterHomeGestureContext *)self wantsToBeActiveAffordance]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (([MEMORY[0x277D75658] usesInputSystemUI] & 1) == 0)
  {
    keyboardScene = [MEMORY[0x277D0AAD8] keyboardScene];
    v6 = keyboardScene;
    if (keyboardScene)
    {
      clientSettings = [keyboardScene clientSettings];
      preferredSceneHostIdentity = [clientSettings preferredSceneHostIdentity];
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

      scene = [v13 scene];

      identityToken = [scene identityToken];
      v16 = [preferredSceneHostIdentity isEqual:identityToken];

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

- (unint64_t)barSwipeAffordanceView:(id)view systemGestureTypeForType:(int64_t)type
{
  if ((type - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return type + 113;
  }
}

- (id)hideAnimationSettingsForBarSwipeAffordanceView:(id)view
{
  rootSettings = [MEMORY[0x277D65E80] rootSettings];
  hideForHomeGestureOwnershipAnimationSettings = [rootSettings hideForHomeGestureOwnershipAnimationSettings];
  bSAnimationSettings = [hideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];

  return bSAnimationSettings;
}

- (id)unhideAnimationSettingsForBarSwipeAffordanceView:(id)view
{
  rootSettings = [MEMORY[0x277D65E80] rootSettings];
  unhideForHomeGestureOwnershipAnimationSettings = [rootSettings unhideForHomeGestureOwnershipAnimationSettings];
  bSAnimationSettings = [unhideForHomeGestureOwnershipAnimationSettings BSAnimationSettings];

  return bSAnimationSettings;
}

- (void)_setOwnsHomeGesture:(BOOL)gesture
{
  gestureCopy = gesture;
  v19 = *MEMORY[0x277D85DE8];
  barSwipeAffordanceView = [(SBBarSwipeAffordanceController *)self->_barSwipeAffordanceController barSwipeAffordanceView];
  v6 = barSwipeAffordanceView;
  if (gestureCopy)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  [barSwipeAffordanceView setDelegate:selfCopy];

  WeakRetained = objc_loadWeakRetained(&self->_participant);
  v9 = SBLogBanners();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"relinquish";
    if (gestureCopy)
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
    [WeakRetained homeGestureOwnershipDidChange:gestureCopy];
  }

  v11 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [v11 bannerManagerHomeGestureContext:self homeGestureOwnershipDidChange:gestureCopy];
  }

  gestureRecognizerPriorityAssertion = self->_gestureRecognizerPriorityAssertion;
  if (gestureCopy)
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