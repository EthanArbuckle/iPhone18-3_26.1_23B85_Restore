@interface UIKeyboardLayoutGuide
- (BOOL)_changeOffsetConstants:(UIOffset)constants force:(BOOL)force;
- (BOOL)_changeSizingConstants:(CGSize)constants force:(BOOL)force;
- (BOOL)_moveGuideOffscreenAtEdge:(unint64_t)edge force:(BOOL)force;
- (BOOL)assertionActivationStateForType:(unint64_t)type;
- (BOOL)isTransitioning;
- (BOOL)shouldFollowCurrentKeyboard;
- (BOOL)updateLightEffectsRenderConfig:(id)config animated:(BOOL)animated;
- (CGSize)defaultKeyboardSizeForInputMode:(id)mode orientation:(int64_t)orientation addingAssistant:(BOOL)assistant;
- (CGSize)interactionResetSize;
- (CGSize)previousSize;
- (UIKeyboardLayoutGuide)init;
- (UIKeyboardLayoutGuide)initWithCoder:(id)coder;
- (UIOffset)interactionResetOffset;
- (UIOffset)previousOffset;
- (_UIAssertionController)_assertionController;
- (id)_obtainTransitionAssertionForReason:(id)reason;
- (id)guideBackdropMatchLayer;
- (unint64_t)validatedOverlappingEdges:(unint64_t)edges;
- (void)_commonInit;
- (void)_detachGuideFromKeyboard:(BOOL)keyboard;
- (void)_setTransitioning:(BOOL)transitioning;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type;
- (void)constrainToReference:(id)reference;
- (void)disableSynchronizingWithKeyboard;
- (void)encodeWithCoder:(id)coder;
- (void)followUndockedKeyboardOfTypes:(int64_t)types;
- (void)forceDismissGuideAnimated:(BOOL)animated;
- (void)forceResizeGuideForInputMode:(id)mode orientation:(BOOL)orientation showsAssistantBar:(BOOL)bar animated:(BOOL)animated;
- (void)forceResizeGuideForOrientation:(int64_t)orientation showsAssistantBar:(BOOL)bar animated:(BOOL)animated;
- (void)hideLightEffectsView:(BOOL)view;
- (void)inheritOptionsFromGuide:(id)guide;
- (void)prepareForTestingWithState:(int64_t)state;
- (void)reenableSynchronizingWithKeyboard;
- (void)removeLightEffectsView;
- (void)resetGuideForCancelledDismissInteraction;
- (void)setCurrentKeyboardVisualState:(int64_t)state;
- (void)setDocked:(BOOL)docked;
- (void)setFollowsUndockedKeyboard:(BOOL)followsUndockedKeyboard;
- (void)setIgnoresSafeArea:(BOOL)area;
- (void)setKeyboardDismissPadding:(CGFloat)keyboardDismissPadding;
- (void)setKeyboardTrackingState:(id)state;
- (void)setWindowGuide:(BOOL)guide;
- (void)transitionBackdropForAnimationStart:(BOOL)start;
- (void)updateBottomConstraint;
- (void)updateSizeForInputMode:(id)mode orientation:(int64_t)orientation showsAssistantBar:(BOOL)bar animated:(BOOL)animated;
- (void)useLightEffectsBackgroundBelowView:(id)view;
@end

@implementation UIKeyboardLayoutGuide

- (UIKeyboardLayoutGuide)init
{
  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutGuide;
  v2 = [(UITrackingLayoutGuide *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_followsUndockedKeyboard = 0;
    [(UIKeyboardLayoutGuide *)v2 _commonInit];
  }

  return v3;
}

- (void)_commonInit
{
  self->_docked = 1;
  [(UITrackingLayoutGuide *)self pauseUpdatingConstraintsForEdges:11];
  self->_transitioning = 0;
  self->_windowGuide = 0;
  self->_addsHeightWhenUndocked = 0;
  self->_ignoresSafeArea = 0;
  self->_ignoreKeyboardChanges = 0;
  self->_keyboardDismissPadding = 0.0;
  self->_followTypes = 0;
  self->_currentKeyboardVisualState = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  self->_previousOffset = _Q0;
  self->_previousSize = xmmword_18A64B730;
  [(UITrackingLayoutGuide *)self setProportionalEdgeThresholds:0.1, 0.1, 0.03, 0.1];

  [(UITrackingLayoutGuide *)self startUpdatingConstraintsForEdges:15];
}

- (void)updateBottomConstraint
{
  viewBottomConstraint = [(UIKeyboardLayoutGuide *)self viewBottomConstraint];

  if (viewBottomConstraint)
  {
    viewBottomConstraint2 = [(UIKeyboardLayoutGuide *)self viewBottomConstraint];
    [viewBottomConstraint2 setActive:0];
  }

  ignoresSafeArea = [(UIKeyboardLayoutGuide *)self ignoresSafeArea];
  owningView = [(UILayoutGuide *)self owningView];
  v7 = owningView;
  if (ignoresSafeArea)
  {
    bottomAnchor = [owningView bottomAnchor];
    topAnchor = [(UILayoutGuide *)self topAnchor];
    topAnchor2 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:topAnchor];
    [(UIKeyboardLayoutGuide *)self setViewBottomConstraint:topAnchor2];
  }

  else
  {
    bottomAnchor = [owningView safeAreaLayoutGuide];
    topAnchor = [bottomAnchor bottomAnchor];
    topAnchor2 = [(UILayoutGuide *)self topAnchor];
    v11 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
    [(UIKeyboardLayoutGuide *)self setViewBottomConstraint:v11];
  }

  viewBottomConstraint3 = [(UIKeyboardLayoutGuide *)self viewBottomConstraint];
  [viewBottomConstraint3 setIdentifier:@"UIViewKeyboardLayoutGuide-viewBottom"];

  viewBottomConstraint4 = [(UIKeyboardLayoutGuide *)self viewBottomConstraint];
  [viewBottomConstraint4 setActive:1];
}

