@interface SBViewMorphAnimator
- (BOOL)_isTargetSourcePinningFrameEquivalentToSourceViewFrame;
- (BOOL)preflightCheck;
- (BOOL)startTargetAnimations:(unint64_t)animations;
- (CGPoint)_source:(id)_source finalCenterWithFinalScale:(double)scale contentFrame:(CGRect)frame targetFinalFrame:(CGRect)finalFrame;
- (CGPoint)sourceFinalCenter;
- (CGRect)_sourceContentContainerFrameForSourceView:(id)view withTargetDataSource:(id)source;
- (CGRect)_targetInitialClippingBoundsWithSourceContentFrame:(CGRect)frame sourceFinalScale:(double)scale targetViewBounds:(CGRect)bounds;
- (CGRect)_targetSourcePinningFrameWithSourceContentFrame:(CGRect)frame targetFinalFrame:(CGRect)finalFrame;
- (CGRect)_validatedSourceContentFrame:(CGRect)frame withinSourceView:(id)view withSourceFinalScale:(double)scale;
- (CGRect)sourceContentContainerFrame;
- (CGRect)sourceContentFrame;
- (CGRect)targetContentClippingViewInitialFrame;
- (CGRect)targetFinalFrame;
- (CGRect)targetSourcePinningFrame;
- (SBViewMorphAnimator)init;
- (SBViewMorphAnimator)initWithUUID:(id)d windowScene:(id)scene direction:(int64_t)direction;
- (SBViewMorphAnimatorDataSource)dataSource;
- (SBViewMorphAnimatorDelegate)delegate;
- (SBWindowScene)windowScene;
- (UIView)sourceView;
- (UIView)targetContentView;
- (UIView)targetView;
- (double)_sourceFinalScaleWithContentFrame:(CGRect)frame targetFinalFrame:(CGRect)finalFrame;
- (void)_checkAnimationsDependencies:(id)dependencies;
- (void)_continueSourceAnimationsCompletionPendingBlock;
- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block;
- (void)_noteAnimatorWasCanceled;
- (void)_noteAnimatorWasInterrupted;
- (void)_removeBlackCurtainView;
- (void)_removeMatchMoveAnimation;
- (void)_removeTargetClippingView;
- (void)_reset;
- (void)_resetAllAnimations;
- (void)_startMorphAnimationTimeoutTimer;
- (void)_updateParameters;
- (void)addObserver:(id)observer;
- (void)cancel:(id)cancel;
- (void)dealloc;
- (void)didEndSourceAnimations:(unint64_t)animations finished:(BOOL)finished continueBlock:(id)block;
- (void)didEndTargetAnimations:(unint64_t)animations finished:(BOOL)finished continueBlock:(id)block;
- (void)interrupt:(id)interrupt;
- (void)noteSourceAnimationsDidEnd:(unint64_t)end finished:(BOOL)finished continueBlock:(id)block;
- (void)noteSourceAnimationsWillStart:(unint64_t)start;
- (void)noteTargetAnimationsDidEnd:(unint64_t)end finished:(BOOL)finished continueBlock:(id)block;
- (void)noteTargetAnimationsWillStart:(unint64_t)start;
- (void)noteWillRemoveTargeMatchMoveAnimationAtFrame:(CGRect)frame withinSourceFrame:(CGRect)sourceFrame;
- (void)setDataSource:(id)source;
- (void)setSourceAllAnimationsCompletionBlock:(id)block;
- (void)setSourceView:(id)view;
- (void)setTargetContentView:(id)view;
- (void)setTargetView:(id)view;
- (void)willStartSourceAnimations:(unint64_t)animations;
- (void)willStartTargetAnimations:(unint64_t)animations;
@end

@implementation SBViewMorphAnimator

- (SBViewMorphAnimator)initWithUUID:(id)d windowScene:(id)scene direction:(int64_t)direction
{
  dCopy = d;
  sceneCopy = scene;
  v14.receiver = self;
  v14.super_class = SBViewMorphAnimator;
  v11 = [(SBViewMorphAnimator *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uuid, d);
    v12->_direction = direction;
    objc_storeWeak(&v12->_windowScene, sceneCopy);
    [(SBViewMorphAnimator *)v12 _reset];
  }

  return v12;
}

- (SBViewMorphAnimator)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBViewMorphAnimator.m" lineNumber:104 description:{@"unavailable initializer, use -initWithUUID:"}];

  return 0;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "[Morph Animator][%p] dealloc", buf, 0xCu);
  }

  [(SBViewMorphAnimator *)self _resetAllAnimations];
  v4.receiver = self;
  v4.super_class = SBViewMorphAnimator;
  [(SBViewMorphAnimator *)&v4 dealloc];
}

- (void)_reset
{
  self->_invalidated = 0;
  v3 = *MEMORY[0x277CBF398];
  v4 = *(MEMORY[0x277CBF398] + 16);
  self->_targetFinalFrame.origin = *MEMORY[0x277CBF398];
  self->_targetFinalFrame.size = v4;
  self->_sourceFinalCenter = SBInvalidPoint;
  self->_targetSourcePinningFrame.origin = v3;
  self->_targetSourcePinningFrame.size = v4;
  *&self->_sourceFinalScale = xmmword_21F8A6F50;
  self->_fromOrientation = 0;
  self->_toOrientation = 0;
  *&self->_automaticallyStartSourceAnimations = 257;
  self->_sourceContentContainerFrame.origin = v3;
  self->_sourceContentContainerFrame.size = v4;
  self->_sourceCornerRadius = 0.0;
  observers = self->_observers;
  self->_observers = 0;

  self->_startedSourceAnimations = 0;
  self->_completedSourceAnimations = 0;
  self->_completedTargetAnimations = 0;
  sourceAllAnimationsCompletionBlock = self->_sourceAllAnimationsCompletionBlock;
  self->_sourceAllAnimationsCompletionBlock = 0;

  targetContentClippingView = self->_targetContentClippingView;
  self->_targetContentClippingView = 0;

  sourceBlackCurtainView = self->_sourceBlackCurtainView;
  self->_sourceBlackCurtainView = 0;
}

- (void)cancel:(id)cancel
{
  v9 = *MEMORY[0x277D85DE8];
  cancelCopy = cancel;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Layout][Morph Animator][%p] was canceled", &v7, 0xCu);
  }

  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    if (!self->_direction)
    {
      WeakRetained = objc_loadWeakRetained(&self->_targetView);
      [WeakRetained setAlpha:0.0];
    }

    [(SBViewMorphAnimator *)self _resetAllAnimations];
    [(SBViewMorphAnimator *)self _noteAnimatorWasCanceled];
    [(SBViewMorphAnimator *)self _continueSourceAnimationsCompletionPendingBlock];
  }

  if (cancelCopy)
  {
    cancelCopy[2](cancelCopy);
  }
}

- (void)interrupt:(id)interrupt
{
  v10 = *MEMORY[0x277D85DE8];
  interruptCopy = interrupt;
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[Layout][Morph Animator][%p] was interrupted", buf, 0xCu);
  }

  if (self->_invalidated)
  {
    if (interruptCopy)
    {
      interruptCopy[2](interruptCopy);
    }
  }

  else
  {
    [(SBViewMorphAnimator *)self _noteAnimatorWasInterrupted];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __33__SBViewMorphAnimator_interrupt___block_invoke;
    v6[3] = &unk_2783A98A0;
    v6[4] = self;
    v7 = interruptCopy;
    [(SBViewMorphAnimator *)self cancel:v6];
  }
}

void __33__SBViewMorphAnimator_interrupt___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D75D18];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __33__SBViewMorphAnimator_interrupt___block_invoke_2;
  v4[3] = &unk_2783A8C18;
  v4[4] = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __33__SBViewMorphAnimator_interrupt___block_invoke_3;
  v2[3] = &unk_2783A9C70;
  v3 = *(a1 + 40);
  [v1 animateWithDuration:v4 animations:v2 completion:0.2];
}

