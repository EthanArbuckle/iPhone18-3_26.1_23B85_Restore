@interface _UIPreviewInteractionClassicImpl
- (BOOL)_shouldCancelTransitionToState:(int64_t)state;
- (CGPoint)locationInCoordinateSpace:(id)space;
- (UIPreviewInteraction)previewInteraction;
- (UIPreviewInteractionDelegate)delegate;
- (UIView)view;
- (_UIPreviewInteractionClassicImpl)init;
- (_UIPreviewInteractionClassicImpl)initWithView:(id)view previewInteraction:(id)interaction;
- (void)_actuateFeedbackForStateIfNeeded:(int64_t)needed;
- (void)_dismissPreviewViewControllerIfNeeded;
- (void)_endContinuousEvaluation;
- (void)_endHighlightingIfNeeded;
- (void)_endInteractionIfNeeded;
- (void)_endInteractiveStateTransitions;
- (void)_endUsingFeedbackIfNeeded;
- (void)_endViewControllerPresentationObserving;
- (void)_prepareForInteractionIfNeeded;
- (void)_prepareForViewControllerPresentationObserving;
- (void)_prepareHighlighterIfNeeded;
- (void)_prepareUsingFeedback;
- (void)_prepareUsingFeedbackIfNeeded;
- (void)_presentPreviewViewControllerIfNeeded;
- (void)_resetAfterInteraction;
- (void)_startPreviewAtLocation:(CGPoint)location inCoordinateSpace:(id)space;
- (void)_turnOffFeedbackGenerator;
- (void)_turnOnFeedbackGenerator;
- (void)_updateFeedbackTowardNextState:(int64_t)state progress:(double)progress;
- (void)_updateForContinuousEvaluation:(id)evaluation;
- (void)_updateForCurrentTouchForceProvider;
- (void)_updateHighlighter:(double)highlighter;
- (void)_updateInteractionStateRecognizerForTouchForce:(double)force atTimestamp:(double)timestamp withCentroidAtLocation:(CGPoint)location;
- (void)cancelInteraction;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setDelegate:(id)delegate;
- (void)setTouchForceProvider:(id)provider;
@end

@implementation _UIPreviewInteractionClassicImpl

- (_UIPreviewInteractionClassicImpl)initWithView:(id)view previewInteraction:(id)interaction
{
  viewCopy = view;
  interactionCopy = interaction;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionClassicImpl.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  v14.receiver = self;
  v14.super_class = _UIPreviewInteractionClassicImpl;
  v9 = [(_UIPreviewInteractionClassicImpl *)&v14 init];
  v10 = v9;
  if (v9)
  {
    [(_UIPreviewInteractionClassicImpl *)v9 setPreviewInteraction:interactionCopy];
    objc_storeWeak(&v10->_view, viewCopy);
    v11 = v10;
  }

  return v10;
}

- (_UIPreviewInteractionClassicImpl)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(sel_initWithView_);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionClassicImpl.m" lineNumber:148 description:{@"Use %@ to instantiate an instance of %@.", v5, v7}];

  return 0;
}