- (UIOffset)previousOffset
{
  horizontal = self->_previousOffset.horizontal;
  vertical = self->_previousOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (CGSize)previousSize
{
  width = self->_previousSize.width;
  height = self->_previousSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)shouldFollowCurrentKeyboard
{
  if ([(UIKeyboardLayoutGuide *)self currentKeyboardVisualState]== 2)
  {
    goto LABEL_2;
  }

  currentKeyboardVisualState = [(UIKeyboardLayoutGuide *)self currentKeyboardVisualState];
  if (currentKeyboardVisualState == 1)
  {
    return currentKeyboardVisualState;
  }

  if (self->_followsUndockedKeyboard || self->_followTypes == 30)
  {
LABEL_2:
    LOBYTE(currentKeyboardVisualState) = 1;
  }

  else
  {
    if ([(UIKeyboardLayoutGuide *)self currentKeyboardVisualState]== 3)
    {
      v4 = 2;
    }

    else if ([(UIKeyboardLayoutGuide *)self currentKeyboardVisualState]== 4)
    {
      v4 = 4;
    }

    else if ([(UIKeyboardLayoutGuide *)self currentKeyboardVisualState]== 5)
    {
      v4 = 8;
    }

    else
    {
      if ([(UIKeyboardLayoutGuide *)self currentKeyboardVisualState]!= 6)
      {
        LOBYTE(currentKeyboardVisualState) = 0;
        return currentKeyboardVisualState;
      }

      v4 = 16;
    }

    LOBYTE(currentKeyboardVisualState) = (self->_followTypes & v4) != 0;
  }

  return currentKeyboardVisualState;
}

- (BOOL)isTransitioning
{
  if ([(UIKeyboardLayoutGuide *)self isWindowGuide])
  {
    return self->_transitioning;
  }

  else
  {
    if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
    {
      owningView = [(UILayoutGuide *)self owningView];
      window = [owningView window];
      _primaryKeyboardTrackingGuide = [window _primaryKeyboardTrackingGuide];
      isTransitioning = [_primaryKeyboardTrackingGuide isTransitioning];

      return isTransitioning;
    }

    return 0;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutGuide;
  coderCopy = coder;
  [(UILayoutGuide *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_followsUndockedKeyboard forKey:{@"UIKeyboardLayoutGuideFollowsUndocked", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_usesBottomSafeArea forKey:@"UIKeyboardLayoutGuideUsesBottomSafeArea"];
  [coderCopy encodeDouble:@"UIKeyboardLayoutGuideKeyboardDismissPadding" forKey:self->_keyboardDismissPadding];
}

- (UIKeyboardLayoutGuide)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = UIKeyboardLayoutGuide;
  v5 = [(UILayoutGuide *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_followsUndockedKeyboard = [coderCopy decodeBoolForKey:@"UIKeyboardLayoutGuideFollowsUndocked"];
    v5->_usesBottomSafeArea = [coderCopy decodeBoolForKey:@"UIKeyboardLayoutGuideUsesBottomSafeArea"];
    [coderCopy decodeDoubleForKey:@"UIKeyboardLayoutGuideKeyboardDismissPadding"];
    v5->_keyboardDismissPadding = v6;
    [(UIKeyboardLayoutGuide *)v5 _commonInit];
  }

  return v5;
}

- (void)inheritOptionsFromGuide:(id)guide
{
  guideCopy = guide;
  self->_followsUndockedKeyboard = [guideCopy followsUndockedKeyboard];
  self->_followTypes = [guideCopy followTypes];
  self->_docked = [guideCopy isDocked];
  self->_addsHeightWhenUndocked = [guideCopy addsHeightWhenUndocked];
  self->_ignoresSafeArea = [guideCopy ignoresSafeArea] ^ 1;
  -[UIKeyboardLayoutGuide setIgnoresSafeArea:](self, "setIgnoresSafeArea:", [guideCopy ignoresSafeArea]);
  [guideCopy keyboardDismissPadding];
  self->_keyboardDismissPadding = v5;
  lightEffectsBackdrop = [guideCopy lightEffectsBackdrop];
  lightEffectsBackdrop = self->_lightEffectsBackdrop;
  self->_lightEffectsBackdrop = lightEffectsBackdrop;

  assistantHeightConstraint = [guideCopy assistantHeightConstraint];

  assistantHeightConstraint = self->_assistantHeightConstraint;
  self->_assistantHeightConstraint = assistantHeightConstraint;
}

- (void)constrainToReference:(id)reference
{
  v25[4] = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
  {
    _systemConstraints = [(UILayoutGuide *)self _systemConstraints];
    v6 = [_systemConstraints count];

    if (v6)
    {
      v7 = MEMORY[0x1E69977A0];
      _systemConstraints2 = [(UILayoutGuide *)self _systemConstraints];
      [v7 deactivateConstraints:_systemConstraints2];
    }

    topAnchor = [(UILayoutGuide *)self topAnchor];
    topAnchor2 = [referenceCopy topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];

    LODWORD(v12) = 1148829696;
    [v11 setPriority:v12];
    [v11 setIdentifier:@"UIViewKeyboardLayoutGuide-topConstraint"];
    leadingAnchor = [(UILayoutGuide *)self leadingAnchor];
    leadingAnchor2 = [referenceCopy leadingAnchor];
    v15 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    [v15 setIdentifier:@"UIViewKeyboardLayoutGuide-leadingConstraint"];
    bottomAnchor = [referenceCopy bottomAnchor];
    bottomAnchor2 = [(UILayoutGuide *)self bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    [v18 setIdentifier:@"UIViewKeyboardLayoutGuide-bottomConstraint"];
    trailingAnchor = [referenceCopy trailingAnchor];
    trailingAnchor2 = [(UILayoutGuide *)self trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    [v21 setIdentifier:@"UIViewKeyboardLayoutGuide-trailingConstraint"];
    v25[0] = v11;
    v25[1] = v15;
    v25[2] = v18;
    v25[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [(UILayoutGuide *)self _setSystemConstraints:v22];

    v23 = MEMORY[0x1E69977A0];
    _systemConstraints3 = [(UILayoutGuide *)self _systemConstraints];
    [v23 activateConstraints:_systemConstraints3];

    [(UIKeyboardLayoutGuide *)self updateBottomConstraint];
  }
}

- (void)setFollowsUndockedKeyboard:(BOOL)followsUndockedKeyboard
{
  if (self->_followsUndockedKeyboard != followsUndockedKeyboard)
  {
    v4 = followsUndockedKeyboard;
    self->_followsUndockedKeyboard = followsUndockedKeyboard;
    if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
    {
      owningView = [(UILayoutGuide *)self owningView];
      window = [owningView window];
      _primaryKeyboardTrackingGuide = [window _primaryKeyboardTrackingGuide];
      [_primaryKeyboardTrackingGuide setFollowsUndockedKeyboard:v4];
    }

    else
    {
      if (v4)
      {
        v9 = 30;
      }

      else
      {
        v9 = 0;
      }

      [(UIKeyboardLayoutGuide *)self setFollowTypes:v9];
    }

    [(UITrackingLayoutGuide *)self resetAnimationOptions];
  }
}

- (void)setIgnoresSafeArea:(BOOL)area
{
  if (self->_ignoresSafeArea != area)
  {
    areaCopy = area;
    self->_ignoresSafeArea = area;
    if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
    {
      [(UIKeyboardLayoutGuide *)self updateBottomConstraint];
      owningView = [(UILayoutGuide *)self owningView];
      window = [owningView window];
      _primaryKeyboardTrackingGuide = [window _primaryKeyboardTrackingGuide];
      [_primaryKeyboardTrackingGuide setIgnoresSafeArea:areaCopy];
    }

    else if ([(UIKeyboardLayoutGuide *)self isWindowGuide])
    {

      [(UIKeyboardLayoutGuide *)self _moveGuideOffscreenAtEdge:4 force:1];
    }
  }
}

- (void)setKeyboardDismissPadding:(CGFloat)keyboardDismissPadding
{
  if (self->_keyboardDismissPadding != keyboardDismissPadding)
  {
    self->_keyboardDismissPadding = keyboardDismissPadding;
    if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
    {
      owningView = [(UILayoutGuide *)self owningView];
      window = [owningView window];
      _primaryKeyboardTrackingGuide = [window _primaryKeyboardTrackingGuide];
      [_primaryKeyboardTrackingGuide setKeyboardDismissPadding:keyboardDismissPadding];
    }
  }
}

- (void)followUndockedKeyboardOfTypes:(int64_t)types
{
  if (self->_followTypes != types)
  {
    self->_followTypes = types;
    if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
    {
      owningView = [(UILayoutGuide *)self owningView];
      window = [owningView window];
      _primaryKeyboardTrackingGuide = [window _primaryKeyboardTrackingGuide];
      [_primaryKeyboardTrackingGuide followUndockedKeyboardOfTypes:types];
    }
  }
}

- (void)forceResizeGuideForOrientation:(int64_t)orientation showsAssistantBar:(BOOL)bar animated:(BOOL)animated
{
  animatedCopy = animated;
  barCopy = bar;
  v9 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_error_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "forceResizeGuideForOrientation:showsAssistantBar:animated: has been deprecated.", v12, 2u);
  }

  v10 = +[UIKeyboardInputModeController sharedInputModeController];
  currentInputMode = [v10 currentInputMode];
  [(UIKeyboardLayoutGuide *)self updateSizeForInputMode:currentInputMode orientation:orientation showsAssistantBar:barCopy animated:animatedCopy];
}

- (void)forceResizeGuideForInputMode:(id)mode orientation:(BOOL)orientation showsAssistantBar:(BOOL)bar animated:(BOOL)animated
{
  animatedCopy = animated;
  barCopy = bar;
  orientationCopy = orientation;
  modeCopy = mode;
  v11 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_error_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "forceResizeGuideForInputMode:orientation:showsAssistantBar:animated: has been deprecated.", v15, 2u);
  }

  if (!modeCopy)
  {
    v12 = +[UIKeyboardInputModeController sharedInputModeController];
    modeCopy = [v12 documentInputMode];
  }

  v13 = +[UIKeyboardInputModeController sharedInputModeController];
  v14 = [v13 lastUsedInputModeForTextInputMode:modeCopy];

  [(UIKeyboardLayoutGuide *)self updateSizeForInputMode:v14 orientation:orientationCopy showsAssistantBar:barCopy animated:animatedCopy];
}

- (void)forceDismissGuideAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v5 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "forceDismissGuideAnimated: has been deprecated.", v6, 2u);
  }

  [(UIKeyboardLayoutGuide *)self updateSizeForInputMode:0 orientation:0 showsAssistantBar:0 animated:animatedCopy];
}