void __33__SBViewMorphAnimator_interrupt___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained setAlpha:1.0];
}

uint64_t __33__SBViewMorphAnimator_interrupt___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_resetAllAnimations
{
  v9 = *MEMORY[0x277D85DE8];
  [(SBViewMorphAnimator *)self _removeBlackCurtainView];
  [(SBViewMorphAnimator *)self _removeTargetClippingView];
  [(SBViewMorphAnimator *)self _removeMatchMoveAnimation];
  [(BSAbsoluteMachTimer *)self->_allAnimationsTimeoutTimer invalidate];
  [(BSAbsoluteMachTimer *)self->_morphAnimationTimeout invalidate];
  [(BSAbsoluteMachTimer *)self->_sourceAnimationsCompletionContinueBlockTimeoutTimer invalidate];
  allAnimationsTimeoutTimer = self->_allAnimationsTimeoutTimer;
  self->_allAnimationsTimeoutTimer = 0;

  morphAnimationTimeout = self->_morphAnimationTimeout;
  self->_morphAnimationTimeout = 0;

  sourceAnimationsCompletionContinueBlockTimeoutTimer = self->_sourceAnimationsCompletionContinueBlockTimeoutTimer;
  self->_sourceAnimationsCompletionContinueBlockTimeoutTimer = 0;

  v6 = SBLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Layout][Morph Animator][%p] did reset all animations", &v7, 0xCu);
  }
}

- (void)_removeTargetClippingView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetContentView);
  targetContentClippingView = self->_targetContentClippingView;
  if (targetContentClippingView)
  {
    v7 = WeakRetained;
    superview = [(SBViewMorphAnimatorContentClippingView *)targetContentClippingView superview];
    [superview insertSubview:v7 belowSubview:self->_targetContentClippingView];

    [(SBViewMorphAnimatorContentClippingView *)self->_targetContentClippingView frame];
    [v7 setFrame:?];
    [(SBViewMorphAnimatorContentClippingView *)self->_targetContentClippingView removeFromSuperview];
    v6 = self->_targetContentClippingView;
    self->_targetContentClippingView = 0;

    WeakRetained = v7;
  }
}

- (void)_removeBlackCurtainView
{
  sourceBlackCurtainView = self->_sourceBlackCurtainView;
  if (sourceBlackCurtainView)
  {
    [(SBViewMorphAnimatorContentBlackCurtainView *)sourceBlackCurtainView removeFromSuperview];
    v4 = self->_sourceBlackCurtainView;
    self->_sourceBlackCurtainView = 0;
  }
}

- (BOOL)preflightCheck
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained sourceContentFrameForAnimator:self];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v4 targetFinalFrameForAnimator:self];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v35.origin.x = v6;
    v35.origin.y = v8;
    v35.size.width = v10;
    v35.size.height = v12;
    if (CGRectIsNull(v35))
    {
      v21 = 0;
    }

    else
    {
      v36.origin.x = v14;
      v36.origin.y = v16;
      v36.size.width = v18;
      v36.size.height = v20;
      v21 = !CGRectIsNull(v36);
    }

    v22 = SBLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v37.origin.x = v6;
      v37.origin.y = v8;
      v37.size.width = v10;
      v37.size.height = v12;
      v23 = NSStringFromRect(v37);
      v38.origin.x = v14;
      v38.origin.y = v16;
      v38.size.width = v18;
      v38.size.height = v20;
      v24 = NSStringFromRect(v38);
      v26 = 134218754;
      selfCopy = self;
      v28 = 1024;
      v29 = v21;
      v30 = 2112;
      v31 = v23;
      v32 = 2112;
      v33 = v24;
      _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "[Layout][Morph Animator][%p] Preflight check succeeded? %{BOOL}u, with sourceContentFrame: %@, targetFinalFrame: %@.", &v26, 0x26u);
    }
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21;
}

- (void)setDataSource:(id)source
{
  objc_storeWeak(&self->_dataSource, source);

  [(SBViewMorphAnimator *)self _updateParameters];
}

- (void)setSourceView:(id)view
{
  objc_storeWeak(&self->_sourceView, view);
  [(SBViewMorphAnimator *)self _updateParameters];
  if (view && self->_automaticallyStartSourceAnimations)
  {

    [(SBViewMorphAnimator *)self startSourceAnimations:15];
  }
}

- (void)setTargetView:(id)view
{
  objc_storeWeak(&self->_targetView, view);
  [(SBViewMorphAnimator *)self _updateParameters];
  if (self->_direction == 1)
  {
    if (!view)
    {

      [(SBViewMorphAnimator *)self noteTargetAnimationsDidEnd:4 finished:1 continueBlock:0];
      return;
    }
  }

  else
  {
    [(SBViewMorphAnimator *)self noteTargetAnimationsDidEnd:4 finished:1 continueBlock:0];
  }

  if (view)
  {
    if (self->_automaticallyStartTargetAnimations)
    {
      WeakRetained = objc_loadWeakRetained(&self->_targetContentView);

      if (WeakRetained)
      {

        [(SBViewMorphAnimator *)self startTargetAnimations:1];
      }
    }
  }
}

- (void)setTargetContentView:(id)view
{
  objc_storeWeak(&self->_targetContentView, view);
  [(SBViewMorphAnimator *)self _updateParameters];
  if (self->_automaticallyStartTargetAnimations)
  {
    WeakRetained = objc_loadWeakRetained(&self->_targetView);

    if (view)
    {
      if (WeakRetained)
      {

        [(SBViewMorphAnimator *)self startTargetAnimations:1];
      }
    }
  }
}

