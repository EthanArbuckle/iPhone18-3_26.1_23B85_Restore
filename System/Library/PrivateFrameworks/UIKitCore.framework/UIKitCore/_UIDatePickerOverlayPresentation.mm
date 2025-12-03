@interface _UIDatePickerOverlayPresentation
- (BOOL)isBeingDismissedOrPresented;
- (BOOL)isPresentingOverlay;
- (CGPoint)_adjustedAnchorPointForFrame:(CGRect)frame alignment:(unint64_t)alignment anchorPoint:(CGPoint)point;
- (CGPoint)_normalizedSourcePointForAnchorPoint:(CGPoint)point menuFrame:(CGRect)frame;
- (CGRect)_adjustedFrameForInputSize:(CGSize)size outputFrame:(CGRect)frame;
- (CGRect)resolvedSourceBounds;
- (CGRect)resolvedSourceRect;
- (CGRect)sourceRect;
- (UIDatePicker)activeDatePicker;
- (UIView)sourceView;
- (_UIDatePickerOverlayPlatterLayout)_computedLayoutForPlatterView:(SEL)view;
- (_UIDatePickerOverlayPresentation)initWithSourceView:(id)view;
- (_UIDatePickerOverlayPresentationDelegate)delegate;
- (double)_layoutArbiterAnchorAlignmentOffset;
- (int64_t)_overlayAlignment;
- (unint64_t)_overlayAlignmentEdge;
- (void)_prepareDatePickerPresentationWithCompletion:(id)completion;
- (void)_presentNewDatePicker:(id)picker;
- (void)_transitionToDatePicker:(id)picker;
- (void)activateEmptyPresentationWithMode:(int64_t)mode onDismiss:(id)dismiss;
- (void)animateDismissalWithAnimations:(id)animations completion:(id)completion;
- (void)animatePresentWithAnimations:(id)animations completion:(id)completion;
- (void)animateTransitionWithAnimations:(id)animations completion:(id)completion;
- (void)dismissPresentationAnimated:(BOOL)animated;
- (void)presentDatePicker:(id)picker onDismiss:(id)dismiss;
- (void)retargetCurrentPresentationToSourceView;
- (void)setAccessoryViewIgnoresDefaultInsets:(BOOL)insets;
- (void)setActiveMode:(int64_t)mode;
- (void)setAlignment:(int64_t)alignment;
- (void)setDefersAutomaticKeyboardAvoidanceAdjustments:(BOOL)adjustments;
@end

@implementation _UIDatePickerOverlayPresentation

- (_UIDatePickerOverlayPresentation)initWithSourceView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = _UIDatePickerOverlayPresentation;
  v5 = [(_UIDatePickerOverlayPresentation *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_sourceView, viewCopy);
    *&v6->_alignment = xmmword_18A65B680;
    v7 = *(MEMORY[0x1E695F050] + 16);
    v6->_sourceRect.origin = *MEMORY[0x1E695F050];
    v6->_sourceRect.size = v7;
  }

  return v6;
}

- (BOOL)isPresentingOverlay
{
  containerViewController = [(_UIDatePickerOverlayPresentation *)self containerViewController];
  v3 = containerViewController != 0;

  return v3;
}

- (BOOL)isBeingDismissedOrPresented
{
  if ([(_UIDatePickerOverlayPresentation *)self isPresentingContainerViewController])
  {
    return 1;
  }

  containerViewController = [(_UIDatePickerOverlayPresentation *)self containerViewController];
  isBeingDismissed = [containerViewController isBeingDismissed];

  return isBeingDismissed;
}

