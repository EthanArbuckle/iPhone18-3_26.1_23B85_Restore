@interface _UIDragFeedbackGenerator
- (void)_startPlayingContinuousFeedback;
- (void)_startPlayingContinuousFeedbackNow;
- (void)_stopPlayingContinuousFeedback;
- (void)dropTargetUpdatedAtLocation:(CGPoint)location;
- (void)positionUpdatedAtLocation:(CGPoint)location;
- (void)userInteractionCancelledAtLocation:(CGPoint)location;
- (void)userInteractionEndedAtLocation:(CGPoint)location;
- (void)userInteractionStartedAtLocation:(CGPoint)location;
@end

@implementation _UIDragFeedbackGenerator

- (void)userInteractionStartedAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  if (self->_state == 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDragFeedbackGenerator.m" lineNumber:50 description:{@"%@ is already being interacted with", self}];
  }

  [(UIFeedbackGenerator *)self activateWithCompletionBlock:0];
  self->_state = 2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __61___UIDragFeedbackGenerator_userInteractionStartedAtLocation___block_invoke;
  v8[3] = &unk_1E70F3CD8;
  v8[4] = self;
  *&v8[5] = x;
  *&v8[6] = y;
  [(UIFeedbackGenerator *)self activateWithCompletionBlock:v8];
}

- (void)userInteractionEndedAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  if (self->_state != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDragFeedbackGenerator.m" lineNumber:74 description:{@"%@ should be being interacted with when ending it", self}];
  }

  [(_UIDragFeedbackGenerator *)self _stopPlayingContinuousFeedback];
  if (self->_state == 2)
  {
    _dragConfiguration = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
    interactionEndedFeedback = [_dragConfiguration interactionEndedFeedback];
    [(UIFeedbackGenerator *)self _playFeedback:interactionEndedFeedback atLocation:x, y];
  }

  self->_state = 0;

  [(UIFeedbackGenerator *)self deactivate];
}

- (void)userInteractionCancelledAtLocation:(CGPoint)location
{
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2, location.x, location.y];
  state = self->_state;
  v6 = state > 4;
  v7 = (1 << state) & 0x16;
  if (v6 || v7 == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDragFeedbackGenerator.m" lineNumber:95 description:{@"%@ should be being interacted with when cancelling it", self}];
  }

  [(_UIDragFeedbackGenerator *)self _stopPlayingContinuousFeedback];
  self->_state = 0;

  [(UIFeedbackGenerator *)self deactivate];
}

- (void)positionUpdatedAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  if (self->_state)
  {
    _dragConfiguration = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
    interactionUpdatedFeedback = [_dragConfiguration interactionUpdatedFeedback];
    [(UIFeedbackGenerator *)self _playFeedback:interactionUpdatedFeedback atLocation:x, y];
  }
}

- (void)dropTargetUpdatedAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  if (self->_state)
  {
    _dragConfiguration = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
    targetUpdatedFeedback = [_dragConfiguration targetUpdatedFeedback];
    [(UIFeedbackGenerator *)self _playFeedback:targetUpdatedFeedback atLocation:x, y];
  }
}

- (void)_startPlayingContinuousFeedback
{
  _dragConfiguration = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
  [_dragConfiguration progressingFeedbackDelay];
  v5 = v4;

  if (v5 == 0.0)
  {

    [(_UIDragFeedbackGenerator *)self _startPlayingContinuousFeedbackNow];
  }

  else
  {

    [(_UIDragFeedbackGenerator *)self performSelector:sel__startPlayingContinuousFeedbackNow withObject:0 afterDelay:v5];
  }
}

- (void)_startPlayingContinuousFeedbackNow
{
  if (self->_state == 2)
  {
    _dragConfiguration = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
    interactionProgressingFeedback = [_dragConfiguration interactionProgressingFeedback];

    if (interactionProgressingFeedback)
    {
      [(_UIDragFeedbackGenerator *)self _setPlayingContinuousFeedback:interactionProgressingFeedback];
      [(UIFeedbackGenerator *)self _playFeedback:interactionProgressingFeedback atLocation:1.79769313e308, 1.79769313e308];
    }
  }
}

- (void)_stopPlayingContinuousFeedback
{
  playingContinuousFeedback = self->_playingContinuousFeedback;
  if (playingContinuousFeedback)
  {
    [(_UIFeedbackContinuousPlayable *)playingContinuousFeedback stop];

    [(_UIDragFeedbackGenerator *)self _setPlayingContinuousFeedback:0];
  }
}

@end