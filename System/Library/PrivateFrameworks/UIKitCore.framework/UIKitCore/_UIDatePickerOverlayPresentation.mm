@interface _UIDatePickerOverlayPresentation
- (BOOL)isBeingDismissedOrPresented;
- (BOOL)isPresentingOverlay;
- (CGPoint)_adjustedAnchorPointForFrame:(CGRect)a3 alignment:(unint64_t)a4 anchorPoint:(CGPoint)a5;
- (CGPoint)_normalizedSourcePointForAnchorPoint:(CGPoint)a3 menuFrame:(CGRect)a4;
- (CGRect)_adjustedFrameForInputSize:(CGSize)a3 outputFrame:(CGRect)a4;
- (CGRect)resolvedSourceBounds;
- (CGRect)resolvedSourceRect;
- (CGRect)sourceRect;
- (UIDatePicker)activeDatePicker;
- (UIView)sourceView;
- (_UIDatePickerOverlayPlatterLayout)_computedLayoutForPlatterView:(SEL)a3;
- (_UIDatePickerOverlayPresentation)initWithSourceView:(id)a3;
- (_UIDatePickerOverlayPresentationDelegate)delegate;
- (double)_layoutArbiterAnchorAlignmentOffset;
- (int64_t)_overlayAlignment;
- (unint64_t)_overlayAlignmentEdge;
- (void)_prepareDatePickerPresentationWithCompletion:(id)a3;
- (void)_presentNewDatePicker:(id)a3;
- (void)_transitionToDatePicker:(id)a3;
- (void)activateEmptyPresentationWithMode:(int64_t)a3 onDismiss:(id)a4;
- (void)animateDismissalWithAnimations:(id)a3 completion:(id)a4;
- (void)animatePresentWithAnimations:(id)a3 completion:(id)a4;
- (void)animateTransitionWithAnimations:(id)a3 completion:(id)a4;
- (void)dismissPresentationAnimated:(BOOL)a3;
- (void)presentDatePicker:(id)a3 onDismiss:(id)a4;
- (void)retargetCurrentPresentationToSourceView;
- (void)setAccessoryViewIgnoresDefaultInsets:(BOOL)a3;
- (void)setActiveMode:(int64_t)a3;
- (void)setAlignment:(int64_t)a3;
- (void)setDefersAutomaticKeyboardAvoidanceAdjustments:(BOOL)a3;
@end

@implementation _UIDatePickerOverlayPresentation

- (_UIDatePickerOverlayPresentation)initWithSourceView:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _UIDatePickerOverlayPresentation;
  v5 = [(_UIDatePickerOverlayPresentation *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sourceView, v4);
    *&v6->_alignment = xmmword_18A65B680;
    v7 = *(MEMORY[0x1E695F050] + 16);
    v6->_sourceRect.origin = *MEMORY[0x1E695F050];
    v6->_sourceRect.size = v7;
  }

  return v6;
}

- (BOOL)isPresentingOverlay
{
  v2 = [(_UIDatePickerOverlayPresentation *)self containerViewController];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)isBeingDismissedOrPresented
{
  if ([(_UIDatePickerOverlayPresentation *)self isPresentingContainerViewController])
  {
    return 1;
  }

  v4 = [(_UIDatePickerOverlayPresentation *)self containerViewController];
  v5 = [v4 isBeingDismissed];

  return v5;
}

