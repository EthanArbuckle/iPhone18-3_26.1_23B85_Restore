@interface SBDashBoardHomeAffordanceController
- (SBDashBoardHomeAffordanceController)init;
- (void)registerHomeGestureParticipant:(id)a3 withIdentifier:(int64_t)a4;
- (void)unregisterHomeGestureParticipant:(id)a3 withIdentifier:(int64_t)a4;
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

- (void)registerHomeGestureParticipant:(id)a3 withIdentifier:(int64_t)a4
{
  object = a3;
  v5 = objc_getAssociatedObject(object, "SBDashBoardHomeAffordanceControllerParticipantKey");
  if (!v5)
  {
    v5 = [[SBDashBoardHomeAffordanceControllerClientBridge alloc] initWithCoverSheetHomeGestureParticipant:object];
    objc_setAssociatedObject(object, "SBDashBoardHomeAffordanceControllerParticipantKey", v5, 1);
  }

  [(SBNotificationHomeAffordanceController *)self->_notificationHomeAffordanceController registerClient:v5 withZStackIdentifier:14];
}

- (void)unregisterHomeGestureParticipant:(id)a3 withIdentifier:(int64_t)a4
{
  v5 = a3;
  v6 = objc_getAssociatedObject(v5, "SBDashBoardHomeAffordanceControllerParticipantKey");
  [(SBNotificationHomeAffordanceController *)self->_notificationHomeAffordanceController unregisterClient:v6 withZStackIdentifier:14];
  objc_setAssociatedObject(v5, "SBDashBoardHomeAffordanceControllerParticipantKey", 0, 1);
}

@end