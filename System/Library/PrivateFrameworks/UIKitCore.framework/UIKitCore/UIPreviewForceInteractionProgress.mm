@interface UIPreviewForceInteractionProgress
- (UIPreviewForceInteractionProgress)initWithGestureRecognizer:(id)recognizer;
- (UIPreviewForceInteractionProgress)initWithGestureRecognizer:(id)recognizer minimumRequiredState:(int64_t)state;
- (UIPreviewForceInteractionProgress)initWithView:(id)view targetState:(int64_t)state;
- (UIPreviewForceInteractionProgress)initWithView:(id)view targetState:(int64_t)state minimumRequiredState:(int64_t)requiredState;
- (id)_initWithObservable:(id)observable targetState:(int64_t)state minimumRequiredState:(int64_t)requiredState useLinearClassifier:(BOOL)classifier;
- (id)_initWithView:(id)view targetState:(int64_t)state minimumRequiredState:(int64_t)requiredState useLinearClassifier:(BOOL)classifier;
- (void)_forceLevelClassifier:(id)classifier currentForceLevelDidChange:(int64_t)change;
- (void)_forceLevelClassifierDidReset:(id)reset;
- (void)_gestureRecognizerBegan:(BOOL)began;
- (void)_installProgressObserver;
- (void)_setGestureBeginObservable:(id)observable;
- (void)_setTargetState:(int64_t)state;
@end

@implementation UIPreviewForceInteractionProgress

- (UIPreviewForceInteractionProgress)initWithView:(id)view targetState:(int64_t)state
{
  viewCopy = view;
  if (state <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPreviewForceInteractionProgress.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"targetState > UIPreviewForceStateNone"}];
  }

  if ((state - 1) >= 3)
  {
    v8 = 0xFFFFFFFF80000000;
  }

  else
  {
    v8 = state - 1;
  }

  v9 = [(UIPreviewForceInteractionProgress *)self initWithView:viewCopy targetState:state minimumRequiredState:v8];

  return v9;
}

- (UIPreviewForceInteractionProgress)initWithView:(id)view targetState:(int64_t)state minimumRequiredState:(int64_t)requiredState
{
  viewCopy = view;
  if (state <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPreviewForceInteractionProgress.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"targetState > UIPreviewForceStateNone"}];
  }

  if (requiredState >= 3)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIPreviewForceInteractionProgress.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"minimumState < UIPreviewForceStateCommit"}];
  }

  if (requiredState >= state)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"UIPreviewForceInteractionProgress.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"minimumState < targetState"}];
  }

  _touchForceObservable = [viewCopy _touchForceObservable];
  v11 = [(UIPreviewForceInteractionProgress *)self _initWithObservable:_touchForceObservable targetState:state minimumRequiredState:requiredState];

  return v11;
}

- (UIPreviewForceInteractionProgress)initWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  requiredPreviewForceState = [recognizerCopy requiredPreviewForceState];
  if ((requiredPreviewForceState - 1) >= 3)
  {
    v6 = 0xFFFFFFFF80000000;
  }

  else
  {
    v6 = requiredPreviewForceState - 1;
  }

  v7 = [(UIPreviewForceInteractionProgress *)self initWithGestureRecognizer:recognizerCopy minimumRequiredState:v6];

  if (v7)
  {
    v7->_updateMinimumStateWithTargetState = 1;
  }

  return v7;
}

- (UIPreviewForceInteractionProgress)initWithGestureRecognizer:(id)recognizer minimumRequiredState:(int64_t)state
{
  recognizerCopy = recognizer;
  if (state >= 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIPreviewForceInteractionProgress.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"minimumState < UIPreviewForceStateCommit"}];
  }

  _touchForceObservable = [recognizerCopy _touchForceObservable];
  v9 = -[UIPreviewForceInteractionProgress _initWithObservable:targetState:minimumRequiredState:](self, "_initWithObservable:targetState:minimumRequiredState:", _touchForceObservable, [recognizerCopy requiredPreviewForceState], state);

  if (v9)
  {
    v9->_completesAtTargetState = 0;
    objc_initWeak(&location, v9);
    v10 = [MEMORY[0x1E696ADA8] keyPathWithRootObject:recognizerCopy path:"requiredPreviewForceState"];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__UIPreviewForceInteractionProgress_initWithGestureRecognizer_minimumRequiredState___block_invoke;
    v15[3] = &unk_1E711CC38;
    objc_copyWeak(&v16, &location);
    v11 = [v10 addObserverBlock:v15];
    targetStateUpdateObservation = v9->_targetStateUpdateObservation;
    v9->_targetStateUpdateObservation = v11;

    [(UIPreviewForceInteractionProgress *)v9 _setGestureBeginObservable:recognizerCopy];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __84__UIPreviewForceInteractionProgress_initWithGestureRecognizer_minimumRequiredState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 integerValue];

  [WeakRetained _setTargetState:v4];
}

