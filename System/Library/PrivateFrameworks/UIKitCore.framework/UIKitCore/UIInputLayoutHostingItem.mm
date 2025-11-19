@interface UIInputLayoutHostingItem
- (BOOL)needsAssistantHost;
- (BOOL)stateChangeRequiresBottomConstraintChange:(id)a3;
- (CGAffineTransform)animationTransformForState:(SEL)a3;
- (CGPoint)persistentOffset;
- (CGPoint)positionConstraintConstant;
- (CGRect)notificationsFrame;
- (CGRect)trackingCoordinatorFrame;
- (CGRect)visibleFrame;
- (CGSize)sizeForVisualState:(int64_t)a3;
- (UIInputLayoutHostingItem)initWithContainer:(id)a3;
- (UIInputLayoutHostingItem)initWithInputViewSet:(id)a3 container:(id)a4;
- (UIInputWindowControllerHosting)hosting;
- (UIView)hostView;
- (double)bottomPaddingForOrientation:(int64_t)a3;
- (double)inputAssistantViewHeight;
- (id)animatedAssistantView;
- (id)animatedInputView;
- (id)constraintsForView:(id)a3 embeddedInGuide:(id)a4 insets:(UIEdgeInsets)a5 identifier:(id)a6;
- (id)constraintsForView:(id)a3 embeddedInView:(id)a4 insets:(UIEdgeInsets)a5;
- (id)createItemHostView;
- (id)inputAccessoryView;
- (id)inputAccessoryViewController;
- (id)inputAssistantView;
- (id)inputAssistantViewController;
- (id)inputView;
- (id)inputViewController;
- (void)_updateBackdropViews;
- (void)addManualHeightForAssistant:(id)a3;
- (void)addManualHeightForInputView:(id)a3;
- (void)animatingTransitionFromState:(int64_t)a3 toState:(int64_t)a4 animationType:(int64_t)a5 totalDuration:(double)a6;
- (void)buildContainerConstraintsIfNeeded;
- (void)changeConstraintsForState:(id)a3 animated:(BOOL)a4;
- (void)clearInputAccessoryViewEdgeConstraints;
- (void)clearInputViewEdgeConstraints;
- (void)completeTransition:(id)a3 withInfo:(id)a4;
- (void)constrainGuidesIfNeeded;
- (void)createBackdropViewIfNeeded;
- (void)createHostForAssistantIfNeeded;
- (void)didFinishTranslationFromPlacement:(id)a3 to:(id)a4;
- (void)disableViewSizingConstraints:(unint64_t)a3 forNewView:(id)a4;
- (void)finishedTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5;
- (void)hideBackdrop:(BOOL)a3;
- (void)prepareAssistantHostIfNeededForCompact:(BOOL)a3;
- (void)prepareForTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5;
- (void)prepareTranslationFromPlacement:(id)a3 to:(id)a4;
- (void)removeInputAssistantHostView;
- (void)resetInputViewVisibility;
- (void)setAccessoryViewVisible:(BOOL)a3 delay:(double)a4;
- (void)setHideInputView:(BOOL)a3;
- (void)setHideInputViewBackdrops:(BOOL)a3;
- (void)setInputAccessoryBackdropView:(id)a3;
- (void)setInputAccessoryView:(id)a3;
- (void)setInputAssistantView:(id)a3;
- (void)setInputView:(id)a3;
- (void)trackPinch:(id)a3;
- (void)transitioningToState:(int64_t)a3 animationType:(int64_t)a4 completionPercentage:(double)a5;
- (void)updateHeightForAccessory:(id)a3;
- (void)updateInputAccessoryBackdropView;
- (void)updateInputBackdropView;
- (void)updateInputBackdropViewVisibility;
- (void)updateInputViewSet:(id)a3;
- (void)updateKeyboardDockViewVisibility;
- (void)updateTransition:(id)a3 withInfo:(id)a4;
- (void)updateViewSizingConstraints;
- (void)updateVisibilityConstraintsForPlacement:(id)a3;
- (void)willBeginTranslationFromPlacement:(id)a3 to:(id)a4;
@end

@implementation UIInputLayoutHostingItem

- (void)buildContainerConstraintsIfNeeded
{
  v46[4] = *MEMORY[0x1E69E9840];
  v3 = [(UIInputLayoutHostingItem *)self bottomMostGuideConstraint];
  if (!v3 || (v4 = v3, [(UIInputLayoutHostingItem *)self leftConstraint], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    v6 = [(UIInputLayoutHostingItem *)self containerView];
    v7 = [v6 assistantLayoutGuide];
    v8 = [v7 bottomAnchor];
    v9 = [(UIInputWindowControllerHostingItem *)self ownerView];
    v10 = [v9 bottomAnchor];
    v11 = [v8 constraintEqualToAnchor:v10];
    [(UIInputLayoutHostingItem *)self setBottomMostGuideConstraint:v11];

    v12 = [(UIInputLayoutHostingItem *)self bottomMostGuideConstraint];
    [v12 setIdentifier:@"bottomMostGuide.bottom"];

    v13 = [(UIInputLayoutHostingItem *)self containerView];
    v14 = [v13 assistantLayoutGuide];
    v15 = [v14 topAnchor];
    v16 = [(UIInputLayoutHostingItem *)self containerView];
    v17 = [v16 aboveAssistantLayoutGuide];
    v18 = [v17 bottomAnchor];
    v19 = [v15 constraintEqualToAnchor:v18];
    [(UIInputLayoutHostingItem *)self setAssistantTopConstraint:v19];

    v20 = [(UIInputLayoutHostingItem *)self assistantTopConstraint];
    [v20 setIdentifier:@"assistantGuide.topAnchor"];

    v21 = [(UIInputLayoutHostingItem *)self containerView];
    v22 = [v21 leftAnchor];
    v23 = [(UIInputWindowControllerHostingItem *)self ownerView];
    v24 = [v23 leftAnchor];
    v25 = [v22 constraintEqualToAnchor:v24 constant:0.0];
    [(UIInputLayoutHostingItem *)self setLeftConstraint:v25];

    v26 = [(UIInputLayoutHostingItem *)self leftConstraint];
    [v26 setIdentifier:@"containerView.leftAnchor"];

    v27 = [(UIInputWindowControllerHostingItem *)self ownerView];
    v28 = [v27 rightAnchor];
    v29 = [(UIInputLayoutHostingItem *)self containerView];
    v30 = [v29 rightAnchor];
    v31 = [v28 constraintEqualToAnchor:v30 constant:0.0];
    [(UIInputLayoutHostingItem *)self setRightConstraint:v31];

    v32 = [(UIInputLayoutHostingItem *)self rightConstraint];
    [v32 setIdentifier:@"containerView.rightAnchor"];

    v33 = [(UIInputLayoutHostingItem *)self containerView];
    v34 = [v33 inputViewLayoutGuide];
    v35 = [v34 widthAnchor];
    v36 = [objc_opt_self() mainScreen];
    [v36 bounds];
    v38 = [v35 constraintEqualToConstant:v37];
    [(UIInputLayoutHostingItem *)self setKeyplaneWidthConstraint:v38];

    v39 = [(UIInputLayoutHostingItem *)self keyplaneWidthConstraint];
    [v39 setIdentifier:@"inputViewLayoutGuide.widthAnchor"];

    v40 = MEMORY[0x1E69977A0];
    v41 = [(UIInputLayoutHostingItem *)self bottomMostGuideConstraint];
    v46[0] = v41;
    v42 = [(UIInputLayoutHostingItem *)self assistantTopConstraint];
    v46[1] = v42;
    v43 = [(UIInputLayoutHostingItem *)self rightConstraint];
    v46[2] = v43;
    v44 = [(UIInputLayoutHostingItem *)self leftConstraint];
    v46[3] = v44;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:4];
    [v40 activateConstraints:v45];
  }
}

- (UIInputWindowControllerHosting)hosting
{
  WeakRetained = objc_loadWeakRetained(&self->_hosting);

  return WeakRetained;
}

