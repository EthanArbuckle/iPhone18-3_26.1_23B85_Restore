@interface UIKeyboardFloatingTransitionController
+ (BOOL)isPointWithinDockingRegion:(CGPoint)region;
+ (CGRect)dockingRegion;
+ (id)snapshotOfKeyplaneView:(id)view;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)useStateBasedAnimations;
- (CGPoint)lastGestureCenter;
- (NSMapTable)activeKeyboardLayoutGuideTransitionAssertions;
- (UIInputWindowController)inputWindowController;
- (UIKeyboardFloatingTransitionControllerDelegate)delegate;
- (void)addGestureRecognizersToView:(id)view;
- (void)beginPanGesture:(id)gesture;
- (void)beginPinchGesture:(id)gesture;
- (void)beginTransitionAtPoint:(CGPoint)point withScale:(double)scale recognizer:(id)recognizer;
- (void)beginTransitionFromPanGestureRecognizer:(id)recognizer;
- (void)captureStateForStart:(BOOL)start;
- (void)endPanGesture:(id)gesture;
- (void)endPinchGesture:(id)gesture;
- (void)endTransitionAtPoint:(CGPoint)point withScale:(double)scale;
- (void)finalizeTransition;
- (void)handlePanGestureRecognizerAction:(id)action;
- (void)handlePinchGestureRecognizerAction:(id)action;
- (void)initializeContextAtPoint:(CGPoint)point recognizer:(id)recognizer;
- (void)inputViewSnapshot:(id *)snapshot withPlatterInsets:(UIEdgeInsets *)insets;
- (void)removeGestureRecognizers;
- (void)setKeyboardLayoutGuideInTransition:(BOOL)transition forWindow:(id)window;
- (void)updateAnimationAtScale:(double)scale;
- (void)updateHysteresisForCurrentFloatingState;
- (void)updateLayoutGuideForTransitionStart:(BOOL)start;
- (void)updateLayoutGuideFromFrame:(CGRect)frame;
- (void)updatePanGesture:(id)gesture;
- (void)updatePinchGesture:(id)gesture;
- (void)updateTransitionAtPoint:(CGPoint)point withScale:(double)scale interactive:(BOOL)interactive;
@end

@implementation UIKeyboardFloatingTransitionController

+ (CGRect)dockingRegion
{
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4 / 3.0;
  v8 = v6 + -30.0;
  v9 = 30.0;
  v10 = v4 / 3.0;
  result.size.height = v9;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (BOOL)isPointWithinDockingRegion:(CGPoint)region
{
  y = region.y;
  x = region.x;
  if (+[UIKeyboardImpl isFloatingForced])
  {
    return 0;
  }

  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen bounds];

  [self dockingRegion];
  v7 = v12.origin.x;
  v8 = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (x < CGRectGetMinX(v12))
  {
    return 0;
  }

  v13.origin.x = v7;
  v13.origin.y = v8;
  v13.size.width = width;
  v13.size.height = height;
  if (x > CGRectGetMaxX(v13))
  {
    return 0;
  }

  v14.origin.x = v7;
  v14.origin.y = v8;
  v14.size.width = width;
  v14.size.height = height;
  return y >= CGRectGetMinY(v14);
}

+ (id)snapshotOfKeyplaneView:(id)view
{
  viewCopy = view;
  v4 = [[UIKeyboardKeyplaneSnapshotView alloc] initWithKeyplaneView:viewCopy];
  [(UIView *)v4 setUserInteractionEnabled:0];
  window = [viewCopy window];

  screen = [window screen];
  [screen scale];
  [(UIView *)v4 setContentScaleFactor:?];

  return v4;
}

- (BOOL)useStateBasedAnimations
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v2 preferencesActions];
  if ([preferencesActions currentInputModeSupportsCrescendo])
  {
    v4 = +[UIInputWindowController supportsStateBasedAnimations];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)beginTransitionFromPanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v5 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel_handlePanGestureRecognizerAction_];
  [(UIKeyboardFloatingTransitionController *)self setPanGestureRecognizer:v5];

  pinchGestureRecognizer = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
  view = [pinchGestureRecognizer view];
  panGestureRecognizer = [(UIKeyboardFloatingTransitionController *)self panGestureRecognizer];
  [view addGestureRecognizer:panGestureRecognizer];

  panGestureRecognizer2 = [(UIKeyboardFloatingTransitionController *)self panGestureRecognizer];
  [(UIGestureRecognizer *)panGestureRecognizer2 transferTouchesFromGestureRecognizer:recognizerCopy];
}

- (void)updateHysteresisForCurrentFloatingState
{
  if (+[UIKeyboardImpl isFloating])
  {
    v3 = 8.0;
  }

  else
  {
    v3 = 68.0;
  }

  pinchGestureRecognizer = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
  [pinchGestureRecognizer _setHysteresis:v3];
}

- (void)addGestureRecognizersToView:(id)view
{
  viewCopy = view;
  pinchGestureRecognizer = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
  view = [pinchGestureRecognizer view];

  if (view != viewCopy)
  {
    [(UIKeyboardFloatingTransitionController *)self removeGestureRecognizers];
    v6 = [[UIKeyboardFloatingPinchGestureRecognizer alloc] initWithTarget:self action:sel_handlePinchGestureRecognizerAction_];
    [(UIKeyboardFloatingTransitionController *)self setPinchGestureRecognizer:v6];

    pinchGestureRecognizer2 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
    [pinchGestureRecognizer2 _setEndsOnSingleTouch:1];

    pinchGestureRecognizer3 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
    [pinchGestureRecognizer3 setDelegate:self];

    pinchGestureRecognizer4 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
    [viewCopy addGestureRecognizer:pinchGestureRecognizer4];
  }

  [(UIKeyboardFloatingTransitionController *)self updateHysteresisForCurrentFloatingState];
}

- (void)removeGestureRecognizers
{
  pinchGestureRecognizer = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
  view = [pinchGestureRecognizer view];
  pinchGestureRecognizer2 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
  [view removeGestureRecognizer:pinchGestureRecognizer2];

  [(UIKeyboardFloatingTransitionController *)self setPinchGestureRecognizer:0];
}

- (void)handlePanGestureRecognizerAction:(id)action
{
  actionCopy = action;
  state = [actionCopy state];
  if (state <= 2)
  {
    if (state == 1)
    {
      [(UIKeyboardFloatingTransitionController *)self beginPanGesture:actionCopy];
    }

    else
    {
      v5 = state == 2;
      v6 = actionCopy;
      if (!v5)
      {
        goto LABEL_12;
      }

      [(UIKeyboardFloatingTransitionController *)self updatePanGesture:actionCopy];
    }

LABEL_11:
    v6 = actionCopy;
    goto LABEL_12;
  }

  if (state == 3 || (v5 = state == 4, v6 = actionCopy, v5))
  {
    [(UIKeyboardFloatingTransitionController *)self endPanGesture:actionCopy];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)beginPanGesture:(id)gesture
{
  gestureCopy = gesture;
  [gestureCopy locationOfTouch:0 inView:0];
  [UIKeyboardFloatingTransitionController beginTransitionAtPoint:"beginTransitionAtPoint:withScale:recognizer:" withScale:gestureCopy recognizer:?];

  [(UIKeyboardFloatingTransitionController *)self setWithinDockingRegion:0];
}

- (void)updatePanGesture:(id)gesture
{
  [gesture locationOfTouch:0 inView:0];

  [UIKeyboardFloatingTransitionController updateTransitionAtPoint:"updateTransitionAtPoint:withScale:interactive:" withScale:1 interactive:?];
}

- (void)endPanGesture:(id)gesture
{
  gestureCopy = gesture;
  platterView = [(UIKeyboardFloatingTransitionController *)self platterView];
  [platterView center];
  v6 = v5;
  v8 = v7;

  if ([gestureCopy numberOfTouches] == 1)
  {
    [gestureCopy locationOfTouch:0 inView:0];
    v6 = v9;
    v8 = v10;
  }

  [(UIKeyboardFloatingTransitionController *)self endTransitionAtPoint:v6 withScale:v8, 1.0];
  panGestureRecognizer = [(UIKeyboardFloatingTransitionController *)self panGestureRecognizer];
  view = [panGestureRecognizer view];
  panGestureRecognizer2 = [(UIKeyboardFloatingTransitionController *)self panGestureRecognizer];
  [view removeGestureRecognizer:panGestureRecognizer2];

  [(UIKeyboardFloatingTransitionController *)self setPanGestureRecognizer:0];
}

- (void)handlePinchGestureRecognizerAction:(id)action
{
  actionCopy = action;
  state = [actionCopy state];
  if (state <= 2)
  {
    if (state == 1)
    {
      [(UIKeyboardFloatingTransitionController *)self beginPinchGesture:actionCopy];
    }

    else
    {
      v5 = state == 2;
      v6 = actionCopy;
      if (!v5)
      {
        goto LABEL_12;
      }

      [(UIKeyboardFloatingTransitionController *)self updatePinchGesture:actionCopy];
    }

LABEL_11:
    v6 = actionCopy;
    goto LABEL_12;
  }

  if (state == 3 || (v5 = state == 4, v6 = actionCopy, v5))
  {
    [(UIKeyboardFloatingTransitionController *)self endPinchGesture:actionCopy];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)beginPinchGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy numberOfTouches])
  {
    [gestureCopy locationInView:0];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    platterView = [(UIKeyboardFloatingTransitionController *)self platterView];
    [platterView center];
    v5 = v9;
    v7 = v10;
  }

  [gestureCopy scale];
  [(UIKeyboardFloatingTransitionController *)self beginTransitionAtPoint:gestureCopy withScale:v5 recognizer:v7, v11];
}

- (void)updatePinchGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy numberOfTouches])
  {
    [gestureCopy locationInView:0];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    platterView = [(UIKeyboardFloatingTransitionController *)self platterView];
    [platterView center];
    v6 = v10;
    v8 = v11;
  }

  [gestureCopy scale];
  v13 = v12;

  [(UIKeyboardFloatingTransitionController *)self updateTransitionAtPoint:1 withScale:v6 interactive:v8, v13];
}

- (void)endPinchGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([gestureCopy numberOfTouches])
  {
    [gestureCopy locationInView:0];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    platterView = [(UIKeyboardFloatingTransitionController *)self platterView];
    [platterView center];
    v6 = v10;
    v8 = v11;
  }

  [gestureCopy scale];
  v13 = v12;

  [(UIKeyboardFloatingTransitionController *)self endTransitionAtPoint:v6 withScale:v8, v13];
}

- (void)beginTransitionAtPoint:(CGPoint)point withScale:(double)scale recognizer:(id)recognizer
{
  y = point.y;
  x = point.x;
  recognizerCopy = recognizer;
  [(UIKeyboardFloatingTransitionController *)self setIsTransitioning:1];
  [(UIKeyboardFloatingTransitionController *)self updateLayoutGuideForTransitionStart:1];
  delegate = [(UIKeyboardFloatingTransitionController *)self delegate];
  [delegate willBeginTransitionWithController:self];

  [(UIKeyboardFloatingTransitionController *)self initializeContextAtPoint:recognizerCopy recognizer:x, y];

  [(UIKeyboardFloatingTransitionController *)self updateTransitionAtPoint:0 withScale:x interactive:y, scale];
}