- (void)updateSizeForInputMode:(id)mode orientation:(int64_t)orientation showsAssistantBar:(BOOL)bar animated:(BOOL)animated
{
  v6 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_188A29000, v6, OS_LOG_TYPE_ERROR, "This SPI has been deprecated. Please remove it from your project.", v7, 2u);
  }
}

- (void)disableSynchronizingWithKeyboard
{
  v2 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "The disableSynchronizingWithKeyboard SPI has been deprecated.", v3, 2u);
  }
}

- (void)reenableSynchronizingWithKeyboard
{
  v2 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v3 = 0;
    _os_log_error_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "The reenableSynchronizingWithKeyboard SPI has been deprecated.", v3, 2u);
  }
}

- (void)_detachGuideFromKeyboard:(BOOL)keyboard
{
  keyboardCopy = keyboard;
  v12 = *MEMORY[0x1E69E9840];
  if ([(UIKeyboardLayoutGuide *)self ignoreKeyboardChanges]!= keyboard)
  {
    v5 = _UIKeyboardLayoutGuideLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"attached";
      if (keyboardCopy)
      {
        v6 = @"detached";
      }

      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "_detachGuideFromKeyboard: changed to %@", &v10, 0xCu);
    }

    if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
    {
      owningView = [(UILayoutGuide *)self owningView];
      window = [owningView window];
      _primaryKeyboardTrackingGuide = [window _primaryKeyboardTrackingGuide];
      [_primaryKeyboardTrackingGuide _detachGuideFromKeyboard:keyboardCopy];
    }

    [(UIKeyboardLayoutGuide *)self setIgnoreKeyboardChanges:keyboardCopy];
  }
}

