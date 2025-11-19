@interface _UIDragFeedbackGenerator
- (void)_startPlayingContinuousFeedback;
- (void)_startPlayingContinuousFeedbackNow;
- (void)_stopPlayingContinuousFeedback;
- (void)dropTargetUpdatedAtLocation:(CGPoint)a3;
- (void)positionUpdatedAtLocation:(CGPoint)a3;
- (void)userInteractionCancelledAtLocation:(CGPoint)a3;
- (void)userInteractionEndedAtLocation:(CGPoint)a3;
- (void)userInteractionStartedAtLocation:(CGPoint)a3;
@end

@implementation _UIDragFeedbackGenerator

- (void)userInteractionStartedAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (self->_state == 2)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"_UIDragFeedbackGenerator.m" lineNumber:50 description:{@"%@ is already being interacted with", self}];
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

- (void)userInteractionEndedAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  if (self->_state != 2)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIDragFeedbackGenerator.m" lineNumber:74 description:{@"%@ should be being interacted with when ending it", self}];
  }

  [(_UIDragFeedbackGenerator *)self _stopPlayingContinuousFeedback];
  if (self->_state == 2)
  {
    v7 = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
    v8 = [v7 interactionEndedFeedback];
    [(UIFeedbackGenerator *)self _playFeedback:v8 atLocation:x, y];
  }

  self->_state = 0;

  [(UIFeedbackGenerator *)self deactivate];
}

- (void)userInteractionCancelledAtLocation:(CGPoint)a3
{
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2, a3.x, a3.y];
  state = self->_state;
  v6 = state > 4;
  v7 = (1 << state) & 0x16;
  if (v6 || v7 == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIDragFeedbackGenerator.m" lineNumber:95 description:{@"%@ should be being interacted with when cancelling it", self}];
  }

  [(_UIDragFeedbackGenerator *)self _stopPlayingContinuousFeedback];
  self->_state = 0;

  [(UIFeedbackGenerator *)self deactivate];
}

- (void)positionUpdatedAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  if (self->_state)
  {
    v7 = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
    v6 = [v7 interactionUpdatedFeedback];
    [(UIFeedbackGenerator *)self _playFeedback:v6 atLocation:x, y];
  }
}

- (void)dropTargetUpdatedAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  if (self->_state)
  {
    v7 = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
    v6 = [v7 targetUpdatedFeedback];
    [(UIFeedbackGenerator *)self _playFeedback:v6 atLocation:x, y];
  }
}

- (void)_startPlayingContinuousFeedback
{
  v3 = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
  [v3 progressingFeedbackDelay];
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
    v4 = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
    v5 = [v4 interactionProgressingFeedback];

    if (v5)
    {
      [(_UIDragFeedbackGenerator *)self _setPlayingContinuousFeedback:v5];
      [(UIFeedbackGenerator *)self _playFeedback:v5 atLocation:1.79769313e308, 1.79769313e308];
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