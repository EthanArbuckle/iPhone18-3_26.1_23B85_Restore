@interface UIViewControllerBuiltinTransitionViewAnimator
- (CGPoint)_adjustOrigin:(CGPoint)result givenOtherOrigin:(CGPoint)a4 forTransition:(int)a5;
- (CGPoint)transitionView:(id)a3 beginOriginForToView:(id)a4 forTransition:(int)a5 defaultOrigin:(CGPoint)a6;
- (CGPoint)transitionView:(id)a3 endOriginForFromView:(id)a4 forTransition:(int)a5 defaultOrigin:(CGPoint)a6;
- (CGPoint)transitionView:(id)a3 endOriginForToView:(id)a4 forTransition:(int)a5 defaultOrigin:(CGPoint)a6;
- (UIView)fromView;
- (UIView)toView;
- (UIViewControllerBuiltinTransitionViewAnimator)initWithTransition:(int)a3;
- (double)durationForTransition:(int)a3;
- (id)delegate;
- (void)_animationWillEnd:(id)a3 didComplete:(BOOL)a4;
- (void)_prepareKeyboardForTransition:(int)a3 fromView:(id)a4;
- (void)animateTransition:(id)a3;
- (void)transitionView:(id)a3 startCustomTransitionWithDuration:(double)a4;
- (void)transitionViewDidComplete:(id)a3 fromView:(id)a4 toView:(id)a5 removeFromView:(BOOL)a6;
- (void)transitionViewDidStart:(id)a3;
@end

@implementation UIViewControllerBuiltinTransitionViewAnimator

