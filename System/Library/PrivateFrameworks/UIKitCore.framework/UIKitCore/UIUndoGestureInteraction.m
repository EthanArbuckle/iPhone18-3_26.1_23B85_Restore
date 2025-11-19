@interface UIUndoGestureInteraction
+ (BOOL)_isKeyWindowSceneSessionRoleValidForTutorial;
+ (id)iWorkFamily;
+ (void)presentProductivityGestureTutorialIfNeededWithCompletion:(id)a3;
+ (void)presentProductivityGestureTutorialInlineWithCompletion:(id)a3;
+ (void)showSecurePasteConfirmationWithCompletionHandler:(id)a3;
- (BOOL)_endPanWithDirection:(int64_t)a3;
- (BOOL)bundleIniWorkFamily:(id)a3;
- (BOOL)canCopy;
- (BOOL)canCut;
- (BOOL)canPaste;
- (BOOL)canRedo;
- (BOOL)canUndo;
- (BOOL)currentInteractiveHUDVisible;
- (BOOL)currentStateHUDVisible;
- (BOOL)editingInteractionOptionsAllowGestureRecognizerToBegin:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isRTLMode;
- (BOOL)needUpdateHUDForContainerChange;
- (BOOL)performActionWithDirection:(int64_t)a3;
- (BOOL)performGestureWithDirection:(int64_t)a3 authenticationMessage:(id)a4;
- (BOOL)textEditingOperationsAvailableWithGestureRecognizer:(id)a3;
- (BOOL)undoGestureIsMoving:(id)a3;
- (BOOL)undoManagerOperationsCutCopyPasteAvailable;
- (BOOL)undoManagerOperationsUndoRedoAvailable;
- (CGPoint)beginPanLocation;
- (CGPoint)previousPanLocation;
- (CGRect)actualSceneBounds;
- (CGRect)currentActuallSceneBounds;
- (UIKBTextEditingTraits)editingTraits;
- (UIView)view;
- (id)_undoManager;
- (id)interactiveHUDButtonForDirection:(int64_t)a3;
- (id)responderForOperation:(SEL)a3 withSender:(id)a4;
- (id)scrollViewForInputDelegate;
- (int64_t)keyboardAppearance;
- (int64_t)slideDirectionWithGesture:(id)a3;
- (int64_t)undoControlTypeWithDirection:(int64_t)a3;
- (unint64_t)privateEditingInteractionOptions;
- (void)_addGestureRecognizers;
- (void)_cancelPinch:(id)a3;
- (void)_createAndUpdateUndoInteractiveHUDIfNecessary;
- (void)_createAndUpdateUndoStateHUDIfNecessary;
- (void)_createGestureRecognizersIfNecessary;
- (void)_endPan:(id)a3;
- (void)_endPinch:(id)a3;
- (void)_endPinchWithDirection:(int64_t)a3;
- (void)_installUndoManagerObservers;
- (void)_removeGestureRecognizers;
- (void)_startPinch:(id)a3;
- (void)_startUndoPan:(id)a3;
- (void)_threeFingerSingleTapAction;
- (void)_uninstallUndoManagerObservers;
- (void)_updateHUDControlState;
- (void)_updatePinch:(id)a3;
- (void)_updateUndoPan:(id)a3;
- (void)animateDisplayingStateHUD;
- (void)animateInStateHUD;
- (void)animateSpringCoverWithSuccess:(BOOL)a3 direction:(int64_t)a4 remainingDistanceToTravel:(double)a5;
- (void)applicationWillSuspend;
- (void)clearHUDViews;
- (void)clearMultiPansTimer;
- (void)clearMultiPinchTimer;
- (void)clearUndoStateHUDDismissTimer;
- (void)copyOperation;
- (void)cutOperation;
- (void)deactiveActiveKeysIfNeeded:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)disableEnclosingScrollViewScrolling;
- (void)fullyCloseCoverWithComplete:(id)a3;
- (void)fullyOpenAndCloseCoverWithBeginDirection:(int64_t)a3;
- (void)layoutUndoInteractiveHUD;
- (void)layoutUndoStateHUD;
- (void)multiPansTimerElaspsed:(id)a3;
- (void)observerGestureHandler:(id)a3;
- (void)pasteOperation;
- (void)redo:(BOOL)a3;
- (void)removeAllHUDOnContainerChange;
- (void)setPasteConfirmationHUDVisibility:(BOOL)a3;
- (void)setUndoHUDType:(int64_t)a3 visibility:(BOOL)a4;
- (void)setUndoInteractiveHUDVisibility:(BOOL)a3;
- (void)setUndoStateHUDVisibility:(BOOL)a3 withType:(int64_t)a4 available:(BOOL)a5;
- (void)startMultiPinchTimer:(double)a3;
- (void)threeFingerDoubleTap:(id)a3;
- (void)threeFingerDoubleTapUndoAction;
- (void)threeFingerLongPress:(id)a3;
- (void)threeFingerPinch:(id)a3;
- (void)threeFingerSingleTap:(id)a3;
- (void)threeFingerSlide:(id)a3;
- (void)touchMultiPansTimer;
- (void)touchUndoStateHUDDismissTimer;
- (void)undo:(BOOL)a3;
- (void)undoStateHUDDismissTimerElaspsed:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation UIUndoGestureInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)_addGestureRecognizers
{
  [(UIUndoGestureInteraction *)self _createGestureRecognizersIfNecessary];
  v3 = [(UIUndoGestureInteraction *)self view];
  v4 = [(UIUndoGestureInteraction *)self observerGesture];
  [v3 addGestureRecognizer:v4];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = [(UIUndoGestureInteraction *)self view];
    v6 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    [v5 addGestureRecognizer:v6];

    v7 = [(UIUndoGestureInteraction *)self view];
    v8 = [(UIUndoGestureInteraction *)self threeFingerSlide];
    [v7 addGestureRecognizer:v8];

    v9 = [(UIUndoGestureInteraction *)self view];
    v10 = [(UIUndoGestureInteraction *)self threeFingerLongPress];
    [v9 addGestureRecognizer:v10];

    v11 = [(UIUndoGestureInteraction *)self view];
    v12 = [(UIUndoGestureInteraction *)self threeFingerPinch];
    [v11 addGestureRecognizer:v12];

    v13 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    v14 = [(UIUndoGestureInteraction *)self threeFingerSlide];
    [v13 requireGestureRecognizerToFail:v14];

    v15 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    v16 = [(UIUndoGestureInteraction *)self threeFingerLongPress];
    [v15 requireGestureRecognizerToFail:v16];

    v17 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    v18 = [(UIUndoGestureInteraction *)self threeFingerPinch];
    [v17 requireGestureRecognizerToFail:v18];

    v19 = [(UIUndoGestureInteraction *)self observerGesture];
    v20 = [(UIUndoGestureInteraction *)self threeFingerSlide];
    [v19 requireGestureRecognizerToFail:v20];

    v21 = [(UIUndoGestureInteraction *)self observerGesture];
    v22 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    [v21 requireGestureRecognizerToFail:v22];

    v23 = [(UIUndoGestureInteraction *)self observerGesture];
    v24 = [(UIUndoGestureInteraction *)self threeFingerLongPress];
    [v23 requireGestureRecognizerToFail:v24];

    v25 = [(UIUndoGestureInteraction *)self observerGesture];
    v26 = [(UIUndoGestureInteraction *)self threeFingerPinch];
    [v25 requireGestureRecognizerToFail:v26];

    v27 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];

    if (v27)
    {
      v28 = [(UIUndoGestureInteraction *)self view];
      v29 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
      [v28 addGestureRecognizer:v29];

      v30 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
      v31 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
      [v30 requireGestureRecognizerToFail:v31];

      v33 = [(UIUndoGestureInteraction *)self observerGesture];
      v32 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
      [v33 requireGestureRecognizerToFail:v32];
    }
  }
}

- (void)_createGestureRecognizersIfNecessary
{
  v3 = [(UIUndoGestureInteraction *)self observerGesture];

  if (!v3)
  {
    v4 = [_UIKBUndoGestureObserver undoGestureObserverWithTarget:self action:sel_observerGestureHandler_ delegate:self];
    [(UIUndoGestureInteraction *)self setObserverGesture:v4];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];

    if (!v5)
    {
      v6 = [_UIKBProductivitySingleTapGesture productivitySingleTapGestureRecognizerWithTarget:self action:sel_threeFingerSingleTap_ delegate:self];
      if (_os_feature_enabled_impl())
      {
        [v6 setContinuousTapRecognition:1];
      }

      [(UIUndoGestureInteraction *)self setThreeFingerSingleTap:v6];
    }

    v7 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
    if (!v7)
    {
      v8 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
      v9 = [v8 continuousTapRecognition];

      if (v9)
      {
LABEL_12:
        v10 = [(UIUndoGestureInteraction *)self threeFingerSlide];

        if (!v10)
        {
          v11 = [_UIKBProductivityPanGestureRecognizer productivityPanGestureRecognizerWithTarget:self action:sel_threeFingerSlide_ delegate:self];
          [(UIUndoGestureInteraction *)self setThreeFingerSlide:v11];
        }

        v12 = [(UIUndoGestureInteraction *)self threeFingerLongPress];

        if (!v12)
        {
          v13 = [_UIKBProductivityLongPressGestureRecognizer productivityLongPressGestureRecognizerWithTarget:self action:sel_threeFingerLongPress_ delegate:self];
          [(UIUndoGestureInteraction *)self setThreeFingerLongPress:v13];
        }

        v14 = [(UIUndoGestureInteraction *)self threeFingerPinch];

        if (!v14)
        {
          v15 = [_UIKBProductivityPinchGestureRecognizer productivityPinchGestureRecognizerWithTarget:self action:sel_threeFingerPinch_ delegate:self];
          [(UIUndoGestureInteraction *)self setThreeFingerPinch:v15];
        }

        return;
      }

      v7 = [_UIKBProductivityDoubleTapGesture productivityDoubleTapGestureRecognizerWithTarget:self action:sel_threeFingerDoubleTap_ delegate:self];
      [(UIUndoGestureInteraction *)self setThreeFingerDoubleTap:v7];
    }

    goto LABEL_12;
  }
}