- (void)dealloc
{
  [(_UIPreviewInteractionTouchForceProviding *)self->_touchForceProvider removeObserver:self forKeyPath:@"active"];
  v3.receiver = self;
  v3.super_class = _UIPreviewInteractionClassicImpl;
  [(_UIPreviewInteractionClassicImpl *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_delegate, delegateCopy);
    *&self->_previewInteractionFlags = *&self->_previewInteractionFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    *&self->_previewInteractionFlags = *&self->_previewInteractionFlags & 0xFFFD | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 4;
    }

    else
    {
      v7 = 0;
    }

    *&self->_previewInteractionFlags = *&self->_previewInteractionFlags & 0xFFFB | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    *&self->_previewInteractionFlags = *&self->_previewInteractionFlags & 0xFFF7 | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 16;
    }

    else
    {
      v9 = 0;
    }

    *&self->_previewInteractionFlags = *&self->_previewInteractionFlags & 0xFFEF | v9;
    v10 = objc_opt_respondsToSelector();
    previewInteractionFlags = self->_previewInteractionFlags;
    if (v10)
    {
      v12 = 32;
    }

    else
    {
      v12 = 0;
    }

    *&self->_previewInteractionFlags = previewInteractionFlags & 0xFFDF | v12;
    if ((previewInteractionFlags & 0x10) != 0)
    {
      objc_initWeak(&location, self);
      v17 = [_UIPreviewInteractionGestureRecognizerTouchForceProvider alloc];
      v18 = objc_loadWeakRetained(&self->_view);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __48___UIPreviewInteractionClassicImpl_setDelegate___block_invoke;
      v21[3] = &unk_1E711B750;
      objc_copyWeak(&v22, &location);
      v19 = [(_UIPreviewInteractionGestureRecognizerTouchForceProvider *)v17 initWithView:v18 configuration:v21];

      systemTouchForceProvider = self->_systemTouchForceProvider;
      self->_systemTouchForceProvider = v19;

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    else
    {
      v13 = [_UIPreviewInteractionCompatibilityTouchForceProvider alloc];
      v14 = objc_loadWeakRetained(&self->_view);
      v15 = [(_UIPreviewInteractionCompatibilityTouchForceProvider *)v13 initWithView:v14];
      v16 = self->_systemTouchForceProvider;
      self->_systemTouchForceProvider = v15;
    }

    if (!self->_touchForceProvider)
    {
      [(_UIPreviewInteractionClassicImpl *)self setTouchForceProvider:self->_systemTouchForceProvider];
    }
  }
}

- (CGPoint)locationInCoordinateSpace:(id)space
{
  touchForceProvider = self->_touchForceProvider;
  if (touchForceProvider)
  {
    [(_UIPreviewInteractionTouchForceProviding *)touchForceProvider locationInCoordinateSpace:space];
  }

  else
  {
    v4 = 1.79769313e308;
    v5 = 1.79769313e308;
  }

  result.y = v5;
  result.x = v4;
  return result;
}

- (void)cancelInteraction
{
  *&self->_previewInteractionFlags |= 0x200u;
  [(_UIPreviewInteractionClassicImpl *)self _endHighlightingIfNeeded];
  [(_UIPreviewInteractionClassicImpl *)self _dismissPreviewViewControllerIfNeeded];
  [(_UIPreviewInteractionTouchForceProviding *)self->_touchForceProvider cancelInteraction];

  [(_UIPreviewInteractionClassicImpl *)self _endInteractionIfNeeded];
}

- (void)_startPreviewAtLocation:(CGPoint)location inCoordinateSpace:(id)space
{
  y = location.y;
  x = location.x;
  *&self->_previewInteractionFlags |= 0xC000u;
  spaceCopy = space;
  v8 = [[_UIPreviewInteractionSimulatingTouchForceProvider alloc] initWithTouchForce:spaceCopy location:3.5 coordinateSpace:x, y];

  [(_UIPreviewInteractionClassicImpl *)self setTouchForceProvider:v8];
}

- (void)setTouchForceProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    providerCopy = self->_systemTouchForceProvider;
  }

  touchForceProvider = self->_touchForceProvider;
  if (touchForceProvider != providerCopy)
  {
    obj = providerCopy;
    [(_UIPreviewInteractionTouchForceProviding *)touchForceProvider removeObserver:self forKeyPath:@"active"];
    objc_storeStrong(&self->_touchForceProvider, obj);
    [(_UIPreviewInteractionTouchForceProviding *)obj addObserver:self forKeyPath:@"active" options:1 context:0];
    [(_UIPreviewInteractionClassicImpl *)self _updateForCurrentTouchForceProvider];
    providerCopy = obj;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (self->_touchForceProvider == object && [path isEqualToString:@"active"])
  {

    [(_UIPreviewInteractionClassicImpl *)self _updateForCurrentTouchForceProvider];
  }
}