- (CGSize)defaultKeyboardSizeForInputMode:(id)mode orientation:(int64_t)orientation addingAssistant:(BOOL)assistant
{
  assistantCopy = assistant;
  modeCopy = mode;
  v9 = +[UIKeyboardImpl keyboardScreen];
  v10 = [UIKBScreenTraits traitsWithScreen:v9 orientation:orientation];

  identifier = [modeCopy identifier];
  [UIKeyboardLayoutStar keyboardSizeForInputMode:identifier screenTraits:v10 keyboardType:0];
  v13 = v12;
  v15 = v14;

  [UIKeyboardImpl topMarginForInterfaceOrientation:orientation];
  v17 = v15 + v16;
  [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:orientation inputMode:modeCopy];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v17 + v19 + v23;
  if (assistantCopy)
  {
    v27 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    systemInputAssistantViewController = [v27 systemInputAssistantViewController];
    v29 = systemInputAssistantViewController;
    if (systemInputAssistantViewController)
    {
      traitCollection = [systemInputAssistantViewController traitCollection];
      [v29 preferredHeightForTraitCollection:traitCollection orientation:orientation];
    }

    else
    {
      owningView = [(UILayoutGuide *)self owningView];
      traitCollection = [owningView traitCollection];

      [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:traitCollection interfaceOrientation:orientation];
    }

    v33 = v31;

    v26 = v26 + v33;
  }

  v34 = v13 + v21 + v25;
  v35 = v26;
  result.height = v35;
  result.width = v34;
  return result;
}

- (void)useLightEffectsBackgroundBelowView:(id)view
{
  v85 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  owningView = [(UILayoutGuide *)self owningView];
  v7 = [viewCopy isEqual:owningView];

  if (v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardLayoutGuide.m" lineNumber:367 description:{@"You cannot add a backdrop below a view to that view's keyboardLayoutGuide. Please use a keyboardLayoutGuide from higher up the view hierarchy. For best results, use viewController.view.keyboardLayoutGuide (or something else that's the size of your window)."}];
  }

  owningView2 = [(UILayoutGuide *)self owningView];
  v9 = [viewCopy isDescendantOfView:owningView2];

  if ((v9 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"UIKeyboardLayoutGuide.m" lineNumber:368 description:{@"To add a backdrop with keyboardLayoutGuide, the backedView to put it below must be a subview of the keyboardLayoutGuide's owning view. Ideally use viewController.view.keyboardLayoutGuide (or something else that's the size of your window)."}];
  }

  if ((UIKeyboardGetSafeDeviceIdiom() & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v10 = _UIKeyboardLayoutGuideLogger();
    if (os_log_type_enabled(&v10->super.super.super.super, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_188A29000, &v10->super.super.super.super, OS_LOG_TYPE_DEBUG, "useLightEffectsBackgroundBelowView: is only supported on iPhone", buf, 2u);
    }

LABEL_14:

    goto LABEL_15;
  }

  lightEffectsBackdrop = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];

  if (!lightEffectsBackdrop)
  {
    owningView3 = [(UILayoutGuide *)self owningView];
    _window = [owningView3 _window];
    _primaryKeyboardTrackingGuide = [_window _primaryKeyboardTrackingGuide];
    [_primaryKeyboardTrackingGuide previousSize];
    v16 = v15;

    v17 = _UIKeyboardLayoutGuideLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v82 = objc_opt_class();
      v83 = 2048;
      v84 = viewCopy;
      _os_log_debug_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEBUG, "useLightEffectsBackgroundBelowView: adding below <%@: %p>", buf, 0x16u);
    }

    v10 = objc_alloc_init(_UIKBLightEffectsBackground);
    [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    owningView4 = [(UILayoutGuide *)self owningView];
    v78 = viewCopy;
    [owningView4 insertSubview:v10 belowSubview:viewCopy];

    topAnchor = [(UIView *)v10 topAnchor];
    owningView5 = [(UILayoutGuide *)self owningView];
    topAnchor2 = [owningView5 topAnchor];
    v74 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v80[0] = v74;
    leadingAnchor = [(UIView *)v10 leadingAnchor];
    owningView6 = [(UILayoutGuide *)self owningView];
    leadingAnchor2 = [owningView6 leadingAnchor];
    v70 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v80[1] = v70;
    owningView7 = [(UILayoutGuide *)self owningView];
    bottomAnchor = [owningView7 bottomAnchor];
    bottomAnchor2 = [(UIView *)v10 bottomAnchor];
    v66 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v80[2] = v66;
    owningView8 = [(UILayoutGuide *)self owningView];
    trailingAnchor = [owningView8 trailingAnchor];
    trailingAnchor2 = [(UIView *)v10 trailingAnchor];
    v62 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v80[3] = v62;
    fullBackdropLayoutGuide = [(_UIKBLightEffectsBackground *)v10 fullBackdropLayoutGuide];
    topAnchor3 = [fullBackdropLayoutGuide topAnchor];
    topAnchor4 = [(UILayoutGuide *)self topAnchor];
    v58 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v80[4] = v58;
    fullBackdropLayoutGuide2 = [(_UIKBLightEffectsBackground *)v10 fullBackdropLayoutGuide];
    leadingAnchor3 = [fullBackdropLayoutGuide2 leadingAnchor];
    leadingAnchor4 = [(UILayoutGuide *)self leadingAnchor];
    v54 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v80[5] = v54;
    trailingAnchor3 = [(UILayoutGuide *)self trailingAnchor];
    fullBackdropLayoutGuide3 = [(_UIKBLightEffectsBackground *)v10 fullBackdropLayoutGuide];
    trailingAnchor4 = [fullBackdropLayoutGuide3 trailingAnchor];
    v50 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v80[6] = v50;
    fullBackdropLayoutGuide4 = [(_UIKBLightEffectsBackground *)v10 fullBackdropLayoutGuide];
    bottomAnchor3 = [fullBackdropLayoutGuide4 bottomAnchor];
    bottomAnchor4 = [(UILayoutGuide *)self bottomAnchor];
    v21 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v80[7] = v21;
    assistantLayoutGuide = [(_UIKBLightEffectsBackground *)v10 assistantLayoutGuide];
    topAnchor5 = [assistantLayoutGuide topAnchor];
    topAnchor6 = [(UILayoutGuide *)self topAnchor];
    v25 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v80[8] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:9];
    [(UIKeyboardLayoutGuide *)self setBackdropConstraints:v26];

    owningView9 = [(UILayoutGuide *)self owningView];
    traitCollection = [owningView9 traitCollection];
    [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:traitCollection];
    v30 = v29;

    assistantLayoutGuide2 = [(_UIKBLightEffectsBackground *)v10 assistantLayoutGuide];
    heightAnchor = [assistantLayoutGuide2 heightAnchor];
    v33 = [heightAnchor constraintEqualToConstant:v30];
    [(UIKeyboardLayoutGuide *)self setAssistantHeightConstraint:v33];

    v34 = MEMORY[0x1E69977A0];
    backdropConstraints = [(UIKeyboardLayoutGuide *)self backdropConstraints];
    assistantHeightConstraint = [(UIKeyboardLayoutGuide *)self assistantHeightConstraint];
    v37 = [backdropConstraints arrayByAddingObject:assistantHeightConstraint];
    [v34 activateConstraints:v37];

    [(UIKeyboardLayoutGuide *)self setLightEffectsBackdrop:v10];
    lightEffectsBackdrop2 = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];
    [lightEffectsBackdrop2 changeClippingStyle:3];

    owningView10 = [(UILayoutGuide *)self owningView];
    _window2 = [owningView10 _window];
    _primaryKeyboardTrackingGuide2 = [_window2 _primaryKeyboardTrackingGuide];
    lightEffectsBackdrop3 = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];
    [_primaryKeyboardTrackingGuide2 setLightEffectsBackdrop:lightEffectsBackdrop3];

    owningView11 = [(UILayoutGuide *)self owningView];
    _window3 = [owningView11 _window];
    _primaryKeyboardTrackingGuide3 = [_window3 _primaryKeyboardTrackingGuide];
    assistantHeightConstraint2 = [(UIKeyboardLayoutGuide *)self assistantHeightConstraint];
    [_primaryKeyboardTrackingGuide3 setAssistantHeightConstraint:assistantHeightConstraint2];

    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __60__UIKeyboardLayoutGuide_useLightEffectsBackgroundBelowView___block_invoke;
    v79[3] = &unk_1E70F3590;
    v79[4] = self;
    [UIView performWithoutAnimation:v79];
    if (v16 > 1.0)
    {
      [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_606];
    }

    viewCopy = v78;
    goto LABEL_14;
  }

