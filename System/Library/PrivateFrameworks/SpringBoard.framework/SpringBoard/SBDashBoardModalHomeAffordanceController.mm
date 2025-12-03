@interface SBDashBoardModalHomeAffordanceController
- (BOOL)registerHomeGestureParticipant:(id)participant;
- (SBDashBoardModalHomeAffordanceController)init;
- (double)additionalEdgeSpacingForHomeGrabberView:(id)view;
- (void)setHomeGestureRecognizer:(id)recognizer;
- (void)unregisterHomeGestureParticipant;
- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences;
- (void)zStackParticipantDidChange:(id)change;
@end

@implementation SBDashBoardModalHomeAffordanceController

- (SBDashBoardModalHomeAffordanceController)init
{
  v6.receiver = self;
  v6.super_class = SBDashBoardModalHomeAffordanceController;
  v2 = [(SBDashBoardModalHomeAffordanceController *)&v6 init];
  if (v2)
  {
    windowSceneManager = [SBApp windowSceneManager];
    embeddedDisplayWindowScene = [windowSceneManager embeddedDisplayWindowScene];
    objc_storeWeak(&v2->_windowScene, embeddedDisplayWindowScene);
  }

  return v2;
}

- (BOOL)registerHomeGestureParticipant:(id)participant
{
  zStackParticipant = self->_zStackParticipant;
  if (!zStackParticipant)
  {
    participantCopy = participant;
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    zStackResolver = [WeakRetained zStackResolver];
    v8 = [zStackResolver acquireParticipantWithIdentifier:10 delegate:self];
    v9 = self->_zStackParticipant;
    self->_zStackParticipant = v8;

    v10 = objc_alloc_init(SBHomeGrabberView);
    [(SBHomeGrabberView *)v10 setDelegate:self];
    [(SBHomeGrabberView *)v10 setAutoHides:1];
    [(SBHomeGrabberView *)v10 setHomeAffordanceInteractionEnabled:[(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture]];
    objc_storeWeak(&self->_homeGrabberView, v10);
    [participantCopy addGrabberView:v10];
    objc_storeWeak(&self->_homeGestureParticipant, participantCopy);
    LOBYTE(zStackResolver) = objc_opt_respondsToSelector();

    if (zStackResolver)
    {
      [(SBDashBoardModalHomeAffordanceController *)self setNeedsUpdateZStackPreferencesWithReason:@"Initial"];
    }
  }

  return zStackParticipant == 0;
}

- (void)unregisterHomeGestureParticipant
{
  zStackParticipant = self->_zStackParticipant;
  if (zStackParticipant)
  {
    [(SBFZStackParticipant *)zStackParticipant invalidate];
    v4 = self->_zStackParticipant;
    self->_zStackParticipant = 0;
  }
}

- (void)setHomeGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  systemGestureManager = [WeakRetained systemGestureManager];

  homeGestureRecognizer = self->_homeGestureRecognizer;
  p_homeGestureRecognizer = &self->_homeGestureRecognizer;
  v7 = homeGestureRecognizer;
  if (recognizerCopy)
  {
    if (!v7)
    {
      objc_storeStrong(p_homeGestureRecognizer, recognizer);
      [systemGestureManager addGestureRecognizer:*p_homeGestureRecognizer withType:96];
    }
  }

  else
  {
    [systemGestureManager removeGestureRecognizer:v7];
    v10 = *p_homeGestureRecognizer;
    *p_homeGestureRecognizer = 0;
  }
}

- (void)zStackParticipantDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureParticipant);
  [WeakRetained homeGestureParticipantOwningHomeGestureDidChange:{objc_msgSend(changeCopy, "ownsHomeGesture")}];

  v7 = objc_loadWeakRetained(&self->_homeGrabberView);
  ownsHomeGesture = [changeCopy ownsHomeGesture];

  [v7 setHomeAffordanceInteractionEnabled:ownsHomeGesture];
}

- (void)zStackParticipant:(id)participant updatePreferences:(id)preferences
{
  participantCopy = participant;
  preferencesCopy = preferences;
  [preferencesCopy setActivationPolicyForParticipantsBelow:2];
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureParticipant);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained homeGestureParticipantUpdateZStackPreferences:preferencesCopy forZStackParticipant:participantCopy];
  }
}

- (double)additionalEdgeSpacingForHomeGrabberView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureParticipant);
  v6 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained additionalEdgeSpacingForGrabberView:viewCopy];
    v6 = v7;
  }

  return v6;
}

@end