- (void)_updateForCurrentTouchForceProvider
{
  if ([(_UIPreviewInteractionTouchForceProviding *)self->_touchForceProvider isActive])
  {

    [(_UIPreviewInteractionClassicImpl *)self _prepareForInteractionIfNeeded];
  }

  else if ((*&self->_previewInteractionFlags & 0x40) != 0 || (currentInteractionStateRecognizer = self->_currentInteractionStateRecognizer) != 0 && ![(_UIPreviewInteractionStateRecognizer *)currentInteractionStateRecognizer currentState])
  {

    [(_UIPreviewInteractionClassicImpl *)self _endInteractionIfNeeded];
  }
}

- (void)_prepareForInteractionIfNeeded
{
  if (!self->_currentInteractionStateRecognizer)
  {
    v3 = objc_alloc_init(_UIPreviewInteractionStateRecognizer);
    currentInteractionStateRecognizer = self->_currentInteractionStateRecognizer;
    self->_currentInteractionStateRecognizer = v3;

    [(_UIPreviewInteractionStateRecognizer *)self->_currentInteractionStateRecognizer setMinimumPreviewDuration:0.2];
    [(_UIPreviewInteractionStateRecognizer *)self->_currentInteractionStateRecognizer setShouldDelayReveal:(*&self->_previewInteractionFlags & 0x10) == 0];
    self->_sceneReferenceLocationFromLatestUpdate = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  }

  if (!self->_continuousEvaluationDisplayLink)
  {
    v5 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__updateForContinuousEvaluation_];
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    mainRunLoop2 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:mainRunLoop2 forMode:@"UITrackingRunLoopMode"];

    [(CADisplayLink *)v5 setPreferredFramesPerSecond:60];
    continuousEvaluationDisplayLink = self->_continuousEvaluationDisplayLink;
    self->_continuousEvaluationDisplayLink = v5;
    v9 = v5;

    [(_UIPreviewInteractionClassicImpl *)self _updateForContinuousEvaluation:v9];
  }
}

- (void)_endContinuousEvaluation
{
  [(CADisplayLink *)self->_continuousEvaluationDisplayLink invalidate];
  continuousEvaluationDisplayLink = self->_continuousEvaluationDisplayLink;
  self->_continuousEvaluationDisplayLink = 0;

  currentInteractionStateRecognizer = self->_currentInteractionStateRecognizer;
  self->_currentInteractionStateRecognizer = 0;
}

- (void)_endInteractiveStateTransitions
{
  [(_UIPreviewInteractionClassicImpl *)self _endContinuousEvaluation];
  [(_UIPreviewInteractionClassicImpl *)self _endUsingFeedbackIfNeeded];
  *&self->_previewInteractionFlags &= ~0x40u;
}

- (void)_resetAfterInteraction
{
  [(_UIPreviewInteractionClassicImpl *)self _endViewControllerPresentationObserving];
  [(_UIPreviewInteractionClassicImpl *)self _endContinuousEvaluation];
  [(_UIPreviewInteractionClassicImpl *)self _endHighlightingIfNeeded];
  *&self->_previewInteractionFlags = *&self->_previewInteractionFlags & 0x3F | 0x100;

  [(_UIPreviewInteractionClassicImpl *)self setTouchForceProvider:0];
}

- (void)_updateForContinuousEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  touchForceProvider = self->_touchForceProvider;
  if (touchForceProvider && ([(_UIPreviewInteractionTouchForceProviding *)touchForceProvider isActive]& 1) == 0 && (*&self->_previewInteractionFlags & 0xC0) != 0)
  {
    [(_UIPreviewInteractionClassicImpl *)self _endInteractionIfNeeded];
  }

  [(_UIPreviewInteractionClassicImpl *)self _prepareUsingFeedbackIfNeeded];
  [(_UIPreviewInteractionTouchForceProviding *)self->_touchForceProvider touchForce];
  v6 = v5;
  v7 = CACurrentMediaTime();
  [(_UIPreviewInteractionTouchForceProviding *)self->_touchForceProvider locationInCoordinateSpace:0];
  [(_UIPreviewInteractionClassicImpl *)self _updateInteractionStateRecognizerForTouchForce:v6 atTimestamp:v7 withCentroidAtLocation:v8, v9];
}

