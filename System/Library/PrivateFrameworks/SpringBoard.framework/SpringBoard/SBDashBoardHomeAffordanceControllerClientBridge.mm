@interface SBDashBoardHomeAffordanceControllerClientBridge
- (SBDashBoardHomeAffordanceControllerClientBridge)initWithCoverSheetHomeGestureParticipant:(id)a3;
- (void)zStackParticipantDidChange:(id)a3;
@end

@implementation SBDashBoardHomeAffordanceControllerClientBridge

- (SBDashBoardHomeAffordanceControllerClientBridge)initWithCoverSheetHomeGestureParticipant:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBDashBoardHomeAffordanceControllerClientBridge;
  v5 = [(SBDashBoardHomeAffordanceControllerClientBridge *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_coverSheetHomeGestureParticipant, v4);
  }

  return v6;
}

- (void)zStackParticipantDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetHomeGestureParticipant);
  [WeakRetained homeGestureParticipantOwningHomeGestureDidChange:v4 ownsHomeGesture:{objc_msgSend(v4, "ownsHomeGesture")}];
}

@end