- (void)updateTransitionAtPoint:(CGPoint)point withScale:(double)scale interactive:(BOOL)interactive
{
  interactiveCopy = interactive;
  y = point.y;
  x = point.x;
  endState = [(UIKeyboardFloatingTransitionController *)self endState];
  inputView = [endState inputView];

  if (inputView)
  {
    [(UIKeyboardFloatingTransitionController *)self lastGestureCenter];
    v13 = x - v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__UIKeyboardFloatingTransitionController_updateTransitionAtPoint_withScale_interactive___block_invoke;
    aBlock[3] = &unk_1E711FF68;
    aBlock[4] = self;
    v15 = y - v14;
    *&aBlock[5] = x;
    *&aBlock[6] = y;
    *&aBlock[7] = x - v12;
    *&aBlock[8] = y - v14;
    *&aBlock[9] = scale;
    v26 = interactiveCopy;
    v16 = _Block_copy(aBlock);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __88__UIKeyboardFloatingTransitionController_updateTransitionAtPoint_withScale_interactive___block_invoke_3;
    v23[3] = &unk_1E711FF68;
    v23[4] = self;
    *&v23[5] = x;
    *&v23[6] = y;
    *&v23[7] = v13;
    *&v23[8] = v15;
    v24 = interactiveCopy;
    *&v23[9] = scale;
    v17 = _Block_copy(v23);
    lightEffectsTransitionBackdrop = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    if (lightEffectsTransitionBackdrop && ![(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations])
    {

      if (!interactiveCopy)
      {
        [(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations];
        goto LABEL_11;
      }

      [(UIKeyboardFloatingTransitionController *)self updateAnimationAtScale:scale];
    }

    else
    {
    }

    if ([(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations]&& interactiveCopy)
    {
      v16[2](v16);
LABEL_12:

      return;
    }

LABEL_11:
    animationBehavior = [(UIKeyboardFloatingTransitionController *)self animationBehavior];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__UIKeyboardFloatingTransitionController_updateTransitionAtPoint_withScale_interactive___block_invoke_4;
    v20[3] = &unk_1E70FE2C0;
    v20[4] = self;
    v21 = v16;
    v22 = v17;
    [UIView _animateUsingSpringBehavior:animationBehavior tracking:interactiveCopy animations:v20 completion:0];

    goto LABEL_12;
  }
}

void __88__UIKeyboardFloatingTransitionController_updateTransitionAtPoint_withScale_interactive___block_invoke(uint64_t a1)
{
  v53[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setLastGestureCenter:{*(a1 + 40), *(a1 + 48)}];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) platterView];
  [v4 setCenter:{v2, v3}];

  v5 = [*(a1 + 32) startState];
  v6 = [v5 inputView];
  [v6 center];
  v8 = v7 + *(a1 + 56);
  v10 = v9 + *(a1 + 64);
  v11 = [*(a1 + 32) startState];
  v12 = [v11 inputView];
  [v12 setCenter:{v8, v10}];

  v13 = [*(a1 + 32) endState];
  v14 = [v13 inputView];
  [v14 center];
  v16 = v15 + *(a1 + 56);
  v18 = v17 + *(a1 + 64);
  v19 = [*(a1 + 32) endState];
  v20 = [v19 inputView];
  [v20 setCenter:{v16, v18}];

  if (*(a1 + 72) == 1.0 && (*(a1 + 80) & 1) == 0)
  {
    if ([*(a1 + 32) startedFromFloating])
    {
      +[UIKeyboardImpl floatingWidth];
      v23 = v22;
    }

    else
    {
      v24 = [*(a1 + 32) inputWindowController];
      v25 = [v24 _window];
      [v25 bounds];
      v23 = v26;
    }

    if ([*(a1 + 32) startedFromFloating])
    {
      v27 = [*(a1 + 32) inputWindowController];
      v28 = [v27 _window];
      [v28 bounds];
      v30 = v29;
    }

    else
    {
      +[UIKeyboardImpl floatingWidth];
      v30 = v31;
    }

    [*(a1 + 32) progress];
    v33 = (v30 * v32 + v23 * (1.0 - v32)) * 0.5;
    v34 = *(a1 + 40) - v33;
    v35 = [*(a1 + 32) inputWindowController];
    v36 = [v35 _window];
    [v36 bounds];
    v38 = fmax(fmin(v34, v37 - v33), 0.0);

    v39 = [*(a1 + 32) startState];
    [v39 platterViewFrame];
    v41 = v40 * 0.5;

    v42 = [*(a1 + 32) inputWindowController];
    v43 = [v42 _window];
    [v43 bounds];
    v45 = v44 - ceil(v41 + *(a1 + 48));

    v46 = [MEMORY[0x1E696B098] valueWithUIOffset:{v38, v45}];
    v52 = @"Offset";
    v53[0] = v46;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:&v52 count:1];
    v48 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __88__UIKeyboardFloatingTransitionController_updateTransitionAtPoint_withScale_interactive___block_invoke_2;
    v50[3] = &unk_1E7116848;
    v51 = v47;
    v49 = v47;
    [v48 performOnDistributedControllers:v50];
  }

  else
  {
    v21 = *(a1 + 32);

    [v21 updateAnimationAtScale:?];
  }
}

void __88__UIKeyboardFloatingTransitionController_updateTransitionAtPoint_withScale_interactive___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) platterView];
  [v4 setCenter:{v2, v3}];

  [*(a1 + 32) setLastGestureCenter:{*(a1 + 40), *(a1 + 48)}];
  v5 = [*(a1 + 32) startState];
  v6 = [v5 inputView];
  [v6 center];
  v8 = v7 + *(a1 + 56);
  v10 = v9 + *(a1 + 64);
  v11 = [*(a1 + 32) startState];
  v12 = [v11 inputView];
  [v12 setCenter:{v8, v10}];

  v13 = [*(a1 + 32) endState];
  v14 = [v13 inputView];
  [v14 center];
  v16 = v15 + *(a1 + 56);
  v18 = v17 + *(a1 + 64);
  v19 = [*(a1 + 32) endState];
  v20 = [v19 inputView];
  [v20 setCenter:{v16, v18}];

  v21 = [*(a1 + 32) lightEffectsTransitionBackdrop];
  if (!v21 || (v22 = *(a1 + 80), v21, (v22 & 1) == 0))
  {
    v23 = *(a1 + 32);
    v24 = *(a1 + 72);

    [v23 updateAnimationAtScale:v24];
  }
}

uint64_t __88__UIKeyboardFloatingTransitionController_updateTransitionAtPoint_withScale_interactive___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) useStateBasedAnimations];
  v3 = 48;
  if (v2)
  {
    v3 = 40;
  }

  v4 = *(*(a1 + v3) + 16);

  return v4();
}

- (void)endTransitionAtPoint:(CGPoint)point withScale:(double)scale
{
  y = point.y;
  x = point.x;
  v130 = *MEMORY[0x1E69E9840];
  v8 = CACurrentMediaTime();
  [(UIKeyboardFloatingTransitionController *)self gestureBeginTime];
  v10 = v8 - v9;
  v11 = 1.0;
  if (v10 > 0.25)
  {
    if ([(UIKeyboardFloatingTransitionController *)self expandedForDocking])
    {
      [(UIKeyboardFloatingTransitionController *)self progress];
      v11 = v12;
    }

    else
    {
      platterView = [(UIKeyboardFloatingTransitionController *)self platterView];
      v14 = [platterView _projectedTargetForKey:@"transform" decelerationFactor:0.995];

      memset(&v128, 0, sizeof(v128));
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v14)
        {
          [v14 CATransform3DValue];
        }

        else
        {
          memset(&v128, 0, sizeof(v128));
        }
      }

      else
      {
        CATransform3DMakeScale(&v128, scale, scale, 1.0);
      }

      CATransform3DGetDecomposition_();
      v15 = round(v129 + -1.0);
      endState = [(UIKeyboardFloatingTransitionController *)self endState];
      [endState scale];
      v11 = v15 / (v17 + -1.0);
    }
  }

  platterView2 = [(UIKeyboardFloatingTransitionController *)self platterView];
  v19 = [platterView2 _projectedTargetForKey:@"position" decelerationFactor:0.995];

  objc_opt_class();
  v118 = y;
  v20 = x;
  if (objc_opt_isKindOfClass())
  {
    [v19 CGPointValue];
    v20 = v21;
    y = v22;
  }

  if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating]&& (v23 = 0.5, v11 < 0.5))
  {
    v24 = 1;
  }

  else
  {
    startedFromFloating = [(UIKeyboardFloatingTransitionController *)self startedFromFloating];
    v23 = 0.5;
    v24 = (v11 >= 0.5) & ~startedFromFloating;
  }

  v117 = x;
  if (v11 >= v23)
  {
    endState2 = [(UIKeyboardFloatingTransitionController *)self endState];
    [(UIKeyboardFloatingTransitionController *)self endState];
  }

  else
  {
    endState2 = [(UIKeyboardFloatingTransitionController *)self startState];
    [(UIKeyboardFloatingTransitionController *)self startState];
  }
  v27 = ;
  [v27 scale];
  v116 = v28;

  v29 = @"NotOnEdge";
  platterView3 = [(UIKeyboardFloatingTransitionController *)self platterView];
  superview = [platterView3 superview];

  [superview bounds];
  v113 = v33;
  rect = v34;
  v36 = v35;
  v37 = v32;
  if (v24)
  {
    v108 = v32;
    platterView4 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [platterView4 anchorPoint];
    v40 = v39;
    v42 = v41;

    v43 = v36;
    if (v10 <= 0.25)
    {
      +[UIKeyboardImpl floatingPersistentOffset];
      v20 = v44;
      v111 = v45;
      [endState2 platterViewFrame];
      v109 = v46;
      v48 = v47;
      +[UIKeyboardPopoverContainer contentInsets];
      v50 = v49;
      v107 = v51;
      v53 = v52;
      if ([(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations])
      {
        y = v111 - v48;
      }

      else
      {
        v20 = v40 * v109 + v20 - v107;
        y = v42 * v48 + v111 - (v48 - (v50 + v53));
      }
    }

    [endState2 platterViewFrame];
    v73 = v72;
    v75 = v74;
    v110 = v40;
    v112 = v42;
    v76 = v20 - v40 * v72;
    v77 = y - v42 * v74;
    +[UIPeripheralHost floatingChromeBuffer];
    v79 = v113 + v78;
    v81 = v43 + v80;
    v83 = v108 - (v78 + v82);
    v85 = rect - (v80 + v84);
    v133.origin.x = UIRectContainInRect(v76, v77, v73, v75, v113 + v78, v81, v83, v85);
    v86 = v133.origin.x;
    v87 = v133.origin.y;
    height = v133.size.height;
    recta = v133.size.width;
    MinX = CGRectGetMinX(v133);
    v134.origin.x = v79;
    v134.origin.y = v81;
    v134.size.width = v83;
    v134.size.height = v85;
    v90 = MinX - CGRectGetMinX(v134);
    +[UIKeyboardFloatingTransitionController magneticEdgeMargin];
    if (v90 <= v91)
    {
      v97 = UIKBAnalyticsFloatingKeyboardEdgeLeft;
      v86 = v79;
      v71 = v117;
      v96 = recta;
    }

    else
    {
      v135.origin.x = v79;
      v135.origin.y = v81;
      v135.size.width = v83;
      v135.size.height = v85;
      MaxX = CGRectGetMaxX(v135);
      v136.origin.x = v86;
      v136.origin.y = v87;
      v136.size.width = recta;
      v136.size.height = height;
      v93 = MaxX - CGRectGetMaxX(v136);
      +[UIKeyboardFloatingTransitionController magneticEdgeMargin];
      if (v93 > v94)
      {
        v71 = v117;
        v95 = v110;
        v96 = recta;
LABEL_33:
        v68 = v95 * v96 + v86;
        MaxY = v87 + v112 * height;
        v70 = v29;
        goto LABEL_34;
      }

      v137.origin.x = v79;
      v137.origin.y = v81;
      v137.size.width = v83;
      v137.size.height = v85;
      v96 = recta;
      v86 = CGRectGetMaxX(v137) - recta;
      v97 = UIKBAnalyticsFloatingKeyboardEdgeRight;
      v71 = v117;
    }

    v98 = *v97;

    v29 = v98;
    v95 = v110;
    goto LABEL_33;
  }

  [endState2 platterViewFrame];
  v55 = v54;
  v57 = v56;
  platterView5 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [platterView5 anchorPoint];
  v60 = v55 * v59;
  v61 = v55 * (1.0 - v59);
  v63 = v57 * v62;
  v64 = v57 * (1.0 - v62);

  v65 = v113 + v60;
  v66 = v37 - (v60 + v61);
  v67 = rect - (v63 + v64);
  v131.origin.x = v65;
  v131.origin.y = v36 + v63;
  v131.size.width = v66;
  v131.size.height = v67;
  v68 = CGRectGetMinX(v131);
  v132.origin.x = v65;
  v132.origin.y = v36 + v63;
  v132.size.width = v66;
  v132.size.height = v67;
  MaxY = CGRectGetMaxY(v132);
  v70 = @"BottomEdge";

  if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
  {
    [UIKBAnalyticsDispatcher floatingKeyboardSummonedEvent:@"Tether" trigger:@"Interactive" finalPosition:v68, MaxY];
  }

  v71 = v117;
LABEL_34:
  platterView6 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [platterView6 center];
  v101 = v68 - v100;

  platterView7 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [platterView7 center];
  v104 = MaxY - v103;

  animationBehavior = [(UIKeyboardFloatingTransitionController *)self animationBehavior];
  v126[0] = MEMORY[0x1E69E9820];
  v126[1] = 3221225472;
  v126[2] = __73__UIKeyboardFloatingTransitionController_endTransitionAtPoint_withScale___block_invoke;
  v126[3] = &unk_1E711FF68;
  v126[4] = self;
  *&v126[5] = v68;
  *&v126[6] = MaxY;
  *&v126[7] = v101;
  *&v126[8] = v104;
  v126[9] = v116;
  v127 = v24;
  v119[0] = MEMORY[0x1E69E9820];
  v119[1] = 3221225472;
  v119[2] = __73__UIKeyboardFloatingTransitionController_endTransitionAtPoint_withScale___block_invoke_2;
  v119[3] = &unk_1E711FF90;
  v125 = v24;
  v121 = v68;
  v122 = MaxY;
  v119[4] = self;
  v120 = v70;
  v123 = v71;
  v124 = v118;
  v106 = v70;
  [UIView _animateUsingSpringBehavior:animationBehavior tracking:0 animations:v126 completion:v119];
}