- (void)_updateInteractionStateRecognizerForTouchForce:(double)force atTimestamp:(double)timestamp withCentroidAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v10 = self->_currentInteractionStateRecognizer;
  if (v10)
  {
    previewInteractionFlags = self->_previewInteractionFlags;
    if ((previewInteractionFlags & 0x100) != 0)
    {
      if (force >= 1.0)
      {
        goto LABEL_50;
      }

      *&self->_previewInteractionFlags = previewInteractionFlags & 0xFE7F;
      v39 = v10;
      [(_UIPreviewInteractionStateRecognizer *)v10 reset];
      v10 = v39;
      previewInteractionFlags = self->_previewInteractionFlags;
    }

    if ((previewInteractionFlags & 0x80) == 0)
    {
      v40 = v10;
      [(_UIPreviewInteractionStateRecognizer *)v10 evaluateWithTouchForce:force atTimestamp:timestamp withCentroidAtLocation:x, y];
      v12 = *&self->_previewInteractionFlags << 18 >> 29;
      currentState = [(_UIPreviewInteractionStateRecognizer *)v40 currentState];
      v14 = self->_previewInteractionFlags;
      v15 = 2;
      if ((v14 & 0x4000) == 0)
      {
        v15 = currentState;
      }

      if (v15 >= v12)
      {
        v16 = v15;
      }

      else
      {
        v16 = ((4 * v14) >> 13);
      }

      *&self->_previewInteractionFlags = ((v16 & 7) << 11) | v14 & 0xC7FF;
      delegate = [(_UIPreviewInteractionClassicImpl *)self delegate];
      if (v16 <= v12)
      {
        goto LABEL_33;
      }

      if (v16 < 1)
      {
        goto LABEL_21;
      }

      if ((*&self->_previewInteractionFlags & 0x40) == 0)
      {
        if (objc_opt_respondsToSelector())
        {
          previewInteraction = [(_UIPreviewInteractionClassicImpl *)self previewInteraction];
          v19 = [delegate previewInteractionShouldBegin:previewInteraction];

          if ((v19 & 1) == 0)
          {
            *&self->_previewInteractionFlags |= 0x180u;
LABEL_49:

            v10 = v40;
            goto LABEL_50;
          }
        }

        *&self->_previewInteractionFlags |= 0x40u;
        [(_UIPreviewInteractionClassicImpl *)self _prepareUsingFeedback];
        [(_UIPreviewInteractionClassicImpl *)self _prepareHighlighterIfNeeded];
      }

      if (v16 == 1)
      {
        [(_UIPreviewInteractionClassicImpl *)self _actuateFeedbackForStateIfNeeded:1];
LABEL_33:
        v31 = self->_previewInteractionFlags;
        if ((v31 & 0x40) != 0 && v16 != 3)
        {
          v32 = v16 + 1;
          v33 = v31 & 2;
          if (v32 == 3 && v33 == 0)
          {
            [(_UIPreviewInteractionClassicImpl *)self _endInteractiveStateTransitions];
            [(_UIPreviewInteractionClassicImpl *)self _endInteractionIfNeeded];
          }

          else
          {
            [(_UIPreviewInteractionStateRecognizer *)v40 currentProgressToState:v32];
            v36 = v35;
            if (v35 > 0.0 || (*&self->_previewInteractionFlags & 0x400) == 0 || self->_sceneReferenceLocationFromLatestUpdate.x != x || self->_sceneReferenceLocationFromLatestUpdate.y != y)
            {
              v37 = fmax(v35, 0.0);
              [(_UIPreviewInteractionClassicImpl *)self _updateFeedbackTowardNextState:v32 progress:v37];
              [(_UIPreviewInteractionClassicImpl *)self _updateHighlighter:v37];
              previewInteraction2 = [(_UIPreviewInteractionClassicImpl *)self previewInteraction];
              if (v32 == 3)
              {
                [delegate previewInteraction:previewInteraction2 didUpdateCommitTransition:0 ended:v37];
              }

              else
              {
                [delegate previewInteraction:previewInteraction2 didUpdatePreviewTransition:0 ended:v37];
              }

              *&self->_previewInteractionFlags = *&self->_previewInteractionFlags & 0xFBFF | ((v36 <= 0.0) << 10);
              self->_sceneReferenceLocationFromLatestUpdate.x = x;
              self->_sceneReferenceLocationFromLatestUpdate.y = y;
            }
          }
        }

        goto LABEL_49;
      }

      if ([(_UIPreviewInteractionClassicImpl *)self _shouldCancelTransitionToState:v16])
      {
        [(_UIPreviewInteractionClassicImpl *)self _actuateFeedbackForStateIfNeeded:0];
        v20 = self->_previewInteractionFlags;
      }

      else
      {
LABEL_21:
        [(_UIPreviewInteractionClassicImpl *)self _actuateFeedbackForStateIfNeeded:v16];
        v20 = self->_previewInteractionFlags;
        if (v16)
        {
          if (v16 == 3)
          {
            if ((v20 & 2) != 0)
            {
              v29 = +[_UIStatistics previewInteractionPopCount];
              [v29 incrementValueBy:1];

              _UIPowerLogPopOccured();
              *&self->_previewInteractionFlags &= ~0x40u;
              previewInteraction3 = [(_UIPreviewInteractionClassicImpl *)self previewInteraction];
              [delegate previewInteraction:previewInteraction3 didUpdateCommitTransition:1 ended:1.0];

              [(_UIPreviewInteractionClassicImpl *)self _resetAfterInteraction];
            }

            v16 = 3;
          }

          else if (v16 == 2)
          {
            v21 = +[_UIStatistics previewInteractionTapCount];
            [v21 setSampleRate:0.0];

            v22 = +[_UIStatistics previewInteractionPeekCount];
            [v22 incrementValueBy:1];

            if ((v20 & 2) != 0)
            {
              v23 = +[_UIStatistics previewInteractionPeekDuration];
              [v23 startTimingForObject:self];
            }

            _UIPowerLogPeekBegan();
            [(_UIPreviewInteractionClassicImpl *)self _updateHighlighter:1.0];
            previewInteraction4 = [(_UIPreviewInteractionClassicImpl *)self previewInteraction];
            [delegate previewInteraction:previewInteraction4 didUpdatePreviewTransition:1 ended:1.0];

            [(_UIPreviewInteractionClassicImpl *)self _presentPreviewViewControllerIfNeeded];
            v16 = 2;
          }

          goto LABEL_33;
        }
      }

      *&self->_previewInteractionFlags = v20 & 0xFFBF;
      [(_UIPreviewInteractionHighlighter *)self->_highlighter setShouldEndWithCancelAnimation:1];
      if (self->_highlighter)
      {
        v25 = UIApp;
        view = [(_UIPreviewInteractionClassicImpl *)self view];
        _window = [view _window];
        _eventRoutingScene = [_window _eventRoutingScene];
        [v25 _cancelAllEventsOfType:0 onEventRoutingScene:_eventRoutingScene];
      }

      [(_UIPreviewInteractionClassicImpl *)self _resetAfterInteraction];
      v16 = 0;
      goto LABEL_33;
    }
  }