- (CGRect)resolvedSourceRect
{
  [(_UIDatePickerOverlayPresentation *)self sourceRect];
  if (CGRectIsNull(v20))
  {
    v3 = [(_UIDatePickerOverlayPresentation *)self sourceView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    [(_UIDatePickerOverlayPresentation *)self sourceRect];
    v5 = v12;
    v7 = v13;
    v9 = v14;
    v11 = v15;
  }

  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v11;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)resolvedSourceBounds
{
  if ([(_UIDatePickerOverlayPresentation *)self overlayAnchor]== 2)
  {
    [(_UIDatePickerOverlayPresentation *)self resolvedSourceRect];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v11 = [(_UIDatePickerOverlayPresentation *)self sourceView];
    [v11 bounds];
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)presentDatePicker:(id)a3 onDismiss:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_storeWeak(&self->_activeDatePicker, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64___UIDatePickerOverlayPresentation_presentDatePicker_onDismiss___block_invoke;
  v10[3] = &unk_1E7129030;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v6;
  v9 = v7;
  [(_UIDatePickerOverlayPresentation *)self _prepareDatePickerPresentationWithCompletion:v10];
}

- (void)activateEmptyPresentationWithMode:(int64_t)a3 onDismiss:(id)a4
{
  v10 = a4;
  activeMode = self->_activeMode;
  if (activeMode)
  {
    v7 = activeMode == a3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [(_UIDatePickerOverlayPresentation *)self dismissHandler];

    if (v8)
    {
      v9 = [(_UIDatePickerOverlayPresentation *)self dismissHandler];
      v9[2](v9, 1);
    }
  }

  [(_UIDatePickerOverlayPresentation *)self setActiveMode:a3];
  [(_UIDatePickerOverlayPresentation *)self setDismissHandler:v10];
}

- (void)dismissPresentationAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIDatePickerOverlayPresentation *)self dismissHandler];

  if (v5)
  {
    v6 = [(_UIDatePickerOverlayPresentation *)self dismissHandler];
    v6[2](v6, 0);

    [(_UIDatePickerOverlayPresentation *)self setDismissHandler:0];
  }

  v7 = [(_UIDatePickerOverlayPresentation *)self containerViewController];

  if (v7)
  {
    v8 = [(_UIDatePickerOverlayPresentation *)self activeDatePicker];
    [v8 resignFirstResponder];

    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x3032000000;
    v48[3] = __Block_byref_object_copy__234;
    v48[4] = __Block_byref_object_dispose__234;
    v9 = [(_UIDatePickerOverlayPresentation *)self activeDatePicker];
    v49 = [v9 _style];

    v10 = [(_UIDatePickerOverlayPresentation *)self containerViewController];
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__234;
    v46 = __Block_byref_object_dispose__234;
    v47 = self->_platterView;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__234;
    v40 = __Block_byref_object_dispose__234;
    v41 = 0;
    platterView = self->_platterView;
    if (platterView)
    {
      v12 = [UIView alloc];
      v13 = [v10 view];
      [v13 frame];
      v14 = [(UIView *)v12 initWithFrame:?];
      v15 = v37[5];
      v37[5] = v14;

      v16 = [v10 view];
      v17 = [v16 contentView];
      v18 = v17;
      if (v17)
      {
        [v17 transform];
      }

      else
      {
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
      }

      v20 = v37[5];
      v32[0] = v33;
      v32[1] = v34;
      v32[2] = v35;
      [v20 setTransform:v32];

      [v37[5] setUserInteractionEnabled:0];
      [v43[5] setUserInteractionEnabled:0];
      v19 = self->_platterView;
    }

    else
    {
      v19 = 0;
    }

    self->_platterView = 0;

    containerViewController = self->_containerViewController;
    self->_containerViewController = 0;

    objc_storeWeak(&self->_activeDatePicker, 0);
    [(_UIDatePickerOverlayPresentation *)self setActiveMode:0];
    if (platterView)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __64___UIDatePickerOverlayPresentation_dismissPresentationAnimated___block_invoke;
      aBlock[3] = &unk_1E71188B0;
      aBlock[4] = v48;
      aBlock[5] = &v42;
      v22 = _Block_copy(aBlock);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __64___UIDatePickerOverlayPresentation_dismissPresentationAnimated___block_invoke_2;
      v30[3] = &unk_1E7129058;
      v30[4] = &v36;
      v23 = _Block_copy(v30);
      v24 = [v10 view];
      v25 = [v24 window];
      [v25 addSubview:v37[5]];

      [v37[5] addSubview:v43[5]];
      v26 = [v10 presentingViewController];
      [v26 dismissViewControllerAnimated:0 completion:0];

      if (v3)
      {
        if (_AXSReduceMotionEnabled())
        {
          v29[0] = MEMORY[0x1E69E9820];
          v29[1] = 3221225472;
          v29[2] = __64___UIDatePickerOverlayPresentation_dismissPresentationAnimated___block_invoke_3;
          v29[3] = &unk_1E70F2F20;
          v29[4] = &v42;
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __64___UIDatePickerOverlayPresentation_dismissPresentationAnimated___block_invoke_4;
          v27[3] = &unk_1E70F3608;
          v28 = v23;
          [(_UIDatePickerOverlayPresentation *)self animateReducedMotionTransitionWithAnimations:v29 completion:v27];
        }

        else
        {
          [(_UIDatePickerOverlayPresentation *)self animateDismissalWithAnimations:v22 completion:v23];
        }
      }

      else
      {
        v22[2](v22);
        (*(v23 + 2))(v23, 1, 0);
      }
    }

    else
    {
      v22 = [v10 presentingViewController];
      [v22 dismissViewControllerAnimated:0 completion:0];
    }

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v42, 8);

    _Block_object_dispose(v48, 8);
  }

  else
  {

    [(_UIDatePickerOverlayPresentation *)self setActiveMode:0];
  }
}

