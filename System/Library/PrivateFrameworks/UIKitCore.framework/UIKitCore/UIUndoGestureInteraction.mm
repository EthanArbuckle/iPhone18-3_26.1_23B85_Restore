@interface UIUndoGestureInteraction
+ (BOOL)_isKeyWindowSceneSessionRoleValidForTutorial;
+ (id)iWorkFamily;
+ (void)presentProductivityGestureTutorialIfNeededWithCompletion:(id)completion;
+ (void)presentProductivityGestureTutorialInlineWithCompletion:(id)completion;
+ (void)showSecurePasteConfirmationWithCompletionHandler:(id)handler;
- (BOOL)_endPanWithDirection:(int64_t)direction;
- (BOOL)bundleIniWorkFamily:(id)family;
- (BOOL)canCopy;
- (BOOL)canCut;
- (BOOL)canPaste;
- (BOOL)canRedo;
- (BOOL)canUndo;
- (BOOL)currentInteractiveHUDVisible;
- (BOOL)currentStateHUDVisible;
- (BOOL)editingInteractionOptionsAllowGestureRecognizerToBegin:(id)begin;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isRTLMode;
- (BOOL)needUpdateHUDForContainerChange;
- (BOOL)performActionWithDirection:(int64_t)direction;
- (BOOL)performGestureWithDirection:(int64_t)direction authenticationMessage:(id)message;
- (BOOL)textEditingOperationsAvailableWithGestureRecognizer:(id)recognizer;
- (BOOL)undoGestureIsMoving:(id)moving;
- (BOOL)undoManagerOperationsCutCopyPasteAvailable;
- (BOOL)undoManagerOperationsUndoRedoAvailable;
- (CGPoint)beginPanLocation;
- (CGPoint)previousPanLocation;
- (CGRect)actualSceneBounds;
- (CGRect)currentActuallSceneBounds;
- (UIKBTextEditingTraits)editingTraits;
- (UIView)view;
- (id)_undoManager;
- (id)interactiveHUDButtonForDirection:(int64_t)direction;
- (id)responderForOperation:(SEL)operation withSender:(id)sender;
- (id)scrollViewForInputDelegate;
- (int64_t)keyboardAppearance;
- (int64_t)slideDirectionWithGesture:(id)gesture;
- (int64_t)undoControlTypeWithDirection:(int64_t)direction;
- (unint64_t)privateEditingInteractionOptions;
- (void)_addGestureRecognizers;
- (void)_cancelPinch:(id)pinch;
- (void)_createAndUpdateUndoInteractiveHUDIfNecessary;
- (void)_createAndUpdateUndoStateHUDIfNecessary;
- (void)_createGestureRecognizersIfNecessary;
- (void)_endPan:(id)pan;
- (void)_endPinch:(id)pinch;
- (void)_endPinchWithDirection:(int64_t)direction;
- (void)_installUndoManagerObservers;
- (void)_removeGestureRecognizers;
- (void)_startPinch:(id)pinch;
- (void)_startUndoPan:(id)pan;
- (void)_threeFingerSingleTapAction;
- (void)_uninstallUndoManagerObservers;
- (void)_updateHUDControlState;
- (void)_updatePinch:(id)pinch;
- (void)_updateUndoPan:(id)pan;
- (void)animateDisplayingStateHUD;
- (void)animateInStateHUD;
- (void)animateSpringCoverWithSuccess:(BOOL)success direction:(int64_t)direction remainingDistanceToTravel:(double)travel;
- (void)applicationWillSuspend;
- (void)clearHUDViews;
- (void)clearMultiPansTimer;
- (void)clearMultiPinchTimer;
- (void)clearUndoStateHUDDismissTimer;
- (void)copyOperation;
- (void)cutOperation;
- (void)deactiveActiveKeysIfNeeded:(id)needed;
- (void)didMoveToView:(id)view;
- (void)disableEnclosingScrollViewScrolling;
- (void)fullyCloseCoverWithComplete:(id)complete;
- (void)fullyOpenAndCloseCoverWithBeginDirection:(int64_t)direction;
- (void)layoutUndoInteractiveHUD;
- (void)layoutUndoStateHUD;
- (void)multiPansTimerElaspsed:(id)elaspsed;
- (void)observerGestureHandler:(id)handler;
- (void)pasteOperation;
- (void)redo:(BOOL)redo;
- (void)removeAllHUDOnContainerChange;
- (void)setPasteConfirmationHUDVisibility:(BOOL)visibility;
- (void)setUndoHUDType:(int64_t)type visibility:(BOOL)visibility;
- (void)setUndoInteractiveHUDVisibility:(BOOL)visibility;
- (void)setUndoStateHUDVisibility:(BOOL)visibility withType:(int64_t)type available:(BOOL)available;
- (void)startMultiPinchTimer:(double)timer;
- (void)threeFingerDoubleTap:(id)tap;
- (void)threeFingerDoubleTapUndoAction;
- (void)threeFingerLongPress:(id)press;
- (void)threeFingerPinch:(id)pinch;
- (void)threeFingerSingleTap:(id)tap;
- (void)threeFingerSlide:(id)slide;
- (void)touchMultiPansTimer;
- (void)touchUndoStateHUDDismissTimer;
- (void)undo:(BOOL)undo;
- (void)undoStateHUDDismissTimerElaspsed:(id)elaspsed;
- (void)willMoveToView:(id)view;
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
  view = [(UIUndoGestureInteraction *)self view];
  observerGesture = [(UIUndoGestureInteraction *)self observerGesture];
  [view addGestureRecognizer:observerGesture];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    view2 = [(UIUndoGestureInteraction *)self view];
    threeFingerSingleTap = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    [view2 addGestureRecognizer:threeFingerSingleTap];

    view3 = [(UIUndoGestureInteraction *)self view];
    threeFingerSlide = [(UIUndoGestureInteraction *)self threeFingerSlide];
    [view3 addGestureRecognizer:threeFingerSlide];

    view4 = [(UIUndoGestureInteraction *)self view];
    threeFingerLongPress = [(UIUndoGestureInteraction *)self threeFingerLongPress];
    [view4 addGestureRecognizer:threeFingerLongPress];

    view5 = [(UIUndoGestureInteraction *)self view];
    threeFingerPinch = [(UIUndoGestureInteraction *)self threeFingerPinch];
    [view5 addGestureRecognizer:threeFingerPinch];

    threeFingerSingleTap2 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    threeFingerSlide2 = [(UIUndoGestureInteraction *)self threeFingerSlide];
    [threeFingerSingleTap2 requireGestureRecognizerToFail:threeFingerSlide2];

    threeFingerSingleTap3 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    threeFingerLongPress2 = [(UIUndoGestureInteraction *)self threeFingerLongPress];
    [threeFingerSingleTap3 requireGestureRecognizerToFail:threeFingerLongPress2];

    threeFingerSingleTap4 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    threeFingerPinch2 = [(UIUndoGestureInteraction *)self threeFingerPinch];
    [threeFingerSingleTap4 requireGestureRecognizerToFail:threeFingerPinch2];

    observerGesture2 = [(UIUndoGestureInteraction *)self observerGesture];
    threeFingerSlide3 = [(UIUndoGestureInteraction *)self threeFingerSlide];
    [observerGesture2 requireGestureRecognizerToFail:threeFingerSlide3];

    observerGesture3 = [(UIUndoGestureInteraction *)self observerGesture];
    threeFingerSingleTap5 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    [observerGesture3 requireGestureRecognizerToFail:threeFingerSingleTap5];

    observerGesture4 = [(UIUndoGestureInteraction *)self observerGesture];
    threeFingerLongPress3 = [(UIUndoGestureInteraction *)self threeFingerLongPress];
    [observerGesture4 requireGestureRecognizerToFail:threeFingerLongPress3];

    observerGesture5 = [(UIUndoGestureInteraction *)self observerGesture];
    threeFingerPinch3 = [(UIUndoGestureInteraction *)self threeFingerPinch];
    [observerGesture5 requireGestureRecognizerToFail:threeFingerPinch3];

    threeFingerDoubleTap = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];

    if (threeFingerDoubleTap)
    {
      view6 = [(UIUndoGestureInteraction *)self view];
      threeFingerDoubleTap2 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
      [view6 addGestureRecognizer:threeFingerDoubleTap2];

      threeFingerSingleTap6 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
      threeFingerDoubleTap3 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
      [threeFingerSingleTap6 requireGestureRecognizerToFail:threeFingerDoubleTap3];

      observerGesture6 = [(UIUndoGestureInteraction *)self observerGesture];
      threeFingerDoubleTap4 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
      [observerGesture6 requireGestureRecognizerToFail:threeFingerDoubleTap4];
    }
  }
}