- (BOOL)currentInteractiveHUDVisible
{
  v3 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  if (v3)
  {
    v4 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
    v5 = [v4 superview];
    v6 = [(UIUndoGestureInteraction *)self view];
    if (v5 == v6)
    {
      v8 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
      [v8 alpha];
      v7 = v9 > 0.0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeAllHUDOnContainerChange
{
  if ([(UIUndoGestureInteraction *)self currentInteractiveHUDVisible])
  {
    [(UIUndoGestureInteraction *)self setUndoInteractiveHUDVisibility:0];
  }

  if ([(UIUndoGestureInteraction *)self currentStateHUDVisible])
  {
    [(UIUndoGestureInteraction *)self setUndoStateHUDVisibility:0 withType:1 available:1];
  }

  [(UIUndoGestureInteraction *)self clearHUDViews];
  v3 = [(UIUndoGestureInteraction *)self layoutGuide];

  if (v3)
  {
    v4 = [(UIUndoGestureInteraction *)self view];
    v5 = [(UIUndoGestureInteraction *)self layoutGuide];
    [v4 removeLayoutGuide:v5];

    [(UIUndoGestureInteraction *)self setLayoutGuide:0];
  }
}

- (BOOL)currentStateHUDVisible
{
  v3 = [(UIUndoGestureInteraction *)self undoStateHUD];
  if (v3)
  {
    v4 = [(UIUndoGestureInteraction *)self undoStateHUD];
    v5 = [v4 superview];
    v6 = [(UIUndoGestureInteraction *)self view];
    if (v5 == v6)
    {
      v8 = [(UIUndoGestureInteraction *)self undoStateHUD];
      [v8 alpha];
      v7 = v9 > 0.0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)clearHUDViews
{
  v3 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];

  if (v3)
  {
    v4 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
    [v4 removeFromSuperview];

    [(UIUndoGestureInteraction *)self setUndoInteractiveHUD:0];
  }

  v5 = [(UIUndoGestureInteraction *)self undoStateHUD];

  if (v5)
  {
    v6 = [(UIUndoGestureInteraction *)self undoStateHUD];
    [v6 removeFromSuperview];

    [(UIUndoGestureInteraction *)self setUndoStateHUD:0];
  }
}

- (void)willMoveToView:(id)a3
{
  if (!a3)
  {
    [(UIUndoGestureInteraction *)self _removeGestureRecognizers];
    [(UIUndoGestureInteraction *)self clearHUDViews];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:self];
  }
}

- (void)didMoveToView:(id)a3
{
  objc_storeWeak(&self->_view, a3);
  if (a3)
  {
    self->_previousRecognizedPanDirection = 0;
    self->_undoStateHUDIsAnimating = 0;
    self->_panDownStateChangedCounter = 0;
    self->_lastTapTimestamp = 0.0;
    [(UIUndoGestureInteraction *)self _addGestureRecognizers];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v6 = [WeakRetained window];
    [v6 actualSceneBounds];
    self->_currentActuallSceneBounds.origin.x = v7;
    self->_currentActuallSceneBounds.origin.y = v8;
    self->_currentActuallSceneBounds.size.width = v9;
    self->_currentActuallSceneBounds.size.height = v10;

    v11 = +[UIDevice currentDevice];
    v12 = [v11 userInterfaceIdiom];

    if (!v12)
    {
      v13 = [MEMORY[0x1E696AD88] defaultCenter];
      [v13 addObserver:self selector:sel_removeAllHUDOnContainerChange name:@"UIKeyboardWillChangeFrameNotification" object:0];
    }

    v14 = [MEMORY[0x1E696AD88] defaultCenter];
    [v14 addObserver:self selector:sel_applicationWillSuspend name:@"UIApplicationSuspendedNotification" object:0];
  }
}

- (void)applicationWillSuspend
{
  [(UIUndoGestureInteraction *)self clearUndoStateHUDDismissTimer];
  [(UIUndoGestureInteraction *)self clearMultiPinchTimer];

  [(UIUndoGestureInteraction *)self clearHUDViews];
}

- (int64_t)keyboardAppearance
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 textInputTraits];
  v4 = [v3 keyboardAppearance];

  return v4;
}

- (CGRect)actualSceneBounds
{
  v2 = [(UIUndoGestureInteraction *)self view];
  v3 = [v2 window];
  [v3 actualSceneBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (BOOL)isRTLMode
{
  v2 = MEMORY[0x1E695DF58];
  v3 = [MEMORY[0x1E695DF58] _deviceLanguage];
  LOBYTE(v2) = [v2 characterDirectionForLanguage:v3] == 2;

  return v2;
}

- (void)layoutUndoInteractiveHUD
{
  v3 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];

  if (v3)
  {
    v4 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
    [v4 removeFromSuperview];

    [(UIUndoGestureInteraction *)self setUndoInteractiveHUD:0];
  }

  [(UIUndoGestureInteraction *)self actualSceneBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIUndoGestureInteraction *)self setCurrentActuallSceneBounds:?];
  v13 = [[UIKBUndoInteractionHUD alloc] initWithKeyboardAppearance:[(UIUndoGestureInteraction *)self keyboardAppearance] isRTL:[(UIUndoGestureInteraction *)self isRTLMode] mode:self->_interactiveHUDMode sceneBounds:v6, v8, v10, v12];
  [(UIUndoGestureInteraction *)self setUndoInteractiveHUD:v13];

  v14 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  [v14 setActionDelegate:self];

  v15 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  [v15 setAlpha:0.0];

  v16 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [(UIUndoGestureInteraction *)self view];
  v18 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  [v17 addSubview:v18];

  v19 = [(UIUndoGestureInteraction *)self layoutGuide];

  if (!v19)
  {
    v20 = objc_alloc_init(UILayoutGuide);
    [(UIUndoGestureInteraction *)self setLayoutGuide:v20];

    v21 = [(UIUndoGestureInteraction *)self view];
    v22 = [(UIUndoGestureInteraction *)self layoutGuide];
    [v21 addLayoutGuide:v22];

    v23 = [(UIUndoGestureInteraction *)self layoutGuide];
    v24 = [v23 leftAnchor];
    v25 = [(UIUndoGestureInteraction *)self view];
    v26 = [v25 leftAnchor];
    v27 = [v24 constraintEqualToAnchor:v26];
    [v27 setActive:1];

    v28 = [(UIUndoGestureInteraction *)self layoutGuide];
    v29 = [v28 topAnchor];
    v30 = [(UIUndoGestureInteraction *)self view];
    v31 = [v30 safeAreaLayoutGuide];
    v32 = [v31 topAnchor];
    v33 = [v29 constraintEqualToAnchor:v32];
    [v33 setActive:1];

    v34 = [(UIUndoGestureInteraction *)self layoutGuide];
    v35 = [v34 widthAnchor];
    v36 = [v35 constraintEqualToConstant:v10];
    undoHUDContainerWidthConstraint = self->_undoHUDContainerWidthConstraint;
    self->_undoHUDContainerWidthConstraint = v36;

    [(NSLayoutConstraint *)self->_undoHUDContainerWidthConstraint setActive:1];
    v38 = [(UIUndoGestureInteraction *)self layoutGuide];
    v39 = [v38 heightAnchor];
    v40 = [v39 constraintEqualToConstant:v12];
    undoHUDContainerHeightConstraint = self->_undoHUDContainerHeightConstraint;
    self->_undoHUDContainerHeightConstraint = v40;

    [(NSLayoutConstraint *)self->_undoHUDContainerHeightConstraint setActive:1];
  }

  [(UIUndoGestureInteraction *)self currentActuallSceneBounds];
  v43 = v42;
  v44 = [(UIUndoGestureInteraction *)self undoHUDContainerWidthConstraint];
  [v44 setConstant:v43];

  [(UIUndoGestureInteraction *)self currentActuallSceneBounds];
  v46 = v45;
  v47 = [(UIUndoGestureInteraction *)self undoHUDContainerHeightConstraint];
  [v47 setConstant:v46];

  v48 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  v49 = [v48 centerXAnchor];
  v50 = [(UIUndoGestureInteraction *)self layoutGuide];
  v51 = [v50 centerXAnchor];
  v52 = [v49 constraintEqualToAnchor:v51];
  [v52 setActive:1];

  v53 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  v54 = [v53 topAnchor];
  v55 = [(UIUndoGestureInteraction *)self view];
  v56 = [v55 topAnchor];
  v57 = [v54 constraintGreaterThanOrEqualToAnchor:v56 constant:31.0];
  [v57 setActive:1];

  v58 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  v59 = [v58 topAnchor];
  v60 = [(UIUndoGestureInteraction *)self layoutGuide];
  v61 = [v60 topAnchor];
  v64 = [v59 constraintEqualToAnchor:v61 constant:7.0];

  LODWORD(v62) = 1144750080;
  [v64 setPriority:v62];
  [v64 setActive:1];
  v63 = [(UIUndoGestureInteraction *)self view];
  [v63 layoutIfNeeded];
}

- (void)layoutUndoStateHUD
{
  v3 = [(UIUndoGestureInteraction *)self undoStateHUD];

  if (v3)
  {
    v4 = [(UIUndoGestureInteraction *)self undoStateHUD];
    [v4 removeFromSuperview];

    [(UIUndoGestureInteraction *)self setUndoStateHUD:0];
  }

  v5 = [[UIKBUndoStateHUD alloc] initWithKeyboardAppearance:[(UIUndoGestureInteraction *)self keyboardAppearance]];
  [(UIUndoGestureInteraction *)self setUndoStateHUD:v5];

  v6 = [(UIUndoGestureInteraction *)self undoStateHUD];
  [v6 setAlpha:0.0];

  v7 = [(UIUndoGestureInteraction *)self undoStateHUD];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(UIUndoGestureInteraction *)self view];
  v9 = [(UIUndoGestureInteraction *)self undoStateHUD];
  [v8 addSubview:v9];

  [(UIUndoGestureInteraction *)self actualSceneBounds];
  v11 = v10;
  v13 = v12;
  [(UIUndoGestureInteraction *)self setCurrentActuallSceneBounds:?];
  v14 = [(UIUndoGestureInteraction *)self layoutGuide];

  if (!v14)
  {
    v15 = objc_alloc_init(UILayoutGuide);
    [(UIUndoGestureInteraction *)self setLayoutGuide:v15];

    v16 = [(UIUndoGestureInteraction *)self view];
    v17 = [(UIUndoGestureInteraction *)self layoutGuide];
    [v16 addLayoutGuide:v17];

    v18 = [(UIUndoGestureInteraction *)self layoutGuide];
    v19 = [v18 leftAnchor];
    v20 = [(UIUndoGestureInteraction *)self view];
    v21 = [v20 leftAnchor];
    v22 = [v19 constraintEqualToAnchor:v21];
    [v22 setActive:1];

    v23 = [(UIUndoGestureInteraction *)self layoutGuide];
    v24 = [v23 topAnchor];
    v25 = [(UIUndoGestureInteraction *)self view];
    v26 = [v25 safeAreaLayoutGuide];
    v27 = [v26 topAnchor];
    v28 = [v24 constraintEqualToAnchor:v27];
    [v28 setActive:1];

    v29 = [(UIUndoGestureInteraction *)self layoutGuide];
    v30 = [v29 widthAnchor];
    v31 = [v30 constraintEqualToConstant:v11];
    undoHUDContainerWidthConstraint = self->_undoHUDContainerWidthConstraint;
    self->_undoHUDContainerWidthConstraint = v31;

    [(NSLayoutConstraint *)self->_undoHUDContainerWidthConstraint setActive:1];
    v33 = [(UIUndoGestureInteraction *)self layoutGuide];
    v34 = [v33 heightAnchor];
    v35 = [v34 constraintEqualToConstant:v13];
    undoHUDContainerHeightConstraint = self->_undoHUDContainerHeightConstraint;
    self->_undoHUDContainerHeightConstraint = v35;

    [(NSLayoutConstraint *)self->_undoHUDContainerHeightConstraint setActive:1];
  }

  [(UIUndoGestureInteraction *)self currentActuallSceneBounds];
  v38 = v37;
  v39 = [(UIUndoGestureInteraction *)self undoHUDContainerWidthConstraint];
  [v39 setConstant:v38];

  [(UIUndoGestureInteraction *)self currentActuallSceneBounds];
  v41 = v40;
  v42 = [(UIUndoGestureInteraction *)self undoHUDContainerHeightConstraint];
  [v42 setConstant:v41];

  v43 = [(UIUndoGestureInteraction *)self undoStateHUD];
  v44 = [v43 centerYAnchor];
  v45 = [(UIUndoGestureInteraction *)self view];
  v46 = [v45 topAnchor];
  v47 = [v44 constraintGreaterThanOrEqualToAnchor:v46 constant:45.0];
  undoStateHUDTopConstraint = self->_undoStateHUDTopConstraint;
  self->_undoStateHUDTopConstraint = v47;

  [(NSLayoutConstraint *)self->_undoStateHUDTopConstraint setActive:1];
  v49 = [(UIUndoGestureInteraction *)self undoStateHUD];
  v50 = [v49 centerYAnchor];
  v51 = [(UIUndoGestureInteraction *)self layoutGuide];
  v52 = [v51 topAnchor];
  v61 = [v50 constraintEqualToAnchor:v52 constant:21.0];

  LODWORD(v53) = 1144750080;
  [v61 setPriority:v53];
  [v61 setActive:1];
  v54 = [(UIUndoGestureInteraction *)self undoStateHUD];
  v55 = [v54 centerXAnchor];
  v56 = [(UIUndoGestureInteraction *)self layoutGuide];
  v57 = [v56 centerXAnchor];
  v58 = [v55 constraintEqualToAnchor:v57 constant:0.0];
  undoStateHUDCenterConstraint = self->_undoStateHUDCenterConstraint;
  self->_undoStateHUDCenterConstraint = v58;

  [(NSLayoutConstraint *)self->_undoStateHUDCenterConstraint setActive:1];
  v60 = [(UIUndoGestureInteraction *)self view];
  [v60 layoutIfNeeded];
}