LABEL_50:
}

- (void)_endInteractionIfNeeded
{
  previewInteractionFlags = self->_previewInteractionFlags;
  [(_UIPreviewInteractionClassicImpl *)self _resetAfterInteraction];
  currentInteractionStateRecognizer = self->_currentInteractionStateRecognizer;
  self->_currentInteractionStateRecognizer = 0;

  *&self->_previewInteractionFlags &= ~0x100u;
  [(_UIPreviewInteractionClassicImpl *)self _endUsingFeedbackIfNeeded];
  if ((previewInteractionFlags & 0x240) == 0x40)
  {
    delegate = [(_UIPreviewInteractionClassicImpl *)self delegate];
    previewInteraction = [(_UIPreviewInteractionClassicImpl *)self previewInteraction];
    [delegate previewInteractionDidCancel:previewInteraction];
  }

  v7 = +[_UIStatistics previewInteractionPeekDuration];
  if ([v7 isTimingForObject:self])
  {
    if ((previewInteractionFlags & 0x200) != 0)
    {
      [v7 cancelTimingForObject:self];
    }

    else
    {
      [v7 recordTimingForObject:self];
    }

    _UIPowerLogPeekEnded();
  }
}

- (void)_prepareUsingFeedbackIfNeeded
{
  if (!self->_feedbackGenerator)
  {
    touchForceProvider = self->_touchForceProvider;
    if (touchForceProvider)
    {
      if ((*&self->_previewInteractionFlags & 0x80000000) == 0)
      {
        deepPressAnalyzer = self->_deepPressAnalyzer;
        if (!deepPressAnalyzer)
        {
          v5 = objc_alloc_init(_UIDeepPressAnalyzer);
          v6 = self->_deepPressAnalyzer;
          self->_deepPressAnalyzer = v5;

          deepPressAnalyzer = self->_deepPressAnalyzer;
          touchForceProvider = self->_touchForceProvider;
        }

        [(_UIPreviewInteractionTouchForceProviding *)touchForceProvider touchForce];
        v8 = v7;
        v9 = self->_touchForceProvider;
        WeakRetained = objc_loadWeakRetained(&self->_view);
        [(_UIPreviewInteractionTouchForceProviding *)v9 locationInCoordinateSpace:WeakRetained];
        [(_UIDeepPressAnalyzer *)deepPressAnalyzer analyzeTouchForce:v8 centroidAtLocation:v11, v12];

        if ([(_UIDeepPressAnalyzer *)self->_deepPressAnalyzer isDeepPressLikely])
        {

          [(_UIPreviewInteractionClassicImpl *)self _prepareUsingFeedback];
        }
      }
    }
  }
}