- (id)inputAssistantView
{
  v3 = [(UIInputLayoutHostingItem *)self hosting];
  if ([v3 item:self isForPurpose:102])
  {
    v4 = [(UIInputLayoutHostingItem *)self inputLayoutAssistantView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UIView)hostView
{
  containerView = self->_containerView;
  if (!containerView)
  {
    v4 = [UIKeyboardItemContainerView alloc];
    v5 = [(UIKeyboardItemContainerView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_containerView;
    self->_containerView = v5;

    [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    containerView = self->_containerView;
  }

  return containerView;
}

- (void)constrainGuidesIfNeeded
{
  v3 = [(UIInputLayoutHostingItem *)self containerView];
  v4 = [v3 superview];
  v5 = [(UIInputWindowControllerHostingItem *)self ownerView];
  v6 = v5;
  if (v4 == v5)
  {
    v7 = [(UIInputLayoutHostingItem *)self containerView];
    v8 = [v7 guideConstraints];
    v9 = [v8 firstObject];
    v10 = [v9 isActive];

    if (v10)
    {
      return;
    }
  }

  else
  {
  }

  v11 = [(UIInputLayoutHostingItem *)self containerView];
  v12 = [v11 superview];
  v13 = [(UIInputWindowControllerHostingItem *)self ownerView];

  if (v12 != v13)
  {
    v14 = [(UIInputWindowControllerHostingItem *)self ownerView];
    v15 = [(UIInputLayoutHostingItem *)self containerView];
    [v14 addSubview:v15];
  }

  v16 = [(UIInputLayoutHostingItem *)self containerView];
  [v16 constrainGuidesIfNeeded];

  [(UIInputLayoutHostingItem *)self buildContainerConstraintsIfNeeded];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__UIInputLayoutHostingItem_constrainGuidesIfNeeded__block_invoke;
  v17[3] = &unk_1E70F3590;
  v17[4] = self;
  [UIView performWithoutAnimation:v17];
}

void __51__UIInputLayoutHostingItem_constrainGuidesIfNeeded__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) ownerView];
  [v1 layoutIfNeeded];
}

- (id)inputView
{
  v3 = [(UIInputLayoutHostingItem *)self hosting];
  if ([v3 item:self isForPurpose:100])
  {
    v4 = [(UIInputLayoutHostingItem *)self inputLayoutView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)createItemHostView
{
  containerView = self->_containerView;
  if (!containerView)
  {
    v4 = [UIKeyboardItemContainerView alloc];
    v5 = [(UIKeyboardItemContainerView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_containerView;
    self->_containerView = v5;

    [(UIView *)self->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    containerView = self->_containerView;
  }

  return containerView;
}

- (CGRect)notificationsFrame
{
  v3 = [(UIInputWindowControllerHostingItem *)self ownerView];
  v4 = [v3 coordinateSpace];
  v5 = [(UIInputLayoutHostingItem *)self containerView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(UIInputLayoutHostingItem *)self containerView];
  v15 = [v14 coordinateSpace];
  [v4 convertRect:v15 fromCoordinateSpace:{v7, v9, v11, v13}];
  x = v16;
  y = v18;
  width = v20;
  height = v22;

  v24 = [(UIInputLayoutHostingItem *)self currentState];
  LODWORD(v4) = [v24 hasFloatingAssistantView];

  if (v4)
  {
    v25 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [v25 bounds];
    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    v26 = CGRectIntersectsRect(v64, v72);

    if (v26)
    {
      v27 = [(UIInputWindowControllerHostingItem *)self ownerView];
      [v27 bounds];
      v73.origin.x = x;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      v66 = CGRectIntersection(v65, v73);
      x = v66.origin.x;
      y = v66.origin.y;
      width = v66.size.width;
      height = v66.size.height;
    }

    v67.origin.x = x;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    MaxY = CGRectGetMaxY(v67);
    v29 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [v29 bounds];
    v30 = CGRectGetMaxY(v68);

    if (MaxY < v30)
    {
      v31 = [(UIInputWindowControllerHostingItem *)self ownerView];
      [v31 bounds];
      v32 = CGRectGetMaxY(v69);
      v70.origin.x = x;
      v70.origin.y = y;
      v70.size.width = width;
      v70.size.height = height;
      y = v32 - CGRectGetHeight(v70);
    }

    v33 = [(UIInputLayoutHostingItem *)self currentState];
    v34 = [v33 isCompact];

    if (v34)
    {
      goto LABEL_20;
    }

LABEL_15:
    v54 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
    if (v54)
    {
      v55 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
      [v55 constant];
      v57 = v56;
    }

    else
    {
      v55 = [(UIInputLayoutHostingItem *)self inputViewSet];
      v58 = [v55 inputAccessoryView];
      [v58 bounds];
      v57 = v59;
    }

    if (v57 > 0.0)
    {
      height = height + v57;
      y = y - v57;
    }

    goto LABEL_20;
  }

  v35 = [(UIInputLayoutHostingItem *)self currentState];
  v36 = [v35 isDocked];

  if ((v36 & 1) == 0)
  {
    v50 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [v50 bounds];
    y = v51;
    v52 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [v52 bounds];
    width = v53;

    x = 0.0;
    height = 0.0;
    goto LABEL_15;
  }

  v37 = [(UIInputLayoutHostingItem *)self currentState];
  if (![v37 isOffscreen])
  {

    goto LABEL_20;
  }

  v38 = [UIApp _isSpringBoard];

  if ((v38 & 1) == 0)
  {
    v39 = [(UIInputWindowControllerHostingItem *)self ownerView];
    v40 = [v39 keyboardLayoutGuide];
    [v40 layoutFrame];
    x = v41;
    y = v42;
    width = v43;
    height = v44;

    v45 = [(UIInputLayoutHostingItem *)self currentState];
    LOBYTE(v40) = [v45 hasAccessoryView];

    if (v40)
    {
      goto LABEL_15;
    }

    v46 = [(UIInputLayoutHostingItem *)self currentState];
    v47 = [v46 isOffscreen];

    if (v47)
    {
      v48 = [(UIInputLayoutHostingItem *)self containerView];
      [v48 bounds];
      height = v49;
    }
  }

LABEL_20:
  v60 = x;
  v61 = y;
  v62 = width;
  v63 = height;
  result.size.height = v63;
  result.size.width = v62;
  result.origin.y = v61;
  result.origin.x = v60;
  return result;
}

- (void)updateInputBackdropView
{
  [(UIInputLayoutHostingItem *)self createBackdropViewIfNeeded];

  [(UIInputLayoutHostingItem *)self updateInputBackdropViewVisibility];
}

- (void)createBackdropViewIfNeeded
{
  v43[4] = *MEMORY[0x1E69E9840];
  v3 = [(UIInputWindowControllerHostingItem *)self owner];
  v4 = [v3 inputViewSet];
  v5 = [v4 inputView];
  if (!v5)
  {

LABEL_6:
    v14 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [v14 removeFromSuperview];

    v15 = 0;
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [(UIInputWindowControllerHostingItem *)self owner];
  v8 = [v7 inputViewSet];
  v9 = [v8 isInputViewPlaceholder];

  if (v9)
  {
    goto LABEL_6;
  }

  [(UIInputLayoutHostingItem *)self constrainGuidesIfNeeded];
  v10 = [(UIInputLayoutHostingItem *)self standardBackgroundView];

  v11 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v16 = [UIKBInputBackdropView alloc];
    v13 = [(UIKBInputBackdropView *)v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v15 = v13;

  [(UIView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [(UIInputLayoutHostingItem *)self containerView];
  v18 = [v17 _inheritedRenderConfig];
  [(UIKBInputBackdropView *)v15 _setRenderConfig:v18];

  [v15 setAccessibilityIdentifier:@"keyboardBackground"];
  v19 = [(UIInputLayoutHostingItem *)self containerView];
  [v19 addSubview:v15];

  if (!v10 && v15)
  {
    v42 = [(UIInputLayoutHostingItem *)self containerView];
    v41 = [v42 aboveAssistantLayoutGuide];
    v40 = [v41 bottomAnchor];
    v39 = [(UIView *)v15 topAnchor];
    v38 = [v40 constraintEqualToAnchor:v39 constant:0.0];
    v43[0] = v38;
    v37 = [(UIInputLayoutHostingItem *)self containerView];
    v36 = [v37 inputViewLayoutGuide];
    v35 = [v36 leadingAnchor];
    v34 = [(UIView *)v15 leadingAnchor];
    v33 = [v35 constraintEqualToAnchor:v34 constant:0.0];
    v43[1] = v33;
    v31 = [(UIView *)v15 bottomAnchor];
    v32 = [(UIInputLayoutHostingItem *)self containerView];
    v30 = [v32 belowInputLayoutGuide];
    v20 = [v30 bottomAnchor];
    v21 = [v31 constraintEqualToAnchor:v20 constant:0.0];
    v43[2] = v21;
    v22 = [(UIView *)v15 trailingAnchor];
    v23 = [(UIInputLayoutHostingItem *)self containerView];
    v24 = [v23 inputViewLayoutGuide];
    v25 = [v24 trailingAnchor];
    v26 = [v22 constraintEqualToAnchor:v25 constant:0.0];
    v43[3] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
    [(UIInputLayoutHostingItem *)self setBackgroundConstraints:v27];

    v28 = MEMORY[0x1E69977A0];
    v29 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
    [v28 activateConstraints:v29];

    goto LABEL_7;
  }

  if (v10 && !v15)
  {
    goto LABEL_6;
  }

LABEL_7:
  [(UIInputLayoutHostingItem *)self setStandardBackgroundView:v15];
  [(UIInputLayoutHostingItem *)self updateInputBackdropViewVisibility];
}

- (void)updateInputBackdropViewVisibility
{
  v3 = [(UIInputLayoutHostingItem *)self inputLayoutView];
  if (v3 && (v4 = v3, -[UIInputLayoutHostingItem inputViewSet](self, "inputViewSet"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isInputViewPlaceholder], v5, v4, (v6 & 1) == 0))
  {
    v7 = [(UIInputLayoutHostingItem *)self containerView];
    v8 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [v7 sendSubviewToBack:v8];

    v9 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [v9 setHidden:0];

    v10 = [(UIInputLayoutHostingItem *)self currentState];
    LODWORD(v8) = [v10 isFloating];

    v11 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
    v12 = [v11 objectAtIndexedSubscript:2];
    [v12 constant];
    v14 = v13;

    if (v8)
    {
      if (v14 != 0.0)
      {
        return;
      }

      +[UIKeyboardPopoverContainer contentInsets];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v24 = [v23 objectAtIndexedSubscript:0];
      [v24 setConstant:v16];

      v25 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v26 = [v25 objectAtIndexedSubscript:1];
      [v26 setConstant:v18];

      v27 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v28 = [v27 objectAtIndexedSubscript:2];
      [v28 setConstant:v20];

      v29 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v30 = [v29 objectAtIndexedSubscript:3];
      [v30 setConstant:v22];

      v41 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
      +[UIKeyboardPopoverContainer cornerRadius];
      v32 = v41;
    }

    else
    {
      if (v14 <= 0.0)
      {
        return;
      }

      v33 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v34 = [v33 objectAtIndexedSubscript:0];
      [v34 setConstant:0.0];

      v35 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v36 = [v35 objectAtIndexedSubscript:1];
      [v36 setConstant:0.0];

      v37 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v38 = [v37 objectAtIndexedSubscript:2];
      [v38 setConstant:0.0];

      v39 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v40 = [v39 objectAtIndexedSubscript:3];
      [v40 setConstant:0.0];

      v32 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
      v31 = 0.0;
      v41 = v32;
    }

    [v32 updateCornersWithRadius:v31];
  }

  else
  {
    v41 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [v41 setHidden:1];
  }
}

- (void)updateKeyboardDockViewVisibility
{
  v33.receiver = self;
  v33.super_class = UIInputLayoutHostingItem;
  [(UIInputWindowControllerHostingItem *)&v33 updateKeyboardDockViewVisibility];
  v3 = [(UIInputWindowControllerHostingItem *)self dockView];
  v4 = [v3 superview];

  if (v4)
  {
    v5 = [(UIInputLayoutHostingItem *)self dockViewEmbedConstraints];
    if (v5)
    {
    }

    else
    {
      v22 = [(UIInputLayoutHostingItem *)self inputLayoutView];
      if (v22)
      {
        v23 = v22;
        v24 = [(UIInputLayoutHostingItem *)self inputViewSet];
        v25 = [v24 isInputViewPlaceholder];

        if ((v25 & 1) == 0)
        {
          v26 = [(UIInputWindowControllerHostingItem *)self dockView];
          [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

          v27 = [(UIInputWindowControllerHostingItem *)self dockView];
          v28 = [(UIInputLayoutHostingItem *)self containerView];
          v29 = [v28 belowInputLayoutGuide];
          v30 = [(UIInputLayoutHostingItem *)self constraintsForView:v27 embeddedInGuide:v29 insets:@"DockView" identifier:0.0, 0.0, 0.0, 0.0];
          [(UIInputLayoutHostingItem *)self setDockViewEmbedConstraints:v30];

          v31 = MEMORY[0x1E69977A0];
          v32 = [(UIInputLayoutHostingItem *)self dockViewEmbedConstraints];
          [v31 activateConstraints:v32];
        }
      }
    }
  }

  else
  {
    v6 = MEMORY[0x1E69977A0];
    v7 = [(UIInputLayoutHostingItem *)self dockViewEmbedConstraints];
    [v6 deactivateConstraints:v7];

    [(UIInputLayoutHostingItem *)self setDockViewEmbedConstraints:0];
  }

  v8 = [(UIInputLayoutHostingItem *)self dockHeight];

  if (!v8)
  {
    v9 = [(UIInputLayoutHostingItem *)self containerView];
    v10 = [v9 belowInputLayoutGuide];
    v11 = [v10 heightAnchor];
    v12 = [v11 constraintEqualToConstant:0.0];
    [(UIInputLayoutHostingItem *)self setDockHeight:v12];

    v13 = [(UIInputLayoutHostingItem *)self dockHeight];
    [v13 setActive:1];
  }

  v14 = [(UIInputLayoutHostingItem *)self inputLayoutView];
  if (v14 && (v15 = v14, -[UIInputLayoutHostingItem inputViewSet](self, "inputViewSet"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isInputViewPlaceholder], v16, v15, (v17 & 1) == 0))
  {
    v18 = [(UIInputWindowControllerHostingItem *)self owner];
    -[UIInputLayoutHostingItem bottomPaddingForOrientation:](self, "bottomPaddingForOrientation:", [v18 keyboardOrientation]);
    v20 = v19;
    v21 = [(UIInputLayoutHostingItem *)self dockHeight];
    [v21 setConstant:v20];
  }

  else
  {
    v18 = [(UIInputLayoutHostingItem *)self dockHeight];
    [v18 setConstant:0.0];
  }
}

- (CGRect)visibleFrame
{
  v3 = [(UIInputLayoutHostingItem *)self containerView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (-[UIInputLayoutHostingItem needsAssistantHost](self, "needsAssistantHost") && (-[UIInputLayoutHostingItem inputLayoutAssistantView](self, "inputLayoutAssistantView"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isHidden], v12, (v13 & 1) == 0))
  {
    v24 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [(TUIInputAssistantHostView *)self->_inputAssistantHostView frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [(UIInputLayoutHostingItem *)self containerView];
    [v24 convertRect:v33 fromView:{v26, v28, v30, v32}];
    v5 = v34;
    v7 = v35;
    v9 = v36;
    v11 = v37;

    v46.origin.x = v5;
    v46.origin.y = v7;
    v46.size.width = v9;
    v46.size.height = v11;
    MaxY = CGRectGetMaxY(v46);
    v39 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [v39 bounds];
    v40 = CGRectGetMaxY(v47);

    if (MaxY < v40)
    {
      v18 = [(UIInputWindowControllerHostingItem *)self ownerView];
      [v18 bounds];
      v41 = CGRectGetMaxY(v48);
      v49.origin.x = v5;
      v49.origin.y = v7;
      v49.size.width = v9;
      v49.size.height = v11;
      v7 = v41 - CGRectGetHeight(v49);
      goto LABEL_8;
    }
  }

  else
  {
    v14 = [(UIInputLayoutHostingItem *)self inputAccessoryView];
    if (v14)
    {
      v15 = v14;
      v16 = [(UIInputLayoutHostingItem *)self inputViewSet];
      v17 = [v16 isInputAccessoryViewPlaceholder];

      if ((v17 & 1) == 0)
      {
        v18 = [(UIInputWindowControllerHostingItem *)self ownerView];
        v19 = [v18 keyboardLayoutGuide];
        [v19 layoutFrame];
        v5 = v20;
        v7 = v21;
        v9 = v22;
        v11 = v23;

LABEL_8:
      }
    }
  }

  v42 = v5;
  v43 = v7;
  v44 = v9;
  v45 = v11;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (id)animatedAssistantView
{
  if ([(UIInputWindowControllerHostingItem *)self assistantHostCanAnimate]&& (inputAssistantHostView = self->_inputAssistantHostView) != 0)
  {
    v4 = inputAssistantHostView;
  }

  else
  {
    v5 = [(UIInputLayoutHostingItem *)self inputAssistantViewController];
    v4 = [v5 animatableElement];
  }

  return v4;
}

- (id)inputAssistantViewController
{
  v3 = [(UIInputLayoutHostingItem *)self hosting];
  if ([v3 item:self isForPurpose:102])
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 _inputAssistantViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateBackdropViews
{
  [(UIInputLayoutHostingItem *)self createBackdropViewIfNeeded];
  [(UIInputLayoutHostingItem *)self updateInputBackdropViewVisibility];
  v3.receiver = self;
  v3.super_class = UIInputLayoutHostingItem;
  [(UIInputWindowControllerHostingItem *)&v3 _updateBackdropViews];
}

- (void)clearInputViewEdgeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  v4 = [(UIInputLayoutHostingItem *)self inputViewEmbedConstraints];
  [v3 deactivateConstraints:v4];

  [(UIInputLayoutHostingItem *)self setInputViewEmbedConstraints:0];
}

- (void)resetInputViewVisibility
{
  v3 = [(UIInputLayoutHostingItem *)self inputViewSet];
  v2 = [v3 inputView];
  [v2 setAlpha:1.0];
}

- (void)updateInputAccessoryBackdropView
{
  v32 = [(UIInputLayoutHostingItem *)self inputViewSet];
  v3 = [(UIInputLayoutHostingItem *)self inputAccessoryView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(UIInputLayoutHostingItem *)self inputAccessoryView];
    if ([v5 _suppressBackgroundStyling])
    {
      v6 = 0;
    }

    else
    {
      [v5 backgroundEdgeInsets];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v15 = [v32 inputAccessoryView];
      [v15 frame];
      v17 = v16;
      v19 = v18;

      v20 = [(UIInputLayoutHostingItem *)self containerView];
      [v20 frame];
      v22 = v21;

      v23 = [(UIInputLayoutHostingItem *)self containerView];
      [v23 frame];
      v25 = v24;

      v26 = [(UIInputLayoutHostingItem *)self _inputAccessoryBackdropView];
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = [[UIKBInputBackdropView alloc] initWithFrame:v10 + v22, v8 + v17, v25 - (v14 + v10), v19 - (v8 + v12)];
      }

      v6 = v28;

      [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      v29 = [(UIInputWindowControllerHostingItem *)self owner];
      v30 = [v29 view];
      v31 = [v30 _inheritedRenderConfig];
      [(UIKBInputBackdropView *)v6 _setRenderConfig:v31];

      v5 = v6;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  [(UIInputLayoutHostingItem *)self setInputAccessoryBackdropView:v6];
}

- (UIInputLayoutHostingItem)initWithContainer:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = UIInputLayoutHostingItem;
  v5 = [(UIInputWindowControllerHostingItem *)&v10 initWithContainer:v4];
  if (v5)
  {
    v6 = [UIKeyboardItemContainerView alloc];
    v7 = [(UIKeyboardItemContainerView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    containerView = v5->_containerView;
    v5->_containerView = v7;

    [(UIView *)v5->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeWeak(&v5->_hosting, v4);
  }

  return v5;
}

- (UIInputLayoutHostingItem)initWithInputViewSet:(id)a3 container:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = UIInputLayoutHostingItem;
  v8 = [(UIInputWindowControllerHostingItem *)&v15 initWithContainer:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_hosting, v7);
    v10 = [(UIInputWindowControllerHostingItem *)v9 ownerView];
    v11 = [v10 keyboardLayoutGuide];
    [v11 setUsesBottomSafeArea:0];

    v12 = [(UIInputWindowControllerHostingItem *)v9 ownerView];
    v13 = [v12 keyboardLayoutGuide];
    [v13 followUndockedKeyboardOfTypes:4];

    [(UIInputLayoutHostingItem *)v9 updateInputViewSet:v6];
  }

  return v9;
}

- (void)updateInputViewSet:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(UIInputLayoutHostingItem *)self setInputViewSet:v4];
  [(UIInputLayoutHostingItem *)self constrainGuidesIfNeeded];
  v5 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "updateInputViewSet: %@", &v8, 0xCu);
  }

  if (v4)
  {
    if ([v4 isInputViewPlaceholder])
    {
      v6 = 1;
    }

    else
    {
      v7 = [(UIInputLayoutHostingItem *)self currentState];
      v6 = [v7 hasFloatingAssistantView];
    }

    [(UIInputLayoutHostingItem *)self hideBackdrop:v6];
  }
}

- (CGPoint)positionConstraintConstant
{
  v3 = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
  [v3 constant];
  v5 = v4;

  v6 = [(UIInputLayoutHostingItem *)self leftConstraint];
  [v6 constant];
  v8 = v7;
  if (v5 <= 0.0)
  {
    [(UIInputLayoutHostingItem *)self bottomMostGuideConstraint];
  }

  else
  {
    [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
  }
  v9 = ;
  [v9 constant];
  v11 = v10;

  v12 = v8;
  v13 = v11;
  result.y = v13;
  result.x = v12;
  return result;
}

- (void)hideBackdrop:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIInputLayoutHostingItem *)self standardBackgroundView];

  if (v5)
  {
    v6 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [v6 setHidden:v3];
  }

  v7 = [(UIInputLayoutHostingItem *)self platterView];

  if (v7)
  {
    v8 = [(UIInputLayoutHostingItem *)self platterView];
    [v8 setHidden:v3];
  }
}

- (void)changeConstraintsForState:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __63__UIInputLayoutHostingItem_changeConstraintsForState_animated___block_invoke;
  v13 = &unk_1E7129A58;
  v14 = self;
  v6 = v5;
  v15 = v6;
  v7 = _Block_copy(&v10);
  v8 = [(UIInputLayoutHostingItem *)self currentState:v10];
  v9 = [(UIInputLayoutHostingItem *)self stateChangeRequiresBottomConstraintChange:v6];
  [(UIInputLayoutHostingItem *)self setCurrentState:v6];
  if (v9)
  {
    v7[2](v7, v6);
  }
}

void __63__UIInputLayoutHostingItem_changeConstraintsForState_animated___block_invoke(uint64_t a1, void *a2)
{
  v66 = a2;
  v3 = [*(a1 + 32) bottomMostGuideConstraint];
  [v3 setActive:0];

  [*(a1 + 32) setPersistentOffset:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  if ([v66 hasFloatingAssistantView])
  {
    v4 = *(a1 + 32);
    v5 = [v4 inputLayoutAssistantView];
    [v4 addManualHeightForAssistant:v5];

    if ([v66 hasAccessoryView])
    {
      v6 = [v66 isCompact];
      v7 = [*(a1 + 32) assistantTopConstraint];
      [v7 setActive:v6 ^ 1u];

      v8 = [*(a1 + 32) accessoryToGuideConstraint];
      if (!v8)
      {
        goto LABEL_14;
      }

      v9 = v8;
      v10 = [*(a1 + 32) inputAccessoryView];
      v11 = [*(a1 + 32) ownerView];
      v12 = [v10 isDescendantOfView:v11];

      if (!v12)
      {
        goto LABEL_14;
      }

      v13 = [*(a1 + 32) accessoryToGuideConstraint];
    }

    else
    {
      v13 = [*(a1 + 32) assistantTopConstraint];
    }

    v30 = v13;
    [v13 setActive:1];

LABEL_14:
    v26 = [*(a1 + 32) ownerView];
    v27 = [v26 bottomAnchor];
    v28 = [*(a1 + 32) containerView];
    v29 = [v28 inputViewLayoutGuide];
    goto LABEL_15;
  }

  v14 = [v66 isOffscreen];
  v15 = *(a1 + 32);
  if (v14)
  {
    v16 = [v15 assistantSpacingConstraint];
    [v16 setConstant:0.0];

    v17 = [v66 hasAccessoryView];
    v18 = [*(a1 + 32) assistantTopConstraint];
    v19 = v18;
    if (!v17)
    {
      [v18 setActive:1];

      v54 = [*(a1 + 32) accessoryToGuideConstraint];

      if (v54)
      {
        v55 = [*(a1 + 32) accessoryToGuideConstraint];
        [v55 setActive:0];
      }

      v26 = [*(a1 + 32) containerView];
      v27 = [v26 topAnchor];
      v28 = [*(a1 + 32) ownerView];
      v31 = [v28 bottomAnchor];
      v32 = [v27 constraintEqualToAnchor:v31];
      [*(a1 + 32) setBottomMostGuideConstraint:v32];
      goto LABEL_16;
    }

    [v18 setActive:0];

    v20 = [*(a1 + 32) accessoryToGuideConstraint];
    if (v20)
    {
      v21 = v20;
      v22 = [*(a1 + 32) inputAccessoryView];
      v23 = [*(a1 + 32) ownerView];
      v24 = [v22 isDescendantOfView:v23];

      if (v24)
      {
        v25 = [*(a1 + 32) accessoryToGuideConstraint];
        [v25 setActive:1];
      }
    }

    v26 = [*(a1 + 32) ownerView];
    v27 = [v26 bottomAnchor];
    v28 = [*(a1 + 32) containerView];
    v29 = [v28 assistantLayoutGuide];
LABEL_15:
    v31 = v29;
    v32 = [v29 topAnchor];
    v33 = [v27 constraintEqualToAnchor:v32];
    [*(a1 + 32) setBottomMostGuideConstraint:v33];

LABEL_16:
    goto LABEL_31;
  }

  v34 = [v15 inputAccessoryView];
  v35 = [v34 window];
  v36 = [*(a1 + 32) containerView];
  v37 = [v36 window];
  v38 = [v35 isEqual:v37];

  v39 = [*(a1 + 32) accessoryToGuideConstraint];
  if (v39)
  {
    v40 = v39;
    v41 = [*(a1 + 32) inputAccessoryView];
    v42 = [v41 superview];
    v43 = (v42 != 0) & v38;

    if (v43 == 1)
    {
      v44 = [*(a1 + 32) accessoryToGuideConstraint];
      [v44 setActive:1];
    }
  }

  v45 = [*(a1 + 32) assistantTopConstraint];
  [v45 setActive:1];

  v46 = [*(a1 + 32) assistantSpacingConstraint];
  [v46 setConstant:0.0];

  v47 = [*(a1 + 32) ownerView];
  v48 = [v47 bottomAnchor];
  v49 = [*(a1 + 32) containerView];
  v50 = [v49 bottomAnchor];
  v51 = [v48 constraintEqualToAnchor:v50];
  [*(a1 + 32) setBottomMostGuideConstraint:v51];

  if ([*(a1 + 40) isDocked])
  {
    goto LABEL_29;
  }

  if ([*(a1 + 40) isFloating])
  {
    +[UIKeyboardImpl floatingPersistentOffset];
  }

  else
  {
    +[UIKeyboardImpl persistentOffset];
  }

  v56 = v52;
  v57 = v53;
  [*(a1 + 32) setPersistentOffset:?];
  v58 = [*(a1 + 32) bottomMostGuideConstraint];
  [v58 setConstant:v57];

  if (![*(a1 + 40) isFloating] || (objc_msgSend(*(a1 + 32), "inputViewSet"), v59 = objc_claimAutoreleasedReturnValue(), v60 = objc_msgSend(v59, "isInputViewPlaceholder"), v59, (v60 & 1) != 0))
  {
LABEL_29:
    v61 = [*(a1 + 32) leftConstraint];
    [v61 setConstant:0.0];

    v62 = [*(a1 + 32) rightConstraint];
    v26 = v62;
    v63 = 1;
  }

  else
  {
    v65 = [*(a1 + 32) leftConstraint];
    [v65 setConstant:v56];

    v62 = [*(a1 + 32) rightConstraint];
    v26 = v62;
    v63 = 0;
  }

  [v62 setActive:v63];
LABEL_31:

  v64 = [*(a1 + 32) bottomMostGuideConstraint];
  [v64 setActive:1];
}

- (BOOL)stateChangeRequiresBottomConstraintChange:(id)a3
{
  v4 = a3;
  v5 = [(UIInputLayoutHostingItem *)self currentState];

  if (!v5)
  {
    goto LABEL_3;
  }

  v6 = [v4 hasFloatingAssistantView];
  v7 = [(UIInputLayoutHostingItem *)self currentState];
  v8 = [v7 hasFloatingAssistantView];

  if (v6 != v8)
  {
    goto LABEL_3;
  }

  if ([v4 isDocked])
  {
    v11 = [(UIInputLayoutHostingItem *)self currentState];
    v12 = [v11 isDocked];

    if (v12)
    {
      goto LABEL_16;
    }
  }

  v13 = [v4 isDocked];
  v14 = [(UIInputLayoutHostingItem *)self currentState];
  if (v13 != [v14 isDocked])
  {
LABEL_8:
    LOBYTE(v9) = 1;
LABEL_9:

    goto LABEL_4;
  }

  v15 = [v4 isFloating];
  v16 = [(UIInputLayoutHostingItem *)self currentState];
  v17 = [v16 isFloating];

  if (v15 != v17)
  {
LABEL_3:
    LOBYTE(v9) = 1;
    goto LABEL_4;
  }

  if ([v4 isFloating])
  {
    +[UIKeyboardImpl floatingPersistentOffset];
  }

  else
  {
    +[UIKeyboardImpl persistentOffset];
  }

  v20 = v18;
  v21 = v19;
  [(UIInputLayoutHostingItem *)self persistentOffset];
  LOBYTE(v9) = 1;
  if (v20 == v23 && v21 == v22)
  {
LABEL_16:
    v24 = [v4 isOffscreen];
    v25 = [(UIInputLayoutHostingItem *)self currentState];
    v26 = [v25 isOffscreen];

    if (v24 == v26)
    {
      v27 = [v4 hasAccessoryView];
      v28 = [(UIInputLayoutHostingItem *)self currentState];
      v29 = [v28 hasAccessoryView];

      if (v27 == v29)
      {
        if (![v4 hasFloatingAssistantView])
        {
          goto LABEL_21;
        }

        v14 = [(UIInputLayoutHostingItem *)self assistantTopConstraint];
        if ([v14 isActive])
        {
          goto LABEL_8;
        }

        v30 = [(UIInputLayoutHostingItem *)self assistantHeight];
        v31 = [v30 isActive];

        if (v31)
        {
LABEL_21:
          if ([v4 hasFloatingAssistantView])
          {
            LOBYTE(v9) = 0;
            goto LABEL_4;
          }

          v14 = [(UIInputLayoutHostingItem *)self assistantTopConstraint];
          v9 = [v14 isActive] ^ 1;
          goto LABEL_9;
        }
      }
    }

    goto LABEL_3;
  }

LABEL_4:

  return v9;
}

- (CGRect)trackingCoordinatorFrame
{
  v3 = [(UIInputWindowControllerHostingItem *)self ownerView];
  v4 = [v3 coordinateSpace];
  v5 = [(UIInputLayoutHostingItem *)self containerView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(UIInputLayoutHostingItem *)self containerView];
  v15 = [v14 coordinateSpace];
  [v4 convertRect:v15 fromCoordinateSpace:{v7, v9, v11, v13}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v65.origin.x = v17;
  v65.origin.y = v19;
  v65.size.width = v21;
  v65.size.height = v23;
  if (CGRectIsEmpty(v65) || (-[UIInputLayoutHostingItem currentState](self, "currentState"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 isOffscreen], v24, v25))
  {
    v26 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [v26 bounds];
    v19 = v27;
    v28 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [v28 bounds];
    v21 = v29;

    v23 = 0.0;
    v17 = 0.0;
    goto LABEL_4;
  }

  v34 = [(UIInputLayoutHostingItem *)self currentState];
  v35 = [v34 hasFloatingAssistantView];

  if (v35)
  {
    v36 = [(UIInputLayoutHostingItem *)self currentState];
    v37 = [v36 hasAccessoryView];
    if (v37)
    {
      v35 = [(UIInputLayoutHostingItem *)self currentState];
      if ([v35 isCompact])
      {
        goto LABEL_12;
      }
    }

    v38 = [(UIInputLayoutHostingItem *)self inputAssistantView];
    v39 = [v38 isHidden];

    if (v37)
    {
    }

    if ((v39 & 1) == 0)
    {
      v36 = [(UIInputWindowControllerHostingItem *)self ownerView];
      v35 = [v36 coordinateSpace];
      v40 = [(UIInputLayoutHostingItem *)self containerView];
      v41 = [v40 assistantLayoutGuide];
      [v41 layoutFrame];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v50 = [(UIInputLayoutHostingItem *)self containerView];
      v51 = [v50 coordinateSpace];
      [v35 convertRect:v51 fromCoordinateSpace:{v43, v45, v47, v49}];
      v17 = v52;
      v19 = v53;
      v21 = v54;
      v23 = v55;

LABEL_12:
    }
  }

  else
  {
    v56 = [(UIInputLayoutHostingItem *)self inputAccessoryView];
    if (v56)
    {
      v57 = v56;
      v58 = [UIApp _isSpringBoard];

      if ((v58 & 1) == 0)
      {
        v59 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
        if (v59)
        {
          v60 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
          [v60 constant];
          v62 = v61;
        }

        else
        {
          v60 = [(UIInputLayoutHostingItem *)self inputViewSet];
          v63 = [v60 inputAccessoryView];
          [v63 bounds];
          v62 = v64;
        }

        v19 = v19 + v62;
        v23 = v23 - v62;
      }
    }
  }

LABEL_4:
  v30 = v17;
  v31 = v19;
  v32 = v21;
  v33 = v23;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (id)inputAccessoryViewController
{
  v3 = [(UIInputLayoutHostingItem *)self hosting];
  if ([v3 item:self isForPurpose:101])
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 _inputAccessoryViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)inputAccessoryView
{
  v3 = [(UIInputLayoutHostingItem *)self hosting];
  if ([v3 item:self isForPurpose:101])
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 _inputAccessoryView];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)inputViewController
{
  v3 = [(UIInputLayoutHostingItem *)self hosting];
  if ([v3 item:self isForPurpose:100])
  {
    v4 = [(UIInputWindowControllerHostingItem *)self owner];
    v5 = [v4 _inputViewController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setInputView:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(UIInputLayoutHostingItem *)self constrainGuidesIfNeeded];
  v6 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v40 = 138412290;
    v41 = v5;
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "setInputView: %@", &v40, 0xCu);
  }

  v7 = self->_inputLayoutView;
  if (self->_inputLayoutView != v5)
  {
    v8 = MEMORY[0x1E69977A0];
    v9 = [(UIInputLayoutHostingItem *)self inputViewEmbedConstraints];
    [v8 deactivateConstraints:v9];

    [(UIInputLayoutHostingItem *)self setInputViewEmbedConstraints:0];
    if (v5)
    {
      [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v5 setAccessibilityIdentifier:@"inputView"];
    }
  }

  objc_storeStrong(&self->_inputLayoutView, a3);
  if (self->_inputLayoutView)
  {
    v10 = [(UIInputLayoutHostingItem *)self inputLayoutAssistantView];
    if (v10 && (v11 = v10, -[UIInputLayoutHostingItem inputLayoutAssistantView](self, "inputLayoutAssistantView"), v12 = objc_claimAutoreleasedReturnValue(), [v12 superview], v13 = objc_claimAutoreleasedReturnValue(), -[UIInputLayoutHostingItem containerView](self, "containerView"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, v11, v13 == v14))
    {
      v15 = [(UIInputLayoutHostingItem *)self containerView];
      inputLayoutView = self->_inputLayoutView;
      v19 = [(UIInputLayoutHostingItem *)self inputLayoutAssistantView];
      [v15 insertSubview:inputLayoutView belowSubview:v19];
    }

    else
    {
      v15 = [(UIInputLayoutHostingItem *)self containerView];
      [v15 addSubview:self->_inputLayoutView];
    }

    v20 = [(UIInputLayoutHostingItem *)self inputViewEmbedConstraints];

    if (!v20)
    {
      v21 = self->_inputLayoutView;
      v22 = [(UIInputLayoutHostingItem *)self containerView];
      v23 = [v22 inputViewLayoutGuide];
      v24 = [(UIInputLayoutHostingItem *)self constraintsForView:v21 embeddedInGuide:v23 insets:@"inputView" identifier:0.0, 0.0, 0.0, 0.0];
      [(UIInputLayoutHostingItem *)self setInputViewEmbedConstraints:v24];
    }

    v25 = MEMORY[0x1E69977A0];
    v26 = [(UIInputLayoutHostingItem *)self inputViewEmbedConstraints];
    [v25 activateConstraints:v26];

    v27 = [(UIInputWindowControllerHostingItem *)self owner];
    [v27 _inputViewPadding];
    v29 = v28;
    v31 = v30;

    v32 = [(UIInputLayoutHostingItem *)self inputViewEmbedConstraints];
    v33 = [v32 objectAtIndexedSubscript:1];
    [v33 setConstant:v29];

    v34 = [(UIInputLayoutHostingItem *)self inputViewEmbedConstraints];
    v35 = [v34 objectAtIndexedSubscript:3];
    [v35 setConstant:v31];

    v36 = [(UIInputLayoutHostingItem *)self containerView];
    [v36 setNeedsLayout];
  }

  else if (v7)
  {
    v16 = MEMORY[0x1E69977A0];
    v17 = [(UIInputLayoutHostingItem *)self inputViewEmbedConstraints];
    [v16 deactivateConstraints:v17];

    [(UIView *)v7 removeFromSuperview];
    [(UIInputLayoutHostingItem *)self setInputViewEmbedConstraints:0];
  }

  v37 = [(UIInputWindowControllerHostingItem *)self owner];
  v38 = [v37 expectedPlacement];
  v39 = [v38 keyboardState];
  -[UIInputLayoutHostingItem setHideInputView:](self, "setHideInputView:", [v39 hasFloatingAssistantView]);
}

- (void)setInputAssistantView:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v57 = v5;
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "setInputAssistantView: %@", buf, 0xCu);
  }

  inputLayoutAssistantView = self->_inputLayoutAssistantView;
  if (inputLayoutAssistantView == v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = inputLayoutAssistantView;
    v9 = MEMORY[0x1E69977A0];
    v10 = [(UIInputLayoutHostingItem *)self assistantViewEmbedConstraints];
    [v9 deactivateConstraints:v10];

    [(UIInputLayoutHostingItem *)self setAssistantViewEmbedConstraints:0];
    v11 = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
    [v11 setActive:0];

    [(UIInputLayoutHostingItem *)self setAssistantSpacingConstraint:0];
    if (v5)
    {
      [(UIView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v5 setAccessibilityIdentifier:@"inputAssistantView"];
    }
  }

  objc_storeStrong(&self->_inputLayoutAssistantView, a3);
  v12 = self->_inputLayoutAssistantView;
  if (v12)
  {
    [(UIView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(UIInputLayoutHostingItem *)self containerView];
    [v13 addSubview:self->_inputLayoutAssistantView];

    v14 = [(UIInputLayoutHostingItem *)self assistantViewEmbedConstraints];

    if (!v14)
    {
      v15 = [(UIView *)self->_inputLayoutAssistantView heightAnchor];
      v16 = [(UIInputLayoutHostingItem *)self containerView];
      [v16 assistantLayoutGuide];
      v17 = v54 = v5;
      [v17 heightAnchor];
      v18 = v53 = v8;
      v19 = [v15 constraintEqualToAnchor:v18];

      v51 = v19;
      [v19 setIdentifier:@"assistantViewHostHeight"];
      v52 = [(UIView *)self->_inputLayoutAssistantView leadingAnchor];
      v20 = [(UIInputLayoutHostingItem *)self containerView];
      v21 = [v20 leadingAnchor];
      v22 = [v52 constraintEqualToAnchor:v21];
      v55[0] = v22;
      v23 = [(UIInputLayoutHostingItem *)self containerView];
      v24 = [v23 trailingAnchor];
      v25 = [(UIView *)self->_inputLayoutAssistantView trailingAnchor];
      v26 = [v24 constraintEqualToAnchor:v25];
      v55[1] = v26;
      v55[2] = v19;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
      [(UIInputLayoutHostingItem *)self setAssistantViewEmbedConstraints:v27];

      v8 = v53;
      v5 = v54;
    }

    v28 = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];

    if (!v28)
    {
      v29 = [(UIInputWindowControllerHostingItem *)self ownerView];
      v30 = [v29 bottomAnchor];
      v31 = [(UIView *)self->_inputLayoutAssistantView bottomAnchor];
      v32 = [v30 constraintEqualToAnchor:v31 constant:0.0];
      [(UIInputLayoutHostingItem *)self setAssistantSpacingConstraint:v32];

      v33 = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
      [v33 setIdentifier:@"assistant.bottomAnchor"];
    }

    v34 = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
    [v34 setActive:1];

    v35 = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
    [v35 setConstant:0.0];

    v36 = [(UIInputLayoutHostingItem *)self assistantViewEmbedConstraints];
    v37 = [v36 firstObject];
    v38 = [v37 isActive];

    if ((v38 & 1) == 0)
    {
      v39 = MEMORY[0x1E69977A0];
      v40 = [(UIInputLayoutHostingItem *)self assistantViewEmbedConstraints];
      [v39 activateConstraints:v40];

      v41 = [(UIInputLayoutHostingItem *)self containerView];
      [v41 layoutIfNeeded];
    }
  }

  [(UIInputLayoutHostingItem *)self addManualHeightForAssistant:self->_inputLayoutAssistantView];
  if (v8)
  {
    [(UIView *)v8 removeFromSuperview];
  }

  v42 = [(UIInputLayoutHostingItem *)self currentState];
  v43 = [v42 hasFloatingAssistantView];

  if (v43)
  {
    v44 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
    v45 = [v44 superview];
    v46 = [(UIInputLayoutHostingItem *)self containerView];

    if (v45 != v46)
    {
      [(UIInputLayoutHostingItem *)self createHostForAssistantIfNeeded];
    }

    v47 = [(UIInputLayoutHostingItem *)self containerView];
    [v47 bringSubviewToFront:self->_inputLayoutAssistantView];

    v48 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
    v49 = [(UIInputLayoutHostingItem *)self currentState];
    [v48 setCompact:{objc_msgSend(v49, "isCompact")}];

    v50 = [(UIInputLayoutHostingItem *)self inputLayoutView];
    [v50 setAlpha:0.0];
  }
}

- (double)inputAssistantViewHeight
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  v4 = [v3 systemInputAssistantViewController];

  v5 = [(UIInputLayoutHostingItem *)self containerView];
  v6 = [v5 traitCollection];
  [v4 preferredHeightForTraitCollection:v6];
  v8 = v7;

  return v8;
}

- (void)setInputAccessoryView:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v67 = v4;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "setInputAccessoryView: %@", buf, 0xCu);
  }

  if (v4)
  {
    v6 = [(UIInputLayoutHostingItem *)self containerView];
    [v6 addSubview:v4];

    v7 = [v4 superview];
    v8 = [(UIInputLayoutHostingItem *)self containerView];

    if (v7 != v8)
    {
      v9 = _UIInputLayoutItemLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "IAV was removed from its superview during addSubview's callbacks", buf, 2u);
      }

      v4 = 0;
      goto LABEL_16;
    }

    v10 = [(UIInputLayoutHostingItem *)self inputViewSet];
    v11 = [v10 isInputAccessoryViewPlaceholder];

    if (v11)
    {
      v56 = [(UIInputLayoutHostingItem *)self containerView];
      v55 = [v56 aboveAssistantLayoutGuide];
      v54 = [v55 heightAnchor];
      v53 = [v4 heightAnchor];
      v63 = [v54 constraintEqualToAnchor:v53];
      v65[0] = v63;
      v12 = [v4 leadingAnchor];
      v61 = [(UIInputLayoutHostingItem *)self containerView];
      [v61 leadingAnchor];
      v60 = v62 = v12;
      v59 = [v12 constraintEqualToAnchor:?];
      v65[1] = v59;
      v58 = [(UIInputLayoutHostingItem *)self containerView];
      v57 = [v58 aboveAssistantLayoutGuide];
      v13 = [v57 bottomAnchor];
      v14 = [v4 bottomAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      v65[2] = v15;
      v16 = [(UIInputLayoutHostingItem *)self containerView];
      v17 = [v16 trailingAnchor];
      v18 = [v4 trailingAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];
      v65[3] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
      [(UIInputLayoutHostingItem *)self setAccessoryEmbedConstraints:v20];

      v21 = v55;
      v22 = v53;

      v23 = v54;
      v24 = v56;
LABEL_15:

      v43 = MEMORY[0x1E69977A0];
      v44 = [(UIInputLayoutHostingItem *)self accessoryEmbedConstraints];
      [v43 activateConstraints:v44];

      [(UIInputLayoutHostingItem *)self updateHeightForAccessory:v4];
      goto LABEL_16;
    }

    if ([UIApp _isSpringBoard])
    {
      v25 = [(UIInputLayoutHostingItem *)self containerView];
      v26 = [v25 inputViewLayoutGuide];
      v27 = [v26 topAnchor];
      v28 = [v4 bottomAnchor];
      v29 = [v27 constraintEqualToAnchor:v28];
      [(UIInputLayoutHostingItem *)self setAccessoryToGuideConstraint:v29];
    }

    else
    {
      v30 = [(UIInputWindowControllerHostingItem *)self ownerView];
      v31 = [v30 keyboardLayoutGuide];
      v32 = [v31 topAnchor];
      v33 = [v4 bottomAnchor];
      v34 = [v32 constraintEqualToAnchor:v33];
      [(UIInputLayoutHostingItem *)self setAccessoryToGuideConstraint:v34];

      v35 = [(UIInputLayoutHostingItem *)self currentState];
      LOBYTE(v31) = [v35 isOffscreen];

      if (v31)
      {
LABEL_14:
        v37 = [(UIInputLayoutHostingItem *)self containerView];
        v38 = [v37 aboveAssistantLayoutGuide];
        v39 = [v38 bottomAnchor];
        v40 = [v4 bottomAnchor];
        v24 = [v39 constraintEqualToAnchor:v40];

        LODWORD(v41) = 1144750080;
        [v24 setPriority:v41];
        v21 = [(UIInputLayoutHostingItem *)self containerView];
        v23 = [v21 aboveAssistantLayoutGuide];
        v22 = [v23 heightAnchor];
        v63 = [v4 heightAnchor];
        v62 = [v22 constraintEqualToAnchor:?];
        v64[0] = v62;
        v42 = [v4 leadingAnchor];
        v60 = [(UIInputLayoutHostingItem *)self containerView];
        [v60 leadingAnchor];
        v59 = v61 = v42;
        v58 = [v42 constraintEqualToAnchor:?];
        v64[1] = v58;
        v64[2] = v24;
        v57 = [(UIInputLayoutHostingItem *)self containerView];
        v13 = [v57 trailingAnchor];
        v14 = [v4 trailingAnchor];
        v15 = [v13 constraintEqualToAnchor:v14];
        v64[3] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
        [(UIInputLayoutHostingItem *)self setAccessoryEmbedConstraints:v16];
        goto LABEL_15;
      }
    }

    v36 = [(UIInputLayoutHostingItem *)self accessoryToGuideConstraint];
    [v36 setActive:1];

    goto LABEL_14;
  }

LABEL_16:
  v45 = [(UIInputLayoutHostingItem *)self currentState];
  v46 = [v45 hasFloatingAssistantView];

  if (v46)
  {
    v47 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
    v48 = [v47 _inheritedRenderConfig];
    v49 = [v48 colorAdaptiveBackground];

    if ((v49 & 1) == 0)
    {
      v50 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
      [v50 setInputAccessoryView:v4];
    }

    v51 = [(UIInputLayoutHostingItem *)self containerView];
    v52 = [(UIInputLayoutHostingItem *)self inputLayoutAssistantView];
    [v51 bringSubviewToFront:v52];
  }
}

- (void)updateViewSizingConstraints
{
  v3 = [(UIInputLayoutHostingItem *)self inputViewSet];
  [(UIInputLayoutHostingItem *)self updateInputViewSet:v3];
}

- (void)setInputAccessoryBackdropView:(id)a3
{
  v30 = a3;
  v5 = self->_inputAccessoryBackdropView;
  objc_storeStrong(&self->_inputAccessoryBackdropView, a3);
  if (self->_inputAccessoryBackdropView)
  {
    v6 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    v7 = [v6 superview];
    v8 = [(UIInputLayoutHostingItem *)self containerView];

    v9 = [(UIInputLayoutHostingItem *)self containerView];
    v10 = v9;
    inputAccessoryBackdropView = self->_inputAccessoryBackdropView;
    if (v7 == v8)
    {
      v14 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
      [v10 insertSubview:inputAccessoryBackdropView aboveSubview:v14];
    }

    else
    {
      [v9 insertSubview:self->_inputAccessoryBackdropView atIndex:0];
    }

    v15 = [(UIInputLayoutHostingItem *)self inputAccessoryView];
    [v15 backgroundEdgeInsets];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = self->_inputAccessoryBackdropView;
    v25 = [(UIInputLayoutHostingItem *)self containerView];
    v26 = [v25 aboveAssistantLayoutGuide];
    v27 = [(UIInputLayoutHostingItem *)self constraintsForView:v24 embeddedInGuide:v26 insets:@"accessoryBackdrop" identifier:v17, v19, v21, v23];
    [(UIInputLayoutHostingItem *)self setAccessoryBackdropConstraints:v27];

    v28 = MEMORY[0x1E69977A0];
    v29 = [(UIInputLayoutHostingItem *)self accessoryBackdropConstraints];
    [v28 activateConstraints:v29];
  }

  else
  {
    v12 = MEMORY[0x1E69977A0];
    v13 = [(UIInputLayoutHostingItem *)self accessoryBackdropConstraints];
    [v12 deactivateConstraints:v13];

    [(UIInputLayoutHostingItem *)self setAccessoryBackdropConstraints:0];
    [(UIView *)v5 removeFromSuperview];
  }
}

- (void)setAccessoryViewVisible:(BOOL)a3 delay:(double)a4
{
  v5 = a3;
  v7 = [(UIInputLayoutHostingItem *)self inputViewSet];
  v8 = [v7 setAccessoryViewVisible:v5 delay:a4];

  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__UIInputLayoutHostingItem_setAccessoryViewVisible_delay___block_invoke;
    v9[3] = &unk_1E70F35E0;
    v9[4] = self;
    v10 = v5;
    [UIView animateWithDuration:50331648 delay:v9 options:0 animations:0.15 completion:a4];
  }
}

- (void)setHideInputViewBackdrops:(BOOL)a3
{
  if (a3)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
  [v5 setAlpha:v4];

  inputAccessoryBackdropView = self->_inputAccessoryBackdropView;

  [(UIView *)inputAccessoryBackdropView setAlpha:v4];
}

- (void)setHideInputView:(BOOL)a3
{
  if (a3)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = [(UIInputLayoutHostingItem *)self inputLayoutView];
  [v4 setAlpha:v3];
}

- (double)bottomPaddingForOrientation:(int64_t)a3
{
  v3 = [(UIInputLayoutHostingItem *)self hosting];
  [v3 _inputViewPadding];
  v5 = v4;

  return v5;
}

- (void)updateVisibilityConstraintsForPlacement:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "updateVisibilityConstraintsForPlacement: %@", buf, 0xCu);
  }

  v6 = [v4 keyboardState];
  if ([v6 hasFloatingAssistantView])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__UIInputLayoutHostingItem_updateVisibilityConstraintsForPlacement___block_invoke;
    v9[3] = &unk_1E70F6228;
    v9[4] = self;
    v10 = v6;
    v11 = v4;
    [UIView performWithoutAnimation:v9];
  }

  else
  {
    [(UIInputLayoutHostingItem *)self setHideInputViewBackdrops:0];
    [(UIInputLayoutHostingItem *)self setHideInputView:0];
    v7 = [(UIInputLayoutHostingItem *)self currentState];
    if (v7)
    {
      v8 = [(UIInputLayoutHostingItem *)self currentState];
      -[UIInputLayoutHostingItem changeConstraintsForState:animated:](self, "changeConstraintsForState:animated:", v6, [v8 isEqual:v6] ^ 1);
    }

    else
    {
      [(UIInputLayoutHostingItem *)self changeConstraintsForState:v6 animated:0];
    }
  }
}