void __73__UIKeyboardFloatingTransitionController_endTransitionAtPoint_withScale___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 32) platterView];
  [v4 setCenter:{v2, v3}];

  [*(a1 + 32) setLastGestureCenter:{*(a1 + 40), *(a1 + 48)}];
  v5 = [*(a1 + 32) startState];
  v6 = [v5 inputView];
  [v6 center];
  v8 = v7 + *(a1 + 56);
  v10 = v9 + *(a1 + 64);
  v11 = [*(a1 + 32) startState];
  v12 = [v11 inputView];
  [v12 setCenter:{v8, v10}];

  v13 = [*(a1 + 32) endState];
  v14 = [v13 inputView];
  [v14 center];
  v16 = v15 + *(a1 + 56);
  v18 = v17 + *(a1 + 64);
  v19 = [*(a1 + 32) endState];
  v20 = [v19 inputView];
  [v20 setCenter:{v16, v18}];

  [*(a1 + 32) updateAnimationAtScale:*(a1 + 72)];
  if ([*(a1 + 32) useStateBasedAnimations])
  {
    if ([*(a1 + 32) startedFromFloating])
    {
      v21 = 3;
    }

    else
    {
      v21 = 2;
    }

    if (*(a1 + 80))
    {
      v22 = 3;
    }

    else
    {
      v22 = 2;
    }

    if (*(a1 + 80))
    {
      v23 = 7;
    }

    else
    {
      v23 = 8;
    }

    v25 = [*(a1 + 32) inputWindowController];
    v24 = [v25 hostForAnimatedElements];
    +[UIView inheritedAnimationDuration];
    [v24 animatingTransitionFromState:v21 toState:v22 animationType:v23 totalDuration:?];
  }
}

uint64_t __73__UIKeyboardFloatingTransitionController_endTransitionAtPoint_withScale___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) finalizeTransition];
  if (([*(a1 + 32) startedFromFloating] & 1) != 0 || *(a1 + 80) != 1)
  {
    result = [*(a1 + 40) isEqualToString:@"BottomEdge"];
    if ((result & 1) == 0)
    {
      v5 = [*(a1 + 32) platterView];
      [v5 frame];
      MinY = CGRectGetMinY(v13);

      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v9 = *(a1 + 64);
      v10 = *(a1 + 72);
      if (MinY <= 0.0)
      {
        v11 = @"TopEdge";
      }

      else
      {
        v11 = *(a1 + 40);
      }

      return [UIKBAnalyticsDispatcher floatingKeyboardMoved:v11 toPosition:v7 touchPosition:v8, v9, v10];
    }
  }

  else
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 56);

    return [UIKBAnalyticsDispatcher floatingKeyboardSummonedEvent:@"Untether" trigger:@"Interactive" finalPosition:v2, v3];
  }

  return result;
}

