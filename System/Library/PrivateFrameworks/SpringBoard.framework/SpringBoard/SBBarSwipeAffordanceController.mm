@interface SBBarSwipeAffordanceController
- (SBBarSwipeAffordanceController)initWithZStackParticipantIdentifier:(int64_t)identifier windowScene:(id)scene;
- (SBBarSwipeAffordanceControllingDelegate)delegate;
- (SBHomeGrabberPointerClickDelegate)pointerClickDelegate;
- (SBWindowScene)windowScene;
- (void)_beginTryingToBecomeActiveAffordance;
- (void)_keyboardDidShow:(id)show;
- (void)_setKeyboardHomeAffordanceVisible:(BOOL)visible;
- (void)_stopTryingToBecomeActiveAffordance;
- (void)_updateActiveState;
- (void)dealloc;
- (void)setActivationPolicyForParticipantsBelow:(int64_t)below;
- (void)setAllowsTouchesToPassThrough:(BOOL)through;
- (void)setSuppressAffordance:(BOOL)affordance;
- (void)setWantsToBeActiveAffordance:(BOOL)affordance;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
- (void)zStackParticipantDidChange:(id)change;
@end

@implementation SBBarSwipeAffordanceController

- (void)_beginTryingToBecomeActiveAffordance
{
  if (!self->_zStackParticipant && self->_zStackParticipantIdentifier != 30)
  {
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    zStackResolver = [WeakRetained zStackResolver];
    v5 = [zStackResolver acquireParticipantWithIdentifier:self->_zStackParticipantIdentifier delegate:self];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76BA8] object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:*MEMORY[0x277D76C50] object:0];

  v5.receiver = self;
  v5.super_class = SBBarSwipeAffordanceController;
  [(SBBarSwipeAffordanceController *)&v5 dealloc];
}

- (SBBarSwipeAffordanceController)initWithZStackParticipantIdentifier:(int64_t)identifier windowScene:(id)scene
{
  sceneCopy = scene;
  v17.receiver = self;
  v17.super_class = SBBarSwipeAffordanceController;
  v8 = [(SBBarSwipeAffordanceController *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_zStackParticipantIdentifier = identifier;
    if (!sceneCopy)
    {
      [SBBarSwipeAffordanceController initWithZStackParticipantIdentifier:a2 windowScene:v8];
    }

    objc_storeWeak(&v9->_windowScene, sceneCopy);
    systemGestureManager = [sceneCopy systemGestureManager];
    v11 = [SBBarSwipeAffordanceView alloc];
    v12 = [(SBBarSwipeAffordanceView *)v11 initWithFrame:systemGestureManager systemGestureManager:1 enableGestures:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    barSwipeAffordanceView = v9->_barSwipeAffordanceView;
    v9->_barSwipeAffordanceView = v12;

    v9->_activationPolicyForParticipantsBelow = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel__keyboardDidShow_ name:*MEMORY[0x277D76BA8] object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v9 selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  return v9;
}

- (void)setWantsToBeActiveAffordance:(BOOL)affordance
{
  if (self->_wantsToBeActiveAffordance != affordance)
  {
    self->_wantsToBeActiveAffordance = affordance;
    if (affordance)
    {
      [(SBBarSwipeAffordanceController *)self _beginTryingToBecomeActiveAffordance];
    }

    else
    {
      [(SBBarSwipeAffordanceController *)self _stopTryingToBecomeActiveAffordance];
    }
  }
}

- (void)setSuppressAffordance:(BOOL)affordance
{
  if (self->_suppressAffordance != affordance)
  {
    self->_suppressAffordance = affordance;
    [(SBBarSwipeAffordanceController *)self _updateActiveState];
  }
}

- (void)setAllowsTouchesToPassThrough:(BOOL)through
{
  if (self->_allowsTouchesToPassThrough != through)
  {
    self->_allowsTouchesToPassThrough = through;
    [(SBBarSwipeAffordanceView *)self->_barSwipeAffordanceView setAllowsTouchesToPassThrough:?];
  }
}

- (void)setActivationPolicyForParticipantsBelow:(int64_t)below
{
  if (self->_activationPolicyForParticipantsBelow != below)
  {
    self->_activationPolicyForParticipantsBelow = below;
    [(SBFZStackParticipant *)self->_zStackParticipant setNeedsUpdatePreferencesWithReason:@"activationPolicyForParticipantsBelow changed"];
  }
}

- (void)zStackParticipantDidChange:(id)change
{
  changeCopy = change;
  [(SBBarSwipeAffordanceController *)self _updateActiveState];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained zStackParticipantDidChange:changeCopy];
  }
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  participantCopy = participant;
  preferencesCopy = preferences;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained zStackParticipant:participantCopy updatePreferences:preferencesCopy];
  }

  else
  {
    [preferencesCopy setActivationPolicyForParticipantsBelow:self->_activationPolicyForParticipantsBelow];
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

- (void)_keyboardDidShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D76BB8]];
  [v5 CGRectValue];
  IsEmpty = CGRectIsEmpty(v8);

  if (!IsEmpty)
  {

    [(SBBarSwipeAffordanceController *)self _setKeyboardHomeAffordanceVisible:1];
  }
}

- (void)_setKeyboardHomeAffordanceVisible:(BOOL)visible
{
  visibleCopy = visible;
  keyboardHomeAffordanceAssertion = [(SBBarSwipeAffordanceView *)self->_barSwipeAffordanceView keyboardHomeAffordanceAssertion];

  if (visibleCopy)
  {
    if (!keyboardHomeAffordanceAssertion)
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

  else if (keyboardHomeAffordanceAssertion)
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