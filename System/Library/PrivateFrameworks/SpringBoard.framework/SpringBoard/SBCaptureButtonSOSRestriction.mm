@interface SBCaptureButtonSOSRestriction
- (SBCaptureButtonSOSRestriction)initWithCoordinator:(id)coordinator;
- (void)SOSEventHandlerStateDidChange:(id)change;
- (void)invalidate;
@end

@implementation SBCaptureButtonSOSRestriction

- (SBCaptureButtonSOSRestriction)initWithCoordinator:(id)coordinator
{
  v9.receiver = self;
  v9.super_class = SBCaptureButtonSOSRestriction;
  v3 = [(SBCaptureButtonInternalRestrictionGlue *)&v9 initWithCoordinator:coordinator];
  if (v3)
  {
    v4 = +[SBSOSEventHandler sharedInstance];
    SOSEventHandler = v3->_SOSEventHandler;
    v3->_SOSEventHandler = v4;

    v6 = [(SBSOSEventHandler *)v3->_SOSEventHandler addObserver:v3];
    SOSMonitoringAssertion = v3->_SOSMonitoringAssertion;
    v3->_SOSMonitoringAssertion = v6;
  }

  return v3;
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = SBCaptureButtonSOSRestriction;
  [(SBCaptureButtonInternalRestrictionGlue *)&v4 invalidate];
  [(BSInvalidatable *)self->_SOSMonitoringAssertion invalidate];
  SOSMonitoringAssertion = self->_SOSMonitoringAssertion;
  self->_SOSMonitoringAssertion = 0;
}

- (void)SOSEventHandlerStateDidChange:(id)change
{
  if ([change isSOSActive])
  {

    [(SBCaptureButtonInternalRestrictionGlue *)self acquireRestriction:@"SOSIsActive"];
  }

  else
  {

    [(SBCaptureButtonInternalRestrictionGlue *)self relinquishRestriction];
  }
}

@end