uint64_t __68__UIInputLayoutHostingItem_updateVisibilityConstraintsForPlacement___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) standardBackgroundView];
  [v2 setAlpha:0.0];

  [*(a1 + 32) setHideInputView:1];
  [*(a1 + 32) changeConstraintsForState:*(a1 + 40) animated:0];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 48) isCompactAssistantView];

  return [v3 prepareAssistantHostIfNeededForCompact:v4];
}

- (BOOL)needsAssistantHost
{
  v3 = [(UIInputLayoutHostingItem *)self currentState];
  if ([v3 hasFloatingAssistantView])
  {
    v4 = [(UIInputLayoutHostingItem *)self inputLayoutAssistantView];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)createHostForAssistantIfNeeded
{
  v54 = *MEMORY[0x1E69E9840];
  if ([(UIInputLayoutHostingItem *)self needsAssistantHost])
  {
    v3 = [(UIInputLayoutHostingItem *)self containerView];
    v4 = [v3 subviews];
    v5 = [(UIInputLayoutHostingItem *)self inputAssistantView];
    v6 = [v4 indexOfObject:v5];

    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6 - 1;
    }

    if (v6)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = [(TUIInputAssistantHostView *)self->_inputAssistantHostView superview];

    if (v9)
    {
      v10 = [(TUIInputAssistantHostView *)self->_inputAssistantHostView superview];

      if (v10 != v3 && self->_assistantHostViewConstraints)
      {
        [MEMORY[0x1E69977A0] deactivateConstraints:?];
        assistantHostViewConstraints = self->_assistantHostViewConstraints;
        self->_assistantHostViewConstraints = 0;
      }

      [v3 insertSubview:self->_inputAssistantHostView atIndex:v8];
    }

    else
    {
      v13 = _UIInputLayoutItemLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v33 = [(UIInputLayoutHostingItem *)self currentState];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v33;
        _os_log_debug_impl(&dword_188A29000, v13, OS_LOG_TYPE_DEBUG, "Create inputAssistantHostView for state %@", &buf, 0xCu);
      }

      if (self->_assistantHostViewConstraints)
      {
        [MEMORY[0x1E69977A0] deactivateConstraints:?];
        v14 = self->_assistantHostViewConstraints;
        self->_assistantHostViewConstraints = 0;
      }

      v45 = 0;
      v46 = &v45;
      v47 = 0x2050000000;
      v15 = getTUIInputAssistantHostViewClass_softClass;
      v48 = getTUIInputAssistantHostViewClass_softClass;
      if (!getTUIInputAssistantHostViewClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v51 = __getTUIInputAssistantHostViewClass_block_invoke_0;
        v52 = &unk_1E70F2F20;
        v53 = &v45;
        __getTUIInputAssistantHostViewClass_block_invoke_0(&buf);
        v15 = v46[3];
      }

      v16 = v15;
      _Block_object_dispose(&v45, 8);
      v17 = [v15 alloc];
      [v3 frame];
      v18 = [v17 initWithFrame:?];
      inputAssistantHostView = self->_inputAssistantHostView;
      self->_inputAssistantHostView = v18;

      [(TUIInputAssistantHostView *)self->_inputAssistantHostView setTranslatesAutoresizingMaskIntoConstraints:0];
      [v3 insertSubview:self->_inputAssistantHostView atIndex:v8];
    }

    v20 = self->_assistantHostViewConstraints;
    if (!v20)
    {
      v42 = [(TUIInputAssistantHostView *)self->_inputAssistantHostView heightAnchor];
      v44 = [(UIInputLayoutHostingItem *)self containerView];
      v43 = [v44 assistantLayoutGuide];
      v41 = [v43 heightAnchor];
      v40 = [v42 constraintEqualToAnchor:v41];
      v49[0] = v40;
      v38 = [(TUIInputAssistantHostView *)self->_inputAssistantHostView leadingAnchor];
      v39 = [(UIInputLayoutHostingItem *)self containerView];
      v37 = [v39 leadingAnchor];
      v36 = [v38 constraintEqualToAnchor:v37];
      v49[1] = v36;
      v35 = [(UIInputWindowControllerHostingItem *)self ownerView];
      v34 = [v35 bottomAnchor];
      v21 = [(TUIInputAssistantHostView *)self->_inputAssistantHostView bottomAnchor];
      v22 = [v34 constraintEqualToAnchor:v21];
      v49[2] = v22;
      v23 = [(UIInputLayoutHostingItem *)self containerView];
      v24 = [v23 trailingAnchor];
      v25 = [(TUIInputAssistantHostView *)self->_inputAssistantHostView trailingAnchor];
      v26 = [v24 constraintEqualToAnchor:v25];
      v49[3] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
      v28 = self->_assistantHostViewConstraints;
      self->_assistantHostViewConstraints = v27;

      v20 = self->_assistantHostViewConstraints;
    }

    v29 = [(NSArray *)v20 firstObject];
    v30 = [v29 isActive];

    if ((v30 & 1) == 0)
    {
      [MEMORY[0x1E69977A0] activateConstraints:self->_assistantHostViewConstraints];
    }

    v31 = self->_inputAssistantHostView;
    v32 = [v3 _inheritedRenderConfig];
    [(TUIInputAssistantHostView *)v31 _setRenderConfig:v32];

    [(UIInputWindowControllerHostingItem *)self setAssistantHostCanAnimate:objc_opt_respondsToSelector() & 1];
  }

  else
  {
    v12 = self->_inputAssistantHostView;

    [(TUIInputAssistantHostView *)v12 removeFromSuperview];
  }
}