- (void)_updateParameters
{
  v87 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  _isReversed = [(SBViewMorphAnimator *)self _isReversed];
  v5 = objc_loadWeakRetained(&self->_sourceView);
  v6 = objc_loadWeakRetained(&self->_targetView);
  if (v5)
  {
    [WeakRetained sourceCornerRadiusForAnimator:self];
    self->_sourceCornerRadius = v7;
    [WeakRetained targetFinalCornerRadiusForAnimator:self];
    self->_targetCornerRadius = v8;
    [WeakRetained targetFinalFrameForAnimator:self];
    self->_targetFinalFrame.origin.x = v9;
    self->_targetFinalFrame.origin.y = v10;
    self->_targetFinalFrame.size.width = v11;
    self->_targetFinalFrame.size.height = v12;
    [WeakRetained sourceContentFrameForAnimator:self];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    if (_isReversed)
    {
      [v6 frame];
      x = v21;
      y = v23;
      width = v25;
      height = v27;
    }

    else
    {
      x = self->_targetFinalFrame.origin.x;
      y = self->_targetFinalFrame.origin.y;
      width = self->_targetFinalFrame.size.width;
      height = self->_targetFinalFrame.size.height;
    }

    [(SBViewMorphAnimator *)self _sourceFinalScaleWithContentFrame:v14 targetFinalFrame:v16, v18, v20, x, y, width, height];
    [(SBViewMorphAnimator *)self _validatedSourceContentFrame:v5 withinSourceView:v14 withSourceFinalScale:v16, v18, v20, v29];
    self->_sourceContentFrame.origin.x = v30;
    self->_sourceContentFrame.origin.y = v31;
    self->_sourceContentFrame.size.width = v32;
    self->_sourceContentFrame.size.height = v33;
    if (_isReversed)
    {
      [v6 frame];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v30 = self->_sourceContentFrame.origin.x;
      v31 = self->_sourceContentFrame.origin.y;
      v32 = self->_sourceContentFrame.size.width;
      v33 = self->_sourceContentFrame.size.height;
    }

    else
    {
      v35 = self->_targetFinalFrame.origin.x;
      v37 = self->_targetFinalFrame.origin.y;
      v39 = self->_targetFinalFrame.size.width;
      v41 = self->_targetFinalFrame.size.height;
    }

    [(SBViewMorphAnimator *)self _sourceFinalScaleWithContentFrame:v30 targetFinalFrame:v31, v32, v33, v35, v37, v39, v41];
    v43 = v42;
    self->_sourceFinalScale = v42;
    if (_isReversed)
    {
      [v6 frame];
    }

    else
    {
      v44 = self->_targetFinalFrame.origin.x;
      v45 = self->_targetFinalFrame.origin.y;
      v46 = self->_targetFinalFrame.size.width;
      v47 = self->_targetFinalFrame.size.height;
    }

    [(SBViewMorphAnimator *)self _source:v5 finalCenterWithFinalScale:v43 contentFrame:self->_sourceContentFrame.origin.x targetFinalFrame:self->_sourceContentFrame.origin.y, self->_sourceContentFrame.size.width, self->_sourceContentFrame.size.height, *&v44, *&v45, *&v46, *&v47];
    self->_sourceFinalCenter.x = v48;
    self->_sourceFinalCenter.y = v49;
    [(SBViewMorphAnimator *)self _targetSourcePinningFrameWithSourceContentFrame:self->_sourceContentFrame.origin.x targetFinalFrame:self->_sourceContentFrame.origin.y, self->_sourceContentFrame.size.width, self->_sourceContentFrame.size.height, self->_targetFinalFrame.origin.x, self->_targetFinalFrame.origin.y, self->_targetFinalFrame.size.width, self->_targetFinalFrame.size.height];
    self->_targetSourcePinningFrame.origin.x = v50;
    self->_targetSourcePinningFrame.origin.y = v51;
    self->_targetSourcePinningFrame.size.width = v52;
    self->_targetSourcePinningFrame.size.height = v53;
    [(SBViewMorphAnimator *)self _sourceContentContainerFrameForSourceView:v5 withTargetDataSource:WeakRetained];
    self->_sourceContentContainerFrame.origin.x = v54;
    self->_sourceContentContainerFrame.origin.y = v55;
    self->_sourceContentContainerFrame.size.width = v56;
    self->_sourceContentContainerFrame.size.height = v57;
    v58 = SBLogCommon();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v68 = NSStringFromCGRect(self->_sourceContentFrame);
      v59 = NSStringFromCGRect(self->_targetFinalFrame);
      sourceFinalScale = self->_sourceFinalScale;
      v61 = NSStringFromCGPoint(self->_sourceFinalCenter);
      v62 = NSStringFromCGRect(self->_targetSourcePinningFrame);
      v63 = NSStringFromCGRect(self->_sourceContentContainerFrame);
      v64 = _isReversed;
      v65 = v6;
      v66 = v63;
      targetCornerRadius = self->_targetCornerRadius;
      *buf = 134220034;
      selfCopy = self;
      v71 = 2114;
      v72 = v68;
      v73 = 2114;
      v74 = v59;
      v75 = 2048;
      v76 = sourceFinalScale;
      v77 = 2114;
      v78 = v61;
      v79 = 2114;
      v80 = v62;
      v81 = 2114;
      v82 = v63;
      v83 = 2048;
      v84 = targetCornerRadius;
      v85 = 1024;
      v86 = v64;
      _os_log_impl(&dword_21ED4E000, v58, OS_LOG_TYPE_DEFAULT, "[Layout][Morph Animator][%p] Parameters update: _sourceContentFrame(%{public}@) _targetFinalFrame(%{public}@) _sourceFinalScale(%.2f) _sourceFinalCenter(%{public}@) _targetSourcePinningFrame(%{public}@) _sourceContentContainerFrame(%{public}@) _targetCornerRadius(%.2f) isAnimationDirectionReversed(%{BOOL}u)", buf, 0x58u);

      v6 = v65;
    }
  }
}

- (BOOL)_isTargetSourcePinningFrameEquivalentToSourceViewFrame
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);
  [WeakRetained bounds];
  v9.origin.x = v4;
  v9.origin.y = v5;
  v9.size.width = v6;
  v9.size.height = v7;
  LOBYTE(selfCopy) = CGRectContainsRect(selfCopy->_targetSourcePinningFrame, v9);

  return selfCopy;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:5 capacity:2];
    v7 = self->_observers;
    self->_observers = v6;

    observerCopy = v8;
    observers = self->_observers;
  }

  if (![(NSHashTable *)observers containsObject:observerCopy])
  {
    [(NSHashTable *)self->_observers addObject:v8];
  }
}

- (void)noteSourceAnimationsWillStart:(unint64_t)start
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__SBViewMorphAnimator_noteSourceAnimationsWillStart___block_invoke;
  v3[3] = &__block_descriptor_40_e39_v16__0___SBViewMorphAnimatorObserver__8l;
  v3[4] = start;
  [(SBViewMorphAnimator *)self _enumerateObserversRespondingToSelector:sel_willStartSourceAnimations_ usingBlock:v3];
}

- (void)noteSourceAnimationsDidEnd:(unint64_t)end finished:(BOOL)finished continueBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SBViewMorphAnimator_noteSourceAnimationsDidEnd_finished_continueBlock___block_invoke;
  v10[3] = &unk_2783B82C8;
  finishedCopy = finished;
  v11 = blockCopy;
  endCopy = end;
  v9 = blockCopy;
  [(SBViewMorphAnimator *)self _enumerateObserversRespondingToSelector:sel_didEndSourceAnimations_finished_continueBlock_ usingBlock:v10];
}

- (void)noteTargetAnimationsWillStart:(unint64_t)start
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__SBViewMorphAnimator_noteTargetAnimationsWillStart___block_invoke;
  v3[3] = &__block_descriptor_40_e39_v16__0___SBViewMorphAnimatorObserver__8l;
  v3[4] = start;
  [(SBViewMorphAnimator *)self _enumerateObserversRespondingToSelector:sel_willStartTargetAnimations_ usingBlock:v3];
}

- (void)noteWillRemoveTargeMatchMoveAnimationAtFrame:(CGRect)frame withinSourceFrame:(CGRect)sourceFrame
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __86__SBViewMorphAnimator_noteWillRemoveTargeMatchMoveAnimationAtFrame_withinSourceFrame___block_invoke;
  v4[3] = &__block_descriptor_96_e39_v16__0___SBViewMorphAnimatorObserver__8l;
  frameCopy = frame;
  sourceFrameCopy = sourceFrame;
  [(SBViewMorphAnimator *)self _enumerateObserversRespondingToSelector:sel_willRemoveTargeMatchMoveAnimationAtFrame_withinSourceFrame_ usingBlock:v4];
}

- (void)noteTargetAnimationsDidEnd:(unint64_t)end finished:(BOOL)finished continueBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__SBViewMorphAnimator_noteTargetAnimationsDidEnd_finished_continueBlock___block_invoke;
  v10[3] = &unk_2783B82C8;
  finishedCopy = finished;
  v11 = blockCopy;
  endCopy = end;
  v9 = blockCopy;
  [(SBViewMorphAnimator *)self _enumerateObserversRespondingToSelector:sel_didEndTargetAnimations_finished_continueBlock_ usingBlock:v10];
}

- (void)_noteAnimatorWasCanceled
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__SBViewMorphAnimator__noteAnimatorWasCanceled__block_invoke;
  v2[3] = &unk_2783B8330;
  v2[4] = self;
  [(SBViewMorphAnimator *)self _enumerateObserversRespondingToSelector:sel_animatorWasCanceled_ usingBlock:v2];
}

- (void)_noteAnimatorWasInterrupted
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __50__SBViewMorphAnimator__noteAnimatorWasInterrupted__block_invoke;
  v2[3] = &unk_2783B8330;
  v2[4] = self;
  [(SBViewMorphAnimator *)self _enumerateObserversRespondingToSelector:sel_animatorWasInterrupted_ usingBlock:v2];
}