- (BOOL)needUpdateHUDForContainerChange
{
  v3 = [(UIUndoGestureInteraction *)self currentAppearance];
  if (v3 != [(UIUndoGestureInteraction *)self keyboardAppearance])
  {
    return 1;
  }

  [(UIUndoGestureInteraction *)self currentActuallSceneBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIUndoGestureInteraction *)self actualSceneBounds];
  v20.origin.x = v12;
  v20.origin.y = v13;
  v20.size.width = v14;
  v20.size.height = v15;
  v19.origin.x = v5;
  v19.origin.y = v7;
  v19.size.width = v9;
  v19.size.height = v11;
  if (!CGRectEqualToRect(v19, v20))
  {
    return 1;
  }

  v16 = [(UIUndoGestureInteraction *)self layoutGuide];
  v17 = v16 == 0;

  return v17;
}

- (void)_createAndUpdateUndoInteractiveHUDIfNecessary
{
  v3 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  if (!v3 || [(UIUndoGestureInteraction *)self needUpdateHUDForContainerChange])
  {

LABEL_4:
    [(UIUndoGestureInteraction *)self layoutUndoInteractiveHUD];
    [(UIUndoGestureInteraction *)self setCurrentAppearance:[(UIUndoGestureInteraction *)self keyboardAppearance]];
    goto LABEL_5;
  }

  v4 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  v5 = [v4 mode];
  interactiveHUDMode = self->_interactiveHUDMode;

  if (v5 != interactiveHUDMode)
  {
    goto LABEL_4;
  }

LABEL_5:
  v7 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  [v7 setNeedsLayout];
}

- (void)_createAndUpdateUndoStateHUDIfNecessary
{
  v3 = [(UIUndoGestureInteraction *)self undoStateHUD];
  if (!v3 || (v4 = v3, v5 = [(UIUndoGestureInteraction *)self needUpdateHUDForContainerChange], v4, v5))
  {
    [(UIUndoGestureInteraction *)self layoutUndoStateHUD];
    [(UIUndoGestureInteraction *)self setCurrentAppearance:[(UIUndoGestureInteraction *)self keyboardAppearance]];
  }

  v6 = [(UIUndoGestureInteraction *)self undoStateHUD];
  [v6 setNeedsLayout];
}

- (void)animateInStateHUD
{
  v3 = [(UIUndoGestureInteraction *)self undoStateHUD];
  v4 = [v3 controlType];

  if (v4 != 1)
  {
    v7 = [(UIUndoGestureInteraction *)self undoStateHUD];
    v8 = [v7 controlType];

    if (v8 == 2)
    {
      undoStateHUDCenterConstraint = self->_undoStateHUDCenterConstraint;
      v6 = -15.0;
      goto LABEL_5;
    }

    v9 = [(UIUndoGestureInteraction *)self undoStateHUD];
    if ([v9 controlType] == 4)
    {
    }

    else
    {
      v10 = [(UIUndoGestureInteraction *)self undoStateHUD];
      v11 = [v10 controlType];

      if (v11 != 3)
      {
        v19 = [(UIUndoGestureInteraction *)self undoStateHUD];
        v20 = [v19 controlType];

        if (v20 != 5)
        {
          goto LABEL_11;
        }

        v21 = [(UIUndoGestureInteraction *)self undoStateHUD];
        v22 = [v21 undoStateHUDWidthConstraint];
        [v22 setConstant:-30.0];

        v14 = [(UIUndoGestureInteraction *)self undoStateHUD];
        v15 = [v14 undoStateHUDHeightConstraint];
        v16 = v15;
        v17 = -30.0;
        goto LABEL_10;
      }
    }

    v12 = [(UIUndoGestureInteraction *)self undoStateHUD];
    v13 = [v12 undoStateHUDWidthConstraint];
    [v13 setConstant:30.0];

    v14 = [(UIUndoGestureInteraction *)self undoStateHUD];
    v15 = [v14 undoStateHUDHeightConstraint];
    v16 = v15;
    v17 = 30.0;
LABEL_10:
    [v15 setConstant:v17];

    goto LABEL_11;
  }

  undoStateHUDCenterConstraint = self->_undoStateHUDCenterConstraint;
  v6 = 15.0;
LABEL_5:
  [(NSLayoutConstraint *)undoStateHUDCenterConstraint setConstant:v6];
LABEL_11:
  v18 = [(UIUndoGestureInteraction *)self view];
  [v18 layoutIfNeeded];

  v23[4] = self;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __45__UIUndoGestureInteraction_animateInStateHUD__block_invoke;
  v24[3] = &unk_1E70F3590;
  v24[4] = self;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __45__UIUndoGestureInteraction_animateInStateHUD__block_invoke_2;
  v23[3] = &unk_1E70F5AC0;
  [UIView animateWithDuration:0 delay:v24 usingSpringWithDamping:v23 initialSpringVelocity:0.7 options:0.0 animations:0.5 completion:0.0];
}

void __45__UIUndoGestureInteraction_animateInStateHUD__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUndoStateHUDIsAnimating:1];
  v2 = [*(a1 + 32) undoStateHUD];
  [v2 setAlpha:1.0];

  v3 = [*(a1 + 32) undoStateHUD];
  if ([v3 controlType] == 1)
  {

LABEL_4:
    [*(*(a1 + 32) + 112) setConstant:0.0];
    goto LABEL_10;
  }

  v4 = [*(a1 + 32) undoStateHUD];
  v5 = [v4 controlType];

  if (v5 == 2)
  {
    goto LABEL_4;
  }

  v6 = [*(a1 + 32) undoStateHUD];
  if ([v6 controlType] == 4)
  {
    goto LABEL_8;
  }

  v7 = [*(a1 + 32) undoStateHUD];
  if ([v7 controlType] == 3)
  {

LABEL_8:
LABEL_9:
    v8 = [*(a1 + 32) undoStateHUD];
    v9 = [v8 undoStateHUDWidthConstraint];
    [v9 setConstant:0.0];

    v10 = [*(a1 + 32) undoStateHUD];
    v11 = [v10 undoStateHUDHeightConstraint];
    [v11 setConstant:0.0];

    goto LABEL_10;
  }

  v12 = [*(a1 + 32) undoStateHUD];
  v13 = [v12 controlType];

  if (v13 == 5)
  {
    goto LABEL_9;
  }

LABEL_10:
  v14 = [*(a1 + 32) view];
  [v14 layoutIfNeeded];
}

- (void)animateDisplayingStateHUD
{
  v3 = [(UIUndoGestureInteraction *)self undoStateHUD];
  v4 = [v3 controlType];

  if (v4 == 1)
  {
    _Q0 = xmmword_18A680860;
LABEL_9:
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __53__UIUndoGestureInteraction_animateDisplayingStateHUD__block_invoke;
    v18[3] = &unk_1E70F6848;
    v18[4] = self;
    v19 = _Q0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __53__UIUndoGestureInteraction_animateDisplayingStateHUD__block_invoke_2;
    v17[3] = &unk_1E70F3CD8;
    v17[5] = 0;
    v17[6] = 0;
    v17[4] = self;
    [UIView animateWithDuration:v18 animations:v17 completion:0.1];
    return;
  }

  v6 = [(UIUndoGestureInteraction *)self undoStateHUD];
  v7 = [v6 controlType];

  if (v7 == 2)
  {
    _Q0 = xmmword_18A680870;
    goto LABEL_9;
  }

  v8 = [(UIUndoGestureInteraction *)self undoStateHUD];
  if ([v8 controlType] == 4)
  {

LABEL_8:
    __asm { FMOV            V0.2D, #-3.75 }

    goto LABEL_9;
  }

  v9 = [(UIUndoGestureInteraction *)self undoStateHUD];
  v10 = [v9 controlType];

  if (v10 == 3)
  {
    goto LABEL_8;
  }

  v15 = [(UIUndoGestureInteraction *)self undoStateHUD];
  v16 = [v15 controlType];

  if (v16 == 5)
  {
    __asm { FMOV            V0.2D, #3.75 }

    goto LABEL_9;
  }
}

void __53__UIUndoGestureInteraction_animateDisplayingStateHUD__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUndoStateHUDIsAnimating:1];
  v2 = [*(a1 + 32) undoStateHUD];
  if ([v2 controlType] == 1)
  {

LABEL_4:
    [*(*(a1 + 32) + 112) setConstant:*(a1 + 40)];
    goto LABEL_10;
  }

  v3 = [*(a1 + 32) undoStateHUD];
  v4 = [v3 controlType];

  if (v4 == 2)
  {
    goto LABEL_4;
  }

  v5 = [*(a1 + 32) undoStateHUD];
  if ([v5 controlType] == 4)
  {
    goto LABEL_8;
  }

  v6 = [*(a1 + 32) undoStateHUD];
  if ([v6 controlType] == 3)
  {

LABEL_8:
LABEL_9:
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) undoStateHUD];
    v9 = [v8 undoStateHUDWidthConstraint];
    [v9 setConstant:v7];

    v10 = *(a1 + 48);
    v11 = [*(a1 + 32) undoStateHUD];
    v12 = [v11 undoStateHUDHeightConstraint];
    [v12 setConstant:v10];

    goto LABEL_10;
  }

  v13 = [*(a1 + 32) undoStateHUD];
  v14 = [v13 controlType];

  if (v14 == 5)
  {
    goto LABEL_9;
  }

LABEL_10:
  v15 = [*(a1 + 32) view];
  [v15 layoutIfNeeded];
}

uint64_t __53__UIUndoGestureInteraction_animateDisplayingStateHUD__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setUndoStateHUDIsAnimating:0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__UIUndoGestureInteraction_animateDisplayingStateHUD__block_invoke_3;
  v4[3] = &unk_1E70F6848;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__UIUndoGestureInteraction_animateDisplayingStateHUD__block_invoke_4;
  v3[3] = &unk_1E70F5AC0;
  v3[4] = v5;
  return [UIView animateWithDuration:v4 animations:v3 completion:0.2];
}

void __53__UIUndoGestureInteraction_animateDisplayingStateHUD__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setUndoStateHUDIsAnimating:1];
  v2 = [*(a1 + 32) undoStateHUD];
  if ([v2 controlType] == 1)
  {

LABEL_4:
    [*(*(a1 + 32) + 112) setConstant:*(a1 + 40)];
    goto LABEL_10;
  }

  v3 = [*(a1 + 32) undoStateHUD];
  v4 = [v3 controlType];

  if (v4 == 2)
  {
    goto LABEL_4;
  }

  v5 = [*(a1 + 32) undoStateHUD];
  if ([v5 controlType] == 4)
  {
    goto LABEL_8;
  }

  v6 = [*(a1 + 32) undoStateHUD];
  if ([v6 controlType] == 3)
  {

LABEL_8:
LABEL_9:
    v7 = *(a1 + 40);
    v8 = [*(a1 + 32) undoStateHUD];
    v9 = [v8 undoStateHUDWidthConstraint];
    [v9 setConstant:v7];

    v10 = *(a1 + 48);
    v11 = [*(a1 + 32) undoStateHUD];
    v12 = [v11 undoStateHUDHeightConstraint];
    [v12 setConstant:v10];

    goto LABEL_10;
  }

  v13 = [*(a1 + 32) undoStateHUD];
  v14 = [v13 controlType];

  if (v14 == 5)
  {
    goto LABEL_9;
  }