- (CGRect)resolvedSourceRect
{
  [(_UIDatePickerOverlayPresentation *)self sourceRect];
  if (CGRectIsNull(v20))
  {
    sourceView = [(_UIDatePickerOverlayPresentation *)self sourceView];
    [sourceView bounds];
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
    sourceView = [(_UIDatePickerOverlayPresentation *)self sourceView];
    [sourceView bounds];
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

- (void)presentDatePicker:(id)picker onDismiss:(id)dismiss
{
  pickerCopy = picker;
  dismissCopy = dismiss;
  objc_storeWeak(&self->_activeDatePicker, pickerCopy);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64___UIDatePickerOverlayPresentation_presentDatePicker_onDismiss___block_invoke;
  v10[3] = &unk_1E7129030;
  selfCopy = self;
  v13 = dismissCopy;
  v11 = pickerCopy;
  v8 = pickerCopy;
  v9 = dismissCopy;
  [(_UIDatePickerOverlayPresentation *)self _prepareDatePickerPresentationWithCompletion:v10];
}

- (void)activateEmptyPresentationWithMode:(int64_t)mode onDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  activeMode = self->_activeMode;
  if (activeMode)
  {
    v7 = activeMode == mode;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    dismissHandler = [(_UIDatePickerOverlayPresentation *)self dismissHandler];

    if (dismissHandler)
    {
      dismissHandler2 = [(_UIDatePickerOverlayPresentation *)self dismissHandler];
      dismissHandler2[2](dismissHandler2, 1);
    }
  }

  [(_UIDatePickerOverlayPresentation *)self setActiveMode:mode];
  [(_UIDatePickerOverlayPresentation *)self setDismissHandler:dismissCopy];
}

- (void)dismissPresentationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  dismissHandler = [(_UIDatePickerOverlayPresentation *)self dismissHandler];

  if (dismissHandler)
  {
    dismissHandler2 = [(_UIDatePickerOverlayPresentation *)self dismissHandler];
    dismissHandler2[2](dismissHandler2, 0);

    [(_UIDatePickerOverlayPresentation *)self setDismissHandler:0];
  }

  containerViewController = [(_UIDatePickerOverlayPresentation *)self containerViewController];

  if (containerViewController)
  {
    activeDatePicker = [(_UIDatePickerOverlayPresentation *)self activeDatePicker];
    [activeDatePicker resignFirstResponder];

    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x3032000000;
    v48[3] = __Block_byref_object_copy__234;
    v48[4] = __Block_byref_object_dispose__234;
    activeDatePicker2 = [(_UIDatePickerOverlayPresentation *)self activeDatePicker];
    _style = [activeDatePicker2 _style];

    containerViewController2 = [(_UIDatePickerOverlayPresentation *)self containerViewController];
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
      view = [containerViewController2 view];
      [view frame];
      v14 = [(UIView *)v12 initWithFrame:?];
      v15 = v37[5];
      v37[5] = v14;

      view2 = [containerViewController2 view];
      contentView = [view2 contentView];
      v18 = contentView;
      if (contentView)
      {
        [contentView transform];
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
      presentingViewController2 = _Block_copy(aBlock);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __64___UIDatePickerOverlayPresentation_dismissPresentationAnimated___block_invoke_2;
      v30[3] = &unk_1E7129058;
      v30[4] = &v36;
      v23 = _Block_copy(v30);
      view3 = [containerViewController2 view];
      window = [view3 window];
      [window addSubview:v37[5]];

      [v37[5] addSubview:v43[5]];
      presentingViewController = [containerViewController2 presentingViewController];
      [presentingViewController dismissViewControllerAnimated:0 completion:0];

      if (animatedCopy)
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
          [(_UIDatePickerOverlayPresentation *)self animateDismissalWithAnimations:presentingViewController2 completion:v23];
        }
      }

      else
      {
        presentingViewController2[2](presentingViewController2);
        (*(v23 + 2))(v23, 1, 0);
      }
    }

    else
    {
      presentingViewController2 = [containerViewController2 presentingViewController];
      [presentingViewController2 dismissViewControllerAnimated:0 completion:0];
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

- (void)_prepareDatePickerPresentationWithCompletion:(id)completion
{
  completionCopy = completion;
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self activeDatePicker];
  _style = [activeDatePicker _style];

  containerViewController = [(_UIDatePickerOverlayPresentation *)self containerViewController];
  sourceView = [(_UIDatePickerOverlayPresentation *)self sourceView];
  _viewControllerForAncestor = [sourceView _viewControllerForAncestor];

  if (!containerViewController)
  {
    containerViewController = [[_UIDatePickerContainerViewController alloc] initWithPresentation:self];
    presentationController = [(UIViewController *)containerViewController presentationController];
    [presentationController _setContainerIgnoresDirectTouchEvents:1];

    -[UIViewController setModalPresentationStyle:](containerViewController, "setModalPresentationStyle:", [_style datePickerModalPresentationStyle]);
  }

  [(_UIDatePickerOverlayPresentation *)self setContainerViewController:containerViewController];
  presentingViewController = [(UIViewController *)containerViewController presentingViewController];

  if (presentingViewController)
  {
    if ([(_UIDatePickerOverlayPresentation *)self isPresentingContainerViewController])
    {
      containerPresentCompletion = self->_containerPresentCompletion;
      if (containerPresentCompletion)
      {
        containerPresentCompletion[2](containerPresentCompletion, 0, 1);
      }

      v13 = _Block_copy(completionCopy);
      v14 = self->_containerPresentCompletion;
      self->_containerPresentCompletion = v13;
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 1, 0);
      v14 = self->_containerPresentCompletion;
      self->_containerPresentCompletion = 0;
    }

    goto LABEL_16;
  }

  presentedViewController = [_viewControllerForAncestor presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentedViewController2 = [_viewControllerForAncestor presentedViewController];
    isBeingDismissed = [presentedViewController2 isBeingDismissed];

    if (isBeingDismissed)
    {
      goto LABEL_12;
    }

    presentedViewController = [_viewControllerForAncestor presentedViewController];
    presentation = [presentedViewController presentation];
    [presentation dismissPresentationAnimated:1];
  }