- (void)_prepareUsingFeedback
{
  if (!self->_feedbackGenerator)
  {
    v8 = +[_UIStatesFeedbackGeneratorPreviewConfiguration defaultConfiguration];
    v4 = [_UIStatesFeedbackGenerator alloc];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v6 = [(_UIStatesFeedbackGenerator *)v4 initWithConfiguration:v8 view:WeakRetained];
    feedbackGenerator = self->_feedbackGenerator;
    self->_feedbackGenerator = v6;

    [(UIFeedbackGenerator *)self->_feedbackGenerator activateWithCompletionBlock:0];
  }
}

- (void)_endUsingFeedbackIfNeeded
{
  [(_UIPreviewInteractionClassicImpl *)self _turnOffFeedbackGenerator];
  [(UIFeedbackGenerator *)self->_feedbackGenerator deactivate];
  feedbackGenerator = self->_feedbackGenerator;
  self->_feedbackGenerator = 0;

  deepPressAnalyzer = self->_deepPressAnalyzer;
  self->_deepPressAnalyzer = 0;
}

- (void)_turnOnFeedbackGenerator
{
  if (!self->_feedbackGeneratorTurnedOn)
  {
    [(UIFeedbackGenerator *)self->_feedbackGenerator _activateWithStyle:2 completionBlock:0];
    self->_feedbackGeneratorTurnedOn = 1;
  }
}

- (void)_turnOffFeedbackGenerator
{
  if (self->_feedbackGeneratorTurnedOn)
  {
    [(UIFeedbackGenerator *)self->_feedbackGenerator _deactivateWithStyle:2];
    self->_feedbackGeneratorTurnedOn = 0;
  }
}

- (void)_actuateFeedbackForStateIfNeeded:(int64_t)needed
{
  feedbackGenerator = self->_feedbackGenerator;
  if (feedbackGenerator)
  {
    previewInteractionFlags = self->_previewInteractionFlags;
    if ((*&previewInteractionFlags & 0x80000000) == 0)
    {
      if (needed > 1)
      {
        if (needed == 2)
        {
          v6 = _UIStatesFeedbackGeneratorForcePresentationStatePreview;
        }

        else
        {
          if (needed != 3)
          {
            return;
          }

          v6 = _UIStatesFeedbackGeneratorForcePresentationStateCommit;
        }
      }

      else
      {
        if (needed)
        {
          if (needed == 1)
          {
            [(_UIPreviewInteractionClassicImpl *)self _turnOnFeedbackGenerator];
          }

          return;
        }

        if ((*&previewInteractionFlags & 4) == 0)
        {
          return;
        }

        v6 = _UIStatesFeedbackGeneratorForcePresentationStateCancel;
      }

      [(_UIStatesFeedbackGenerator *)feedbackGenerator transitionToState:*v6 ended:1];
    }
  }
}