LABEL_10:
  v15 = [*(a1 + 32) view];
  [v15 layoutIfNeeded];
}

- (void)_installUndoManagerObservers
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__updateHUDControlState name:*MEMORY[0x1E696AA30] object:0];
  [v3 addObserver:self selector:sel__updateHUDControlState name:*MEMORY[0x1E696AA28] object:0];
  [v3 addObserver:self selector:sel__updateHUDControlState name:*MEMORY[0x1E696AA18] object:0];
}

- (void)_uninstallUndoManagerObservers
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E696AA30] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E696AA28] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E696AA18] object:0];
}

- (void)setUndoHUDType:(int64_t)a3 visibility:(BOOL)a4
{
  v4 = a4;
  v7 = [(UIUndoGestureInteraction *)self currentStateHUDVisible];
  v8 = [(UIUndoGestureInteraction *)self currentInteractiveHUDVisible];
  if (a3)
  {
    if (a3 == 1)
    {
      if (v4)
      {
        [(UIUndoGestureInteraction *)self touchUndoStateHUDDismissTimer];
        if (v7)
        {
          [(UIUndoGestureInteraction *)self animateDisplayingStateHUD];
        }

        else
        {
          [(UIUndoGestureInteraction *)self animateInStateHUD];
        }
      }

      else
      {
        v13 = [(UIUndoGestureInteraction *)self undoStateHUDIsAnimating];
        v14 = 0.0;
        if (v13)
        {
          v14 = 0.2;
        }

        v39[4] = self;
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke;
        v40[3] = &unk_1E70F32F0;
        v40[4] = self;
        v40[5] = 0;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_2;
        v39[3] = &unk_1E70F5AC0;
        [UIView animateWithDuration:0 delay:v40 options:v39 animations:0.2 completion:v14];
      }
    }
  }

  else if (v8 != v4)
  {
    if (v4)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    if (v4)
    {
      v10 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
      [v10 updateHUDControlState];
    }

    if (v7)
    {
      [(UIUndoGestureInteraction *)self _uninstallUndoManagerObservers];
      [(UIUndoGestureInteraction *)self touchUndoStateHUDDismissTimer];
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_3;
      v37 = &unk_1E70F3590;
      v38 = self;
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_4;
      v30 = &unk_1E7119868;
      v31 = self;
      v32 = v9;
      LOBYTE(v33) = v4;
      v11 = &v34;
      v12 = &v27;
    }

    else
    {
      [(UIUndoGestureInteraction *)self _installUndoManagerObservers];
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_9;
      v24 = &unk_1E70F32F0;
      v25 = self;
      v26 = v9;
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_10;
      v19 = &__block_descriptor_33_e8_v12__0B8l;
      LOBYTE(v20) = v4;
      v11 = &v21;
      v12 = &v16;
    }

    [UIView animateWithDuration:v11 animations:v12 completion:0.2, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, *&v26, v27, v28, v29, v30, v31, *&v32, v33, v34, v35, v36, v37, v38];
  }

  v15 = [(UIUndoGestureInteraction *)self view];
  [v15 layoutIfNeeded];
}

void __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setUndoStateHUDIsAnimating:1];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) undoStateHUD];
  [v3 setAlpha:v2];
}

void __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setUndoStateHUDIsAnimating:1];
  v2 = [*(a1 + 32) undoStateHUDTopConstraint];
  [v2 setConstant:60.0];

  v3 = [*(a1 + 32) view];
  [v3 layoutIfNeeded];
}

uint64_t __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_4(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_5;
  v4[3] = &unk_1E70F32F0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_6;
  v2[3] = &unk_1E70FA0F0;
  v2[4] = v5;
  v3 = *(a1 + 48);
  return [UIView animateWithDuration:v4 animations:v2 completion:0.2];
}

void __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) setUndoStateHUDIsAnimating:1];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) undoInteractiveHUD];
  [v3 setAlpha:v2];
}

uint64_t __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_6(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_7;
  v4[3] = &unk_1E70F3590;
  v5 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_8;
  v2[3] = &unk_1E70FA0F0;
  v2[4] = v5;
  v3 = *(a1 + 40);
  return [UIView animateWithDuration:v4 animations:v2 completion:0.2];
}

void __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_7(uint64_t a1)
{
  [*(a1 + 32) setUndoStateHUDIsAnimating:1];
  v2 = [*(a1 + 32) undoStateHUD];
  [v2 setAlpha:0.0];
}

void __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) setUndoStateHUDIsAnimating:0];
  v2 = [*(a1 + 32) undoStateHUDTopConstraint];
  [v2 setConstant:31.0];

  [*(a1 + 32) clearUndoStateHUDDismissTimer];
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = +[UIKeyboardImpl activeInstance];
    [v3 set_mimicShiftBeingHeld:0];
  }
}

void __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) undoInteractiveHUD];
  [v2 setAlpha:v1];
}

void __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_10(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    v2 = +[UIKeyboardImpl activeInstance];
    [v2 set_mimicShiftBeingHeld:0];
  }
}

- (void)setUndoInteractiveHUDVisibility:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    self->_interactiveHUDMode = 0;
    [(UIUndoGestureInteraction *)self _createAndUpdateUndoInteractiveHUDIfNecessary];
    v5 = [(UIUndoGestureInteraction *)self view];
    v6 = [_UIEditMenuSceneComponent sceneComponentForView:v5];
    [v6 dismissCurrentMenu];
  }

  [(UIUndoGestureInteraction *)self setUndoHUDType:0 visibility:v3];
}

- (void)setPasteConfirmationHUDVisibility:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    self->_interactiveHUDMode = 1;
    [(UIUndoGestureInteraction *)self _createAndUpdateUndoInteractiveHUDIfNecessary];
  }

  [(UIUndoGestureInteraction *)self setUndoHUDType:0 visibility:v3];
}

- (void)setUndoStateHUDVisibility:(BOOL)a3 withType:(int64_t)a4 available:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  if (![(UIUndoGestureInteraction *)self currentInteractiveHUDVisible])
  {
    if (v7)
    {
      [(UIUndoGestureInteraction *)self _createAndUpdateUndoStateHUDIfNecessary];
      v9 = [(UIUndoGestureInteraction *)self undoStateHUD];
      [v9 updateUndoStateHUDControlType:a4 available:v5];
    }

    [(UIUndoGestureInteraction *)self setUndoHUDType:1 visibility:v7];
  }
}

- (void)touchUndoStateHUDDismissTimer
{
  v3 = [(UIUndoGestureInteraction *)self undoStateHUDDismissTimer];

  if (v3)
  {
    v4 = [(UIUndoGestureInteraction *)self undoStateHUDDismissTimer];
    [(UIDelayedAction *)v4 touch];
  }

  else
  {
    v4 = [[UIDelayedAction alloc] initWithTarget:self action:sel_undoStateHUDDismissTimerElaspsed_ userInfo:0 delay:2.0];
    [(UIUndoGestureInteraction *)self setUndoStateHUDDismissTimer:?];
  }
}

- (void)clearUndoStateHUDDismissTimer
{
  v3 = [(UIUndoGestureInteraction *)self undoStateHUDDismissTimer];
  [v3 cancel];

  [(UIUndoGestureInteraction *)self setUndoStateHUDDismissTimer:0];
}

- (void)undoStateHUDDismissTimerElaspsed:(id)a3
{
  if ([(UIUndoGestureInteraction *)self currentStateHUDVisible]&& [(UIUndoGestureInteraction *)self currentInteractiveHUDVisible])
  {

    [(UIUndoGestureInteraction *)self touchUndoStateHUDDismissTimer];
  }

  else
  {
    [(UIUndoGestureInteraction *)self setUndoStateHUDVisibility:0 withType:0 available:1];
    v4 = [(UIUndoGestureInteraction *)self undoStateHUDTopConstraint];
    [v4 setConstant:31.0];
  }
}

- (void)_removeGestureRecognizers
{
  v3 = [(UIUndoGestureInteraction *)self view];
  v4 = [(UIUndoGestureInteraction *)self observerGesture];
  [v3 removeGestureRecognizer:v4];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = [(UIUndoGestureInteraction *)self view];
    v6 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    [v5 removeGestureRecognizer:v6];

    v7 = [(UIUndoGestureInteraction *)self view];
    v8 = [(UIUndoGestureInteraction *)self threeFingerSlide];
    [v7 removeGestureRecognizer:v8];

    v9 = [(UIUndoGestureInteraction *)self view];
    v10 = [(UIUndoGestureInteraction *)self threeFingerLongPress];
    [v9 removeGestureRecognizer:v10];

    v11 = [(UIUndoGestureInteraction *)self view];
    v12 = [(UIUndoGestureInteraction *)self threeFingerPinch];
    [v11 removeGestureRecognizer:v12];

    v13 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];

    if (v13)
    {
      v15 = [(UIUndoGestureInteraction *)self view];
      v14 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
      [v15 removeGestureRecognizer:v14];
    }
  }
}

- (id)_undoManager
{
  v2 = [(UIUndoGestureInteraction *)self currentResponder];
  v3 = [v2 undoManager];

  return v3;
}

- (unint64_t)privateEditingInteractionOptions
{
  v2 = [(UIUndoGestureInteraction *)self currentResponder];
  if (!v2)
  {
    return 6;
  }

  v3 = v2;
  v4 = 6;
  while (1)
  {
    if (objc_opt_respondsToSelector())
    {
      if ([v3 editingInteractionConfiguration])
      {
        v5 = 6;
      }

      else
      {
        v5 = 0;
      }

      v4 &= v5;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      break;
    }

    v6 = [v3 nextResponder];

    v3 = v6;
    if (!v6)
    {
      return v4;
    }
  }

  return v4;
}

- (BOOL)undoManagerOperationsUndoRedoAvailable
{
  if ([(UIUndoGestureInteraction *)self canUndo])
  {
    return 1;
  }

  return [(UIUndoGestureInteraction *)self canRedo];
}

- (BOOL)undoManagerOperationsCutCopyPasteAvailable
{
  if ([(UIUndoGestureInteraction *)self canCut]|| [(UIUndoGestureInteraction *)self canCopy])
  {
    return 1;
  }

  return [(UIUndoGestureInteraction *)self canPaste];
}

- (BOOL)editingInteractionOptionsAllowGestureRecognizerToBegin:(id)a3
{
  v4 = a3;
  v5 = [(UIUndoGestureInteraction *)self currentResponder];

  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = [(UIUndoGestureInteraction *)self observerGesture];

  if (v6 != v4)
  {
    v7 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    if (v7 == v4)
    {
      v10 = 6;
    }

    else
    {
      v8 = [(UIUndoGestureInteraction *)self threeFingerLongPress];

      if (v8 == v4)
      {
        v10 = 6;
        goto LABEL_13;
      }

      v7 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
      if (v7 != v4)
      {
        v9 = [(UIUndoGestureInteraction *)self threeFingerSlide];

        if (v9)
        {
          v10 = 2;
LABEL_13:
          v11 = ([(UIUndoGestureInteraction *)self privateEditingInteractionOptions]& v10) != 0;
          goto LABEL_16;
        }

        v12 = [(UIUndoGestureInteraction *)self threeFingerPinch];

        if (v12 == v4)
        {
          v10 = 4;
          goto LABEL_13;
        }

LABEL_15:
        v11 = 0;
        goto LABEL_16;
      }

      v10 = 2;
    }

    goto LABEL_13;
  }

  v11 = [(UIUndoGestureInteraction *)self currentInteractiveHUDVisible];
LABEL_16:

  return v11;
}