- (void)_prepareDatePickerPresentationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(_UIDatePickerOverlayPresentation *)self activeDatePicker];
  v6 = [v5 _style];

  v7 = [(_UIDatePickerOverlayPresentation *)self containerViewController];
  v8 = [(_UIDatePickerOverlayPresentation *)self sourceView];
  v9 = [v8 _viewControllerForAncestor];

  if (!v7)
  {
    v7 = [[_UIDatePickerContainerViewController alloc] initWithPresentation:self];
    v10 = [(UIViewController *)v7 presentationController];
    [v10 _setContainerIgnoresDirectTouchEvents:1];

    -[UIViewController setModalPresentationStyle:](v7, "setModalPresentationStyle:", [v6 datePickerModalPresentationStyle]);
  }

  [(_UIDatePickerOverlayPresentation *)self setContainerViewController:v7];
  v11 = [(UIViewController *)v7 presentingViewController];

  if (v11)
  {
    if ([(_UIDatePickerOverlayPresentation *)self isPresentingContainerViewController])
    {
      containerPresentCompletion = self->_containerPresentCompletion;
      if (containerPresentCompletion)
      {
        containerPresentCompletion[2](containerPresentCompletion, 0, 1);
      }

      v13 = _Block_copy(v4);
      v14 = self->_containerPresentCompletion;
      self->_containerPresentCompletion = v13;
    }

    else
    {
      (*(v4 + 2))(v4, 1, 0);
      v14 = self->_containerPresentCompletion;
      self->_containerPresentCompletion = 0;
    }

    goto LABEL_16;
  }

  v15 = [v9 presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v9 presentedViewController];
    v17 = [v16 isBeingDismissed];

    if (v17)
    {
      goto LABEL_12;
    }

    v15 = [v9 presentedViewController];
    v18 = [v15 presentation];
    [v18 dismissPresentationAnimated:1];
  }

LABEL_12:
  v19 = _Block_copy(v4);
  v20 = self->_containerPresentCompletion;
  self->_containerPresentCompletion = v19;

  if (![(_UIDatePickerOverlayPresentation *)self isPresentingContainerViewController])
  {
    [(_UIDatePickerOverlayPresentation *)self setPresentingContainerViewController:1];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __81___UIDatePickerOverlayPresentation__prepareDatePickerPresentationWithCompletion___block_invoke;
    v21[3] = &unk_1E70F3590;
    v21[4] = self;
    [v9 presentViewController:v7 animated:0 completion:v21];
  }

LABEL_16:
}

- (void)setAlignment:(int64_t)a3
{
  if (self->_alignment != a3)
  {
    self->_alignment = a3;
    v4 = [(_UIDatePickerOverlayPresentation *)self platterView];

    if (v4)
    {

      [(_UIDatePickerOverlayPresentation *)self _transitionToDatePicker:0];
    }
  }
}

- (void)setActiveMode:(int64_t)a3
{
  if (self->_activeMode != a3)
  {
    self->_activeMode = a3;
    v6 = [(_UIDatePickerOverlayPresentation *)self delegate];
    [v6 _datePickerPresentation:self didChangeActiveMode:a3];
  }
}

- (void)setDefersAutomaticKeyboardAvoidanceAdjustments:(BOOL)a3
{
  if (self->_defersAutomaticKeyboardAvoidanceAdjustments != a3)
  {
    self->_defersAutomaticKeyboardAvoidanceAdjustments = a3;
    v4 = [(_UIDatePickerOverlayPresentation *)self containerViewController];
    [v4 didChangeKeyboardAvoidanceAdjustmentDeferral];
  }
}

- (void)setAccessoryViewIgnoresDefaultInsets:(BOOL)a3
{
  v3 = a3;
  self->_accessoryViewIgnoresDefaultInsets = a3;
  v4 = [(_UIDatePickerOverlayPresentation *)self platterView];
  [v4 setAccessoryViewIgnoresDefaultInsets:v3];
}