- (UIViewControllerBuiltinTransitionViewAnimator)initWithTransition:(int)a3
{
  v8.receiver = self;
  v8.super_class = UIViewControllerBuiltinTransitionViewAnimator;
  v4 = [(UIViewControllerBuiltinTransitionViewAnimator *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_transition = a3;
    v6 = v4;
  }

  return v5;
}

- (void)animateTransition:(id)a3
{
  v6 = a3;
  if (_UIAppUseModernRotationAndPresentationBehaviors())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [v7 _toView];
      objc_storeWeak(&self->_toView, v8);

      v9 = [v7 _fromView];
      objc_storeWeak(&self->_fromView, v9);
LABEL_6:

      goto LABEL_7;
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_toView);
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v7 = 0;
    goto LABEL_6;
  }

  v7 = objc_loadWeakRetained(&self->_fromView);

  if (!v7)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"UIViewControllerBuiltinTransitionViewAnimator.m" lineNumber:74 description:@"toView or fromView should be set in order for UIViewControllerBuiltinTransitionViewAnimator to work."];
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:
  objc_storeStrong(&self->_transitionContext, a3);
  v11 = [v6 containerView];
  v12 = objc_opt_class();
  v13 = objc_opt_class();

  if (v12 != v13)
  {
    v84 = [MEMORY[0x1E696AAA8] currentHandler];
    [v84 handleFailureInMethod:a2 object:self file:@"UIViewControllerBuiltinTransitionViewAnimator.m" lineNumber:77 description:@"UIViewControllerBuiltinTransitionViewAnimator can only operate on a container view of type UITransitionView."];
  }

  v14 = [v6 containerView];
  [v14 setDelegate:self];
  if (_UIAppUseModernRotationAndPresentationBehaviors())
  {
    v15 = [(UIViewControllerContextTransitioning *)self->_transitionContext viewControllerForKey:@"UITransitionContextToViewController"];
    v16 = v15;
    transition = self->_transition;
    if (transition == 17 || transition == 13)
    {
      v18 = [v15 view];
      [v18 layoutIfNeeded];
    }

    [v14 setIgnoresInteractionEvents:0];
    [v14 setShouldNotifyDidCompleteImmediately:1];
    [(UIViewControllerContextTransitioning *)self->_transitionContext finalFrameForViewController:v16];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    if (objc_opt_respondsToSelector())
    {
      memset(&v98, 0, 48);
      transitionContext = self->_transitionContext;
      if (transitionContext)
      {
        [(UIViewControllerContextTransitioning *)transitionContext finalTransformForViewController:v16];
      }

      v108 = *&v98.m11;
      v109 = *&v98.m13;
      v110 = *&v98.m21;
      v28 = objc_loadWeakRetained(&self->_toView);
      *&v96.m11 = v108;
      *&v96.m13 = v109;
      *&v96.m21 = v110;
      [v28 setTransform:&v96];
    }

    v29 = objc_loadWeakRetained(&self->_toView);
    [v29 _setFrameIgnoringLayerTransform:{v20, v22, v24, v26}];

    v30 = self->_transition;
    if ((v30 - 10) < 2)
    {
      v31 = objc_loadWeakRetained(&self->_fromView);
      v32 = [v31 layer];
      v33 = [v32 isDoubleSided];

      v34 = objc_loadWeakRetained(&self->_toView);
      v35 = [v34 layer];
      v36 = [v35 isDoubleSided];

      memset(&v98, 0, sizeof(v98));
      v37 = objc_loadWeakRetained(&self->_toView);
      v38 = [v37 layer];
      v39 = v38;
      if (v38)
      {
        [v38 transform];
      }

      else
      {
        memset(&v98, 0, sizeof(v98));
      }

      v49 = objc_alloc_init(_UIFlippingView);
      [v14 frame];
      [(UIView *)v49 setFrame:?];
      [(UIView *)v49 setAutoresizingMask:18];
      v50 = objc_loadWeakRetained(&self->_toView);
      v51 = [v50 layer];
      [v51 setDoubleSided:0];

      v96 = v98;
      v52 = 1.0;
      CATransform3DRotate(&v97, &v96, 3.14159265, 0.0, 1.0, 0.0);
      v53 = objc_loadWeakRetained(&self->_toView);
      v54 = [v53 layer];
      v96 = v97;
      [v54 setTransform:&v96];

      v55 = objc_loadWeakRetained(&self->_fromView);
      v56 = [v55 layer];
      [v56 setDoubleSided:0];

      [v14 addSubview:v49];
      v57 = objc_loadWeakRetained(&self->_toView);
      [(UIView *)v49 addSubview:v57];

      v58 = objc_loadWeakRetained(&self->_fromView);
      [(UIView *)v49 addSubview:v58];

      v59 = [v14 layer];
      v60 = *(MEMORY[0x1E69792E8] + 48);
      *&v96.m21 = *(MEMORY[0x1E69792E8] + 32);
      *&v96.m23 = v60;
      *&v96.m31 = *(MEMORY[0x1E69792E8] + 64);
      v61 = *(MEMORY[0x1E69792E8] + 80);
      v62 = *(MEMORY[0x1E69792E8] + 16);
      *&v96.m11 = *MEMORY[0x1E69792E8];
      *&v96.m13 = v62;
      v96.m33 = v61;
      v96.m34 = 0.000833333333;
      v63 = *(MEMORY[0x1E69792E8] + 112);
      *&v96.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&v96.m43 = v63;
      [v59 setSublayerTransform:&v96];

      v64 = self->_transition;
      v65 = [(UIView *)v49 layer];
      v66 = v65;
      if (v64 == 10)
      {
        v67 = 1.0;
      }

      else
      {
        v67 = -1.0;
      }

      if (v64 == 10)
      {
        v52 = 0.0;
      }

      [v65 position];
      v69 = v68;
      [v66 bounds];
      v71 = v70;
      [v66 anchorPoint];
      v73 = v69 + v71 * (v52 - v72);
      [v66 position];
      v75 = v74;
      [v66 bounds];
      v77 = v76;
      [v66 anchorPoint];
      [v66 setPosition:{v73, v75 + v77 * (0.5 - v78)}];
      [v66 setAnchorPoint:{v52, 0.5}];

      if ([v6 isInteractive])
      {
        v79 = 196608;
      }

      else
      {
        v79 = 0;
      }

      if ([v7 _allowUserInteraction])
      {
        v79 |= 2uLL;
      }

      [(UIViewControllerBuiltinTransitionViewAnimator *)self transitionDuration:v6];
      v81 = v80;
      v92[0] = MEMORY[0x1E69E9820];
      v92[1] = 3221225472;
      v92[2] = __67__UIViewControllerBuiltinTransitionViewAnimator_animateTransition___block_invoke_5;
      v92[3] = &unk_1E70F6848;
      v93 = v49;
      v94 = 0x4072C00000000000;
      v95 = v67;
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 3221225472;
      v85[2] = __67__UIViewControllerBuiltinTransitionViewAnimator_animateTransition___block_invoke_7;
      v85[3] = &unk_1E7104598;
      v85[4] = self;
      v86 = v14;
      v87 = v93;
      v89 = v98;
      v90 = v36;
      v91 = v33;
      v88 = v6;
      v82 = v93;
      [UIView animateKeyframesWithDuration:v79 delay:v92 options:v85 animations:v81 completion:0.0];

      goto LABEL_45;
    }

    if (v30)
    {
      if ([v6 isInteractive])
      {
        [v14 setAnimationTimingCurve:3];
      }

      v46 = self->_transition;
      v47 = objc_loadWeakRetained(&self->_fromView);
      v48 = objc_loadWeakRetained(&self->_toView);
      [v14 transition:v46 fromView:v47 toView:v48 removeFromView:0];

      goto LABEL_45;
    }

    if (v7)
    {
      if ([v7 _isDeferred])
      {
LABEL_26:
        v96.m11 = 0.0;
        *&v96.m12 = &v96;
        *&v96.m13 = 0x2020000000;
        LOBYTE(v96.m14) = 0;
        v98.m11 = 0.0;
        *&v98.m12 = &v98;
        *&v98.m13 = 0x3032000000;
        *&v98.m14 = __Block_byref_object_copy__60;
        *&v98.m21 = __Block_byref_object_dispose__60;
        v98.m22 = 0.0;
        v104[0] = MEMORY[0x1E69E9820];
        v104[1] = 3221225472;
        v104[2] = __67__UIViewControllerBuiltinTransitionViewAnimator_animateTransition___block_invoke;
        v104[3] = &unk_1E70FEE78;
        v105 = v14;
        v106 = self;
        v107 = &v98;
        v101[0] = MEMORY[0x1E69E9820];
        v101[1] = 3221225472;
        v101[2] = __67__UIViewControllerBuiltinTransitionViewAnimator_animateTransition___block_invoke_3;
        v101[3] = &unk_1E7104548;
        v103 = &v96;
        v101[4] = self;
        v43 = v6;
        v102 = v43;
        [UIView animateWithDuration:0 delay:v104 options:v101 animations:0.0 completion:0.0];
        v44 = [*(*&v98.m12 + 40) _didEndCount];
        *(*&v96.m12 + 24) = v44 > 0;
        if (v44 <= 0)
        {
          v45 = UIApp;
          v99[0] = MEMORY[0x1E69E9820];
          v99[1] = 3221225472;
          v99[2] = __67__UIViewControllerBuiltinTransitionViewAnimator_animateTransition___block_invoke_4;
          v99[3] = &unk_1E70F35B8;
          v99[4] = self;
          v100 = v43;
          [v45 _performBlockAfterCATransactionCommits:v99];
        }

        _Block_object_dispose(&v98, 8);
        _Block_object_dispose(&v96, 8);
        goto LABEL_45;
      }
    }

    else if (+[UIViewController _shouldDeferTransitions])
    {
      goto LABEL_26;
    }

    v83 = objc_loadWeakRetained(&self->_toView);
    [v14 addSubview:v83];

    -[UIViewControllerContextTransitioning completeTransition:](self->_transitionContext, "completeTransition:", [v6 transitionWasCancelled] ^ 1);
LABEL_45:

    goto LABEL_46;
  }

  v40 = self->_transition;
  v41 = objc_loadWeakRetained(&self->_fromView);
  v42 = objc_loadWeakRetained(&self->_toView);
  [v14 transition:v40 fromView:v41 toView:v42 removeFromView:self->_removeFromView];