- (void)_createGestureRecognizersIfNecessary
{
  observerGesture = [(UIUndoGestureInteraction *)self observerGesture];

  if (!observerGesture)
  {
    v4 = [_UIKBUndoGestureObserver undoGestureObserverWithTarget:self action:sel_observerGestureHandler_ delegate:self];
    [(UIUndoGestureInteraction *)self setObserverGesture:v4];
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    threeFingerSingleTap = [(UIUndoGestureInteraction *)self threeFingerSingleTap];

    if (!threeFingerSingleTap)
    {
      v6 = [_UIKBProductivitySingleTapGesture productivitySingleTapGestureRecognizerWithTarget:self action:sel_threeFingerSingleTap_ delegate:self];
      if (_os_feature_enabled_impl())
      {
        [v6 setContinuousTapRecognition:1];
      }

      [(UIUndoGestureInteraction *)self setThreeFingerSingleTap:v6];
    }

    threeFingerDoubleTap = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
    if (!threeFingerDoubleTap)
    {
      threeFingerSingleTap2 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
      continuousTapRecognition = [threeFingerSingleTap2 continuousTapRecognition];

      if (continuousTapRecognition)
      {
LABEL_12:
        threeFingerSlide = [(UIUndoGestureInteraction *)self threeFingerSlide];

        if (!threeFingerSlide)
        {
          v11 = [_UIKBProductivityPanGestureRecognizer productivityPanGestureRecognizerWithTarget:self action:sel_threeFingerSlide_ delegate:self];
          [(UIUndoGestureInteraction *)self setThreeFingerSlide:v11];
        }

        threeFingerLongPress = [(UIUndoGestureInteraction *)self threeFingerLongPress];

        if (!threeFingerLongPress)
        {
          v13 = [_UIKBProductivityLongPressGestureRecognizer productivityLongPressGestureRecognizerWithTarget:self action:sel_threeFingerLongPress_ delegate:self];
          [(UIUndoGestureInteraction *)self setThreeFingerLongPress:v13];
        }

        threeFingerPinch = [(UIUndoGestureInteraction *)self threeFingerPinch];

        if (!threeFingerPinch)
        {
          v15 = [_UIKBProductivityPinchGestureRecognizer productivityPinchGestureRecognizerWithTarget:self action:sel_threeFingerPinch_ delegate:self];
          [(UIUndoGestureInteraction *)self setThreeFingerPinch:v15];
        }

        return;
      }

      threeFingerDoubleTap = [_UIKBProductivityDoubleTapGesture productivityDoubleTapGestureRecognizerWithTarget:self action:sel_threeFingerDoubleTap_ delegate:self];
      [(UIUndoGestureInteraction *)self setThreeFingerDoubleTap:threeFingerDoubleTap];
    }

    goto LABEL_12;
  }
}

- (BOOL)currentInteractiveHUDVisible
{
  undoInteractiveHUD = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  if (undoInteractiveHUD)
  {
    undoInteractiveHUD2 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
    superview = [undoInteractiveHUD2 superview];
    view = [(UIUndoGestureInteraction *)self view];
    if (superview == view)
    {
      undoInteractiveHUD3 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
      [undoInteractiveHUD3 alpha];
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
  layoutGuide = [(UIUndoGestureInteraction *)self layoutGuide];

  if (layoutGuide)
  {
    view = [(UIUndoGestureInteraction *)self view];
    layoutGuide2 = [(UIUndoGestureInteraction *)self layoutGuide];
    [view removeLayoutGuide:layoutGuide2];

    [(UIUndoGestureInteraction *)self setLayoutGuide:0];
  }
}

- (BOOL)currentStateHUDVisible
{
  undoStateHUD = [(UIUndoGestureInteraction *)self undoStateHUD];
  if (undoStateHUD)
  {
    undoStateHUD2 = [(UIUndoGestureInteraction *)self undoStateHUD];
    superview = [undoStateHUD2 superview];
    view = [(UIUndoGestureInteraction *)self view];
    if (superview == view)
    {
      undoStateHUD3 = [(UIUndoGestureInteraction *)self undoStateHUD];
      [undoStateHUD3 alpha];
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
  undoInteractiveHUD = [(UIUndoGestureInteraction *)self undoInteractiveHUD];

  if (undoInteractiveHUD)
  {
    undoInteractiveHUD2 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
    [undoInteractiveHUD2 removeFromSuperview];

    [(UIUndoGestureInteraction *)self setUndoInteractiveHUD:0];
  }

  undoStateHUD = [(UIUndoGestureInteraction *)self undoStateHUD];

  if (undoStateHUD)
  {
    undoStateHUD2 = [(UIUndoGestureInteraction *)self undoStateHUD];
    [undoStateHUD2 removeFromSuperview];

    [(UIUndoGestureInteraction *)self setUndoStateHUD:0];
  }
}

- (void)willMoveToView:(id)view
{
  if (!view)
  {
    [(UIUndoGestureInteraction *)self _removeGestureRecognizers];
    [(UIUndoGestureInteraction *)self clearHUDViews];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self];
  }
}

- (void)didMoveToView:(id)view
{
  objc_storeWeak(&self->_view, view);
  if (view)
  {
    self->_previousRecognizedPanDirection = 0;
    self->_undoStateHUDIsAnimating = 0;
    self->_panDownStateChangedCounter = 0;
    self->_lastTapTimestamp = 0.0;
    [(UIUndoGestureInteraction *)self _addGestureRecognizers];
    WeakRetained = objc_loadWeakRetained(&self->_view);
    window = [WeakRetained window];
    [window actualSceneBounds];
    self->_currentActuallSceneBounds.origin.x = v7;
    self->_currentActuallSceneBounds.origin.y = v8;
    self->_currentActuallSceneBounds.size.width = v9;
    self->_currentActuallSceneBounds.size.height = v10;

    v11 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v11 userInterfaceIdiom];

    if (!userInterfaceIdiom)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:self selector:sel_removeAllHUDOnContainerChange name:@"UIKeyboardWillChangeFrameNotification" object:0];
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel_applicationWillSuspend name:@"UIApplicationSuspendedNotification" object:0];
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
  textInputTraits = [v2 textInputTraits];
  keyboardAppearance = [textInputTraits keyboardAppearance];

  return keyboardAppearance;
}

- (CGRect)actualSceneBounds
{
  view = [(UIUndoGestureInteraction *)self view];
  window = [view window];
  [window actualSceneBounds];
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
  _deviceLanguage = [MEMORY[0x1E695DF58] _deviceLanguage];
  LOBYTE(v2) = [v2 characterDirectionForLanguage:_deviceLanguage] == 2;

  return v2;
}

- (void)layoutUndoInteractiveHUD
{
  undoInteractiveHUD = [(UIUndoGestureInteraction *)self undoInteractiveHUD];

  if (undoInteractiveHUD)
  {
    undoInteractiveHUD2 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
    [undoInteractiveHUD2 removeFromSuperview];

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

  undoInteractiveHUD3 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  [undoInteractiveHUD3 setActionDelegate:self];

  undoInteractiveHUD4 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  [undoInteractiveHUD4 setAlpha:0.0];

  undoInteractiveHUD5 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  [undoInteractiveHUD5 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(UIUndoGestureInteraction *)self view];
  undoInteractiveHUD6 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  [view addSubview:undoInteractiveHUD6];

  layoutGuide = [(UIUndoGestureInteraction *)self layoutGuide];

  if (!layoutGuide)
  {
    v20 = objc_alloc_init(UILayoutGuide);
    [(UIUndoGestureInteraction *)self setLayoutGuide:v20];

    view2 = [(UIUndoGestureInteraction *)self view];
    layoutGuide2 = [(UIUndoGestureInteraction *)self layoutGuide];
    [view2 addLayoutGuide:layoutGuide2];

    layoutGuide3 = [(UIUndoGestureInteraction *)self layoutGuide];
    leftAnchor = [layoutGuide3 leftAnchor];
    view3 = [(UIUndoGestureInteraction *)self view];
    leftAnchor2 = [view3 leftAnchor];
    v27 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v27 setActive:1];

    layoutGuide4 = [(UIUndoGestureInteraction *)self layoutGuide];
    topAnchor = [layoutGuide4 topAnchor];
    view4 = [(UIUndoGestureInteraction *)self view];
    safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v33 setActive:1];

    layoutGuide5 = [(UIUndoGestureInteraction *)self layoutGuide];
    widthAnchor = [layoutGuide5 widthAnchor];
    v36 = [widthAnchor constraintEqualToConstant:v10];
    undoHUDContainerWidthConstraint = self->_undoHUDContainerWidthConstraint;
    self->_undoHUDContainerWidthConstraint = v36;

    [(NSLayoutConstraint *)self->_undoHUDContainerWidthConstraint setActive:1];
    layoutGuide6 = [(UIUndoGestureInteraction *)self layoutGuide];
    heightAnchor = [layoutGuide6 heightAnchor];
    v40 = [heightAnchor constraintEqualToConstant:v12];
    undoHUDContainerHeightConstraint = self->_undoHUDContainerHeightConstraint;
    self->_undoHUDContainerHeightConstraint = v40;

    [(NSLayoutConstraint *)self->_undoHUDContainerHeightConstraint setActive:1];
  }

  [(UIUndoGestureInteraction *)self currentActuallSceneBounds];
  v43 = v42;
  undoHUDContainerWidthConstraint = [(UIUndoGestureInteraction *)self undoHUDContainerWidthConstraint];
  [undoHUDContainerWidthConstraint setConstant:v43];

  [(UIUndoGestureInteraction *)self currentActuallSceneBounds];
  v46 = v45;
  undoHUDContainerHeightConstraint = [(UIUndoGestureInteraction *)self undoHUDContainerHeightConstraint];
  [undoHUDContainerHeightConstraint setConstant:v46];

  undoInteractiveHUD7 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  centerXAnchor = [undoInteractiveHUD7 centerXAnchor];
  layoutGuide7 = [(UIUndoGestureInteraction *)self layoutGuide];
  centerXAnchor2 = [layoutGuide7 centerXAnchor];
  v52 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v52 setActive:1];

  undoInteractiveHUD8 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  topAnchor3 = [undoInteractiveHUD8 topAnchor];
  view5 = [(UIUndoGestureInteraction *)self view];
  topAnchor4 = [view5 topAnchor];
  v57 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4 constant:31.0];
  [v57 setActive:1];

  undoInteractiveHUD9 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  topAnchor5 = [undoInteractiveHUD9 topAnchor];
  layoutGuide8 = [(UIUndoGestureInteraction *)self layoutGuide];
  topAnchor6 = [layoutGuide8 topAnchor];
  v64 = [topAnchor5 constraintEqualToAnchor:topAnchor6 constant:7.0];

  LODWORD(v62) = 1144750080;
  [v64 setPriority:v62];
  [v64 setActive:1];
  view6 = [(UIUndoGestureInteraction *)self view];
  [view6 layoutIfNeeded];
}