- (void)prepareAssistantHostIfNeededForCompact:(BOOL)a3
{
  v3 = a3;
  [(UIInputLayoutHostingItem *)self createHostForAssistantIfNeeded];
  v5 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];

  if (!v5)
  {
    return;
  }

  v6 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
  v7 = [(UIInputLayoutHostingItem *)self inputLayoutAssistantView];
  [v6 setSystemInputAssistantView:v7];

  v8 = [(UIInputLayoutHostingItem *)self inputAccessoryView];
  v9 = [v8 superview];
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = v9;
  v11 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
  v12 = [v11 _inheritedRenderConfig];
  v13 = [v12 colorAdaptiveBackground];

  if ((v13 & 1) == 0)
  {
    v8 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
    v14 = [(UIInputLayoutHostingItem *)self inputAccessoryView];
    [v8 setInputAccessoryView:v14];

LABEL_5:
  }

  v15 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
  [v15 setCompact:v3];
}

- (void)removeInputAssistantHostView
{
  v2 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
  [v2 removeFromSuperview];
}

- (void)clearInputAccessoryViewEdgeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  v4 = [(UIInputLayoutHostingItem *)self accessoryEmbedConstraints];
  [v3 deactivateConstraints:v4];

  [(UIInputLayoutHostingItem *)self setAccessoryEmbedConstraints:0];
  v5 = [(UIInputLayoutHostingItem *)self accessoryToGuideConstraint];

  if (v5)
  {
    v6 = [(UIInputLayoutHostingItem *)self accessoryToGuideConstraint];
    [v6 setActive:0];

    [(UIInputLayoutHostingItem *)self setAccessoryToGuideConstraint:0];
  }

  v7 = [(UIInputLayoutHostingItem *)self accessoryBackdropConstraints];

  if (v7)
  {
    v8 = MEMORY[0x1E69977A0];
    v9 = [(UIInputLayoutHostingItem *)self accessoryBackdropConstraints];
    [v8 deactivateConstraints:v9];

    [(UIInputLayoutHostingItem *)self setAccessoryBackdropConstraints:0];
  }
}