- (void)_enumerateObserversRespondingToSelector:(SEL)selector usingBlock:(id)block
{
  v17 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (objc_opt_respondsToSelector())
  {
    blockCopy[2](blockCopy, self);
  }

  if ([(NSHashTable *)self->_observers count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v7 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(allObjects);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            blockCopy[2](blockCopy, v11);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [allObjects countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (CGRect)_validatedSourceContentFrame:(CGRect)frame withinSourceView:(id)view withSourceFinalScale:(double)scale
{
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v35 = *MEMORY[0x277D85DE8];
  self->_sourceContentFrameWasAltered = 0;
  if (scale > 1.0 && self->_direction == 0)
  {
    aRect = frame.size.height;
    viewCopy = view;
    [viewCopy bounds];
    v10 = v15;
    [viewCopy bounds];
    v17 = v16;

    v19 = self->_targetFinalFrame.size.width;
    height = self->_targetFinalFrame.size.height;
    v9 = floor(v10 * (height / v19));
    if (v9 <= v17)
    {
      v12 = 0.0;
      v11 = 0.0;
    }

    else
    {
      v20 = floor(v17 * (v19 / height));
      v12 = (v10 - v20) * 0.5;
      v11 = 0.0;
      v10 = v20;
      v9 = v17;
    }

    self->_sourceContentFrameWasAltered = 1;
    v21 = SBLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v36.origin.x = x;
      v36.origin.y = y;
      v36.size.width = width;
      v36.size.height = aRect;
      v22 = NSStringFromRect(v36);
      v37.origin.x = v12;
      v37.origin.y = 0.0;
      v37.size.width = v10;
      v37.size.height = v9;
      v23 = NSStringFromRect(v37);
      *buf = 134218498;
      selfCopy = self;
      v31 = 2114;
      v32 = v22;
      v33 = 2114;
      v34 = v23;
      _os_log_impl(&dword_21ED4E000, v21, OS_LOG_TYPE_DEFAULT, "[Layout][Morph Animator][%p] Altering sourceContentFrame{%{public}@} to {%{public}@}", buf, 0x20u);
    }
  }

  else
  {
    v9 = frame.size.height;
    v10 = frame.size.width;
    v11 = frame.origin.y;
    v12 = frame.origin.x;
  }

  v24 = v12;
  v25 = v11;
  v26 = v10;
  v27 = v9;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (CGRect)_sourceContentContainerFrameForSourceView:(id)view withTargetDataSource:(id)source
{
  if (source)
  {
    [source sourceContentContainerFrameForAnimator:self];
    return CGRectInset(v4, -1.0, -1.0);
  }

  else
  {
    return **&MEMORY[0x277CBF398];
  }
}

- (double)_sourceFinalScaleWithContentFrame:(CGRect)frame targetFinalFrame:(CGRect)finalFrame
{
  height = finalFrame.size.height;
  width = finalFrame.size.width;
  rect = finalFrame.origin.y;
  x = finalFrame.origin.x;
  v7 = frame.size.height;
  v8 = frame.size.width;
  y = frame.origin.y;
  v10 = frame.origin.x;
  v11 = 0.0;
  if (!CGRectIsNull(frame))
  {
    v14.origin.x = x;
    v14.origin.y = rect;
    v14.size.width = width;
    v14.size.height = height;
    if (!CGRectIsNull(v14))
    {
      v15.origin.x = v10;
      v15.origin.y = y;
      v15.size.width = v8;
      v15.size.height = v7;
      if (!CGRectIsEmpty(v15))
      {
        if (width / v8 >= height / v7)
        {
          return height / v7;
        }

        else
        {
          return width / v8;
        }
      }
    }
  }

  return v11;
}

- (CGPoint)_source:(id)_source finalCenterWithFinalScale:(double)scale contentFrame:(CGRect)frame targetFinalFrame:(CGRect)finalFrame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v43 = *MEMORY[0x277D85DE8];
  _sourceCopy = _source;
  v13 = *MEMORY[0x277CBF348];
  v14 = *(MEMORY[0x277CBF348] + 8);
  if (_sourceCopy)
  {
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    if (!CGRectIsNull(v47) && !CGRectIsNull(finalFrame))
    {
      UIRectGetCenter();
      v16 = v15;
      v32 = v17;
      [_sourceCopy bounds];
      UIRectGetCenter();
      v19 = v18;
      v21 = v20;
      UIRectGetCenter();
      v31 = v19;
      v13 = v16 + (v19 - v22) * scale;
      v14 = v32 + (v21 - v23) * scale;
      v24 = SBLogPIP();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v27 = NSStringFromCGRect(finalFrame);
        v44.y = v21;
        v44.x = v31;
        v28 = NSStringFromCGPoint(v44);
        v48.origin.x = x;
        v48.origin.y = y;
        v48.size.width = width;
        v48.size.height = height;
        v29 = NSStringFromCGRect(v48);
        v45.x = v13;
        v45.y = v14;
        v30 = NSStringFromCGPoint(v45);
        *buf = 134219010;
        selfCopy = self;
        v35 = 2114;
        v36 = v27;
        v37 = 2114;
        v38 = v28;
        v39 = 2114;
        v40 = v29;
        v41 = 2114;
        v42 = v30;
        _os_log_debug_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEBUG, "[Layout][Morph Animator][%p] finalCenterWithFinalScale finalFrame[%{public}@] containerCenter[%{public}@] contentFrame:[%{public}@] sourceFinalCenter[%{public}@]", buf, 0x34u);
      }
    }
  }

  v25 = v13;
  v26 = v14;
  result.y = v26;
  result.x = v25;
  return result;
}

- (CGRect)_targetSourcePinningFrameWithSourceContentFrame:(CGRect)frame targetFinalFrame:(CGRect)finalFrame
{
  height = finalFrame.size.height;
  width = finalFrame.size.width;
  y = finalFrame.origin.y;
  x = finalFrame.origin.x;
  v22 = frame.size.width;
  v23 = frame.size.height;
  if (!CGRectIsNull(frame))
  {
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    if (!CGRectIsNull(v26))
    {
      if (v22 / width >= v23 / height)
      {
        v8 = v22 / width;
      }

      else
      {
        v8 = v23 / height;
      }

      BSRectWithSize();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v17 = *(MEMORY[0x277CBF2C0] + 16);
      *&v24.a = *MEMORY[0x277CBF2C0];
      *&v24.c = v17;
      *&v24.tx = *(MEMORY[0x277CBF2C0] + 32);
      CGAffineTransformScale(&v25, &v24, v8, v8);
      v27.origin.x = v10;
      v27.origin.y = v12;
      v27.size.width = v14;
      v27.size.height = v16;
      CGRectApplyAffineTransform(v27, &v25);
      UIRectGetCenter();
      UIRectCenteredAboutPoint();
    }
  }

  SBScreenScale();
  BSRectRoundForScale();
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)_targetInitialClippingBoundsWithSourceContentFrame:(CGRect)frame sourceFinalScale:(double)scale targetViewBounds:(CGRect)bounds
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (!CGRectIsNull(bounds))
  {
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    IsNull = CGRectIsNull(v18);
    if (scale > 0.0 && !IsNull)
    {
      v11 = *(MEMORY[0x277CBF2C0] + 16);
      *&v16.a = *MEMORY[0x277CBF2C0];
      *&v16.c = v11;
      *&v16.tx = *(MEMORY[0x277CBF2C0] + 32);
      CGAffineTransformScale(&v17, &v16, scale, scale);
      v19.origin.x = x;
      v19.origin.y = y;
      v19.size.width = width;
      v19.size.height = height;
      CGRectApplyAffineTransform(v19, &v17);
    }
  }

  SBScreenScale();
  BSRectRoundForScale();
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)startTargetAnimations:(unint64_t)animations
{
  invalidated = self->_invalidated;
  if (!invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_sourceView);
    v7 = objc_loadWeakRetained(&self->_targetView);
    v8 = objc_loadWeakRetained(&self->_targetContentView);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v18 = __45__SBViewMorphAnimator_startTargetAnimations___block_invoke;
    v19 = &unk_2783B8358;
    selfCopy = self;
    v9 = WeakRetained;
    v21 = v9;
    v10 = v7;
    v22 = v10;
    v11 = v8;
    v23 = v11;
    v12 = v17;
    if (animations)
    {
      v13 = 0;
      v24 = 0;
      v14 = vcnt_s8(animations);
      v14.i16[0] = vaddlv_u8(v14);
      v15 = v14.i32[0];
      do
      {
        if (((1 << v13) & animations) != 0)
        {
          (v18)(v12);
          if (v24)
          {
            break;
          }

          --v15;
        }

        if (v13 > 0x3E)
        {
          break;
        }

        ++v13;
      }

      while (v15 > 0);
    }
  }

  return !invalidated;
}