- (BOOL)textEditingOperationsAvailableWithGestureRecognizer:(id)a3
{
  v4 = a3;
  if (![(UIUndoGestureInteraction *)self editingInteractionOptionsAllowGestureRecognizerToBegin:v4])
  {
    goto LABEL_9;
  }

  v5 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];

  v6 = self;
  if (v5 == v4)
  {
    goto LABEL_13;
  }

  v7 = [(UIUndoGestureInteraction *)self threeFingerLongPress];

  if (v7 == v4)
  {
    if ([(UIUndoGestureInteraction *)self interactiveHUDIsVisible])
    {
LABEL_9:
      v12 = 0;
      goto LABEL_16;
    }

    v6 = self;
LABEL_13:
    if ([(UIUndoGestureInteraction *)v6 undoManagerOperationsUndoRedoAvailable])
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  v8 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
  v9 = v8;
  if (v8 == v4)
  {

    goto LABEL_11;
  }

  v10 = [(UIUndoGestureInteraction *)self threeFingerSlide];

  if (v10 == v4)
  {
LABEL_11:
    v13 = [(UIUndoGestureInteraction *)self undoManagerOperationsUndoRedoAvailable];
LABEL_15:
    v12 = v13;
    goto LABEL_16;
  }

  v11 = [(UIUndoGestureInteraction *)self threeFingerPinch];

  if (v11 == v4)
  {
LABEL_14:
    v13 = [(UIUndoGestureInteraction *)self undoManagerOperationsCutCopyPasteAvailable];
    goto LABEL_15;
  }

LABEL_7:
  v12 = 1;
LABEL_16:

  return v12;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = +[UIWindowScene _keyWindowScene];
  v6 = [v5 _visibleWindows];

  v7 = [(UIUndoGestureInteraction *)self view];
  v8 = [v7 window];

  if (v6 && [v6 count] && objc_msgSend(v6, "containsObject:", v8))
  {
    v9 = [(UIUndoGestureInteraction *)self observerGesture];

    if (v9 == v4)
    {
      v10 = [(UIUndoGestureInteraction *)self currentInteractiveHUDVisible];
    }

    else
    {
      v10 = [(UIUndoGestureInteraction *)self textEditingOperationsAvailableWithGestureRecognizer:v4];
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)iWorkFamily
{
  if (_MergedGlobals_1220 != -1)
  {
    dispatch_once(&_MergedGlobals_1220, &__block_literal_global_429);
  }

  v3 = qword_1ED49F9F8;

  return v3;
}

void __39__UIUndoGestureInteraction_iWorkFamily__block_invoke()
{
  v0 = qword_1ED49F9F8;
  qword_1ED49F9F8 = &unk_1EFE2D090;
}

- (BOOL)bundleIniWorkFamily:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [objc_opt_class() iWorkFamily];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v9 + 1) + 8 * i) isEqualToString:v3])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
  v9 = v8;
  if (v8 == v6)
  {

    goto LABEL_7;
  }

  v10 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];

  if (v10 == v6)
  {
LABEL_7:
    v15 = [v7 _isGestureType:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v15)
    {
      v17 = isKindOfClass;
      v18 = _UIMainBundleIdentifier();
      v19 = [(UIUndoGestureInteraction *)self bundleIniWorkFamily:v18];

      v20 = [v7 numberOfTouchesRequired];
      v21 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
      v22 = [v21 numberOfTouchesRequired];

      if ((v17 & 1) == 0)
      {
        v14 = (v20 == v22) & ~v19;
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  v11 = [(UIUndoGestureInteraction *)self threeFingerSlide];

  if (v11 != v6 || ![v7 _isGestureType:8])
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v12 = [v7 minimumNumberOfTouches];
  v13 = [(UIUndoGestureInteraction *)self threeFingerSlide];
  v14 = v12 == [v13 minimumNumberOfTouches];

LABEL_10:
  return v14;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v9 = a3;
  v10 = a4;
  v11 = [(UIUndoGestureInteraction *)self threeFingerLongPress];
  if (v11 == v9)
  {
    v19 = [(UIUndoGestureInteraction *)self threeFingerSlide];
    if (v19 == v10)
    {
      v14 = 1;
LABEL_21:

      goto LABEL_22;
    }
  }

  v12 = [(UIUndoGestureInteraction *)self threeFingerSlide];
  if (v12 == v9)
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v4 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    if (v4 == v9)
    {
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v5 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
      if (v5 == v9)
      {
        v16 = 0;
        v15 = 1;
      }

      else
      {
        v13 = [(UIUndoGestureInteraction *)self threeFingerLongPress];
        v6 = v13;
        if (v13 != v9)
        {

          v14 = 0;
          goto LABEL_18;
        }

        v15 = 1;
        v16 = 1;
      }
    }
  }

  v17 = [(UIUndoGestureInteraction *)self threeFingerPinch];
  v14 = v17 == v10;

  if (v16)
  {

    if ((v15 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v15)
  {
LABEL_14:
  }

LABEL_15:
  if (v12 != v9)
  {
  }

LABEL_18:
  if (v11 == v9)
  {
    goto LABEL_21;
  }

LABEL_22:

  return v14;
}

- (void)touchMultiPansTimer
{
  v3 = [(UIUndoGestureInteraction *)self multiPansTimer];

  if (v3)
  {
    v4 = [(UIUndoGestureInteraction *)self multiPansTimer];
    [(UIDelayedAction *)v4 touch];
  }

  else
  {
    v4 = [[UIDelayedAction alloc] initWithTarget:self action:sel_multiPansTimerElaspsed_ userInfo:0 delay:0.5];
    [(UIUndoGestureInteraction *)self setMultiPansTimer:?];
  }
}

- (void)clearMultiPansTimer
{
  [(UIUndoGestureInteraction *)self setPreviousRecognizedPanDirection:0];
  [(UIUndoGestureInteraction *)self setPanDownStateChangedCounter:0];
  v3 = [(UIUndoGestureInteraction *)self multiPansTimer];
  [v3 cancel];

  [(UIUndoGestureInteraction *)self setMultiPansTimer:0];
}

- (void)multiPansTimerElaspsed:(id)a3
{
  [(UIUndoGestureInteraction *)self setPreviousRecognizedPanDirection:0];

  [(UIUndoGestureInteraction *)self setPanDownStateChangedCounter:0];
}

- (void)observerGestureHandler:(id)a3
{
  v4 = a3;
  v5 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  LOBYTE(v5) = [v10 pointInside:0 withEvent:{v7, v9}];

  if ((v5 & 1) == 0 && [(UIUndoGestureInteraction *)self currentInteractiveHUDVisible])
  {
    [(UIUndoGestureInteraction *)self setUndoInteractiveHUDVisibility:0];
    v11 = [MEMORY[0x1E69D4E18] sharedInstance];
    [v11 logBlock:&__block_literal_global_57_0 domain:@"com.apple.keyboard.UIKit"];
  }

  v12 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UIUndoGestureInteraction_observerGestureHandler___block_invoke_2;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_after(v12, MEMORY[0x1E69E96A0], block);
}

id __51__UIUndoGestureInteraction_observerGestureHandler___block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"KeyboardEventType";
  v2[1] = @"Operation";
  v3[0] = @"TextEditing";
  v3[1] = @"Hide editing HUD";
  v2[2] = @"TriggerType";
  v3[2] = @"Tap to dismiss";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];

  return v0;
}

- (void)deactiveActiveKeysIfNeeded:(id)a3
{
  if ([a3 state] >= 3)
  {
    v3 = +[UIKeyboardImpl activeInstance];
    [v3 _deactiveActiveKeys];
  }
}

- (void)threeFingerSingleTap:(id)a3
{
  v4 = a3;
  if ([v4 continuousTapRecognition] && (objc_msgSend(v4, "state") == 1 || objc_msgSend(v4, "state") == 2))
  {
    [(UIUndoGestureInteraction *)self deactiveActiveKeysIfNeeded:v4];
    if ([v4 tapCount] != 1)
    {
      [(UIUndoGestureInteraction *)self threeFingerDoubleTapUndoAction];
      [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Undo" trigger:@"UndoHUDGestureDoubleTap"];
      goto LABEL_9;
    }
  }

  else
  {
    if ([v4 continuousTapRecognition])
    {
      goto LABEL_9;
    }

    [(UIUndoGestureInteraction *)self deactiveActiveKeysIfNeeded:v4];
  }

  [(UIUndoGestureInteraction *)self _threeFingerSingleTapAction];
LABEL_9:
}

- (void)_threeFingerSingleTapAction
{
  [(UIUndoGestureInteraction *)self currentTime];
  v4 = v3;
  [(UIUndoGestureInteraction *)self lastTapTimestamp];
  v6 = v4 - v5;
  if (v6 < 1.2 && -[UIUndoGestureInteraction currentStateHUDVisible](self, "currentStateHUDVisible") && (-[UIUndoGestureInteraction undoStateHUD](self, "undoStateHUD"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 controlType], v7, v8 == 1))
  {
    [(UIUndoGestureInteraction *)self threeFingerDoubleTapUndoAction];
    [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Undo" trigger:@"UndoHUDGestureDoubleTapShortHand"];
  }

  else
  {
    if (!-[UIUndoGestureInteraction currentInteractiveHUDVisible](self, "currentInteractiveHUDVisible") && (!-[UIUndoGestureInteraction currentStateHUDVisible](self, "currentStateHUDVisible") || -[UIUndoGestureInteraction currentStateHUDVisible](self, "currentStateHUDVisible") && ((-[UIUndoGestureInteraction undoStateHUD](self, "undoStateHUD"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 controlType], v12, v6 >= 1.2) ? (v14 = v13 == 1) : (v14 = 0), v14)))
    {
      [(UIUndoGestureInteraction *)self setUndoInteractiveHUDVisibility:1];
      v9 = [MEMORY[0x1E69D4E18] sharedInstance];
      v10 = v9;
      v11 = &__block_literal_global_61_3;
    }

    else
    {
      v9 = [MEMORY[0x1E69D4E18] sharedInstance];
      v10 = v9;
      v11 = &__block_literal_global_63_2;
    }

    [v9 logBlock:v11 domain:@"com.apple.keyboard.UIKit"];
  }

  [(UIUndoGestureInteraction *)self currentTime];

  [(UIUndoGestureInteraction *)self setLastTapTimestamp:?];
}

id __55__UIUndoGestureInteraction__threeFingerSingleTapAction__block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"KeyboardEventType";
  v2[1] = @"Operation";
  v3[0] = @"TextEditing";
  v3[1] = @"Show editing HUD";
  v2[2] = @"TriggerType";
  v3[2] = @"Three finger tap gesture";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];

  return v0;
}

id __55__UIUndoGestureInteraction__threeFingerSingleTapAction__block_invoke_2()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2[0] = @"KeyboardEventType";
  v2[1] = @"Operation";
  v3[0] = @"TextEditing";
  v3[1] = @"Editing HUD already shown";
  v2[2] = @"TriggerType";
  v3[2] = @"Three finger tap gesture";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:3];

  return v0;
}

- (void)threeFingerDoubleTapUndoAction
{
  [(UIUndoGestureInteraction *)self setUndoStateHUDVisibility:1 withType:1 available:[(UIUndoGestureInteraction *)self canUndo]];
  [(UIUndoGestureInteraction *)self undo:0];
  [(UIUndoGestureInteraction *)self currentTime];

  [(UIUndoGestureInteraction *)self setLastTapTimestamp:?];
}