- (void)initializeContextAtPoint:(CGPoint)point recognizer:(id)recognizer
{
  y = point.y;
  x = point.x;
  v384[4] = *MEMORY[0x1E69E9840];
  recognizerCopy = recognizer;
  [(UIKeyboardFloatingTransitionController *)self setProgress:0.0];
  [(UIKeyboardFloatingTransitionController *)self setStartedFromFloating:+[UIKeyboardImpl isFloating]];
  delegate = [(UIKeyboardFloatingTransitionController *)self delegate];
  v9 = [delegate inputWindowControllerForController:self];
  [(UIKeyboardFloatingTransitionController *)self setInputWindowController:v9];

  v10 = objc_alloc_init(UIKeyboardFloatingTransitionState);
  [(UIKeyboardFloatingTransitionController *)self setStartState:v10];

  v11 = objc_alloc_init(UIKeyboardFloatingTransitionState);
  [(UIKeyboardFloatingTransitionController *)self setEndState:v11];

  [(UIKeyboardFloatingTransitionController *)self captureStateForStart:1];
  startState = [(UIKeyboardFloatingTransitionController *)self startState];
  inputView = [startState inputView];
  _UIViewSetAnchorPointToTouchPoint(inputView, x, y);

  inputWindowController = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  view = [inputWindowController view];

  window = [view window];
  v17 = [UIView alloc];
  v18 = *MEMORY[0x1E695F058];
  v19 = *(MEMORY[0x1E695F058] + 8);
  v20 = *(MEMORY[0x1E695F058] + 16);
  v21 = *(MEMORY[0x1E695F058] + 24);
  v22 = [(UIView *)v17 initWithFrame:*MEMORY[0x1E695F058], v19, v20, v21];
  [(UIKeyboardFloatingTransitionController *)self setPlatterView:v22];

  useStateBasedAnimations = [(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations];
  self->_initWithStateBasedAnimations = useStateBasedAnimations;
  v376 = window;
  if (useStateBasedAnimations)
  {
    startState2 = [(UIKeyboardFloatingTransitionController *)self startState];
    [startState2 platterViewFrame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    platterView = [(UIKeyboardFloatingTransitionController *)self platterView];
    [platterView setFrame:{v26, v28, v30, v32}];

    platterView2 = [(UIKeyboardFloatingTransitionController *)self platterView];
    _UIViewSetAnchorPointToTouchPoint(platterView2, x, y);

    platterView3 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [window addSubview:platterView3];

    startState3 = [(UIKeyboardFloatingTransitionController *)self startState];
    [startState3 setScale:{1.0, 1.0}];

    +[UIKeyboardImpl floatingWidth];
    v38 = v37;
    inputWindowController2 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    view2 = [inputWindowController2 view];
    [view2 bounds];
    v42 = v41;

    if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
    {
      v43 = v42 / v38;
    }

    else
    {
      v43 = v38 / v42;
    }

    endState = [(UIKeyboardFloatingTransitionController *)self endState];
    [endState setScale:{v43, v43}];

    v45 = objc_alloc_init(UIViewSpringAnimationBehavior);
    [(UIKeyboardFloatingTransitionController *)self setAnimationBehavior:v45];

    animationBehavior = [(UIKeyboardFloatingTransitionController *)self animationBehavior];
    [animationBehavior setDampingRatio:0.9 response:0.2];

    animationBehavior2 = [(UIKeyboardFloatingTransitionController *)self animationBehavior];
    [animationBehavior2 setTrackingDampingRatio:1.0 response:0.12 dampingRatioSmoothing:0.08 responseSmoothing:0.08];

    [(UIKeyboardFloatingTransitionController *)self setLastGestureCenter:x, y];
    if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
    {
      v48 = 2;
    }

    else
    {
      v48 = 3;
    }

    if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
    {
      v49 = 8;
    }

    else
    {
      v49 = 7;
    }

    inputWindowController3 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    hostForAnimatedElements = [inputWindowController3 hostForAnimatedElements];
    [hostForAnimatedElements prepareForTransitionToState:v48 animationType:v49 interactiveTransition:1];

    [UIKeyboardImpl setFloating:[(UIKeyboardFloatingTransitionController *)self startedFromFloating]^ 1 positionedAtDefaultOffsetAnimated:0];
    inputWindowController4 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    inputViewSet = [inputWindowController4 inputViewSet];
    keyboard = [inputViewSet keyboard];
    v365 = view;
    v367 = recognizerCopy;
    if (keyboard)
    {
      v55 = keyboard;
      inputWindowController5 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
      inputViewSet2 = [inputWindowController5 inputViewSet];
      isCustomInputView = [inputViewSet2 isCustomInputView];

      if (!isCustomInputView)
      {
        goto LABEL_36;
      }
    }

    else
    {
    }

    inputWindowController6 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    inputViewSet3 = [inputWindowController6 inputViewSet];
    inputView2 = [inputViewSet3 inputView];
    [inputView2 setAlpha:0.0];

    inputWindowController7 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    [inputWindowController7 updateViewSizingConstraints];

LABEL_36:
    inputWindowController8 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    hostForAnimatedElements2 = [inputWindowController8 hostForAnimatedElements];
    hostView = [hostForAnimatedElements2 hostView];

    platterView4 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [platterView4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v347 = MEMORY[0x1E69977A0];
    platterView5 = [(UIKeyboardFloatingTransitionController *)self platterView];
    centerXAnchor = [platterView5 centerXAnchor];
    centerXAnchor2 = [hostView centerXAnchor];
    v358 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v384[0] = v358;
    platterView6 = [(UIKeyboardFloatingTransitionController *)self platterView];
    centerYAnchor = [platterView6 centerYAnchor];
    centerYAnchor2 = [hostView centerYAnchor];
    v345 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v384[1] = v345;
    platterView7 = [(UIKeyboardFloatingTransitionController *)self platterView];
    heightAnchor = [platterView7 heightAnchor];
    v353 = hostView;
    heightAnchor2 = [hostView heightAnchor];
    v195 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v384[2] = v195;
    platterView8 = [(UIKeyboardFloatingTransitionController *)self platterView];
    widthAnchor = [platterView8 widthAnchor];
    widthAnchor2 = [hostView widthAnchor];
    v199 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v384[3] = v199;
    v200 = [MEMORY[0x1E695DEC8] arrayWithObjects:v384 count:4];
    [v347 activateConstraints:v200];

    [(UIKeyboardFloatingTransitionController *)self setWithinDockingRegion:0];
    [(UIKeyboardFloatingTransitionController *)self captureStateForStart:0];
    [(UIKeyboardFloatingTransitionController *)self setExpandedForDocking:0];
    [(UIKeyboardFloatingTransitionController *)self setGestureBeginTime:CACurrentMediaTime()];

    view = v365;
    recognizerCopy = v367;
    v171 = v376;
    goto LABEL_54;
  }

  v369 = y;
  if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
  {
    +[UIKeyboardPopoverContainer shadowOffset];
    v60 = v59;
    v62 = v61;
    platterView9 = [(UIKeyboardFloatingTransitionController *)self platterView];
    layer = [platterView9 layer];
    [layer setShadowOffset:{v60, v62}];

    v65 = +[UIKeyboardPopoverContainer shadowColor];
    cGColor = [v65 CGColor];
    platterView10 = [(UIKeyboardFloatingTransitionController *)self platterView];
    layer2 = [platterView10 layer];
    [layer2 setShadowColor:cGColor];

    +[UIKeyboardPopoverContainer shadowOpacity];
    *&v60 = v69;
    platterView11 = [(UIKeyboardFloatingTransitionController *)self platterView];
    layer3 = [platterView11 layer];
    LODWORD(v72) = LODWORD(v60);
    [layer3 setShadowOpacity:v72];

    +[UIKeyboardPopoverContainer shadowRadius];
    v74 = v73;
    platterView12 = [(UIKeyboardFloatingTransitionController *)self platterView];
    layer4 = [platterView12 layer];
    [layer4 setShadowRadius:v74];
  }

  v77 = [[UIView alloc] initWithFrame:v18, v19, v20, v21];
  [(UIKeyboardFloatingTransitionController *)self setPlatterCornerRadiusView:v77];

  platterCornerRadiusView = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  [platterCornerRadiusView setAutoresizingMask:18];

  platterCornerRadiusView2 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  layer5 = [platterCornerRadiusView2 layer];
  [layer5 setMasksToBounds:1];

  startState4 = [(UIKeyboardFloatingTransitionController *)self startState];
  [startState4 cornerRadius];
  v83 = v82;
  platterCornerRadiusView3 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  layer6 = [platterCornerRadiusView3 layer];
  [layer6 setCornerRadius:v83];

  startState5 = [(UIKeyboardFloatingTransitionController *)self startState];
  borderColor = [startState5 borderColor];
  cGColor2 = [borderColor CGColor];
  platterCornerRadiusView4 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  layer7 = [platterCornerRadiusView4 layer];
  [layer7 setBorderColor:cGColor2];

  startState6 = [(UIKeyboardFloatingTransitionController *)self startState];
  [startState6 borderWidth];
  v93 = v92;
  platterCornerRadiusView5 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  layer8 = [platterCornerRadiusView5 layer];
  [layer8 setBorderWidth:v93];

  platterView13 = [(UIKeyboardFloatingTransitionController *)self platterView];
  platterCornerRadiusView6 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  [platterView13 addSubview:platterCornerRadiusView6];

  v98 = [objc_alloc(+[_UIPopoverStandardChromeView standardChromeViewClass](_UIPopoverStandardChromeView "standardChromeViewClass"))];
  [(UIKeyboardFloatingTransitionController *)self setPlatterPopoverBackgroundView:v98];

  platterPopoverBackgroundView = [(UIKeyboardFloatingTransitionController *)self platterPopoverBackgroundView];
  [platterPopoverBackgroundView setAutoresizingMask:18];

  platterPopoverBackgroundView2 = [(UIKeyboardFloatingTransitionController *)self platterPopoverBackgroundView];
  [platterPopoverBackgroundView2 setBackgroundStyle:6];

  platterPopoverBackgroundView3 = [(UIKeyboardFloatingTransitionController *)self platterPopoverBackgroundView];
  [platterPopoverBackgroundView3 setArrowDirection:0];

  if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
  {
    v102 = 1.0;
  }

  else
  {
    v102 = 0.0;
  }

  platterPopoverBackgroundView4 = [(UIKeyboardFloatingTransitionController *)self platterPopoverBackgroundView];
  [platterPopoverBackgroundView4 setAlpha:v102];

  platterCornerRadiusView7 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  platterPopoverBackgroundView5 = [(UIKeyboardFloatingTransitionController *)self platterPopoverBackgroundView];
  [platterCornerRadiusView7 addSubview:platterPopoverBackgroundView5];

  v106 = +[UIKBRenderConfig defaultConfig];
  backdropStyle = [v106 backdropStyle];

  inputWindowController9 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  hosting = [inputWindowController9 hosting];
  v110 = [hosting itemForPurpose:0];

  if ([v110 conformsToProtocol:&unk_1F003A010])
  {
    backdropStyle = [v110 inputViewBackdropStyle];
  }

  v372 = x;
  if (backdropStyle == 3904)
  {
    v111 = [[_UIKBLightEffectsBackground alloc] initWithFrame:v18, v19, v20, v21];
    [(UIKeyboardFloatingTransitionController *)self setLightEffectsTransitionBackdrop:v111];

    lightEffectsTransitionBackdrop = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    [lightEffectsTransitionBackdrop setTranslatesAutoresizingMaskIntoConstraints:0];

    platterCornerRadiusView8 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    lightEffectsTransitionBackdrop2 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    [platterCornerRadiusView8 addSubview:lightEffectsTransitionBackdrop2];

    platterPopoverBackgroundView6 = [(UIKeyboardFloatingTransitionController *)self platterPopoverBackgroundView];
    [platterPopoverBackgroundView6 setAlpha:0.0];

    lightEffectsTransitionBackdrop3 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    lightEffectsTransitionBackdrop4 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    platterView14 = [(UIKeyboardFloatingTransitionController *)self platterView];
    _inheritedRenderConfig = [platterView14 _inheritedRenderConfig];
    [lightEffectsTransitionBackdrop4 _setRenderConfig:_inheritedRenderConfig];
  }

  else
  {
    [(UIKeyboardFloatingTransitionController *)self setLightEffectsTransitionBackdrop:0];
    v120 = [(UIKBBackdropView *)[UIKBVisualEffectView alloc] initWithFrame:backdropStyle style:v18, v19, v20, v21];
    [(UIKeyboardFloatingTransitionController *)self setPlatterVisualEffectView:v120];

    platterVisualEffectView = [(UIKeyboardFloatingTransitionController *)self platterVisualEffectView];
    [platterVisualEffectView setAutoresizingMask:18];

    platterCornerRadiusView9 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    platterVisualEffectView2 = [(UIKeyboardFloatingTransitionController *)self platterVisualEffectView];
    [platterCornerRadiusView9 addSubview:platterVisualEffectView2];

    lightEffectsTransitionBackdrop4 = [(UIKeyboardFloatingTransitionController *)self platterVisualEffectView];
    lightEffectsTransitionBackdrop3 = [lightEffectsTransitionBackdrop4 contentView];
  }

  startState7 = [(UIKeyboardFloatingTransitionController *)self startState];
  [startState7 platterViewFrame];
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v132 = v131;
  platterView15 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [platterView15 setFrame:{v126, v128, v130, v132}];

  platterView16 = [(UIKeyboardFloatingTransitionController *)self platterView];
  v135 = v372;
  _UIViewSetAnchorPointToTouchPoint(platterView16, v372, v369);

  if (!+[UIInputWindowController keyboardDotDotDotEnabled])
  {
    v136 = [[UIView alloc] initWithFrame:v18, v19, v20, v21];
    [(UIKeyboardFloatingTransitionController *)self setPillView:v136];

    pillView = [(UIKeyboardFloatingTransitionController *)self pillView];
    [pillView setAutoresizingMask:13];

    v138 = +[UIKeyboardPopoverContainer pillColor];
    pillView2 = [(UIKeyboardFloatingTransitionController *)self pillView];
    [pillView2 setBackgroundColor:v138];

    if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
    {
      v140 = 1.0;
    }

    else
    {
      v140 = 0.0;
    }

    pillView3 = [(UIKeyboardFloatingTransitionController *)self pillView];
    [pillView3 setAlpha:v140];

    +[UIKeyboardPopoverContainer pillCornerRadius];
    v143 = v142;
    pillView4 = [(UIKeyboardFloatingTransitionController *)self pillView];
    layer9 = [pillView4 layer];
    [layer9 setCornerRadius:v143];

    pillView5 = [(UIKeyboardFloatingTransitionController *)self pillView];
    [lightEffectsTransitionBackdrop3 addSubview:pillView5];

    +[UIKeyboardPopoverContainer pillSize];
    v148 = v147;
    v150 = v149;
    +[UIKeyboardPopoverContainer dragAreaHeight];
    startState8 = [(UIKeyboardFloatingTransitionController *)self startState];
    [startState8 platterViewFrame];
    v152 = CGRectGetWidth(v385) * 0.5 - v148 * 0.5;
    startState9 = [(UIKeyboardFloatingTransitionController *)self startState];
    [startState9 platterViewFrame];
    v154 = CGRectGetHeight(v386) - v150;
    +[UIKeyboardPopoverContainer pillDistanceToEdge];
    v156 = v154 - v155;
    pillView6 = [(UIKeyboardFloatingTransitionController *)self pillView];
    v158 = v156;
    v135 = v372;
    [pillView6 setFrame:{v152, v158, v148, v150}];
  }

  platterView17 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [platterView17 frame];
  MidX = CGRectGetMidX(v387);
  platterView18 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [platterView18 frame];
  [(UIKeyboardFloatingTransitionController *)self setWithinDockingRegion:[UIKeyboardFloatingTransitionController isPointWithinDockingRegion:MidX, CGRectGetMaxY(v388)]];

  [(UIKeyboardFloatingTransitionController *)self setExpandedForDocking:0];
  platterView19 = [(UIKeyboardFloatingTransitionController *)self platterView];
  layer10 = [platterView19 layer];
  [layer10 setAllowsGroupBlending:0];

  platterCornerRadiusView10 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  layer11 = [platterCornerRadiusView10 layer];
  [layer11 setAllowsGroupBlending:0];

  platterVisualEffectView3 = [(UIKeyboardFloatingTransitionController *)self platterVisualEffectView];
  layer12 = [platterVisualEffectView3 layer];
  [layer12 setAllowsGroupBlending:0];

  lightEffectsTransitionBackdrop5 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
  layer13 = [lightEffectsTransitionBackdrop5 layer];
  [layer13 setAllowsGroupBlending:0];

  platterView20 = [(UIKeyboardFloatingTransitionController *)self platterView];
  v171 = v376;
  [v376 addSubview:platterView20];

  startState10 = [(UIKeyboardFloatingTransitionController *)self startState];
  inputView3 = [startState10 inputView];
  [v376 addSubview:inputView3];

  if ([(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations])
  {
    platterView21 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [platterView21 setHidden:1];
  }

  lightEffectsTransitionBackdrop6 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];

  if (lightEffectsTransitionBackdrop6)
  {
    inputWindowController10 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    inputViewSet4 = [inputWindowController10 inputViewSet];

    assistantViewController = [inputViewSet4 assistantViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v366 = view;
    v368 = recognizerCopy;
    v357 = lightEffectsTransitionBackdrop3;
    v361 = v110;
    v373 = inputViewSet4;
    if (isKindOfClass)
    {
      assistantViewController2 = [inputViewSet4 assistantViewController];
      v181 = [UITraitCollection traitCollectionWithUserInterfaceIdiom:1];
      [assistantViewController2 preferredHeightForTraitCollection:v181];
      v183 = v182;
    }

    else
    {
      v183 = 55.0;
    }

    v328 = MEMORY[0x1E69977A0];
    lightEffectsTransitionBackdrop7 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    topAnchor = [lightEffectsTransitionBackdrop7 topAnchor];
    platterCornerRadiusView11 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    topAnchor2 = [platterCornerRadiusView11 topAnchor];
    v348 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v383[0] = v348;
    lightEffectsTransitionBackdrop8 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    leadingAnchor = [lightEffectsTransitionBackdrop8 leadingAnchor];
    platterCornerRadiusView12 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    leadingAnchor2 = [platterCornerRadiusView12 leadingAnchor];
    v341 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v383[1] = v341;
    platterCornerRadiusView13 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    bottomAnchor = [platterCornerRadiusView13 bottomAnchor];
    lightEffectsTransitionBackdrop9 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    bottomAnchor2 = [lightEffectsTransitionBackdrop9 bottomAnchor];
    v336 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v383[2] = v336;
    platterCornerRadiusView14 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    trailingAnchor = [platterCornerRadiusView14 trailingAnchor];
    lightEffectsTransitionBackdrop10 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    trailingAnchor2 = [lightEffectsTransitionBackdrop10 trailingAnchor];
    v331 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v383[3] = v331;
    lightEffectsTransitionBackdrop11 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    fullBackdropLayoutGuide = [lightEffectsTransitionBackdrop11 fullBackdropLayoutGuide];
    topAnchor3 = [fullBackdropLayoutGuide topAnchor];
    platterCornerRadiusView15 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    topAnchor4 = [platterCornerRadiusView15 topAnchor];
    v324 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v383[4] = v324;
    lightEffectsTransitionBackdrop12 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    fullBackdropLayoutGuide2 = [lightEffectsTransitionBackdrop12 fullBackdropLayoutGuide];
    leadingAnchor3 = [fullBackdropLayoutGuide2 leadingAnchor];
    platterCornerRadiusView16 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    leadingAnchor4 = [platterCornerRadiusView16 leadingAnchor];
    v318 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v383[5] = v318;
    platterCornerRadiusView17 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    bottomAnchor3 = [platterCornerRadiusView17 bottomAnchor];
    lightEffectsTransitionBackdrop13 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    fullBackdropLayoutGuide3 = [lightEffectsTransitionBackdrop13 fullBackdropLayoutGuide];
    bottomAnchor4 = [fullBackdropLayoutGuide3 bottomAnchor];
    v312 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v383[6] = v312;
    platterCornerRadiusView18 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    trailingAnchor3 = [platterCornerRadiusView18 trailingAnchor];
    lightEffectsTransitionBackdrop14 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    fullBackdropLayoutGuide4 = [lightEffectsTransitionBackdrop14 fullBackdropLayoutGuide];
    trailingAnchor4 = [fullBackdropLayoutGuide4 trailingAnchor];
    v306 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v383[7] = v306;
    lightEffectsTransitionBackdrop15 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    assistantLayoutGuide = [lightEffectsTransitionBackdrop15 assistantLayoutGuide];
    topAnchor5 = [assistantLayoutGuide topAnchor];
    platterCornerRadiusView19 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    topAnchor6 = [platterCornerRadiusView19 topAnchor];
    v204 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v383[8] = v204;
    lightEffectsTransitionBackdrop16 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    assistantLayoutGuide2 = [lightEffectsTransitionBackdrop16 assistantLayoutGuide];
    heightAnchor3 = [assistantLayoutGuide2 heightAnchor];
    v208 = [heightAnchor3 constraintEqualToConstant:v183];
    v383[9] = v208;
    v209 = [MEMORY[0x1E695DEC8] arrayWithObjects:v383 count:10];
    [v328 activateConstraints:v209];

    view = v366;
    recognizerCopy = v368;
    v171 = v376;
    lightEffectsTransitionBackdrop3 = v357;
    v110 = v361;
  }

  useStateBasedAnimations2 = [(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations];
  if (!useStateBasedAnimations2)
  {
    inputWindowController11 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    [inputWindowController11 setInputViewsHidden:1];
  }

  [(UIKeyboardFloatingTransitionController *)self constrainAccessoryViewToBottom];
  [UIKeyboardImpl setFloating:[(UIKeyboardFloatingTransitionController *)self startedFromFloating]^ 1 positionedAtDefaultOffsetAnimated:0];
  inputWindowController12 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  inputViewSet5 = [inputWindowController12 inputViewSet];
  keyboard2 = [inputViewSet5 keyboard];
  if (keyboard2)
  {
    v215 = keyboard2;
    inputWindowController13 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    inputViewSet6 = [inputWindowController13 inputViewSet];
    isCustomInputView2 = [inputViewSet6 isCustomInputView];

    v171 = v376;
    if (!isCustomInputView2)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  inputWindowController14 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  inputViewSet7 = [inputWindowController14 inputViewSet];
  inputView4 = [inputViewSet7 inputView];
  [inputView4 setAlpha:0.0];

  inputWindowController15 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  [inputWindowController15 updateViewSizingConstraints];

LABEL_46:
  [MEMORY[0x1E6979518] flush];
  [(UIKeyboardFloatingTransitionController *)self captureStateForStart:0];
  endState2 = [(UIKeyboardFloatingTransitionController *)self endState];
  inputView5 = [endState2 inputView];
  _UIViewSetAnchorPointToTouchPoint(inputView5, v135, v369);

  if (!useStateBasedAnimations2)
  {
    if ([recognizerCopy state] != 4)
    {
      [view setAlpha:0.0];
    }

    inputWindowController16 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    [inputWindowController16 setInputViewsHidden:0];
  }

  startState11 = [(UIKeyboardFloatingTransitionController *)self startState];
  [startState11 setScale:{1.0, 1.0}];

  endState3 = [(UIKeyboardFloatingTransitionController *)self endState];
  [endState3 platterViewFrame];
  v229 = v228;
  startState12 = [(UIKeyboardFloatingTransitionController *)self startState];
  [startState12 platterViewFrame];
  v232 = v229 / v231;
  endState4 = [(UIKeyboardFloatingTransitionController *)self endState];
  [endState4 platterViewFrame];
  v235 = v234;
  startState13 = [(UIKeyboardFloatingTransitionController *)self startState];
  [startState13 platterViewFrame];
  v238 = v235 / v237;
  endState5 = [(UIKeyboardFloatingTransitionController *)self endState];
  [endState5 setScale:{v232, v238}];

  startState14 = [(UIKeyboardFloatingTransitionController *)self startState];
  v375 = *(MEMORY[0x1E695EFD0] + 16);
  *&v382.a = *MEMORY[0x1E695EFD0];
  v377 = *&v382.a;
  *&v382.c = v375;
  *&v382.tx = *(MEMORY[0x1E695EFD0] + 32);
  v371 = *&v382.tx;
  [startState14 setInitialInputViewTransform:&v382];

  startState15 = [(UIKeyboardFloatingTransitionController *)self startState];
  inputView6 = [startState15 inputView];
  endState6 = [(UIKeyboardFloatingTransitionController *)self endState];
  [endState6 inputViewFrame];
  v245 = v244;
  v247 = v246;
  v249 = v248;
  v251 = v250;
  v252 = inputView6;
  [v252 frame];
  v254 = v253;
  v256 = v255;
  v258 = v257;
  v260 = v259;
  v359 = v251 / v259;
  v363 = v249 / v257;
  [v252 anchorPoint];
  v262 = v254 + v261 * (v258 - v249);
  [v252 anchorPoint];
  v264 = v263;

  *&v380.a = v377;
  *&v380.c = v375;
  *&v380.tx = v371;
  *&v382.a = v377;
  *&v382.c = v375;
  *&v382.tx = v371;
  CGAffineTransformTranslate(&v380, &v382, v245 - v262, v247 - (v256 + v264 * (v260 - v251)));
  v381 = v380;
  CGAffineTransformScale(&v382, &v381, v363, v359);
  v380 = v382;
  startState16 = [(UIKeyboardFloatingTransitionController *)self startState];
  v382 = v380;
  [startState16 setFinalInputViewTransform:&v382];

  endState7 = [(UIKeyboardFloatingTransitionController *)self endState];
  inputView7 = [endState7 inputView];
  startState17 = [(UIKeyboardFloatingTransitionController *)self startState];
  [startState17 inputViewFrame];
  v270 = v269;
  v272 = v271;
  v274 = v273;
  v276 = v275;
  v277 = inputView7;
  [v277 frame];
  v279 = v278;
  v281 = v280;
  v283 = v282;
  v285 = v284;
  v360 = v276 / v284;
  v364 = v274 / v282;
  [v277 anchorPoint];
  v287 = v279 + v286 * (v283 - v274);
  [v277 anchorPoint];
  v289 = v288;

  *&v379.a = v377;
  *&v379.c = v375;
  *&v379.tx = v371;
  *&v382.a = v377;
  *&v382.c = v375;
  *&v382.tx = v371;
  CGAffineTransformTranslate(&v379, &v382, v270 - v287, v272 - (v281 + v289 * (v285 - v276)));
  v381 = v379;
  CGAffineTransformScale(&v382, &v381, v364, v360);
  v379 = v382;
  endState8 = [(UIKeyboardFloatingTransitionController *)self endState];
  v382 = v379;
  [endState8 setInitialInputViewTransform:&v382];

  endState9 = [(UIKeyboardFloatingTransitionController *)self endState];
  *&v382.a = v377;
  *&v382.c = v375;
  *&v382.tx = v371;
  [endState9 setFinalInputViewTransform:&v382];

  endState10 = [(UIKeyboardFloatingTransitionController *)self endState];
  inputView8 = [endState10 inputView];
  [inputView8 setAlpha:0.0];

  endState11 = [(UIKeyboardFloatingTransitionController *)self endState];
  v295 = endState11;
  if (endState11)
  {
    [endState11 initialInputViewTransform];
  }

  else
  {
    memset(&v378, 0, sizeof(v378));
  }

  endState12 = [(UIKeyboardFloatingTransitionController *)self endState];
  inputView9 = [endState12 inputView];
  v382 = v378;
  [inputView9 setTransform:&v382];

  endState13 = [(UIKeyboardFloatingTransitionController *)self endState];
  inputView10 = [endState13 inputView];
  [v171 addSubview:inputView10];

  v300 = objc_alloc_init(UIViewSpringAnimationBehavior);
  [(UIKeyboardFloatingTransitionController *)self setAnimationBehavior:v300];

  animationBehavior3 = [(UIKeyboardFloatingTransitionController *)self animationBehavior];
  [animationBehavior3 setDampingRatio:0.9 response:0.2];

  animationBehavior4 = [(UIKeyboardFloatingTransitionController *)self animationBehavior];
  [animationBehavior4 setTrackingDampingRatio:1.0 response:0.12 dampingRatioSmoothing:0.08 responseSmoothing:0.08];

  platterView22 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [platterView22 center];
  [(UIKeyboardFloatingTransitionController *)self setLastGestureCenter:?];

  [(UIKeyboardFloatingTransitionController *)self setGestureBeginTime:CACurrentMediaTime()];
LABEL_54:
}

void __72__UIKeyboardFloatingTransitionController_constrainAccessoryViewToBottom__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 containerRootController];
  v2 = [v6 inputViewSet];
  v3 = [v2 inputAccessoryView];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 isInputAccessoryViewPlaceholder];

    if ((v5 & 1) == 0)
    {
      [v6 setForceAccessoryViewToBottomOfHostView:1];
    }
  }
}

void __73__UIKeyboardFloatingTransitionController_restoreAccessoryViewConstraints__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 containerRootController];
  if ([v2 forceAccessoryViewToBottomOfHostView])
  {
    [v2 setForceAccessoryViewToBottomOfHostView:0];
    [v2 updateViewConstraints];
  }
}