void __45__SBViewMorphAnimator_startTargetAnimations___block_invoke(id *a1, uint64_t a2)
{
  v90[4] = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  if ((a2 & ~v3[15]) == 0)
  {
    return;
  }

  v5 = [v3 _isReversed];
  if (a2 != 2)
  {
    if (a2 != 1)
    {
      return;
    }

    if (!a1[5] || !a1[6] || !a1[7] || CGRectIsNull(*(a1[4] + 368)) || CGRectIsNull(*(a1[4] + 272)))
    {
      v6 = SBLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1[4];
        v8 = NSStringFromRect(*(v7 + 368));
        v9 = NSStringFromRect(*(a1[4] + 272));
        v10 = a1[5];
        v11 = a1[6];
        v12 = a1[7];
        *buf = 134219266;
        *&buf[4] = v7;
        v80 = 2112;
        v81 = v8;
        v82 = 2112;
        v83 = v9;
        v84 = 2048;
        v85 = v10;
        v86 = 2048;
        v87 = v11;
        v88 = 2048;
        v89 = v12;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[Morph Animator][%p] Interrupting morph animator since match move was requested to start with invalid frames _sourceContentFrame{%@} _targetFinalFrame{%@} or missing views: sourceView(%p) targetView(%p) targetContentView(%p)", buf, 0x3Eu);
      }

      [a1[4] interrupt:0];
      return;
    }

    [a1[6] layoutIfNeeded];
    [a1[6] bounds];
    v70 = v26;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    [MEMORY[0x277CD9FF0] begin];
    [MEMORY[0x277CD9FF0] setDisableActions:1];
    v33 = a1[4];
    v34 = v33[30];
    v35 = v33[31];
    v36 = v33[32];
    v37 = v33[33];
    v14 = objc_alloc_init(MEMORY[0x277CD9EE8]);
    v38 = [a1[5] layer];
    [v14 setSourceLayer:v38];

    v39 = MEMORY[0x277CCAE60];
    v92.origin.x = v34;
    v92.origin.y = v35;
    v92.size.width = v36;
    v92.size.height = v37;
    MinX = CGRectGetMinX(v92);
    v93.origin.x = v34;
    v93.origin.y = v35;
    v93.size.width = v36;
    v93.size.height = v37;
    v41 = [v39 valueWithCGPoint:{MinX, CGRectGetMinY(v93)}];
    v90[0] = v41;
    v42 = MEMORY[0x277CCAE60];
    v94.origin.x = v34;
    v94.origin.y = v35;
    v94.size.width = v36;
    v94.size.height = v37;
    MaxX = CGRectGetMaxX(v94);
    v95.origin.x = v34;
    v95.origin.y = v35;
    v95.size.width = v36;
    v95.size.height = v37;
    v44 = [v42 valueWithCGPoint:{MaxX, CGRectGetMinY(v95)}];
    v90[1] = v44;
    v45 = MEMORY[0x277CCAE60];
    v96.origin.x = v34;
    v96.origin.y = v35;
    v96.size.width = v36;
    v96.size.height = v37;
    v46 = CGRectGetMaxX(v96);
    v97.origin.x = v34;
    v97.origin.y = v35;
    v97.size.width = v36;
    v97.size.height = v37;
    v47 = [v45 valueWithCGPoint:{v46, CGRectGetMaxY(v97)}];
    v90[2] = v47;
    v48 = MEMORY[0x277CCAE60];
    v98.origin.x = v34;
    v98.origin.y = v35;
    v98.size.width = v36;
    v98.size.height = v37;
    v49 = CGRectGetMinX(v98);
    v99.origin.x = v34;
    v99.origin.y = v35;
    v99.size.width = v36;
    v99.size.height = v37;
    v50 = [v48 valueWithCGPoint:{v49, CGRectGetMaxY(v99)}];
    v90[3] = v50;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:4];
    [v14 setSourcePoints:v51];

    [v14 setDuration:INFINITY];
    v52 = [a1[6] layer];
    [v52 addAnimation:v14 forKey:@"SBMorphAnimatorLayerMatchMoveAnimationKey"];

    [a1[4] _startMorphAnimationTimeoutTimer];
    [a1[7] layoutIfNeeded];
    v53 = a1[4];
    [a1[7] frame];
    v53[38] = v54;
    v53[39] = v55;
    v53[40] = v56;
    v53[41] = v57;
    v58 = [[SBViewMorphAnimatorContentClippingView alloc] initWithFrame:*(a1[4] + 38), *(a1[4] + 39), *(a1[4] + 40), *(a1[4] + 41)];
    v59 = a1[4];
    v60 = v59[26];
    v59[26] = v58;

    v61 = [a1[7] superview];
    [v61 insertSubview:*(a1[4] + 26) belowSubview:a1[7]];

    v62 = a1[7];
    [*(a1[4] + 26) bounds];
    [v62 setFrame:?];
    [*(a1[4] + 26) addSubview:a1[7]];
    [*(a1[4] + 26) setClipsToBounds:1];
    v63 = a1[4];
    if (v5)
    {
      v64 = *(v63 + 19);
      [*(v63 + 26) _setContinuousCornerRadius:v64];
      [a1[7] _setContinuousCornerRadius:v64];
      v65 = [*(a1[4] + 26) layer];
      BSRectWithSize();
      [v65 setBounds:?];
    }

    else
    {
      v66 = [v63 _isTargetSourcePinningFrameEquivalentToSourceViewFrame];
      v67 = a1[4];
      v68 = 0.0;
      if (v66)
      {
        v68 = *(v67 + 27) * *(v67 + 18);
      }

      [*(v67 + 26) _setContinuousCornerRadius:v68];
      [a1[7] _setContinuousCornerRadius:v68];
      v69 = a1[4];
      [v69 _targetInitialClippingBoundsWithSourceContentFrame:v69[46] sourceFinalScale:v69[47] targetViewBounds:{v69[48], v69[49], v69[18], v70, v28, v30, v32}];
      [*(a1[4] + 26) setBounds:?];
    }

    [MEMORY[0x277CD9FF0] commit];
    [a1[4] noteTargetAnimationsWillStart:1];
LABEL_28:

    return;
  }

  v13 = a1[4];
  if (v13[26])
  {
    v78 = 0.0;
    *buf = 0;
    if (SBReduceMotion())
    {
      v14 = 0;
    }

    else
    {
      v15 = *(a1[4] + 10);
      v14 = v15;
      if (v15)
      {
        [v15 dampingRatio];
        [v14 response];
        convertDampingRatioAndResponseToTensionAndFriction();
        v16 = MEMORY[0x277CF0CF0];
        v17 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
        v18 = [v16 settingsWithMass:v17 stiffness:1.0 damping:*buf timingFunction:v78];

LABEL_21:
        v19 = a1[4];
        if (v5)
        {
          v20 = [v19 _isTargetSourcePinningFrameEquivalentToSourceViewFrame];
          v19 = a1[4];
          v21 = 0.0;
          if (v20)
          {
            v21 = v19[27] * v19[18];
          }
        }

        else
        {
          v21 = v19[19];
        }

        v22 = 1.0;
        if (*(v19 + 13))
        {
          v22 = 0.0;
        }

        [a1[7] setAlpha:v22];
        v23 = MEMORY[0x277CF0D38];
        v72[0] = MEMORY[0x277D85DD0];
        v72[1] = 3221225472;
        v72[2] = __45__SBViewMorphAnimator_startTargetAnimations___block_invoke_44;
        v72[3] = &unk_2783AB438;
        v24 = a1[7];
        v77 = v5;
        v25 = a1[4];
        v73 = v24;
        v74 = v25;
        v75 = a1[6];
        v76 = v21;
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = __45__SBViewMorphAnimator_startTargetAnimations___block_invoke_2;
        v71[3] = &unk_2783A9398;
        v71[4] = a1[4];
        [v23 animateWithSettings:v18 actions:v72 completion:v71];
        [a1[4] noteTargetAnimationsWillStart:2];

        goto LABEL_28;
      }
    }

    v18 = 0;
    goto LABEL_21;
  }

  [v13 noteTargetAnimationsDidEnd:2 finished:0 continueBlock:0];
}

