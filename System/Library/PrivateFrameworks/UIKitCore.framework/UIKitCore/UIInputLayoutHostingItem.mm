@interface UIInputLayoutHostingItem
- (BOOL)needsAssistantHost;
- (BOOL)stateChangeRequiresBottomConstraintChange:(id)change;
- (CGAffineTransform)animationTransformForState:(SEL)state;
- (CGPoint)persistentOffset;
- (CGPoint)positionConstraintConstant;
- (CGRect)notificationsFrame;
- (CGRect)trackingCoordinatorFrame;
- (CGRect)visibleFrame;
- (CGSize)sizeForVisualState:(int64_t)state;
- (UIInputLayoutHostingItem)initWithContainer:(id)container;
- (UIInputLayoutHostingItem)initWithInputViewSet:(id)set container:(id)container;
- (UIInputWindowControllerHosting)hosting;
- (UIView)hostView;
- (double)bottomPaddingForOrientation:(int64_t)orientation;
- (double)inputAssistantViewHeight;
- (id)animatedAssistantView;
- (id)animatedInputView;
- (id)constraintsForView:(id)view embeddedInGuide:(id)guide insets:(UIEdgeInsets)insets identifier:(id)identifier;
- (id)constraintsForView:(id)view embeddedInView:(id)inView insets:(UIEdgeInsets)insets;
- (id)createItemHostView;
- (id)inputAccessoryView;
- (id)inputAccessoryViewController;
- (id)inputAssistantView;
- (id)inputAssistantViewController;
- (id)inputView;
- (id)inputViewController;
- (void)_updateBackdropViews;
- (void)addManualHeightForAssistant:(id)assistant;
- (void)addManualHeightForInputView:(id)view;
- (void)animatingTransitionFromState:(int64_t)state toState:(int64_t)toState animationType:(int64_t)type totalDuration:(double)duration;
- (void)buildContainerConstraintsIfNeeded;
- (void)changeConstraintsForState:(id)state animated:(BOOL)animated;
- (void)clearInputAccessoryViewEdgeConstraints;
- (void)clearInputViewEdgeConstraints;
- (void)completeTransition:(id)transition withInfo:(id)info;
- (void)constrainGuidesIfNeeded;
- (void)createBackdropViewIfNeeded;
- (void)createHostForAssistantIfNeeded;
- (void)didFinishTranslationFromPlacement:(id)placement to:(id)to;
- (void)disableViewSizingConstraints:(unint64_t)constraints forNewView:(id)view;
- (void)finishedTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition;
- (void)hideBackdrop:(BOOL)backdrop;
- (void)prepareAssistantHostIfNeededForCompact:(BOOL)compact;
- (void)prepareForTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition;
- (void)prepareTranslationFromPlacement:(id)placement to:(id)to;
- (void)removeInputAssistantHostView;
- (void)resetInputViewVisibility;
- (void)setAccessoryViewVisible:(BOOL)visible delay:(double)delay;
- (void)setHideInputView:(BOOL)view;
- (void)setHideInputViewBackdrops:(BOOL)backdrops;
- (void)setInputAccessoryBackdropView:(id)view;
- (void)setInputAccessoryView:(id)view;
- (void)setInputAssistantView:(id)view;
- (void)setInputView:(id)view;
- (void)trackPinch:(id)pinch;
- (void)transitioningToState:(int64_t)state animationType:(int64_t)type completionPercentage:(double)percentage;
- (void)updateHeightForAccessory:(id)accessory;
- (void)updateInputAccessoryBackdropView;
- (void)updateInputBackdropView;
- (void)updateInputBackdropViewVisibility;
- (void)updateInputViewSet:(id)set;
- (void)updateKeyboardDockViewVisibility;
- (void)updateTransition:(id)transition withInfo:(id)info;
- (void)updateViewSizingConstraints;
- (void)updateVisibilityConstraintsForPlacement:(id)placement;
- (void)willBeginTranslationFromPlacement:(id)placement to:(id)to;
@end

@implementation UIInputLayoutHostingItem