LABEL_15:
  [(UIKeyboardLayoutGuide *)self hideLightEffectsView:0];
}

void __60__UIKeyboardLayoutGuide_useLightEffectsBackgroundBelowView___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) owningView];
  [v1 layoutIfNeeded];
}

- (void)hideLightEffectsView:(BOOL)view
{
  if (view)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  lightEffectsBackdrop = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];
  [lightEffectsBackdrop setAlpha:v3];
}

- (void)removeLightEffectsView
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v14 = 138412546;
    v15 = objc_opt_class();
    v16 = 2048;
    selfCopy = self;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "removeLightEffectsView for <%@: %p>", &v14, 0x16u);
  }

  lightEffectsBackdrop = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];

  if (lightEffectsBackdrop)
  {
    v5 = MEMORY[0x1E69977A0];
    backdropConstraints = [(UIKeyboardLayoutGuide *)self backdropConstraints];
    [v5 deactivateConstraints:backdropConstraints];

    [(UIKeyboardLayoutGuide *)self setBackdropConstraints:0];
    assistantHeightConstraint = [(UIKeyboardLayoutGuide *)self assistantHeightConstraint];
    [assistantHeightConstraint setActive:0];

    [(UIKeyboardLayoutGuide *)self setAssistantHeightConstraint:0];
    lightEffectsBackdrop2 = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];
    [lightEffectsBackdrop2 removeFromSuperview];

    [(UIKeyboardLayoutGuide *)self setLightEffectsBackdrop:0];
    owningView = [(UILayoutGuide *)self owningView];
    [owningView layoutIfNeeded];
  }

  if ([(UIKeyboardLayoutGuide *)self isWindowGuide])
  {
    v10 = _UIKeyboardLayoutGuideLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14) = 0;
      _os_log_debug_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEBUG, "removeLightEffectsView update keyboard backdrop", &v14, 2u);
    }

    [UIKeyboardSceneDelegate performOnControllers:&__block_literal_global_54_4];
  }

  else
  {
    owningView2 = [(UILayoutGuide *)self owningView];
    _window = [owningView2 _window];
    _primaryKeyboardTrackingGuide = [_window _primaryKeyboardTrackingGuide];
    [_primaryKeyboardTrackingGuide removeLightEffectsView];
  }
}

- (void)transitionBackdropForAnimationStart:(BOOL)start
{
  startCopy = start;
  lightEffectsBackdrop = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];
  [lightEffectsBackdrop updateAlphaForAnimationStart:startCopy];
}

- (BOOL)updateLightEffectsRenderConfig:(id)config animated:(BOOL)animated
{
  animatedCopy = animated;
  configCopy = config;
  lightEffectsBackdrop = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];

  if (lightEffectsBackdrop)
  {
    if ([configCopy animatedBackground])
    {
      [(UIKeyboardLayoutGuide *)self hideLightEffectsView:0];
      lightEffectsBackdrop2 = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];
      v9 = lightEffectsBackdrop2;
      if (animatedCopy)
      {
        [lightEffectsBackdrop2 animatedTransitionToRenderConfig:configCopy];
      }

      else
      {
        [lightEffectsBackdrop2 _setRenderConfig:configCopy];
      }
    }

    else
    {
      [(UIKeyboardLayoutGuide *)self hideLightEffectsView:1];
    }
  }

  return lightEffectsBackdrop != 0;
}