uint64_t __45__SBViewMorphAnimator_startTargetAnimations___block_invoke_44(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);
  if (*(a1 + 64))
  {
    v26 = CGRectIntersection(*(v2 + 368), *(v2 + 336));
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    v7 = *(*(a1 + 40) + 144);
    [*(a1 + 48) bounds];
    [v2 _targetInitialClippingBoundsWithSourceContentFrame:x sourceFinalScale:y targetViewBounds:{width, height, v7, v8, v9, v10, v11}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [*(*(a1 + 40) + 208) layer];
    [v20 setBounds:{v13, v15, v17, v19}];
  }

  else
  {
    v21 = *(v2 + 208);
    BSRectWithSize();
    [v21 setBounds:?];
  }

  [*(*(a1 + 40) + 208) _setContinuousCornerRadius:*(a1 + 56)];
  v22 = *(a1 + 32);
  v23 = *(a1 + 56);

  return [v22 _setContinuousCornerRadius:v23];
}

- (void)_startMorphAnimationTimeoutTimer
{
  [(BSAbsoluteMachTimer *)self->_morphAnimationTimeout invalidate];
  morphAnimationTimeout = self->_morphAnimationTimeout;
  self->_morphAnimationTimeout = 0;

  v4 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"morphAnimationTimeout"];
  v5 = self->_morphAnimationTimeout;
  self->_morphAnimationTimeout = v4;

  objc_initWeak(&location, self);
  v6 = self->_morphAnimationTimeout;
  if ([(SBViewMorphAnimator *)self _isReversed])
  {
    UIAnimationDragCoefficient();
    v8 = v7 * 1.5;
  }

  else
  {
    UIAnimationDragCoefficient();
    v8 = v9;
  }

  v10 = MEMORY[0x277D85CD0];
  v11 = MEMORY[0x277D85CD0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__SBViewMorphAnimator__startMorphAnimationTimeoutTimer__block_invoke;
  v12[3] = &unk_2783A9918;
  objc_copyWeak(&v13, &location);
  [(BSAbsoluteMachTimer *)v6 scheduleWithFireInterval:v10 leewayInterval:v12 queue:v8 handler:0.0];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __55__SBViewMorphAnimator__startMorphAnimationTimeoutTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained interrupt:0];
    [v3[23] invalidate];
    v2 = v3[23];
    v3[23] = 0;

    WeakRetained = v3;
  }
}

- (void)willStartSourceAnimations:(unint64_t)animations
{
  if (!self->_allAnimationsTimeoutTimer)
  {
    if ([(SBViewMorphAnimator *)self _isReversed])
    {
      v5 = [[SBViewMorphAnimatorContentBlackCurtainView alloc] initWithFrame:self->_sourceContentContainerFrame.origin.x, self->_sourceContentContainerFrame.origin.y, self->_sourceContentContainerFrame.size.width, self->_sourceContentContainerFrame.size.height];
      sourceBlackCurtainView = self->_sourceBlackCurtainView;
      self->_sourceBlackCurtainView = v5;

      v7 = self->_sourceBlackCurtainView;
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(SBViewMorphAnimatorContentBlackCurtainView *)v7 setBackgroundColor:blackColor];

      v9 = self->_sourceBlackCurtainView;
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      [WeakRetained sourceBlackCurtainCornerRadiusForAnimator:self];
      [(SBViewMorphAnimatorContentBlackCurtainView *)v9 _setContinuousCornerRadius:?];

      v11 = objc_loadWeakRetained(&self->_sourceView);
      [v11 addSubview:self->_sourceBlackCurtainView];
    }

    objc_initWeak(&location, self);
    v12 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"allAnimationsTimeout"];
    allAnimationsTimeoutTimer = self->_allAnimationsTimeoutTimer;
    self->_allAnimationsTimeoutTimer = v12;

    v14 = self->_allAnimationsTimeoutTimer;
    if (self->_direction)
    {
      UIAnimationDragCoefficient();
      v16 = 2.0;
    }

    else
    {
      UIAnimationDragCoefficient();
      v16 = 1.5;
    }

    v17 = v16 * v15;
    v18 = MEMORY[0x277D85CD0];
    v19 = MEMORY[0x277D85CD0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __49__SBViewMorphAnimator_willStartSourceAnimations___block_invoke;
    v21[3] = &unk_2783A9918;
    objc_copyWeak(&v22, &location);
    [(BSAbsoluteMachTimer *)v14 scheduleWithFireInterval:v18 leewayInterval:v21 queue:v17 handler:0.0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  startedSourceAnimations = self->_startedSourceAnimations;
  self->_startedSourceAnimations = startedSourceAnimations | animations;
  if ((startedSourceAnimations | animations) != startedSourceAnimations)
  {
    [(SBViewMorphAnimator *)self _checkAnimationsDependencies:0];
  }
}

void __49__SBViewMorphAnimator_willStartSourceAnimations___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained interrupt:0];
    [v3[22] invalidate];
    v2 = v3[22];
    v3[22] = 0;

    WeakRetained = v3;
  }
}

- (void)didEndSourceAnimations:(unint64_t)animations finished:(BOOL)finished continueBlock:(id)block
{
  finishedCopy = finished;
  blockCopy = block;
  if (finishedCopy)
  {
    completedSourceAnimations = self->_completedSourceAnimations;
    self->_completedSourceAnimations = completedSourceAnimations | animations;
    if ((completedSourceAnimations | animations) == completedSourceAnimations)
    {
      goto LABEL_6;
    }

    v10 = blockCopy;
    [(SBViewMorphAnimator *)self _checkAnimationsDependencies:blockCopy];
  }

  else
  {
    v10 = blockCopy;
    [(SBViewMorphAnimator *)self interrupt:blockCopy];
  }

  blockCopy = v10;
LABEL_6:
}

- (void)willStartTargetAnimations:(unint64_t)animations
{
  startedTargetAnimations = self->_startedTargetAnimations;
  self->_startedTargetAnimations = startedTargetAnimations | animations;
  if ((startedTargetAnimations | animations) != startedTargetAnimations)
  {
    [(SBViewMorphAnimator *)self _checkAnimationsDependencies:0];
  }
}

- (void)didEndTargetAnimations:(unint64_t)animations finished:(BOOL)finished continueBlock:(id)block
{
  finishedCopy = finished;
  blockCopy = block;
  if (finishedCopy)
  {
    completedTargetAnimations = self->_completedTargetAnimations;
    self->_completedTargetAnimations = completedTargetAnimations | animations;
    if ((completedTargetAnimations | animations) == completedTargetAnimations)
    {
      goto LABEL_6;
    }

    v10 = blockCopy;
    [(SBViewMorphAnimator *)self _checkAnimationsDependencies:blockCopy];
  }

  else
  {
    v10 = blockCopy;
    [(SBViewMorphAnimator *)self interrupt:blockCopy];
  }

  blockCopy = v10;
LABEL_6:
}

