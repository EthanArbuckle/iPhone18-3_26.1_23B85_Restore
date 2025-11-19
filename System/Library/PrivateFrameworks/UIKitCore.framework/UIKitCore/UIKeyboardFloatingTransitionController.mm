@interface UIKeyboardFloatingTransitionController
+ (BOOL)isPointWithinDockingRegion:(CGPoint)a3;
+ (CGRect)dockingRegion;
+ (id)snapshotOfKeyplaneView:(id)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)useStateBasedAnimations;
- (CGPoint)lastGestureCenter;
- (NSMapTable)activeKeyboardLayoutGuideTransitionAssertions;
- (UIInputWindowController)inputWindowController;
- (UIKeyboardFloatingTransitionControllerDelegate)delegate;
- (void)addGestureRecognizersToView:(id)a3;
- (void)beginPanGesture:(id)a3;
- (void)beginPinchGesture:(id)a3;
- (void)beginTransitionAtPoint:(CGPoint)a3 withScale:(double)a4 recognizer:(id)a5;
- (void)beginTransitionFromPanGestureRecognizer:(id)a3;
- (void)captureStateForStart:(BOOL)a3;
- (void)endPanGesture:(id)a3;
- (void)endPinchGesture:(id)a3;
- (void)endTransitionAtPoint:(CGPoint)a3 withScale:(double)a4;
- (void)finalizeTransition;
- (void)handlePanGestureRecognizerAction:(id)a3;
- (void)handlePinchGestureRecognizerAction:(id)a3;
- (void)initializeContextAtPoint:(CGPoint)a3 recognizer:(id)a4;
- (void)inputViewSnapshot:(id *)a3 withPlatterInsets:(UIEdgeInsets *)a4;
- (void)removeGestureRecognizers;
- (void)setKeyboardLayoutGuideInTransition:(BOOL)a3 forWindow:(id)a4;
- (void)updateAnimationAtScale:(double)a3;
- (void)updateHysteresisForCurrentFloatingState;
- (void)updateLayoutGuideForTransitionStart:(BOOL)a3;
- (void)updateLayoutGuideFromFrame:(CGRect)a3;
- (void)updatePanGesture:(id)a3;
- (void)updatePinchGesture:(id)a3;
- (void)updateTransitionAtPoint:(CGPoint)a3 withScale:(double)a4 interactive:(BOOL)a5;
@end

@implementation UIKeyboardFloatingTransitionController

+ (CGRect)dockingRegion
{
  v2 = [objc_opt_self() mainScreen];
  [v2 bounds];
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

+ (BOOL)isPointWithinDockingRegion:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (+[UIKeyboardImpl isFloatingForced])
  {
    return 0;
  }

  v6 = [objc_opt_self() mainScreen];
  [v6 bounds];

  [a1 dockingRegion];
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

+ (id)snapshotOfKeyplaneView:(id)a3
{
  v3 = a3;
  v4 = [[UIKeyboardKeyplaneSnapshotView alloc] initWithKeyplaneView:v3];
  [(UIView *)v4 setUserInteractionEnabled:0];
  v5 = [v3 window];

  v6 = [v5 screen];
  [v6 scale];
  [(UIView *)v4 setContentScaleFactor:?];

  return v4;
}

- (BOOL)useStateBasedAnimations
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v3 = [v2 preferencesActions];
  if ([v3 currentInputModeSupportsCrescendo])
  {
    v4 = +[UIInputWindowController supportsStateBasedAnimations];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)beginTransitionFromPanGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel_handlePanGestureRecognizerAction_];
  [(UIKeyboardFloatingTransitionController *)self setPanGestureRecognizer:v5];

  v6 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
  v7 = [v6 view];
  v8 = [(UIKeyboardFloatingTransitionController *)self panGestureRecognizer];
  [v7 addGestureRecognizer:v8];

  v9 = [(UIKeyboardFloatingTransitionController *)self panGestureRecognizer];
  [(UIGestureRecognizer *)v9 transferTouchesFromGestureRecognizer:v4];
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

  v4 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
  [v4 _setHysteresis:v3];
}

- (void)addGestureRecognizersToView:(id)a3
{
  v10 = a3;
  v4 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
  v5 = [v4 view];

  if (v5 != v10)
  {
    [(UIKeyboardFloatingTransitionController *)self removeGestureRecognizers];
    v6 = [[UIKeyboardFloatingPinchGestureRecognizer alloc] initWithTarget:self action:sel_handlePinchGestureRecognizerAction_];
    [(UIKeyboardFloatingTransitionController *)self setPinchGestureRecognizer:v6];

    v7 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
    [v7 _setEndsOnSingleTouch:1];

    v8 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
    [v8 setDelegate:self];

    v9 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
    [v10 addGestureRecognizer:v9];
  }

  [(UIKeyboardFloatingTransitionController *)self updateHysteresisForCurrentFloatingState];
}

- (void)removeGestureRecognizers
{
  v3 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
  v4 = [v3 view];
  v5 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
  [v4 removeGestureRecognizer:v5];

  [(UIKeyboardFloatingTransitionController *)self setPinchGestureRecognizer:0];
}

- (void)handlePanGestureRecognizerAction:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      [(UIKeyboardFloatingTransitionController *)self beginPanGesture:v7];
    }

    else
    {
      v5 = v4 == 2;
      v6 = v7;
      if (!v5)
      {
        goto LABEL_12;
      }

      [(UIKeyboardFloatingTransitionController *)self updatePanGesture:v7];
    }

LABEL_11:
    v6 = v7;
    goto LABEL_12;
  }

  if (v4 == 3 || (v5 = v4 == 4, v6 = v7, v5))
  {
    [(UIKeyboardFloatingTransitionController *)self endPanGesture:v7];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)beginPanGesture:(id)a3
{
  v4 = a3;
  [v4 locationOfTouch:0 inView:0];
  [UIKeyboardFloatingTransitionController beginTransitionAtPoint:"beginTransitionAtPoint:withScale:recognizer:" withScale:v4 recognizer:?];

  [(UIKeyboardFloatingTransitionController *)self setWithinDockingRegion:0];
}

- (void)updatePanGesture:(id)a3
{
  [a3 locationOfTouch:0 inView:0];

  [UIKeyboardFloatingTransitionController updateTransitionAtPoint:"updateTransitionAtPoint:withScale:interactive:" withScale:1 interactive:?];
}

- (void)endPanGesture:(id)a3
{
  v14 = a3;
  v4 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [v4 center];
  v6 = v5;
  v8 = v7;

  if ([v14 numberOfTouches] == 1)
  {
    [v14 locationOfTouch:0 inView:0];
    v6 = v9;
    v8 = v10;
  }

  [(UIKeyboardFloatingTransitionController *)self endTransitionAtPoint:v6 withScale:v8, 1.0];
  v11 = [(UIKeyboardFloatingTransitionController *)self panGestureRecognizer];
  v12 = [v11 view];
  v13 = [(UIKeyboardFloatingTransitionController *)self panGestureRecognizer];
  [v12 removeGestureRecognizer:v13];

  [(UIKeyboardFloatingTransitionController *)self setPanGestureRecognizer:0];
}

- (void)handlePinchGestureRecognizerAction:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      [(UIKeyboardFloatingTransitionController *)self beginPinchGesture:v7];
    }

    else
    {
      v5 = v4 == 2;
      v6 = v7;
      if (!v5)
      {
        goto LABEL_12;
      }

      [(UIKeyboardFloatingTransitionController *)self updatePinchGesture:v7];
    }

