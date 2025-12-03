@interface UISwitchMVEGestureTrackingSession
- (BOOL)_isMovementDirectionAndMagnitudeEnoughToPerformOnOffChange:(double)change;
- (BOOL)updatePendingDisplayedOnValueIfMovementIsEnoughToInitiateChange:(double)change forGesture:(id)gesture;
- (UISwitchMVEGestureTrackingSession)initWithVisualElement:(id)element;
- (UISwitchMVEGestureTrackingSessionElement)visualElement;
- (void)_applyPendingChangesIfNecessary;
- (void)_sendStateChangeActionsIfNecessary;
- (void)_updateMovementVectorForPanInitiatedChanges;
- (void)applyPendingDisplayedOnValueAndSendActions;
- (void)reset;
- (void)setPendingDisplayedOnValue:(BOOL)value forGesture:(id)gesture;
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

- (UISwitchMVEGestureTrackingSession)initWithVisualElement:(id)element
{
  elementCopy = element;
  v11.receiver = self;
  v11.super_class = UISwitchMVEGestureTrackingSession;
  v5 = [(UISwitchMVEGestureTrackingSession *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_visualElement, elementCopy);
    _shouldReverseLayoutDirection = [elementCopy _shouldReverseLayoutDirection];
    v9 = 1.0;
    if (_shouldReverseLayoutDirection)
    {
      v9 = -1.0;
    }

    v6->_naturalLayoutDirection = v9;

    [(UISwitchMVEGestureTrackingSession *)v6 reset];
  }

  return v6;
}

- (void)setPendingDisplayedOnValue:(BOOL)value forGesture:(id)gesture
{
  self->_pendingDisplayedOnValue = value;
  objc_storeStrong(&self->_pendingDisplayedOnValueInitiatingGesture, gesture);

  [(UISwitchMVEGestureTrackingSession *)self _updateMovementVectorForPanInitiatedChanges];
}

- (BOOL)updatePendingDisplayedOnValueIfMovementIsEnoughToInitiateChange:(double)change forGesture:(id)gesture
{
  gestureCopy = gesture;
  v7 = [(UISwitchMVEGestureTrackingSession *)self _isMovementDirectionAndMagnitudeEnoughToPerformOnOffChange:change];
  if (v7)
  {
    [(UISwitchMVEGestureTrackingSession *)self setPendingDisplayedOnValue:self->_movementVectorForPanInitiatedChangeTargetOnValue != 0.0 forGesture:gestureCopy];
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
    displayedOn = [WeakRetained displayedOn];

    if (pendingDisplayedOnValue != displayedOn)
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

- (BOOL)_isMovementDirectionAndMagnitudeEnoughToPerformOnOffChange:(double)change
{
  v5 = [(UISwitchMVEGestureTrackingSession *)self _isMovementDirectionTrackableForPossibleOnOffChange:?];
  if (v5)
  {
    LOBYTE(v5) = fabs(change) > fabs(self->_movementVectorForPanInitiatedChangeY);
  }

  return v5;
}

- (UISwitchMVEGestureTrackingSessionElement)visualElement
{
  WeakRetained = objc_loadWeakRetained(&self->_visualElement);

  return WeakRetained;
}

@end