LABEL_12:
  v19 = _Block_copy(completionCopy);
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
    [_viewControllerForAncestor presentViewController:containerViewController animated:0 completion:v21];
  }

LABEL_16:
}

- (void)setAlignment:(int64_t)alignment
{
  if (self->_alignment != alignment)
  {
    self->_alignment = alignment;
    platterView = [(_UIDatePickerOverlayPresentation *)self platterView];

    if (platterView)
    {

      [(_UIDatePickerOverlayPresentation *)self _transitionToDatePicker:0];
    }
  }
}

- (void)setActiveMode:(int64_t)mode
{
  if (self->_activeMode != mode)
  {
    self->_activeMode = mode;
    delegate = [(_UIDatePickerOverlayPresentation *)self delegate];
    [delegate _datePickerPresentation:self didChangeActiveMode:mode];
  }
}

- (void)setDefersAutomaticKeyboardAvoidanceAdjustments:(BOOL)adjustments
{
  if (self->_defersAutomaticKeyboardAvoidanceAdjustments != adjustments)
  {
    self->_defersAutomaticKeyboardAvoidanceAdjustments = adjustments;
    containerViewController = [(_UIDatePickerOverlayPresentation *)self containerViewController];
    [containerViewController didChangeKeyboardAvoidanceAdjustmentDeferral];
  }
}

- (void)setAccessoryViewIgnoresDefaultInsets:(BOOL)insets
{
  insetsCopy = insets;
  self->_accessoryViewIgnoresDefaultInsets = insets;
  platterView = [(_UIDatePickerOverlayPresentation *)self platterView];
  [platterView setAccessoryViewIgnoresDefaultInsets:insetsCopy];
}

