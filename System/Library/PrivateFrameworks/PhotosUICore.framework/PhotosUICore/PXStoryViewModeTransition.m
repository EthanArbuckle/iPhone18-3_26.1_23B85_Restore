@interface PXStoryViewModeTransition
- ($A25D1FC0A592AF581AFDBFE54D262C37)swipeDownInteractionState;
- ($B0175D27BC26B8A5DA33FAD13D27C2F3)contentsTransformOverrideForClipWithInfo:(SEL)a3 proposedOverride:(id *)a4 inViewMode:(id *)a5 layout:(int64_t)a6;
- (BOOL)hasActiveAnimation;
- (NSString)description;
- (PXStoryViewModeTransition)init;
- (PXStoryViewModeTransition)initWithSourceViewMode:(int64_t)a3 sourceSnapshot:(id)a4 destinationViewMode:(int64_t)a5 destinationSnapshot:(id)a6 assetReference:(id)a7;
- (double)springStiffness;
- (double)valueWithFadeout:(double)a3;
- (void)_updateIsComplete;
- (void)cancel;
- (void)didPerformChanges;
- (void)finish;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)setFractionCompleted:(float)a3;
- (void)setRegionOfInterest:(id)a3;
- (void)setSwipeDownInteractionState:(id *)a3;
- (void)start;
@end

@implementation PXStoryViewModeTransition

- ($A25D1FC0A592AF581AFDBFE54D262C37)swipeDownInteractionState
{
  v3 = *&self[3].var0.y;
  retstr->var2 = *&self[2].var5;
  *&retstr->var3 = v3;
  retstr->var5 = self[3].var1.y;
  v4 = *&self[2].var3;
  retstr->var0 = self[2].var2;
  retstr->var1 = v4;
  return self;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (ProgressAnimatorObservationContext == a5)
  {
    if ((v6 & 6) != 0)
    {
      v12 = v17;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v13 = __58__PXStoryViewModeTransition_observable_didChange_context___block_invoke;
      goto LABEL_14;
    }
  }

  else
  {
    if (CompletionProgressAnimatorObservationContext != a5 && CenterAnimatorObservationContext != a5 && FadeoutAnimatorObservationContext != a5)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PXStoryViewModeTransition.m" lineNumber:250 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((v6 & 6) != 0)
    {
      v12 = &v15;
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v13 = __58__PXStoryViewModeTransition_observable_didChange_context___block_invoke_2;
LABEL_14:
      v12[2] = v13;
      v12[3] = &unk_1E773E5B0;
      v12[4] = self;
      [(PXStoryViewModeTransition *)self performChanges:v15, v16];
    }
  }
}

uint64_t __58__PXStoryViewModeTransition_observable_didChange_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progressAnimator];
  [v2 presentationValue];
  *&v3 = v3;
  [*(a1 + 32) setFractionCompleted:v3];

  v4 = *(a1 + 32);

  return [v4 _invalidateIsComplete];
}

uint64_t __58__PXStoryViewModeTransition_observable_didChange_context___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) signalChange:1];
  v2 = *(a1 + 32);

  return [v2 _invalidateIsComplete];
}

- ($B0175D27BC26B8A5DA33FAD13D27C2F3)contentsTransformOverrideForClipWithInfo:(SEL)a3 proposedOverride:(id *)a4 inViewMode:(id *)a5 layout:(int64_t)a6
{
  v7 = *&a5->var1.origin.y;
  *&retstr->var0 = *&a5->var0;
  *&retstr->var1.origin.y = v7;
  retstr->var1.size.height = a5->var1.size.height;
  return self;
}

- (void)_updateIsComplete
{
  if (![(PXStoryViewModeTransition *)self hasActiveAnimation])
  {
    [(PXStoryViewModeTransition *)self fadeoutDuration];
    if (v3 <= 0.0 || self->_fadeoutAnimator)
    {
      [(PXStoryViewModeTransition *)self progressAnimator];
      [objc_claimAutoreleasedReturnValue() presentationValue];
      PXFloatApproximatelyEqualToFloat();
    }

    v4 = v3;
    v5 = [[off_1E77217D0 alloc] initWithValue:1.0];
    fadeoutAnimator = self->_fadeoutAnimator;
    self->_fadeoutAnimator = v5;

    [(PXNumberAnimator *)self->_fadeoutAnimator performChangesWithDuration:1 curve:&__block_literal_global_19 changes:v4];
    v7 = self->_fadeoutAnimator;
    v8 = FadeoutAnimatorObservationContext;

    [(PXNumberAnimator *)v7 registerChangeObserver:self context:v8];
  }
}

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXStoryViewModeTransition;
  [(PXStoryViewModeTransition *)&v3 didPerformChanges];
  [(PXUpdater *)self->_updater updateIfNeeded];
}

- (void)cancel
{
  if (![(PXStoryViewModeTransition *)self isComplete])
  {
    self->_isCancelled = 1;
    self->_isComplete = 1;

    [(PXStoryViewModeTransition *)self signalChange:2];
  }
}

- (void)finish
{
  if (![(PXStoryViewModeTransition *)self isComplete])
  {
    self->_isFinished = 1;
    self->_isComplete = 1;

    [(PXStoryViewModeTransition *)self signalChange:2];
  }
}

- (void)start
{
  v6 = [(PXStoryViewModeTransition *)self progressAnimator];
  [(PXStoryViewModeTransition *)self springStiffness];
  v4 = v3;
  [(PXStoryViewModeTransition *)self dampingRatio];
  [v6 performChangesUsingSpringAnimationWithStiffness:&__block_literal_global_15279 dampingRatio:v4 initialVelocity:v5 changes:0.0];
}

