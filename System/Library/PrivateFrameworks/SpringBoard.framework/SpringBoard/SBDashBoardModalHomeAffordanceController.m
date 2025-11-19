@interface SBDashBoardModalHomeAffordanceController
- (BOOL)registerHomeGestureParticipant:(id)a3;
- (SBDashBoardModalHomeAffordanceController)init;
- (double)additionalEdgeSpacingForHomeGrabberView:(id)a3;
- (void)setHomeGestureRecognizer:(id)a3;
- (void)unregisterHomeGestureParticipant;
- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4;
- (void)zStackParticipantDidChange:(id)a3;
@end

@implementation SBDashBoardModalHomeAffordanceController

- (SBDashBoardModalHomeAffordanceController)init
{
  v6.receiver = self;
  v6.super_class = SBDashBoardModalHomeAffordanceController;
  v2 = [(SBDashBoardModalHomeAffordanceController *)&v6 init];
  if (v2)
  {
    v3 = [SBApp windowSceneManager];
    v4 = [v3 embeddedDisplayWindowScene];
    objc_storeWeak(&v2->_windowScene, v4);
  }

  return v2;
}

- (BOOL)registerHomeGestureParticipant:(id)a3
{
  zStackParticipant = self->_zStackParticipant;
  if (!zStackParticipant)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_windowScene);
    v7 = [WeakRetained zStackResolver];
    v8 = [v7 acquireParticipantWithIdentifier:10 delegate:self];
    v9 = self->_zStackParticipant;
    self->_zStackParticipant = v8;

    v10 = objc_alloc_init(SBHomeGrabberView);
    [(SBHomeGrabberView *)v10 setDelegate:self];
    [(SBHomeGrabberView *)v10 setAutoHides:1];
    [(SBHomeGrabberView *)v10 setHomeAffordanceInteractionEnabled:[(SBFZStackParticipant *)self->_zStackParticipant ownsHomeGesture]];
    objc_storeWeak(&self->_homeGrabberView, v10);
    [v5 addGrabberView:v10];
    objc_storeWeak(&self->_homeGestureParticipant, v5);
    LOBYTE(v7) = objc_opt_respondsToSelector();

    if (v7)
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

- (void)setHomeGestureRecognizer:(id)a3
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);
  v6 = [WeakRetained systemGestureManager];

  homeGestureRecognizer = self->_homeGestureRecognizer;
  p_homeGestureRecognizer = &self->_homeGestureRecognizer;
  v7 = homeGestureRecognizer;
  if (v11)
  {
    if (!v7)
    {
      objc_storeStrong(p_homeGestureRecognizer, a3);
      [v6 addGestureRecognizer:*p_homeGestureRecognizer withType:96];
    }
  }

  else
  {
    [v6 removeGestureRecognizer:v7];
    v10 = *p_homeGestureRecognizer;
    *p_homeGestureRecognizer = 0;
  }
}

- (void)zStackParticipantDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureParticipant);
  [WeakRetained homeGestureParticipantOwningHomeGestureDidChange:{objc_msgSend(v4, "ownsHomeGesture")}];

  v7 = objc_loadWeakRetained(&self->_homeGrabberView);
  v6 = [v4 ownsHomeGesture];

  [v7 setHomeAffordanceInteractionEnabled:v6];
}

- (void)zStackParticipant:(id)a3 updatePreferences:(id)a4
{
  v8 = a3;
  v6 = a4;
  [v6 setActivationPolicyForParticipantsBelow:2];
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureParticipant);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained homeGestureParticipantUpdateZStackPreferences:v6 forZStackParticipant:v8];
  }
}

- (double)additionalEdgeSpacingForHomeGrabberView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_homeGestureParticipant);
  v6 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained additionalEdgeSpacingForGrabberView:v4];
    v6 = v7;
  }

  return v6;
}

@end