- (void)threeFingerDoubleTap:(id)a3
{
  [(UIUndoGestureInteraction *)self deactiveActiveKeysIfNeeded:a3];
  [(UIUndoGestureInteraction *)self threeFingerDoubleTapUndoAction];

  [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Undo" trigger:@"UndoHUDGestureDoubleTap"];
}

- (void)threeFingerSlide:(id)a3
{
  v7 = a3;
  [(UIUndoGestureInteraction *)self deactiveActiveKeysIfNeeded:v7];
  if ([v7 state] == 1)
  {
    [(UIUndoGestureInteraction *)self disableEnclosingScrollViewScrolling];
  }

  v4 = [v7 state];
  if ((v4 - 3) < 2)
  {
    [(UIUndoGestureInteraction *)self _endPan:v7];
    goto LABEL_10;
  }

  if (v4 == 2)
  {
    [(UIUndoGestureInteraction *)self _updateUndoPan:v7];
    goto LABEL_10;
  }

  v5 = v4 == 1;
  v6 = v7;
  if (v5)
  {
    [(UIUndoGestureInteraction *)self _startUndoPan:v7];
LABEL_10:
    v6 = v7;
  }
}

- (void)threeFingerLongPress:(id)a3
{
  [(UIUndoGestureInteraction *)self deactiveActiveKeysIfNeeded:a3];
  if (![(UIUndoGestureInteraction *)self currentInteractiveHUDVisible])
  {

    [(UIUndoGestureInteraction *)self setUndoInteractiveHUDVisibility:1];
  }
}

- (void)clearMultiPinchTimer
{
  if ([(UIUndoGestureInteraction *)self multiPinchTimerOn])
  {
    [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_tooSlow_ object:0];
  }

  [(UIUndoGestureInteraction *)self setMultiPinchTimerOn:0];
}

- (void)startMultiPinchTimer:(double)a3
{
  [(UIUndoGestureInteraction *)self clearMultiPinchTimer];
  [(UIUndoGestureInteraction *)self setMultiPinchTimerOn:1];

  [(UIUndoGestureInteraction *)self performSelector:sel_tooSlow_ withObject:0 afterDelay:a3];
}

- (void)threeFingerPinch:(id)a3
{
  v6 = a3;
  [(UIUndoGestureInteraction *)self deactiveActiveKeysIfNeeded:v6];
  if ([v6 state] == 1)
  {
    [(UIUndoGestureInteraction *)self disableEnclosingScrollViewScrolling];
  }

  v4 = [v6 state];
  if (v4 > 3)
  {
    v5 = v6;
    if ((v4 - 4) >= 2)
    {
      goto LABEL_13;
    }

    [(UIUndoGestureInteraction *)self _cancelPinch:v6];
  }

  else if (v4 == 1)
  {
    [(UIUndoGestureInteraction *)self _startPinch:v6];
  }

  else
  {
    v5 = v6;
    if (v4 == 2)
    {
      [(UIUndoGestureInteraction *)self _updatePinch:v6];
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_13;
      }

      [(UIUndoGestureInteraction *)self _endPinch:v6];
    }
  }

  v5 = v6;
LABEL_13:
}

- (id)interactiveHUDButtonForDirection:(int64_t)a3
{
  v4 = 0;
  if (a3 > 7)
  {
    switch(a3)
    {
      case 10:
        v5 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
        v6 = [v5 aPasteButtonView];
        break;
      case 9:
        v5 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
        v6 = [v5 aCutButtonView];
        break;
      case 8:
        v5 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
        v6 = [v5 aCopyButtonView];
        break;
      default:
        goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      goto LABEL_15;
    }

    v7 = [(UIUndoGestureInteraction *)self isRTLMode];
    v5 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_13:
    v6 = [v5 leftButtonView];
    goto LABEL_14;
  }

  v8 = [(UIUndoGestureInteraction *)self isRTLMode];
  v5 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_9:
  v6 = [v5 rightButtonView];
LABEL_14:
  v4 = v6;

LABEL_15:

  return v4;
}

- (void)_startPinch:(id)a3
{
  [a3 avgTouchesToCentroidDistance];

  [(UIUndoGestureInteraction *)self setInitPinchableDistance:?];
}

- (void)_updatePinch:(id)a3
{
  v4 = a3;
  if ([(UIUndoGestureInteraction *)self currentInteractiveHUDVisible])
  {
    -[UIUndoGestureInteraction setPotentialPinchDirection:](self, "setPotentialPinchDirection:", [v4 pinchDirection]);
    [v4 avgTouchesToCentroidDistance];
    v6 = v5;
    if ([(UIUndoGestureInteraction *)self multiPinchTimerOn])
    {
      v7 = 9;
    }

    else
    {
      [(UIUndoGestureInteraction *)self initPinchableDistance];
      if (v6 <= v8)
      {
        v7 = 8;
      }

      else
      {
        v7 = 10;
      }
    }

    [(UIUndoGestureInteraction *)self setPotentialPinchDirection:v7];
    if ([(UIUndoGestureInteraction *)self potentialPinchDirection])
    {
      if (!-[UIUndoGestureInteraction currentInteractiveHUDVisible](self, "currentInteractiveHUDVisible") || (-[UIUndoGestureInteraction interactiveHUDButtonForDirection:](self, "interactiveHUDButtonForDirection:", -[UIUndoGestureInteraction potentialPinchDirection](self, "potentialPinchDirection")), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 state], v9, v10 != 2))
      {
        [(UIUndoGestureInteraction *)self initPinchableDistance];
        v12 = vabdd_f64(v6, v11);
        [(UIUndoGestureInteraction *)self initPinchableDistance];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __41__UIUndoGestureInteraction__updatePinch___block_invoke;
        v14[3] = &unk_1E70F32F0;
        v14[4] = self;
        v14[5] = fmin(v12 / (v13 * 0.1), 1.0);
        [UIView animateWithDuration:v14 animations:0.2];
      }
    }
  }
}

void __41__UIUndoGestureInteraction__updatePinch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) undoInteractiveHUD];
  [v2 updateControlWithDirection:objc_msgSend(*(a1 + 32) travelProgress:"potentialPinchDirection") isRTL:{objc_msgSend(*(a1 + 32), "isRTLMode"), *(a1 + 40)}];
}

- (void)_endPinch:(id)a3
{
  v4 = [a3 pinchDirection];

  [(UIUndoGestureInteraction *)self _endPinchWithDirection:v4];
}

- (void)_endPinchWithDirection:(int64_t)a3
{
  if (!-[UIUndoGestureInteraction currentInteractiveHUDVisible](self, "currentInteractiveHUDVisible") || (-[UIUndoGestureInteraction interactiveHUDButtonForDirection:](self, "interactiveHUDButtonForDirection:", a3), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 state], v5, v6 != 2))
  {
    if (a3 == 8)
    {
      [(UIUndoGestureInteraction *)self setUndoStateHUDVisibility:1 withType:[(UIUndoGestureInteraction *)self undoControlTypeWithDirection:8] available:[(UIUndoGestureInteraction *)self performActionWithDirection:8]];
      if (![(UIUndoGestureInteraction *)self multiPinchTimerOn])
      {
        [(UIUndoGestureInteraction *)self startMultiPinchTimer:2.0];
        a3 = 8;
LABEL_13:
        [(UIUndoGestureInteraction *)self fullyOpenAndCloseCoverWithBeginDirection:a3];
        if (![(UIUndoGestureInteraction *)self multiPinchTimerOn])
        {
          [(UIUndoGestureInteraction *)self setInitPinchableDistance:0.0];

          [(UIUndoGestureInteraction *)self setPotentialPinchDirection:0];
        }

        return;
      }

      [(UIUndoGestureInteraction *)self clearMultiPinchTimer];
      a3 = 9;
      v7 = [(UIUndoGestureInteraction *)self performActionWithDirection:9];
      v8 = self;
      v9 = 9;
LABEL_8:
      [(UIUndoGestureInteraction *)self setUndoStateHUDVisibility:1 withType:[(UIUndoGestureInteraction *)v8 undoControlTypeWithDirection:v9] available:v7];
      goto LABEL_13;
    }

    [(UIUndoGestureInteraction *)self clearMultiPinchTimer];
    if (a3)
    {
      v7 = [(UIUndoGestureInteraction *)self performActionWithDirection:a3];
      v8 = self;
      v9 = a3;
      goto LABEL_8;
    }
  }

  [(UIUndoGestureInteraction *)self fullyCloseCoverWithComplete:0];
}

- (void)_cancelPinch:(id)a3
{
  [(UIUndoGestureInteraction *)self fullyCloseCoverWithComplete:0];
  if (![(UIUndoGestureInteraction *)self multiPinchTimerOn])
  {
    [(UIUndoGestureInteraction *)self setInitPinchableDistance:0.0];
    [(UIUndoGestureInteraction *)self setPotentialPinchDirection:0];
    if ([(UIUndoGestureInteraction *)self undoStateHUDIsAnimating])
    {
      v4[4] = self;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __41__UIUndoGestureInteraction__cancelPinch___block_invoke;
      v5[3] = &unk_1E70F3590;
      v5[4] = self;
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __41__UIUndoGestureInteraction__cancelPinch___block_invoke_2;
      v4[3] = &unk_1E70F5AC0;
      [UIView animateWithDuration:v5 animations:v4 completion:0.2];
    }
  }
}

void __41__UIUndoGestureInteraction__cancelPinch___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 112) setConstant:0.0];
  v2 = [*(a1 + 32) undoStateHUD];
  v3 = [v2 undoStateHUDWidthConstraint];
  [v3 setConstant:0.0];

  v4 = [*(a1 + 32) undoStateHUD];
  v5 = [v4 undoStateHUDHeightConstraint];
  [v5 setConstant:0.0];

  v6 = [*(a1 + 32) view];
  [v6 layoutIfNeeded];
}

- (int64_t)slideDirectionWithGesture:(id)a3
{
  v4 = a3;
  v5 = [(UIUndoGestureInteraction *)self view];
  [v4 translationInView:v5];
  v7 = v6;

  v8 = fabs(v7);
  v9 = 2;
  if (v7 > 0.0)
  {
    v9 = 3;
  }

  if (v8 >= 5.0)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

- (BOOL)undoGestureIsMoving:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a3 _allActiveTouches];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * i) phase] == 2)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  return v8;
}