- (void)finalizeTransition
{
  platterView = [(UIKeyboardFloatingTransitionController *)self platterView];
  [platterView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIKeyboardFloatingTransitionController *)self progress];
  if (v12 >= 0.5)
  {
    [(UIKeyboardFloatingTransitionController *)self endState];
  }

  else
  {
    [(UIKeyboardFloatingTransitionController *)self startState];
  }
  v13 = ;
  [v13 platterInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;

  inputWindowController = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  view = [inputWindowController view];
  superview = [view superview];

  v23 = off_1E70EA000;
  if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating]&& ([(UIKeyboardFloatingTransitionController *)self progress], v24 < 0.5) || ![(UIKeyboardFloatingTransitionController *)self startedFromFloating]&& ([(UIKeyboardFloatingTransitionController *)self progress], v25 >= 0.5))
  {
    v26 = v5 + v17;
    v29 = v7 + v15;
    v30 = v11 - (v15 + v19);
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
    v33 = v32;

    v27 = v33 - (v29 + v30);
    inputViewSet3 = 1;
    if (+[UIKeyboardImpl isFloating])
    {
      goto LABEL_24;
    }

LABEL_11:
    [UIKeyboardImpl setFloating:inputViewSet3];
    inputWindowController2 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    inputViewSet = [inputWindowController2 inputViewSet];
    keyboard = [inputViewSet keyboard];
    if (keyboard)
    {
      v37 = keyboard;
      inputWindowController3 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
      inputViewSet2 = [inputWindowController3 inputViewSet];
      isCustomInputView = [inputViewSet2 isCustomInputView];

      if (!isCustomInputView)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    inputWindowController4 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    [inputWindowController4 updateViewSizingConstraints];

LABEL_16:
    if (inputViewSet3)
    {
      LODWORD(inputViewSet3) = 1;
      v23 = off_1E70EA000;
      goto LABEL_24;
    }

    v23 = off_1E70EA000;
    goto LABEL_19;
  }

  v26 = *MEMORY[0x1E695EFF8];
  v27 = *(MEMORY[0x1E695EFF8] + 8);
  if (+[UIKeyboardImpl isFloating])
  {
    inputViewSet3 = 0;
    goto LABEL_11;
  }

LABEL_19:
  inputWindowController5 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  inputViewSet3 = [inputWindowController5 inputViewSet];

  assistantViewController = [inputViewSet3 assistantViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    assistantViewController2 = [inputViewSet3 assistantViewController];
    if ([assistantViewController2 shouldBeShownForInputDelegate:0 inputViews:inputViewSet3])
    {
      v46 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      responder = [v46 responder];

      [assistantViewController2 setInputAssistantButtonItemsForResponder:responder];
    }
  }

  LODWORD(inputViewSet3) = 0;
LABEL_24:
  v48 = +[UIPeripheralHost sharedInstance];
  [v48 setUndockedWithOffset:0 animated:{v26, v27}];

  if ([(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations]|| self->_initWithStateBasedAnimations)
  {
    v49 = inputViewSet3 == 0;
    if (inputViewSet3)
    {
      v50 = 3;
    }

    else
    {
      v50 = 2;
    }

    if (v49)
    {
      v51 = 8;
    }

    else
    {
      v51 = 7;
    }

    inputWindowController6 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    hostForAnimatedElements = [inputWindowController6 hostForAnimatedElements];
    [hostForAnimatedElements finishedTransitionToState:v50 animationType:v51 interactiveTransition:1];
  }

  inputWindowController7 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  view2 = [inputWindowController7 view];
  [view2 setAlpha:1.0];

  platterView2 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [platterView2 removeFromSuperview];

  startState = [(UIKeyboardFloatingTransitionController *)self startState];
  inputView = [startState inputView];
  [inputView removeFromSuperview];

  endState = [(UIKeyboardFloatingTransitionController *)self endState];
  inputView2 = [endState inputView];
  [inputView2 removeFromSuperview];

  [(UIKeyboardFloatingTransitionController *)self setPlatterView:0];
  [(UIKeyboardFloatingTransitionController *)self setStartState:0];
  [(UIKeyboardFloatingTransitionController *)self setEndState:0];
  [(UIKeyboardFloatingTransitionController *)self setIsTransitioning:0];
  [(UIKeyboardFloatingTransitionController *)self updateLayoutGuideForTransitionStart:0];
  [(UIKeyboardFloatingTransitionController *)self updateLayoutGuideFromFrame:v5, v7, v9, v11];
  [(UIKeyboardFloatingTransitionController *)self restoreAccessoryViewConstraints];
  inputWindowController8 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  inputViewSet4 = [inputWindowController8 inputViewSet];
  keyboard2 = [inputViewSet4 keyboard];
  if (!keyboard2)
  {

    goto LABEL_39;
  }

  v64 = keyboard2;
  v65 = v23;
  inputWindowController9 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  inputViewSet5 = [inputWindowController9 inputViewSet];
  isCustomInputView2 = [inputViewSet5 isCustomInputView];

  if (isCustomInputView2)
  {
LABEL_39:
    inputWindowController10 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    inputViewSet6 = [inputWindowController10 inputViewSet];
    inputView3 = [inputViewSet6 inputView];
    [inputView3 setAlpha:1.0];

    goto LABEL_40;
  }

  activeInstance = [(__objc2_class *)v65[11] activeInstance];
  inputWindowController10 = [activeInstance keyplaneView];

  inputViewSet6 = [inputWindowController10 keyplane];
  if (([inputViewSet6 visualStyling] & 0xFF0000) == 0x260000)
  {
LABEL_40:

    goto LABEL_41;
  }

  useStateBasedAnimations = [(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations];

  if (!useStateBasedAnimations)
  {
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __60__UIKeyboardFloatingTransitionController_finalizeTransition__block_invoke;
    v84[3] = &unk_1E70F3590;
    v85 = inputWindowController10;
    [UIView performWithoutAnimation:v84];
  }

LABEL_41:

  delegate = [(UIKeyboardFloatingTransitionController *)self delegate];
  [delegate didEndTransitionWithController:self];

  v75 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  inputWindowController11 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  inputViewSet7 = [inputWindowController11 inputViewSet];
  v78 = +[UIInputViewAnimationStyle animationStyleDefault];
  [v75 prepareToMoveKeyboardForInputViewSet:inputViewSet7 animationStyle:v78];

  v79 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  containerRootController = [v79 containerRootController];

  inputViewSet8 = [containerRootController inputViewSet];
  LODWORD(inputViewSet7) = [inputViewSet8 isInputViewPlaceholder];

  if (inputViewSet7)
  {
    inputViewSet9 = [containerRootController inputViewSet];
    inputView4 = [inputViewSet9 inputView];
    [inputView4 refreshPlaceholder];
  }
}

void __60__UIKeyboardFloatingTransitionController_finalizeTransition__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) hideKeyCaps:0];
  v2 = *(a1 + 32);
  v4 = &unk_1EFE32FF8;
  v5[0] = &unk_1EFE2EBB8;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v2 dimKeys:v3];
}