- (void)_updateFeedbackTowardNextState:(int64_t)state progress:(double)progress
{
  feedbackGenerator = self->_feedbackGenerator;
  if (feedbackGenerator && (state & 0xFFFFFFFFFFFFFFFELL) == 2 && (*&self->_previewInteractionFlags & 0x80000000) == 0)
  {
    [(_UIStatesFeedbackGenerator *)feedbackGenerator transitionToState:@"preview" updated:progress];
  }
}

- (BOOL)_shouldCancelTransitionToState:(int64_t)state
{
  if ((*&self->_previewInteractionFlags & 4) != 0)
  {
    delegate = [(_UIPreviewInteractionClassicImpl *)self delegate];
    previewInteraction = [(_UIPreviewInteractionClassicImpl *)self previewInteraction];
    v3 = [delegate _previewInteractionShouldFinishTransitionToPreview:previewInteraction] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_prepareHighlighterIfNeeded
{
  p_highlighter = &self->_highlighter;
  if (self->_highlighter || (*&self->_previewInteractionFlags & 0x10) == 0)
  {
    return;
  }

  delegate = [(_UIPreviewInteractionClassicImpl *)self delegate];
  if ((*&self->_previewInteractionFlags & 0x10) == 0)
  {
    goto LABEL_4;
  }

  previewInteraction = [(_UIPreviewInteractionClassicImpl *)self previewInteraction];
  v6 = [delegate _previewInteractionHighlighterForPreviewTransition:previewInteraction];

  if (!v6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionClassicImpl.m" lineNumber:656 description:@"_previewInteractionHighlighterForPreviewTransition needs to return a valid highlighter."];

LABEL_4:
    v6 = 0;
  }

  previewInteraction2 = [(_UIPreviewInteractionClassicImpl *)self previewInteraction];
  [v6 _prepareForInteraction:previewInteraction2];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      gestureRecognizer = [(_UIPreviewInteractionTouchForceProviding *)self->_systemTouchForceProvider gestureRecognizer];
      cancelsInteractionWhenScrolling = [v6 cancelsInteractionWhenScrolling];
      v11 = 0.0;
      if (cancelsInteractionWhenScrolling)
      {
        v11 = 10.0;
      }

      [gestureRecognizer setAllowableMovement:v11];
    }
  }

  objc_initWeak(&location, self);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __63___UIPreviewInteractionClassicImpl__prepareHighlighterIfNeeded__block_invoke;
  v16 = &unk_1E70F5A28;
  objc_copyWeak(&v17, &location);
  [v6 setPrivateCompletionBlock:&v13];
  objc_storeStrong(p_highlighter, v6);
  [(_UIPreviewInteractionClassicImpl *)self _prepareForViewControllerPresentationObserving:v13];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_updateHighlighter:(double)highlighter
{
  if (!self->_viewControllerHelper)
  {
    highlighter = self->_highlighter;
    previewInteraction = [(_UIPreviewInteractionClassicImpl *)self previewInteraction];
    [(_UIPreviewInteractionHighlighter *)highlighter _updateFromInteraction:previewInteraction fractionComplete:0 ended:highlighter];
  }
}

- (void)_endHighlightingIfNeeded
{
  if (!self->_viewControllerHelper)
  {
    highlighter = self->_highlighter;
    previewInteraction = [(_UIPreviewInteractionClassicImpl *)self previewInteraction];
    [(_UIPreviewInteractionHighlighter *)highlighter _updateFromInteraction:previewInteraction fractionComplete:1 ended:0.0];

    v6 = self->_highlighter;

    [(_UIPreviewInteractionHighlighter *)v6 setShouldEndWithCancelAnimation:0];
  }
}

- (void)_presentPreviewViewControllerIfNeeded
{
  if (self->_highlighter && !self->_viewControllerHelper && (*&self->_previewInteractionFlags & 0x20) != 0)
  {
    delegate = [(_UIPreviewInteractionClassicImpl *)self delegate];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    _viewControllerForAncestor = [WeakRetained _viewControllerForAncestor];

    if (!_viewControllerForAncestor)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionClassicImpl.m" lineNumber:718 description:@"UIPreviewInteraction cannot determine presenting view controller."];
    }

    if ((*&self->_previewInteractionFlags & 0x20) != 0 && (-[_UIPreviewInteractionClassicImpl previewInteraction](self, "previewInteraction"), v7 = objc_claimAutoreleasedReturnValue(), [delegate _previewInteraction:v7 viewControllerPresentationForPresentingViewController:_viewControllerForAncestor], v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
    {
      viewController = [v8 viewController];

      if (viewController == _viewControllerForAncestor)
      {
        viewController2 = [v8 viewController];
        parentViewController = [viewController2 parentViewController];

        _viewControllerForAncestor = parentViewController;
        if (!parentViewController)
        {
          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIPreviewInteractionClassicImpl.m" lineNumber:733 description:@"UIPreviewInteraction cannot determine presenting view controller."];

          _viewControllerForAncestor = 0;
        }
      }

      v12 = [[_UIPreviewInteractionViewControllerHelper alloc] initWithViewControllerPresentation:v8];
      viewControllerHelper = self->_viewControllerHelper;
      self->_viewControllerHelper = v12;

      objc_initWeak(&location, self);
      [(_UIPreviewInteractionHighlighter *)self->_highlighter setPrivateCompletionBlock:0];
      p_highlighter = &self->_highlighter;
      highlighter = self->_highlighter;
      v15 = p_highlighter[1];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __73___UIPreviewInteractionClassicImpl__presentPreviewViewControllerIfNeeded__block_invoke;
      v22[3] = &unk_1E70F5A28;
      objc_copyWeak(&v23, &location);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __73___UIPreviewInteractionClassicImpl__presentPreviewViewControllerIfNeeded__block_invoke_2;
      v20[3] = &unk_1E70F5A28;
      objc_copyWeak(&v21, &location);
      [(_UIPreviewInteractionHighlighter *)v15 presentViewControllerFromViewController:_viewControllerForAncestor highlighter:highlighter presentationCompletion:v22 dismissalCompletion:v20];
      objc_destroyWeak(&v21);
      objc_destroyWeak(&v23);
      objc_destroyWeak(&location);
    }

    else
    {
      touchForceProvider = [(_UIPreviewInteractionClassicImpl *)self touchForceProvider];
      [touchForceProvider cancelInteraction];
    }
  }
}

- (void)_dismissPreviewViewControllerIfNeeded
{
  viewControllerHelper = self->_viewControllerHelper;
  if (viewControllerHelper)
  {
    [(_UIPreviewInteractionViewControllerHelper *)viewControllerHelper dismissViewController];
  }
}

- (void)_prepareForViewControllerPresentationObserving
{
  if (!self->_viewControllerPresentationObserver)
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __82___UIPreviewInteractionClassicImpl__prepareForViewControllerPresentationObserving__block_invoke;
    v6[3] = &unk_1E710C240;
    objc_copyWeak(&v7, &location);
    v6[4] = self;
    v4 = [defaultCenter addObserverForName:@"_UIInternalViewControllerPresentationWillBeginNotification" object:0 queue:0 usingBlock:v6];
    viewControllerPresentationObserver = self->_viewControllerPresentationObserver;
    self->_viewControllerPresentationObserver = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_endViewControllerPresentationObserving
{
  if (self->_viewControllerPresentationObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_viewControllerPresentationObserver];

    viewControllerPresentationObserver = self->_viewControllerPresentationObserver;
    self->_viewControllerPresentationObserver = 0;
  }
}

- (UIPreviewInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (UIPreviewInteraction)previewInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_previewInteraction);

  return WeakRetained;
}

@end