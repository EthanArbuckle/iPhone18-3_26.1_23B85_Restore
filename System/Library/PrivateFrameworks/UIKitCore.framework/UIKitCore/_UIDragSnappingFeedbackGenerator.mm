@interface _UIDragSnappingFeedbackGenerator
- (void)_startLanding;
- (void)_stopLanding;
- (void)draggedObjectLandedAtLocation:(CGPoint)a3;
- (void)draggedObjectLiftedAtLocation:(CGPoint)a3;
- (void)objectSnappedAtLocation:(CGPoint)a3;
- (void)userInteractionEnded;
- (void)userInteractionStarted;
@end

@implementation _UIDragSnappingFeedbackGenerator

- (void)userInteractionStarted
{
  if ([(_UIDragFeedbackGenerator *)self _state]== 1 || [(_UIDragFeedbackGenerator *)self _state]== 2)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"_UIDragFeedbackGenerator.m" lineNumber:198 description:{@"%@ is already being interacted with", self}];
  }

  [(_UIDragSnappingFeedbackGenerator *)self _stopLanding];
  [(UIFeedbackGenerator *)self activateWithCompletionBlock:0];

  [(_UIDragFeedbackGenerator *)self _setState:1];
}

- (void)userInteractionEnded
{
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  if ([(_UIDragFeedbackGenerator *)self _state]!= 1 && [(_UIDragFeedbackGenerator *)self _state]!= 2 && [(_UIDragFeedbackGenerator *)self _state]!= 4)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"_UIDragFeedbackGenerator.m" lineNumber:211 description:{@"%@ should be being interacted with when ending it", self}];
  }

  if ([(_UIDragFeedbackGenerator *)self _state]!= 4)
  {
    [(_UIDragSnappingFeedbackGenerator *)self _startLanding];
  }

  if ([(_UIDragFeedbackGenerator *)self _state]!= 3)
  {
    [(_UIDragFeedbackGenerator *)self _setState:0];
  }

  [(UIFeedbackGenerator *)self deactivate];
}

- (void)draggedObjectLiftedAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  if ([(_UIDragFeedbackGenerator *)self _state]== 1)
  {
    v6 = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
    v7 = [v6 interactionStartedFeedback];
    [(UIFeedbackGenerator *)self _playFeedback:v7 atLocation:x, y];

    [(_UIDragFeedbackGenerator *)self _setState:2];
  }
}

- (void)draggedObjectLandedAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  v6 = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
  v7 = [v6 interactionEndedFeedback];

  if ([(_UIDragFeedbackGenerator *)self _state]== 3)
  {
    [(UIFeedbackGenerator *)self _playFeedback:v7 atLocation:x, y];
    [(_UIDragSnappingFeedbackGenerator *)self _stopLanding];
  }

  else if ([(_UIDragFeedbackGenerator *)self _state]== 2)
  {
    [(UIFeedbackGenerator *)self _playFeedback:v7 atLocation:x, y];
    [(_UIDragFeedbackGenerator *)self _setState:4];
  }
}

- (void)objectSnappedAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  if ([(_UIDragFeedbackGenerator *)self _state])
  {
    v7 = [(_UIDragSnappingFeedbackGenerator *)self _dragSnappingConfiguration];
    v6 = [v7 objectSnappedFeedback];
    [(UIFeedbackGenerator *)self _playFeedback:v6 atLocation:x, y];
  }
}

- (void)_startLanding
{
  if ([(_UIDragFeedbackGenerator *)self _state]== 2)
  {
    v3 = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
    v4 = [v3 interactionEndedFeedback];

    if (v4)
    {
      [(UIFeedbackGenerator *)self activateWithCompletionBlock:0];
      [(_UIDragSnappingFeedbackGenerator *)self performSelector:sel__stopLanding withObject:0 afterDelay:2.0];

      [(_UIDragFeedbackGenerator *)self _setState:3];
    }
  }
}

- (void)_stopLanding
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__stopLanding object:0];
  if ([(_UIDragFeedbackGenerator *)self _state]== 3)
  {
    [(_UIDragFeedbackGenerator *)self _setState:0];

    [(UIFeedbackGenerator *)self deactivate];
  }
}

@end