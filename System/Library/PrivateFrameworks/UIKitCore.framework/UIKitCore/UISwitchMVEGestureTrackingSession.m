@interface UISwitchMVEGestureTrackingSession
- (BOOL)_isMovementDirectionAndMagnitudeEnoughToPerformOnOffChange:(double)a3;
- (BOOL)updatePendingDisplayedOnValueIfMovementIsEnoughToInitiateChange:(double)a3 forGesture:(id)a4;
- (UISwitchMVEGestureTrackingSession)initWithVisualElement:(id)a3;
- (UISwitchMVEGestureTrackingSessionElement)visualElement;
- (void)_applyPendingChangesIfNecessary;
- (void)_sendStateChangeActionsIfNecessary;
- (void)_updateMovementVectorForPanInitiatedChanges;
- (void)applyPendingDisplayedOnValueAndSendActions;
- (void)reset;
- (void)setPendingDisplayedOnValue:(BOOL)a3 forGesture:(id)a4;
@end

@implementation UISwitchMVEGestureTrackingSession

- (void)reset
{
  pendingDisplayedOnValueInitiatingGesture = self->_pendingDisplayedOnValueInitiatingGesture;
  self->_pendingDisplayedOnValueInitiatingGesture = 0;

  WeakRetained = objc_loadWeakRetained(&self->_visualElement);
  self->_lastCommitedOnValue = [WeakRetained displayedOn];

  v5 = objc_loadWeakRetained(&self->_visualElement);
  self->_displayedOnValue = [v5 displayedOn];

  [(UISwitchMVEGestureTrackingSession *)self _updateMovementVectorForPanInitiatedChanges];
}

- (void)_updateMovementVectorForPanInitiatedChanges
{
  naturalLayoutDirection = self->_naturalLayoutDirection;
  displayedOnValue = self->_displayedOnValue;
  if (self->_displayedOnValue)
  {
    naturalLayoutDirection = -naturalLayoutDirection;
  }

  self->_movementVectorForPanInitiatedChangeY = naturalLayoutDirection * 25.0;
  self->_movementVectorForPanInitiatedChangeTargetOnValue = !displayedOnValue;
}

- (UISwitchMVEGestureTrackingSession)initWithVisualElement:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = UISwitchMVEGestureTrackingSession;
  v5 = [(UISwitchMVEGestureTrackingSession *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_visualElement, v4);
    v8 = [v4 _shouldReverseLayoutDirection];
    v9 = 1.0;
    if (v8)
    {
      v9 = -1.0;
    }

    v6->_naturalLayoutDirection = v9;

    [(UISwitchMVEGestureTrackingSession *)v6 reset];
  }

  return v6;
}

- (void)setPendingDisplayedOnValue:(BOOL)a3 forGesture:(id)a4
{
  self->_pendingDisplayedOnValue = a3;
  objc_storeStrong(&self->_pendingDisplayedOnValueInitiatingGesture, a4);

  [(UISwitchMVEGestureTrackingSession *)self _updateMovementVectorForPanInitiatedChanges];
}

- (BOOL)updatePendingDisplayedOnValueIfMovementIsEnoughToInitiateChange:(double)a3 forGesture:(id)a4
{
  v6 = a4;
  v7 = [(UISwitchMVEGestureTrackingSession *)self _isMovementDirectionAndMagnitudeEnoughToPerformOnOffChange:a3];
  if (v7)
  {
    [(UISwitchMVEGestureTrackingSession *)self setPendingDisplayedOnValue:self->_movementVectorForPanInitiatedChangeTargetOnValue != 0.0 forGesture:v6];
  }

  return v7;
}

- (void)applyPendingDisplayedOnValueAndSendActions
{
  [(UISwitchMVEGestureTrackingSession *)self _applyPendingChangesIfNecessary];

  [(UISwitchMVEGestureTrackingSession *)self _sendStateChangeActionsIfNecessary];
}

- (void)_applyPendingChangesIfNecessary
{
  if ([(UISwitchMVEGestureTrackingSession *)self pendingDisplayedOnValueIsValid])
  {
    pendingDisplayedOnValue = self->_pendingDisplayedOnValue;
    WeakRetained = objc_loadWeakRetained(&self->_visualElement);
    v5 = [WeakRetained displayedOn];

    if (pendingDisplayedOnValue != v5)
    {
      v6 = objc_loadWeakRetained(&self->_visualElement);
      [v6 interactiveChangeToDisplayedOn:self->_pendingDisplayedOnValue];
    }

    pendingDisplayedOnValueInitiatingGesture = self->_pendingDisplayedOnValueInitiatingGesture;
    self->_pendingDisplayedOnValueInitiatingGesture = 0;
  }
}

- (void)_sendStateChangeActionsIfNecessary
{
  displayedOnValue = self->_displayedOnValue;
  if (displayedOnValue != self->_lastCommitedOnValue)
  {
    self->_lastCommitedOnValue = displayedOnValue;
    WeakRetained = objc_loadWeakRetained(&self->_visualElement);
    [WeakRetained sendStateChangeActions];
  }
}

- (BOOL)_isMovementDirectionAndMagnitudeEnoughToPerformOnOffChange:(double)a3
{
  v5 = [(UISwitchMVEGestureTrackingSession *)self _isMovementDirectionTrackableForPossibleOnOffChange:?];
  if (v5)
  {
    LOBYTE(v5) = fabs(a3) > fabs(self->_movementVectorForPanInitiatedChangeY);
  }

  return v5;
}

- (UISwitchMVEGestureTrackingSessionElement)visualElement
{
  WeakRetained = objc_loadWeakRetained(&self->_visualElement);

  return WeakRetained;
}

@end