- (id)guideBackdropMatchLayer
{
  lightEffectsBackdrop = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];
  layerForPositionMatchMove = [lightEffectsBackdrop layerForPositionMatchMove];

  return layerForPositionMatchMove;
}

- (void)setDocked:(BOOL)docked
{
  if (self->_docked != docked)
  {
    dockedCopy = docked;
    self->_docked = docked;
    if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
    {
      owningView = [(UILayoutGuide *)self owningView];
      window = [owningView window];
      _primaryKeyboardTrackingGuide = [window _primaryKeyboardTrackingGuide];
      [_primaryKeyboardTrackingGuide setDocked:dockedCopy];
    }

    else
    {
      [(UITrackingLayoutGuide *)self resetAnimationOptions];
      if (![(UIKeyboardLayoutGuide *)self isTransitioning]|| !dockedCopy || [(UIKeyboardLayoutGuide *)self shouldFollowCurrentKeyboard])
      {
        return;
      }

      owningView = [(UILayoutGuide *)self owningView];
      [owningView bounds];
      v8 = v7;
      window = [(UILayoutGuide *)self owningView];
      _primaryKeyboardTrackingGuide = [window window];
      [_primaryKeyboardTrackingGuide insetForDismissedKeyboardGuide];
      [(UIKeyboardLayoutGuide *)self setPreviousSize:v8, v9];
    }
  }
}

- (void)setCurrentKeyboardVisualState:(int64_t)state
{
  if (self->_currentKeyboardVisualState != state)
  {
    [(UIKeyboardLayoutGuide *)self keyboardStateIsDocked:?];
    v5 = [(UIKeyboardLayoutGuide *)self keyboardStateIsDocked:state];
    self->_currentKeyboardVisualState = state;
    [(UIKeyboardLayoutGuide *)self setDocked:v5];
    if (!v5)
    {

      [(UIKeyboardLayoutGuide *)self setPreviousSize:1.0, 0.0];
    }
  }
}

- (void)setKeyboardTrackingState:(id)state
{
  stateCopy = state;
  if ([stateCopy isFloating])
  {
    if (![stateCopy hasFloatingAssistantView])
    {
      v6 = 3;
      goto LABEL_11;
    }

    v4 = [stateCopy isCompact] == 0;
    v5 = 5;
  }

  else
  {
    if (![stateCopy isDocked])
    {
      v6 = 4;
      goto LABEL_11;
    }

    v4 = [stateCopy hasInputView] == 0;
    v5 = 1;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 + 1;
  }

LABEL_11:
  [(UIKeyboardLayoutGuide *)self setCurrentKeyboardVisualState:v6];
}

- (void)setWindowGuide:(BOOL)guide
{
  if (self->_windowGuide != guide)
  {
    self->_windowGuide = guide;
  }
}

- (id)_obtainTransitionAssertionForReason:(id)reason
{
  reasonCopy = reason;
  if ([(UIKeyboardLayoutGuide *)self isWindowGuide])
  {
    _assertionController = [(UIKeyboardLayoutGuide *)self _assertionController];
    v6 = [_assertionController vendAssertionOfType:1 initialState:1 reason:reasonCopy requiresExplicitInvalidation:0];
LABEL_5:

    goto LABEL_7;
  }

  if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
  {
    _assertionController = [(UILayoutGuide *)self owningView];
    window = [_assertionController window];
    _primaryKeyboardTrackingGuide = [window _primaryKeyboardTrackingGuide];
    v6 = [_primaryKeyboardTrackingGuide _obtainTransitionAssertionForReason:reasonCopy];

    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)_setTransitioning:(BOOL)transitioning
{
  transitioningCopy = transitioning;
  v9 = *MEMORY[0x1E69E9840];
  if ([(UIKeyboardLayoutGuide *)self isWindowGuide]&& self->_transitioning != transitioningCopy)
  {
    self->_transitioning = transitioningCopy;
    v5 = _UIKeyboardLayoutGuideLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"not transitioning";
      if (transitioningCopy)
      {
        v6 = @"transitioning";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "setTransitioning: %@", &v7, 0xCu);
    }

    if (!transitioningCopy)
    {
      [(UITrackingLayoutGuide *)self resetAnimationOptions];
    }
  }
}

- (unint64_t)validatedOverlappingEdges:(unint64_t)edges
{
  edgesCopy = edges & 0xFFFFFFFFFFFFFFF5;
  if ((~edges & 0xA) != 0)
  {
    edgesCopy = edges;
  }

  if ((~edges & 5) != 0)
  {
    v4 = edgesCopy;
  }

  else
  {
    v4 = edges & 0xFFFFFFFFFFFFFFFELL;
  }

  if ((v4 & 4) == 0 && [(UIKeyboardLayoutGuide *)self currentKeyboardVisualState]!= 3 && [(UIKeyboardLayoutGuide *)self currentKeyboardVisualState]!= 4)
  {
    v4 |= 4uLL;
  }

  return v4;
}

