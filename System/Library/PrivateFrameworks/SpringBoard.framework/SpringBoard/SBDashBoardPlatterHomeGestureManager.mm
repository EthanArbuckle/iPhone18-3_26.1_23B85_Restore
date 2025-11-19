@interface SBDashBoardPlatterHomeGestureManager
- (id)_platterHomeGestureManager;
- (id)homeGestureContextForViewController:(id)a3;
- (id)platterHomeGestureManager:(id)a3 windowForParticipant:(id)a4;
- (void)unregisterHomeGestureContextForViewController:(id)a3;
@end

@implementation SBDashBoardPlatterHomeGestureManager

- (id)homeGestureContextForViewController:(id)a3
{
  v4 = a3;
  if ([(SBDashBoardPlatterHomeGestureManager *)self _isViewControllerPlatterHomeGestureParticipant:v4])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v4 _sbWindowScene];
  if (v6)
  {
    v8 = [(SBDashBoardPlatterHomeGestureManager *)self _platterHomeGestureManager];
    v9 = [v8 registerParticipant:v6 windowScene:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)unregisterHomeGestureContextForViewController:(id)a3
{
  v6 = a3;
  v4 = [(SBDashBoardPlatterHomeGestureManager *)self _isViewControllerPlatterHomeGestureParticipant:v6];
  v5 = v6;
  if (v6 && v4)
  {
    [(SBPlatterHomeGestureManager *)self->_platterHomeGestureManager unregisterParticipant:v6];
    v5 = v6;
  }
}

- (id)platterHomeGestureManager:(id)a3 windowForParticipant:(id)a4
{
  v4 = a4;
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 view];
    v6 = [v5 window];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_platterHomeGestureManager
{
  platterHomeGestureManager = self->_platterHomeGestureManager;
  if (!platterHomeGestureManager)
  {
    v4 = [[SBPlatterHomeGestureManager alloc] initWithDelegate:self];
    v5 = self->_platterHomeGestureManager;
    self->_platterHomeGestureManager = v4;

    platterHomeGestureManager = self->_platterHomeGestureManager;
  }

  return platterHomeGestureManager;
}

@end