- (void)layoutUndoStateHUD
{
  undoStateHUD = [(UIUndoGestureInteraction *)self undoStateHUD];

  if (undoStateHUD)
  {
    undoStateHUD2 = [(UIUndoGestureInteraction *)self undoStateHUD];
    [undoStateHUD2 removeFromSuperview];

    [(UIUndoGestureInteraction *)self setUndoStateHUD:0];
  }

  v5 = [[UIKBUndoStateHUD alloc] initWithKeyboardAppearance:[(UIUndoGestureInteraction *)self keyboardAppearance]];
  [(UIUndoGestureInteraction *)self setUndoStateHUD:v5];

  undoStateHUD3 = [(UIUndoGestureInteraction *)self undoStateHUD];
  [undoStateHUD3 setAlpha:0.0];

  undoStateHUD4 = [(UIUndoGestureInteraction *)self undoStateHUD];
  [undoStateHUD4 setTranslatesAutoresizingMaskIntoConstraints:0];

  view = [(UIUndoGestureInteraction *)self view];
  undoStateHUD5 = [(UIUndoGestureInteraction *)self undoStateHUD];
  [view addSubview:undoStateHUD5];

  [(UIUndoGestureInteraction *)self actualSceneBounds];
  v11 = v10;
  v13 = v12;
  [(UIUndoGestureInteraction *)self setCurrentActuallSceneBounds:?];
  layoutGuide = [(UIUndoGestureInteraction *)self layoutGuide];

  if (!layoutGuide)
  {
    v15 = objc_alloc_init(UILayoutGuide);
    [(UIUndoGestureInteraction *)self setLayoutGuide:v15];

    view2 = [(UIUndoGestureInteraction *)self view];
    layoutGuide2 = [(UIUndoGestureInteraction *)self layoutGuide];
    [view2 addLayoutGuide:layoutGuide2];

    layoutGuide3 = [(UIUndoGestureInteraction *)self layoutGuide];
    leftAnchor = [layoutGuide3 leftAnchor];
    view3 = [(UIUndoGestureInteraction *)self view];
    leftAnchor2 = [view3 leftAnchor];
    v22 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    [v22 setActive:1];

    layoutGuide4 = [(UIUndoGestureInteraction *)self layoutGuide];
    topAnchor = [layoutGuide4 topAnchor];
    view4 = [(UIUndoGestureInteraction *)self view];
    safeAreaLayoutGuide = [view4 safeAreaLayoutGuide];
    topAnchor2 = [safeAreaLayoutGuide topAnchor];
    v28 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v28 setActive:1];

    layoutGuide5 = [(UIUndoGestureInteraction *)self layoutGuide];
    widthAnchor = [layoutGuide5 widthAnchor];
    v31 = [widthAnchor constraintEqualToConstant:v11];
    undoHUDContainerWidthConstraint = self->_undoHUDContainerWidthConstraint;
    self->_undoHUDContainerWidthConstraint = v31;

    [(NSLayoutConstraint *)self->_undoHUDContainerWidthConstraint setActive:1];
    layoutGuide6 = [(UIUndoGestureInteraction *)self layoutGuide];
    heightAnchor = [layoutGuide6 heightAnchor];
    v35 = [heightAnchor constraintEqualToConstant:v13];
    undoHUDContainerHeightConstraint = self->_undoHUDContainerHeightConstraint;
    self->_undoHUDContainerHeightConstraint = v35;

    [(NSLayoutConstraint *)self->_undoHUDContainerHeightConstraint setActive:1];
  }

  [(UIUndoGestureInteraction *)self currentActuallSceneBounds];
  v38 = v37;
  undoHUDContainerWidthConstraint = [(UIUndoGestureInteraction *)self undoHUDContainerWidthConstraint];
  [undoHUDContainerWidthConstraint setConstant:v38];

  [(UIUndoGestureInteraction *)self currentActuallSceneBounds];
  v41 = v40;
  undoHUDContainerHeightConstraint = [(UIUndoGestureInteraction *)self undoHUDContainerHeightConstraint];
  [undoHUDContainerHeightConstraint setConstant:v41];

  undoStateHUD6 = [(UIUndoGestureInteraction *)self undoStateHUD];
  centerYAnchor = [undoStateHUD6 centerYAnchor];
  view5 = [(UIUndoGestureInteraction *)self view];
  topAnchor3 = [view5 topAnchor];
  v47 = [centerYAnchor constraintGreaterThanOrEqualToAnchor:topAnchor3 constant:45.0];
  undoStateHUDTopConstraint = self->_undoStateHUDTopConstraint;
  self->_undoStateHUDTopConstraint = v47;

  [(NSLayoutConstraint *)self->_undoStateHUDTopConstraint setActive:1];
  undoStateHUD7 = [(UIUndoGestureInteraction *)self undoStateHUD];
  centerYAnchor2 = [undoStateHUD7 centerYAnchor];
  layoutGuide7 = [(UIUndoGestureInteraction *)self layoutGuide];
  topAnchor4 = [layoutGuide7 topAnchor];
  v61 = [centerYAnchor2 constraintEqualToAnchor:topAnchor4 constant:21.0];

  LODWORD(v53) = 1144750080;
  [v61 setPriority:v53];
  [v61 setActive:1];
  undoStateHUD8 = [(UIUndoGestureInteraction *)self undoStateHUD];
  centerXAnchor = [undoStateHUD8 centerXAnchor];
  layoutGuide8 = [(UIUndoGestureInteraction *)self layoutGuide];
  centerXAnchor2 = [layoutGuide8 centerXAnchor];
  v58 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2 constant:0.0];
  undoStateHUDCenterConstraint = self->_undoStateHUDCenterConstraint;
  self->_undoStateHUDCenterConstraint = v58;

  [(NSLayoutConstraint *)self->_undoStateHUDCenterConstraint setActive:1];
  view6 = [(UIUndoGestureInteraction *)self view];
  [view6 layoutIfNeeded];
}

- (BOOL)needUpdateHUDForContainerChange
{
  currentAppearance = [(UIUndoGestureInteraction *)self currentAppearance];
  if (currentAppearance != [(UIUndoGestureInteraction *)self keyboardAppearance])
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

  layoutGuide = [(UIUndoGestureInteraction *)self layoutGuide];
  v17 = layoutGuide == 0;

  return v17;
}

- (void)_createAndUpdateUndoInteractiveHUDIfNecessary
{
  undoInteractiveHUD = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  if (!undoInteractiveHUD || [(UIUndoGestureInteraction *)self needUpdateHUDForContainerChange])
  {

LABEL_4:
    [(UIUndoGestureInteraction *)self layoutUndoInteractiveHUD];
    [(UIUndoGestureInteraction *)self setCurrentAppearance:[(UIUndoGestureInteraction *)self keyboardAppearance]];
    goto LABEL_5;
  }

  undoInteractiveHUD2 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  mode = [undoInteractiveHUD2 mode];
  interactiveHUDMode = self->_interactiveHUDMode;

  if (mode != interactiveHUDMode)
  {
    goto LABEL_4;
  }

LABEL_5:
  undoInteractiveHUD3 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  [undoInteractiveHUD3 setNeedsLayout];
}

- (void)_createAndUpdateUndoStateHUDIfNecessary
{
  undoStateHUD = [(UIUndoGestureInteraction *)self undoStateHUD];
  if (!undoStateHUD || (v4 = undoStateHUD, v5 = [(UIUndoGestureInteraction *)self needUpdateHUDForContainerChange], v4, v5))
  {
    [(UIUndoGestureInteraction *)self layoutUndoStateHUD];
    [(UIUndoGestureInteraction *)self setCurrentAppearance:[(UIUndoGestureInteraction *)self keyboardAppearance]];
  }

  undoStateHUD2 = [(UIUndoGestureInteraction *)self undoStateHUD];
  [undoStateHUD2 setNeedsLayout];
}