- (void)updateHeightForAccessory:(id)a3
{
  v18 = a3;
  [v18 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v5 = v4;
  if (v4 > 0.0 && SubviewUsesClassicLayout(v18) && (-[UIInputWindowControllerHostingItem ownerView](self, "ownerView"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v18 isDescendantOfView:v6], v6, v7))
  {
    v8 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];

    if (!v8)
    {
      v9 = [v18 heightAnchor];
      v10 = [v9 constraintEqualToConstant:v5];
      [(UIInputLayoutHostingItem *)self setAccessoryViewHeightConstraint:v10];

      v11 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
      [v11 setIdentifier:@"accessoryHeight"];
    }

    v12 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
    [v12 setConstant:v5];

    v13 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
    [v13 setActive:1];
  }

  else
  {
    v14 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];

    if (v14)
    {
      v15 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
      [v15 setActive:0];

      [(UIInputLayoutHostingItem *)self setAccessoryViewHeightConstraint:0];
    }
  }

  v16 = [(UIInputWindowControllerHostingItem *)self ownerView];
  v17 = [v16 keyboardLayoutGuide];
  [v17 setKeyboardDismissPadding:v5];
}

- (void)addManualHeightForAssistant:(id)a3
{
  v18 = a3;
  if (v18)
  {
    v4 = [(UIInputWindowControllerHostingItem *)self placement];
    v5 = [(UIInputLayoutHostingItem *)self inputViewSet];
    [v4 inputAssistantViewHeightForInputViewSet:v5];
    v7 = v6;

    v8 = [(UIInputLayoutHostingItem *)self assistantHeight];

    if (!v8)
    {
      v9 = [(UIInputLayoutHostingItem *)self containerView];
      v10 = [v9 assistantLayoutGuide];
      v11 = [v10 heightAnchor];
      v12 = [v11 constraintEqualToConstant:v7];
      [(UIInputLayoutHostingItem *)self setAssistantHeight:v12];

      v13 = [(UIInputLayoutHostingItem *)self assistantHeight];
      [v13 setIdentifier:@"assistantGuideHeight"];
    }

    v14 = [(UIInputLayoutHostingItem *)self assistantHeight];
    v15 = v14;
    if (v7 > 0.0)
    {
      [v14 setConstant:v7];

      v16 = [v18 isHidden];
      v14 = [(UIInputLayoutHostingItem *)self assistantHeight];
      v15 = v14;
      v17 = v16 ^ 1u;
      goto LABEL_8;
    }
  }

  else
  {
    v14 = [(UIInputLayoutHostingItem *)self assistantHeight];
    v15 = v14;
  }

  v17 = 0;
LABEL_8:
  [v14 setActive:v17];
}