- (void)_removeMatchMoveAnimation
{
  [(SBViewMorphAnimator *)self _removeTargetClippingView];
  WeakRetained = objc_loadWeakRetained(&self->_targetView);
  layer = [WeakRetained layer];
  v4 = [layer animationForKey:@"SBMorphAnimatorLayerMatchMoveAnimationKey"];

  if (v4)
  {
    if (self->_direction)
    {
      v5 = objc_loadWeakRetained(&self->_sourceView);
      [v5 frame];
      [(SBViewMorphAnimator *)self noteWillRemoveTargeMatchMoveAnimationAtFrame:self->_targetSourcePinningFrame.origin.x withinSourceFrame:self->_targetSourcePinningFrame.origin.y, self->_targetSourcePinningFrame.size.width, self->_targetSourcePinningFrame.size.height, v6, v7, v8, v9];

      layer2 = [WeakRetained layer];
      [layer2 removeAnimationForKey:@"SBMorphAnimatorLayerMatchMoveAnimationKey"];

      [(BSAbsoluteMachTimer *)self->_morphAnimationTimeout invalidate];
      morphAnimationTimeout = self->_morphAnimationTimeout;
      self->_morphAnimationTimeout = 0;
    }

    else
    {
      morphAnimationTimeout = [WeakRetained layer];
      [morphAnimationTimeout removeAnimationForKey:@"SBMorphAnimatorLayerMatchMoveAnimationKey"];
    }
  }
}

- (void)_checkAnimationsDependencies:(id)dependencies
{
  v66 = *MEMORY[0x277D85DE8];
  dependenciesCopy = dependencies;
  v5 = dependenciesCopy;
  if (self->_invalidated)
  {
    if (dependenciesCopy)
    {
      dependenciesCopy[2](dependenciesCopy);
    }

    goto LABEL_61;
  }

  WeakRetained = objc_loadWeakRetained(&self->_targetView);
  _isReversed = [(SBViewMorphAnimator *)self _isReversed];
  startedSourceAnimations = self->_startedSourceAnimations;
  completedSourceAnimations = self->_completedSourceAnimations;
  completedTargetAnimations = self->_completedTargetAnimations;
  v46 = completedSourceAnimations & 0xF;
  startedTargetAnimations = self->_startedTargetAnimations;
  v10 = v46 == 15;
  v11 = SBLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = SBViewMorphAnimatorCompletedSourceAnimationsDescription(self->_startedSourceAnimations);
    SBViewMorphAnimatorCompletedTargetAnimationsDescription(self->_startedTargetAnimations);
    v43 = WeakRetained;
    v13 = v44 = v5;
    SBViewMorphAnimatorCompletedSourceAnimationsDescription(self->_completedSourceAnimations);
    completedTargetAnimations = v14 = completedTargetAnimations;
    v15 = SBViewMorphAnimatorCompletedTargetAnimationsDescription(self->_completedTargetAnimations);
    *buf = 134219010;
    selfCopy7 = self;
    v58 = 2114;
    v59 = v12;
    v60 = 2114;
    v61 = v13;
    v62 = 2114;
    v63 = completedTargetAnimations;
    v64 = 2114;
    v65 = v15;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "[Morph Animator][%p] dependency check: startedSourceAnimations(%{public}@) startedTargetAnimations(%{public}@) completedSourceAnimations(%{public}@) completedTargetAnimations(%{public}@)", buf, 0x34u);

    LOBYTE(completedTargetAnimations) = v14;
    WeakRetained = v43;
    v10 = (completedSourceAnimations & 0xF) == 15;
  }

  v16 = completedTargetAnimations & 7;

  if (!_isReversed)
  {
    v31 = startedTargetAnimations;
    if (self->_automaticallyStartTargetAnimations && (startedTargetAnimations & 3) == 1)
    {
      v32 = *MEMORY[0x277D76620];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __52__SBViewMorphAnimator__checkAnimationsDependencies___block_invoke;
      v55[3] = &unk_2783A8C18;
      v55[4] = self;
      [v32 _performBlockAfterCATransactionCommits:v55];
    }

    if (startedSourceAnimations & 4) != 0 && (completedSourceAnimations & 4) != 0 && (startedTargetAnimations)
    {
      v33 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        [v33 hideSourceViewForAnimator:self];
        v34 = SBLogCommon();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          selfCopy7 = self;
          _os_log_impl(&dword_21ED4E000, v34, OS_LOG_TYPE_DEFAULT, "[Morph Animator][%p] Hiding source view since source clip ended and match move started.", buf, 0xCu);
        }

        v31 = startedTargetAnimations;
      }
    }

    v29 = 0;
    if (v46 == 15 && (completedTargetAnimations & 1) == 0)
    {
      if (v31)
      {
        [(SBViewMorphAnimator *)self _continueSourceAnimationsCompletionPendingBlock];
        [(SBViewMorphAnimator *)self _removeMatchMoveAnimation];
        v38 = *MEMORY[0x277D76620];
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __52__SBViewMorphAnimator__checkAnimationsDependencies___block_invoke_58;
        v54[3] = &unk_2783A8C18;
        v54[4] = self;
        [v38 _performBlockAfterCATransactionCommits:v54];
        v39 = SBLogCommon();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          selfCopy7 = self;
          _os_log_impl(&dword_21ED4E000, v39, OS_LOG_TYPE_DEFAULT, "[Morph Animator][%p] Removed target match move since all source animations ended and match move was started.", buf, 0xCu);
        }

        v29 = 0;
      }

      else
      {
        v29 = 0;
        if (v5 && !self->_sourceAllEnded)
        {
          if (self->_sourceAllAnimationsCompletionBlock)
          {
            [SBViewMorphAnimator _checkAnimationsDependencies:];
          }

          if (self->_direction)
          {
            [SBViewMorphAnimator _checkAnimationsDependencies:];
          }

          v35 = SBLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            selfCopy7 = self;
            _os_log_impl(&dword_21ED4E000, v35, OS_LOG_TYPE_DEFAULT, "[Morph Animator][%p] Waiting for target match move animation to start before calling source scale and position ended continuation block.", buf, 0xCu);
          }

          [(SBViewMorphAnimator *)self setSourceAllAnimationsCompletionBlock:v5];
          v29 = 1;
        }
      }

      self->_sourceAllEnded = v10;
    }

    if (v16 != 7)
    {
      goto LABEL_57;
    }

    v36 = *MEMORY[0x277D76620];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __52__SBViewMorphAnimator__checkAnimationsDependencies___block_invoke_65;
    v52[3] = &unk_2783A9F58;
    v52[4] = self;
    v53 = v10;
    v37 = v52;
    goto LABEL_56;
  }

  v17 = startedTargetAnimations;
  if ((startedTargetAnimations & 3) == 1)
  {
    v18 = *MEMORY[0x277D76620];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __52__SBViewMorphAnimator__checkAnimationsDependencies___block_invoke_2;
    v51[3] = &unk_2783A8C18;
    v51[4] = self;
    [v18 _performBlockAfterCATransactionCommits:v51];
  }

  if (v46 == 15)
  {
    if (self->_sourceBlackCurtainView)
    {
      superview = [WeakRetained superview];
      superview2 = [(SBViewMorphAnimatorContentBlackCurtainView *)self->_sourceBlackCurtainView superview];
      [(SBViewMorphAnimatorContentBlackCurtainView *)self->_sourceBlackCurtainView frame];
      [superview2 convertRect:superview toView:?];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v17 = startedTargetAnimations;
      [superview insertSubview:self->_sourceBlackCurtainView belowSubview:WeakRetained];
      [(SBViewMorphAnimatorContentBlackCurtainView *)self->_sourceBlackCurtainView setFrame:v22, v24, v26, v28];
    }

    if ((completedTargetAnimations & 1) == 0)
    {
      if (v17)
      {
        if ((completedTargetAnimations & 4) != 0)
        {
          [(SBViewMorphAnimator *)self _continueSourceAnimationsCompletionPendingBlock];
          v29 = 0;
        }

        else
        {
          v29 = 0;
          if (v5 && !self->_sourceAllEnded)
          {
            if (self->_sourceAllAnimationsCompletionBlock)
            {
              [SBViewMorphAnimator _checkAnimationsDependencies:];
            }

            if (self->_direction != 1)
            {
              [SBViewMorphAnimator _checkAnimationsDependencies:];
            }

            v40 = SBLogCommon();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              selfCopy7 = self;
              _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_DEFAULT, "[Morph Animator][%p] Waiting for target external placeholder animations to complete before calling source scale and position ended continuation block.", buf, 0xCu);
            }

            [(SBViewMorphAnimator *)self setSourceAllAnimationsCompletionBlock:v5];
            v29 = 1;
          }
        }

        [(SBViewMorphAnimator *)self _removeMatchMoveAnimation:v43];
        v41 = *MEMORY[0x277D76620];
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __52__SBViewMorphAnimator__checkAnimationsDependencies___block_invoke_69;
        v50[3] = &unk_2783A8C18;
        v50[4] = self;
        [v41 _performBlockAfterCATransactionCommits:v50];
        v42 = SBLogCommon();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          selfCopy7 = self;
          _os_log_impl(&dword_21ED4E000, v42, OS_LOG_TYPE_DEFAULT, "[Morph Animator][%p] Removed target match move since all source animations ended and match move was started.", buf, 0xCu);
        }
      }

      else
      {
        v29 = 0;
        if (v5 && !self->_sourceAllEnded)
        {
          if (self->_sourceAllAnimationsCompletionBlock)
          {
            [SBViewMorphAnimator _checkAnimationsDependencies:];
          }

          if (self->_direction != 1)
          {
            [SBViewMorphAnimator _checkAnimationsDependencies:];
          }

          v30 = SBLogCommon();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            selfCopy7 = self;
            _os_log_impl(&dword_21ED4E000, v30, OS_LOG_TYPE_DEFAULT, "[Morph Animator][%p] Waiting for target match move animation to start before calling source scale and position ended continuation block.", buf, 0xCu);
          }

          [(SBViewMorphAnimator *)self setSourceAllAnimationsCompletionBlock:v5];
          v29 = 1;
        }
      }

      self->_sourceAllEnded = v10;
      if ((completedTargetAnimations & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }
  }

  v29 = 0;
  if ((completedTargetAnimations & 4) != 0)
  {
LABEL_47:
    [(SBViewMorphAnimator *)self _continueSourceAnimationsCompletionPendingBlock:v43];
  }