- (BOOL)_moveGuideOffscreenAtEdge:(unint64_t)edge force:(BOOL)force
{
  forceCopy = force;
  v29 = *MEMORY[0x1E69E9840];
  if (![(UIKeyboardLayoutGuide *)self isWindowGuide]|| [(UIKeyboardLayoutGuide *)self isTransitioning]&& !forceCopy)
  {
    return 0;
  }

  v7 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 134217984;
    edgeCopy = edge;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "_moveGuideOffscreenAtEdge: %lu", &v27, 0xCu);
  }

  owningView = [(UILayoutGuide *)self owningView];
  [owningView bounds];
  v10 = v9;

  [(UIKeyboardLayoutGuide *)self previousOffset];
  v12 = v11;
  v14 = v13;
  [(UIKeyboardLayoutGuide *)self previousSize];
  v16 = v15;
  v18 = v17;
  v19 = v12 >= 0.0 ? v12 : 0.0;
  v20 = v14 >= 0.0 ? v14 : 0.0;
  [(UIKeyboardLayoutGuide *)self setInteractionResetOffset:v19, v20];
  [(UIKeyboardLayoutGuide *)self setInteractionResetSize:v16, v18];
  if (edge == 2)
  {
    v21 = v19 - v10;
  }

  else if (edge == 8)
  {
    v21 = v10 + v19;
  }

  else
  {
    v20 = 0.0;
    if ([(UIKeyboardLayoutGuide *)self ignoresSafeArea])
    {
      v18 = 0.0;
    }

    else
    {
      owningView2 = [(UILayoutGuide *)self owningView];
      [owningView2 safeAreaInsets];
      v18 = v23;
    }

    v16 = v10;
    v21 = 0.0;
  }

  v24 = [(UIKeyboardLayoutGuide *)self _changeOffsetConstants:forceCopy force:v21, v20];
  v25 = [(UIKeyboardLayoutGuide *)self _changeSizingConstants:forceCopy force:v16, v18];
  [(UITrackingLayoutGuide *)self updateConstraintsForActiveEdges];
  result = 1;
  if (!v24 && !v25)
  {
    return 0;
  }

  return result;
}

- (void)resetGuideForCancelledDismissInteraction
{
  v7 = *MEMORY[0x1E69E9840];
  if ([(UIKeyboardLayoutGuide *)self isWindowGuide])
  {
    v3 = _UIKeyboardLayoutGuideLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      [(UIKeyboardLayoutGuide *)self interactionResetOffset];
      v4 = NSStringFromUIOffset(v8);
      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "resetGuideForCancelledDismissInteraction %@", &v5, 0xCu);
    }

    [(UIKeyboardLayoutGuide *)self interactionResetOffset];
    [(UIKeyboardLayoutGuide *)self changeOffsetConstants:?];
    [(UIKeyboardLayoutGuide *)self setInteractionResetOffset:0.0, 0.0];
  }
}

- (void)prepareForTestingWithState:(int64_t)state
{
  if (![(UIKeyboardLayoutGuide *)self isWindowGuide])
  {
    owningView = [(UILayoutGuide *)self owningView];
    window = [owningView window];
    _primaryKeyboardTrackingGuide = [window _primaryKeyboardTrackingGuide];
    [_primaryKeyboardTrackingGuide prepareForTestingWithState:state];
  }

  [(UIKeyboardLayoutGuide *)self setCurrentKeyboardVisualState:state];
}

- (_UIAssertionController)_assertionController
{
  assertionController = self->_assertionController;
  if (!assertionController)
  {
    v4 = [[_UIAssertionController alloc] initWithAssertionSubject:self];
    v5 = self->_assertionController;
    self->_assertionController = v4;

    assertionController = self->_assertionController;
  }

  return assertionController;
}

- (BOOL)assertionActivationStateForType:(unint64_t)type
{
  if (type == 1)
  {
    return self->_transitioning;
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardLayoutGuide.m" lineNumber:734 description:{@"Unknown _UIAssertionType %lu", type}];

    return 0;
  }
}

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type
{
  if (type == 1)
  {

    [(UIKeyboardLayoutGuide *)self _setTransitioning:state];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyboardLayoutGuide.m" lineNumber:746 description:{@"Unknown _UIAssertionType %lu", type}];
  }
}

- (BOOL)_changeOffsetConstants:(UIOffset)constants force:(BOOL)force
{
  vertical = constants.vertical;
  horizontal = constants.horizontal;
  v39 = *MEMORY[0x1E69E9840];
  isWindowGuide = [(UIKeyboardLayoutGuide *)self isWindowGuide];
  if (!isWindowGuide)
  {
    return isWindowGuide;
  }

  [(UIKeyboardLayoutGuide *)self previousOffset];
  if (horizontal == v10 && vertical == v9)
  {
LABEL_11:
    LOBYTE(isWindowGuide) = 0;
    return isWindowGuide;
  }

  if ([(UIKeyboardLayoutGuide *)self ignoreKeyboardChanges]&& !force)
  {
    v12 = _UIKeyboardLayoutGuideLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_DEFAULT, "*** changeOffsetConstants: called while ignoring changes; skipping ***", buf, 2u);
    }

    goto LABEL_11;
  }

  [(UIKeyboardLayoutGuide *)self previousSize];
  v14 = *MEMORY[0x1E695F060] == v13;
  v16 = *(MEMORY[0x1E695F060] + 8) == v15;
  if (v14 && v16)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = horizontal;
  }

  if (v14 && v16)
  {
    vertical = 0.0;
  }

  if (vertical > 0.0 || v17 > 0.0)
  {
    if (vertical > 0.0 && [(UIKeyboardLayoutGuide *)self isDocked])
    {
      [(UIKeyboardLayoutGuide *)self setDocked:0];
    }

    v18 = 0.0;
    v19 = 0.0;
    if (![(UIKeyboardLayoutGuide *)self shouldFollowCurrentKeyboard])
    {
      goto LABEL_41;
    }

    owningView = [(UILayoutGuide *)self owningView];
    [owningView safeAreaInsets];
    if (vertical > v21)
    {
      if ([(UIKeyboardLayoutGuide *)self currentKeyboardVisualState]== 5)
      {
      }

      else
      {
        currentKeyboardVisualState = [(UIKeyboardLayoutGuide *)self currentKeyboardVisualState];

        if (currentKeyboardVisualState != 6)
        {
          goto LABEL_35;
        }
      }

      owningView = [(UILayoutGuide *)self owningView];
      [owningView safeAreaInsets];
      vertical = v23;
    }

LABEL_35:
    if (v17 >= 0.0)
    {
      v18 = vertical;
      v19 = v17;
    }

    else
    {
      if ([(UIKeyboardLayoutGuide *)self isTransitioning])
      {
        v19 = v17;
      }

      else
      {
        v19 = 0.0;
      }

      v18 = vertical;
    }

    goto LABEL_41;
  }

  if ([(UIKeyboardLayoutGuide *)self isDocked]|| [(UIKeyboardLayoutGuide *)self isTransitioning])
  {
    if (vertical < 0.0)
    {
      vertical = 0.0;
    }

    goto LABEL_35;
  }

  v18 = 0.0;
  v19 = 0.0;
  if ([(UIKeyboardLayoutGuide *)self shouldFollowCurrentKeyboard])
  {
    goto LABEL_35;
  }