LABEL_11:
    v6 = v7;
    goto LABEL_12;
  }

  if (v4 == 3 || (v5 = v4 == 4, v6 = v7, v5))
  {
    [(UIKeyboardFloatingTransitionController *)self endPinchGesture:v7];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)beginPinchGesture:(id)a3
{
  v12 = a3;
  if ([v12 numberOfTouches])
  {
    [v12 locationInView:0];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v8 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [v8 center];
    v5 = v9;
    v7 = v10;
  }

  [v12 scale];
  [(UIKeyboardFloatingTransitionController *)self beginTransitionAtPoint:v12 withScale:v5 recognizer:v7, v11];
}

- (void)updatePinchGesture:(id)a3
{
  v4 = a3;
  if ([v4 numberOfTouches])
  {
    [v4 locationInView:0];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v9 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [v9 center];
    v6 = v10;
    v8 = v11;
  }

  [v4 scale];
  v13 = v12;

  [(UIKeyboardFloatingTransitionController *)self updateTransitionAtPoint:1 withScale:v6 interactive:v8, v13];
}

- (void)endPinchGesture:(id)a3
{
  v4 = a3;
  if ([v4 numberOfTouches])
  {
    [v4 locationInView:0];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v9 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [v9 center];
    v6 = v10;
    v8 = v11;
  }

  [v4 scale];
  v13 = v12;

  [(UIKeyboardFloatingTransitionController *)self endTransitionAtPoint:v6 withScale:v8, v13];
}

- (void)beginTransitionAtPoint:(CGPoint)a3 withScale:(double)a4 recognizer:(id)a5
{
  y = a3.y;
  x = a3.x;
  v9 = a5;
  [(UIKeyboardFloatingTransitionController *)self setIsTransitioning:1];
  [(UIKeyboardFloatingTransitionController *)self updateLayoutGuideForTransitionStart:1];
  v10 = [(UIKeyboardFloatingTransitionController *)self delegate];
  [v10 willBeginTransitionWithController:self];

  [(UIKeyboardFloatingTransitionController *)self initializeContextAtPoint:v9 recognizer:x, y];

  [(UIKeyboardFloatingTransitionController *)self updateTransitionAtPoint:0 withScale:x interactive:y, a4];
}

