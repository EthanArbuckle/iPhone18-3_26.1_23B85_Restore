@interface _UIDragSnappingFeedbackGenerator
- (void)_startLanding;
- (void)_stopLanding;
- (void)draggedObjectLandedAtLocation:(CGPoint)location;
- (void)draggedObjectLiftedAtLocation:(CGPoint)location;
- (void)objectSnappedAtLocation:(CGPoint)location;
- (void)userInteractionEnded;
- (void)userInteractionStarted;
@end

@implementation _UIDragSnappingFeedbackGenerator

- (void)userInteractionStarted
{
  if ([(_UIDragFeedbackGenerator *)self _state]== 1 || [(_UIDragFeedbackGenerator *)self _state]== 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDragFeedbackGenerator.m" lineNumber:198 description:{@"%@ is already being interacted with", self}];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIDragFeedbackGenerator.m" lineNumber:211 description:{@"%@ should be being interacted with when ending it", self}];
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

- (void)draggedObjectLiftedAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  if ([(_UIDragFeedbackGenerator *)self _state]== 1)
  {
    _dragConfiguration = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
    interactionStartedFeedback = [_dragConfiguration interactionStartedFeedback];
    [(UIFeedbackGenerator *)self _playFeedback:interactionStartedFeedback atLocation:x, y];

    [(_UIDragFeedbackGenerator *)self _setState:2];
  }
}

- (void)draggedObjectLandedAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  _dragConfiguration = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
  interactionEndedFeedback = [_dragConfiguration interactionEndedFeedback];

  if ([(_UIDragFeedbackGenerator *)self _state]== 3)
  {
    [(UIFeedbackGenerator *)self _playFeedback:interactionEndedFeedback atLocation:x, y];
    [(_UIDragSnappingFeedbackGenerator *)self _stopLanding];
  }

  else if ([(_UIDragFeedbackGenerator *)self _state]== 2)
  {
    [(UIFeedbackGenerator *)self _playFeedback:interactionEndedFeedback atLocation:x, y];
    [(_UIDragFeedbackGenerator *)self _setState:4];
  }
}

- (void)objectSnappedAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIFeedbackGenerator *)self _clientDidUpdateGeneratorWithSelector:a2];
  if ([(_UIDragFeedbackGenerator *)self _state])
  {
    _dragSnappingConfiguration = [(_UIDragSnappingFeedbackGenerator *)self _dragSnappingConfiguration];
    objectSnappedFeedback = [_dragSnappingConfiguration objectSnappedFeedback];
    [(UIFeedbackGenerator *)self _playFeedback:objectSnappedFeedback atLocation:x, y];
  }
}

- (void)_startLanding
{
  if ([(_UIDragFeedbackGenerator *)self _state]== 2)
  {
    _dragConfiguration = [(_UIDragFeedbackGenerator *)self _dragConfiguration];
    interactionEndedFeedback = [_dragConfiguration interactionEndedFeedback];

    if (interactionEndedFeedback)
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