- (void)addManualHeightForInputView:(id)a3
{
  v4 = a3;
  v25 = v4;
  if (v4 && SubviewUsesClassicLayout(v4))
  {
    v5 = [(UIInputWindowControllerHostingItem *)self owner];
    [v5 sizeForInputViewController:0 inputView:v25];
    v7 = v6;

    v8 = [(UIInputLayoutHostingItem *)self inputViewHeight];

    if (v8)
    {
      v9 = [(UIInputLayoutHostingItem *)self inputViewHeight];
      [v9 setConstant:v7];
    }

    else
    {
      v20 = [(UIInputLayoutHostingItem *)self containerView];
      v21 = [v20 inputViewLayoutGuide];
      v22 = [v21 heightAnchor];
      v23 = [v22 constraintEqualToConstant:v7];
      [(UIInputLayoutHostingItem *)self setInputViewHeight:v23];

      v9 = [(UIInputLayoutHostingItem *)self inputViewHeight];
      [v9 setIdentifier:@"inputHeight"];
    }

    goto LABEL_11;
  }

  v10 = [UIApp _isSpringBoard];
  v11 = [(UIInputLayoutHostingItem *)self inputViewHeight];
  v12 = v11;
  if (v10)
  {

    if (v12)
    {
LABEL_12:
      v24 = [(UIInputLayoutHostingItem *)self inputViewHeight];
      [v24 setActive:1];

      goto LABEL_13;
    }

    v9 = [(UIInputLayoutHostingItem *)self containerView];
    v13 = [v9 inputViewLayoutGuide];
    v14 = [v13 heightAnchor];
    v15 = [(UIInputWindowControllerHostingItem *)self ownerView];
    v16 = [v15 keyboardLayoutGuide];
    v17 = [v16 heightAnchor];
    v18 = [v14 constraintEqualToAnchor:v17];
    [(UIInputLayoutHostingItem *)self setInputViewHeight:v18];

LABEL_11:
    goto LABEL_12;
  }

  if (v12)
  {
    v19 = [(UIInputLayoutHostingItem *)self inputViewHeight];
    [v19 setActive:0];

    [(UIInputLayoutHostingItem *)self setInputViewHeight:0];
  }

LABEL_13:
}