- (void)updateAnimationAtScale:(double)scale
{
  v202[1] = *MEMORY[0x1E69E9840];
  v4 = scale + -1.0;
  endState = [(UIKeyboardFloatingTransitionController *)self endState];
  [endState scale];
  v7 = v4 / (v6 + -1.0);

  LODWORD(endState) = [(UIKeyboardFloatingTransitionController *)self startedFromFloating];
  startedFromFloating = [(UIKeyboardFloatingTransitionController *)self startedFromFloating];
  v9 = -0.1;
  if (endState)
  {
    v9 = 0.0;
  }

  v10 = 1.1;
  if (!startedFromFloating)
  {
    v10 = 1.0;
  }

  v11 = fmax(v9, fmin(v7, v10));
  [(UIKeyboardFloatingTransitionController *)self progress];
  if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
  {
    platterView = [(UIKeyboardFloatingTransitionController *)self platterView];
    [platterView center];
    v14 = v13;
    v16 = v15;

    platterView2 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [platterView2 bounds];
    v18 = v16 + CGRectGetHeight(v203) * 0.5;

    LODWORD(platterView2) = [(UIKeyboardFloatingTransitionController *)self withinDockingRegion];
    [(UIKeyboardFloatingTransitionController *)self setWithinDockingRegion:[UIKeyboardFloatingTransitionController isPointWithinDockingRegion:v14, v18]];
    if (platterView2 == [(UIKeyboardFloatingTransitionController *)self withinDockingRegion])
    {
      if ([(UIKeyboardFloatingTransitionController *)self expandedForDocking])
      {
        return;
      }
    }

    else
    {
      withinDockingRegion = [(UIKeyboardFloatingTransitionController *)self withinDockingRegion];
      if (withinDockingRegion)
      {
        if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
        {
          v20 = 0.66;
        }

        else
        {
          v20 = 0.34;
        }

        startedFromFloating2 = [(UIKeyboardFloatingTransitionController *)self startedFromFloating];
        v22 = fmax(v20, v11);
        v23 = fmin(v20, v11);
        if (startedFromFloating2)
        {
          v11 = v22;
        }

        else
        {
          v11 = v23;
        }
      }

      [(UIKeyboardFloatingTransitionController *)self setExpandedForDocking:withinDockingRegion];
    }
  }

  [(UIKeyboardFloatingTransitionController *)self setProgress:v11];
  startState = [(UIKeyboardFloatingTransitionController *)self startState];
  [startState scale];
  v26 = v25;
  endState2 = [(UIKeyboardFloatingTransitionController *)self endState];
  [endState2 scale];
  v29 = v28;
  [(UIKeyboardFloatingTransitionController *)self progress];
  v31 = v29 * v30 + v26 * (1.0 - v30);

  startState2 = [(UIKeyboardFloatingTransitionController *)self startState];
  [startState2 scale];
  v34 = v33;
  endState3 = [(UIKeyboardFloatingTransitionController *)self endState];
  [endState3 scale];
  v37 = v36;
  [(UIKeyboardFloatingTransitionController *)self progress];
  v39 = v37 * v38 + v34 * (1.0 - v38);

  startState3 = [(UIKeyboardFloatingTransitionController *)self startState];
  [startState3 platterViewFrame];
  v42 = v31 * v41;

  startState4 = [(UIKeyboardFloatingTransitionController *)self startState];
  [startState4 platterViewFrame];
  v45 = v39 * v44;

  platterView3 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [platterView3 setBounds:{0.0, 0.0, v42, v45}];

  LODWORD(endState3) = [(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations];
  startedFromFloating3 = [(UIKeyboardFloatingTransitionController *)self startedFromFloating];
  startedFromFloating4 = [(UIKeyboardFloatingTransitionController *)self startedFromFloating];
  if (endState3)
  {
    if (startedFromFloating3)
    {
      v49 = 8;
    }

    else
    {
      v49 = 7;
    }

    if (!startedFromFloating4)
    {
      v11 = 1.0 - v11;
    }

    if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
    {
      +[UIKeyboardImpl floatingWidth];
      v51 = v50;
    }

    else
    {
      inputWindowController = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
      _window = [inputWindowController _window];
      [_window bounds];
      v51 = v65;
    }

    if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
    {
      inputWindowController2 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
      _window2 = [inputWindowController2 _window];
      [_window2 bounds];
      v69 = v68;
    }

    else
    {
      +[UIKeyboardImpl floatingWidth];
      v69 = v72;
    }

    [(UIKeyboardFloatingTransitionController *)self progress];
    v74 = (v69 * v73 + v51 * (1.0 - v73)) * 0.5;
    [(UIKeyboardFloatingTransitionController *)self lastGestureCenter];
    v76 = v75 - v74;
    inputWindowController3 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    _window3 = [inputWindowController3 _window];
    [_window3 bounds];
    v80 = fmax(fmin(v76, v79 - v74), 0.0);

    startState5 = [(UIKeyboardFloatingTransitionController *)self startState];
    [startState5 platterViewFrame];
    v83 = v82 * 0.5;

    inputWindowController4 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    _window4 = [inputWindowController4 _window];
    [_window4 bounds];
    v87 = v86;
    [(UIKeyboardFloatingTransitionController *)self lastGestureCenter];
    v89 = v87 - ceil(v83 + v88);

    expandedForDocking = [(UIKeyboardFloatingTransitionController *)self expandedForDocking];
    if (v89 < 0.0 || expandedForDocking)
    {
      v92 = 0.0;
    }

    else
    {
      v92 = v89;
    }

    v195 = [MEMORY[0x1E696B098] valueWithUIOffset:{v80, v92}];
    v201 = @"Offset";
    v202[0] = v195;
    v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v202 forKeys:&v201 count:1];
    v95 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v193[0] = MEMORY[0x1E69E9820];
    v193[1] = 3221225472;
    v193[2] = __65__UIKeyboardFloatingTransitionController_updateAnimationAtScale___block_invoke;
    v193[3] = &unk_1E7116848;
    v194 = v94;
    platterView7 = v94;
    [v95 performOnDistributedControllers:v193];

    inputWindowController5 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    hostForAnimatedElements = [inputWindowController5 hostForAnimatedElements];
    [hostForAnimatedElements transitioningToState:3 animationType:v49 completionPercentage:v11];

    goto LABEL_83;
  }

  if (startedFromFloating3)
  {
    v52 = 1.0;
  }

  else
  {
    v52 = 0.0;
  }

  if (startedFromFloating4)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = 1.0;
  }

  [(UIKeyboardFloatingTransitionController *)self progress];
  v55 = v53 * v54 + v52 * (1.0 - v54);
  platterPopoverBackgroundView = [(UIKeyboardFloatingTransitionController *)self platterPopoverBackgroundView];
  [platterPopoverBackgroundView setAlpha:v55];

  startedFromFloating5 = [(UIKeyboardFloatingTransitionController *)self startedFromFloating];
  v58 = MEMORY[0x1E695F060];
  if (startedFromFloating5)
  {
    +[UIKeyboardPopoverContainer shadowOffset];
    v60 = v59;
    v62 = v61;
  }

  else
  {
    v60 = *MEMORY[0x1E695F060];
    v62 = *(MEMORY[0x1E695F060] + 8);
  }

  if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
  {
    v71 = *v58;
    v70 = v58[1];
  }

  else
  {
    +[UIKeyboardPopoverContainer shadowOffset];
    v71 = v99;
    v70 = v100;
  }

  [(UIKeyboardFloatingTransitionController *)self progress];
  v102 = v71 * v101 + v60 * (1.0 - v101);
  v103 = v70 * v101 + v62 * (1.0 - v101);
  platterView4 = [(UIKeyboardFloatingTransitionController *)self platterView];
  layer = [platterView4 layer];
  [layer setShadowOffset:{v102, v103}];

  v106 = 0.0;
  v107 = 0.0;
  if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
  {
    +[UIKeyboardPopoverContainer shadowOpacity];
    v107 = v108;
  }

  if (![(UIKeyboardFloatingTransitionController *)self startedFromFloating])
  {
    +[UIKeyboardPopoverContainer shadowOpacity];
    v106 = v109;
  }

  [(UIKeyboardFloatingTransitionController *)self progress];
  v111 = v106 * v110 + v107 * (1.0 - v110);
  platterView5 = [(UIKeyboardFloatingTransitionController *)self platterView];
  layer2 = [platterView5 layer];
  *&v114 = v111;
  [layer2 setShadowOpacity:v114];

  v115 = 0.0;
  v116 = 0.0;
  if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
  {
    +[UIKeyboardPopoverContainer shadowRadius];
    v116 = v117;
  }

  if (![(UIKeyboardFloatingTransitionController *)self startedFromFloating])
  {
    +[UIKeyboardPopoverContainer shadowRadius];
    v115 = v118;
  }

  [(UIKeyboardFloatingTransitionController *)self progress];
  v120 = v115 * v119 + v116 * (1.0 - v119);
  platterView6 = [(UIKeyboardFloatingTransitionController *)self platterView];
  layer3 = [platterView6 layer];
  [layer3 setShadowRadius:v120];

  startState6 = [(UIKeyboardFloatingTransitionController *)self startState];
  [startState6 cornerRadius];
  v125 = v124;
  endState4 = [(UIKeyboardFloatingTransitionController *)self endState];
  [endState4 cornerRadius];
  v128 = v127;
  [(UIKeyboardFloatingTransitionController *)self progress];
  v130 = v128 * v129 + v125 * (1.0 - v129);
  platterCornerRadiusView = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  layer4 = [platterCornerRadiusView layer];
  [layer4 setCornerRadius:v130];

  startState7 = [(UIKeyboardFloatingTransitionController *)self startState];
  borderColor = [startState7 borderColor];
  endState5 = [(UIKeyboardFloatingTransitionController *)self endState];
  borderColor2 = [endState5 borderColor];
  [(UIKeyboardFloatingTransitionController *)self progress];
  v138 = v137;
  v190.f64[0] = 0.0;
  v187.f64[0] = 0.0;
  v199 = 0.0;
  v200 = 0.0;
  v139 = borderColor2;
  [borderColor getRed:&v190 green:&v187 blue:&v200 alpha:&v199];
  v197 = 0.0;
  v198 = 0.0;
  v195 = 0.0;
  v196 = 0.0;
  [v139 getRed:&v198 green:&v197 blue:&v196 alpha:&v195];

  v195 = [UIColor colorWithRed:(1.0 - v138) * v190.f64[0] + v138 * v198 green:(1.0 - v138) * v187.f64[0] + v138 * v197 blue:(1.0 - v138) * v200 + v138 * v196 alpha:(1.0 - v138) * v199 + v138 * v195];

  cGColor = [v195 CGColor];
  platterCornerRadiusView2 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  layer5 = [platterCornerRadiusView2 layer];
  [layer5 setBorderColor:cGColor];

  startState8 = [(UIKeyboardFloatingTransitionController *)self startState];
  [startState8 borderWidth];
  endState6 = [(UIKeyboardFloatingTransitionController *)self endState];
  [endState6 borderWidth];
  [(UIKeyboardFloatingTransitionController *)self progress];
  platterVisualEffectView = [(UIKeyboardFloatingTransitionController *)self platterVisualEffectView];
  lightEffectsTransitionBackdrop = platterVisualEffectView;
  if (!platterVisualEffectView)
  {
    lightEffectsTransitionBackdrop = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
  }

  UIRoundToViewScale(lightEffectsTransitionBackdrop);
  v148 = v147;
  platterCornerRadiusView3 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  layer6 = [platterCornerRadiusView3 layer];
  [layer6 setBorderWidth:v148];

  if (!platterVisualEffectView)
  {
  }

  startState9 = [(UIKeyboardFloatingTransitionController *)self startState];
  v152 = startState9;
  if (startState9)
  {
    [startState9 initialInputViewTransform];
  }

  else
  {
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
  }

  startState10 = [(UIKeyboardFloatingTransitionController *)self startState];
  v154 = startState10;
  if (startState10)
  {
    [startState10 finalInputViewTransform];
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
  }

  [(UIKeyboardFloatingTransitionController *)self progress];
  v180 = vaddq_f64(vmulq_n_f64(v191, 1.0 - v155), vmulq_n_f64(v188, v155));
  v182 = vaddq_f64(vmulq_n_f64(v190, 1.0 - v155), vmulq_n_f64(v187, v155));
  v178 = vaddq_f64(vmulq_n_f64(v192, 1.0 - v155), vmulq_n_f64(v189, v155));
  startState11 = [(UIKeyboardFloatingTransitionController *)self startState];
  inputView = [startState11 inputView];
  v190 = v182;
  v191 = v180;
  v192 = v178;
  [inputView setTransform:&v190];

  endState7 = [(UIKeyboardFloatingTransitionController *)self endState];
  v159 = endState7;
  if (endState7)
  {
    [endState7 initialInputViewTransform];
  }

  else
  {
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
  }

  endState8 = [(UIKeyboardFloatingTransitionController *)self endState];
  v161 = endState8;
  if (endState8)
  {
    [endState8 finalInputViewTransform];
  }

  else
  {
    v188 = 0u;
    v189 = 0u;
    v187 = 0u;
  }

  [(UIKeyboardFloatingTransitionController *)self progress];
  v181 = vaddq_f64(vmulq_n_f64(v191, 1.0 - v162), vmulq_n_f64(v188, v162));
  v183 = vaddq_f64(vmulq_n_f64(v190, 1.0 - v162), vmulq_n_f64(v187, v162));
  v179 = vaddq_f64(vmulq_n_f64(v192, 1.0 - v162), vmulq_n_f64(v189, v162));
  endState9 = [(UIKeyboardFloatingTransitionController *)self endState];
  inputView2 = [endState9 inputView];
  v190 = v183;
  v191 = v181;
  v192 = v179;
  [inputView2 setTransform:&v190];

  startState12 = [(UIKeyboardFloatingTransitionController *)self startState];
  if (!startState12)
  {
    goto LABEL_82;
  }

  v166 = startState12;
  endState10 = [(UIKeyboardFloatingTransitionController *)self endState];

  if (!endState10)
  {
    goto LABEL_82;
  }

  pinchGestureRecognizer = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
  if ([pinchGestureRecognizer state] != 1)
  {
    pinchGestureRecognizer2 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
    if ([pinchGestureRecognizer2 state] != 2)
    {
      panGestureRecognizer = [(UIKeyboardFloatingTransitionController *)self panGestureRecognizer];
      if ([panGestureRecognizer state] != 1)
      {
        panGestureRecognizer2 = [(UIKeyboardFloatingTransitionController *)self panGestureRecognizer];
        state = [panGestureRecognizer2 state];

        if (state != 2)
        {
          [(UIKeyboardFloatingTransitionController *)self progress];
          if (v176 >= 0.2)
          {
            [(UIKeyboardFloatingTransitionController *)self progress];
            if (v177 <= 0.8)
            {
              goto LABEL_82;
            }

            v184[0] = MEMORY[0x1E69E9820];
            v184[1] = 3221225472;
            v184[2] = __65__UIKeyboardFloatingTransitionController_updateAnimationAtScale___block_invoke_4;
            v184[3] = &unk_1E70F3590;
            v184[4] = self;
            v172 = 0.25;
            v173 = v184;
          }

          else
          {
            v185[0] = MEMORY[0x1E69E9820];
            v185[1] = 3221225472;
            v185[2] = __65__UIKeyboardFloatingTransitionController_updateAnimationAtScale___block_invoke_3;
            v185[3] = &unk_1E70F3590;
            v185[4] = self;
            v172 = 0.25;
            v173 = v185;
          }

          goto LABEL_81;
        }

        goto LABEL_79;
      }
    }
  }