- (id)scrollViewForInputDelegate
{
  v2 = +[UIKeyboardImpl activeInstance];
  v3 = [v2 inputDelegate];

  if (v3 || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v4 = objc_claimAutoreleasedReturnValue(), [v4 delegateAsResponder], v3 = objc_claimAutoreleasedReturnValue(), v4, v3))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v3 _scroller];
      goto LABEL_10;
    }

    if ([v3 conformsToProtocol:&unk_1EFE8B2D0] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6 = [v3 textInputView];
      v7 = v6;
      if (v6)
      {
        v5 = [v6 _scroller];
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_10;
    }
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (void)disableEnclosingScrollViewScrolling
{
  v2 = [(UIUndoGestureInteraction *)self scrollViewForInputDelegate];
  if (v2)
  {
    v4 = v2;
    v3 = [v2 panGestureRecognizer];
    if ([v3 isEnabled])
    {
      [v3 setEnabled:0];
      [v3 setEnabled:1];
    }

    v2 = v4;
  }
}

- (void)_startUndoPan:(id)a3
{
  v4 = a3;
  v5 = [(UIUndoGestureInteraction *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  [(UIUndoGestureInteraction *)self setPreviousPanLocation:v7, v9];
  [(UIUndoGestureInteraction *)self setBeginPanDirection:0];
  [(UIUndoGestureInteraction *)self setPanDownStateChangedCounter:[(UIUndoGestureInteraction *)self panDownStateChangedCounter]+ 1];
  v10 = [MEMORY[0x1E69D4E18] sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__UIUndoGestureInteraction__startUndoPan___block_invoke;
  v12[3] = &unk_1E70FD370;
  v13 = v4;
  v11 = v4;
  [v10 logBlock:v12 domain:@"com.apple.keyboard.UIKit"];
}

id __42__UIUndoGestureInteraction__startUndoPan___block_invoke(uint64_t a1)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"TextEditing";
  v4[0] = @"KeyboardEventType";
  v4[1] = @"Operation";
  v1 = UIKBAnalyticsUndoPanForState([*(a1 + 32) state]);
  v4[2] = @"TriggerType";
  v5[1] = v1;
  v5[2] = @"Three finger pan gesture";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

- (void)_updateUndoPan:(id)a3
{
  v4 = a3;
  if ([(UIUndoGestureInteraction *)self undoGestureIsMoving:v4])
  {
    v5 = [(UIUndoGestureInteraction *)self view];
    [v4 locationInView:v5];
    v7 = v6;
    v9 = v8;

    v10 = [(UIUndoGestureInteraction *)self slideDirectionWithGesture:v4];
    if (v10)
    {
      v11 = v10;
      if (![(UIUndoGestureInteraction *)self beginPanDirection])
      {
        if ((v11 & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          [(UIUndoGestureInteraction *)self setRemainingDistanceToTravel:100.0];
          [(UIUndoGestureInteraction *)self setPreviousPanLocation:v7, v9];
        }

        [(UIUndoGestureInteraction *)self setBeginPanDirection:v11];
      }

      if ([(UIUndoGestureInteraction *)self currentInteractiveHUDVisible])
      {
        v12 = [(UIUndoGestureInteraction *)self interactiveHUDButtonForDirection:[(UIUndoGestureInteraction *)self beginPanDirection]];
        v13 = [v12 state];

        if (v13 != 2)
        {
          if ([(UIUndoGestureInteraction *)self beginPanDirection]== 2)
          {
            [(UIUndoGestureInteraction *)self previousPanLocation];
            v15 = vabdd_f64(v7, v14);
            if (v11 != 3)
            {
              if (v11 != 2)
              {
                goto LABEL_23;
              }

              goto LABEL_16;
            }

LABEL_18:
            [(UIUndoGestureInteraction *)self remainingDistanceToTravel];
            v17 = 100.0;
            if (v15 + v20 <= 100.0)
            {
              [(UIUndoGestureInteraction *)self remainingDistanceToTravel];
              v17 = v15 + v21;
            }

            goto LABEL_20;
          }

          if ([(UIUndoGestureInteraction *)self beginPanDirection]!= 3)
          {
            v17 = 0.0;
            v22 = 1.0;
            goto LABEL_22;
          }

          [(UIUndoGestureInteraction *)self previousPanLocation];
          v15 = vabdd_f64(v7, v16);
          if (v11 == 2)
          {
            goto LABEL_18;
          }

          if (v11 == 3)
          {
LABEL_16:
            [(UIUndoGestureInteraction *)self remainingDistanceToTravel];
            v17 = 0.0;
            if (v18 >= v15)
            {
              [(UIUndoGestureInteraction *)self remainingDistanceToTravel];
              v17 = v19 - v15;
            }

LABEL_20:
            v22 = v17 / 100.0;
LABEL_22:
            v24[0] = MEMORY[0x1E69E9820];
            v24[1] = 3221225472;
            v24[2] = __43__UIUndoGestureInteraction__updateUndoPan___block_invoke;
            v24[3] = &unk_1E70F32F0;
            v24[4] = self;
            *&v24[5] = v22;
            [UIView animateWithDuration:v24 animations:0.2];
            [(UIUndoGestureInteraction *)self setRemainingDistanceToTravel:v17];
            [(UIUndoGestureInteraction *)self setPreviousPanLocation:v7, v9];
            v23 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
            [v23 layoutIfNeeded];
          }
        }
      }
    }
  }

LABEL_23:
}

void __43__UIUndoGestureInteraction__updateUndoPan___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) undoInteractiveHUD];
  [v2 updateControlWithDirection:objc_msgSend(*(a1 + 32) travelProgress:"beginPanDirection") isRTL:{objc_msgSend(*(a1 + 32), "isRTLMode"), 1.0 - *(a1 + 40)}];
}

- (void)_endPan:(id)a3
{
  v10 = a3;
  if ([v10 state] == 3)
  {
    [(UIUndoGestureInteraction *)self clearMultiPinchTimer];
  }

  if ([(UIUndoGestureInteraction *)self currentInteractiveHUDVisible])
  {
    v4 = 0.8;
    if ([(UIUndoGestureInteraction *)self beginPanDirection]== 2 || [(UIUndoGestureInteraction *)self beginPanDirection]== 3)
    {
      v5 = 0x4059000000000000;
    }

    else
    {
      if ([(UIUndoGestureInteraction *)self beginPanDirection]!= 4 && [(UIUndoGestureInteraction *)self beginPanDirection]!= 5 && [(UIUndoGestureInteraction *)self beginPanDirection]!= 6)
      {
        v6 = 0.0;
        v4 = 0.0;
        if ([(UIUndoGestureInteraction *)self beginPanDirection]!= 7)
        {
          goto LABEL_15;
        }
      }

      v4 = 0.95;
      v5 = 0x4049000000000000;
    }

    v6 = *&v5;
LABEL_15:
    [(UIUndoGestureInteraction *)self remainingDistanceToTravel];
    v8 = v7 / v6;
    v9 = [(UIUndoGestureInteraction *)self beginPanDirection];
    [(UIUndoGestureInteraction *)self remainingDistanceToTravel];
    [(UIUndoGestureInteraction *)self animateSpringCoverWithSuccess:v8 < v4 direction:v9 remainingDistanceToTravel:?];
    goto LABEL_16;
  }

  if ([v10 state] == 3)
  {
    [(UIUndoGestureInteraction *)self _endPanWithDirection:[(UIUndoGestureInteraction *)self beginPanDirection]];
  }

LABEL_16:
}

- (BOOL)_endPanWithDirection:(int64_t)a3
{
  if (!a3)
  {
    return 0;
  }

  v5 = [(UIUndoGestureInteraction *)self performActionWithDirection:?];
  v6 = [(UIUndoGestureInteraction *)self undoControlTypeWithDirection:a3];
  [(UIUndoGestureInteraction *)self setUndoStateHUDVisibility:1 withType:v6 available:v5];
  if (!v5)
  {
    return 0;
  }

  v7 = [MEMORY[0x1E69D4E18] sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__UIUndoGestureInteraction__endPanWithDirection___block_invoke;
  v9[3] = &__block_descriptor_40_e5__8__0l;
  v9[4] = v6;
  [v7 logBlock:v9 domain:@"com.apple.keyboard.UIKit"];

  return 1;
}

id __49__UIUndoGestureInteraction__endPanWithDirection___block_invoke(uint64_t a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"TextEditing";
  v5[0] = @"KeyboardEventType";
  v5[1] = @"Operation";
  v1 = UIKBAnalyticsOperationForControlType(*(a1 + 32));
  v6[1] = v1;
  v6[2] = @"Three finger pan gesture";
  v5[2] = @"TriggerType";
  v5[3] = @"GestureState";
  v2 = _UIGestureRecognizerStateString(3uLL);
  v6[3] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];

  return v3;
}

- (int64_t)undoControlTypeWithDirection:(int64_t)a3
{
  if (a3 > 7)
  {
    switch(a3)
    {
      case 8:
        return 4;
      case 9:
        return 3;
      case 10:
        return 5;
    }

    return 0;
  }

  if (a3 == 2)
  {
    if ([(UIUndoGestureInteraction *)self isRTLMode])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (a3 != 3)
    {
      return 0;
    }

    if ([(UIUndoGestureInteraction *)self isRTLMode])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

- (BOOL)performActionWithDirection:(int64_t)a3
{
  v4 = 0;
  if (a3 <= 7)
  {
    if (a3 == 2)
    {
      if ([(UIUndoGestureInteraction *)self isRTLMode])
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (a3 != 3)
      {
        return v4;
      }

      if (![(UIUndoGestureInteraction *)self isRTLMode])
      {
LABEL_9:
        v4 = [(UIUndoGestureInteraction *)self canRedo];
        [(UIUndoGestureInteraction *)self redo:0];
        v5 = UIKBAnalyticsTextEditingOperationRedo;
        goto LABEL_14;
      }
    }

    v4 = [(UIUndoGestureInteraction *)self canUndo];
    [(UIUndoGestureInteraction *)self undo:0];
    v5 = UIKBAnalyticsTextEditingOperationUndo;
    goto LABEL_14;
  }

  switch(a3)
  {
    case 8:
      v4 = [(UIUndoGestureInteraction *)self canCopy];
      [(UIUndoGestureInteraction *)self copyOperation];
      v5 = UIKBAnalyticsTextEditingOperationCopy;
      goto LABEL_14;
    case 9:
      v4 = [(UIUndoGestureInteraction *)self canCut];
      [(UIUndoGestureInteraction *)self cutOperation];
      v5 = UIKBAnalyticsTextEditingOperationCut;
      goto LABEL_14;
    case 10:
      v4 = [(UIUndoGestureInteraction *)self canPaste];
      [(UIUndoGestureInteraction *)self pasteOperation];
      v5 = UIKBAnalyticsTextEditingOperationPaste;
LABEL_14:
      [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:*v5 trigger:@"UndoHUDGesturePan"];
      break;
  }

  return v4;
}

- (BOOL)performGestureWithDirection:(int64_t)a3 authenticationMessage:(id)a4
{
  v6 = a4;
  if (a3 != 1)
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v9 = +[UIKeyboardImpl activeInstance];
      [v9 _deactiveActiveKeys];

      if ([(UIUndoGestureInteraction *)self undoManagerOperationsUndoRedoAvailable])
      {
        v8 = [(UIUndoGestureInteraction *)self _endPanWithDirection:a3];
        goto LABEL_16;
      }
    }

    else if ((a3 | 2) == 0xA)
    {
      v10 = +[UIKeyboardImpl activeInstance];
      [v10 _deactiveActiveKeys];

      if ([(UIUndoGestureInteraction *)self undoManagerOperationsCutCopyPasteAvailable])
      {
        if (a3 == 10 && v6)
        {
          [UIPasteboard _attemptAuthenticationWithMessage:v6];
        }

        [(UIUndoGestureInteraction *)self _endPinchWithDirection:a3];
        goto LABEL_5;
      }
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v7 = +[UIKeyboardImpl activeInstance];
  [v7 _deactiveActiveKeys];

  if (![(UIUndoGestureInteraction *)self undoManagerOperationsUndoRedoAvailable]&& ![(UIUndoGestureInteraction *)self undoManagerOperationsCutCopyPasteAvailable])
  {
    goto LABEL_15;
  }

  [(UIUndoGestureInteraction *)self _threeFingerSingleTapAction];
LABEL_5:
  v8 = 1;
LABEL_16:

  return v8;
}

- (void)fullyOpenAndCloseCoverWithBeginDirection:(int64_t)a3
{
  v3[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__UIUndoGestureInteraction_fullyOpenAndCloseCoverWithBeginDirection___block_invoke;
  v4[3] = &unk_1E70F32F0;
  v4[4] = self;
  v4[5] = a3;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__UIUndoGestureInteraction_fullyOpenAndCloseCoverWithBeginDirection___block_invoke_2;
  v3[3] = &unk_1E70F5AC0;
  [UIView animateWithDuration:0 delay:v4 options:v3 animations:0.1 completion:0.0];
}

void __69__UIUndoGestureInteraction_fullyOpenAndCloseCoverWithBeginDirection___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v3 + 8) == 10)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = [v2 undoInteractiveHUD];
  [v5 updateControlWithDirection:*(a1 + 40) travelProgress:objc_msgSend(*(a1 + 32) isRTL:{"isRTLMode"), v4}];

  v6 = [*(a1 + 32) undoInteractiveHUD];
  [v6 layoutIfNeeded];
}

- (void)fullyCloseCoverWithComplete:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__UIUndoGestureInteraction_fullyCloseCoverWithComplete___block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [UIView animateWithDuration:0 delay:v3 options:a3 animations:0.1 completion:0.0];
}

void __56__UIUndoGestureInteraction_fullyCloseCoverWithComplete___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) undoInteractiveHUD];
  [v2 updateControlWithDirection:2 travelProgress:objc_msgSend(*(a1 + 32) isRTL:{"isRTLMode"), 0.0}];

  v3 = [*(a1 + 32) undoInteractiveHUD];
  [v3 updateControlWithDirection:3 travelProgress:objc_msgSend(*(a1 + 32) isRTL:{"isRTLMode"), 0.0}];

  v4 = [*(a1 + 32) undoInteractiveHUD];
  [v4 updateControlWithDirection:8 travelProgress:objc_msgSend(*(a1 + 32) isRTL:{"isRTLMode"), 0.0}];

  v5 = [*(a1 + 32) undoInteractiveHUD];
  [v5 updateControlWithDirection:9 travelProgress:objc_msgSend(*(a1 + 32) isRTL:{"isRTLMode"), 0.0}];

  v6 = [*(a1 + 32) undoInteractiveHUD];
  [v6 updateControlWithDirection:10 travelProgress:objc_msgSend(*(a1 + 32) isRTL:{"isRTLMode"), 1.0}];

  v7 = [*(a1 + 32) undoInteractiveHUD];
  [v7 layoutIfNeeded];
}