- (void)_setGestureBeginObservable:(id)observable
{
  observableCopy = observable;
  objc_initWeak(&location, self);
  _internal = [(_UILabelConfiguration *)observableCopy _internal];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__UIPreviewForceInteractionProgress__setGestureBeginObservable___block_invoke;
  v8[3] = &unk_1E711CC60;
  objc_copyWeak(&v9, &location);
  v6 = [_internal addObserverBlock:v8];
  gestureBeganObservation = self->_gestureBeganObservation;
  self->_gestureBeganObservation = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __64__UIPreviewForceInteractionProgress__setGestureBeginObservable___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v4)
  {
    [WeakRetained _gestureRecognizerBegan:{objc_msgSend(v4, "BOOLValue")}];
  }
}

- (id)_initWithView:(id)view targetState:(int64_t)state minimumRequiredState:(int64_t)requiredState useLinearClassifier:(BOOL)classifier
{
  classifierCopy = classifier;
  _touchForceObservable = [view _touchForceObservable];
  v11 = [(UIPreviewForceInteractionProgress *)self _initWithObservable:_touchForceObservable targetState:state minimumRequiredState:requiredState useLinearClassifier:classifierCopy];

  return v11;
}

- (id)_initWithObservable:(id)observable targetState:(int64_t)state minimumRequiredState:(int64_t)requiredState useLinearClassifier:(BOOL)classifier
{
  classifierCopy = classifier;
  observableCopy = observable;
  v20.receiver = self;
  v20.super_class = UIPreviewForceInteractionProgress;
  v12 = [(UIInteractionProgress *)&v20 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_observable, observable);
    v13->_targetState = state;
    v13->_minimumState = requiredState;
    v14 = off_1E70EBB20;
    if (!classifierCopy)
    {
      v14 = off_1E70EBF20;
    }

    v15 = objc_alloc_init(*v14);
    classifier = v13->_classifier;
    v13->_classifier = v15;

    [(_UIForceLevelClassifier *)v13->_classifier setDelegate:v13];
    v17 = [(_UITouchForceObservable *)v13->_observable addObserver:v13->_classifier];
    classifierObservation = v13->_classifierObservation;
    v13->_classifierObservation = v17;

    v13->_completesAtTargetState = 1;
    [(UIPreviewForceInteractionProgress *)v13 _installProgressObserver];
  }

  return v13;
}

- (void)_installProgressObserver
{
  objc_initWeak(&location, self);
  v3 = [(_UIForceLevelClassifier *)self->_classifier observableForProgressToForceLevel:self->_targetState minimumRequiredForceLevel:self->_minimumState];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__UIPreviewForceInteractionProgress__installProgressObserver__block_invoke;
  v6[3] = &unk_1E711CC60;
  objc_copyWeak(&v7, &location);
  v4 = [v3 addObserverBlock:v6];
  progressObservation = self->_progressObservation;
  self->_progressObservation = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __61__UIPreviewForceInteractionProgress__installProgressObserver__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 104) == 1 && (*(WeakRetained + 105) & 1) == 0)
  {
    [v5 doubleValue];
    [v4 setPercentComplete:?];
  }
}

- (void)_setTargetState:(int64_t)state
{
  self->_targetState = state;
  v3 = state - 1;
  if (state < 1)
  {
    if (self->_updateMinimumStateWithTargetState)
    {
      self->_minimumState = 0xFFFFFFFF80000000;
    }

    progressObservation = self->_progressObservation;
    self->_progressObservation = 0;
  }

  else
  {
    if (self->_updateMinimumStateWithTargetState)
    {
      if (state >= 4)
      {
        v3 = 0xFFFFFFFF80000000;
      }

      self->_minimumState = v3;
    }

    [(UIPreviewForceInteractionProgress *)self _installProgressObserver];
  }
}

- (void)_gestureRecognizerBegan:(BOOL)began
{
  beganCopy = began;
  if ((!began || [(_UIForceLevelClassifier *)self->_classifier currentForceLevel]>= self->_targetState && self->_enteredMinimumState) && !self->_didEnd)
  {
    [(UIInteractionProgress *)self endInteraction:beganCopy];
    self->_didEnd = 1;
  }
}

- (void)_forceLevelClassifier:(id)classifier currentForceLevelDidChange:(int64_t)change
{
  classifierCopy = classifier;
  v7 = classifierCopy;
  if (!self->_enteredMinimumState)
  {
    v6 = [classifierCopy currentForceLevel] < self->_minimumState;
    classifierCopy = v7;
    if (!v6)
    {
      self->_enteredMinimumState = 1;
    }
  }

  if ([classifierCopy currentForceLevel] >= self->_targetState && !self->_didEnd && self->_completesAtTargetState && self->_enteredMinimumState)
  {
    [(UIInteractionProgress *)self endInteraction:1];
    self->_didEnd = 1;
  }
}

- (void)_forceLevelClassifierDidReset:(id)reset
{
  if (!self->_didEnd)
  {
    [(UIInteractionProgress *)self endInteraction:0];
  }

  self->_didEnd = 0;
  self->_enteredMinimumState = 0;
}

@end