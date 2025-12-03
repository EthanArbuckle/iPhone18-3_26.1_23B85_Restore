@interface SBDashBoardHomeAffordanceControllerClientBridge
- (SBDashBoardHomeAffordanceControllerClientBridge)initWithCoverSheetHomeGestureParticipant:(id)participant;
- (void)zStackParticipantDidChange:(id)change;
@end

@implementation SBDashBoardHomeAffordanceControllerClientBridge

- (SBDashBoardHomeAffordanceControllerClientBridge)initWithCoverSheetHomeGestureParticipant:(id)participant
{
  participantCopy = participant;
  v8.receiver = self;
  v8.super_class = SBDashBoardHomeAffordanceControllerClientBridge;
  v5 = [(SBDashBoardHomeAffordanceControllerClientBridge *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_coverSheetHomeGestureParticipant, participantCopy);
  }

  return v6;
}

- (void)zStackParticipantDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetHomeGestureParticipant);
  [WeakRetained homeGestureParticipantOwningHomeGestureDidChange:changeCopy ownsHomeGesture:{objc_msgSend(changeCopy, "ownsHomeGesture")}];
}

@end