- (void)disableViewSizingConstraints:(unint64_t)a3 forNewView:(id)a4
{
  v4 = a3;
  v9 = a4;
  if (v4)
  {
    v7 = [(UIInputLayoutHostingItem *)self inputViewHeight];
    [v7 setActive:0];

    [(UIInputLayoutHostingItem *)self setInputViewHeight:0];
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [(UIInputLayoutHostingItem *)self assistantHeight];
  [v8 setActive:0];

  [(UIInputLayoutHostingItem *)self setAssistantHeight:0];
  if ((v4 & 4) != 0)
  {
LABEL_4:
    v6 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
    [v6 setActive:0];

    [(UIInputLayoutHostingItem *)self setAccessoryViewHeightConstraint:0];
  }

LABEL_5:
}

- (void)prepareTranslationFromPlacement:(id)a3 to:(id)a4
{
  v4.receiver = self;
  v4.super_class = UIInputLayoutHostingItem;
  [(UIInputWindowControllerHostingItem *)&v4 prepareTranslationFromPlacement:a3 to:a4];
}

- (void)willBeginTranslationFromPlacement:(id)a3 to:(id)a4
{
  v4.receiver = self;
  v4.super_class = UIInputLayoutHostingItem;
  [(UIInputWindowControllerHostingItem *)&v4 willBeginTranslationFromPlacement:a3 to:a4];
}

- (void)didFinishTranslationFromPlacement:(id)a3 to:(id)a4
{
  v4.receiver = self;
  v4.super_class = UIInputLayoutHostingItem;
  [(UIInputWindowControllerHostingItem *)&v4 didFinishTranslationFromPlacement:a3 to:a4];
}

- (CGAffineTransform)animationTransformForState:(SEL)a3
{
  v5 = a4;
  if (_AXSReduceMotionReduceSlideTransitionsEnabled())
  {
    goto LABEL_2;
  }

  if (([v5 hasFloatingAssistantView] & 1) != 0 || objc_msgSend(v5, "hasAccessoryView"))
  {
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&v14.a = *MEMORY[0x1E695EFD0];
    *&v14.c = v8;
    *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
    v9 = 0.92;
    v10 = retstr;
    v11 = 0.92;
LABEL_6:
    CGAffineTransformScale(v10, &v14, v9, v11);
    goto LABEL_7;
  }

  if ([v5 isFloating] && (objc_msgSend(v5, "isSplit") & 1) == 0)
  {
    v13 = *(MEMORY[0x1E695EFD0] + 16);
    *&v14.a = *MEMORY[0x1E695EFD0];
    *&v14.c = v13;
    *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
    v9 = 0.5;
    v11 = 0.5;
    v10 = retstr;
    goto LABEL_6;
  }

LABEL_2:
  v6 = MEMORY[0x1E695EFD0];
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v7;
  *&retstr->tx = *(v6 + 32);
LABEL_7:

  return result;
}

- (void)updateTransition:(id)a3 withInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 isEqualToString:0x1EFB7ADB0];
  v9 = [v6 isEqualToString:0x1EFB7ADD0];
  if ((v8 & 1) != 0 || v9)
  {
    v11 = [v7 objectForKey:@"Origin"];
    v12 = [v7 objectForKey:@"IsCompact"];

    v13 = [v12 BOOLValue];
    if (v11)
    {
      inputAssistantHostView = self->_inputAssistantHostView;
      if (inputAssistantHostView)
      {
        v15 = [(TUIInputAssistantHostView *)inputAssistantHostView superview];

        if (v15)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __54__UIInputLayoutHostingItem_updateTransition_withInfo___block_invoke;
          aBlock[3] = &unk_1E7129A80;
          aBlock[4] = self;
          v28 = v13;
          v16 = _Block_copy(aBlock);
          [v11 CGPointValue];
          v19 = v18;
          if (v8)
          {
            v20 = v17;
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __54__UIInputLayoutHostingItem_updateTransition_withInfo___block_invoke_2;
            v23[3] = &unk_1E711A878;
            v24 = v16;
            v25 = v20;
            v26 = v19;
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = __54__UIInputLayoutHostingItem_updateTransition_withInfo___block_invoke_3;
            v22[3] = &unk_1E70F5AC0;
            v22[4] = self;
            [UIView animateWithDuration:v23 animations:v22 completion:0.25];
          }

          else
          {
            v16[2](v16, v18);
          }
        }
      }
    }
  }

  else
  {
    v10 = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
    [v10 setConstant:0.0];

    v21.receiver = self;
    v21.super_class = UIInputLayoutHostingItem;
    [(UIInputWindowControllerHostingItem *)&v21 updateTransition:v6 withInfo:v7];
    v11 = v7;
  }
}

void __54__UIInputLayoutHostingItem_updateTransition_withInfo___block_invoke(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) assistantSpacingConstraint];
  [v4 setConstant:a2];

  v5 = [*(a1 + 32) inputAssistantHostView];
  [v5 setCompact:*(a1 + 40)];

  v6 = [*(a1 + 32) ownerView];
  [v6 layoutIfNeeded];
}

uint64_t __54__UIInputLayoutHostingItem_updateTransition_withInfo___block_invoke_3(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) finishFlickTransition];
  }

  return result;
}

- (void)completeTransition:(id)a3 withInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 isEqualToString:0x1EFB7ADB0];
  v9 = [v6 isEqualToString:0x1EFB7ADD0];
  if ((v8 & 1) != 0 || v9)
  {
    if (v8)
    {
      v15 = [(UIInputWindowControllerHostingItem *)self owner];
      [v15 generateNotificationsForCompactAssistantFlickGestureCompletion:v7];
    }

    v16 = [v7 objectForKey:@"Origin"];
    v17 = v16;
    if (v16)
    {
      [v16 CGPointValue];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __56__UIInputLayoutHostingItem_completeTransition_withInfo___block_invoke;
      v21[3] = &unk_1E70F6848;
      v21[4] = self;
      v21[5] = v18;
      v21[6] = v19;
      [UIView animateWithDuration:v21 animations:0.25];
    }
  }

  else
  {
    v10 = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
    [v10 setConstant:0.0];

    v11 = [(UIInputLayoutHostingItem *)self currentState];
    v12 = [v11 isDocked];

    if ((v12 & 1) == 0)
    {
      v13 = [(UIInputWindowControllerHostingItem *)self placement];
      [(UIInputLayoutHostingItem *)self updateVisibilityConstraintsForPlacement:v13];

      v14 = [(UIInputWindowControllerHostingItem *)self ownerView];
      [v14 layoutIfNeeded];
    }

    v20.receiver = self;
    v20.super_class = UIInputLayoutHostingItem;
    [(UIInputWindowControllerHostingItem *)&v20 completeTransition:v6 withInfo:v7];
  }
}

void __56__UIInputLayoutHostingItem_completeTransition_withInfo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) assistantSpacingConstraint];
  [v3 setConstant:v2];

  v4 = [*(a1 + 32) ownerView];
  [v4 layoutIfNeeded];
}

- (id)animatedInputView
{
  v2 = [(UIInputLayoutHostingItem *)self inputViewController];
  v3 = [v2 animatableElement];

  return v3;
}

- (CGSize)sizeForVisualState:(int64_t)a3
{
  if (a3 & 0xFFFFFFFFFFFFFFFELL) == 2 && ([(UIInputLayoutHostingItem *)self animatedInputView], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6))
  {
    v7 = [(UIInputLayoutHostingItem *)self animatedInputView];
    [v7 sizeForVisualState:a3];
    v9 = v8;
    v11 = v10;

    v12 = v9;
    v13 = v11;
  }

  else
  {
    v12 = -1.0;
    v13 = -1.0;
  }

  result.height = v13;
  result.width = v12;
  return result;
}

- (void)prepareForTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5
{
  v5 = a5;
  v24 = *MEMORY[0x1E69E9840];
  v9 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = @"NO";
    *buf = 134218498;
    v19 = a3;
    if (v5)
    {
      v15 = @"YES";
    }

    v20 = 2048;
    v21 = a4;
    v22 = 2112;
    v23 = v15;
    _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "Preparing for state transition visualState:%li animationType:%li interactive:%@", buf, 0x20u);
  }

  v10 = [(UIInputLayoutHostingItem *)self standardBackgroundView];

  if (v10)
  {
    v11 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [v11 prepareForTransitionToState:a3 animationType:a4 interactiveTransition:v5];
  }

  if ((a3 - 5) > 1)
  {
    v12 = [(UIInputLayoutHostingItem *)self inputLayoutView];
    v13 = v12;
    v14 = 0;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92__UIInputLayoutHostingItem_prepareForTransitionToState_animationType_interactiveTransition___block_invoke;
    v16[3] = &unk_1E7101C38;
    v16[4] = self;
    v16[5] = a3;
    v16[6] = a4;
    v17 = v5;
    [UIView performWithoutAnimation:v16];
    v12 = [(UIInputLayoutHostingItem *)self inputLayoutView];
    v13 = v12;
    v14 = 1;
  }

  [v12 setHidden:v14];
}

void __92__UIInputLayoutHostingItem_prepareForTransitionToState_animationType_interactiveTransition___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentState];
  v3 = [v2 hasFloatingAssistantView];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 standardBackgroundView];
    [v5 setAlpha:0.0];

    [*(a1 + 32) setHideInputView:1];
  }

  else
  {
    v6 = [v4 inputAssistantHostView];
    v7 = [v6 superview];
    v8 = [*(a1 + 32) containerView];

    if (v7 != v8)
    {
      [*(a1 + 32) createHostForAssistantIfNeeded];
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v9 = getTUIKeyboardStateClass_softClass_3;
    v24 = getTUIKeyboardStateClass_softClass_3;
    if (!getTUIKeyboardStateClass_softClass_3)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __getTUIKeyboardStateClass_block_invoke_4;
      v20[3] = &unk_1E70F2F20;
      v20[4] = &v21;
      __getTUIKeyboardStateClass_block_invoke_4(v20);
      v9 = v22[3];
    }

    v10 = v9;
    _Block_object_dispose(&v21, 8);
    v11 = [v9 floatingAssistantFullState];
    v12 = [*(a1 + 32) inputAccessoryView];
    v16 = 0;
    if (v12)
    {
      v13 = v12;
      v14 = [*(a1 + 32) inputViewSet];
      v15 = [v14 isInputAccessoryViewPlaceholder];

      if (!v15)
      {
        v16 = 1;
      }
    }

    [v11 setHasAccessoryView:v16];
    [*(a1 + 32) changeConstraintsForState:v11 animated:0];
  }

  v17 = [*(a1 + 32) inputLayoutAssistantView];
  [v17 setHidden:0];

  [*(a1 + 32) prepareAssistantHostIfNeededForCompact:*(a1 + 40) == 6];
  v18 = [*(a1 + 32) animatedAssistantView];
  [v18 prepareForTransitionToState:*(a1 + 40) animationType:*(a1 + 48) interactiveTransition:*(a1 + 56)];

  v19 = [*(a1 + 32) containerView];
  [v19 setAlpha:0.0];
}