LABEL_79:
  [(UIKeyboardFloatingTransitionController *)self progress];
  if (v171 > 0.1)
  {
    v186[0] = MEMORY[0x1E69E9820];
    v186[1] = 3221225472;
    v186[2] = __65__UIKeyboardFloatingTransitionController_updateAnimationAtScale___block_invoke_2;
    v186[3] = &unk_1E70F3590;
    v186[4] = self;
    v172 = 0.25;
    v173 = v186;
LABEL_81:
    [UIView animateWithDuration:v173 animations:v172];
  }

LABEL_82:
  platterView7 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [platterView7 frame];
  [(UIKeyboardFloatingTransitionController *)self updateLayoutGuideFromFrame:?];
LABEL_83:
}

void __65__UIKeyboardFloatingTransitionController_updateAnimationAtScale___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) startState];
  v3 = [v2 inputView];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) pillView];
  [v4 setAlpha:0.0];
}

void __65__UIKeyboardFloatingTransitionController_updateAnimationAtScale___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) startState];
  v3 = [v2 inputView];
  v4 = 1.0;
  [v3 setAlpha:1.0];

  if (![*(a1 + 32) startedFromFloating])
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) pillView];
  [v5 setAlpha:v4];
}

void __65__UIKeyboardFloatingTransitionController_updateAnimationAtScale___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) endState];
  v3 = [v2 inputView];
  v4 = 1.0;
  [v3 setAlpha:1.0];

  if ([*(a1 + 32) startedFromFloating])
  {
    v4 = 0.0;
  }

  v5 = [*(a1 + 32) pillView];
  [v5 setAlpha:v4];
}

- (void)updateLayoutGuideForTransitionStart:(BOOL)start
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__UIKeyboardFloatingTransitionController_updateLayoutGuideForTransitionStart___block_invoke;
  v6[3] = &unk_1E7117988;
  startCopy = start;
  v6[4] = self;
  [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v6];
  if (!start)
  {
    activeKeyboardLayoutGuideTransitionAssertions = [(UIKeyboardFloatingTransitionController *)self activeKeyboardLayoutGuideTransitionAssertions];
    [activeKeyboardLayoutGuideTransitionAssertions removeAllObjects];
  }
}

void __78__UIKeyboardFloatingTransitionController_updateLayoutGuideForTransitionStart___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 isTrackingKeyboard])
  {
    if ((*(a1 + 40) | +[UIKeyboardImpl isFloating]))
    {
      v3 = off_1E70E9B20;
    }

    else
    {
      v3 = off_1E70E9B50;
    }

    v4 = [(__objc2_class *)*v3 placement];
    [v6 updateGuideForKeyboardPlacement:v4];

    [*(a1 + 32) setKeyboardLayoutGuideInTransition:*(a1 + 40) forWindow:v6];
    v5 = [v6 _primaryKeyboardTrackingGuide];
    [v5 enableAnimations:(*(a1 + 40) & 1) == 0];
  }
}

- (void)updateLayoutGuideFromFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (!CGRectEqualToRect(*MEMORY[0x1E695F058], frame))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__UIKeyboardFloatingTransitionController_updateLayoutGuideFromFrame___block_invoke;
    v8[3] = &unk_1E711FFB8;
    *&v8[5] = x;
    *&v8[6] = y;
    *&v8[7] = width;
    *&v8[8] = height;
    v8[4] = self;
    [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v8];
  }
}