- (double)springStiffness
{
  v2 = +[PXStorySettings sharedInstance];
  [v2 viewModeTransitionSpringStiffness];
  v4 = v3;

  return v4;
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXStoryViewModeTransition;
  [(PXStoryViewModeTransition *)&v3 performChanges:a3];
}

- (BOOL)hasActiveAnimation
{
  v3 = [(PXStoryViewModeTransition *)self progressAnimator];
  if (([v3 isAnimating] & 1) == 0 && (-[PXNumberAnimator isAnimating](self->_fadeoutAnimator, "isAnimating") & 1) == 0)
  {
    [(PXStoryViewModeTransition *)self swipeDownInteractionState];
    if (PXStorySwipeDownInteractionStateEqualsState(v5, &PXStorySwipeDownInteractionStateNull))
    {
      [v3 presentationValue];
      PXFloatApproximatelyEqualToFloat();
    }
  }

  return 1;
}

- (void)setSwipeDownInteractionState:(id *)a3
{
  p_swipeDownInteractionState = &self->_swipeDownInteractionState;
  v6 = *&self->_swipeDownInteractionState.coordinateSpace;
  v15[2] = self->_swipeDownInteractionState.velocity;
  v15[3] = v6;
  lastTimestamp = self->_swipeDownInteractionState.lastTimestamp;
  location = self->_swipeDownInteractionState.location;
  v15[0] = self->_swipeDownInteractionState.initialLocation;
  v15[1] = location;
  v8 = *&a3->var3;
  v13[2] = a3->var2;
  v13[3] = v8;
  var5 = a3->var5;
  var1 = a3->var1;
  v13[0] = a3->var0;
  v13[1] = var1;
  if ((PXStorySwipeDownInteractionStateEqualsState(v15, v13) & 1) == 0)
  {
    p_swipeDownInteractionState->initialLocation = a3->var0;
    v10 = a3->var1;
    var2 = a3->var2;
    v12 = *&a3->var3;
    p_swipeDownInteractionState->lastTimestamp = a3->var5;
    p_swipeDownInteractionState->velocity = var2;
    *&p_swipeDownInteractionState->coordinateSpace = v12;
    p_swipeDownInteractionState->location = v10;
    [(PXStoryViewModeTransition *)self signalChange:1];
    [(PXStoryViewModeTransition *)self _invalidateIsComplete];

    [(PXStoryViewModeTransition *)self swipeDownInteractionStateDidChange];
  }
}

- (void)setRegionOfInterest:(id)a3
{
  v5 = a3;
  if (self->_regionOfInterest != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_regionOfInterest, a3);
    [(PXStoryViewModeTransition *)self signalChange:1];
    v5 = v6;
  }
}

- (void)setFractionCompleted:(float)a3
{
  if (self->_fractionCompleted != a3)
  {
    self->_fractionCompleted = a3;
    [(PXStoryViewModeTransition *)self signalChange:1];

    [(PXStoryViewModeTransition *)self _invalidateIsComplete];
  }
}

- (double)valueWithFadeout:(double)a3
{
  fadeoutAnimator = self->_fadeoutAnimator;
  if (fadeoutAnimator)
  {
    [(PXNumberAnimator *)fadeoutAnimator presentationValue];
    return v5 * a3;
  }

  return a3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = PXStoryViewModeDescription([(PXStoryViewModeTransition *)self sourceViewMode]);
  v7 = PXStoryViewModeDescription([(PXStoryViewModeTransition *)self destinationViewMode]);
  v8 = [v3 stringWithFormat:@"<%p:%@ %@ -> %@>", self, v5, v6, v7];

  return v8;
}

- (PXStoryViewModeTransition)initWithSourceViewMode:(int64_t)a3 sourceSnapshot:(id)a4 destinationViewMode:(int64_t)a5 destinationSnapshot:(id)a6 assetReference:(id)a7
{
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = PXStoryViewModeTransition;
  v16 = [(PXStoryViewModeTransition *)&v22 init];
  if (v16)
  {
    v17 = [[off_1E7721940 alloc] initWithTarget:v16];
    updater = v16->_updater;
    v16->_updater = v17;

    [(PXUpdater *)v16->_updater addUpdateSelector:sel__updateIsComplete];
    v16->_sourceViewMode = a3;
    objc_storeStrong(&v16->_sourceSnapshot, a4);
    v16->_destinationViewMode = a5;
    objc_storeStrong(&v16->_destinationSnapshot, a6);
    objc_storeStrong(&v16->_assetReference, a7);
    v16->_swipeDownInteractionState.initialLocation = 0u;
    v16->_swipeDownInteractionState.location = 0u;
    v16->_swipeDownInteractionState.velocity = 0u;
    *&v16->_swipeDownInteractionState.coordinateSpace = 0u;
    v16->_swipeDownInteractionState.lastTimestamp = 0.0;
    v19 = [[off_1E77217D0 alloc] initWithValue:0.0];
    progressAnimator = v16->_progressAnimator;
    v16->_progressAnimator = v19;

    [(PXNumberAnimator *)v16->_progressAnimator registerChangeObserver:v16 context:ProgressAnimatorObservationContext];
  }

  return v16;
}

- (PXStoryViewModeTransition)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryViewModeTransition.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXStoryViewModeTransition init]"}];

  abort();
}

@end