- (void)animatingTransitionFromState:(int64_t)a3 toState:(int64_t)a4 animationType:(int64_t)a5 totalDuration:(double)a6
{
  v33 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__UIInputLayoutHostingItem_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke;
  aBlock[3] = &unk_1E70F3B20;
  aBlock[4] = self;
  aBlock[5] = a3;
  aBlock[6] = a4;
  aBlock[7] = a5;
  *&aBlock[8] = a6;
  v11 = _Block_copy(aBlock);
  v12 = *MEMORY[0x1E695EFD0];
  v13 = *(MEMORY[0x1E695EFD0] + 16);
  *&v28.a = *MEMORY[0x1E695EFD0];
  *&v28.c = v13;
  v14 = *(MEMORY[0x1E695EFD0] + 32);
  *&v28.tx = v14;
  if ((a5 & 0xE) != 0)
  {
    if (a3 >= 2)
    {
      v15 = a6 * 0.5;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = 1.0;
    v17 = 1;
  }

  else if (a5)
  {
    v15 = 0.0;
    if ((a3 - 5) <= 1)
    {
      *v30 = v12;
      *&v30[16] = v13;
      *&v30[32] = v14;
      CGAffineTransformScale(&v28, v30, 0.92, 0.92);
    }

    v17 = 1;
    v16 = 0.0;
  }

  else
  {
    v17 = 0;
    v16 = 1.0;
    v15 = 0.0;
  }

  v18 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v21 = @"with normal animations";
    *v30 = 138413570;
    if (v17)
    {
      v21 = @"with customized animations";
    }

    *&v30[4] = v21;
    *&v30[12] = 2048;
    *&v30[14] = a3;
    *&v30[22] = 2048;
    *&v30[24] = a4;
    *&v30[32] = 2048;
    *&v30[34] = a5;
    *&v30[42] = 2048;
    *&v30[44] = a6;
    v31 = 2048;
    v32 = v15;
    _os_log_debug_impl(&dword_188A29000, v18, OS_LOG_TYPE_DEBUG, "Running state transition %@ startingState:%li finalState:%li animationType:%li duration:%0.2f delay:%0.2f", v30, 0x3Eu);
  }

  if (v17)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __93__UIInputLayoutHostingItem_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_89;
    v24[3] = &unk_1E7129AA8;
    v24[4] = self;
    v25 = v11;
    v26 = v28;
    v27 = v16;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __93__UIInputLayoutHostingItem_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_2;
    v23[3] = &unk_1E70F5AC0;
    v23[4] = self;
    [UIView animateWithDuration:32 delay:v24 options:v23 animations:a6 completion:v15];
    v19 = v25;
  }

  else
  {
    v11[2](v11);
    v22 = v28;
    v20 = [(UIInputLayoutHostingItem *)self containerView];
    *v30 = v22;
    [v20 setTransform:v30];

    v19 = [(UIInputLayoutHostingItem *)self containerView];
    [v19 setAlpha:v16];
  }
}

void __93__UIInputLayoutHostingItem_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) standardBackgroundView];

  if (v2)
  {
    v3 = [*(a1 + 32) standardBackgroundView];
    [v3 animatingTransitionFromState:*(a1 + 40) toState:*(a1 + 48) animationType:*(a1 + 56) totalDuration:*(a1 + 64)];
  }

  v4 = [*(a1 + 32) animatedAssistantView];

  if (v4)
  {
    v5 = [*(a1 + 32) animatedAssistantView];
    [v5 animatingTransitionFromState:*(a1 + 40) toState:*(a1 + 48) animationType:*(a1 + 56) totalDuration:*(a1 + 64)];
  }
}

void __93__UIInputLayoutHostingItem_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_89(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) containerView];
  [v2 setTransform:&v5];

  v3 = *(a1 + 96);
  v4 = [*(a1 + 32) containerView];
  [v4 setAlpha:v3];
}

void __93__UIInputLayoutHostingItem_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) containerView];
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];

  v4 = [*(a1 + 32) containerView];
  [v4 setAlpha:1.0];
}

- (void)transitioningToState:(int64_t)a3 animationType:(int64_t)a4 completionPercentage:(double)a5
{
  v9 = [(UIInputLayoutHostingItem *)self standardBackgroundView];

  if (v9)
  {
    v10 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [v10 transitioningToState:a3 animationType:a4 completionPercentage:a5];
  }

  v11 = [(UIInputLayoutHostingItem *)self animatedAssistantView];

  if (v11)
  {
    v12 = [(UIInputLayoutHostingItem *)self animatedAssistantView];
    [v12 transitioningToState:a3 animationType:a4 completionPercentage:a5];
  }
}

- (void)finishedTransitionToState:(int64_t)a3 animationType:(int64_t)a4 interactiveTransition:(BOOL)a5
{
  v5 = a5;
  v29 = *MEMORY[0x1E69E9840];
  v9 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v26 = @"NO";
    *v27 = 134218498;
    *&v27[4] = a3;
    if (v5)
    {
      v26 = @"YES";
    }

    *&v27[12] = 2048;
    *&v27[14] = a4;
    *&v27[22] = 2112;
    *&v27[24] = v26;
    _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "Finished state transition finalState:%li animationType:%li interactive:%@", v27, 0x20u);
  }

  v10 = [(UIInputLayoutHostingItem *)self standardBackgroundView];

  if (v10)
  {
    v11 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [v11 finishedTransitionToState:a3 animationType:a4 interactiveTransition:v5];
  }

  v12 = [(UIInputLayoutHostingItem *)self animatedAssistantView];

  if (v12)
  {
    v13 = [(UIInputLayoutHostingItem *)self animatedAssistantView];
    [v13 finishedTransitionToState:a3 animationType:a4 interactiveTransition:v5];
  }

  inputAssistantHostView = self->_inputAssistantHostView;
  v15 = MEMORY[0x1E695EFD0];
  if (inputAssistantHostView)
  {
    if ((a3 - 5) > 1)
    {
      if (![(UIInputLayoutHostingItem *)self needsAssistantHost])
      {
        [(TUIInputAssistantHostView *)self->_inputAssistantHostView removeFromSuperview];
      }
    }

    else
    {
      [(TUIInputAssistantHostView *)inputAssistantHostView setAlpha:1.0];
      v16 = [(UIInputLayoutHostingItem *)self containerView];
      v17 = v15[1];
      *v27 = *v15;
      *&v27[16] = v17;
      v28 = v15[2];
      [v16 setTransform:v27];
    }
  }

  v18 = [(UIInputLayoutHostingItem *)self containerView];
  v19 = v15[1];
  *v27 = *v15;
  *&v27[16] = v19;
  v28 = v15[2];
  [v18 setTransform:v27];

  v20 = [(UIInputLayoutHostingItem *)self containerView];
  [v20 setAlpha:1.0];

  v21 = [(UIInputLayoutHostingItem *)self inputLayoutView];
  [v21 setHidden:0];

  v22 = [(UIInputLayoutHostingItem *)self inputLayoutView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v24 = [(UIInputLayoutHostingItem *)self inputLayoutView];
    v25 = [v24 fallbackView];

    if (v25)
    {
      if ([v25 isHidden])
      {
        [v25 setAlpha:1.0];
        [v25 setHidden:0];
      }
    }
  }
}

- (void)trackPinch:(id)a3
{
  v4 = a3;
  if ([v4 state] == 1)
  {
    v5 = [objc_opt_self() mainScreen];
    [v5 bounds];
    _MergedGlobals_13_7 = v6;

    qword_1ED499098 = 0x4079000000000000;
    v7 = [(UIInputLayoutHostingItem *)self keyplaneWidthConstraint];

    if (!v7)
    {
      v8 = [(UIInputLayoutHostingItem *)self containerView];
      v9 = [v8 inputViewLayoutGuide];
      v10 = [v9 widthAnchor];
      v11 = [v10 constraintEqualToConstant:*&_MergedGlobals_13_7];
      [(UIInputLayoutHostingItem *)self setKeyplaneWidthConstraint:v11];
    }

    v12 = *&_MergedGlobals_13_7;
    v13 = [(UIInputLayoutHostingItem *)self keyplaneWidthConstraint];
    [v13 setConstant:v12];

    v14 = [(UIInputLayoutHostingItem *)self keyplaneWidthConstraint];
    [v14 setActive:1];

    v15 = [(UIInputLayoutHostingItem *)self rightConstraint];
    [v15 setActive:0];

    v16 = [(UIInputLayoutHostingItem *)self containerView];
    v17 = [v16 trailingAnchor];
    v18 = [(UIInputLayoutHostingItem *)self containerView];
    v19 = [v18 inputViewLayoutGuide];
    v20 = [v19 trailingAnchor];
    v21 = [v17 constraintGreaterThanOrEqualToAnchor:v20];
    [(UIInputLayoutHostingItem *)self setRightConstraint:v21];

    v22 = [(UIInputLayoutHostingItem *)self rightConstraint];
    [v22 setIdentifier:@"inputViewLayoutGuide.trailingAnchor"];

    v23 = [(UIInputLayoutHostingItem *)self rightConstraint];
    [v23 setActive:1];
  }

  else if ([v4 state] == 3)
  {
    [v4 scale];
    if (v24 <= 1.0)
    {
      [v4 scale];
      if (v25 < 1.0)
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __39__UIInputLayoutHostingItem_trackPinch___block_invoke_2;
        v26[3] = &unk_1E70F35B8;
        v26[4] = self;
        v27 = v4;
        [UIView animateWithDuration:458752 delay:v26 options:0 animations:0.2 completion:0.0];
      }
    }

    else
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __39__UIInputLayoutHostingItem_trackPinch___block_invoke;
      v28[3] = &unk_1E70F3590;
      v28[4] = self;
      [UIView animateWithDuration:458752 delay:v28 options:0 animations:0.2 completion:0.0];
    }
  }
}

void __39__UIInputLayoutHostingItem_trackPinch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) bottomMostGuideConstraint];
  [v2 setConstant:0.0];

  v3 = [*(a1 + 32) leftConstraint];
  [v3 setConstant:0.0];

  v4 = [*(a1 + 32) keyplaneWidthConstraint];
  [v4 setActive:0];

  v5 = [*(a1 + 32) rightConstraint];
  [v5 setActive:0];

  v6 = [*(a1 + 32) containerView];
  v7 = [v6 trailingAnchor];
  v8 = [*(a1 + 32) containerView];
  v9 = [v8 inputViewLayoutGuide];
  v10 = [v9 trailingAnchor];
  v11 = [v7 constraintEqualToAnchor:v10];
  [*(a1 + 32) setRightConstraint:v11];

  v12 = [*(a1 + 32) rightConstraint];
  [v12 setActive:1];

  v13 = [*(a1 + 32) containerView];
  [v13 layoutIfNeeded];
}

void __39__UIInputLayoutHostingItem_trackPinch___block_invoke_2(uint64_t a1)
{
  v2 = *&qword_1ED499098;
  v3 = [*(a1 + 32) keyplaneWidthConstraint];
  [v3 setConstant:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) containerView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [*(a1 + 32) containerView];
  [v10 bounds];
  v12 = v11 - v9;
  v13 = [*(a1 + 32) bottomMostGuideConstraint];
  [v13 setConstant:v12];

  v14 = v7 + *&qword_1ED499098 * -0.5;
  if (*&qword_1ED499098 + v14 > *&_MergedGlobals_13_7)
  {
    v14 = *&_MergedGlobals_13_7 - *&qword_1ED499098;
  }

  if (v14 >= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = [*(a1 + 32) leftConstraint];
  [v16 setConstant:v15];

  v17 = [*(a1 + 32) containerView];
  [v17 layoutIfNeeded];
}

- (id)constraintsForView:(id)a3 embeddedInView:(id)a4 insets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v26[4] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a3;
  v25 = [v11 topAnchor];
  v24 = [v10 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:top];
  v26[0] = v23;
  v12 = [v11 leadingAnchor];
  v13 = [v10 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:left];
  v26[1] = v14;
  v15 = [v10 bottomAnchor];
  v16 = [v11 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:bottom];
  v26[2] = v17;
  v18 = [v10 trailingAnchor];

  v19 = [v11 trailingAnchor];

  v20 = [v18 constraintEqualToAnchor:v19 constant:right];
  v26[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

  return v21;
}

- (id)constraintsForView:(id)a3 embeddedInGuide:(id)a4 insets:(UIEdgeInsets)a5 identifier:(id)a6
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  v33[4] = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = [v14 topAnchor];
  v16 = [v13 topAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:top];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.topAnchor", v12];
  [v17 setIdentifier:v18];

  v19 = [v14 leftAnchor];
  v20 = [v13 leftAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:left];

  v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.leadingAnchor", v12];
  [v21 setIdentifier:v22];

  v23 = [v13 bottomAnchor];
  v24 = [v14 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:bottom];

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.bottomAnchor", v12];
  [v25 setIdentifier:v26];

  v27 = [v13 rightAnchor];

  v28 = [v14 rightAnchor];

  v29 = [v27 constraintEqualToAnchor:v28 constant:right];

  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.trailingAnchor", v12];

  [v29 setIdentifier:v30];
  v33[0] = v17;
  v33[1] = v21;
  v33[2] = v25;
  v33[3] = v29;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];

  return v31;
}

- (CGPoint)persistentOffset
{
  x = self->_persistentOffset.x;
  y = self->_persistentOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end