- (void)_presentNewDatePicker:(id)a3
{
  v4 = a3;
  v5 = [(_UIDatePickerOverlayPresentation *)self dismissHandler];

  if (v5)
  {
    v6 = [(_UIDatePickerOverlayPresentation *)self dismissHandler];
    v6[2](v6, 0);

    [(_UIDatePickerOverlayPresentation *)self setDismissHandler:0];
  }

  v7 = [(_UIDatePickerOverlayPresentation *)self containerViewController];
  v8 = [v7 view];

  v9 = [[_UIDatePickerOverlayPlatterView alloc] initWithDatePicker:v4 accessoryView:self->_accessoryView];
  [(_UIDatePickerOverlayPlatterView *)v9 setAccessoryViewIgnoresDefaultInsets:[(_UIDatePickerOverlayPresentation *)self accessoryViewIgnoresDefaultInsets]];
  v10 = [v8 contentView];
  [v10 addSubview:v9];

  objc_storeStrong(&self->_platterView, v9);
  v64 = 0u;
  memset(&v65, 0, sizeof(v65));
  v63 = 0u;
  memset(&v62, 0, sizeof(v62));
  [(_UIDatePickerOverlayPresentation *)self _computedLayoutForPlatterView:v9];
  [(UIView *)v9 setCenter:v63];
  [(_UIDatePickerOverlayPlatterView *)v9 setContentBounds:*&v62.origin, *&v62.size];
  v11 = [(_UIDatePickerOverlayPresentation *)self activeDatePicker];
  v12 = [v11 _style];

  [v12 overlayPlatterInitialScale];
  v14 = v13;
  CGAffineTransformMakeScale(&v61, v13, v13);
  v60 = v61;
  [(UIView *)v9 setTransform:&v60];
  [v12 overlayPlatterInitialHeight];
  v16 = v15;
  origin = v62.origin;
  size = v62.size;
  Height = CGRectGetHeight(v62);
  if (Height >= v16 / v14)
  {
    v20 = v16 / v14;
  }

  else
  {
    v20 = Height;
  }

  v66.origin = origin;
  v66.size = size;
  [(UIView *)v9 setBounds:0.0, 0.0, CGRectGetWidth(v66), v20];
  [(UIView *)v9 setCenter:v63];
  [(UIView *)v9 setAlpha:0.0];
  [(UIView *)v9 setAnchorPoint:v64];
  [(UIView *)v9 layoutIfNeeded];
  v59 = v65;
  v21 = [v8 contentView];
  v60 = v59;
  [v21 setTransform:&v60];

  [v8 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [v8 contentView];
  [v30 frame];
  y = v67.origin.y;
  width = v67.size.width;
  v32 = v67.size.height;
  x = v67.origin.x;
  rect_8 = v67.origin.x;
  MinY = CGRectGetMinY(v67);
  v68.origin.x = v23;
  v68.origin.y = v25;
  v68.size.width = v27;
  v68.size.height = v29;
  v47 = MinY - CGRectGetMinY(v68);
  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = v32;
  MinX = CGRectGetMinX(v69);
  v70.origin.x = v23;
  v70.origin.y = v25;
  v70.size.width = v27;
  v70.size.height = v29;
  rect_24 = MinX - CGRectGetMinX(v70);
  v71.origin.x = v23;
  v71.origin.y = v25;
  v71.size.width = v27;
  v71.size.height = v29;
  MaxY = CGRectGetMaxY(v71);
  v72.origin.x = rect_8;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = v32;
  rect_16 = MaxY - CGRectGetMaxY(v72);
  v73.origin.x = v23;
  v73.origin.y = v25;
  v73.size.width = v27;
  v73.size.height = v29;
  MaxX = CGRectGetMaxX(v73);
  v74.origin.x = rect_8;
  v74.origin.y = y;
  v74.size.width = width;
  v74.size.height = v32;
  v38 = MaxX - CGRectGetMaxX(v74);

  v39 = [v8 contentView];
  [v39 setHitTestInsets:{-v47, -rect_24, -rect_16, -v38}];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58___UIDatePickerOverlayPresentation__presentNewDatePicker___block_invoke;
  aBlock[3] = &unk_1E7129080;
  v40 = v9;
  v57 = v64;
  v58 = v65;
  v55 = v62;
  v54 = v40;
  v56 = v63;
  v41 = _Block_copy(aBlock);
  if (_AXSReduceMotionEnabled())
  {
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = __58___UIDatePickerOverlayPresentation__presentNewDatePicker___block_invoke_2;
    v50[3] = &unk_1E70F4A50;
    v52 = v41;
    v42 = v40;
    v51 = v42;
    [UIView performWithoutAnimation:v50];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __58___UIDatePickerOverlayPresentation__presentNewDatePicker___block_invoke_3;
    v48[3] = &unk_1E70F3590;
    v49 = v42;
    [(_UIDatePickerOverlayPresentation *)self animateReducedMotionTransitionWithAnimations:v48 completion:0];
  }

  else
  {
    [(_UIDatePickerOverlayPresentation *)self animatePresentWithAnimations:v41 completion:0];
  }
}

- (void)_transitionToDatePicker:(id)a3
{
  v4 = a3;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__234;
  v45 = __Block_byref_object_dispose__234;
  v46 = [(_UIDatePickerOverlayPresentation *)self platterView];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__234;
  v39[4] = __Block_byref_object_dispose__234;
  v5 = [(_UIDatePickerOverlayPresentation *)self containerViewController];
  v40 = [v5 view];

  [v42[5] prepareDatePickerTransitionWithDatePicker:v4];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  [(_UIDatePickerOverlayPresentation *)self _computedLayoutForPlatterView:v42[5]];
  [v42[5] frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v42[5] setAnchorPoint:0];
  [v42[5] setFrame:{v7, v9, v11, v13}];
  [v42[5] setContentBounds:{0, 0}];
  v14 = [(_UIDatePickerOverlayPresentation *)self dismissHandler];

  if (v14)
  {
    v15 = [(_UIDatePickerOverlayPresentation *)self dismissHandler];
    v15[2](v15, 1);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60___UIDatePickerOverlayPresentation__transitionToDatePicker___block_invoke;
  aBlock[3] = &unk_1E71290A8;
  v29 = v36;
  v30 = v37;
  v31 = v38;
  v25 = v32;
  v26 = v33;
  v27 = v34;
  v28 = v35;
  aBlock[4] = v39;
  aBlock[5] = &v41;
  v16 = _Block_copy(aBlock);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __60___UIDatePickerOverlayPresentation__transitionToDatePicker___block_invoke_2;
  v23[3] = &unk_1E7129058;
  v23[4] = &v41;
  v17 = _Block_copy(v23);
  if (_AXSReduceMotionEnabled())
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __60___UIDatePickerOverlayPresentation__transitionToDatePicker___block_invoke_3;
    v22[3] = &unk_1E70F2F20;
    v22[4] = &v41;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60___UIDatePickerOverlayPresentation__transitionToDatePicker___block_invoke_4;
    v18[3] = &unk_1E71290D0;
    v18[4] = self;
    v19 = v16;
    v21 = &v41;
    v20 = v17;
    [(_UIDatePickerOverlayPresentation *)self animateReducedMotionTransitionWithAnimations:v22 completion:v18];
  }

  else
  {
    [(_UIDatePickerOverlayPresentation *)self animateTransitionWithAnimations:v16 completion:v17];
  }

  objc_storeStrong(&self->_platterView, v42[5]);

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(&v41, 8);
}

- (void)retargetCurrentPresentationToSourceView
{
  v3 = [(_UIDatePickerOverlayPresentation *)self platterView];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  [(_UIDatePickerOverlayPresentation *)self _computedLayoutForPlatterView:v3];
  [v3 setContentBounds:{v4, v5}];
  [v3 setBounds:{v4, v5}];
  [v3 setCenter:v6];
  [v3 layoutIfNeeded];
}

- (_UIDatePickerOverlayPlatterLayout)_computedLayoutForPlatterView:(SEL)a3
{
  v6 = a4;
  v7 = [(_UIDatePickerOverlayPresentation *)self activeDatePicker];
  v8 = [v7 _style];

  v9 = [_UIContextMenuLayoutArbiter alloc];
  v10 = [(_UIDatePickerOverlayPresentation *)self containerViewController];
  v11 = [v10 view];
  v12 = [(_UIContextMenuLayoutArbiter *)v9 initWithContainerView:v11 layout:1];

  v13 = objc_opt_new();
  [(_UIDatePickerOverlayPresentation *)self resolvedSourceRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [(_UIDatePickerOverlayPresentation *)self sourceView];
  v23 = [(_UIDatePickerOverlayPresentation *)self containerViewController];
  v24 = [v23 view];
  [v22 convertRect:v24 toView:{v15, v17, v19, v21}];
  v26 = v25;
  v28 = v27;

  v29 = objc_alloc_init(UIPreviewParameters);
  v30 = [UIBezierPath bezierPathWithRect:v15, v17, v19, v21];
  [(UIPreviewParameters *)v29 setVisiblePath:v30];

  if ([(_UIDatePickerOverlayPresentation *)self overlayAnchor]== 2)
  {
    v31 = [[UIView alloc] initWithFrame:v15, v17, v19, v21];
    v32 = [UIPreviewTarget alloc];
    WeakRetained = objc_loadWeakRetained(&self->_sourceView);
    v34 = [(UIPreviewTarget *)v32 initWithContainer:WeakRetained center:v15 + v19 * 0.5, v17 + v21 * 0.5];

    v35 = [[UITargetedPreview alloc] initWithView:v31 parameters:v29 target:v34];
    [v13 setSourcePreview:v35];
  }

  else
  {
    v36 = [UITargetedPreview alloc];
    v31 = objc_loadWeakRetained(&self->_sourceView);
    v34 = [(UITargetedPreview *)v36 initWithView:v31 parameters:v29];
    [v13 setSourcePreview:v34];
  }

  [v13 setShouldUpdateAttachment:1];
  [v13 setPreferredPreviewSize:{v26, v28}];
  [v6 preferredPlatterSize];
  v38 = v37;
  v40 = v39;

  [v13 setPreferredMenuSize:{v38, v40}];
  [v8 overlayPlatterDefaultSpacing];
  [v13 setPreferredContentSpacing:?];
  v41 = COERCE_DOUBLE([(_UIDatePickerOverlayPresentation *)self _overlayAlignmentEdge]);
  [(_UIDatePickerOverlayPresentation *)self _layoutArbiterAnchorAlignmentOffset];
  v95.a = NAN;
  v95.b = v41;
  v95.c = 0.0;
  v95.d = v42;
  *&v95.tx = 1;
  [v13 setPreferredAnchor:&v95];
  v43 = [(_UIContextMenuLayoutArbiter *)v12 computedLayoutWithInput:v13];
  v44 = v43;
  if (v43)
  {
    [v43 menu];
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v96 = 0u;
    memset(&v95, 0, sizeof(v95));
  }

  _UIContextMenuItemFrameFromLayout(&v95);
  v46 = v45;
  v48 = v47;
  [v13 preferredMenuSize];
  [_UIDatePickerOverlayPresentation _adjustedFrameForInputSize:"_adjustedFrameForInputSize:outputFrame:" outputFrame:?];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  if (v44)
  {
    [v44 anchor];
    v57 = *(&v92 + 1);
    [v44 menu];
    v58 = *(&v87 + 1);
    v59 = *&v88;
  }

  else
  {
    v57 = 0;
    v92 = 0u;
    v93 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v59 = 0.0;
    v58 = 0.0;
    v94 = 0;
  }

  [(_UIDatePickerOverlayPresentation *)self _adjustedAnchorPointForFrame:v57 alignment:v50 anchorPoint:v52, v54, v56, v58, v59];
  v61 = v60;
  v63 = v62;
  [v13 preferredMenuSize];
  v65 = v46 / v64;
  [v13 preferredMenuSize];
  retstr->var0.origin = 0u;
  retstr->var0.size = 0u;
  retstr->var1 = 0u;
  retstr->var2 = 0u;
  *&retstr->var3.a = 0u;
  *&retstr->var3.c = 0u;
  *&retstr->var3.tx = 0u;
  retstr->var0.size.width = v54;
  retstr->var0.size.height = v56;
  v67 = fmin(v65, v48 / v66);
  retstr->var2.x = v61;
  retstr->var2.y = v63;
  [(_UIDatePickerOverlayPresentation *)self _normalizedSourcePointForAnchorPoint:v61 menuFrame:v63, v50, v52, v54, v56];
  retstr->var1.x = v68;
  retstr->var1.y = v69;
  if (v67 >= 1.0)
  {
    v74 = MEMORY[0x1E695EFD0];
    v75 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->var3.a = *MEMORY[0x1E695EFD0];
    *&retstr->var3.c = v75;
    v76 = *(v74 + 32);
  }

  else
  {
    memset(&v83, 0, sizeof(v83));
    CGAffineTransformMakeScale(&v83, v67, v67);
    v95 = v83;
    v101.origin.x = v50;
    v101.origin.y = v52;
    v101.size.width = v54;
    v101.size.height = v56;
    v102 = CGRectApplyAffineTransform(v101, &v95);
    v70 = v50 + (v54 - v102.size.width) * 0.5;
    v71 = v52 + (v56 - v102.size.height) * 0.5;
    [v13 setPreferredMenuSize:v102.size.width];
    v72 = [(_UIContextMenuLayoutArbiter *)v12 computedLayoutWithInput:v13];
    v73 = v72;
    if (v72)
    {
      [v72 menu];
    }

    else
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      memset(&v95, 0, sizeof(v95));
    }

    v77 = _UIContextMenuItemFrameFromLayout(&v95);
    v79 = v78;

    v82 = v83;
    CGAffineTransformTranslate(&v95, &v82, v77 - v70, v79 - v71);
    v80 = *&v95.c;
    v76 = *&v95.tx;
    v83 = v95;
    *&retstr->var3.a = *&v95.a;
    *&retstr->var3.c = v80;
  }

  *&retstr->var3.tx = v76;

  return result;
}

- (int64_t)_overlayAlignment
{
  v3 = [(_UIDatePickerOverlayPresentation *)self alignment];
  v4 = 1;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v6 = [(_UIDatePickerOverlayPresentation *)self sourceView];
      v7 = v6[13] >> 21;
    }

    else
    {
      if (v3 != 5)
      {
        return v4;
      }

      v6 = [(_UIDatePickerOverlayPresentation *)self sourceView];
      LODWORD(v7) = ~(*(v6 + 26) >> 21);
    }

    v4 = v7 & 2;

    return v4;
  }

  v5 = 2;
  if (v3 != 2)
  {
    v5 = 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (unint64_t)_overlayAlignmentEdge
{
  v2 = [(_UIDatePickerOverlayPresentation *)self _overlayAlignment];
  v3 = 2;
  if (v2 == 2)
  {
    v3 = 8;
  }

  if (v2 == 1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (CGRect)_adjustedFrameForInputSize:(CGSize)a3 outputFrame:(CGRect)a4
{
  v4 = a4.origin.x - (a3.width - a4.size.width) * 0.5;
  if (a4.size.width == a3.width)
  {
    x = a4.origin.x;
  }

  else
  {
    a4.size.width = a3.width;
    x = v4;
  }

  v6 = a4.origin.y - (a3.height - a4.size.height) * 0.5;
  if (a4.size.height == a3.height)
  {
    y = a4.origin.y;
  }

  else
  {
    a4.size.height = a3.height;
    y = v6;
  }

  width = a4.size.width;
  height = a4.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)_layoutArbiterAnchorAlignmentOffset
{
  v3 = [(_UIDatePickerOverlayPresentation *)self activeDatePicker];
  v4 = [v3 _style];

  v5 = [(_UIDatePickerOverlayPresentation *)self _overlayAlignment];
  if (v5 == 2)
  {
    [(_UIDatePickerOverlayPresentation *)self resolvedSourceBounds];
    MaxX = CGRectGetMaxX(v27);
    [(_UIDatePickerOverlayPresentation *)self resolvedSourceRect];
    v14 = MaxX - CGRectGetMaxX(v28);
    [v4 overlayPlatterDefaultSpacing];
    v6 = v14 - v15;
    if ([(_UIDatePickerOverlayPresentation *)self overlayAnchor]== 1)
    {
      v10 = [(_UIDatePickerOverlayPresentation *)self sourceView];
      [v10 layoutMargins];
      v6 = v6 - v16;
      goto LABEL_9;
    }
  }

  else if (v5 == 1)
  {
    [(_UIDatePickerOverlayPresentation *)self resolvedSourceBounds];
    MidX = CGRectGetMidX(v25);
    [(_UIDatePickerOverlayPresentation *)self resolvedSourceRect];
    v6 = MidX - CGRectGetMidX(v26);
  }

  else
  {
    v6 = 0.0;
    if (!v5)
    {
      [(_UIDatePickerOverlayPresentation *)self resolvedSourceBounds];
      MinX = CGRectGetMinX(v23);
      [(_UIDatePickerOverlayPresentation *)self resolvedSourceRect];
      v8 = MinX - CGRectGetMinX(v24);
      [v4 overlayPlatterDefaultSpacing];
      v6 = v8 + v9;
      if ([(_UIDatePickerOverlayPresentation *)self overlayAnchor]== 1)
      {
        v10 = [(_UIDatePickerOverlayPresentation *)self sourceView];
        [v10 layoutMargins];
        v6 = v6 + v11;
LABEL_9:
      }
    }
  }

  v17 = [(_UIDatePickerOverlayPresentation *)self sourceView];
  v18 = [v17 traitCollection];
  [v18 displayScale];
  UIRoundToScale(v6, v19);
  v21 = v20;

  return v21;
}

- (CGPoint)_normalizedSourcePointForAnchorPoint:(CGPoint)a3 menuFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a3.y;
  v7 = a4.origin.x + a4.size.width * 0.5;
  v8 = a4.origin.y + a4.size.height * 0.5;
  v9 = a3.x + -0.5;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = a4.size.width;
  v14.size.height = a4.size.height;
  v10 = v7 + v9 * CGRectGetWidth(v14);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = width;
  v15.size.height = height;
  v11 = v8 + (y + -0.5) * CGRectGetHeight(v15);
  v12 = v10;
  result.y = v11;
  result.x = v12;
  return result;
}

- (CGPoint)_adjustedAnchorPointForFrame:(CGRect)a3 alignment:(unint64_t)a4 anchorPoint:(CGPoint)a5
{
  width = a3.size.width;
  y = a5.y;
  x = a5.x;
  height = a3.size.height;
  v8 = a3.origin.y;
  v9 = a3.origin.x;
  [(_UIDatePickerOverlayPresentation *)self resolvedSourceRect];
  v12 = v11;
  v14 = v13;
  [(_UIDatePickerOverlayPresentation *)self resolvedSourceBounds];
  v16 = v15;
  v18 = v17;
  if (a4 <= 3)
  {
    if (a4 != 1)
    {
      if (a4 != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_7:
    v19 = v12 + v14 * 0.5;
    v20 = [(_UIDatePickerOverlayPresentation *)self _overlayAlignment];
    switch(v20)
    {
      case 2:
        x = 1.0 - (v16 + v18 - v19) / width;
        break;
      case 1:
        x = (v19 - (v16 + v18 * 0.5)) / width + 0.5;
        break;
      case 0:
        x = (v19 - v16) / width;
        break;
    }

    goto LABEL_12;
  }

  if (a4 == 8)
  {
LABEL_11:
    v21 = [(_UIDatePickerOverlayPresentation *)self containerViewController];
    v22 = [v21 view];

    v23 = [(_UIDatePickerOverlayPresentation *)self sourceView];
    [(_UIDatePickerOverlayPresentation *)self resolvedSourceRect];
    [v23 convertPoint:v22 toView:{v25 + v24 * 0.5, v27 + v26 * 0.5}];
    v29 = v28;
    v31 = v30;

    v39.origin.x = v9;
    v39.origin.y = v8;
    v39.size.width = width;
    v39.size.height = height;
    v32 = v29 - CGRectGetMinX(v39);
    v40.origin.x = v9;
    v40.origin.y = v8;
    v40.size.width = width;
    v40.size.height = height;
    x = v32 / CGRectGetWidth(v40);
    v41.origin.x = v9;
    v41.origin.y = v8;
    v41.size.width = width;
    v41.size.height = height;
    v33 = v31 - CGRectGetMinY(v41);
    v42.origin.x = v9;
    v42.origin.y = v8;
    v42.size.width = width;
    v42.size.height = height;
    y = v33 / CGRectGetHeight(v42);

    goto LABEL_12;
  }

  if (a4 == 4)
  {
    goto LABEL_7;
  }

LABEL_12:
  v34 = fmax(fmin(x, 1.0), 0.0);
  v35 = fmax(fmin(y, 1.0), 0.0);
  result.y = v35;
  result.x = v34;
  return result;
}

- (void)animatePresentWithAnimations:(id)a3 completion:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76___UIDatePickerOverlayPresentation_animatePresentWithAnimations_completion___block_invoke;
  v7[3] = &unk_1E70F0F78;
  v8 = v5;
  v6 = v5;
  [UIView _animateUsingSpringWithDampingRatio:1 response:v7 tracking:a4 dampingRatioSmoothing:0.8 responseSmoothing:0.32 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
}

- (void)animateTransitionWithAnimations:(id)a3 completion:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79___UIDatePickerOverlayPresentation_animateTransitionWithAnimations_completion___block_invoke;
  v7[3] = &unk_1E70F0F78;
  v8 = v5;
  v6 = v5;
  [UIView _animateUsingSpringWithDampingRatio:0 response:v7 tracking:a4 dampingRatioSmoothing:1.0 responseSmoothing:0.25 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
}

- (void)animateDismissalWithAnimations:(id)a3 completion:(id)a4
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78___UIDatePickerOverlayPresentation_animateDismissalWithAnimations_completion___block_invoke;
  v7[3] = &unk_1E70F0F78;
  v8 = v5;
  v6 = v5;
  [UIView _animateUsingSpringWithDampingRatio:0 response:v7 tracking:a4 dampingRatioSmoothing:0.85 responseSmoothing:0.35 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
}

- (UIDatePicker)activeDatePicker
{
  WeakRetained = objc_loadWeakRetained(&self->_activeDatePicker);

  return WeakRetained;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

- (CGRect)sourceRect
{
  x = self->_sourceRect.origin.x;
  y = self->_sourceRect.origin.y;
  width = self->_sourceRect.size.width;
  height = self->_sourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (_UIDatePickerOverlayPresentationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end