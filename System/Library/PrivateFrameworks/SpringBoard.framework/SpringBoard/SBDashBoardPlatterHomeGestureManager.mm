@interface SBDashBoardPlatterHomeGestureManager
- (id)_platterHomeGestureManager;
- (id)homeGestureContextForViewController:(id)controller;
- (id)platterHomeGestureManager:(id)manager windowForParticipant:(id)participant;
- (void)unregisterHomeGestureContextForViewController:(id)controller;
@end

@implementation SBDashBoardPlatterHomeGestureManager

- (id)homeGestureContextForViewController:(id)controller
{
  controllerCopy = controller;
  if ([(SBDashBoardPlatterHomeGestureManager *)self _isViewControllerPlatterHomeGestureParticipant:controllerCopy])
  {
    v5 = controllerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  _sbWindowScene = [controllerCopy _sbWindowScene];
  if (v6)
  {
    _platterHomeGestureManager = [(SBDashBoardPlatterHomeGestureManager *)self _platterHomeGestureManager];
    v9 = [_platterHomeGestureManager registerParticipant:v6 windowScene:_sbWindowScene];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)unregisterHomeGestureContextForViewController:(id)controller
{
  controllerCopy = controller;
  v4 = [(SBDashBoardPlatterHomeGestureManager *)self _isViewControllerPlatterHomeGestureParticipant:controllerCopy];
  v5 = controllerCopy;
  if (controllerCopy && v4)
  {
    [(SBPlatterHomeGestureManager *)self->_platterHomeGestureManager unregisterParticipant:controllerCopy];
    v5 = controllerCopy;
  }
}

- (id)platterHomeGestureManager:(id)manager windowForParticipant:(id)participant
{
  participantCopy = participant;
  if (objc_opt_respondsToSelector())
  {
    view = [participantCopy view];
    window = [view window];
  }

  else
  {
    window = 0;
  }

  return window;
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