LABEL_46:
}

void __67__UIViewControllerBuiltinTransitionViewAnimator_animateTransition___block_invoke(uint64_t a1)
{
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __67__UIViewControllerBuiltinTransitionViewAnimator_animateTransition___block_invoke_2;
  v10 = &unk_1E70F35B8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11 = v2;
  v12 = v3;
  [UIView performWithoutAnimation:&v7];
  v4 = [UIView _currentViewAnimationState:v7];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __67__UIViewControllerBuiltinTransitionViewAnimator_animateTransition___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 32));
  [v1 addSubview:WeakRetained];
}

uint64_t __67__UIViewControllerBuiltinTransitionViewAnimator_animateTransition___block_invoke_3(uint64_t result)
{
  if (*(*(*(result + 48) + 8) + 24) == 1)
  {
    v2 = *(*(result + 32) + 8);
    v3 = [*(result + 40) transitionWasCancelled] ^ 1;

    return [v2 completeTransition:v3];
  }

  return result;
}

uint64_t __67__UIViewControllerBuiltinTransitionViewAnimator_animateTransition___block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) transitionWasCancelled] ^ 1;

  return [v1 completeTransition:v2];
}

void __67__UIViewControllerBuiltinTransitionViewAnimator_animateTransition___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) layer];
  [v2 position];
  v4 = v3;

  v5 = *(a1 + 40);
  if (v5 >= 0.0)
  {
    v6 = MEMORY[0x1E69E9820];
    v7 = 0.0;
    v8 = 1;
    do
    {
      v9 = v7 / v5;
      v11[0] = v6;
      v11[1] = 3221225472;
      v11[2] = __67__UIViewControllerBuiltinTransitionViewAnimator_animateTransition___block_invoke_6;
      v11[3] = &unk_1E7104570;
      v16 = v8 - 1;
      v13 = v5;
      v10 = 1.0 / v5;
      v12 = *(a1 + 32);
      v14 = *(a1 + 48);
      v15 = v4;
      [UIView addKeyframeWithRelativeStartTime:v11 relativeDuration:v9 animations:v10];

      v7 = v8;
      v5 = *(a1 + 40);
      ++v8;
    }

    while (v5 >= v7);
  }
}