LABEL_41:
  v24 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    [(UIKeyboardLayoutGuide *)self previousOffset];
    v26 = v25;
    [(UIKeyboardLayoutGuide *)self previousOffset];
    *buf = 134218752;
    v32 = v19;
    v33 = 2048;
    v34 = v18;
    v35 = 2048;
    v36 = v26;
    v37 = 2048;
    v38 = v27;
    _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "changeOffsetConstants: offset is changing to {%0.f, %0.f} [previous offset: {%0.f, %0.f}]", buf, 0x2Au);
  }

  [(UIKeyboardLayoutGuide *)self setPreviousOffset:v19, v18];
  v30.receiver = self;
  v30.super_class = UIKeyboardLayoutGuide;
  v28 = [(UITrackingLayoutGuide *)&v30 changeOffsetConstants:v19, v18];
  LOBYTE(isWindowGuide) = ![(UIKeyboardLayoutGuide *)self isTransitioning]& v28;
  return isWindowGuide;
}

- (BOOL)_changeSizingConstants:(CGSize)constants force:(BOOL)force
{
  height = constants.height;
  width = constants.width;
  v51 = *MEMORY[0x1E69E9840];
  if (![(UIKeyboardLayoutGuide *)self isWindowGuide])
  {
    goto LABEL_11;
  }

  [(UIKeyboardLayoutGuide *)self previousSize];
  v9 = v8;
  if (v8 <= 1.0)
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __54__UIKeyboardLayoutGuide__changeSizingConstants_force___block_invoke;
    v40[3] = &unk_1E70F3590;
    v40[4] = self;
    [UIView performWithoutAnimation:v40];
    goto LABEL_4;
  }

  [(UILayoutGuide *)self layoutFrame];
  if (width == v12 && height == v11)
  {
LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

LABEL_4:
  if ([(UIKeyboardLayoutGuide *)self ignoreKeyboardChanges]&& !force)
  {
    v10 = _UIKeyboardLayoutGuideLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_DEFAULT, "*** changeSizingConstants: called while ignoring changes; skipping ***", buf, 2u);
    }

    goto LABEL_11;
  }

  [(UIKeyboardLayoutGuide *)self previousSize];
  v16 = v15;
  v18 = v17;
  [(UIKeyboardLayoutGuide *)self setPreviousSize:width, height];
  if (![(UIKeyboardLayoutGuide *)self shouldFollowCurrentKeyboard])
  {
    if ([(UIKeyboardLayoutGuide *)self addsHeightWhenUndocked])
    {
      owningView = [(UILayoutGuide *)self owningView];
      [owningView safeAreaInsets];
      height = height + v20;
    }

    else
    {
      if ([(UIKeyboardLayoutGuide *)self currentKeyboardVisualState]== 5)
      {
        goto LABEL_19;
      }

      owningView = [(UILayoutGuide *)self owningView];
      window = [owningView window];
      [window insetForDismissedKeyboardGuide];
      height = v22;
    }

LABEL_19:
    owningView2 = [(UILayoutGuide *)self owningView];
    [owningView2 bounds];
    width = v24;

    [(UIKeyboardLayoutGuide *)self previousOffset];
    if (v25 > 0.0)
    {
      [(UIKeyboardLayoutGuide *)self changeOffsetConstants:0.0, 0.0];
    }
  }

  if (height == 0.0)
  {
    owningView3 = [(UILayoutGuide *)self owningView];
    window2 = [owningView3 window];
    [window2 insetForDismissedKeyboardGuide];
    height = v28;
  }

  assistantHeightConstraint = [(UIKeyboardLayoutGuide *)self assistantHeightConstraint];

  if (assistantHeightConstraint)
  {
    owningView4 = [(UILayoutGuide *)self owningView];
    traitCollection = [owningView4 traitCollection];
    [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:traitCollection];
    v33 = v32;

    assistantHeightConstraint2 = [(UIKeyboardLayoutGuide *)self assistantHeightConstraint];
    [assistantHeightConstraint2 setConstant:v33];
  }

  v35 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    isTransitioning = [(UIKeyboardLayoutGuide *)self isTransitioning];
    *buf = 138413314;
    v37 = @"not transitioning";
    if (isTransitioning)
    {
      v37 = @"transitioning";
    }

    v42 = v37;
    v43 = 2048;
    v44 = width;
    v45 = 2048;
    v46 = height;
    v47 = 2048;
    v48 = v16;
    v49 = 2048;
    v50 = v18;
    _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_DEFAULT, "changeSizingConstants: size is changing [%@] to {%0.f, %0.f} [previous size: {%0.f, %0.f}]", buf, 0x34u);
  }

  v39.receiver = self;
  v39.super_class = UIKeyboardLayoutGuide;
  height = [(UITrackingLayoutGuide *)&v39 changeSizingConstants:width, height];
  v13 = (v9 <= 1.0) | ((v9 <= 1.0) | ![(UIKeyboardLayoutGuide *)self isTransitioning]) & height;
  return v13 & 1;
}

void __54__UIKeyboardLayoutGuide__changeSizingConstants_force___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) owningView];
  [v1 layoutViewsForTrackedGuides];
}

- (UIOffset)interactionResetOffset
{
  horizontal = self->_interactionResetOffset.horizontal;
  vertical = self->_interactionResetOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (CGSize)interactionResetSize
{
  width = self->_interactionResetSize.width;
  height = self->_interactionResetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end