- (void)animateInStateHUD
{
  undoStateHUD = [(UIUndoGestureInteraction *)self undoStateHUD];
  controlType = [undoStateHUD controlType];

  if (controlType != 1)
  {
    undoStateHUD2 = [(UIUndoGestureInteraction *)self undoStateHUD];
    controlType2 = [undoStateHUD2 controlType];

    if (controlType2 == 2)
    {
      undoStateHUDCenterConstraint = self->_undoStateHUDCenterConstraint;
      v6 = -15.0;
      goto LABEL_5;
    }

    undoStateHUD3 = [(UIUndoGestureInteraction *)self undoStateHUD];
    if ([undoStateHUD3 controlType] == 4)
    {
    }

    else
    {
      undoStateHUD4 = [(UIUndoGestureInteraction *)self undoStateHUD];
      controlType3 = [undoStateHUD4 controlType];

      if (controlType3 != 3)
      {
        undoStateHUD5 = [(UIUndoGestureInteraction *)self undoStateHUD];
        controlType4 = [undoStateHUD5 controlType];

        if (controlType4 != 5)
        {
          goto LABEL_11;
        }

        undoStateHUD6 = [(UIUndoGestureInteraction *)self undoStateHUD];
        undoStateHUDWidthConstraint = [undoStateHUD6 undoStateHUDWidthConstraint];
        [undoStateHUDWidthConstraint setConstant:-30.0];

        undoStateHUD7 = [(UIUndoGestureInteraction *)self undoStateHUD];
        undoStateHUDHeightConstraint = [undoStateHUD7 undoStateHUDHeightConstraint];
        v16 = undoStateHUDHeightConstraint;
        v17 = -30.0;
        goto LABEL_10;
      }
    }

    undoStateHUD8 = [(UIUndoGestureInteraction *)self undoStateHUD];
    undoStateHUDWidthConstraint2 = [undoStateHUD8 undoStateHUDWidthConstraint];
    [undoStateHUDWidthConstraint2 setConstant:30.0];

    undoStateHUD7 = [(UIUndoGestureInteraction *)self undoStateHUD];
    undoStateHUDHeightConstraint = [undoStateHUD7 undoStateHUDHeightConstraint];
    v16 = undoStateHUDHeightConstraint;
    v17 = 30.0;
LABEL_10:
    [undoStateHUDHeightConstraint setConstant:v17];

    goto LABEL_11;
  }

  undoStateHUDCenterConstraint = self->_undoStateHUDCenterConstraint;
  v6 = 15.0;
LABEL_5:
  [(NSLayoutConstraint *)undoStateHUDCenterConstraint setConstant:v6];
LABEL_11:
  view = [(UIUndoGestureInteraction *)self view];
  [view layoutIfNeeded];

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
  undoStateHUD = [(UIUndoGestureInteraction *)self undoStateHUD];
  controlType = [undoStateHUD controlType];

  if (controlType == 1)
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

  undoStateHUD2 = [(UIUndoGestureInteraction *)self undoStateHUD];
  controlType2 = [undoStateHUD2 controlType];

  if (controlType2 == 2)
  {
    _Q0 = xmmword_18A680870;
    goto LABEL_9;
  }

  undoStateHUD3 = [(UIUndoGestureInteraction *)self undoStateHUD];
  if ([undoStateHUD3 controlType] == 4)
  {

LABEL_8:
    __asm { FMOV            V0.2D, #-3.75 }

    goto LABEL_9;
  }

  undoStateHUD4 = [(UIUndoGestureInteraction *)self undoStateHUD];
  controlType3 = [undoStateHUD4 controlType];

  if (controlType3 == 3)
  {
    goto LABEL_8;
  }

  undoStateHUD5 = [(UIUndoGestureInteraction *)self undoStateHUD];
  controlType4 = [undoStateHUD5 controlType];

  if (controlType4 == 5)
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateHUDControlState name:*MEMORY[0x1E696AA30] object:0];
  [defaultCenter addObserver:self selector:sel__updateHUDControlState name:*MEMORY[0x1E696AA28] object:0];
  [defaultCenter addObserver:self selector:sel__updateHUDControlState name:*MEMORY[0x1E696AA18] object:0];
}

- (void)_uninstallUndoManagerObservers
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA30] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA28] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E696AA18] object:0];
}

- (void)setUndoHUDType:(int64_t)type visibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  currentStateHUDVisible = [(UIUndoGestureInteraction *)self currentStateHUDVisible];
  currentInteractiveHUDVisible = [(UIUndoGestureInteraction *)self currentInteractiveHUDVisible];
  if (type)
  {
    if (type == 1)
    {
      if (visibilityCopy)
      {
        [(UIUndoGestureInteraction *)self touchUndoStateHUDDismissTimer];
        if (currentStateHUDVisible)
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
        undoStateHUDIsAnimating = [(UIUndoGestureInteraction *)self undoStateHUDIsAnimating];
        v14 = 0.0;
        if (undoStateHUDIsAnimating)
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

  else if (currentInteractiveHUDVisible != visibilityCopy)
  {
    if (visibilityCopy)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = 0.0;
    }

    if (visibilityCopy)
    {
      undoInteractiveHUD = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
      [undoInteractiveHUD updateHUDControlState];
    }

    if (currentStateHUDVisible)
    {
      [(UIUndoGestureInteraction *)self _uninstallUndoManagerObservers];
      [(UIUndoGestureInteraction *)self touchUndoStateHUDDismissTimer];
      v34 = MEMORY[0x1E69E9820];
      v35 = 3221225472;
      v36 = __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_3;
      v37 = &unk_1E70F3590;
      selfCopy = self;
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_4;
      v30 = &unk_1E7119868;
      selfCopy2 = self;
      v32 = v9;
      LOBYTE(v33) = visibilityCopy;
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
      selfCopy3 = self;
      v26 = v9;
      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __54__UIUndoGestureInteraction_setUndoHUDType_visibility___block_invoke_10;
      v19 = &__block_descriptor_33_e8_v12__0B8l;
      LOBYTE(v20) = visibilityCopy;
      v11 = &v21;
      v12 = &v16;
    }

    [UIView animateWithDuration:v11 animations:v12 completion:0.2, v16, v17, v18, v19, v20, v21, v22, v23, v24, selfCopy3, *&v26, v27, v28, v29, v30, selfCopy2, *&v32, v33, v34, v35, v36, v37, selfCopy];
  }

  view = [(UIUndoGestureInteraction *)self view];
  [view layoutIfNeeded];
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

- (void)setUndoInteractiveHUDVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  if (visibility)
  {
    self->_interactiveHUDMode = 0;
    [(UIUndoGestureInteraction *)self _createAndUpdateUndoInteractiveHUDIfNecessary];
    view = [(UIUndoGestureInteraction *)self view];
    v6 = [_UIEditMenuSceneComponent sceneComponentForView:view];
    [v6 dismissCurrentMenu];
  }

  [(UIUndoGestureInteraction *)self setUndoHUDType:0 visibility:visibilityCopy];
}

- (void)setPasteConfirmationHUDVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  if (visibility)
  {
    self->_interactiveHUDMode = 1;
    [(UIUndoGestureInteraction *)self _createAndUpdateUndoInteractiveHUDIfNecessary];
  }

  [(UIUndoGestureInteraction *)self setUndoHUDType:0 visibility:visibilityCopy];
}

- (void)setUndoStateHUDVisibility:(BOOL)visibility withType:(int64_t)type available:(BOOL)available
{
  availableCopy = available;
  visibilityCopy = visibility;
  if (![(UIUndoGestureInteraction *)self currentInteractiveHUDVisible])
  {
    if (visibilityCopy)
    {
      [(UIUndoGestureInteraction *)self _createAndUpdateUndoStateHUDIfNecessary];
      undoStateHUD = [(UIUndoGestureInteraction *)self undoStateHUD];
      [undoStateHUD updateUndoStateHUDControlType:type available:availableCopy];
    }

    [(UIUndoGestureInteraction *)self setUndoHUDType:1 visibility:visibilityCopy];
  }
}

- (void)touchUndoStateHUDDismissTimer
{
  undoStateHUDDismissTimer = [(UIUndoGestureInteraction *)self undoStateHUDDismissTimer];

  if (undoStateHUDDismissTimer)
  {
    undoStateHUDDismissTimer2 = [(UIUndoGestureInteraction *)self undoStateHUDDismissTimer];
    [(UIDelayedAction *)undoStateHUDDismissTimer2 touch];
  }

  else
  {
    undoStateHUDDismissTimer2 = [[UIDelayedAction alloc] initWithTarget:self action:sel_undoStateHUDDismissTimerElaspsed_ userInfo:0 delay:2.0];
    [(UIUndoGestureInteraction *)self setUndoStateHUDDismissTimer:?];
  }
}

- (void)clearUndoStateHUDDismissTimer
{
  undoStateHUDDismissTimer = [(UIUndoGestureInteraction *)self undoStateHUDDismissTimer];
  [undoStateHUDDismissTimer cancel];

  [(UIUndoGestureInteraction *)self setUndoStateHUDDismissTimer:0];
}

- (void)undoStateHUDDismissTimerElaspsed:(id)elaspsed
{
  if ([(UIUndoGestureInteraction *)self currentStateHUDVisible]&& [(UIUndoGestureInteraction *)self currentInteractiveHUDVisible])
  {

    [(UIUndoGestureInteraction *)self touchUndoStateHUDDismissTimer];
  }

  else
  {
    [(UIUndoGestureInteraction *)self setUndoStateHUDVisibility:0 withType:0 available:1];
    undoStateHUDTopConstraint = [(UIUndoGestureInteraction *)self undoStateHUDTopConstraint];
    [undoStateHUDTopConstraint setConstant:31.0];
  }
}