LABEL_48:
  if (v16 != 7)
  {
    goto LABEL_57;
  }

  v36 = *MEMORY[0x277D76620];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __52__SBViewMorphAnimator__checkAnimationsDependencies___block_invoke_70;
  v48[3] = &unk_2783A9F58;
  v48[4] = self;
  v49 = v10;
  v37 = v48;
LABEL_56:
  [v36 _performBlockAfterCATransactionCommits:{v37, v43, v44}];
LABEL_57:
  if (v5 && (v29 & 1) == 0)
  {
    v5[2](v5);
  }

LABEL_61:
}

uint64_t __52__SBViewMorphAnimator__checkAnimationsDependencies___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[Morph Animator][%p] Auto starting target unclip since target match move started.", &v5, 0xCu);
  }

  return [*(a1 + 32) startTargetAnimations:2];
}

uint64_t __52__SBViewMorphAnimator__checkAnimationsDependencies___block_invoke_65(uint64_t a1)
{
  result = [*(a1 + 32) _removeMatchMoveAnimation];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _noteDidEndAllAnimations];
  }

  return result;
}

uint64_t __52__SBViewMorphAnimator__checkAnimationsDependencies___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "[Morph Animator][%p] Auto starting target unclip since target match move started.", &v5, 0xCu);
  }

  return [*(a1 + 32) startTargetAnimations:2];
}

uint64_t __52__SBViewMorphAnimator__checkAnimationsDependencies___block_invoke_70(uint64_t a1)
{
  result = [*(a1 + 32) _removeMatchMoveAnimation];
  if (*(a1 + 40) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _noteDidEndAllAnimations];
  }

  return result;
}

- (void)setSourceAllAnimationsCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = MEMORY[0x223D6F7F0]();
  sourceAllAnimationsCompletionBlock = self->_sourceAllAnimationsCompletionBlock;
  self->_sourceAllAnimationsCompletionBlock = v5;

  direction = self->_direction;
  UIAnimationDragCoefficient();
  v9 = v8;
  if (direction)
  {
    v10 = 1.5;
  }

  else
  {
    v10 = 0.1;
  }

  objc_initWeak(&location, self);
  v11 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"sourceAnimationsCompletionTimeout"];
  sourceAnimationsCompletionContinueBlockTimeoutTimer = self->_sourceAnimationsCompletionContinueBlockTimeoutTimer;
  self->_sourceAnimationsCompletionContinueBlockTimeoutTimer = v11;

  v13 = self->_sourceAnimationsCompletionContinueBlockTimeoutTimer;
  v14 = MEMORY[0x277D85CD0];
  v15 = MEMORY[0x277D85CD0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __61__SBViewMorphAnimator_setSourceAllAnimationsCompletionBlock___block_invoke;
  v16[3] = &unk_2783A9918;
  objc_copyWeak(&v17, &location);
  [(BSAbsoluteMachTimer *)v13 scheduleWithFireInterval:v14 leewayInterval:v16 queue:v10 * v9 handler:0.0];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __61__SBViewMorphAnimator_setSourceAllAnimationsCompletionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[24] invalidate];
    v2 = v3[24];
    v3[24] = 0;

    [v3 _handleHandoffTimeout];
    WeakRetained = v3;
  }
}

- (void)_continueSourceAnimationsCompletionPendingBlock
{
  sourceAnimationsCompletionContinueBlockTimeoutTimer = self->_sourceAnimationsCompletionContinueBlockTimeoutTimer;
  if (sourceAnimationsCompletionContinueBlockTimeoutTimer)
  {
    [(BSAbsoluteMachTimer *)sourceAnimationsCompletionContinueBlockTimeoutTimer invalidate];
    v4 = self->_sourceAnimationsCompletionContinueBlockTimeoutTimer;
    self->_sourceAnimationsCompletionContinueBlockTimeoutTimer = 0;
  }

  sourceAllAnimationsCompletionBlock = self->_sourceAllAnimationsCompletionBlock;
  if (sourceAllAnimationsCompletionBlock)
  {
    sourceAllAnimationsCompletionBlock[2](sourceAllAnimationsCompletionBlock, a2);
    v6 = self->_sourceAllAnimationsCompletionBlock;
    self->_sourceAllAnimationsCompletionBlock = 0;
  }
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (UIView)targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  return WeakRetained;
}

- (UIView)targetContentView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetContentView);

  return WeakRetained;
}

- (SBWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (SBViewMorphAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SBViewMorphAnimatorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (CGPoint)sourceFinalCenter
{
  x = self->_sourceFinalCenter.x;
  y = self->_sourceFinalCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)targetSourcePinningFrame
{
  x = self->_targetSourcePinningFrame.origin.x;
  y = self->_targetSourcePinningFrame.origin.y;
  width = self->_targetSourcePinningFrame.size.width;
  height = self->_targetSourcePinningFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)targetFinalFrame
{
  x = self->_targetFinalFrame.origin.x;
  y = self->_targetFinalFrame.origin.y;
  width = self->_targetFinalFrame.size.width;
  height = self->_targetFinalFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)targetContentClippingViewInitialFrame
{
  x = self->_targetContentClippingViewInitialFrame.origin.x;
  y = self->_targetContentClippingViewInitialFrame.origin.y;
  width = self->_targetContentClippingViewInitialFrame.size.width;
  height = self->_targetContentClippingViewInitialFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)sourceContentContainerFrame
{
  x = self->_sourceContentContainerFrame.origin.x;
  y = self->_sourceContentContainerFrame.origin.y;
  width = self->_sourceContentContainerFrame.size.width;
  height = self->_sourceContentContainerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)sourceContentFrame
{
  x = self->_sourceContentFrame.origin.x;
  y = self->_sourceContentFrame.origin.y;
  width = self->_sourceContentFrame.size.width;
  height = self->_sourceContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_checkAnimationsDependencies:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_checkAnimationsDependencies:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_checkAnimationsDependencies:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_checkAnimationsDependencies:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_checkAnimationsDependencies:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_checkAnimationsDependencies:.cold.6()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end