void __67__UIViewControllerBuiltinTransitionViewAnimator_animateTransition___block_invoke_6(uint64_t a1)
{
  v2 = *(a1 + 64) / *(a1 + 40) * 3.14159265;
  [*(a1 + 32) bounds];
  v4 = (1.0 - cos(v2)) * (v3 * 0.5);
  memset(&v13, 0, sizeof(v13));
  CATransform3DMakeRotation(&v13, -(*(a1 + 48) * v2), 0.0, 1.0, 0.0);
  v12 = v13;
  v5 = [*(a1 + 32) layer];
  v11 = v12;
  [v5 setTransform:&v11];

  v6 = *(a1 + 56) + v4 * *(a1 + 48);
  v7 = [*(a1 + 32) layer];
  [v7 position];
  v9 = v8;
  v10 = [*(a1 + 32) layer];
  [v10 setPosition:{v6, v9}];
}

void __67__UIViewControllerBuiltinTransitionViewAnimator_animateTransition___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = objc_loadWeakRetained((*(a1 + 32) + 32));
  [*(a1 + 40) addSubview:v3];
  [WeakRetained removeFromSuperview];
  [*(a1 + 48) removeFromSuperview];
  v4 = [v3 layer];
  [v4 setTransform:v14];

  v5 = *(a1 + 192);
  v6 = [v3 layer];
  [v6 setDoubleSided:v5];

  v7 = [*(a1 + 40) layer];
  v8 = *(MEMORY[0x1E69792E8] + 80);
  v14[4] = *(MEMORY[0x1E69792E8] + 64);
  v14[5] = v8;
  v9 = *(MEMORY[0x1E69792E8] + 112);
  v14[6] = *(MEMORY[0x1E69792E8] + 96);
  v14[7] = v9;
  v10 = *(MEMORY[0x1E69792E8] + 16);
  v14[0] = *MEMORY[0x1E69792E8];
  v14[1] = v10;
  v11 = *(MEMORY[0x1E69792E8] + 48);
  v14[2] = *(MEMORY[0x1E69792E8] + 32);
  v14[3] = v11;
  [v7 setSublayerTransform:v14];

  v12 = *(a1 + 193);
  v13 = [WeakRetained layer];
  [v13 setDoubleSided:v12];

  [*(*(a1 + 32) + 8) completeTransition:{objc_msgSend(*(a1 + 56), "transitionWasCancelled") ^ 1}];
}

- (void)_animationWillEnd:(id)a3 didComplete:(BOOL)a4
{
  v4 = [a3 containerView];
  [v4 _completeRunningTransition];
}

- (void)_prepareKeyboardForTransition:(int)a3 fromView:(id)a4
{
  v4 = *&a3;
  v12 = a4;
  [objc_opt_class() durationForTransition:v4];
  v6 = v5;
  v7 = [v12 keyboardSceneDelegate];
  if ((UIKeyboardAutomaticIsOffScreen() & 1) == 0)
  {
    v8 = [v7 responder];
    v9 = [v12 _containsResponder:v8];

    if (v9)
    {
      [v7 _beginIgnoringReloadInputViews];
      [v7 setAutomaticAppearanceInternalEnabled:0];
      [v12 endEditing:1];
      [v7 setAutomaticAppearanceInternalEnabled:1];
      [v7 _endIgnoringReloadInputViews];
      v10 = [UIViewController _keyboardDirectionForTransition:v4];
      if ([v7 currentState] != 2)
      {
        [v7 forceOrderOutAutomaticToDirection:v10 withDuration:v6];
      }
    }
  }

  if (v4)
  {
    v11 = [UIInputViewAnimationStyleDirectional animationStyleAnimated:1 duration:[UIViewController _keyboardDirectionForTransition:v4] outDirection:v6];
    [v7 pushAnimationStyle:v11];
  }
}

- (double)durationForTransition:(int)a3
{
  v3 = *&a3;
  if (_UIAppUseModernRotationAndPresentationBehaviors())
  {

    [UITransitionView defaultDurationForTransition:v3];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained durationForTransition:v3];
    v8 = v7;

    return v8;
  }

  return result;
}

