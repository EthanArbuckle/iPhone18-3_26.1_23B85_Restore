@interface SBDashBoardOrientationController
- (void)cancelOrientationUpdateDeferral;
- (void)deferOrientationUpdatesWithReason:(id)reason;
- (void)noteInterfaceOrientationChanged:(int64_t)changed duration:(double)duration logMessage:(id)message;
@end

@implementation SBDashBoardOrientationController

- (void)deferOrientationUpdatesWithReason:(id)reason
{
  reasonCopy = reason;
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRolePipelineManager") & 1) == 0)
  {
    v4 = SBApp;
    v5 = self->_deferOrientationUpdatesAssertion;
    v6 = [v4 deviceOrientationUpdateDeferralAssertionWithReason:reasonCopy];
    deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
    self->_deferOrientationUpdatesAssertion = v6;

    [(BSInvalidatable *)v5 invalidate];
  }
}

- (void)cancelOrientationUpdateDeferral
{
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRolePipelineManager") & 1) == 0)
  {
    [(BSInvalidatable *)self->_deferOrientationUpdatesAssertion invalidate];
    deferOrientationUpdatesAssertion = self->_deferOrientationUpdatesAssertion;
    self->_deferOrientationUpdatesAssertion = 0;
  }
}

- (void)noteInterfaceOrientationChanged:(int64_t)changed duration:(double)duration logMessage:(id)message
{
  messageCopy = message;
  if ((SBTraitsArbiterOrientationActuationEnabledForRole(@"SBTraitsParticipantRolePipelineManager") & 1) == 0)
  {
    [SBApp noteInterfaceOrientationChanged:changed duration:messageCopy logMessage:duration];
  }
}

@end