- (void)_removeGestureRecognizers
{
  view = [(UIUndoGestureInteraction *)self view];
  observerGesture = [(UIUndoGestureInteraction *)self observerGesture];
  [view removeGestureRecognizer:observerGesture];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    view2 = [(UIUndoGestureInteraction *)self view];
    threeFingerSingleTap = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    [view2 removeGestureRecognizer:threeFingerSingleTap];

    view3 = [(UIUndoGestureInteraction *)self view];
    threeFingerSlide = [(UIUndoGestureInteraction *)self threeFingerSlide];
    [view3 removeGestureRecognizer:threeFingerSlide];

    view4 = [(UIUndoGestureInteraction *)self view];
    threeFingerLongPress = [(UIUndoGestureInteraction *)self threeFingerLongPress];
    [view4 removeGestureRecognizer:threeFingerLongPress];

    view5 = [(UIUndoGestureInteraction *)self view];
    threeFingerPinch = [(UIUndoGestureInteraction *)self threeFingerPinch];
    [view5 removeGestureRecognizer:threeFingerPinch];

    threeFingerDoubleTap = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];

    if (threeFingerDoubleTap)
    {
      view6 = [(UIUndoGestureInteraction *)self view];
      threeFingerDoubleTap2 = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
      [view6 removeGestureRecognizer:threeFingerDoubleTap2];
    }
  }
}

- (id)_undoManager
{
  currentResponder = [(UIUndoGestureInteraction *)self currentResponder];
  undoManager = [currentResponder undoManager];

  return undoManager;
}

