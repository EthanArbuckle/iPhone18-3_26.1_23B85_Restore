@interface SBBarSwipeAffordanceController
- (SBBarSwipeAffordanceController)initWithZStackParticipantIdentifier:(int64_t)a3 windowScene:(id)a4;
- (SBBarSwipeAffordanceControllingDelegate)delegate;
- (SBHomeGrabberPointerClickDelegate)pointerClickDelegate;
- (SBWindowScene)windowScene;
- (void)_beginTryingToBecomeActiveAffordance;
- (void)_keyboardDidShow:(id)a3;
- (void)_setKeyboardHomeAffordanceVisible:(BOOL)a3;
- (void)_stopTryingToBecomeActiveAffordance;
- (void)_updateActiveState;
- (void)dealloc;
- (void)setActivationPolicyForParticipantsBelow:(int64_t)a3;
- (void)setAllowsTouchesToPassThrough:(BOOL)a3;
- (void)setSuppressAffordance:(BOOL)a3;
- (void)setWantsToBeActiveAffordance:(BOOL)a3;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
- (void)zStackParticipantDidChange:(id)a3;
@end

@implementation SBBarSwipeAffordanceController

- (void)_beginTryingToBecomeActiveAffordance
{
  if (!self->_zStackParticipant && self->_zStackParticipantIdentifier != 30)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v4 = [WeakRetained zStackResolver];
    v5 = [v4 acquireParticipantWithIdentifier:self->_zStackParticipantIdentifier delegate:self];
    zStackParticipant = self->_zStackParticipant;
    self->_zStackParticipant = v5;

    [(SBBarSwipeAffordanceController *)self zStackParticipantDidChange:self->_zStackParticipant];
    barSwipeAffordanceView = self->_barSwipeAffordanceView;
    v8 = objc_loadWeakRetained(&self->_pointerClickDelegate);
    [(SBBarSwipeAffordanceView *)barSwipeAffordanceView setPointerClickDelegate:v8];
  }
}

- (void)_updateActiveState
{
  if ([(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture])
  {
    v3 = [(SBBarSwipeAffordanceController *)self suppressAffordance]^ 1;
  }

  else
  {
    v3 = 0;
  }

  barSwipeAffordanceView = self->_barSwipeAffordanceView;

  [(SBBarSwipeAffordanceView *)barSwipeAffordanceView setActive:v3];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76BA8] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D76C50] object:0];

  v5.receiver = self;
  v5.super_class = SBBarSwipeAffordanceController;
  [(SBBarSwipeAffordanceController *)&v5 dealloc];
}

- (SBBarSwipeAffordanceController)initWithZStackParticipantIdentifier:(int64_t)a3 windowScene:(id)a4
{
  v7 = a4;
  v17.receiver = self;
  v17.super_class = SBBarSwipeAffordanceController;
  v8 = [(SBBarSwipeAffordanceController *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_zStackParticipantIdentifier = a3;
    if (!v7)
    {
      [SBBarSwipeAffordanceController initWithZStackParticipantIdentifier:a2 windowScene:v8];
    }

    objc_storeWeak(&v9->_windowScene, v7);
    v10 = [v7 systemGestureManager];
    v11 = [SBBarSwipeAffordanceView alloc];
    v12 = [(SBBarSwipeAffordanceView *)v11 initWithFrame:v10 systemGestureManager:1 enableGestures:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    barSwipeAffordanceView = v9->_barSwipeAffordanceView;
    v9->_barSwipeAffordanceView = v12;

    v9->_activationPolicyForParticipantsBelow = 1;
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v9 selector:sel__keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v9 selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  return v9;
}

- (void)setWantsToBeActiveAffordance:(BOOL)a3
{
  if (self->_wantsToBeActiveAffordance != a3)
  {
    self->_wantsToBeActiveAffordance = a3;
    if (a3)
    {
      [(SBBarSwipeAffordanceController *)self _beginTryingToBecomeActiveAffordance];
    }

    else
    {
      [(SBBarSwipeAffordanceController *)self _stopTryingToBecomeActiveAffordance];
    }
  }
}

- (void)setSuppressAffordance:(BOOL)a3
{
  if (self->_suppressAffordance != a3)
  {
    self->_suppressAffordance = a3;
    [(SBBarSwipeAffordanceController *)self _updateActiveState];
  }
}

- (void)setAllowsTouchesToPassThrough:(BOOL)a3
{
  if (self->_allowsTouchesToPassThrough != a3)
  {
    self->_allowsTouchesToPassThrough = a3;
    [(SBBarSwipeAffordanceView *)self->_barSwipeAffordanceView setAllowsTouchesToPassThrough:?];
  }
}

- (void)setActivationPolicyForParticipantsBelow:(int64_t)a3
{
  if (self->_activationPolicyForParticipantsBelow != a3)
  {
    self->_activationPolicyForParticipantsBelow = a3;
    [(SBFZStackParticipant *)self->_zStackParticipant setNeedsUpdatePreferencesWithReason:@"activationPolicyForParticipantsBelow changed"];
  }
}

- (void)zStackParticipantDidChange:(id)a3
{
  v5 = a3;
  [(SBBarSwipeAffordanceController *)self _updateActiveState];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained zStackParticipantDidChange:v5];
  }
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v8 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained zStackParticipant:v8 updatePreferences:v6];
  }

  else
  {
    [v6 setActivationPolicyForParticipantsBelow:self->_activationPolicyForParticipantsBelow];
  }
}

- (void)_stopTryingToBecomeActiveAffordance
{
  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant)
  {
    [(SBFZStackParticipant *)zStackParticipant invalidate];
    v4 = self->_zStackParticipant;
    self->_zStackParticipant = 0;
  }
}

- (void)_keyboardDidShow:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  IsEmpty = CGRectIsEmpty(v8);

  if (!IsEmpty)
  {

    [(SBBarSwipeAffordanceController *)self _setKeyboardHomeAffordanceVisible:1];
  }
}

- (void)_setKeyboardHomeAffordanceVisible:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBBarSwipeAffordanceView *)self->_barSwipeAffordanceView keyboardHomeAffordanceAssertion];

  if (v3)
  {
    if (!v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        barSwipeAffordanceView = self->_barSwipeAffordanceView;
        v7 = [WeakRetained keyboardHomeAffordanceAssertionForBarSwipeAffordanceControlling:self];
        [(SBBarSwipeAffordanceView *)barSwipeAffordanceView setKeyboardHomeAffordanceAssertion:v7];
      }
    }
  }

  else if (v5)
  {
    v8 = self->_barSwipeAffordanceView;

    [(SBBarSwipeAffordanceView *)v8 setKeyboardHomeAffordanceAssertion:0];
  }
}

- (SBBarSwipeAffordanceControllingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBHomeGrabberPointerClickDelegate)pointerClickDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pointerClickDelegate);

  return WeakRetained;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (void)initWithZStackParticipantIdentifier:(uint64_t)a1 windowScene:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBBarSwipeAffordanceController.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"windowScene"}];
}

@end