void __69__UIKeyboardFloatingTransitionController_updateLayoutGuideFromFrame___block_invoke(uint64_t a1, void *a2)
{
  v30 = a2;
  if ([v30 isTrackingKeyboard])
  {
    [v30 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = [*(a1 + 32) inputWindowController];
    v12 = [v11 _window];
    [v30 convertRect:v12 fromWindow:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v32.origin.x = v4;
    v32.origin.y = v6;
    v32.size.width = v8;
    v32.size.height = v10;
    v38.origin.x = v14;
    v38.origin.y = v16;
    v38.size.width = v18;
    v38.size.height = v20;
    v33 = CGRectIntersection(v32, v38);
    x = v33.origin.x;
    y = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    if (CGRectIsNull(v33))
    {
      v34.origin.x = v4;
      v34.origin.y = v6;
      v34.size.width = v8;
      v34.size.height = v10;
      y = CGRectGetMaxY(v34);
      [v30 insetForDismissedKeyboardGuide];
      height = v25;
      x = 0.0;
      width = v8;
    }

    v35.origin.x = v4;
    v35.origin.y = v6;
    v35.size.width = v8;
    v35.size.height = v10;
    MaxY = CGRectGetMaxY(v35);
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    v27 = MaxY - CGRectGetMaxY(v36);
    v28 = [v30 _primaryKeyboardTrackingGuide];
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    [v28 changeOffsetConstants:{CGRectGetMinX(v37), v27}];

    v29 = [v30 _primaryKeyboardTrackingGuide];
    [v29 changeSizingConstants:{width, height}];
  }
}

- (NSMapTable)activeKeyboardLayoutGuideTransitionAssertions
{
  activeKeyboardLayoutGuideTransitionAssertions = self->_activeKeyboardLayoutGuideTransitionAssertions;
  if (!activeKeyboardLayoutGuideTransitionAssertions)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v5 = self->_activeKeyboardLayoutGuideTransitionAssertions;
    self->_activeKeyboardLayoutGuideTransitionAssertions = weakToStrongObjectsMapTable;

    activeKeyboardLayoutGuideTransitionAssertions = self->_activeKeyboardLayoutGuideTransitionAssertions;
  }

  return activeKeyboardLayoutGuideTransitionAssertions;
}

- (void)setKeyboardLayoutGuideInTransition:(BOOL)transition forWindow:(id)window
{
  transitionCopy = transition;
  windowCopy = window;
  activeKeyboardLayoutGuideTransitionAssertions = [(UIKeyboardFloatingTransitionController *)self activeKeyboardLayoutGuideTransitionAssertions];
  v7 = [activeKeyboardLayoutGuideTransitionAssertions objectForKey:windowCopy];

  if (transitionCopy)
  {
    if (v7)
    {
      goto LABEL_8;
    }

    activeKeyboardLayoutGuideTransitionAssertions3 = [windowCopy _obtainKeyboardLayoutGuideTransitionAssertionForReason:@"Floating keyboard transition"];
    if (activeKeyboardLayoutGuideTransitionAssertions3)
    {
      activeKeyboardLayoutGuideTransitionAssertions2 = [(UIKeyboardFloatingTransitionController *)self activeKeyboardLayoutGuideTransitionAssertions];
      [activeKeyboardLayoutGuideTransitionAssertions2 setObject:activeKeyboardLayoutGuideTransitionAssertions3 forKey:windowCopy];
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    [v7 _invalidate];
    activeKeyboardLayoutGuideTransitionAssertions3 = [(UIKeyboardFloatingTransitionController *)self activeKeyboardLayoutGuideTransitionAssertions];
    [activeKeyboardLayoutGuideTransitionAssertions3 removeObjectForKey:windowCopy];
  }

LABEL_8:
}

- (void)inputViewSnapshot:(id *)snapshot withPlatterInsets:(UIEdgeInsets *)insets
{
  inputWindowController = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  inputViewSet = [inputWindowController inputViewSet];
  keyboard = [inputViewSet keyboard];
  if (!keyboard)
  {
    goto LABEL_4;
  }

  v10 = keyboard;
  inputWindowController2 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  inputViewSet2 = [inputWindowController2 inputViewSet];
  if ([inputViewSet2 isCustomInputView])
  {

LABEL_4:
LABEL_5:
    inputWindowController3 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    inputViewSet3 = [inputWindowController3 inputViewSet];
    inputView = [inputViewSet3 inputView];

    *snapshot = [inputView snapshotViewAfterScreenUpdates:0];
    goto LABEL_6;
  }

  v55 = +[UIKeyboardImpl activeInstance];
  isUsingDictationLayout = [v55 isUsingDictationLayout];

  if (isUsingDictationLayout)
  {
    goto LABEL_5;
  }

  v57 = +[UIKeyboardImpl activeInstance];
  keyplaneView = [v57 keyplaneView];

  keyplane = [keyplaneView keyplane];
  if (([keyplane visualStyling] & 0xFF0000) == 0x260000)
  {
  }

  else
  {
    useStateBasedAnimations = [(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations];

    if (!useStateBasedAnimations)
    {
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __78__UIKeyboardFloatingTransitionController_inputViewSnapshot_withPlatterInsets___block_invoke;
      v68[3] = &unk_1E70F3590;
      v69 = keyplaneView;
      [UIView performWithoutAnimation:v68];
    }
  }

  *snapshot = [UIKeyboardFloatingTransitionController snapshotOfKeyplaneView:keyplaneView];
  v61 = keyplaneView;
  if (!v61 || (inputView = v61, [(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations]))
  {
    inputWindowController4 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    inputViewSet4 = [inputWindowController4 inputViewSet];
    inputView = [inputViewSet4 inputView];
  }

LABEL_6:
  window = [inputView window];
  v17 = window;
  if (window)
  {
    _window = window;
  }

  else
  {
    inputWindowController5 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    _window = [inputWindowController5 _window];
  }

  [inputView bounds];
  [_window convertRect:inputView fromView:?];
  [*snapshot setFrame:?];
  [*snapshot setUserInteractionEnabled:0];
  v20 = *snapshot;
  screen = [_window screen];
  [screen scale];
  [v20 setContentScaleFactor:?];

  inputWindowController6 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  hosting = [inputWindowController6 hosting];
  v24 = [hosting itemForPurpose:0];
  hostView = [v24 hostView];

  [hostView frame];
  v27 = v26;
  rect = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  [inputView bounds];
  [hostView convertRect:inputView fromView:?];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v70.origin.x = v27;
  v70.origin.y = v29;
  v70.size.width = v31;
  v70.size.height = v33;
  Height = CGRectGetHeight(v70);
  v71.origin.x = v35;
  v71.origin.y = v37;
  v71.size.width = v39;
  v71.size.height = v41;
  rect_24 = Height - CGRectGetMaxY(v71);
  v72.origin.x = v35;
  v72.origin.y = v37;
  v72.size.width = v39;
  v72.size.height = v41;
  rect_8 = CGRectGetMinY(v72);
  v73.origin.x = v35;
  v73.origin.y = v37;
  v73.size.width = v39;
  v73.size.height = v41;
  rect_16 = CGRectGetMinX(v73);
  v74.origin.x = rect;
  v74.origin.y = v29;
  v74.size.width = v31;
  v74.size.height = v33;
  Width = CGRectGetWidth(v74);
  v75.origin.x = v35;
  v75.origin.y = v37;
  v75.size.width = v39;
  v75.size.height = v41;
  v44 = Width - CGRectGetMaxX(v75);
  if (+[UIKeyboardImpl isFloating])
  {
    +[UIKeyboardPopoverContainer contentInsets];
    v46 = rect_8 + v45;
    v48 = rect_16 + v47;
    v50 = rect_24 + v49;
    v44 = v44 + v51;
  }

  else
  {
    inputWindowController7 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    inputViewSet5 = [inputWindowController7 inputViewSet];
    inputAccessoryView = [inputViewSet5 inputAccessoryView];

    [inputAccessoryView frame];
    v46 = rect_8 - CGRectGetHeight(v76);

    v48 = rect_16;
    v50 = rect_24;
  }

  insets->top = v46;
  insets->left = v48;
  insets->bottom = v50;
  insets->right = v44;
}

void __78__UIKeyboardFloatingTransitionController_inputViewSnapshot_withPlatterInsets___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) hideKeyCaps:1];
  v2 = *(a1 + 32);
  v4 = &unk_1EFE32FF8;
  v5[0] = &unk_1EFE2EBC8;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [v2 dimKeys:v3];
}

- (void)captureStateForStart:(BOOL)start
{
  v78 = 0u;
  v79 = 0u;
  v77 = 0;
  [(UIKeyboardFloatingTransitionController *)self inputViewSnapshot:&v77 withPlatterInsets:&v78];
  v5 = v77;
  v6 = +[UIColor clearColor];
  if (+[UIKeyboardImpl isFloating])
  {
    +[UIKeyboardPopoverContainer cornerRadius];
    v75 = v7;
    +[UIKeyboardPopoverContainer borderWidth];
    v76 = v8;
    v9 = +[UIKeyboardPopoverContainer borderColor];

    v6 = v9;
  }

  else
  {
    v75 = 0.0;
    v76 = 0.0;
  }

  [v5 frame];
  v73 = v11;
  v74 = v10;
  v71 = v13;
  v72 = v12;
  [v5 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = v78;
  v23 = v79;
  if ([(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations])
  {
    inputWindowController = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    hosting = [inputWindowController hosting];
    v26 = [hosting itemForPurpose:0];
    [v26 visibleFrame];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    if (+[UIKeyboardImpl isFloating])
    {
      v35 = 3;
    }

    else
    {
      v35 = 2;
    }

    inputWindowController2 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    hostForAnimatedElements = [inputWindowController2 hostForAnimatedElements];
    [hostForAnimatedElements sizeForVisualState:v35];
    v39 = v38;
    v41 = v40;

    if (v41 == -1.0)
    {
      v42 = v34;
    }

    else
    {
      v42 = v41;
    }

    if (v41 == -1.0)
    {
      v43 = v32;
    }

    else
    {
      v43 = v39;
    }

    v44 = v28 - *(&v78 + 1);
    v45 = v30 - *&v78;
    v46 = v43 - (-*(&v79 + 1) - *(&v78 + 1));
    v47 = v42 - (-*&v79 - *&v78);
  }

  else
  {
    v44 = v15 - *(&v22 + 1);
    v45 = v17 - *&v22;
    v46 = v19 - (-*(&v23 + 1) - *(&v22 + 1));
    v47 = v21 - (-*&v23 - *&v22);
  }

  startState = [(UIKeyboardFloatingTransitionController *)self startState];
  endState = startState;
  v51 = v73;
  v50 = v74;
  v53 = v71;
  v52 = v72;
  if (!start)
  {
    [startState platterViewFrame];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;

    v62 = v46 - v59;
    v63 = v47 - v61;
    platterView = [(UIKeyboardFloatingTransitionController *)self platterView];
    [platterView anchorPoint];
    v66 = v65;
    v68 = v67;

    v69 = v62 * v66;
    v70 = -(v62 * (1.0 - v66));
    v44 = v55 - v62 * v66;
    v45 = v57 - v63 * v68;
    v46 = v59 - (v70 - v69);
    v47 = v61 - (-(v63 * (1.0 - v68)) - v63 * v68);
    v50 = v44 + *(&v78 + 1);
    v51 = *&v78 + v45;
    v52 = v46 - (*(&v78 + 1) + *(&v79 + 1));
    v53 = v47 - (*&v78 + *&v79);
    [v5 setFrame:{v44 + *(&v78 + 1), *&v78 + v45, v52, v53}];
    endState = [(UIKeyboardFloatingTransitionController *)self endState];
  }

  [endState setInputView:v5];
  [endState setInputViewFrame:{v50, v51, v52, v53}];
  [endState setPlatterViewFrame:{v44, v45, v46, v47}];
  [endState setPlatterInsets:{v78, v79}];
  [endState setCornerRadius:v75];
  [endState setBorderWidth:v76];
  [endState setBorderColor:v6];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if (+[UIKeyboardImpl isSplit])
  {
    goto LABEL_2;
  }

  if (+[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating") && !+[UIKeyboardImpl isFloatingForced])
  {
    [beginCopy scale];
    v6 = v8 >= 1.0;
  }

  else if (+[UIKeyboardImpl isFloating])
  {
    v6 = 0;
  }

  else
  {
    [beginCopy scale];
    v6 = v7 < 1.0;
  }

  v9 = +[UIKeyboardImpl activeInstance];
  usesCandidateSelection = [v9 usesCandidateSelection];

  if (usesCandidateSelection)
  {
    v11 = +[UIKeyboardImpl activeInstance];
    candidateList = [v11 candidateList];
    v13 = v6 & ([candidateList isExtendedList] ^ 1);

    if (v13)
    {
      goto LABEL_13;
    }
  }

  else if (v6)
  {
LABEL_13:
    delegate = [(UIKeyboardFloatingTransitionController *)self delegate];
    v5 = [delegate shouldBeginTransitionForController:self];

    goto LABEL_14;
  }

LABEL_2:
  v5 = 0;
LABEL_14:

  return v5;
}

- (UIKeyboardFloatingTransitionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIInputWindowController)inputWindowController
{
  WeakRetained = objc_loadWeakRetained(&self->_inputWindowController);

  return WeakRetained;
}

- (CGPoint)lastGestureCenter
{
  x = self->_lastGestureCenter.x;
  y = self->_lastGestureCenter.y;
  result.y = y;
  result.x = x;
  return result;
}

@end