- (unint64_t)privateEditingInteractionOptions
{
  currentResponder = [(UIUndoGestureInteraction *)self currentResponder];
  if (!currentResponder)
  {
    return 6;
  }

  v3 = currentResponder;
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

    nextResponder = [v3 nextResponder];

    v3 = nextResponder;
    if (!nextResponder)
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

- (BOOL)editingInteractionOptionsAllowGestureRecognizerToBegin:(id)begin
{
  beginCopy = begin;
  currentResponder = [(UIUndoGestureInteraction *)self currentResponder];

  if (!currentResponder)
  {
    goto LABEL_15;
  }

  observerGesture = [(UIUndoGestureInteraction *)self observerGesture];

  if (observerGesture != beginCopy)
  {
    threeFingerSingleTap = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    if (threeFingerSingleTap == beginCopy)
    {
      v10 = 6;
    }

    else
    {
      threeFingerLongPress = [(UIUndoGestureInteraction *)self threeFingerLongPress];

      if (threeFingerLongPress == beginCopy)
      {
        v10 = 6;
        goto LABEL_13;
      }

      threeFingerSingleTap = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
      if (threeFingerSingleTap != beginCopy)
      {
        threeFingerSlide = [(UIUndoGestureInteraction *)self threeFingerSlide];

        if (threeFingerSlide)
        {
          v10 = 2;
LABEL_13:
          currentInteractiveHUDVisible = ([(UIUndoGestureInteraction *)self privateEditingInteractionOptions]& v10) != 0;
          goto LABEL_16;
        }

        threeFingerPinch = [(UIUndoGestureInteraction *)self threeFingerPinch];

        if (threeFingerPinch == beginCopy)
        {
          v10 = 4;
          goto LABEL_13;
        }

LABEL_15:
        currentInteractiveHUDVisible = 0;
        goto LABEL_16;
      }

      v10 = 2;
    }

    goto LABEL_13;
  }

  currentInteractiveHUDVisible = [(UIUndoGestureInteraction *)self currentInteractiveHUDVisible];
LABEL_16:

  return currentInteractiveHUDVisible;
}

- (BOOL)textEditingOperationsAvailableWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if (![(UIUndoGestureInteraction *)self editingInteractionOptionsAllowGestureRecognizerToBegin:recognizerCopy])
  {
    goto LABEL_9;
  }

  threeFingerSingleTap = [(UIUndoGestureInteraction *)self threeFingerSingleTap];

  selfCopy2 = self;
  if (threeFingerSingleTap == recognizerCopy)
  {
    goto LABEL_13;
  }

  threeFingerLongPress = [(UIUndoGestureInteraction *)self threeFingerLongPress];

  if (threeFingerLongPress == recognizerCopy)
  {
    if ([(UIUndoGestureInteraction *)self interactiveHUDIsVisible])
    {
LABEL_9:
      v12 = 0;
      goto LABEL_16;
    }

    selfCopy2 = self;
LABEL_13:
    if ([(UIUndoGestureInteraction *)selfCopy2 undoManagerOperationsUndoRedoAvailable])
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

  threeFingerDoubleTap = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
  v9 = threeFingerDoubleTap;
  if (threeFingerDoubleTap == recognizerCopy)
  {

    goto LABEL_11;
  }

  threeFingerSlide = [(UIUndoGestureInteraction *)self threeFingerSlide];

  if (threeFingerSlide == recognizerCopy)
  {
LABEL_11:
    undoManagerOperationsUndoRedoAvailable = [(UIUndoGestureInteraction *)self undoManagerOperationsUndoRedoAvailable];
LABEL_15:
    v12 = undoManagerOperationsUndoRedoAvailable;
    goto LABEL_16;
  }

  threeFingerPinch = [(UIUndoGestureInteraction *)self threeFingerPinch];

  if (threeFingerPinch == recognizerCopy)
  {
LABEL_14:
    undoManagerOperationsUndoRedoAvailable = [(UIUndoGestureInteraction *)self undoManagerOperationsCutCopyPasteAvailable];
    goto LABEL_15;
  }

LABEL_7:
  v12 = 1;
LABEL_16:

  return v12;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = +[UIWindowScene _keyWindowScene];
  _visibleWindows = [v5 _visibleWindows];

  view = [(UIUndoGestureInteraction *)self view];
  window = [view window];

  if (_visibleWindows && [_visibleWindows count] && objc_msgSend(_visibleWindows, "containsObject:", window))
  {
    observerGesture = [(UIUndoGestureInteraction *)self observerGesture];

    if (observerGesture == beginCopy)
    {
      currentInteractiveHUDVisible = [(UIUndoGestureInteraction *)self currentInteractiveHUDVisible];
    }

    else
    {
      currentInteractiveHUDVisible = [(UIUndoGestureInteraction *)self textEditingOperationsAvailableWithGestureRecognizer:beginCopy];
    }

    v11 = currentInteractiveHUDVisible;
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

- (BOOL)bundleIniWorkFamily:(id)family
{
  v14 = *MEMORY[0x1E69E9840];
  familyCopy = family;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  iWorkFamily = [objc_opt_class() iWorkFamily];
  v5 = [iWorkFamily countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(iWorkFamily);
        }

        if ([*(*(&v9 + 1) + 8 * i) isEqualToString:familyCopy])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [iWorkFamily countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  threeFingerSingleTap = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
  v9 = threeFingerSingleTap;
  if (threeFingerSingleTap == recognizerCopy)
  {

    goto LABEL_7;
  }

  threeFingerDoubleTap = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];

  if (threeFingerDoubleTap == recognizerCopy)
  {
LABEL_7:
    v15 = [gestureRecognizerCopy _isGestureType:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (v15)
    {
      v17 = isKindOfClass;
      v18 = _UIMainBundleIdentifier();
      v19 = [(UIUndoGestureInteraction *)self bundleIniWorkFamily:v18];

      numberOfTouchesRequired = [gestureRecognizerCopy numberOfTouchesRequired];
      threeFingerSingleTap2 = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
      numberOfTouchesRequired2 = [threeFingerSingleTap2 numberOfTouchesRequired];

      if ((v17 & 1) == 0)
      {
        v14 = (numberOfTouchesRequired == numberOfTouchesRequired2) & ~v19;
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  threeFingerSlide = [(UIUndoGestureInteraction *)self threeFingerSlide];

  if (threeFingerSlide != recognizerCopy || ![gestureRecognizerCopy _isGestureType:8])
  {
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  minimumNumberOfTouches = [gestureRecognizerCopy minimumNumberOfTouches];
  threeFingerSlide2 = [(UIUndoGestureInteraction *)self threeFingerSlide];
  v14 = minimumNumberOfTouches == [threeFingerSlide2 minimumNumberOfTouches];

LABEL_10:
  return v14;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  threeFingerLongPress = [(UIUndoGestureInteraction *)self threeFingerLongPress];
  if (threeFingerLongPress == recognizerCopy)
  {
    threeFingerSlide = [(UIUndoGestureInteraction *)self threeFingerSlide];
    if (threeFingerSlide == gestureRecognizerCopy)
    {
      v14 = 1;
LABEL_21:

      goto LABEL_22;
    }
  }

  threeFingerSlide2 = [(UIUndoGestureInteraction *)self threeFingerSlide];
  if (threeFingerSlide2 == recognizerCopy)
  {
    v15 = 0;
    v16 = 0;
  }

  else
  {
    threeFingerSingleTap = [(UIUndoGestureInteraction *)self threeFingerSingleTap];
    if (threeFingerSingleTap == recognizerCopy)
    {
      v15 = 0;
      v16 = 0;
    }

    else
    {
      threeFingerDoubleTap = [(UIUndoGestureInteraction *)self threeFingerDoubleTap];
      if (threeFingerDoubleTap == recognizerCopy)
      {
        v16 = 0;
        v15 = 1;
      }

      else
      {
        threeFingerLongPress2 = [(UIUndoGestureInteraction *)self threeFingerLongPress];
        v6 = threeFingerLongPress2;
        if (threeFingerLongPress2 != recognizerCopy)
        {

          v14 = 0;
          goto LABEL_18;
        }

        v15 = 1;
        v16 = 1;
      }
    }
  }

  threeFingerPinch = [(UIUndoGestureInteraction *)self threeFingerPinch];
  v14 = threeFingerPinch == gestureRecognizerCopy;

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
  if (threeFingerSlide2 != recognizerCopy)
  {
  }

LABEL_18:
  if (threeFingerLongPress == recognizerCopy)
  {
    goto LABEL_21;
  }

LABEL_22:

  return v14;
}

- (void)touchMultiPansTimer
{
  multiPansTimer = [(UIUndoGestureInteraction *)self multiPansTimer];

  if (multiPansTimer)
  {
    multiPansTimer2 = [(UIUndoGestureInteraction *)self multiPansTimer];
    [(UIDelayedAction *)multiPansTimer2 touch];
  }

  else
  {
    multiPansTimer2 = [[UIDelayedAction alloc] initWithTarget:self action:sel_multiPansTimerElaspsed_ userInfo:0 delay:0.5];
    [(UIUndoGestureInteraction *)self setMultiPansTimer:?];
  }
}

- (void)clearMultiPansTimer
{
  [(UIUndoGestureInteraction *)self setPreviousRecognizedPanDirection:0];
  [(UIUndoGestureInteraction *)self setPanDownStateChangedCounter:0];
  multiPansTimer = [(UIUndoGestureInteraction *)self multiPansTimer];
  [multiPansTimer cancel];

  [(UIUndoGestureInteraction *)self setMultiPansTimer:0];
}

- (void)multiPansTimerElaspsed:(id)elaspsed
{
  [(UIUndoGestureInteraction *)self setPreviousRecognizedPanDirection:0];

  [(UIUndoGestureInteraction *)self setPanDownStateChangedCounter:0];
}

- (void)observerGestureHandler:(id)handler
{
  handlerCopy = handler;
  undoInteractiveHUD = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  [handlerCopy locationInView:undoInteractiveHUD];
  v7 = v6;
  v9 = v8;

  undoInteractiveHUD2 = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  LOBYTE(undoInteractiveHUD) = [undoInteractiveHUD2 pointInside:0 withEvent:{v7, v9}];

  if ((undoInteractiveHUD & 1) == 0 && [(UIUndoGestureInteraction *)self currentInteractiveHUDVisible])
  {
    [(UIUndoGestureInteraction *)self setUndoInteractiveHUDVisibility:0];
    mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
    [mEMORY[0x1E69D4E18] logBlock:&__block_literal_global_57_0 domain:@"com.apple.keyboard.UIKit"];
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

- (void)deactiveActiveKeysIfNeeded:(id)needed
{
  if ([needed state] >= 3)
  {
    v3 = +[UIKeyboardImpl activeInstance];
    [v3 _deactiveActiveKeys];
  }
}

- (void)threeFingerSingleTap:(id)tap
{
  tapCopy = tap;
  if ([tapCopy continuousTapRecognition] && (objc_msgSend(tapCopy, "state") == 1 || objc_msgSend(tapCopy, "state") == 2))
  {
    [(UIUndoGestureInteraction *)self deactiveActiveKeysIfNeeded:tapCopy];
    if ([tapCopy tapCount] != 1)
    {
      [(UIUndoGestureInteraction *)self threeFingerDoubleTapUndoAction];
      [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Undo" trigger:@"UndoHUDGestureDoubleTap"];
      goto LABEL_9;
    }
  }

  else
  {
    if ([tapCopy continuousTapRecognition])
    {
      goto LABEL_9;
    }

    [(UIUndoGestureInteraction *)self deactiveActiveKeysIfNeeded:tapCopy];
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
      mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
      v10 = mEMORY[0x1E69D4E18];
      v11 = &__block_literal_global_61_3;
    }

    else
    {
      mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
      v10 = mEMORY[0x1E69D4E18];
      v11 = &__block_literal_global_63_2;
    }

    [mEMORY[0x1E69D4E18] logBlock:v11 domain:@"com.apple.keyboard.UIKit"];
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

- (void)threeFingerDoubleTap:(id)tap
{
  [(UIUndoGestureInteraction *)self deactiveActiveKeysIfNeeded:tap];
  [(UIUndoGestureInteraction *)self threeFingerDoubleTapUndoAction];

  [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:@"Undo" trigger:@"UndoHUDGestureDoubleTap"];
}

- (void)threeFingerSlide:(id)slide
{
  slideCopy = slide;
  [(UIUndoGestureInteraction *)self deactiveActiveKeysIfNeeded:slideCopy];
  if ([slideCopy state] == 1)
  {
    [(UIUndoGestureInteraction *)self disableEnclosingScrollViewScrolling];
  }

  state = [slideCopy state];
  if ((state - 3) < 2)
  {
    [(UIUndoGestureInteraction *)self _endPan:slideCopy];
    goto LABEL_10;
  }

  if (state == 2)
  {
    [(UIUndoGestureInteraction *)self _updateUndoPan:slideCopy];
    goto LABEL_10;
  }

  v5 = state == 1;
  v6 = slideCopy;
  if (v5)
  {
    [(UIUndoGestureInteraction *)self _startUndoPan:slideCopy];
LABEL_10:
    v6 = slideCopy;
  }
}

- (void)threeFingerLongPress:(id)press
{
  [(UIUndoGestureInteraction *)self deactiveActiveKeysIfNeeded:press];
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

- (void)startMultiPinchTimer:(double)timer
{
  [(UIUndoGestureInteraction *)self clearMultiPinchTimer];
  [(UIUndoGestureInteraction *)self setMultiPinchTimerOn:1];

  [(UIUndoGestureInteraction *)self performSelector:sel_tooSlow_ withObject:0 afterDelay:timer];
}

- (void)threeFingerPinch:(id)pinch
{
  pinchCopy = pinch;
  [(UIUndoGestureInteraction *)self deactiveActiveKeysIfNeeded:pinchCopy];
  if ([pinchCopy state] == 1)
  {
    [(UIUndoGestureInteraction *)self disableEnclosingScrollViewScrolling];
  }

  state = [pinchCopy state];
  if (state > 3)
  {
    v5 = pinchCopy;
    if ((state - 4) >= 2)
    {
      goto LABEL_13;
    }

    [(UIUndoGestureInteraction *)self _cancelPinch:pinchCopy];
  }

  else if (state == 1)
  {
    [(UIUndoGestureInteraction *)self _startPinch:pinchCopy];
  }

  else
  {
    v5 = pinchCopy;
    if (state == 2)
    {
      [(UIUndoGestureInteraction *)self _updatePinch:pinchCopy];
    }

    else
    {
      if (state != 3)
      {
        goto LABEL_13;
      }

      [(UIUndoGestureInteraction *)self _endPinch:pinchCopy];
    }
  }

  v5 = pinchCopy;
LABEL_13:
}

- (id)interactiveHUDButtonForDirection:(int64_t)direction
{
  v4 = 0;
  if (direction > 7)
  {
    switch(direction)
    {
      case 10:
        undoInteractiveHUD = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
        aPasteButtonView = [undoInteractiveHUD aPasteButtonView];
        break;
      case 9:
        undoInteractiveHUD = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
        aPasteButtonView = [undoInteractiveHUD aCutButtonView];
        break;
      case 8:
        undoInteractiveHUD = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
        aPasteButtonView = [undoInteractiveHUD aCopyButtonView];
        break;
      default:
        goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (direction != 2)
  {
    if (direction != 3)
    {
      goto LABEL_15;
    }

    isRTLMode = [(UIUndoGestureInteraction *)self isRTLMode];
    undoInteractiveHUD = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
    if (!isRTLMode)
    {
      goto LABEL_9;
    }

LABEL_13:
    aPasteButtonView = [undoInteractiveHUD leftButtonView];
    goto LABEL_14;
  }

  isRTLMode2 = [(UIUndoGestureInteraction *)self isRTLMode];
  undoInteractiveHUD = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
  if (!isRTLMode2)
  {
    goto LABEL_13;
  }

LABEL_9:
  aPasteButtonView = [undoInteractiveHUD rightButtonView];
LABEL_14:
  v4 = aPasteButtonView;

LABEL_15:

  return v4;
}

- (void)_startPinch:(id)pinch
{
  [pinch avgTouchesToCentroidDistance];

  [(UIUndoGestureInteraction *)self setInitPinchableDistance:?];
}

- (void)_updatePinch:(id)pinch
{
  pinchCopy = pinch;
  if ([(UIUndoGestureInteraction *)self currentInteractiveHUDVisible])
  {
    -[UIUndoGestureInteraction setPotentialPinchDirection:](self, "setPotentialPinchDirection:", [pinchCopy pinchDirection]);
    [pinchCopy avgTouchesToCentroidDistance];
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

- (void)_endPinch:(id)pinch
{
  pinchDirection = [pinch pinchDirection];

  [(UIUndoGestureInteraction *)self _endPinchWithDirection:pinchDirection];
}

- (void)_endPinchWithDirection:(int64_t)direction
{
  if (!-[UIUndoGestureInteraction currentInteractiveHUDVisible](self, "currentInteractiveHUDVisible") || (-[UIUndoGestureInteraction interactiveHUDButtonForDirection:](self, "interactiveHUDButtonForDirection:", direction), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 state], v5, v6 != 2))
  {
    if (direction == 8)
    {
      [(UIUndoGestureInteraction *)self setUndoStateHUDVisibility:1 withType:[(UIUndoGestureInteraction *)self undoControlTypeWithDirection:8] available:[(UIUndoGestureInteraction *)self performActionWithDirection:8]];
      if (![(UIUndoGestureInteraction *)self multiPinchTimerOn])
      {
        [(UIUndoGestureInteraction *)self startMultiPinchTimer:2.0];
        direction = 8;
LABEL_13:
        [(UIUndoGestureInteraction *)self fullyOpenAndCloseCoverWithBeginDirection:direction];
        if (![(UIUndoGestureInteraction *)self multiPinchTimerOn])
        {
          [(UIUndoGestureInteraction *)self setInitPinchableDistance:0.0];

          [(UIUndoGestureInteraction *)self setPotentialPinchDirection:0];
        }

        return;
      }

      [(UIUndoGestureInteraction *)self clearMultiPinchTimer];
      direction = 9;
      v7 = [(UIUndoGestureInteraction *)self performActionWithDirection:9];
      selfCopy2 = self;
      directionCopy = 9;
LABEL_8:
      [(UIUndoGestureInteraction *)self setUndoStateHUDVisibility:1 withType:[(UIUndoGestureInteraction *)selfCopy2 undoControlTypeWithDirection:directionCopy] available:v7];
      goto LABEL_13;
    }

    [(UIUndoGestureInteraction *)self clearMultiPinchTimer];
    if (direction)
    {
      v7 = [(UIUndoGestureInteraction *)self performActionWithDirection:direction];
      selfCopy2 = self;
      directionCopy = direction;
      goto LABEL_8;
    }
  }

  [(UIUndoGestureInteraction *)self fullyCloseCoverWithComplete:0];
}

- (void)_cancelPinch:(id)pinch
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

- (int64_t)slideDirectionWithGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [(UIUndoGestureInteraction *)self view];
  [gestureCopy translationInView:view];
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

- (BOOL)undoGestureIsMoving:(id)moving
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _allActiveTouches = [moving _allActiveTouches];
  v4 = [_allActiveTouches countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(_allActiveTouches);
        }

        if ([*(*(&v10 + 1) + 8 * i) phase] == 2)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [_allActiveTouches countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  inputDelegate = [v2 inputDelegate];

  if (inputDelegate || (+[UIKeyboardImpl activeInstance](UIKeyboardImpl, "activeInstance"), v4 = objc_claimAutoreleasedReturnValue(), [v4 delegateAsResponder], inputDelegate = objc_claimAutoreleasedReturnValue(), v4, inputDelegate))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _scroller = [inputDelegate _scroller];
      goto LABEL_10;
    }

    if ([inputDelegate conformsToProtocol:&unk_1EFE8B2D0] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      textInputView = [inputDelegate textInputView];
      v7 = textInputView;
      if (textInputView)
      {
        _scroller = [textInputView _scroller];
      }

      else
      {
        _scroller = 0;
      }

      goto LABEL_10;
    }
  }

  _scroller = 0;
LABEL_10:

  return _scroller;
}

- (void)disableEnclosingScrollViewScrolling
{
  scrollViewForInputDelegate = [(UIUndoGestureInteraction *)self scrollViewForInputDelegate];
  if (scrollViewForInputDelegate)
  {
    v4 = scrollViewForInputDelegate;
    panGestureRecognizer = [scrollViewForInputDelegate panGestureRecognizer];
    if ([panGestureRecognizer isEnabled])
    {
      [panGestureRecognizer setEnabled:0];
      [panGestureRecognizer setEnabled:1];
    }

    scrollViewForInputDelegate = v4;
  }
}

- (void)_startUndoPan:(id)pan
{
  panCopy = pan;
  view = [(UIUndoGestureInteraction *)self view];
  [panCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  [(UIUndoGestureInteraction *)self setPreviousPanLocation:v7, v9];
  [(UIUndoGestureInteraction *)self setBeginPanDirection:0];
  [(UIUndoGestureInteraction *)self setPanDownStateChangedCounter:[(UIUndoGestureInteraction *)self panDownStateChangedCounter]+ 1];
  mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__UIUndoGestureInteraction__startUndoPan___block_invoke;
  v12[3] = &unk_1E70FD370;
  v13 = panCopy;
  v11 = panCopy;
  [mEMORY[0x1E69D4E18] logBlock:v12 domain:@"com.apple.keyboard.UIKit"];
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

- (void)_updateUndoPan:(id)pan
{
  panCopy = pan;
  if ([(UIUndoGestureInteraction *)self undoGestureIsMoving:panCopy])
  {
    view = [(UIUndoGestureInteraction *)self view];
    [panCopy locationInView:view];
    v7 = v6;
    v9 = v8;

    v10 = [(UIUndoGestureInteraction *)self slideDirectionWithGesture:panCopy];
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
        state = [v12 state];

        if (state != 2)
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
            undoInteractiveHUD = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
            [undoInteractiveHUD layoutIfNeeded];
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

- (void)_endPan:(id)pan
{
  panCopy = pan;
  if ([panCopy state] == 3)
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
    beginPanDirection = [(UIUndoGestureInteraction *)self beginPanDirection];
    [(UIUndoGestureInteraction *)self remainingDistanceToTravel];
    [(UIUndoGestureInteraction *)self animateSpringCoverWithSuccess:v8 < v4 direction:beginPanDirection remainingDistanceToTravel:?];
    goto LABEL_16;
  }

  if ([panCopy state] == 3)
  {
    [(UIUndoGestureInteraction *)self _endPanWithDirection:[(UIUndoGestureInteraction *)self beginPanDirection]];
  }

LABEL_16:
}

- (BOOL)_endPanWithDirection:(int64_t)direction
{
  if (!direction)
  {
    return 0;
  }

  v5 = [(UIUndoGestureInteraction *)self performActionWithDirection:?];
  v6 = [(UIUndoGestureInteraction *)self undoControlTypeWithDirection:direction];
  [(UIUndoGestureInteraction *)self setUndoStateHUDVisibility:1 withType:v6 available:v5];
  if (!v5)
  {
    return 0;
  }

  mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__UIUndoGestureInteraction__endPanWithDirection___block_invoke;
  v9[3] = &__block_descriptor_40_e5__8__0l;
  v9[4] = v6;
  [mEMORY[0x1E69D4E18] logBlock:v9 domain:@"com.apple.keyboard.UIKit"];

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

- (int64_t)undoControlTypeWithDirection:(int64_t)direction
{
  if (direction > 7)
  {
    switch(direction)
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

  if (direction == 2)
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
    if (direction != 3)
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

- (BOOL)performActionWithDirection:(int64_t)direction
{
  canRedo = 0;
  if (direction <= 7)
  {
    if (direction == 2)
    {
      if ([(UIUndoGestureInteraction *)self isRTLMode])
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (direction != 3)
      {
        return canRedo;
      }

      if (![(UIUndoGestureInteraction *)self isRTLMode])
      {
LABEL_9:
        canRedo = [(UIUndoGestureInteraction *)self canRedo];
        [(UIUndoGestureInteraction *)self redo:0];
        v5 = UIKBAnalyticsTextEditingOperationRedo;
        goto LABEL_14;
      }
    }

    canRedo = [(UIUndoGestureInteraction *)self canUndo];
    [(UIUndoGestureInteraction *)self undo:0];
    v5 = UIKBAnalyticsTextEditingOperationUndo;
    goto LABEL_14;
  }

  switch(direction)
  {
    case 8:
      canRedo = [(UIUndoGestureInteraction *)self canCopy];
      [(UIUndoGestureInteraction *)self copyOperation];
      v5 = UIKBAnalyticsTextEditingOperationCopy;
      goto LABEL_14;
    case 9:
      canRedo = [(UIUndoGestureInteraction *)self canCut];
      [(UIUndoGestureInteraction *)self cutOperation];
      v5 = UIKBAnalyticsTextEditingOperationCut;
      goto LABEL_14;
    case 10:
      canRedo = [(UIUndoGestureInteraction *)self canPaste];
      [(UIUndoGestureInteraction *)self pasteOperation];
      v5 = UIKBAnalyticsTextEditingOperationPaste;
LABEL_14:
      [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:*v5 trigger:@"UndoHUDGesturePan"];
      break;
  }

  return canRedo;
}

- (BOOL)performGestureWithDirection:(int64_t)direction authenticationMessage:(id)message
{
  messageCopy = message;
  if (direction != 1)
  {
    if ((direction & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v9 = +[UIKeyboardImpl activeInstance];
      [v9 _deactiveActiveKeys];

      if ([(UIUndoGestureInteraction *)self undoManagerOperationsUndoRedoAvailable])
      {
        v8 = [(UIUndoGestureInteraction *)self _endPanWithDirection:direction];
        goto LABEL_16;
      }
    }

    else if ((direction | 2) == 0xA)
    {
      v10 = +[UIKeyboardImpl activeInstance];
      [v10 _deactiveActiveKeys];

      if ([(UIUndoGestureInteraction *)self undoManagerOperationsCutCopyPasteAvailable])
      {
        if (direction == 10 && messageCopy)
        {
          [UIPasteboard _attemptAuthenticationWithMessage:messageCopy];
        }

        [(UIUndoGestureInteraction *)self _endPinchWithDirection:direction];
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

- (void)fullyOpenAndCloseCoverWithBeginDirection:(int64_t)direction
{
  v3[4] = self;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__UIUndoGestureInteraction_fullyOpenAndCloseCoverWithBeginDirection___block_invoke;
  v4[3] = &unk_1E70F32F0;
  v4[4] = self;
  v4[5] = direction;
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

- (void)fullyCloseCoverWithComplete:(id)complete
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __56__UIUndoGestureInteraction_fullyCloseCoverWithComplete___block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [UIView animateWithDuration:0 delay:v3 options:complete animations:0.1 completion:0.0];
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

- (void)animateSpringCoverWithSuccess:(BOOL)success direction:(int64_t)direction remainingDistanceToTravel:(double)travel
{
  if (success && ([(UIUndoGestureInteraction *)self performActionWithDirection:direction], travel > 0.0))
  {

    [(UIUndoGestureInteraction *)self fullyOpenAndCloseCoverWithBeginDirection:direction];
  }

  else
  {

    [(UIUndoGestureInteraction *)self fullyCloseCoverWithComplete:0, direction, travel];
  }
}

- (BOOL)canUndo
{
  _undoManager = [(UIUndoGestureInteraction *)self _undoManager];
  canUndo = [_undoManager canUndo];

  return canUndo;
}

- (BOOL)canRedo
{
  _undoManager = [(UIUndoGestureInteraction *)self _undoManager];
  canRedo = [_undoManager canRedo];

  return canRedo;
}

- (void)_updateHUDControlState
{
  if ([(UIUndoGestureInteraction *)self currentInteractiveHUDVisible])
  {
    v3 = +[UIKeyboardImpl activeInstance];
    [v3 setEditingTraitsMarkedDirty:1];

    undoInteractiveHUD = [(UIUndoGestureInteraction *)self undoInteractiveHUD];
    [undoInteractiveHUD updateHUDControlState];
  }
}

- (void)undo:(BOOL)undo
{
  _undoManager = [(UIUndoGestureInteraction *)self _undoManager];
  if ([_undoManager canUndo])
  {
    [_undoManager undo];
  }
}

- (void)redo:(BOOL)redo
{
  _undoManager = [(UIUndoGestureInteraction *)self _undoManager];
  if ([_undoManager canRedo])
  {
    [_undoManager redo];
  }
}

- (id)responderForOperation:(SEL)operation withSender:(id)sender
{
  senderCopy = sender;
  currentResponder = [(UIUndoGestureInteraction *)self currentResponder];
  if (([currentResponder canPerformAction:operation withSender:senderCopy] & 1) == 0)
  {
    v8 = [UIApp _unswizzledTargetInChainForAction:operation sender:senderCopy];
    if (!v8)
    {
      goto LABEL_5;
    }

    currentResponder = v8;
  }

  currentResponder = currentResponder;
  v8 = currentResponder;
LABEL_5:

  return v8;
}

- (UIKBTextEditingTraits)editingTraits
{
  v3 = +[UIKeyboardImpl activeInstance];
  currentResponder = [(UIUndoGestureInteraction *)self currentResponder];
  firstResponder = [(UIKBTextEditingTraits *)self->_editingTraits firstResponder];

  v6 = _UIMainBundleIdentifier();
  v7 = [(UIUndoGestureInteraction *)self bundleIniWorkFamily:v6];

  if (currentResponder && (!self->_editingTraits || firstResponder != currentResponder || !v3 || (([v3 editingTraitsMarkedDirty] | v7) & 1) != 0))
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __41__UIUndoGestureInteraction_editingTraits__block_invoke;
    v13[3] = &unk_1E7117648;
    v13[4] = self;
    v8 = [UIKBTextEditingTraits traitsForEditingInteractionWithFirstResponder:currentResponder canRespondBlock:v13 keyMaskFlags:2];
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
  editingTraits = [(UIUndoGestureInteraction *)self editingTraits];
  if (editingTraits)
  {
    editingTraits2 = [(UIUndoGestureInteraction *)self editingTraits];
    canCut = [editingTraits2 canCut];
  }

  else
  {
    canCut = 0;
  }

  return canCut;
}

- (BOOL)canCopy
{
  editingTraits = [(UIUndoGestureInteraction *)self editingTraits];
  if (editingTraits)
  {
    editingTraits2 = [(UIUndoGestureInteraction *)self editingTraits];
    canCopy = [editingTraits2 canCopy];
  }

  else
  {
    canCopy = 0;
  }

  return canCopy;
}

- (BOOL)canPaste
{
  editingTraits = [(UIUndoGestureInteraction *)self editingTraits];
  if (editingTraits)
  {
    editingTraits2 = [(UIUndoGestureInteraction *)self editingTraits];
    canPaste = [editingTraits2 canPaste];
  }

  else
  {
    canPaste = 0;
  }

  return canPaste;
}

- (void)cutOperation
{
  v3 = [(UIUndoGestureInteraction *)self responderForOperation:sel_cut_ withSender:0x1EFB7A830];
  v4 = v3;
  if (v3)
  {
    _dataOwnerForCopy = [v3 _dataOwnerForCopy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__UIUndoGestureInteraction_cutOperation__block_invoke;
    v6[3] = &unk_1E70F3590;
    v7 = v4;
    [UIPasteboard _performAsDataOwner:_dataOwnerForCopy block:v6];
  }

  [(UIUndoGestureInteraction *)self _updateHUDControlState];
}

- (void)copyOperation
{
  v3 = [(UIUndoGestureInteraction *)self responderForOperation:sel_copy_ withSender:0x1EFB7A830];
  v4 = v3;
  if (v3)
  {
    _dataOwnerForCopy = [v3 _dataOwnerForCopy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__UIUndoGestureInteraction_copyOperation__block_invoke;
    v6[3] = &unk_1E70F3590;
    v7 = v4;
    [UIPasteboard _performAsDataOwner:_dataOwnerForCopy block:v6];
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
    _dataOwnerForPaste = [v6 _dataOwnerForPaste];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__UIUndoGestureInteraction_pasteOperation__block_invoke;
    v9[3] = &unk_1E70F3590;
    v10 = v7;
    [UIPasteboard _performAsDataOwner:_dataOwnerForPaste block:v9];
  }

  [(UIUndoGestureInteraction *)self _updateHUDControlState];
}

+ (void)showSecurePasteConfirmationWithCompletionHandler:(id)handler
{
  v3 = UIApp;
  handlerCopy = handler;
  keyWindow = [v3 keyWindow];
  windowScene = [keyWindow windowScene];

  v6 = [UITextEffectsWindow sharedTextEffectsWindowForWindowScene:windowScene];
  editingOverlayViewController = [v6 editingOverlayViewController];
  undoInteraction = [editingOverlayViewController undoInteraction];

  [undoInteraction setPasteConfirmationAction:handlerCopy];
  [undoInteraction setPasteConfirmationHUDVisibility:1];
}

+ (BOOL)_isKeyWindowSceneSessionRoleValidForTutorial
{
  v2 = +[UIWindow _applicationKeyWindow];
  windowScene = [v2 windowScene];
  session = [windowScene session];
  role = [session role];

  if (role)
  {
    v6 = [role isEqualToString:@"SBSUIWindowSceneSessionRoleSystemNotes"] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

+ (void)presentProductivityGestureTutorialIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _UIMainBundleIdentifier();
  v6 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v6 preferencesActions];
  if ([preferencesActions oneTimeActionCompleted:*MEMORY[0x1E69D9838]])
  {
  }

  else
  {
    v8 = [v5 isEqualToString:@"com.apple.purplebuddy"];

    if ((v8 & 1) == 0 && [self _isKeyWindowSceneSessionRoleValidForTutorial])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __85__UIUndoGestureInteraction_presentProductivityGestureTutorialIfNeededWithCompletion___block_invoke;
      block[3] = &unk_1E70F0F78;
      v10 = completionCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      goto LABEL_8;
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
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

+ (void)presentProductivityGestureTutorialInlineWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!+[UIKeyboard isOnScreen](UIKeyboard, "isOnScreen") || (UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) != 1 || +[UIKeyboardImpl isFloating])
  {
    [objc_opt_class() presentProductivityGestureTutorialIfNeededWithCompletion:completionCopy];
    goto LABEL_5;
  }

  v4 = _UIMainBundleIdentifier();
  v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v5 preferencesActions];
  v7 = *MEMORY[0x1E69D9838];
  if (([preferencesActions oneTimeActionCompleted:*MEMORY[0x1E69D9838]] & 1) == 0)
  {
    v8 = [v4 isEqualToString:@"com.apple.purplebuddy"];

    if ((v8 & 1) != 0 || ![self _isKeyWindowSceneSessionRoleValidForTutorial])
    {
      goto LABEL_13;
    }

    v9 = +[UIKeyboardImpl activeInstance];
    [v9 presentEditingIntroductionView];

    v5 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v5 preferencesActions];
    [preferencesActions didTriggerOneTimeAction:v7];
  }

LABEL_13:
  if (completionCopy)
  {
    completionCopy[2]();
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