@interface SBDashBoardHomeAffordanceController
- (SBDashBoardHomeAffordanceController)init;
- (void)registerHomeGestureParticipant:(id)participant withIdentifier:(int64_t)identifier;
- (void)unregisterHomeGestureParticipant:(id)participant withIdentifier:(int64_t)identifier;
@end

@implementation SBDashBoardHomeAffordanceController

- (SBDashBoardHomeAffordanceController)init
{
  v6.receiver = self;
  v6.super_class = SBDashBoardHomeAffordanceController;
  v2 = [(SBDashBoardHomeAffordanceController *)&v6 init];
  if (v2)
  {
    v3 = +[SBNotificationHomeAffordanceController sharedInstance];
    notificationHomeAffordanceController = v2->_notificationHomeAffordanceController;
    v2->_notificationHomeAffordanceController = v3;
  }

  return v2;
}

- (void)registerHomeGestureParticipant:(id)participant withIdentifier:(int64_t)identifier
{
  object = participant;
  v5 = objc_getAssociatedObject(object, "SBDashBoardHomeAffordanceControllerParticipantKey");
  if (!v5)
  {
    v5 = [[SBDashBoardHomeAffordanceControllerClientBridge alloc] initWithCoverSheetHomeGestureParticipant:object];
    objc_setAssociatedObject(object, "SBDashBoardHomeAffordanceControllerParticipantKey", v5, 1);
  }

  [(SBNotificationHomeAffordanceController *)self->_notificationHomeAffordanceController registerClient:v5 withZStackIdentifier:14];
}

- (void)unregisterHomeGestureParticipant:(id)participant withIdentifier:(int64_t)identifier
{
  participantCopy = participant;
  v6 = objc_getAssociatedObject(participantCopy, "SBDashBoardHomeAffordanceControllerParticipantKey");
  [(SBNotificationHomeAffordanceController *)self->_notificationHomeAffordanceController unregisterClient:v6 withZStackIdentifier:14];
  objc_setAssociatedObject(participantCopy, "SBDashBoardHomeAffordanceControllerParticipantKey", 0, 1);
}

@end