- (void)updateTransitionAtPoint:(CGPoint)a3 withScale:(double)a4 interactive:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v10 = [(UIKeyboardFloatingTransitionController *)self endState];
  v11 = [v10 inputView];

  if (v11)
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
    *&aBlock[9] = a4;
    v26 = v5;
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
    v24 = v5;
    *&v23[9] = a4;
    v17 = _Block_copy(v23);
    v18 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    if (v18 && ![(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations])
    {

      if (!v5)
      {
        [(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations];
        goto LABEL_11;
      }

      [(UIKeyboardFloatingTransitionController *)self updateAnimationAtScale:a4];
    }

    else
    {
    }

    if ([(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations]&& v5)
    {
      v16[2](v16);
LABEL_12:

      return;
    }

LABEL_11:
    v19 = [(UIKeyboardFloatingTransitionController *)self animationBehavior];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __88__UIKeyboardFloatingTransitionController_updateTransitionAtPoint_withScale_interactive___block_invoke_4;
    v20[3] = &unk_1E70FE2C0;
    v20[4] = self;
    v21 = v16;
    v22 = v17;
    [UIView _animateUsingSpringBehavior:v19 tracking:v5 animations:v20 completion:0];

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

- (void)endTransitionAtPoint:(CGPoint)a3 withScale:(double)a4
{
  y = a3.y;
  x = a3.x;
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
      v13 = [(UIKeyboardFloatingTransitionController *)self platterView];
      v14 = [v13 _projectedTargetForKey:@"transform" decelerationFactor:0.995];

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
        CATransform3DMakeScale(&v128, a4, a4, 1.0);
      }

      CATransform3DGetDecomposition_();
      v15 = round(v129 + -1.0);
      v16 = [(UIKeyboardFloatingTransitionController *)self endState];
      [v16 scale];
      v11 = v15 / (v17 + -1.0);
    }
  }

  v18 = [(UIKeyboardFloatingTransitionController *)self platterView];
  v19 = [v18 _projectedTargetForKey:@"position" decelerationFactor:0.995];

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
    v25 = [(UIKeyboardFloatingTransitionController *)self startedFromFloating];
    v23 = 0.5;
    v24 = (v11 >= 0.5) & ~v25;
  }

  v117 = x;
  if (v11 >= v23)
  {
    v26 = [(UIKeyboardFloatingTransitionController *)self endState];
    [(UIKeyboardFloatingTransitionController *)self endState];
  }

  else
  {
    v26 = [(UIKeyboardFloatingTransitionController *)self startState];
    [(UIKeyboardFloatingTransitionController *)self startState];
  }
  v27 = ;
  [v27 scale];
  v116 = v28;

  v29 = @"NotOnEdge";
  v30 = [(UIKeyboardFloatingTransitionController *)self platterView];
  v31 = [v30 superview];

  [v31 bounds];
  v113 = v33;
  rect = v34;
  v36 = v35;
  v37 = v32;
  if (v24)
  {
    v108 = v32;
    v38 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [v38 anchorPoint];
    v40 = v39;
    v42 = v41;

    v43 = v36;
    if (v10 <= 0.25)
    {
      +[UIKeyboardImpl floatingPersistentOffset];
      v20 = v44;
      v111 = v45;
      [v26 platterViewFrame];
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

    [v26 platterViewFrame];
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

  [v26 platterViewFrame];
  v55 = v54;
  v57 = v56;
  v58 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [v58 anchorPoint];
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
  v99 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [v99 center];
  v101 = v68 - v100;

  v102 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [v102 center];
  v104 = MaxY - v103;

  v105 = [(UIKeyboardFloatingTransitionController *)self animationBehavior];
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
  [UIView _animateUsingSpringBehavior:v105 tracking:0 animations:v126 completion:v119];
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

- (void)initializeContextAtPoint:(CGPoint)a3 recognizer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v384[4] = *MEMORY[0x1E69E9840];
  v7 = a4;
  [(UIKeyboardFloatingTransitionController *)self setProgress:0.0];
  [(UIKeyboardFloatingTransitionController *)self setStartedFromFloating:+[UIKeyboardImpl isFloating]];
  v8 = [(UIKeyboardFloatingTransitionController *)self delegate];
  v9 = [v8 inputWindowControllerForController:self];
  [(UIKeyboardFloatingTransitionController *)self setInputWindowController:v9];

  v10 = objc_alloc_init(UIKeyboardFloatingTransitionState);
  [(UIKeyboardFloatingTransitionController *)self setStartState:v10];

  v11 = objc_alloc_init(UIKeyboardFloatingTransitionState);
  [(UIKeyboardFloatingTransitionController *)self setEndState:v11];

  [(UIKeyboardFloatingTransitionController *)self captureStateForStart:1];
  v12 = [(UIKeyboardFloatingTransitionController *)self startState];
  v13 = [v12 inputView];
  _UIViewSetAnchorPointToTouchPoint(v13, x, y);

  v14 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  v15 = [v14 view];

  v16 = [v15 window];
  v17 = [UIView alloc];
  v18 = *MEMORY[0x1E695F058];
  v19 = *(MEMORY[0x1E695F058] + 8);
  v20 = *(MEMORY[0x1E695F058] + 16);
  v21 = *(MEMORY[0x1E695F058] + 24);
  v22 = [(UIView *)v17 initWithFrame:*MEMORY[0x1E695F058], v19, v20, v21];
  [(UIKeyboardFloatingTransitionController *)self setPlatterView:v22];

  v23 = [(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations];
  self->_initWithStateBasedAnimations = v23;
  v376 = v16;
  if (v23)
  {
    v24 = [(UIKeyboardFloatingTransitionController *)self startState];
    [v24 platterViewFrame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [v33 setFrame:{v26, v28, v30, v32}];

    v34 = [(UIKeyboardFloatingTransitionController *)self platterView];
    _UIViewSetAnchorPointToTouchPoint(v34, x, y);

    v35 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [v16 addSubview:v35];

    v36 = [(UIKeyboardFloatingTransitionController *)self startState];
    [v36 setScale:{1.0, 1.0}];

    +[UIKeyboardImpl floatingWidth];
    v38 = v37;
    v39 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v40 = [v39 view];
    [v40 bounds];
    v42 = v41;

    if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
    {
      v43 = v42 / v38;
    }

    else
    {
      v43 = v38 / v42;
    }

    v44 = [(UIKeyboardFloatingTransitionController *)self endState];
    [v44 setScale:{v43, v43}];

    v45 = objc_alloc_init(UIViewSpringAnimationBehavior);
    [(UIKeyboardFloatingTransitionController *)self setAnimationBehavior:v45];

    v46 = [(UIKeyboardFloatingTransitionController *)self animationBehavior];
    [v46 setDampingRatio:0.9 response:0.2];

    v47 = [(UIKeyboardFloatingTransitionController *)self animationBehavior];
    [v47 setTrackingDampingRatio:1.0 response:0.12 dampingRatioSmoothing:0.08 responseSmoothing:0.08];

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

    v50 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v51 = [v50 hostForAnimatedElements];
    [v51 prepareForTransitionToState:v48 animationType:v49 interactiveTransition:1];

    [UIKeyboardImpl setFloating:[(UIKeyboardFloatingTransitionController *)self startedFromFloating]^ 1 positionedAtDefaultOffsetAnimated:0];
    v52 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v53 = [v52 inputViewSet];
    v54 = [v53 keyboard];
    v365 = v15;
    v367 = v7;
    if (v54)
    {
      v55 = v54;
      v56 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
      v57 = [v56 inputViewSet];
      v58 = [v57 isCustomInputView];

      if (!v58)
      {
        goto LABEL_36;
      }
    }

    else
    {
    }

    v184 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v185 = [v184 inputViewSet];
    v186 = [v185 inputView];
    [v186 setAlpha:0.0];

    v187 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    [v187 updateViewSizingConstraints];

LABEL_36:
    v188 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v189 = [v188 hostForAnimatedElements];
    v190 = [v189 hostView];

    v191 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [v191 setTranslatesAutoresizingMaskIntoConstraints:0];

    v347 = MEMORY[0x1E69977A0];
    v374 = [(UIKeyboardFloatingTransitionController *)self platterView];
    v370 = [v374 centerXAnchor];
    v362 = [v190 centerXAnchor];
    v358 = [v370 constraintEqualToAnchor:v362];
    v384[0] = v358;
    v355 = [(UIKeyboardFloatingTransitionController *)self platterView];
    v351 = [v355 centerYAnchor];
    v349 = [v190 centerYAnchor];
    v345 = [v351 constraintEqualToAnchor:v349];
    v384[1] = v345;
    v192 = [(UIKeyboardFloatingTransitionController *)self platterView];
    v193 = [v192 heightAnchor];
    v353 = v190;
    v194 = [v190 heightAnchor];
    v195 = [v193 constraintEqualToAnchor:v194];
    v384[2] = v195;
    v196 = [(UIKeyboardFloatingTransitionController *)self platterView];
    v197 = [v196 widthAnchor];
    v198 = [v190 widthAnchor];
    v199 = [v197 constraintEqualToAnchor:v198];
    v384[3] = v199;
    v200 = [MEMORY[0x1E695DEC8] arrayWithObjects:v384 count:4];
    [v347 activateConstraints:v200];

    [(UIKeyboardFloatingTransitionController *)self setWithinDockingRegion:0];
    [(UIKeyboardFloatingTransitionController *)self captureStateForStart:0];
    [(UIKeyboardFloatingTransitionController *)self setExpandedForDocking:0];
    [(UIKeyboardFloatingTransitionController *)self setGestureBeginTime:CACurrentMediaTime()];

    v15 = v365;
    v7 = v367;
    v171 = v376;
    goto LABEL_54;
  }

  v369 = y;
  if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
  {
    +[UIKeyboardPopoverContainer shadowOffset];
    v60 = v59;
    v62 = v61;
    v63 = [(UIKeyboardFloatingTransitionController *)self platterView];
    v64 = [v63 layer];
    [v64 setShadowOffset:{v60, v62}];

    v65 = +[UIKeyboardPopoverContainer shadowColor];
    v66 = [v65 CGColor];
    v67 = [(UIKeyboardFloatingTransitionController *)self platterView];
    v68 = [v67 layer];
    [v68 setShadowColor:v66];

    +[UIKeyboardPopoverContainer shadowOpacity];
    *&v60 = v69;
    v70 = [(UIKeyboardFloatingTransitionController *)self platterView];
    v71 = [v70 layer];
    LODWORD(v72) = LODWORD(v60);
    [v71 setShadowOpacity:v72];

    +[UIKeyboardPopoverContainer shadowRadius];
    v74 = v73;
    v75 = [(UIKeyboardFloatingTransitionController *)self platterView];
    v76 = [v75 layer];
    [v76 setShadowRadius:v74];
  }

  v77 = [[UIView alloc] initWithFrame:v18, v19, v20, v21];
  [(UIKeyboardFloatingTransitionController *)self setPlatterCornerRadiusView:v77];

  v78 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  [v78 setAutoresizingMask:18];

  v79 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  v80 = [v79 layer];
  [v80 setMasksToBounds:1];

  v81 = [(UIKeyboardFloatingTransitionController *)self startState];
  [v81 cornerRadius];
  v83 = v82;
  v84 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  v85 = [v84 layer];
  [v85 setCornerRadius:v83];

  v86 = [(UIKeyboardFloatingTransitionController *)self startState];
  v87 = [v86 borderColor];
  v88 = [v87 CGColor];
  v89 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  v90 = [v89 layer];
  [v90 setBorderColor:v88];

  v91 = [(UIKeyboardFloatingTransitionController *)self startState];
  [v91 borderWidth];
  v93 = v92;
  v94 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  v95 = [v94 layer];
  [v95 setBorderWidth:v93];

  v96 = [(UIKeyboardFloatingTransitionController *)self platterView];
  v97 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  [v96 addSubview:v97];

  v98 = [objc_alloc(+[_UIPopoverStandardChromeView standardChromeViewClass](_UIPopoverStandardChromeView "standardChromeViewClass"))];
  [(UIKeyboardFloatingTransitionController *)self setPlatterPopoverBackgroundView:v98];

  v99 = [(UIKeyboardFloatingTransitionController *)self platterPopoverBackgroundView];
  [v99 setAutoresizingMask:18];

  v100 = [(UIKeyboardFloatingTransitionController *)self platterPopoverBackgroundView];
  [v100 setBackgroundStyle:6];

  v101 = [(UIKeyboardFloatingTransitionController *)self platterPopoverBackgroundView];
  [v101 setArrowDirection:0];

  if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
  {
    v102 = 1.0;
  }

  else
  {
    v102 = 0.0;
  }

  v103 = [(UIKeyboardFloatingTransitionController *)self platterPopoverBackgroundView];
  [v103 setAlpha:v102];

  v104 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  v105 = [(UIKeyboardFloatingTransitionController *)self platterPopoverBackgroundView];
  [v104 addSubview:v105];

  v106 = +[UIKBRenderConfig defaultConfig];
  v107 = [v106 backdropStyle];

  v108 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  v109 = [v108 hosting];
  v110 = [v109 itemForPurpose:0];

  if ([v110 conformsToProtocol:&unk_1F003A010])
  {
    v107 = [v110 inputViewBackdropStyle];
  }

  v372 = x;
  if (v107 == 3904)
  {
    v111 = [[_UIKBLightEffectsBackground alloc] initWithFrame:v18, v19, v20, v21];
    [(UIKeyboardFloatingTransitionController *)self setLightEffectsTransitionBackdrop:v111];

    v112 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    [v112 setTranslatesAutoresizingMaskIntoConstraints:0];

    v113 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    v114 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    [v113 addSubview:v114];

    v115 = [(UIKeyboardFloatingTransitionController *)self platterPopoverBackgroundView];
    [v115 setAlpha:0.0];

    v116 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    v117 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    v118 = [(UIKeyboardFloatingTransitionController *)self platterView];
    v119 = [v118 _inheritedRenderConfig];
    [v117 _setRenderConfig:v119];
  }

  else
  {
    [(UIKeyboardFloatingTransitionController *)self setLightEffectsTransitionBackdrop:0];
    v120 = [(UIKBBackdropView *)[UIKBVisualEffectView alloc] initWithFrame:v107 style:v18, v19, v20, v21];
    [(UIKeyboardFloatingTransitionController *)self setPlatterVisualEffectView:v120];

    v121 = [(UIKeyboardFloatingTransitionController *)self platterVisualEffectView];
    [v121 setAutoresizingMask:18];

    v122 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    v123 = [(UIKeyboardFloatingTransitionController *)self platterVisualEffectView];
    [v122 addSubview:v123];

    v117 = [(UIKeyboardFloatingTransitionController *)self platterVisualEffectView];
    v116 = [v117 contentView];
  }

  v124 = [(UIKeyboardFloatingTransitionController *)self startState];
  [v124 platterViewFrame];
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v132 = v131;
  v133 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [v133 setFrame:{v126, v128, v130, v132}];

  v134 = [(UIKeyboardFloatingTransitionController *)self platterView];
  v135 = v372;
  _UIViewSetAnchorPointToTouchPoint(v134, v372, v369);

  if (!+[UIInputWindowController keyboardDotDotDotEnabled])
  {
    v136 = [[UIView alloc] initWithFrame:v18, v19, v20, v21];
    [(UIKeyboardFloatingTransitionController *)self setPillView:v136];

    v137 = [(UIKeyboardFloatingTransitionController *)self pillView];
    [v137 setAutoresizingMask:13];

    v138 = +[UIKeyboardPopoverContainer pillColor];
    v139 = [(UIKeyboardFloatingTransitionController *)self pillView];
    [v139 setBackgroundColor:v138];

    if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
    {
      v140 = 1.0;
    }

    else
    {
      v140 = 0.0;
    }

    v141 = [(UIKeyboardFloatingTransitionController *)self pillView];
    [v141 setAlpha:v140];

    +[UIKeyboardPopoverContainer pillCornerRadius];
    v143 = v142;
    v144 = [(UIKeyboardFloatingTransitionController *)self pillView];
    v145 = [v144 layer];
    [v145 setCornerRadius:v143];

    v146 = [(UIKeyboardFloatingTransitionController *)self pillView];
    [v116 addSubview:v146];

    +[UIKeyboardPopoverContainer pillSize];
    v148 = v147;
    v150 = v149;
    +[UIKeyboardPopoverContainer dragAreaHeight];
    v151 = [(UIKeyboardFloatingTransitionController *)self startState];
    [v151 platterViewFrame];
    v152 = CGRectGetWidth(v385) * 0.5 - v148 * 0.5;
    v153 = [(UIKeyboardFloatingTransitionController *)self startState];
    [v153 platterViewFrame];
    v154 = CGRectGetHeight(v386) - v150;
    +[UIKeyboardPopoverContainer pillDistanceToEdge];
    v156 = v154 - v155;
    v157 = [(UIKeyboardFloatingTransitionController *)self pillView];
    v158 = v156;
    v135 = v372;
    [v157 setFrame:{v152, v158, v148, v150}];
  }

  v159 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [v159 frame];
  MidX = CGRectGetMidX(v387);
  v161 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [v161 frame];
  [(UIKeyboardFloatingTransitionController *)self setWithinDockingRegion:[UIKeyboardFloatingTransitionController isPointWithinDockingRegion:MidX, CGRectGetMaxY(v388)]];

  [(UIKeyboardFloatingTransitionController *)self setExpandedForDocking:0];
  v162 = [(UIKeyboardFloatingTransitionController *)self platterView];
  v163 = [v162 layer];
  [v163 setAllowsGroupBlending:0];

  v164 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  v165 = [v164 layer];
  [v165 setAllowsGroupBlending:0];

  v166 = [(UIKeyboardFloatingTransitionController *)self platterVisualEffectView];
  v167 = [v166 layer];
  [v167 setAllowsGroupBlending:0];

  v168 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
  v169 = [v168 layer];
  [v169 setAllowsGroupBlending:0];

  v170 = [(UIKeyboardFloatingTransitionController *)self platterView];
  v171 = v376;
  [v376 addSubview:v170];

  v172 = [(UIKeyboardFloatingTransitionController *)self startState];
  v173 = [v172 inputView];
  [v376 addSubview:v173];

  if ([(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations])
  {
    v174 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [v174 setHidden:1];
  }

  v175 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];

  if (v175)
  {
    v176 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v177 = [v176 inputViewSet];

    v178 = [v177 assistantViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v366 = v15;
    v368 = v7;
    v357 = v116;
    v361 = v110;
    v373 = v177;
    if (isKindOfClass)
    {
      v180 = [v177 assistantViewController];
      v181 = [UITraitCollection traitCollectionWithUserInterfaceIdiom:1];
      [v180 preferredHeightForTraitCollection:v181];
      v183 = v182;
    }

    else
    {
      v183 = 55.0;
    }

    v328 = MEMORY[0x1E69977A0];
    v356 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    v352 = [v356 topAnchor];
    v354 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    v350 = [v354 topAnchor];
    v348 = [v352 constraintEqualToAnchor:v350];
    v383[0] = v348;
    v346 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    v343 = [v346 leadingAnchor];
    v344 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    v342 = [v344 leadingAnchor];
    v341 = [v343 constraintEqualToAnchor:v342];
    v383[1] = v341;
    v340 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    v338 = [v340 bottomAnchor];
    v339 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    v337 = [v339 bottomAnchor];
    v336 = [v338 constraintEqualToAnchor:v337];
    v383[2] = v336;
    v335 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    v333 = [v335 trailingAnchor];
    v334 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    v332 = [v334 trailingAnchor];
    v331 = [v333 constraintEqualToAnchor:v332];
    v383[3] = v331;
    v330 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    v329 = [v330 fullBackdropLayoutGuide];
    v326 = [v329 topAnchor];
    v327 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    v325 = [v327 topAnchor];
    v324 = [v326 constraintEqualToAnchor:v325];
    v383[4] = v324;
    v323 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    v322 = [v323 fullBackdropLayoutGuide];
    v320 = [v322 leadingAnchor];
    v321 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    v319 = [v321 leadingAnchor];
    v318 = [v320 constraintEqualToAnchor:v319];
    v383[5] = v318;
    v317 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    v315 = [v317 bottomAnchor];
    v316 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    v314 = [v316 fullBackdropLayoutGuide];
    v313 = [v314 bottomAnchor];
    v312 = [v315 constraintEqualToAnchor:v313];
    v383[6] = v312;
    v311 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    v309 = [v311 trailingAnchor];
    v310 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    v308 = [v310 fullBackdropLayoutGuide];
    v307 = [v308 trailingAnchor];
    v306 = [v309 constraintEqualToAnchor:v307];
    v383[7] = v306;
    v305 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    v304 = [v305 assistantLayoutGuide];
    v201 = [v304 topAnchor];
    v202 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
    v203 = [v202 topAnchor];
    v204 = [v201 constraintEqualToAnchor:v203];
    v383[8] = v204;
    v205 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
    v206 = [v205 assistantLayoutGuide];
    v207 = [v206 heightAnchor];
    v208 = [v207 constraintEqualToConstant:v183];
    v383[9] = v208;
    v209 = [MEMORY[0x1E695DEC8] arrayWithObjects:v383 count:10];
    [v328 activateConstraints:v209];

    v15 = v366;
    v7 = v368;
    v171 = v376;
    v116 = v357;
    v110 = v361;
  }

  v210 = [(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations];
  if (!v210)
  {
    v211 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    [v211 setInputViewsHidden:1];
  }

  [(UIKeyboardFloatingTransitionController *)self constrainAccessoryViewToBottom];
  [UIKeyboardImpl setFloating:[(UIKeyboardFloatingTransitionController *)self startedFromFloating]^ 1 positionedAtDefaultOffsetAnimated:0];
  v212 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  v213 = [v212 inputViewSet];
  v214 = [v213 keyboard];
  if (v214)
  {
    v215 = v214;
    v216 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v217 = [v216 inputViewSet];
    v218 = [v217 isCustomInputView];

    v171 = v376;
    if (!v218)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v219 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  v220 = [v219 inputViewSet];
  v221 = [v220 inputView];
  [v221 setAlpha:0.0];

  v222 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  [v222 updateViewSizingConstraints];

LABEL_46:
  [MEMORY[0x1E6979518] flush];
  [(UIKeyboardFloatingTransitionController *)self captureStateForStart:0];
  v223 = [(UIKeyboardFloatingTransitionController *)self endState];
  v224 = [v223 inputView];
  _UIViewSetAnchorPointToTouchPoint(v224, v135, v369);

  if (!v210)
  {
    if ([v7 state] != 4)
    {
      [v15 setAlpha:0.0];
    }

    v225 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    [v225 setInputViewsHidden:0];
  }

  v226 = [(UIKeyboardFloatingTransitionController *)self startState];
  [v226 setScale:{1.0, 1.0}];

  v227 = [(UIKeyboardFloatingTransitionController *)self endState];
  [v227 platterViewFrame];
  v229 = v228;
  v230 = [(UIKeyboardFloatingTransitionController *)self startState];
  [v230 platterViewFrame];
  v232 = v229 / v231;
  v233 = [(UIKeyboardFloatingTransitionController *)self endState];
  [v233 platterViewFrame];
  v235 = v234;
  v236 = [(UIKeyboardFloatingTransitionController *)self startState];
  [v236 platterViewFrame];
  v238 = v235 / v237;
  v239 = [(UIKeyboardFloatingTransitionController *)self endState];
  [v239 setScale:{v232, v238}];

  v240 = [(UIKeyboardFloatingTransitionController *)self startState];
  v375 = *(MEMORY[0x1E695EFD0] + 16);
  *&v382.a = *MEMORY[0x1E695EFD0];
  v377 = *&v382.a;
  *&v382.c = v375;
  *&v382.tx = *(MEMORY[0x1E695EFD0] + 32);
  v371 = *&v382.tx;
  [v240 setInitialInputViewTransform:&v382];

  v241 = [(UIKeyboardFloatingTransitionController *)self startState];
  v242 = [v241 inputView];
  v243 = [(UIKeyboardFloatingTransitionController *)self endState];
  [v243 inputViewFrame];
  v245 = v244;
  v247 = v246;
  v249 = v248;
  v251 = v250;
  v252 = v242;
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
  v265 = [(UIKeyboardFloatingTransitionController *)self startState];
  v382 = v380;
  [v265 setFinalInputViewTransform:&v382];

  v266 = [(UIKeyboardFloatingTransitionController *)self endState];
  v267 = [v266 inputView];
  v268 = [(UIKeyboardFloatingTransitionController *)self startState];
  [v268 inputViewFrame];
  v270 = v269;
  v272 = v271;
  v274 = v273;
  v276 = v275;
  v277 = v267;
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
  v290 = [(UIKeyboardFloatingTransitionController *)self endState];
  v382 = v379;
  [v290 setInitialInputViewTransform:&v382];

  v291 = [(UIKeyboardFloatingTransitionController *)self endState];
  *&v382.a = v377;
  *&v382.c = v375;
  *&v382.tx = v371;
  [v291 setFinalInputViewTransform:&v382];

  v292 = [(UIKeyboardFloatingTransitionController *)self endState];
  v293 = [v292 inputView];
  [v293 setAlpha:0.0];

  v294 = [(UIKeyboardFloatingTransitionController *)self endState];
  v295 = v294;
  if (v294)
  {
    [v294 initialInputViewTransform];
  }

  else
  {
    memset(&v378, 0, sizeof(v378));
  }

  v296 = [(UIKeyboardFloatingTransitionController *)self endState];
  v297 = [v296 inputView];
  v382 = v378;
  [v297 setTransform:&v382];

  v298 = [(UIKeyboardFloatingTransitionController *)self endState];
  v299 = [v298 inputView];
  [v171 addSubview:v299];

  v300 = objc_alloc_init(UIViewSpringAnimationBehavior);
  [(UIKeyboardFloatingTransitionController *)self setAnimationBehavior:v300];

  v301 = [(UIKeyboardFloatingTransitionController *)self animationBehavior];
  [v301 setDampingRatio:0.9 response:0.2];

  v302 = [(UIKeyboardFloatingTransitionController *)self animationBehavior];
  [v302 setTrackingDampingRatio:1.0 response:0.12 dampingRatioSmoothing:0.08 responseSmoothing:0.08];

  v303 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [v303 center];
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
  v3 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [v3 frame];
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

  v20 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  v21 = [v20 view];
  v22 = [v21 superview];

  v23 = off_1E70EA000;
  if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating]&& ([(UIKeyboardFloatingTransitionController *)self progress], v24 < 0.5) || ![(UIKeyboardFloatingTransitionController *)self startedFromFloating]&& ([(UIKeyboardFloatingTransitionController *)self progress], v25 >= 0.5))
  {
    v26 = v5 + v17;
    v29 = v7 + v15;
    v30 = v11 - (v15 + v19);
    v31 = [objc_opt_self() mainScreen];
    [v31 bounds];
    v33 = v32;

    v27 = v33 - (v29 + v30);
    v28 = 1;
    if (+[UIKeyboardImpl isFloating])
    {
      goto LABEL_24;
    }

LABEL_11:
    [UIKeyboardImpl setFloating:v28];
    v34 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v35 = [v34 inputViewSet];
    v36 = [v35 keyboard];
    if (v36)
    {
      v37 = v36;
      v38 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
      v39 = [v38 inputViewSet];
      v40 = [v39 isCustomInputView];

      if (!v40)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v41 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    [v41 updateViewSizingConstraints];

LABEL_16:
    if (v28)
    {
      LODWORD(v28) = 1;
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
    v28 = 0;
    goto LABEL_11;
  }

LABEL_19:
  v42 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  v28 = [v42 inputViewSet];

  v43 = [v28 assistantViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v45 = [v28 assistantViewController];
    if ([v45 shouldBeShownForInputDelegate:0 inputViews:v28])
    {
      v46 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v47 = [v46 responder];

      [v45 setInputAssistantButtonItemsForResponder:v47];
    }
  }

  LODWORD(v28) = 0;
LABEL_24:
  v48 = +[UIPeripheralHost sharedInstance];
  [v48 setUndockedWithOffset:0 animated:{v26, v27}];

  if ([(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations]|| self->_initWithStateBasedAnimations)
  {
    v49 = v28 == 0;
    if (v28)
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

    v52 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v53 = [v52 hostForAnimatedElements];
    [v53 finishedTransitionToState:v50 animationType:v51 interactiveTransition:1];
  }

  v54 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  v55 = [v54 view];
  [v55 setAlpha:1.0];

  v56 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [v56 removeFromSuperview];

  v57 = [(UIKeyboardFloatingTransitionController *)self startState];
  v58 = [v57 inputView];
  [v58 removeFromSuperview];

  v59 = [(UIKeyboardFloatingTransitionController *)self endState];
  v60 = [v59 inputView];
  [v60 removeFromSuperview];

  [(UIKeyboardFloatingTransitionController *)self setPlatterView:0];
  [(UIKeyboardFloatingTransitionController *)self setStartState:0];
  [(UIKeyboardFloatingTransitionController *)self setEndState:0];
  [(UIKeyboardFloatingTransitionController *)self setIsTransitioning:0];
  [(UIKeyboardFloatingTransitionController *)self updateLayoutGuideForTransitionStart:0];
  [(UIKeyboardFloatingTransitionController *)self updateLayoutGuideFromFrame:v5, v7, v9, v11];
  [(UIKeyboardFloatingTransitionController *)self restoreAccessoryViewConstraints];
  v61 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  v62 = [v61 inputViewSet];
  v63 = [v62 keyboard];
  if (!v63)
  {

    goto LABEL_39;
  }

  v64 = v63;
  v65 = v23;
  v66 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  v67 = [v66 inputViewSet];
  v68 = [v67 isCustomInputView];

  if (v68)
  {
LABEL_39:
    v70 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v71 = [v70 inputViewSet];
    v73 = [v71 inputView];
    [v73 setAlpha:1.0];

    goto LABEL_40;
  }

  v69 = [(__objc2_class *)v65[11] activeInstance];
  v70 = [v69 keyplaneView];

  v71 = [v70 keyplane];
  if (([v71 visualStyling] & 0xFF0000) == 0x260000)
  {
LABEL_40:

    goto LABEL_41;
  }

  v72 = [(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations];

  if (!v72)
  {
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __60__UIKeyboardFloatingTransitionController_finalizeTransition__block_invoke;
    v84[3] = &unk_1E70F3590;
    v85 = v70;
    [UIView performWithoutAnimation:v84];
  }

LABEL_41:

  v74 = [(UIKeyboardFloatingTransitionController *)self delegate];
  [v74 didEndTransitionWithController:self];

  v75 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v76 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  v77 = [v76 inputViewSet];
  v78 = +[UIInputViewAnimationStyle animationStyleDefault];
  [v75 prepareToMoveKeyboardForInputViewSet:v77 animationStyle:v78];

  v79 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v80 = [v79 containerRootController];

  v81 = [v80 inputViewSet];
  LODWORD(v77) = [v81 isInputViewPlaceholder];

  if (v77)
  {
    v82 = [v80 inputViewSet];
    v83 = [v82 inputView];
    [v83 refreshPlaceholder];
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

- (void)updateAnimationAtScale:(double)a3
{
  v202[1] = *MEMORY[0x1E69E9840];
  v4 = a3 + -1.0;
  v5 = [(UIKeyboardFloatingTransitionController *)self endState];
  [v5 scale];
  v7 = v4 / (v6 + -1.0);

  LODWORD(v5) = [(UIKeyboardFloatingTransitionController *)self startedFromFloating];
  v8 = [(UIKeyboardFloatingTransitionController *)self startedFromFloating];
  v9 = -0.1;
  if (v5)
  {
    v9 = 0.0;
  }

  v10 = 1.1;
  if (!v8)
  {
    v10 = 1.0;
  }

  v11 = fmax(v9, fmin(v7, v10));
  [(UIKeyboardFloatingTransitionController *)self progress];
  if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
  {
    v12 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [v12 center];
    v14 = v13;
    v16 = v15;

    v17 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [v17 bounds];
    v18 = v16 + CGRectGetHeight(v203) * 0.5;

    LODWORD(v17) = [(UIKeyboardFloatingTransitionController *)self withinDockingRegion];
    [(UIKeyboardFloatingTransitionController *)self setWithinDockingRegion:[UIKeyboardFloatingTransitionController isPointWithinDockingRegion:v14, v18]];
    if (v17 == [(UIKeyboardFloatingTransitionController *)self withinDockingRegion])
    {
      if ([(UIKeyboardFloatingTransitionController *)self expandedForDocking])
      {
        return;
      }
    }

    else
    {
      v19 = [(UIKeyboardFloatingTransitionController *)self withinDockingRegion];
      if (v19)
      {
        if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
        {
          v20 = 0.66;
        }

        else
        {
          v20 = 0.34;
        }

        v21 = [(UIKeyboardFloatingTransitionController *)self startedFromFloating];
        v22 = fmax(v20, v11);
        v23 = fmin(v20, v11);
        if (v21)
        {
          v11 = v22;
        }

        else
        {
          v11 = v23;
        }
      }

      [(UIKeyboardFloatingTransitionController *)self setExpandedForDocking:v19];
    }
  }

  [(UIKeyboardFloatingTransitionController *)self setProgress:v11];
  v24 = [(UIKeyboardFloatingTransitionController *)self startState];
  [v24 scale];
  v26 = v25;
  v27 = [(UIKeyboardFloatingTransitionController *)self endState];
  [v27 scale];
  v29 = v28;
  [(UIKeyboardFloatingTransitionController *)self progress];
  v31 = v29 * v30 + v26 * (1.0 - v30);

  v32 = [(UIKeyboardFloatingTransitionController *)self startState];
  [v32 scale];
  v34 = v33;
  v35 = [(UIKeyboardFloatingTransitionController *)self endState];
  [v35 scale];
  v37 = v36;
  [(UIKeyboardFloatingTransitionController *)self progress];
  v39 = v37 * v38 + v34 * (1.0 - v38);

  v40 = [(UIKeyboardFloatingTransitionController *)self startState];
  [v40 platterViewFrame];
  v42 = v31 * v41;

  v43 = [(UIKeyboardFloatingTransitionController *)self startState];
  [v43 platterViewFrame];
  v45 = v39 * v44;

  v46 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [v46 setBounds:{0.0, 0.0, v42, v45}];

  LODWORD(v35) = [(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations];
  v47 = [(UIKeyboardFloatingTransitionController *)self startedFromFloating];
  v48 = [(UIKeyboardFloatingTransitionController *)self startedFromFloating];
  if (v35)
  {
    if (v47)
    {
      v49 = 8;
    }

    else
    {
      v49 = 7;
    }

    if (!v48)
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
      v63 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
      v64 = [v63 _window];
      [v64 bounds];
      v51 = v65;
    }

    if ([(UIKeyboardFloatingTransitionController *)self startedFromFloating])
    {
      v66 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
      v67 = [v66 _window];
      [v67 bounds];
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
    v77 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v78 = [v77 _window];
    [v78 bounds];
    v80 = fmax(fmin(v76, v79 - v74), 0.0);

    v81 = [(UIKeyboardFloatingTransitionController *)self startState];
    [v81 platterViewFrame];
    v83 = v82 * 0.5;

    v84 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v85 = [v84 _window];
    [v85 bounds];
    v87 = v86;
    [(UIKeyboardFloatingTransitionController *)self lastGestureCenter];
    v89 = v87 - ceil(v83 + v88);

    v90 = [(UIKeyboardFloatingTransitionController *)self expandedForDocking];
    if (v89 < 0.0 || v90)
    {
      v92 = 0.0;
    }

    else
    {
      v92 = v89;
    }

    v93 = [MEMORY[0x1E696B098] valueWithUIOffset:{v80, v92}];
    v201 = @"Offset";
    v202[0] = v93;
    v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v202 forKeys:&v201 count:1];
    v95 = +[UIKeyboardSceneDelegate automaticKeyboardArbiterClient];
    v193[0] = MEMORY[0x1E69E9820];
    v193[1] = 3221225472;
    v193[2] = __65__UIKeyboardFloatingTransitionController_updateAnimationAtScale___block_invoke;
    v193[3] = &unk_1E7116848;
    v194 = v94;
    v96 = v94;
    [v95 performOnDistributedControllers:v193];

    v97 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v98 = [v97 hostForAnimatedElements];
    [v98 transitioningToState:3 animationType:v49 completionPercentage:v11];

    goto LABEL_83;
  }

  if (v47)
  {
    v52 = 1.0;
  }

  else
  {
    v52 = 0.0;
  }

  if (v48)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = 1.0;
  }

  [(UIKeyboardFloatingTransitionController *)self progress];
  v55 = v53 * v54 + v52 * (1.0 - v54);
  v56 = [(UIKeyboardFloatingTransitionController *)self platterPopoverBackgroundView];
  [v56 setAlpha:v55];

  v57 = [(UIKeyboardFloatingTransitionController *)self startedFromFloating];
  v58 = MEMORY[0x1E695F060];
  if (v57)
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
  v104 = [(UIKeyboardFloatingTransitionController *)self platterView];
  v105 = [v104 layer];
  [v105 setShadowOffset:{v102, v103}];

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
  v112 = [(UIKeyboardFloatingTransitionController *)self platterView];
  v113 = [v112 layer];
  *&v114 = v111;
  [v113 setShadowOpacity:v114];

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
  v121 = [(UIKeyboardFloatingTransitionController *)self platterView];
  v122 = [v121 layer];
  [v122 setShadowRadius:v120];

  v123 = [(UIKeyboardFloatingTransitionController *)self startState];
  [v123 cornerRadius];
  v125 = v124;
  v126 = [(UIKeyboardFloatingTransitionController *)self endState];
  [v126 cornerRadius];
  v128 = v127;
  [(UIKeyboardFloatingTransitionController *)self progress];
  v130 = v128 * v129 + v125 * (1.0 - v129);
  v131 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  v132 = [v131 layer];
  [v132 setCornerRadius:v130];

  v133 = [(UIKeyboardFloatingTransitionController *)self startState];
  v134 = [v133 borderColor];
  v135 = [(UIKeyboardFloatingTransitionController *)self endState];
  v136 = [v135 borderColor];
  [(UIKeyboardFloatingTransitionController *)self progress];
  v138 = v137;
  v190.f64[0] = 0.0;
  v187.f64[0] = 0.0;
  v199 = 0.0;
  v200 = 0.0;
  v139 = v136;
  [v134 getRed:&v190 green:&v187 blue:&v200 alpha:&v199];
  v197 = 0.0;
  v198 = 0.0;
  v195 = 0.0;
  v196 = 0.0;
  [v139 getRed:&v198 green:&v197 blue:&v196 alpha:&v195];

  v93 = [UIColor colorWithRed:(1.0 - v138) * v190.f64[0] + v138 * v198 green:(1.0 - v138) * v187.f64[0] + v138 * v197 blue:(1.0 - v138) * v200 + v138 * v196 alpha:(1.0 - v138) * v199 + v138 * v195];

  v140 = [v93 CGColor];
  v141 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  v142 = [v141 layer];
  [v142 setBorderColor:v140];

  v143 = [(UIKeyboardFloatingTransitionController *)self startState];
  [v143 borderWidth];
  v144 = [(UIKeyboardFloatingTransitionController *)self endState];
  [v144 borderWidth];
  [(UIKeyboardFloatingTransitionController *)self progress];
  v145 = [(UIKeyboardFloatingTransitionController *)self platterVisualEffectView];
  v146 = v145;
  if (!v145)
  {
    v146 = [(UIKeyboardFloatingTransitionController *)self lightEffectsTransitionBackdrop];
  }

  UIRoundToViewScale(v146);
  v148 = v147;
  v149 = [(UIKeyboardFloatingTransitionController *)self platterCornerRadiusView];
  v150 = [v149 layer];
  [v150 setBorderWidth:v148];

  if (!v145)
  {
  }

  v151 = [(UIKeyboardFloatingTransitionController *)self startState];
  v152 = v151;
  if (v151)
  {
    [v151 initialInputViewTransform];
  }

  else
  {
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
  }

  v153 = [(UIKeyboardFloatingTransitionController *)self startState];
  v154 = v153;
  if (v153)
  {
    [v153 finalInputViewTransform];
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
  v156 = [(UIKeyboardFloatingTransitionController *)self startState];
  v157 = [v156 inputView];
  v190 = v182;
  v191 = v180;
  v192 = v178;
  [v157 setTransform:&v190];

  v158 = [(UIKeyboardFloatingTransitionController *)self endState];
  v159 = v158;
  if (v158)
  {
    [v158 initialInputViewTransform];
  }

  else
  {
    v191 = 0u;
    v192 = 0u;
    v190 = 0u;
  }

  v160 = [(UIKeyboardFloatingTransitionController *)self endState];
  v161 = v160;
  if (v160)
  {
    [v160 finalInputViewTransform];
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
  v163 = [(UIKeyboardFloatingTransitionController *)self endState];
  v164 = [v163 inputView];
  v190 = v183;
  v191 = v181;
  v192 = v179;
  [v164 setTransform:&v190];

  v165 = [(UIKeyboardFloatingTransitionController *)self startState];
  if (!v165)
  {
    goto LABEL_82;
  }

  v166 = v165;
  v167 = [(UIKeyboardFloatingTransitionController *)self endState];

  if (!v167)
  {
    goto LABEL_82;
  }

  v168 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
  if ([v168 state] != 1)
  {
    v169 = [(UIKeyboardFloatingTransitionController *)self pinchGestureRecognizer];
    if ([v169 state] != 2)
    {
      v170 = [(UIKeyboardFloatingTransitionController *)self panGestureRecognizer];
      if ([v170 state] != 1)
      {
        v174 = [(UIKeyboardFloatingTransitionController *)self panGestureRecognizer];
        v175 = [v174 state];

        if (v175 != 2)
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
  v96 = [(UIKeyboardFloatingTransitionController *)self platterView];
  [v96 frame];
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

- (void)updateLayoutGuideForTransitionStart:(BOOL)a3
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__UIKeyboardFloatingTransitionController_updateLayoutGuideForTransitionStart___block_invoke;
  v6[3] = &unk_1E7117988;
  v7 = a3;
  v6[4] = self;
  [UIWindow _enumerateWindowsIncludingInternalWindows:1 onlyVisibleWindows:1 allowMutation:0 withBlock:v6];
  if (!a3)
  {
    v5 = [(UIKeyboardFloatingTransitionController *)self activeKeyboardLayoutGuideTransitionAssertions];
    [v5 removeAllObjects];
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

- (void)updateLayoutGuideFromFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(*MEMORY[0x1E695F058], a3))
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
    v4 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v5 = self->_activeKeyboardLayoutGuideTransitionAssertions;
    self->_activeKeyboardLayoutGuideTransitionAssertions = v4;

    activeKeyboardLayoutGuideTransitionAssertions = self->_activeKeyboardLayoutGuideTransitionAssertions;
  }

  return activeKeyboardLayoutGuideTransitionAssertions;
}

- (void)setKeyboardLayoutGuideInTransition:(BOOL)a3 forWindow:(id)a4
{
  v4 = a3;
  v10 = a4;
  v6 = [(UIKeyboardFloatingTransitionController *)self activeKeyboardLayoutGuideTransitionAssertions];
  v7 = [v6 objectForKey:v10];

  if (v4)
  {
    if (v7)
    {
      goto LABEL_8;
    }

    v8 = [v10 _obtainKeyboardLayoutGuideTransitionAssertionForReason:@"Floating keyboard transition"];
    if (v8)
    {
      v9 = [(UIKeyboardFloatingTransitionController *)self activeKeyboardLayoutGuideTransitionAssertions];
      [v9 setObject:v8 forKey:v10];
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_8;
    }

    [v7 _invalidate];
    v8 = [(UIKeyboardFloatingTransitionController *)self activeKeyboardLayoutGuideTransitionAssertions];
    [v8 removeObjectForKey:v10];
  }

LABEL_8:
}

- (void)inputViewSnapshot:(id *)a3 withPlatterInsets:(UIEdgeInsets *)a4
{
  v7 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  v8 = [v7 inputViewSet];
  v9 = [v8 keyboard];
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = v9;
  v11 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  v12 = [v11 inputViewSet];
  if ([v12 isCustomInputView])
  {

LABEL_4:
LABEL_5:
    v13 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v14 = [v13 inputViewSet];
    v15 = [v14 inputView];

    *a3 = [v15 snapshotViewAfterScreenUpdates:0];
    goto LABEL_6;
  }

  v55 = +[UIKeyboardImpl activeInstance];
  v56 = [v55 isUsingDictationLayout];

  if (v56)
  {
    goto LABEL_5;
  }

  v57 = +[UIKeyboardImpl activeInstance];
  v58 = [v57 keyplaneView];

  v59 = [v58 keyplane];
  if (([v59 visualStyling] & 0xFF0000) == 0x260000)
  {
  }

  else
  {
    v60 = [(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations];

    if (!v60)
    {
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __78__UIKeyboardFloatingTransitionController_inputViewSnapshot_withPlatterInsets___block_invoke;
      v68[3] = &unk_1E70F3590;
      v69 = v58;
      [UIView performWithoutAnimation:v68];
    }
  }

  *a3 = [UIKeyboardFloatingTransitionController snapshotOfKeyplaneView:v58];
  v61 = v58;
  if (!v61 || (v15 = v61, [(UIKeyboardFloatingTransitionController *)self useStateBasedAnimations]))
  {
    v62 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v63 = [v62 inputViewSet];
    v15 = [v63 inputView];
  }

LABEL_6:
  v16 = [v15 window];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v19 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v18 = [v19 _window];
  }

  [v15 bounds];
  [v18 convertRect:v15 fromView:?];
  [*a3 setFrame:?];
  [*a3 setUserInteractionEnabled:0];
  v20 = *a3;
  v21 = [v18 screen];
  [v21 scale];
  [v20 setContentScaleFactor:?];

  v22 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
  v23 = [v22 hosting];
  v24 = [v23 itemForPurpose:0];
  v25 = [v24 hostView];

  [v25 frame];
  v27 = v26;
  rect = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  [v15 bounds];
  [v25 convertRect:v15 fromView:?];
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
    v52 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v53 = [v52 inputViewSet];
    v54 = [v53 inputAccessoryView];

    [v54 frame];
    v46 = rect_8 - CGRectGetHeight(v76);

    v48 = rect_16;
    v50 = rect_24;
  }

  a4->top = v46;
  a4->left = v48;
  a4->bottom = v50;
  a4->right = v44;
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

- (void)captureStateForStart:(BOOL)a3
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
    v24 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v25 = [v24 hosting];
    v26 = [v25 itemForPurpose:0];
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

    v36 = [(UIKeyboardFloatingTransitionController *)self inputWindowController];
    v37 = [v36 hostForAnimatedElements];
    [v37 sizeForVisualState:v35];
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

  v48 = [(UIKeyboardFloatingTransitionController *)self startState];
  v49 = v48;
  v51 = v73;
  v50 = v74;
  v53 = v71;
  v52 = v72;
  if (!a3)
  {
    [v48 platterViewFrame];
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;

    v62 = v46 - v59;
    v63 = v47 - v61;
    v64 = [(UIKeyboardFloatingTransitionController *)self platterView];
    [v64 anchorPoint];
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
    v49 = [(UIKeyboardFloatingTransitionController *)self endState];
  }

  [v49 setInputView:v5];
  [v49 setInputViewFrame:{v50, v51, v52, v53}];
  [v49 setPlatterViewFrame:{v44, v45, v46, v47}];
  [v49 setPlatterInsets:{v78, v79}];
  [v49 setCornerRadius:v75];
  [v49 setBorderWidth:v76];
  [v49 setBorderColor:v6];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if (+[UIKeyboardImpl isSplit])
  {
    goto LABEL_2;
  }

  if (+[UIKeyboardImpl isFloating](UIKeyboardImpl, "isFloating") && !+[UIKeyboardImpl isFloatingForced])
  {
    [v4 scale];
    v6 = v8 >= 1.0;
  }

  else if (+[UIKeyboardImpl isFloating])
  {
    v6 = 0;
  }

  else
  {
    [v4 scale];
    v6 = v7 < 1.0;
  }

  v9 = +[UIKeyboardImpl activeInstance];
  v10 = [v9 usesCandidateSelection];

  if (v10)
  {
    v11 = +[UIKeyboardImpl activeInstance];
    v12 = [v11 candidateList];
    v13 = v6 & ([v12 isExtendedList] ^ 1);

    if (v13)
    {
      goto LABEL_13;
    }
  }

  else if (v6)
  {
LABEL_13:
    v14 = [(UIKeyboardFloatingTransitionController *)self delegate];
    v5 = [v14 shouldBeginTransitionForController:self];

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