- (void)buildContainerConstraintsIfNeeded
{
  v46[4] = *MEMORY[0x1E69E9840];
  bottomMostGuideConstraint = [(UIInputLayoutHostingItem *)self bottomMostGuideConstraint];
  if (!bottomMostGuideConstraint || (v4 = bottomMostGuideConstraint, [(UIInputLayoutHostingItem *)self leftConstraint], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, !v5))
  {
    containerView = [(UIInputLayoutHostingItem *)self containerView];
    assistantLayoutGuide = [containerView assistantLayoutGuide];
    bottomAnchor = [assistantLayoutGuide bottomAnchor];
    ownerView = [(UIInputWindowControllerHostingItem *)self ownerView];
    bottomAnchor2 = [ownerView bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(UIInputLayoutHostingItem *)self setBottomMostGuideConstraint:v11];

    bottomMostGuideConstraint2 = [(UIInputLayoutHostingItem *)self bottomMostGuideConstraint];
    [bottomMostGuideConstraint2 setIdentifier:@"bottomMostGuide.bottom"];

    containerView2 = [(UIInputLayoutHostingItem *)self containerView];
    assistantLayoutGuide2 = [containerView2 assistantLayoutGuide];
    topAnchor = [assistantLayoutGuide2 topAnchor];
    containerView3 = [(UIInputLayoutHostingItem *)self containerView];
    aboveAssistantLayoutGuide = [containerView3 aboveAssistantLayoutGuide];
    bottomAnchor3 = [aboveAssistantLayoutGuide bottomAnchor];
    v19 = [topAnchor constraintEqualToAnchor:bottomAnchor3];
    [(UIInputLayoutHostingItem *)self setAssistantTopConstraint:v19];

    assistantTopConstraint = [(UIInputLayoutHostingItem *)self assistantTopConstraint];
    [assistantTopConstraint setIdentifier:@"assistantGuide.topAnchor"];

    containerView4 = [(UIInputLayoutHostingItem *)self containerView];
    leftAnchor = [containerView4 leftAnchor];
    ownerView2 = [(UIInputWindowControllerHostingItem *)self ownerView];
    leftAnchor2 = [ownerView2 leftAnchor];
    v25 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:0.0];
    [(UIInputLayoutHostingItem *)self setLeftConstraint:v25];

    leftConstraint = [(UIInputLayoutHostingItem *)self leftConstraint];
    [leftConstraint setIdentifier:@"containerView.leftAnchor"];

    ownerView3 = [(UIInputWindowControllerHostingItem *)self ownerView];
    rightAnchor = [ownerView3 rightAnchor];
    containerView5 = [(UIInputLayoutHostingItem *)self containerView];
    rightAnchor2 = [containerView5 rightAnchor];
    v31 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:0.0];
    [(UIInputLayoutHostingItem *)self setRightConstraint:v31];

    rightConstraint = [(UIInputLayoutHostingItem *)self rightConstraint];
    [rightConstraint setIdentifier:@"containerView.rightAnchor"];

    containerView6 = [(UIInputLayoutHostingItem *)self containerView];
    inputViewLayoutGuide = [containerView6 inputViewLayoutGuide];
    widthAnchor = [inputViewLayoutGuide widthAnchor];
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
    v38 = [widthAnchor constraintEqualToConstant:v37];
    [(UIInputLayoutHostingItem *)self setKeyplaneWidthConstraint:v38];

    keyplaneWidthConstraint = [(UIInputLayoutHostingItem *)self keyplaneWidthConstraint];
    [keyplaneWidthConstraint setIdentifier:@"inputViewLayoutGuide.widthAnchor"];

    v40 = MEMORY[0x1E69977A0];
    bottomMostGuideConstraint3 = [(UIInputLayoutHostingItem *)self bottomMostGuideConstraint];
    v46[0] = bottomMostGuideConstraint3;
    assistantTopConstraint2 = [(UIInputLayoutHostingItem *)self assistantTopConstraint];
    v46[1] = assistantTopConstraint2;
    rightConstraint2 = [(UIInputLayoutHostingItem *)self rightConstraint];
    v46[2] = rightConstraint2;
    leftConstraint2 = [(UIInputLayoutHostingItem *)self leftConstraint];
    v46[3] = leftConstraint2;
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
  hosting = [(UIInputLayoutHostingItem *)self hosting];
  if ([hosting item:self isForPurpose:102])
  {
    inputLayoutAssistantView = [(UIInputLayoutHostingItem *)self inputLayoutAssistantView];
  }

  else
  {
    inputLayoutAssistantView = 0;
  }

  return inputLayoutAssistantView;
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
  containerView = [(UIInputLayoutHostingItem *)self containerView];
  superview = [containerView superview];
  ownerView = [(UIInputWindowControllerHostingItem *)self ownerView];
  v6 = ownerView;
  if (superview == ownerView)
  {
    containerView2 = [(UIInputLayoutHostingItem *)self containerView];
    guideConstraints = [containerView2 guideConstraints];
    firstObject = [guideConstraints firstObject];
    isActive = [firstObject isActive];

    if (isActive)
    {
      return;
    }
  }

  else
  {
  }

  containerView3 = [(UIInputLayoutHostingItem *)self containerView];
  superview2 = [containerView3 superview];
  ownerView2 = [(UIInputWindowControllerHostingItem *)self ownerView];

  if (superview2 != ownerView2)
  {
    ownerView3 = [(UIInputWindowControllerHostingItem *)self ownerView];
    containerView4 = [(UIInputLayoutHostingItem *)self containerView];
    [ownerView3 addSubview:containerView4];
  }

  containerView5 = [(UIInputLayoutHostingItem *)self containerView];
  [containerView5 constrainGuidesIfNeeded];

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
  hosting = [(UIInputLayoutHostingItem *)self hosting];
  if ([hosting item:self isForPurpose:100])
  {
    inputLayoutView = [(UIInputLayoutHostingItem *)self inputLayoutView];
  }

  else
  {
    inputLayoutView = 0;
  }

  return inputLayoutView;
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
  ownerView = [(UIInputWindowControllerHostingItem *)self ownerView];
  coordinateSpace = [ownerView coordinateSpace];
  containerView = [(UIInputLayoutHostingItem *)self containerView];
  [containerView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  containerView2 = [(UIInputLayoutHostingItem *)self containerView];
  coordinateSpace2 = [containerView2 coordinateSpace];
  [coordinateSpace convertRect:coordinateSpace2 fromCoordinateSpace:{v7, v9, v11, v13}];
  x = v16;
  y = v18;
  width = v20;
  height = v22;

  currentState = [(UIInputLayoutHostingItem *)self currentState];
  LODWORD(coordinateSpace) = [currentState hasFloatingAssistantView];

  if (coordinateSpace)
  {
    ownerView2 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [ownerView2 bounds];
    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    v26 = CGRectIntersectsRect(v64, v72);

    if (v26)
    {
      ownerView3 = [(UIInputWindowControllerHostingItem *)self ownerView];
      [ownerView3 bounds];
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
    ownerView4 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [ownerView4 bounds];
    v30 = CGRectGetMaxY(v68);

    if (MaxY < v30)
    {
      ownerView5 = [(UIInputWindowControllerHostingItem *)self ownerView];
      [ownerView5 bounds];
      v32 = CGRectGetMaxY(v69);
      v70.origin.x = x;
      v70.origin.y = y;
      v70.size.width = width;
      v70.size.height = height;
      y = v32 - CGRectGetHeight(v70);
    }

    currentState2 = [(UIInputLayoutHostingItem *)self currentState];
    isCompact = [currentState2 isCompact];

    if (isCompact)
    {
      goto LABEL_20;
    }

LABEL_15:
    accessoryViewHeightConstraint = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
    if (accessoryViewHeightConstraint)
    {
      accessoryViewHeightConstraint2 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
      [accessoryViewHeightConstraint2 constant];
      v57 = v56;
    }

    else
    {
      accessoryViewHeightConstraint2 = [(UIInputLayoutHostingItem *)self inputViewSet];
      inputAccessoryView = [accessoryViewHeightConstraint2 inputAccessoryView];
      [inputAccessoryView bounds];
      v57 = v59;
    }

    if (v57 > 0.0)
    {
      height = height + v57;
      y = y - v57;
    }

    goto LABEL_20;
  }

  currentState3 = [(UIInputLayoutHostingItem *)self currentState];
  isDocked = [currentState3 isDocked];

  if ((isDocked & 1) == 0)
  {
    ownerView6 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [ownerView6 bounds];
    y = v51;
    ownerView7 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [ownerView7 bounds];
    width = v53;

    x = 0.0;
    height = 0.0;
    goto LABEL_15;
  }

  currentState4 = [(UIInputLayoutHostingItem *)self currentState];
  if (![currentState4 isOffscreen])
  {

    goto LABEL_20;
  }

  _isSpringBoard = [UIApp _isSpringBoard];

  if ((_isSpringBoard & 1) == 0)
  {
    ownerView8 = [(UIInputWindowControllerHostingItem *)self ownerView];
    keyboardLayoutGuide = [ownerView8 keyboardLayoutGuide];
    [keyboardLayoutGuide layoutFrame];
    x = v41;
    y = v42;
    width = v43;
    height = v44;

    currentState5 = [(UIInputLayoutHostingItem *)self currentState];
    LOBYTE(keyboardLayoutGuide) = [currentState5 hasAccessoryView];

    if (keyboardLayoutGuide)
    {
      goto LABEL_15;
    }

    currentState6 = [(UIInputLayoutHostingItem *)self currentState];
    isOffscreen = [currentState6 isOffscreen];

    if (isOffscreen)
    {
      containerView3 = [(UIInputLayoutHostingItem *)self containerView];
      [containerView3 bounds];
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
  owner = [(UIInputWindowControllerHostingItem *)self owner];
  inputViewSet = [owner inputViewSet];
  inputView = [inputViewSet inputView];
  if (!inputView)
  {

LABEL_6:
    standardBackgroundView = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [standardBackgroundView removeFromSuperview];

    v15 = 0;
    goto LABEL_7;
  }

  v6 = inputView;
  owner2 = [(UIInputWindowControllerHostingItem *)self owner];
  inputViewSet2 = [owner2 inputViewSet];
  isInputViewPlaceholder = [inputViewSet2 isInputViewPlaceholder];

  if (isInputViewPlaceholder)
  {
    goto LABEL_6;
  }

  [(UIInputLayoutHostingItem *)self constrainGuidesIfNeeded];
  standardBackgroundView2 = [(UIInputLayoutHostingItem *)self standardBackgroundView];

  standardBackgroundView3 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
  v12 = standardBackgroundView3;
  if (standardBackgroundView3)
  {
    v13 = standardBackgroundView3;
  }

  else
  {
    v16 = [UIKBInputBackdropView alloc];
    v13 = [(UIKBInputBackdropView *)v16 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v15 = v13;

  [(UIView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  containerView = [(UIInputLayoutHostingItem *)self containerView];
  _inheritedRenderConfig = [containerView _inheritedRenderConfig];
  [(UIKBInputBackdropView *)v15 _setRenderConfig:_inheritedRenderConfig];

  [v15 setAccessibilityIdentifier:@"keyboardBackground"];
  containerView2 = [(UIInputLayoutHostingItem *)self containerView];
  [containerView2 addSubview:v15];

  if (!standardBackgroundView2 && v15)
  {
    containerView3 = [(UIInputLayoutHostingItem *)self containerView];
    aboveAssistantLayoutGuide = [containerView3 aboveAssistantLayoutGuide];
    bottomAnchor = [aboveAssistantLayoutGuide bottomAnchor];
    topAnchor = [(UIView *)v15 topAnchor];
    v38 = [bottomAnchor constraintEqualToAnchor:topAnchor constant:0.0];
    v43[0] = v38;
    containerView4 = [(UIInputLayoutHostingItem *)self containerView];
    inputViewLayoutGuide = [containerView4 inputViewLayoutGuide];
    leadingAnchor = [inputViewLayoutGuide leadingAnchor];
    leadingAnchor2 = [(UIView *)v15 leadingAnchor];
    v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
    v43[1] = v33;
    bottomAnchor2 = [(UIView *)v15 bottomAnchor];
    containerView5 = [(UIInputLayoutHostingItem *)self containerView];
    belowInputLayoutGuide = [containerView5 belowInputLayoutGuide];
    bottomAnchor3 = [belowInputLayoutGuide bottomAnchor];
    v21 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:0.0];
    v43[2] = v21;
    trailingAnchor = [(UIView *)v15 trailingAnchor];
    containerView6 = [(UIInputLayoutHostingItem *)self containerView];
    inputViewLayoutGuide2 = [containerView6 inputViewLayoutGuide];
    trailingAnchor2 = [inputViewLayoutGuide2 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
    v43[3] = v26;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
    [(UIInputLayoutHostingItem *)self setBackgroundConstraints:v27];

    v28 = MEMORY[0x1E69977A0];
    backgroundConstraints = [(UIInputLayoutHostingItem *)self backgroundConstraints];
    [v28 activateConstraints:backgroundConstraints];

    goto LABEL_7;
  }

  if (standardBackgroundView2 && !v15)
  {
    goto LABEL_6;
  }

LABEL_7:
  [(UIInputLayoutHostingItem *)self setStandardBackgroundView:v15];
  [(UIInputLayoutHostingItem *)self updateInputBackdropViewVisibility];
}

- (void)updateInputBackdropViewVisibility
{
  inputLayoutView = [(UIInputLayoutHostingItem *)self inputLayoutView];
  if (inputLayoutView && (v4 = inputLayoutView, -[UIInputLayoutHostingItem inputViewSet](self, "inputViewSet"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isInputViewPlaceholder], v5, v4, (v6 & 1) == 0))
  {
    containerView = [(UIInputLayoutHostingItem *)self containerView];
    standardBackgroundView = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [containerView sendSubviewToBack:standardBackgroundView];

    standardBackgroundView2 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [standardBackgroundView2 setHidden:0];

    currentState = [(UIInputLayoutHostingItem *)self currentState];
    LODWORD(standardBackgroundView) = [currentState isFloating];

    backgroundConstraints = [(UIInputLayoutHostingItem *)self backgroundConstraints];
    v12 = [backgroundConstraints objectAtIndexedSubscript:2];
    [v12 constant];
    v14 = v13;

    if (standardBackgroundView)
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
      backgroundConstraints2 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v24 = [backgroundConstraints2 objectAtIndexedSubscript:0];
      [v24 setConstant:v16];

      backgroundConstraints3 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v26 = [backgroundConstraints3 objectAtIndexedSubscript:1];
      [v26 setConstant:v18];

      backgroundConstraints4 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v28 = [backgroundConstraints4 objectAtIndexedSubscript:2];
      [v28 setConstant:v20];

      backgroundConstraints5 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v30 = [backgroundConstraints5 objectAtIndexedSubscript:3];
      [v30 setConstant:v22];

      standardBackgroundView3 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
      +[UIKeyboardPopoverContainer cornerRadius];
      standardBackgroundView4 = standardBackgroundView3;
    }

    else
    {
      if (v14 <= 0.0)
      {
        return;
      }

      backgroundConstraints6 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v34 = [backgroundConstraints6 objectAtIndexedSubscript:0];
      [v34 setConstant:0.0];

      backgroundConstraints7 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v36 = [backgroundConstraints7 objectAtIndexedSubscript:1];
      [v36 setConstant:0.0];

      backgroundConstraints8 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v38 = [backgroundConstraints8 objectAtIndexedSubscript:2];
      [v38 setConstant:0.0];

      backgroundConstraints9 = [(UIInputLayoutHostingItem *)self backgroundConstraints];
      v40 = [backgroundConstraints9 objectAtIndexedSubscript:3];
      [v40 setConstant:0.0];

      standardBackgroundView4 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
      v31 = 0.0;
      standardBackgroundView3 = standardBackgroundView4;
    }

    [standardBackgroundView4 updateCornersWithRadius:v31];
  }

  else
  {
    standardBackgroundView3 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [standardBackgroundView3 setHidden:1];
  }
}

- (void)updateKeyboardDockViewVisibility
{
  v33.receiver = self;
  v33.super_class = UIInputLayoutHostingItem;
  [(UIInputWindowControllerHostingItem *)&v33 updateKeyboardDockViewVisibility];
  dockView = [(UIInputWindowControllerHostingItem *)self dockView];
  superview = [dockView superview];

  if (superview)
  {
    dockViewEmbedConstraints = [(UIInputLayoutHostingItem *)self dockViewEmbedConstraints];
    if (dockViewEmbedConstraints)
    {
    }

    else
    {
      inputLayoutView = [(UIInputLayoutHostingItem *)self inputLayoutView];
      if (inputLayoutView)
      {
        v23 = inputLayoutView;
        inputViewSet = [(UIInputLayoutHostingItem *)self inputViewSet];
        isInputViewPlaceholder = [inputViewSet isInputViewPlaceholder];

        if ((isInputViewPlaceholder & 1) == 0)
        {
          dockView2 = [(UIInputWindowControllerHostingItem *)self dockView];
          [dockView2 setTranslatesAutoresizingMaskIntoConstraints:0];

          dockView3 = [(UIInputWindowControllerHostingItem *)self dockView];
          containerView = [(UIInputLayoutHostingItem *)self containerView];
          belowInputLayoutGuide = [containerView belowInputLayoutGuide];
          v30 = [(UIInputLayoutHostingItem *)self constraintsForView:dockView3 embeddedInGuide:belowInputLayoutGuide insets:@"DockView" identifier:0.0, 0.0, 0.0, 0.0];
          [(UIInputLayoutHostingItem *)self setDockViewEmbedConstraints:v30];

          v31 = MEMORY[0x1E69977A0];
          dockViewEmbedConstraints2 = [(UIInputLayoutHostingItem *)self dockViewEmbedConstraints];
          [v31 activateConstraints:dockViewEmbedConstraints2];
        }
      }
    }
  }

  else
  {
    v6 = MEMORY[0x1E69977A0];
    dockViewEmbedConstraints3 = [(UIInputLayoutHostingItem *)self dockViewEmbedConstraints];
    [v6 deactivateConstraints:dockViewEmbedConstraints3];

    [(UIInputLayoutHostingItem *)self setDockViewEmbedConstraints:0];
  }

  dockHeight = [(UIInputLayoutHostingItem *)self dockHeight];

  if (!dockHeight)
  {
    containerView2 = [(UIInputLayoutHostingItem *)self containerView];
    belowInputLayoutGuide2 = [containerView2 belowInputLayoutGuide];
    heightAnchor = [belowInputLayoutGuide2 heightAnchor];
    v12 = [heightAnchor constraintEqualToConstant:0.0];
    [(UIInputLayoutHostingItem *)self setDockHeight:v12];

    dockHeight2 = [(UIInputLayoutHostingItem *)self dockHeight];
    [dockHeight2 setActive:1];
  }

  inputLayoutView2 = [(UIInputLayoutHostingItem *)self inputLayoutView];
  if (inputLayoutView2 && (v15 = inputLayoutView2, -[UIInputLayoutHostingItem inputViewSet](self, "inputViewSet"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 isInputViewPlaceholder], v16, v15, (v17 & 1) == 0))
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    -[UIInputLayoutHostingItem bottomPaddingForOrientation:](self, "bottomPaddingForOrientation:", [owner keyboardOrientation]);
    v20 = v19;
    dockHeight3 = [(UIInputLayoutHostingItem *)self dockHeight];
    [dockHeight3 setConstant:v20];
  }

  else
  {
    owner = [(UIInputLayoutHostingItem *)self dockHeight];
    [owner setConstant:0.0];
  }
}

- (CGRect)visibleFrame
{
  containerView = [(UIInputLayoutHostingItem *)self containerView];
  [containerView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (-[UIInputLayoutHostingItem needsAssistantHost](self, "needsAssistantHost") && (-[UIInputLayoutHostingItem inputLayoutAssistantView](self, "inputLayoutAssistantView"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 isHidden], v12, (v13 & 1) == 0))
  {
    ownerView = [(UIInputWindowControllerHostingItem *)self ownerView];
    [(TUIInputAssistantHostView *)self->_inputAssistantHostView frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    containerView2 = [(UIInputLayoutHostingItem *)self containerView];
    [ownerView convertRect:containerView2 fromView:{v26, v28, v30, v32}];
    v5 = v34;
    v7 = v35;
    v9 = v36;
    v11 = v37;

    v46.origin.x = v5;
    v46.origin.y = v7;
    v46.size.width = v9;
    v46.size.height = v11;
    MaxY = CGRectGetMaxY(v46);
    ownerView2 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [ownerView2 bounds];
    v40 = CGRectGetMaxY(v47);

    if (MaxY < v40)
    {
      ownerView3 = [(UIInputWindowControllerHostingItem *)self ownerView];
      [ownerView3 bounds];
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
    inputAccessoryView = [(UIInputLayoutHostingItem *)self inputAccessoryView];
    if (inputAccessoryView)
    {
      v15 = inputAccessoryView;
      inputViewSet = [(UIInputLayoutHostingItem *)self inputViewSet];
      isInputAccessoryViewPlaceholder = [inputViewSet isInputAccessoryViewPlaceholder];

      if ((isInputAccessoryViewPlaceholder & 1) == 0)
      {
        ownerView3 = [(UIInputWindowControllerHostingItem *)self ownerView];
        keyboardLayoutGuide = [ownerView3 keyboardLayoutGuide];
        [keyboardLayoutGuide layoutFrame];
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
    animatableElement = inputAssistantHostView;
  }

  else
  {
    inputAssistantViewController = [(UIInputLayoutHostingItem *)self inputAssistantViewController];
    animatableElement = [inputAssistantViewController animatableElement];
  }

  return animatableElement;
}

- (id)inputAssistantViewController
{
  hosting = [(UIInputLayoutHostingItem *)self hosting];
  if ([hosting item:self isForPurpose:102])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _inputAssistantViewController = [owner _inputAssistantViewController];
  }

  else
  {
    _inputAssistantViewController = 0;
  }

  return _inputAssistantViewController;
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
  inputViewEmbedConstraints = [(UIInputLayoutHostingItem *)self inputViewEmbedConstraints];
  [v3 deactivateConstraints:inputViewEmbedConstraints];

  [(UIInputLayoutHostingItem *)self setInputViewEmbedConstraints:0];
}

- (void)resetInputViewVisibility
{
  inputViewSet = [(UIInputLayoutHostingItem *)self inputViewSet];
  inputView = [inputViewSet inputView];
  [inputView setAlpha:1.0];
}

- (void)updateInputAccessoryBackdropView
{
  inputViewSet = [(UIInputLayoutHostingItem *)self inputViewSet];
  inputAccessoryView = [(UIInputLayoutHostingItem *)self inputAccessoryView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    inputAccessoryView2 = [(UIInputLayoutHostingItem *)self inputAccessoryView];
    if ([inputAccessoryView2 _suppressBackgroundStyling])
    {
      v6 = 0;
    }

    else
    {
      [inputAccessoryView2 backgroundEdgeInsets];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      inputAccessoryView3 = [inputViewSet inputAccessoryView];
      [inputAccessoryView3 frame];
      v17 = v16;
      v19 = v18;

      containerView = [(UIInputLayoutHostingItem *)self containerView];
      [containerView frame];
      v22 = v21;

      containerView2 = [(UIInputLayoutHostingItem *)self containerView];
      [containerView2 frame];
      v25 = v24;

      _inputAccessoryBackdropView = [(UIInputLayoutHostingItem *)self _inputAccessoryBackdropView];
      v27 = _inputAccessoryBackdropView;
      if (_inputAccessoryBackdropView)
      {
        v28 = _inputAccessoryBackdropView;
      }

      else
      {
        v28 = [[UIKBInputBackdropView alloc] initWithFrame:v10 + v22, v8 + v17, v25 - (v14 + v10), v19 - (v8 + v12)];
      }

      v6 = v28;

      [(UIView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
      owner = [(UIInputWindowControllerHostingItem *)self owner];
      view = [owner view];
      _inheritedRenderConfig = [view _inheritedRenderConfig];
      [(UIKBInputBackdropView *)v6 _setRenderConfig:_inheritedRenderConfig];

      inputAccessoryView2 = v6;
    }
  }

  else
  {
    v6 = 0;
    inputAccessoryView2 = 0;
  }

  [(UIInputLayoutHostingItem *)self setInputAccessoryBackdropView:v6];
}

- (UIInputLayoutHostingItem)initWithContainer:(id)container
{
  containerCopy = container;
  v10.receiver = self;
  v10.super_class = UIInputLayoutHostingItem;
  v5 = [(UIInputWindowControllerHostingItem *)&v10 initWithContainer:containerCopy];
  if (v5)
  {
    v6 = [UIKeyboardItemContainerView alloc];
    v7 = [(UIKeyboardItemContainerView *)v6 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    containerView = v5->_containerView;
    v5->_containerView = v7;

    [(UIView *)v5->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeWeak(&v5->_hosting, containerCopy);
  }

  return v5;
}

- (UIInputLayoutHostingItem)initWithInputViewSet:(id)set container:(id)container
{
  setCopy = set;
  containerCopy = container;
  v15.receiver = self;
  v15.super_class = UIInputLayoutHostingItem;
  v8 = [(UIInputWindowControllerHostingItem *)&v15 initWithContainer:containerCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_hosting, containerCopy);
    ownerView = [(UIInputWindowControllerHostingItem *)v9 ownerView];
    keyboardLayoutGuide = [ownerView keyboardLayoutGuide];
    [keyboardLayoutGuide setUsesBottomSafeArea:0];

    ownerView2 = [(UIInputWindowControllerHostingItem *)v9 ownerView];
    keyboardLayoutGuide2 = [ownerView2 keyboardLayoutGuide];
    [keyboardLayoutGuide2 followUndockedKeyboardOfTypes:4];

    [(UIInputLayoutHostingItem *)v9 updateInputViewSet:setCopy];
  }

  return v9;
}

- (void)updateInputViewSet:(id)set
{
  v10 = *MEMORY[0x1E69E9840];
  setCopy = set;
  [(UIInputLayoutHostingItem *)self setInputViewSet:setCopy];
  [(UIInputLayoutHostingItem *)self constrainGuidesIfNeeded];
  v5 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = setCopy;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "updateInputViewSet: %@", &v8, 0xCu);
  }

  if (setCopy)
  {
    if ([setCopy isInputViewPlaceholder])
    {
      hasFloatingAssistantView = 1;
    }

    else
    {
      currentState = [(UIInputLayoutHostingItem *)self currentState];
      hasFloatingAssistantView = [currentState hasFloatingAssistantView];
    }

    [(UIInputLayoutHostingItem *)self hideBackdrop:hasFloatingAssistantView];
  }
}

- (CGPoint)positionConstraintConstant
{
  assistantSpacingConstraint = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
  [assistantSpacingConstraint constant];
  v5 = v4;

  leftConstraint = [(UIInputLayoutHostingItem *)self leftConstraint];
  [leftConstraint constant];
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

- (void)hideBackdrop:(BOOL)backdrop
{
  backdropCopy = backdrop;
  standardBackgroundView = [(UIInputLayoutHostingItem *)self standardBackgroundView];

  if (standardBackgroundView)
  {
    standardBackgroundView2 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [standardBackgroundView2 setHidden:backdropCopy];
  }

  platterView = [(UIInputLayoutHostingItem *)self platterView];

  if (platterView)
  {
    platterView2 = [(UIInputLayoutHostingItem *)self platterView];
    [platterView2 setHidden:backdropCopy];
  }
}

- (void)changeConstraintsForState:(id)state animated:(BOOL)animated
{
  stateCopy = state;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __63__UIInputLayoutHostingItem_changeConstraintsForState_animated___block_invoke;
  v13 = &unk_1E7129A58;
  selfCopy = self;
  v6 = stateCopy;
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

- (BOOL)stateChangeRequiresBottomConstraintChange:(id)change
{
  changeCopy = change;
  currentState = [(UIInputLayoutHostingItem *)self currentState];

  if (!currentState)
  {
    goto LABEL_3;
  }

  hasFloatingAssistantView = [changeCopy hasFloatingAssistantView];
  currentState2 = [(UIInputLayoutHostingItem *)self currentState];
  hasFloatingAssistantView2 = [currentState2 hasFloatingAssistantView];

  if (hasFloatingAssistantView != hasFloatingAssistantView2)
  {
    goto LABEL_3;
  }

  if ([changeCopy isDocked])
  {
    currentState3 = [(UIInputLayoutHostingItem *)self currentState];
    isDocked = [currentState3 isDocked];

    if (isDocked)
    {
      goto LABEL_16;
    }
  }

  isDocked2 = [changeCopy isDocked];
  currentState4 = [(UIInputLayoutHostingItem *)self currentState];
  if (isDocked2 != [currentState4 isDocked])
  {
LABEL_8:
    LOBYTE(v9) = 1;
LABEL_9:

    goto LABEL_4;
  }

  isFloating = [changeCopy isFloating];
  currentState5 = [(UIInputLayoutHostingItem *)self currentState];
  isFloating2 = [currentState5 isFloating];

  if (isFloating != isFloating2)
  {
LABEL_3:
    LOBYTE(v9) = 1;
    goto LABEL_4;
  }

  if ([changeCopy isFloating])
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
    isOffscreen = [changeCopy isOffscreen];
    currentState6 = [(UIInputLayoutHostingItem *)self currentState];
    isOffscreen2 = [currentState6 isOffscreen];

    if (isOffscreen == isOffscreen2)
    {
      hasAccessoryView = [changeCopy hasAccessoryView];
      currentState7 = [(UIInputLayoutHostingItem *)self currentState];
      hasAccessoryView2 = [currentState7 hasAccessoryView];

      if (hasAccessoryView == hasAccessoryView2)
      {
        if (![changeCopy hasFloatingAssistantView])
        {
          goto LABEL_21;
        }

        currentState4 = [(UIInputLayoutHostingItem *)self assistantTopConstraint];
        if ([currentState4 isActive])
        {
          goto LABEL_8;
        }

        assistantHeight = [(UIInputLayoutHostingItem *)self assistantHeight];
        isActive = [assistantHeight isActive];

        if (isActive)
        {
LABEL_21:
          if ([changeCopy hasFloatingAssistantView])
          {
            LOBYTE(v9) = 0;
            goto LABEL_4;
          }

          currentState4 = [(UIInputLayoutHostingItem *)self assistantTopConstraint];
          v9 = [currentState4 isActive] ^ 1;
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
  ownerView = [(UIInputWindowControllerHostingItem *)self ownerView];
  coordinateSpace = [ownerView coordinateSpace];
  containerView = [(UIInputLayoutHostingItem *)self containerView];
  [containerView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  containerView2 = [(UIInputLayoutHostingItem *)self containerView];
  coordinateSpace2 = [containerView2 coordinateSpace];
  [coordinateSpace convertRect:coordinateSpace2 fromCoordinateSpace:{v7, v9, v11, v13}];
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
    ownerView2 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [ownerView2 bounds];
    v19 = v27;
    ownerView3 = [(UIInputWindowControllerHostingItem *)self ownerView];
    [ownerView3 bounds];
    v21 = v29;

    v23 = 0.0;
    v17 = 0.0;
    goto LABEL_4;
  }

  currentState = [(UIInputLayoutHostingItem *)self currentState];
  hasFloatingAssistantView = [currentState hasFloatingAssistantView];

  if (hasFloatingAssistantView)
  {
    currentState2 = [(UIInputLayoutHostingItem *)self currentState];
    hasAccessoryView = [currentState2 hasAccessoryView];
    if (hasAccessoryView)
    {
      hasFloatingAssistantView = [(UIInputLayoutHostingItem *)self currentState];
      if ([hasFloatingAssistantView isCompact])
      {
        goto LABEL_12;
      }
    }

    inputAssistantView = [(UIInputLayoutHostingItem *)self inputAssistantView];
    isHidden = [inputAssistantView isHidden];

    if (hasAccessoryView)
    {
    }

    if ((isHidden & 1) == 0)
    {
      currentState2 = [(UIInputWindowControllerHostingItem *)self ownerView];
      hasFloatingAssistantView = [currentState2 coordinateSpace];
      containerView3 = [(UIInputLayoutHostingItem *)self containerView];
      assistantLayoutGuide = [containerView3 assistantLayoutGuide];
      [assistantLayoutGuide layoutFrame];
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      containerView4 = [(UIInputLayoutHostingItem *)self containerView];
      coordinateSpace3 = [containerView4 coordinateSpace];
      [hasFloatingAssistantView convertRect:coordinateSpace3 fromCoordinateSpace:{v43, v45, v47, v49}];
      v17 = v52;
      v19 = v53;
      v21 = v54;
      v23 = v55;

LABEL_12:
    }
  }

  else
  {
    inputAccessoryView = [(UIInputLayoutHostingItem *)self inputAccessoryView];
    if (inputAccessoryView)
    {
      v57 = inputAccessoryView;
      _isSpringBoard = [UIApp _isSpringBoard];

      if ((_isSpringBoard & 1) == 0)
      {
        accessoryViewHeightConstraint = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
        if (accessoryViewHeightConstraint)
        {
          accessoryViewHeightConstraint2 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
          [accessoryViewHeightConstraint2 constant];
          v62 = v61;
        }

        else
        {
          accessoryViewHeightConstraint2 = [(UIInputLayoutHostingItem *)self inputViewSet];
          inputAccessoryView2 = [accessoryViewHeightConstraint2 inputAccessoryView];
          [inputAccessoryView2 bounds];
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
  hosting = [(UIInputLayoutHostingItem *)self hosting];
  if ([hosting item:self isForPurpose:101])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _inputAccessoryViewController = [owner _inputAccessoryViewController];
  }

  else
  {
    _inputAccessoryViewController = 0;
  }

  return _inputAccessoryViewController;
}

- (id)inputAccessoryView
{
  hosting = [(UIInputLayoutHostingItem *)self hosting];
  if ([hosting item:self isForPurpose:101])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _inputAccessoryView = [owner _inputAccessoryView];
  }

  else
  {
    _inputAccessoryView = 0;
  }

  return _inputAccessoryView;
}

- (id)inputViewController
{
  hosting = [(UIInputLayoutHostingItem *)self hosting];
  if ([hosting item:self isForPurpose:100])
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    _inputViewController = [owner _inputViewController];
  }

  else
  {
    _inputViewController = 0;
  }

  return _inputViewController;
}

- (void)setInputView:(id)view
{
  v42 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [(UIInputLayoutHostingItem *)self constrainGuidesIfNeeded];
  v6 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v40 = 138412290;
    v41 = viewCopy;
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "setInputView: %@", &v40, 0xCu);
  }

  v7 = self->_inputLayoutView;
  if (self->_inputLayoutView != viewCopy)
  {
    v8 = MEMORY[0x1E69977A0];
    inputViewEmbedConstraints = [(UIInputLayoutHostingItem *)self inputViewEmbedConstraints];
    [v8 deactivateConstraints:inputViewEmbedConstraints];

    [(UIInputLayoutHostingItem *)self setInputViewEmbedConstraints:0];
    if (viewCopy)
    {
      [(UIView *)viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
      [viewCopy setAccessibilityIdentifier:@"inputView"];
    }
  }

  objc_storeStrong(&self->_inputLayoutView, view);
  if (self->_inputLayoutView)
  {
    inputLayoutAssistantView = [(UIInputLayoutHostingItem *)self inputLayoutAssistantView];
    if (inputLayoutAssistantView && (v11 = inputLayoutAssistantView, -[UIInputLayoutHostingItem inputLayoutAssistantView](self, "inputLayoutAssistantView"), v12 = objc_claimAutoreleasedReturnValue(), [v12 superview], v13 = objc_claimAutoreleasedReturnValue(), -[UIInputLayoutHostingItem containerView](self, "containerView"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v12, v11, v13 == v14))
    {
      containerView = [(UIInputLayoutHostingItem *)self containerView];
      inputLayoutView = self->_inputLayoutView;
      inputLayoutAssistantView2 = [(UIInputLayoutHostingItem *)self inputLayoutAssistantView];
      [containerView insertSubview:inputLayoutView belowSubview:inputLayoutAssistantView2];
    }

    else
    {
      containerView = [(UIInputLayoutHostingItem *)self containerView];
      [containerView addSubview:self->_inputLayoutView];
    }

    inputViewEmbedConstraints2 = [(UIInputLayoutHostingItem *)self inputViewEmbedConstraints];

    if (!inputViewEmbedConstraints2)
    {
      v21 = self->_inputLayoutView;
      containerView2 = [(UIInputLayoutHostingItem *)self containerView];
      inputViewLayoutGuide = [containerView2 inputViewLayoutGuide];
      v24 = [(UIInputLayoutHostingItem *)self constraintsForView:v21 embeddedInGuide:inputViewLayoutGuide insets:@"inputView" identifier:0.0, 0.0, 0.0, 0.0];
      [(UIInputLayoutHostingItem *)self setInputViewEmbedConstraints:v24];
    }

    v25 = MEMORY[0x1E69977A0];
    inputViewEmbedConstraints3 = [(UIInputLayoutHostingItem *)self inputViewEmbedConstraints];
    [v25 activateConstraints:inputViewEmbedConstraints3];

    owner = [(UIInputWindowControllerHostingItem *)self owner];
    [owner _inputViewPadding];
    v29 = v28;
    v31 = v30;

    inputViewEmbedConstraints4 = [(UIInputLayoutHostingItem *)self inputViewEmbedConstraints];
    v33 = [inputViewEmbedConstraints4 objectAtIndexedSubscript:1];
    [v33 setConstant:v29];

    inputViewEmbedConstraints5 = [(UIInputLayoutHostingItem *)self inputViewEmbedConstraints];
    v35 = [inputViewEmbedConstraints5 objectAtIndexedSubscript:3];
    [v35 setConstant:v31];

    containerView3 = [(UIInputLayoutHostingItem *)self containerView];
    [containerView3 setNeedsLayout];
  }

  else if (v7)
  {
    v16 = MEMORY[0x1E69977A0];
    inputViewEmbedConstraints6 = [(UIInputLayoutHostingItem *)self inputViewEmbedConstraints];
    [v16 deactivateConstraints:inputViewEmbedConstraints6];

    [(UIView *)v7 removeFromSuperview];
    [(UIInputLayoutHostingItem *)self setInputViewEmbedConstraints:0];
  }

  owner2 = [(UIInputWindowControllerHostingItem *)self owner];
  expectedPlacement = [owner2 expectedPlacement];
  keyboardState = [expectedPlacement keyboardState];
  -[UIInputLayoutHostingItem setHideInputView:](self, "setHideInputView:", [keyboardState hasFloatingAssistantView]);
}

- (void)setInputAssistantView:(id)view
{
  v58 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v6 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v57 = viewCopy;
    _os_log_debug_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEBUG, "setInputAssistantView: %@", buf, 0xCu);
  }

  inputLayoutAssistantView = self->_inputLayoutAssistantView;
  if (inputLayoutAssistantView == viewCopy)
  {
    v8 = 0;
  }

  else
  {
    v8 = inputLayoutAssistantView;
    v9 = MEMORY[0x1E69977A0];
    assistantViewEmbedConstraints = [(UIInputLayoutHostingItem *)self assistantViewEmbedConstraints];
    [v9 deactivateConstraints:assistantViewEmbedConstraints];

    [(UIInputLayoutHostingItem *)self setAssistantViewEmbedConstraints:0];
    assistantSpacingConstraint = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
    [assistantSpacingConstraint setActive:0];

    [(UIInputLayoutHostingItem *)self setAssistantSpacingConstraint:0];
    if (viewCopy)
    {
      [(UIView *)viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
      [viewCopy setAccessibilityIdentifier:@"inputAssistantView"];
    }
  }

  objc_storeStrong(&self->_inputLayoutAssistantView, view);
  v12 = self->_inputLayoutAssistantView;
  if (v12)
  {
    [(UIView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    containerView = [(UIInputLayoutHostingItem *)self containerView];
    [containerView addSubview:self->_inputLayoutAssistantView];

    assistantViewEmbedConstraints2 = [(UIInputLayoutHostingItem *)self assistantViewEmbedConstraints];

    if (!assistantViewEmbedConstraints2)
    {
      heightAnchor = [(UIView *)self->_inputLayoutAssistantView heightAnchor];
      containerView2 = [(UIInputLayoutHostingItem *)self containerView];
      [containerView2 assistantLayoutGuide];
      v17 = v54 = viewCopy;
      [v17 heightAnchor];
      v18 = v53 = v8;
      v19 = [heightAnchor constraintEqualToAnchor:v18];

      v51 = v19;
      [v19 setIdentifier:@"assistantViewHostHeight"];
      leadingAnchor = [(UIView *)self->_inputLayoutAssistantView leadingAnchor];
      containerView3 = [(UIInputLayoutHostingItem *)self containerView];
      leadingAnchor2 = [containerView3 leadingAnchor];
      v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v55[0] = v22;
      containerView4 = [(UIInputLayoutHostingItem *)self containerView];
      trailingAnchor = [containerView4 trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_inputLayoutAssistantView trailingAnchor];
      v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v55[1] = v26;
      v55[2] = v19;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
      [(UIInputLayoutHostingItem *)self setAssistantViewEmbedConstraints:v27];

      v8 = v53;
      viewCopy = v54;
    }

    assistantSpacingConstraint2 = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];

    if (!assistantSpacingConstraint2)
    {
      ownerView = [(UIInputWindowControllerHostingItem *)self ownerView];
      bottomAnchor = [ownerView bottomAnchor];
      bottomAnchor2 = [(UIView *)self->_inputLayoutAssistantView bottomAnchor];
      v32 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
      [(UIInputLayoutHostingItem *)self setAssistantSpacingConstraint:v32];

      assistantSpacingConstraint3 = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
      [assistantSpacingConstraint3 setIdentifier:@"assistant.bottomAnchor"];
    }

    assistantSpacingConstraint4 = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
    [assistantSpacingConstraint4 setActive:1];

    assistantSpacingConstraint5 = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
    [assistantSpacingConstraint5 setConstant:0.0];

    assistantViewEmbedConstraints3 = [(UIInputLayoutHostingItem *)self assistantViewEmbedConstraints];
    firstObject = [assistantViewEmbedConstraints3 firstObject];
    isActive = [firstObject isActive];

    if ((isActive & 1) == 0)
    {
      v39 = MEMORY[0x1E69977A0];
      assistantViewEmbedConstraints4 = [(UIInputLayoutHostingItem *)self assistantViewEmbedConstraints];
      [v39 activateConstraints:assistantViewEmbedConstraints4];

      containerView5 = [(UIInputLayoutHostingItem *)self containerView];
      [containerView5 layoutIfNeeded];
    }
  }

  [(UIInputLayoutHostingItem *)self addManualHeightForAssistant:self->_inputLayoutAssistantView];
  if (v8)
  {
    [(UIView *)v8 removeFromSuperview];
  }

  currentState = [(UIInputLayoutHostingItem *)self currentState];
  hasFloatingAssistantView = [currentState hasFloatingAssistantView];

  if (hasFloatingAssistantView)
  {
    inputAssistantHostView = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
    superview = [inputAssistantHostView superview];
    containerView6 = [(UIInputLayoutHostingItem *)self containerView];

    if (superview != containerView6)
    {
      [(UIInputLayoutHostingItem *)self createHostForAssistantIfNeeded];
    }

    containerView7 = [(UIInputLayoutHostingItem *)self containerView];
    [containerView7 bringSubviewToFront:self->_inputLayoutAssistantView];

    inputAssistantHostView2 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
    currentState2 = [(UIInputLayoutHostingItem *)self currentState];
    [inputAssistantHostView2 setCompact:{objc_msgSend(currentState2, "isCompact")}];

    inputLayoutView = [(UIInputLayoutHostingItem *)self inputLayoutView];
    [inputLayoutView setAlpha:0.0];
  }
}

- (double)inputAssistantViewHeight
{
  v3 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  systemInputAssistantViewController = [v3 systemInputAssistantViewController];

  containerView = [(UIInputLayoutHostingItem *)self containerView];
  traitCollection = [containerView traitCollection];
  [systemInputAssistantViewController preferredHeightForTraitCollection:traitCollection];
  v8 = v7;

  return v8;
}

- (void)setInputAccessoryView:(id)view
{
  v68 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v5 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v67 = viewCopy;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "setInputAccessoryView: %@", buf, 0xCu);
  }

  if (viewCopy)
  {
    containerView = [(UIInputLayoutHostingItem *)self containerView];
    [containerView addSubview:viewCopy];

    superview = [viewCopy superview];
    containerView2 = [(UIInputLayoutHostingItem *)self containerView];

    if (superview != containerView2)
    {
      v9 = _UIInputLayoutItemLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "IAV was removed from its superview during addSubview's callbacks", buf, 2u);
      }

      viewCopy = 0;
      goto LABEL_16;
    }

    inputViewSet = [(UIInputLayoutHostingItem *)self inputViewSet];
    isInputAccessoryViewPlaceholder = [inputViewSet isInputAccessoryViewPlaceholder];

    if (isInputAccessoryViewPlaceholder)
    {
      containerView3 = [(UIInputLayoutHostingItem *)self containerView];
      aboveAssistantLayoutGuide = [containerView3 aboveAssistantLayoutGuide];
      heightAnchor = [aboveAssistantLayoutGuide heightAnchor];
      heightAnchor2 = [viewCopy heightAnchor];
      heightAnchor4 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      v65[0] = heightAnchor4;
      leadingAnchor = [viewCopy leadingAnchor];
      containerView4 = [(UIInputLayoutHostingItem *)self containerView];
      [containerView4 leadingAnchor];
      containerView10 = v62 = leadingAnchor;
      v59 = [leadingAnchor constraintEqualToAnchor:?];
      v65[1] = v59;
      containerView5 = [(UIInputLayoutHostingItem *)self containerView];
      aboveAssistantLayoutGuide2 = [containerView5 aboveAssistantLayoutGuide];
      bottomAnchor = [aboveAssistantLayoutGuide2 bottomAnchor];
      bottomAnchor2 = [viewCopy bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v65[2] = v15;
      containerView6 = [(UIInputLayoutHostingItem *)self containerView];
      trailingAnchor = [containerView6 trailingAnchor];
      trailingAnchor2 = [viewCopy trailingAnchor];
      v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v65[3] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
      [(UIInputLayoutHostingItem *)self setAccessoryEmbedConstraints:v20];

      containerView9 = aboveAssistantLayoutGuide;
      heightAnchor3 = heightAnchor2;

      aboveAssistantLayoutGuide4 = heightAnchor;
      v24 = containerView3;
LABEL_15:

      v43 = MEMORY[0x1E69977A0];
      accessoryEmbedConstraints = [(UIInputLayoutHostingItem *)self accessoryEmbedConstraints];
      [v43 activateConstraints:accessoryEmbedConstraints];

      [(UIInputLayoutHostingItem *)self updateHeightForAccessory:viewCopy];
      goto LABEL_16;
    }

    if ([UIApp _isSpringBoard])
    {
      containerView7 = [(UIInputLayoutHostingItem *)self containerView];
      inputViewLayoutGuide = [containerView7 inputViewLayoutGuide];
      topAnchor = [inputViewLayoutGuide topAnchor];
      bottomAnchor3 = [viewCopy bottomAnchor];
      v29 = [topAnchor constraintEqualToAnchor:bottomAnchor3];
      [(UIInputLayoutHostingItem *)self setAccessoryToGuideConstraint:v29];
    }

    else
    {
      ownerView = [(UIInputWindowControllerHostingItem *)self ownerView];
      keyboardLayoutGuide = [ownerView keyboardLayoutGuide];
      topAnchor2 = [keyboardLayoutGuide topAnchor];
      bottomAnchor4 = [viewCopy bottomAnchor];
      v34 = [topAnchor2 constraintEqualToAnchor:bottomAnchor4];
      [(UIInputLayoutHostingItem *)self setAccessoryToGuideConstraint:v34];

      currentState = [(UIInputLayoutHostingItem *)self currentState];
      LOBYTE(keyboardLayoutGuide) = [currentState isOffscreen];

      if (keyboardLayoutGuide)
      {
LABEL_14:
        containerView8 = [(UIInputLayoutHostingItem *)self containerView];
        aboveAssistantLayoutGuide3 = [containerView8 aboveAssistantLayoutGuide];
        bottomAnchor5 = [aboveAssistantLayoutGuide3 bottomAnchor];
        bottomAnchor6 = [viewCopy bottomAnchor];
        v24 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];

        LODWORD(v41) = 1144750080;
        [v24 setPriority:v41];
        containerView9 = [(UIInputLayoutHostingItem *)self containerView];
        aboveAssistantLayoutGuide4 = [containerView9 aboveAssistantLayoutGuide];
        heightAnchor3 = [aboveAssistantLayoutGuide4 heightAnchor];
        heightAnchor4 = [viewCopy heightAnchor];
        v62 = [heightAnchor3 constraintEqualToAnchor:?];
        v64[0] = v62;
        leadingAnchor2 = [viewCopy leadingAnchor];
        containerView10 = [(UIInputLayoutHostingItem *)self containerView];
        [containerView10 leadingAnchor];
        v59 = containerView4 = leadingAnchor2;
        containerView5 = [leadingAnchor2 constraintEqualToAnchor:?];
        v64[1] = containerView5;
        v64[2] = v24;
        aboveAssistantLayoutGuide2 = [(UIInputLayoutHostingItem *)self containerView];
        bottomAnchor = [aboveAssistantLayoutGuide2 trailingAnchor];
        bottomAnchor2 = [viewCopy trailingAnchor];
        v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
        v64[3] = v15;
        containerView6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:4];
        [(UIInputLayoutHostingItem *)self setAccessoryEmbedConstraints:containerView6];
        goto LABEL_15;
      }
    }

    accessoryToGuideConstraint = [(UIInputLayoutHostingItem *)self accessoryToGuideConstraint];
    [accessoryToGuideConstraint setActive:1];

    goto LABEL_14;
  }

LABEL_16:
  currentState2 = [(UIInputLayoutHostingItem *)self currentState];
  hasFloatingAssistantView = [currentState2 hasFloatingAssistantView];

  if (hasFloatingAssistantView)
  {
    inputAssistantHostView = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
    _inheritedRenderConfig = [inputAssistantHostView _inheritedRenderConfig];
    colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

    if ((colorAdaptiveBackground & 1) == 0)
    {
      inputAssistantHostView2 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
      [inputAssistantHostView2 setInputAccessoryView:viewCopy];
    }

    containerView11 = [(UIInputLayoutHostingItem *)self containerView];
    inputLayoutAssistantView = [(UIInputLayoutHostingItem *)self inputLayoutAssistantView];
    [containerView11 bringSubviewToFront:inputLayoutAssistantView];
  }
}

- (void)updateViewSizingConstraints
{
  inputViewSet = [(UIInputLayoutHostingItem *)self inputViewSet];
  [(UIInputLayoutHostingItem *)self updateInputViewSet:inputViewSet];
}

- (void)setInputAccessoryBackdropView:(id)view
{
  viewCopy = view;
  v5 = self->_inputAccessoryBackdropView;
  objc_storeStrong(&self->_inputAccessoryBackdropView, view);
  if (self->_inputAccessoryBackdropView)
  {
    standardBackgroundView = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    superview = [standardBackgroundView superview];
    containerView = [(UIInputLayoutHostingItem *)self containerView];

    containerView2 = [(UIInputLayoutHostingItem *)self containerView];
    v10 = containerView2;
    inputAccessoryBackdropView = self->_inputAccessoryBackdropView;
    if (superview == containerView)
    {
      standardBackgroundView2 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
      [v10 insertSubview:inputAccessoryBackdropView aboveSubview:standardBackgroundView2];
    }

    else
    {
      [containerView2 insertSubview:self->_inputAccessoryBackdropView atIndex:0];
    }

    inputAccessoryView = [(UIInputLayoutHostingItem *)self inputAccessoryView];
    [inputAccessoryView backgroundEdgeInsets];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = self->_inputAccessoryBackdropView;
    containerView3 = [(UIInputLayoutHostingItem *)self containerView];
    aboveAssistantLayoutGuide = [containerView3 aboveAssistantLayoutGuide];
    v27 = [(UIInputLayoutHostingItem *)self constraintsForView:v24 embeddedInGuide:aboveAssistantLayoutGuide insets:@"accessoryBackdrop" identifier:v17, v19, v21, v23];
    [(UIInputLayoutHostingItem *)self setAccessoryBackdropConstraints:v27];

    v28 = MEMORY[0x1E69977A0];
    accessoryBackdropConstraints = [(UIInputLayoutHostingItem *)self accessoryBackdropConstraints];
    [v28 activateConstraints:accessoryBackdropConstraints];
  }

  else
  {
    v12 = MEMORY[0x1E69977A0];
    accessoryBackdropConstraints2 = [(UIInputLayoutHostingItem *)self accessoryBackdropConstraints];
    [v12 deactivateConstraints:accessoryBackdropConstraints2];

    [(UIInputLayoutHostingItem *)self setAccessoryBackdropConstraints:0];
    [(UIView *)v5 removeFromSuperview];
  }
}

- (void)setAccessoryViewVisible:(BOOL)visible delay:(double)delay
{
  visibleCopy = visible;
  inputViewSet = [(UIInputLayoutHostingItem *)self inputViewSet];
  v8 = [inputViewSet setAccessoryViewVisible:visibleCopy delay:delay];

  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__UIInputLayoutHostingItem_setAccessoryViewVisible_delay___block_invoke;
    v9[3] = &unk_1E70F35E0;
    v9[4] = self;
    v10 = visibleCopy;
    [UIView animateWithDuration:50331648 delay:v9 options:0 animations:0.15 completion:delay];
  }
}

- (void)setHideInputViewBackdrops:(BOOL)backdrops
{
  if (backdrops)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  standardBackgroundView = [(UIInputLayoutHostingItem *)self standardBackgroundView];
  [standardBackgroundView setAlpha:v4];

  inputAccessoryBackdropView = self->_inputAccessoryBackdropView;

  [(UIView *)inputAccessoryBackdropView setAlpha:v4];
}

- (void)setHideInputView:(BOOL)view
{
  if (view)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  inputLayoutView = [(UIInputLayoutHostingItem *)self inputLayoutView];
  [inputLayoutView setAlpha:v3];
}

- (double)bottomPaddingForOrientation:(int64_t)orientation
{
  hosting = [(UIInputLayoutHostingItem *)self hosting];
  [hosting _inputViewPadding];
  v5 = v4;

  return v5;
}

- (void)updateVisibilityConstraintsForPlacement:(id)placement
{
  v14 = *MEMORY[0x1E69E9840];
  placementCopy = placement;
  v5 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v13 = placementCopy;
    _os_log_debug_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEBUG, "updateVisibilityConstraintsForPlacement: %@", buf, 0xCu);
  }

  keyboardState = [placementCopy keyboardState];
  if ([keyboardState hasFloatingAssistantView])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__UIInputLayoutHostingItem_updateVisibilityConstraintsForPlacement___block_invoke;
    v9[3] = &unk_1E70F6228;
    v9[4] = self;
    v10 = keyboardState;
    v11 = placementCopy;
    [UIView performWithoutAnimation:v9];
  }

  else
  {
    [(UIInputLayoutHostingItem *)self setHideInputViewBackdrops:0];
    [(UIInputLayoutHostingItem *)self setHideInputView:0];
    currentState = [(UIInputLayoutHostingItem *)self currentState];
    if (currentState)
    {
      currentState2 = [(UIInputLayoutHostingItem *)self currentState];
      -[UIInputLayoutHostingItem changeConstraintsForState:animated:](self, "changeConstraintsForState:animated:", keyboardState, [currentState2 isEqual:keyboardState] ^ 1);
    }

    else
    {
      [(UIInputLayoutHostingItem *)self changeConstraintsForState:keyboardState animated:0];
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
  currentState = [(UIInputLayoutHostingItem *)self currentState];
  if ([currentState hasFloatingAssistantView])
  {
    inputLayoutAssistantView = [(UIInputLayoutHostingItem *)self inputLayoutAssistantView];
    v5 = inputLayoutAssistantView != 0;
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
    containerView = [(UIInputLayoutHostingItem *)self containerView];
    subviews = [containerView subviews];
    inputAssistantView = [(UIInputLayoutHostingItem *)self inputAssistantView];
    v6 = [subviews indexOfObject:inputAssistantView];

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

    superview = [(TUIInputAssistantHostView *)self->_inputAssistantHostView superview];

    if (superview)
    {
      superview2 = [(TUIInputAssistantHostView *)self->_inputAssistantHostView superview];

      if (superview2 != containerView && self->_assistantHostViewConstraints)
      {
        [MEMORY[0x1E69977A0] deactivateConstraints:?];
        assistantHostViewConstraints = self->_assistantHostViewConstraints;
        self->_assistantHostViewConstraints = 0;
      }

      [containerView insertSubview:self->_inputAssistantHostView atIndex:v8];
    }

    else
    {
      v13 = _UIInputLayoutItemLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        currentState = [(UIInputLayoutHostingItem *)self currentState];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = currentState;
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
      [containerView frame];
      v18 = [v17 initWithFrame:?];
      inputAssistantHostView = self->_inputAssistantHostView;
      self->_inputAssistantHostView = v18;

      [(TUIInputAssistantHostView *)self->_inputAssistantHostView setTranslatesAutoresizingMaskIntoConstraints:0];
      [containerView insertSubview:self->_inputAssistantHostView atIndex:v8];
    }

    v20 = self->_assistantHostViewConstraints;
    if (!v20)
    {
      heightAnchor = [(TUIInputAssistantHostView *)self->_inputAssistantHostView heightAnchor];
      containerView2 = [(UIInputLayoutHostingItem *)self containerView];
      assistantLayoutGuide = [containerView2 assistantLayoutGuide];
      heightAnchor2 = [assistantLayoutGuide heightAnchor];
      v40 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
      v49[0] = v40;
      leadingAnchor = [(TUIInputAssistantHostView *)self->_inputAssistantHostView leadingAnchor];
      containerView3 = [(UIInputLayoutHostingItem *)self containerView];
      leadingAnchor2 = [containerView3 leadingAnchor];
      v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v49[1] = v36;
      ownerView = [(UIInputWindowControllerHostingItem *)self ownerView];
      bottomAnchor = [ownerView bottomAnchor];
      bottomAnchor2 = [(TUIInputAssistantHostView *)self->_inputAssistantHostView bottomAnchor];
      v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v49[2] = v22;
      containerView4 = [(UIInputLayoutHostingItem *)self containerView];
      trailingAnchor = [containerView4 trailingAnchor];
      trailingAnchor2 = [(TUIInputAssistantHostView *)self->_inputAssistantHostView trailingAnchor];
      v26 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v49[3] = v26;
      v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:4];
      v28 = self->_assistantHostViewConstraints;
      self->_assistantHostViewConstraints = v27;

      v20 = self->_assistantHostViewConstraints;
    }

    firstObject = [(NSArray *)v20 firstObject];
    isActive = [firstObject isActive];

    if ((isActive & 1) == 0)
    {
      [MEMORY[0x1E69977A0] activateConstraints:self->_assistantHostViewConstraints];
    }

    v31 = self->_inputAssistantHostView;
    _inheritedRenderConfig = [containerView _inheritedRenderConfig];
    [(TUIInputAssistantHostView *)v31 _setRenderConfig:_inheritedRenderConfig];

    [(UIInputWindowControllerHostingItem *)self setAssistantHostCanAnimate:objc_opt_respondsToSelector() & 1];
  }

  else
  {
    v12 = self->_inputAssistantHostView;

    [(TUIInputAssistantHostView *)v12 removeFromSuperview];
  }
}

- (void)prepareAssistantHostIfNeededForCompact:(BOOL)compact
{
  compactCopy = compact;
  [(UIInputLayoutHostingItem *)self createHostForAssistantIfNeeded];
  inputAssistantHostView = [(UIInputLayoutHostingItem *)self inputAssistantHostView];

  if (!inputAssistantHostView)
  {
    return;
  }

  inputAssistantHostView2 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
  inputLayoutAssistantView = [(UIInputLayoutHostingItem *)self inputLayoutAssistantView];
  [inputAssistantHostView2 setSystemInputAssistantView:inputLayoutAssistantView];

  inputAccessoryView = [(UIInputLayoutHostingItem *)self inputAccessoryView];
  superview = [inputAccessoryView superview];
  if (!superview)
  {
    goto LABEL_5;
  }

  v10 = superview;
  inputAssistantHostView3 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
  _inheritedRenderConfig = [inputAssistantHostView3 _inheritedRenderConfig];
  colorAdaptiveBackground = [_inheritedRenderConfig colorAdaptiveBackground];

  if ((colorAdaptiveBackground & 1) == 0)
  {
    inputAccessoryView = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
    inputAccessoryView2 = [(UIInputLayoutHostingItem *)self inputAccessoryView];
    [inputAccessoryView setInputAccessoryView:inputAccessoryView2];

LABEL_5:
  }

  inputAssistantHostView4 = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
  [inputAssistantHostView4 setCompact:compactCopy];
}

- (void)removeInputAssistantHostView
{
  inputAssistantHostView = [(UIInputLayoutHostingItem *)self inputAssistantHostView];
  [inputAssistantHostView removeFromSuperview];
}

- (void)clearInputAccessoryViewEdgeConstraints
{
  v3 = MEMORY[0x1E69977A0];
  accessoryEmbedConstraints = [(UIInputLayoutHostingItem *)self accessoryEmbedConstraints];
  [v3 deactivateConstraints:accessoryEmbedConstraints];

  [(UIInputLayoutHostingItem *)self setAccessoryEmbedConstraints:0];
  accessoryToGuideConstraint = [(UIInputLayoutHostingItem *)self accessoryToGuideConstraint];

  if (accessoryToGuideConstraint)
  {
    accessoryToGuideConstraint2 = [(UIInputLayoutHostingItem *)self accessoryToGuideConstraint];
    [accessoryToGuideConstraint2 setActive:0];

    [(UIInputLayoutHostingItem *)self setAccessoryToGuideConstraint:0];
  }

  accessoryBackdropConstraints = [(UIInputLayoutHostingItem *)self accessoryBackdropConstraints];

  if (accessoryBackdropConstraints)
  {
    v8 = MEMORY[0x1E69977A0];
    accessoryBackdropConstraints2 = [(UIInputLayoutHostingItem *)self accessoryBackdropConstraints];
    [v8 deactivateConstraints:accessoryBackdropConstraints2];

    [(UIInputLayoutHostingItem *)self setAccessoryBackdropConstraints:0];
  }
}

- (void)updateHeightForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  [accessoryCopy sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
  v5 = v4;
  if (v4 > 0.0 && SubviewUsesClassicLayout(accessoryCopy) && (-[UIInputWindowControllerHostingItem ownerView](self, "ownerView"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [accessoryCopy isDescendantOfView:v6], v6, v7))
  {
    accessoryViewHeightConstraint = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];

    if (!accessoryViewHeightConstraint)
    {
      heightAnchor = [accessoryCopy heightAnchor];
      v10 = [heightAnchor constraintEqualToConstant:v5];
      [(UIInputLayoutHostingItem *)self setAccessoryViewHeightConstraint:v10];

      accessoryViewHeightConstraint2 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
      [accessoryViewHeightConstraint2 setIdentifier:@"accessoryHeight"];
    }

    accessoryViewHeightConstraint3 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
    [accessoryViewHeightConstraint3 setConstant:v5];

    accessoryViewHeightConstraint4 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
    [accessoryViewHeightConstraint4 setActive:1];
  }

  else
  {
    accessoryViewHeightConstraint5 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];

    if (accessoryViewHeightConstraint5)
    {
      accessoryViewHeightConstraint6 = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
      [accessoryViewHeightConstraint6 setActive:0];

      [(UIInputLayoutHostingItem *)self setAccessoryViewHeightConstraint:0];
    }
  }

  ownerView = [(UIInputWindowControllerHostingItem *)self ownerView];
  keyboardLayoutGuide = [ownerView keyboardLayoutGuide];
  [keyboardLayoutGuide setKeyboardDismissPadding:v5];
}

- (void)addManualHeightForAssistant:(id)assistant
{
  assistantCopy = assistant;
  if (assistantCopy)
  {
    placement = [(UIInputWindowControllerHostingItem *)self placement];
    inputViewSet = [(UIInputLayoutHostingItem *)self inputViewSet];
    [placement inputAssistantViewHeightForInputViewSet:inputViewSet];
    v7 = v6;

    assistantHeight = [(UIInputLayoutHostingItem *)self assistantHeight];

    if (!assistantHeight)
    {
      containerView = [(UIInputLayoutHostingItem *)self containerView];
      assistantLayoutGuide = [containerView assistantLayoutGuide];
      heightAnchor = [assistantLayoutGuide heightAnchor];
      v12 = [heightAnchor constraintEqualToConstant:v7];
      [(UIInputLayoutHostingItem *)self setAssistantHeight:v12];

      assistantHeight2 = [(UIInputLayoutHostingItem *)self assistantHeight];
      [assistantHeight2 setIdentifier:@"assistantGuideHeight"];
    }

    assistantHeight3 = [(UIInputLayoutHostingItem *)self assistantHeight];
    v15 = assistantHeight3;
    if (v7 > 0.0)
    {
      [assistantHeight3 setConstant:v7];

      isHidden = [assistantCopy isHidden];
      assistantHeight3 = [(UIInputLayoutHostingItem *)self assistantHeight];
      v15 = assistantHeight3;
      v17 = isHidden ^ 1u;
      goto LABEL_8;
    }
  }

  else
  {
    assistantHeight3 = [(UIInputLayoutHostingItem *)self assistantHeight];
    v15 = assistantHeight3;
  }

  v17 = 0;
LABEL_8:
  [assistantHeight3 setActive:v17];
}

- (void)addManualHeightForInputView:(id)view
{
  viewCopy = view;
  v25 = viewCopy;
  if (viewCopy && SubviewUsesClassicLayout(viewCopy))
  {
    owner = [(UIInputWindowControllerHostingItem *)self owner];
    [owner sizeForInputViewController:0 inputView:v25];
    v7 = v6;

    inputViewHeight = [(UIInputLayoutHostingItem *)self inputViewHeight];

    if (inputViewHeight)
    {
      inputViewHeight2 = [(UIInputLayoutHostingItem *)self inputViewHeight];
      [inputViewHeight2 setConstant:v7];
    }

    else
    {
      containerView = [(UIInputLayoutHostingItem *)self containerView];
      inputViewLayoutGuide = [containerView inputViewLayoutGuide];
      heightAnchor = [inputViewLayoutGuide heightAnchor];
      v23 = [heightAnchor constraintEqualToConstant:v7];
      [(UIInputLayoutHostingItem *)self setInputViewHeight:v23];

      inputViewHeight2 = [(UIInputLayoutHostingItem *)self inputViewHeight];
      [inputViewHeight2 setIdentifier:@"inputHeight"];
    }

    goto LABEL_11;
  }

  _isSpringBoard = [UIApp _isSpringBoard];
  inputViewHeight3 = [(UIInputLayoutHostingItem *)self inputViewHeight];
  v12 = inputViewHeight3;
  if (_isSpringBoard)
  {

    if (v12)
    {
LABEL_12:
      inputViewHeight4 = [(UIInputLayoutHostingItem *)self inputViewHeight];
      [inputViewHeight4 setActive:1];

      goto LABEL_13;
    }

    inputViewHeight2 = [(UIInputLayoutHostingItem *)self containerView];
    inputViewLayoutGuide2 = [inputViewHeight2 inputViewLayoutGuide];
    heightAnchor2 = [inputViewLayoutGuide2 heightAnchor];
    ownerView = [(UIInputWindowControllerHostingItem *)self ownerView];
    keyboardLayoutGuide = [ownerView keyboardLayoutGuide];
    heightAnchor3 = [keyboardLayoutGuide heightAnchor];
    v18 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    [(UIInputLayoutHostingItem *)self setInputViewHeight:v18];

LABEL_11:
    goto LABEL_12;
  }

  if (v12)
  {
    inputViewHeight5 = [(UIInputLayoutHostingItem *)self inputViewHeight];
    [inputViewHeight5 setActive:0];

    [(UIInputLayoutHostingItem *)self setInputViewHeight:0];
  }

LABEL_13:
}

- (void)disableViewSizingConstraints:(unint64_t)constraints forNewView:(id)view
{
  constraintsCopy = constraints;
  viewCopy = view;
  if (constraintsCopy)
  {
    inputViewHeight = [(UIInputLayoutHostingItem *)self inputViewHeight];
    [inputViewHeight setActive:0];

    [(UIInputLayoutHostingItem *)self setInputViewHeight:0];
    if ((constraintsCopy & 2) == 0)
    {
LABEL_3:
      if ((constraintsCopy & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((constraintsCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  assistantHeight = [(UIInputLayoutHostingItem *)self assistantHeight];
  [assistantHeight setActive:0];

  [(UIInputLayoutHostingItem *)self setAssistantHeight:0];
  if ((constraintsCopy & 4) != 0)
  {
LABEL_4:
    accessoryViewHeightConstraint = [(UIInputLayoutHostingItem *)self accessoryViewHeightConstraint];
    [accessoryViewHeightConstraint setActive:0];

    [(UIInputLayoutHostingItem *)self setAccessoryViewHeightConstraint:0];
  }

LABEL_5:
}

- (void)prepareTranslationFromPlacement:(id)placement to:(id)to
{
  v4.receiver = self;
  v4.super_class = UIInputLayoutHostingItem;
  [(UIInputWindowControllerHostingItem *)&v4 prepareTranslationFromPlacement:placement to:to];
}

- (void)willBeginTranslationFromPlacement:(id)placement to:(id)to
{
  v4.receiver = self;
  v4.super_class = UIInputLayoutHostingItem;
  [(UIInputWindowControllerHostingItem *)&v4 willBeginTranslationFromPlacement:placement to:to];
}

- (void)didFinishTranslationFromPlacement:(id)placement to:(id)to
{
  v4.receiver = self;
  v4.super_class = UIInputLayoutHostingItem;
  [(UIInputWindowControllerHostingItem *)&v4 didFinishTranslationFromPlacement:placement to:to];
}

- (CGAffineTransform)animationTransformForState:(SEL)state
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

- (void)updateTransition:(id)transition withInfo:(id)info
{
  transitionCopy = transition;
  infoCopy = info;
  v8 = [transitionCopy isEqualToString:0x1EFB7ADB0];
  v9 = [transitionCopy isEqualToString:0x1EFB7ADD0];
  if ((v8 & 1) != 0 || v9)
  {
    v11 = [infoCopy objectForKey:@"Origin"];
    v12 = [infoCopy objectForKey:@"IsCompact"];

    bOOLValue = [v12 BOOLValue];
    if (v11)
    {
      inputAssistantHostView = self->_inputAssistantHostView;
      if (inputAssistantHostView)
      {
        superview = [(TUIInputAssistantHostView *)inputAssistantHostView superview];

        if (superview)
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __54__UIInputLayoutHostingItem_updateTransition_withInfo___block_invoke;
          aBlock[3] = &unk_1E7129A80;
          aBlock[4] = self;
          v28 = bOOLValue;
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
    assistantSpacingConstraint = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
    [assistantSpacingConstraint setConstant:0.0];

    v21.receiver = self;
    v21.super_class = UIInputLayoutHostingItem;
    [(UIInputWindowControllerHostingItem *)&v21 updateTransition:transitionCopy withInfo:infoCopy];
    v11 = infoCopy;
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

- (void)completeTransition:(id)transition withInfo:(id)info
{
  transitionCopy = transition;
  infoCopy = info;
  v8 = [transitionCopy isEqualToString:0x1EFB7ADB0];
  v9 = [transitionCopy isEqualToString:0x1EFB7ADD0];
  if ((v8 & 1) != 0 || v9)
  {
    if (v8)
    {
      owner = [(UIInputWindowControllerHostingItem *)self owner];
      [owner generateNotificationsForCompactAssistantFlickGestureCompletion:infoCopy];
    }

    v16 = [infoCopy objectForKey:@"Origin"];
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
    assistantSpacingConstraint = [(UIInputLayoutHostingItem *)self assistantSpacingConstraint];
    [assistantSpacingConstraint setConstant:0.0];

    currentState = [(UIInputLayoutHostingItem *)self currentState];
    isDocked = [currentState isDocked];

    if ((isDocked & 1) == 0)
    {
      placement = [(UIInputWindowControllerHostingItem *)self placement];
      [(UIInputLayoutHostingItem *)self updateVisibilityConstraintsForPlacement:placement];

      ownerView = [(UIInputWindowControllerHostingItem *)self ownerView];
      [ownerView layoutIfNeeded];
    }

    v20.receiver = self;
    v20.super_class = UIInputLayoutHostingItem;
    [(UIInputWindowControllerHostingItem *)&v20 completeTransition:transitionCopy withInfo:infoCopy];
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
  inputViewController = [(UIInputLayoutHostingItem *)self inputViewController];
  animatableElement = [inputViewController animatableElement];

  return animatableElement;
}

- (CGSize)sizeForVisualState:(int64_t)state
{
  if (state & 0xFFFFFFFFFFFFFFFELL) == 2 && ([(UIInputLayoutHostingItem *)self animatedInputView], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6))
  {
    animatedInputView = [(UIInputLayoutHostingItem *)self animatedInputView];
    [animatedInputView sizeForVisualState:state];
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

- (void)prepareForTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition
{
  transitionCopy = transition;
  v24 = *MEMORY[0x1E69E9840];
  v9 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = @"NO";
    *buf = 134218498;
    stateCopy = state;
    if (transitionCopy)
    {
      v15 = @"YES";
    }

    v20 = 2048;
    typeCopy = type;
    v22 = 2112;
    v23 = v15;
    _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "Preparing for state transition visualState:%li animationType:%li interactive:%@", buf, 0x20u);
  }

  standardBackgroundView = [(UIInputLayoutHostingItem *)self standardBackgroundView];

  if (standardBackgroundView)
  {
    standardBackgroundView2 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [standardBackgroundView2 prepareForTransitionToState:state animationType:type interactiveTransition:transitionCopy];
  }

  if ((state - 5) > 1)
  {
    inputLayoutView = [(UIInputLayoutHostingItem *)self inputLayoutView];
    v13 = inputLayoutView;
    v14 = 0;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92__UIInputLayoutHostingItem_prepareForTransitionToState_animationType_interactiveTransition___block_invoke;
    v16[3] = &unk_1E7101C38;
    v16[4] = self;
    v16[5] = state;
    v16[6] = type;
    v17 = transitionCopy;
    [UIView performWithoutAnimation:v16];
    inputLayoutView = [(UIInputLayoutHostingItem *)self inputLayoutView];
    v13 = inputLayoutView;
    v14 = 1;
  }

  [inputLayoutView setHidden:v14];
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

- (void)animatingTransitionFromState:(int64_t)state toState:(int64_t)toState animationType:(int64_t)type totalDuration:(double)duration
{
  v33 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__UIInputLayoutHostingItem_animatingTransitionFromState_toState_animationType_totalDuration___block_invoke;
  aBlock[3] = &unk_1E70F3B20;
  aBlock[4] = self;
  aBlock[5] = state;
  aBlock[6] = toState;
  aBlock[7] = type;
  *&aBlock[8] = duration;
  v11 = _Block_copy(aBlock);
  v12 = *MEMORY[0x1E695EFD0];
  v13 = *(MEMORY[0x1E695EFD0] + 16);
  *&v28.a = *MEMORY[0x1E695EFD0];
  *&v28.c = v13;
  v14 = *(MEMORY[0x1E695EFD0] + 32);
  *&v28.tx = v14;
  if ((type & 0xE) != 0)
  {
    if (state >= 2)
    {
      v15 = duration * 0.5;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = 1.0;
    v17 = 1;
  }

  else if (type)
  {
    v15 = 0.0;
    if ((state - 5) <= 1)
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
    *&v30[14] = state;
    *&v30[22] = 2048;
    *&v30[24] = toState;
    *&v30[32] = 2048;
    *&v30[34] = type;
    *&v30[42] = 2048;
    *&v30[44] = duration;
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
    [UIView animateWithDuration:32 delay:v24 options:v23 animations:duration completion:v15];
    containerView2 = v25;
  }

  else
  {
    v11[2](v11);
    v22 = v28;
    containerView = [(UIInputLayoutHostingItem *)self containerView];
    *v30 = v22;
    [containerView setTransform:v30];

    containerView2 = [(UIInputLayoutHostingItem *)self containerView];
    [containerView2 setAlpha:v16];
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

- (void)transitioningToState:(int64_t)state animationType:(int64_t)type completionPercentage:(double)percentage
{
  standardBackgroundView = [(UIInputLayoutHostingItem *)self standardBackgroundView];

  if (standardBackgroundView)
  {
    standardBackgroundView2 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [standardBackgroundView2 transitioningToState:state animationType:type completionPercentage:percentage];
  }

  animatedAssistantView = [(UIInputLayoutHostingItem *)self animatedAssistantView];

  if (animatedAssistantView)
  {
    animatedAssistantView2 = [(UIInputLayoutHostingItem *)self animatedAssistantView];
    [animatedAssistantView2 transitioningToState:state animationType:type completionPercentage:percentage];
  }
}

- (void)finishedTransitionToState:(int64_t)state animationType:(int64_t)type interactiveTransition:(BOOL)transition
{
  transitionCopy = transition;
  v29 = *MEMORY[0x1E69E9840];
  v9 = _UIInputLayoutItemLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v26 = @"NO";
    *v27 = 134218498;
    *&v27[4] = state;
    if (transitionCopy)
    {
      v26 = @"YES";
    }

    *&v27[12] = 2048;
    *&v27[14] = type;
    *&v27[22] = 2112;
    *&v27[24] = v26;
    _os_log_debug_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEBUG, "Finished state transition finalState:%li animationType:%li interactive:%@", v27, 0x20u);
  }

  standardBackgroundView = [(UIInputLayoutHostingItem *)self standardBackgroundView];

  if (standardBackgroundView)
  {
    standardBackgroundView2 = [(UIInputLayoutHostingItem *)self standardBackgroundView];
    [standardBackgroundView2 finishedTransitionToState:state animationType:type interactiveTransition:transitionCopy];
  }

  animatedAssistantView = [(UIInputLayoutHostingItem *)self animatedAssistantView];

  if (animatedAssistantView)
  {
    animatedAssistantView2 = [(UIInputLayoutHostingItem *)self animatedAssistantView];
    [animatedAssistantView2 finishedTransitionToState:state animationType:type interactiveTransition:transitionCopy];
  }

  inputAssistantHostView = self->_inputAssistantHostView;
  v15 = MEMORY[0x1E695EFD0];
  if (inputAssistantHostView)
  {
    if ((state - 5) > 1)
    {
      if (![(UIInputLayoutHostingItem *)self needsAssistantHost])
      {
        [(TUIInputAssistantHostView *)self->_inputAssistantHostView removeFromSuperview];
      }
    }

    else
    {
      [(TUIInputAssistantHostView *)inputAssistantHostView setAlpha:1.0];
      containerView = [(UIInputLayoutHostingItem *)self containerView];
      v17 = v15[1];
      *v27 = *v15;
      *&v27[16] = v17;
      v28 = v15[2];
      [containerView setTransform:v27];
    }
  }

  containerView2 = [(UIInputLayoutHostingItem *)self containerView];
  v19 = v15[1];
  *v27 = *v15;
  *&v27[16] = v19;
  v28 = v15[2];
  [containerView2 setTransform:v27];

  containerView3 = [(UIInputLayoutHostingItem *)self containerView];
  [containerView3 setAlpha:1.0];

  inputLayoutView = [(UIInputLayoutHostingItem *)self inputLayoutView];
  [inputLayoutView setHidden:0];

  inputLayoutView2 = [(UIInputLayoutHostingItem *)self inputLayoutView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    inputLayoutView3 = [(UIInputLayoutHostingItem *)self inputLayoutView];
    fallbackView = [inputLayoutView3 fallbackView];

    if (fallbackView)
    {
      if ([fallbackView isHidden])
      {
        [fallbackView setAlpha:1.0];
        [fallbackView setHidden:0];
      }
    }
  }
}

- (void)trackPinch:(id)pinch
{
  pinchCopy = pinch;
  if ([pinchCopy state] == 1)
  {
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
    _MergedGlobals_13_7 = v6;

    qword_1ED499098 = 0x4079000000000000;
    keyplaneWidthConstraint = [(UIInputLayoutHostingItem *)self keyplaneWidthConstraint];

    if (!keyplaneWidthConstraint)
    {
      containerView = [(UIInputLayoutHostingItem *)self containerView];
      inputViewLayoutGuide = [containerView inputViewLayoutGuide];
      widthAnchor = [inputViewLayoutGuide widthAnchor];
      v11 = [widthAnchor constraintEqualToConstant:*&_MergedGlobals_13_7];
      [(UIInputLayoutHostingItem *)self setKeyplaneWidthConstraint:v11];
    }

    v12 = *&_MergedGlobals_13_7;
    keyplaneWidthConstraint2 = [(UIInputLayoutHostingItem *)self keyplaneWidthConstraint];
    [keyplaneWidthConstraint2 setConstant:v12];

    keyplaneWidthConstraint3 = [(UIInputLayoutHostingItem *)self keyplaneWidthConstraint];
    [keyplaneWidthConstraint3 setActive:1];

    rightConstraint = [(UIInputLayoutHostingItem *)self rightConstraint];
    [rightConstraint setActive:0];

    containerView2 = [(UIInputLayoutHostingItem *)self containerView];
    trailingAnchor = [containerView2 trailingAnchor];
    containerView3 = [(UIInputLayoutHostingItem *)self containerView];
    inputViewLayoutGuide2 = [containerView3 inputViewLayoutGuide];
    trailingAnchor2 = [inputViewLayoutGuide2 trailingAnchor];
    v21 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
    [(UIInputLayoutHostingItem *)self setRightConstraint:v21];

    rightConstraint2 = [(UIInputLayoutHostingItem *)self rightConstraint];
    [rightConstraint2 setIdentifier:@"inputViewLayoutGuide.trailingAnchor"];

    rightConstraint3 = [(UIInputLayoutHostingItem *)self rightConstraint];
    [rightConstraint3 setActive:1];
  }

  else if ([pinchCopy state] == 3)
  {
    [pinchCopy scale];
    if (v24 <= 1.0)
    {
      [pinchCopy scale];
      if (v25 < 1.0)
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __39__UIInputLayoutHostingItem_trackPinch___block_invoke_2;
        v26[3] = &unk_1E70F35B8;
        v26[4] = self;
        v27 = pinchCopy;
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

- (id)constraintsForView:(id)view embeddedInView:(id)inView insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v26[4] = *MEMORY[0x1E69E9840];
  inViewCopy = inView;
  viewCopy = view;
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [inViewCopy topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:top];
  v26[0] = v23;
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [inViewCopy leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:left];
  v26[1] = v14;
  bottomAnchor = [inViewCopy bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:bottom];
  v26[2] = v17;
  trailingAnchor = [inViewCopy trailingAnchor];

  trailingAnchor2 = [viewCopy trailingAnchor];

  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:right];
  v26[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];

  return v21;
}

- (id)constraintsForView:(id)view embeddedInGuide:(id)guide insets:(UIEdgeInsets)insets identifier:(id)identifier
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v33[4] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  guideCopy = guide;
  viewCopy = view;
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [guideCopy topAnchor];
  v17 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:top];

  identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.topAnchor", identifierCopy];
  [v17 setIdentifier:identifierCopy];

  leftAnchor = [viewCopy leftAnchor];
  leftAnchor2 = [guideCopy leftAnchor];
  v21 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:left];

  identifierCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.leadingAnchor", identifierCopy];
  [v21 setIdentifier:identifierCopy2];

  bottomAnchor = [guideCopy bottomAnchor];
  bottomAnchor2 = [viewCopy bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:bottom];

  identifierCopy3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.bottomAnchor", identifierCopy];
  [v25 setIdentifier:identifierCopy3];

  rightAnchor = [guideCopy rightAnchor];

  rightAnchor2 = [viewCopy rightAnchor];

  v29 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:right];

  identifierCopy4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.trailingAnchor", identifierCopy];

  [v29 setIdentifier:identifierCopy4];
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