- (void)_presentNewDatePicker:(id)picker
{
  pickerCopy = picker;
  dismissHandler = [(_UIDatePickerOverlayPresentation *)self dismissHandler];

  if (dismissHandler)
  {
    dismissHandler2 = [(_UIDatePickerOverlayPresentation *)self dismissHandler];
    dismissHandler2[2](dismissHandler2, 0);

    [(_UIDatePickerOverlayPresentation *)self setDismissHandler:0];
  }

  containerViewController = [(_UIDatePickerOverlayPresentation *)self containerViewController];
  view = [containerViewController view];

  v9 = [[_UIDatePickerOverlayPlatterView alloc] initWithDatePicker:pickerCopy accessoryView:self->_accessoryView];
  [(_UIDatePickerOverlayPlatterView *)v9 setAccessoryViewIgnoresDefaultInsets:[(_UIDatePickerOverlayPresentation *)self accessoryViewIgnoresDefaultInsets]];
  contentView = [view contentView];
  [contentView addSubview:v9];

  objc_storeStrong(&self->_platterView, v9);
  v64 = 0u;
  memset(&v65, 0, sizeof(v65));
  v63 = 0u;
  memset(&v62, 0, sizeof(v62));
  [(_UIDatePickerOverlayPresentation *)self _computedLayoutForPlatterView:v9];
  [(UIView *)v9 setCenter:v63];
  [(_UIDatePickerOverlayPlatterView *)v9 setContentBounds:*&v62.origin, *&v62.size];
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self activeDatePicker];
  _style = [activeDatePicker _style];

  [_style overlayPlatterInitialScale];
  v14 = v13;
  CGAffineTransformMakeScale(&v61, v13, v13);
  v60 = v61;
  [(UIView *)v9 setTransform:&v60];
  [_style overlayPlatterInitialHeight];
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
  contentView2 = [view contentView];
  v60 = v59;
  [contentView2 setTransform:&v60];

  [view bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  contentView3 = [view contentView];
  [contentView3 frame];
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

  contentView4 = [view contentView];
  [contentView4 setHitTestInsets:{-v47, -rect_24, -rect_16, -v38}];

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

- (void)_transitionToDatePicker:(id)picker
{
  pickerCopy = picker;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__234;
  v45 = __Block_byref_object_dispose__234;
  platterView = [(_UIDatePickerOverlayPresentation *)self platterView];
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = __Block_byref_object_copy__234;
  v39[4] = __Block_byref_object_dispose__234;
  containerViewController = [(_UIDatePickerOverlayPresentation *)self containerViewController];
  view = [containerViewController view];

  [v42[5] prepareDatePickerTransitionWithDatePicker:pickerCopy];
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
  dismissHandler = [(_UIDatePickerOverlayPresentation *)self dismissHandler];

  if (dismissHandler)
  {
    dismissHandler2 = [(_UIDatePickerOverlayPresentation *)self dismissHandler];
    dismissHandler2[2](dismissHandler2, 1);
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
  platterView = [(_UIDatePickerOverlayPresentation *)self platterView];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  [(_UIDatePickerOverlayPresentation *)self _computedLayoutForPlatterView:platterView];
  [platterView setContentBounds:{v4, v5}];
  [platterView setBounds:{v4, v5}];
  [platterView setCenter:v6];
  [platterView layoutIfNeeded];
}

- (_UIDatePickerOverlayPlatterLayout)_computedLayoutForPlatterView:(SEL)view
{
  v6 = a4;
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self activeDatePicker];
  _style = [activeDatePicker _style];

  v9 = [_UIContextMenuLayoutArbiter alloc];
  containerViewController = [(_UIDatePickerOverlayPresentation *)self containerViewController];
  view = [containerViewController view];
  v12 = [(_UIContextMenuLayoutArbiter *)v9 initWithContainerView:view layout:1];

  v13 = objc_opt_new();
  [(_UIDatePickerOverlayPresentation *)self resolvedSourceRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sourceView = [(_UIDatePickerOverlayPresentation *)self sourceView];
  containerViewController2 = [(_UIDatePickerOverlayPresentation *)self containerViewController];
  view2 = [containerViewController2 view];
  [sourceView convertRect:view2 toView:{v15, v17, v19, v21}];
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
  [_style overlayPlatterDefaultSpacing];
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
  alignment = [(_UIDatePickerOverlayPresentation *)self alignment];
  v4 = 1;
  if (alignment > 3)
  {
    if (alignment == 4)
    {
      sourceView = [(_UIDatePickerOverlayPresentation *)self sourceView];
      v7 = sourceView[13] >> 21;
    }

    else
    {
      if (alignment != 5)
      {
        return v4;
      }

      sourceView = [(_UIDatePickerOverlayPresentation *)self sourceView];
      LODWORD(v7) = ~(*(sourceView + 26) >> 21);
    }

    v4 = v7 & 2;

    return v4;
  }

  v5 = 2;
  if (alignment != 2)
  {
    v5 = 1;
  }

  if (alignment == 1)
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
  _overlayAlignment = [(_UIDatePickerOverlayPresentation *)self _overlayAlignment];
  v3 = 2;
  if (_overlayAlignment == 2)
  {
    v3 = 8;
  }

  if (_overlayAlignment == 1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (CGRect)_adjustedFrameForInputSize:(CGSize)size outputFrame:(CGRect)frame
{
  v4 = frame.origin.x - (size.width - frame.size.width) * 0.5;
  if (frame.size.width == size.width)
  {
    x = frame.origin.x;
  }

  else
  {
    frame.size.width = size.width;
    x = v4;
  }

  v6 = frame.origin.y - (size.height - frame.size.height) * 0.5;
  if (frame.size.height == size.height)
  {
    y = frame.origin.y;
  }

  else
  {
    frame.size.height = size.height;
    y = v6;
  }

  width = frame.size.width;
  height = frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)_layoutArbiterAnchorAlignmentOffset
{
  activeDatePicker = [(_UIDatePickerOverlayPresentation *)self activeDatePicker];
  _style = [activeDatePicker _style];

  _overlayAlignment = [(_UIDatePickerOverlayPresentation *)self _overlayAlignment];
  if (_overlayAlignment == 2)
  {
    [(_UIDatePickerOverlayPresentation *)self resolvedSourceBounds];
    MaxX = CGRectGetMaxX(v27);
    [(_UIDatePickerOverlayPresentation *)self resolvedSourceRect];
    v14 = MaxX - CGRectGetMaxX(v28);
    [_style overlayPlatterDefaultSpacing];
    v6 = v14 - v15;
    if ([(_UIDatePickerOverlayPresentation *)self overlayAnchor]== 1)
    {
      sourceView = [(_UIDatePickerOverlayPresentation *)self sourceView];
      [sourceView layoutMargins];
      v6 = v6 - v16;
      goto LABEL_9;
    }
  }

  else if (_overlayAlignment == 1)
  {
    [(_UIDatePickerOverlayPresentation *)self resolvedSourceBounds];
    MidX = CGRectGetMidX(v25);
    [(_UIDatePickerOverlayPresentation *)self resolvedSourceRect];
    v6 = MidX - CGRectGetMidX(v26);
  }

  else
  {
    v6 = 0.0;
    if (!_overlayAlignment)
    {
      [(_UIDatePickerOverlayPresentation *)self resolvedSourceBounds];
      MinX = CGRectGetMinX(v23);
      [(_UIDatePickerOverlayPresentation *)self resolvedSourceRect];
      v8 = MinX - CGRectGetMinX(v24);
      [_style overlayPlatterDefaultSpacing];
      v6 = v8 + v9;
      if ([(_UIDatePickerOverlayPresentation *)self overlayAnchor]== 1)
      {
        sourceView = [(_UIDatePickerOverlayPresentation *)self sourceView];
        [sourceView layoutMargins];
        v6 = v6 + v11;
LABEL_9:
      }
    }
  }

  sourceView2 = [(_UIDatePickerOverlayPresentation *)self sourceView];
  traitCollection = [sourceView2 traitCollection];
  [traitCollection displayScale];
  UIRoundToScale(v6, v19);
  v21 = v20;

  return v21;
}

- (CGPoint)_normalizedSourcePointForAnchorPoint:(CGPoint)point menuFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = point.y;
  v7 = frame.origin.x + frame.size.width * 0.5;
  v8 = frame.origin.y + frame.size.height * 0.5;
  v9 = point.x + -0.5;
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = frame.size.width;
  v14.size.height = frame.size.height;
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

- (CGPoint)_adjustedAnchorPointForFrame:(CGRect)frame alignment:(unint64_t)alignment anchorPoint:(CGPoint)point
{
  width = frame.size.width;
  y = point.y;
  x = point.x;
  height = frame.size.height;
  v8 = frame.origin.y;
  v9 = frame.origin.x;
  [(_UIDatePickerOverlayPresentation *)self resolvedSourceRect];
  v12 = v11;
  v14 = v13;
  [(_UIDatePickerOverlayPresentation *)self resolvedSourceBounds];
  v16 = v15;
  v18 = v17;
  if (alignment <= 3)
  {
    if (alignment != 1)
    {
      if (alignment != 2)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_7:
    v19 = v12 + v14 * 0.5;
    _overlayAlignment = [(_UIDatePickerOverlayPresentation *)self _overlayAlignment];
    switch(_overlayAlignment)
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

  if (alignment == 8)
  {
LABEL_11:
    containerViewController = [(_UIDatePickerOverlayPresentation *)self containerViewController];
    view = [containerViewController view];

    sourceView = [(_UIDatePickerOverlayPresentation *)self sourceView];
    [(_UIDatePickerOverlayPresentation *)self resolvedSourceRect];
    [sourceView convertPoint:view toView:{v25 + v24 * 0.5, v27 + v26 * 0.5}];
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

  if (alignment == 4)
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

- (void)animatePresentWithAnimations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76___UIDatePickerOverlayPresentation_animatePresentWithAnimations_completion___block_invoke;
  v7[3] = &unk_1E70F0F78;
  v8 = animationsCopy;
  v6 = animationsCopy;
  [UIView _animateUsingSpringWithDampingRatio:1 response:v7 tracking:completion dampingRatioSmoothing:0.8 responseSmoothing:0.32 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
}

- (void)animateTransitionWithAnimations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79___UIDatePickerOverlayPresentation_animateTransitionWithAnimations_completion___block_invoke;
  v7[3] = &unk_1E70F0F78;
  v8 = animationsCopy;
  v6 = animationsCopy;
  [UIView _animateUsingSpringWithDampingRatio:0 response:v7 tracking:completion dampingRatioSmoothing:1.0 responseSmoothing:0.25 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
}

- (void)animateDismissalWithAnimations:(id)animations completion:(id)completion
{
  animationsCopy = animations;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78___UIDatePickerOverlayPresentation_animateDismissalWithAnimations_completion___block_invoke;
  v7[3] = &unk_1E70F0F78;
  v8 = animationsCopy;
  v6 = animationsCopy;
  [UIView _animateUsingSpringWithDampingRatio:0 response:v7 tracking:completion dampingRatioSmoothing:0.85 responseSmoothing:0.35 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
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