- (void)transitionViewDidStart:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (_UIAppUseModernRotationAndPresentationBehaviors())
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained performSelector:sel_transitionDidStart withObject:0 afterDelay:0.0];
    }
  }

  else
  {
    [WeakRetained transitionViewDidStart:v5];
  }
}

- (void)transitionView:(id)a3 startCustomTransitionWithDuration:(double)a4
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained transitionView:v7 startCustomTransitionWithDuration:a4];
  }
}

- (CGPoint)_adjustOrigin:(CGPoint)result givenOtherOrigin:(CGPoint)a4 forTransition:(int)a5
{
  if ((a5 - 1) >= 2)
  {
    if (((1 << a5) & 0x1C1388) == 0)
    {
      a4.x = result.x;
    }

    if (a5 <= 0x14)
    {
      result.x = a4.x;
    }

    a4.y = result.y;
  }

  y = a4.y;
  result.y = y;
  return result;
}

- (CGPoint)transitionView:(id)a3 endOriginForFromView:(id)a4 forTransition:(int)a5 defaultOrigin:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = *&a5;
  v11 = a3;
  v12 = a4;
  if (_UIAppUseModernRotationAndPresentationBehaviors())
  {
    [v12 frame];
    [(UIViewControllerBuiltinTransitionViewAnimator *)self _adjustOrigin:v8 givenOtherOrigin:x forTransition:y, v13, v14];
    v16 = v15;
    v18 = v17;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained transitionView:v11 endOriginForFromView:v12 forTransition:v8 defaultOrigin:{x, y}];
    v16 = v20;
    v18 = v21;
  }

  v22 = v16;
  v23 = v18;
  result.y = v23;
  result.x = v22;
  return result;
}

- (CGPoint)transitionView:(id)a3 beginOriginForToView:(id)a4 forTransition:(int)a5 defaultOrigin:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = *&a5;
  v11 = a3;
  v12 = a4;
  if (!_UIAppUseModernRotationAndPresentationBehaviors())
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained transitionView:v11 beginOriginForToView:v12 forTransition:v8 defaultOrigin:{x, y}];
    goto LABEL_9;
  }

  WeakRetained = [(UIViewControllerContextTransitioning *)self->_transitionContext viewControllerForKey:@"UITransitionContextToViewController"];
  [(UIViewControllerContextTransitioning *)self->_transitionContext finalFrameForViewController:WeakRetained];
  v16 = v14;
  v17 = v15;
  transition = self->_transition;
  v19 = transition > 0x14;
  v20 = (1 << transition) & 0x137E40;
  if (v19 || v20 == 0)
  {
    [(UIViewControllerBuiltinTransitionViewAnimator *)self _adjustOrigin:v8 givenOtherOrigin:x forTransition:y, v14, v15];
LABEL_9:
    v16 = v22;
    v17 = v23;
  }

  v24 = v16;
  v25 = v17;
  result.y = v25;
  result.x = v24;
  return result;
}

- (CGPoint)transitionView:(id)a3 endOriginForToView:(id)a4 forTransition:(int)a5 defaultOrigin:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = *&a5;
  v11 = a3;
  v12 = a4;
  if (_UIAppUseModernRotationAndPresentationBehaviors())
  {
    WeakRetained = [(UIViewControllerContextTransitioning *)self->_transitionContext viewControllerForKey:@"UITransitionContextToViewController"];
    [(UIViewControllerContextTransitioning *)self->_transitionContext finalFrameForViewController:WeakRetained];
    if (v14 != 1.79769313e308 || v15 != 1.79769313e308)
    {
      x = v14;
      y = v15;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained transitionView:v11 endOriginForToView:v12 forTransition:v8 defaultOrigin:{x, y}];
    x = v16;
    y = v17;
  }

  v18 = x;
  v19 = y;
  result.y = v19;
  result.x = v18;
  return result;
}

- (void)transitionViewDidComplete:(id)a3 fromView:(id)a4 toView:(id)a5 removeFromView:(BOOL)a6
{
  transitionContext = self->_transitionContext;
  v7 = [(UIViewControllerContextTransitioning *)transitionContext transitionWasCancelled:a3]^ 1;

  [(UIViewControllerContextTransitioning *)transitionContext completeTransition:v7];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIView)toView
{
  WeakRetained = objc_loadWeakRetained(&self->_toView);

  return WeakRetained;
}

- (UIView)fromView
{
  WeakRetained = objc_loadWeakRetained(&self->_fromView);

  return WeakRetained;
}

@end