@interface PUTilingViewNavigationTransition
- (BOOL)hasStarted;
- (BOOL)isTransitionPaused;
- (PUTilingViewNavigationTransition)initWithEndPoint:(id)point;
- (void)_animateTransitionWithOperation:(int64_t)operation;
- (void)pauseTransition;
- (void)pauseTransitionWithOptions:(unint64_t)options;
- (void)resumeTransition:(BOOL)transition;
- (void)updatePausedTransitionWithProgress:(double)progress interactionProgress:(double)interactionProgress;
@end

@implementation PUTilingViewNavigationTransition

- (void)resumeTransition:(BOOL)transition
{
  transitionCopy = transition;
  _tilingViewTransitionHelper = [(PUTilingViewNavigationTransition *)self _tilingViewTransitionHelper];
  [_tilingViewTransitionHelper resumeTransition:transitionCopy];
}

- (void)updatePausedTransitionWithProgress:(double)progress interactionProgress:(double)interactionProgress
{
  _tilingViewTransitionHelper = [(PUTilingViewNavigationTransition *)self _tilingViewTransitionHelper];
  [_tilingViewTransitionHelper updatePausedTransitionWithProgress:progress interactionProgress:interactionProgress];
}

- (void)pauseTransitionWithOptions:(unint64_t)options
{
  _tilingViewTransitionHelper = [(PUTilingViewNavigationTransition *)self _tilingViewTransitionHelper];
  [_tilingViewTransitionHelper pauseTransitionWithOptions:options];
}

- (void)pauseTransition
{
  _tilingViewTransitionHelper = [(PUTilingViewNavigationTransition *)self _tilingViewTransitionHelper];
  [_tilingViewTransitionHelper pauseTransition];
}

- (BOOL)isTransitionPaused
{
  _tilingViewTransitionHelper = [(PUTilingViewNavigationTransition *)self _tilingViewTransitionHelper];
  isTransitionPaused = [_tilingViewTransitionHelper isTransitionPaused];

  return isTransitionPaused;
}

- (BOOL)hasStarted
{
  _tilingViewTransitionHelper = [(PUTilingViewNavigationTransition *)self _tilingViewTransitionHelper];
  hasStarted = [_tilingViewTransitionHelper hasStarted];

  return hasStarted;
}

- (void)_animateTransitionWithOperation:(int64_t)operation
{
  startedInteractively = [(PUViewControllerTransition *)self startedInteractively];
  _tilingViewTransitionHelper = [(PUTilingViewNavigationTransition *)self _tilingViewTransitionHelper];
  [_tilingViewTransitionHelper animateTransitionWithOperation:operation startedInteractively:startedInteractively];
}

- (PUTilingViewNavigationTransition)initWithEndPoint:(id)point
{
  pointCopy = point;
  v5 = +[PUTilingViewSettings sharedInstance];
  [v5 transitionDuration];
  v7 = v6;
  v8 = +[PUTilingViewSettings sharedInstance];
  [v8 animationDragCoefficient];
  v10 = v7 * v9;

  v19.receiver = self;
  v19.super_class = PUTilingViewNavigationTransition;
  v11 = [(PUNavigationTransition *)&v19 initWithDuration:v10];
  if (v11)
  {
    v12 = [PUTilingViewTransitionHelper alloc];
    [(PUNavigationTransition *)v11 pushDuration];
    v14 = v13;
    [(PUNavigationTransition *)v11 popDuration];
    v16 = [(PUTilingViewTransitionHelper *)v12 initWithPresentationDuration:pointCopy dismissalDuration:v14 endPoint:v15];
    tilingViewTransitionHelper = v11->__tilingViewTransitionHelper;
    v11->__tilingViewTransitionHelper = v16;

    [(PUTilingViewTransitionHelper *)v11->__tilingViewTransitionHelper setTransition:v11];
  }

  return v11;
}

@end