- (void)animateSpringCoverWithSuccess:(BOOL)a3 direction:(int64_t)a4 remainingDistanceToTravel:(double)a5
{
  if (a3 && ([(UIUndoGestureInteraction *)self performActionWithDirection:a4], a5 > 0.0))
  {

    [(UIUndoGestureInteraction *)self fullyOpenAndCloseCoverWithBeginDirection:a4];
  }

  else
  {

    [(UIUndoGestureInteraction *)self fullyCloseCoverWithComplete:0, a4, a5];
  }
}

- (BOOL)canUndo
{
  v2 = [(UIUndoGestureInteraction *)self _undoManager];
  v3 = [v2 canUndo];

  return v3;
}

- (BOOL)canRedo
{
  v2 = [(UIUndoGestureInteraction *)self _undoManager];
  v3 = [v2 canRedo];

  return v3;
}

- (void)_updateHUDControlState
{
  if ([(UIUndoGestureInteraction *)self currentInteractiveHUDVisible])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    [v3 setEditingTraitsMarkedDirty:1];

    v4 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
    [v4 updateHUDControlState];
  }
}

- (void)undo:(BOOL)a3
{
  v3 = [(UIUndoGestureInteraction *)self _undoManager];
  if ([v3 canUndo])
  {
    [v3 undo];
  }
}

- (void)redo:(BOOL)a3
{
  v3 = [(UIUndoGestureInteraction *)self _undoManager];
  if ([v3 canRedo])
  {
    [v3 redo];
  }
}

- (id)responderForOperation:(SEL)a3 withSender:(id)a4
{
  v6 = a4;
  v7 = [(UIUndoGestureInteraction *)self currentResponder];
  if (([v7 canPerformAction:a3 withSender:v6] & 1) == 0)
  {
    v8 = [UIApp _unswizzledTargetInChainForAction:a3 sender:v6];
    if (!v8)
    {
      goto LABEL_5;
    }

    v7 = v8;
  }

  v7 = v7;
  v8 = v7;
LABEL_5:

  return v8;
}

- (UIKBTextEditingTraits)editingTraits
{
  v3 = +[UIKeyboardImpl activeInstance];
  v4 = [(UIUndoGestureInteraction *)self currentResponder];
  v5 = [(UIKBTextEditingTraits *)self->_editingTraits firstResponder];

  v6 = _UIMainBundleIdentifier();
  v7 = [(UIUndoGestureInteraction *)self bundleIniWorkFamily:v6];

  if (v4 && (!self->_editingTraits || v5 != v4 || !v3 || (([v3 editingTraitsMarkedDirty] | v7) & 1) != 0))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__UIUndoGestureInteraction_editingTraits__block_invoke;
    v13[3] = &unk_1E7117648;
    v13[4] = self;
    v8 = [UIKBTextEditingTraits traitsForEditingInteractionWithFirstResponder:v4 canRespondBlock:v13 keyMaskFlags:2];
    editingTraits = self->_editingTraits;
    self->_editingTraits = v8;

    if (v3 && self->_editingTraits)
    {
      [v3 setEditingTraitsMarkedDirty:0];
    }
  }

  v10 = self->_editingTraits;
  v11 = v10;

  return v10;
}

BOOL __41__UIUndoGestureInteraction_editingTraits__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) responderForOperation:a2 withSender:0x1EFB7A830];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)canCut
{
  v3 = [(UIUndoGestureInteraction *)self editingTraits];
  if (v3)
  {
    v4 = [(UIUndoGestureInteraction *)self editingTraits];
    v5 = [v4 canCut];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canCopy
{
  v3 = [(UIUndoGestureInteraction *)self editingTraits];
  if (v3)
  {
    v4 = [(UIUndoGestureInteraction *)self editingTraits];
    v5 = [v4 canCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canPaste
{
  v3 = [(UIUndoGestureInteraction *)self editingTraits];
  if (v3)
  {
    v4 = [(UIUndoGestureInteraction *)self editingTraits];
    v5 = [v4 canPaste];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)cutOperation
{
  v3 = [(UIUndoGestureInteraction *)self responderForOperation:sel_cut_ withSender:0x1EFB7A830];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _dataOwnerForCopy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__UIUndoGestureInteraction_cutOperation__block_invoke;
    v6[3] = &unk_1E70F3590;
    v7 = v4;
    [UIPasteboard _performAsDataOwner:v5 block:v6];
  }

  [(UIUndoGestureInteraction *)self _updateHUDControlState];
}

- (void)copyOperation
{
  v3 = [(UIUndoGestureInteraction *)self responderForOperation:sel_copy_ withSender:0x1EFB7A830];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _dataOwnerForCopy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__UIUndoGestureInteraction_copyOperation__block_invoke;
    v6[3] = &unk_1E70F3590;
    v7 = v4;
    [UIPasteboard _performAsDataOwner:v5 block:v6];
  }

  [(UIUndoGestureInteraction *)self _updateHUDControlState];
}

- (void)pasteOperation
{
  pasteConfirmationAction = self->_pasteConfirmationAction;
  if (pasteConfirmationAction)
  {
    v4 = _Block_copy(pasteConfirmationAction);
    v5 = self->_pasteConfirmationAction;
    self->_pasteConfirmationAction = 0;

    v4[2](v4);
    [(UIUndoGestureInteraction *)self setPasteConfirmationHUDVisibility:0];
  }

  v6 = [(UIUndoGestureInteraction *)self responderForOperation:sel_paste_ withSender:0x1EFB7A830];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 _dataOwnerForPaste];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__UIUndoGestureInteraction_pasteOperation__block_invoke;
    v9[3] = &unk_1E70F3590;
    v10 = v7;
    [UIPasteboard _performAsDataOwner:v8 block:v9];
  }

  [(UIUndoGestureInteraction *)self _updateHUDControlState];
}

+ (void)showSecurePasteConfirmationWithCompletionHandler:(id)a3
{
  v3 = UIApp;
  v4 = a3;
  v5 = [v3 keyWindow];
  v9 = [v5 windowScene];

  v6 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:v9];
  v7 = [v6 editingOverlayViewController];
  v8 = [v7 undoInteraction];

  [v8 setPasteConfirmationAction:v4];
  [v8 setPasteConfirmationHUDVisibility:1];
}

+ (BOOL)_isKeyWindowSceneSessionRoleValidForTutorial
{
  v2 = +[UIWindow _applicationKeyWindow];
  v3 = [v2 windowScene];
  v4 = [v3 session];
  v5 = [v4 role];

  if (v5)
  {
    v6 = [v5 isEqualToString:@"SBSUIWindowSceneSessionRoleSystemNotes"] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

+ (void)presentProductivityGestureTutorialIfNeededWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _UIMainBundleIdentifier();
  v6 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v7 = [v6 preferencesActions];
  if ([v7 oneTimeActionCompleted:*MEMORY[0x1E69D9838]])
  {
  }

  else
  {
    v8 = [v5 isEqualToString:@"com.apple.purplebuddy"];

    if ((v8 & 1) == 0 && [a1 _isKeyWindowSceneSessionRoleValidForTutorial])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __85__UIUndoGestureInteraction_presentProductivityGestureTutorialIfNeededWithCompletion___block_invoke;
      block[3] = &unk_1E70F0F78;
      v10 = v4;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      goto LABEL_8;
    }
  }

  if (v4)
  {
    v4[2](v4);
  }

LABEL_8:
}

void __85__UIUndoGestureInteraction_presentProductivityGestureTutorialIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  v5 = [[UIUndoTutorialViewController alloc] initWithCompletionHandler:*(a1 + 32)];
  [(UIViewController *)v5 setModalPresentationStyle:5];
  v1 = +[UIWindow _applicationKeyWindow];
  v2 = [v1 rootViewController];
  [v2 presentViewController:v5 animated:(UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1 completion:0];

  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  [v4 didTriggerOneTimeAction:*MEMORY[0x1E69D9838]];
}

+ (void)presentProductivityGestureTutorialInlineWithCompletion:(id)a3
{
  v10 = a3;
  if (!+[UIKeyboard isOnScreen](UIKeyboard, "isOnScreen") || (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || +[UIKeyboardImpl isFloating])
  {
    [objc_opt_class() presentProductivityGestureTutorialIfNeededWithCompletion:v10];
    goto LABEL_5;
  }

  v4 = _UIMainBundleIdentifier();
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v6 = [v5 preferencesActions];
  v7 = *MEMORY[0x1E69D9838];
  if (([v6 oneTimeActionCompleted:*MEMORY[0x1E69D9838]] & 1) == 0)
  {
    v8 = [v4 isEqualToString:@"com.apple.purplebuddy"];

    if ((v8 & 1) != 0 || ![a1 _isKeyWindowSceneSessionRoleValidForTutorial])
    {
      goto LABEL_13;
    }

    v9 = +[UIKeyboardImpl activeInstance];
    [v9 presentEditingIntroductionView];

    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v6 = [v5 preferencesActions];
    [v6 didTriggerOneTimeAction:v7];
  }

LABEL_13:
  if (v10)
  {
    v10[2]();
  }

LABEL_5:
}

- (CGRect)currentActuallSceneBounds
{
  x = self->_currentActuallSceneBounds.origin.x;
  y = self->_currentActuallSceneBounds.origin.y;
  width = self->_currentActuallSceneBounds.size.width;
  height = self->_currentActuallSceneBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)previousPanLocation
{
  x = self->_previousPanLocation.x;
  y = self->_previousPanLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)beginPanLocation
{
  x = self->_beginPanLocation.x;
  y = self->_beginPanLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end