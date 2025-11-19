@interface UIKeyboardLayoutGuide
- (BOOL)_changeOffsetConstants:(UIOffset)a3 force:(BOOL)a4;
- (BOOL)_changeSizingConstants:(CGSize)a3 force:(BOOL)a4;
- (BOOL)_moveGuideOffscreenAtEdge:(unint64_t)a3 force:(BOOL)a4;
- (BOOL)assertionActivationStateForType:(unint64_t)a3;
- (BOOL)isTransitioning;
- (BOOL)shouldFollowCurrentKeyboard;
- (BOOL)updateLightEffectsRenderConfig:(id)a3 animated:(BOOL)a4;
- (CGSize)defaultKeyboardSizeForInputMode:(id)a3 orientation:(int64_t)a4 addingAssistant:(BOOL)a5;
- (CGSize)interactionResetSize;
- (CGSize)previousSize;
- (UIKeyboardLayoutGuide)init;
- (UIKeyboardLayoutGuide)initWithCoder:(id)a3;
- (UIOffset)interactionResetOffset;
- (UIOffset)previousOffset;
- (_UIAssertionController)_assertionController;
- (id)_obtainTransitionAssertionForReason:(id)a3;
- (id)guideBackdropMatchLayer;
- (unint64_t)validatedOverlappingEdges:(unint64_t)a3;
- (void)_commonInit;
- (void)_detachGuideFromKeyboard:(BOOL)a3;
- (void)_setTransitioning:(BOOL)a3;
- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4;
- (void)constrainToReference:(id)a3;
- (void)disableSynchronizingWithKeyboard;
- (void)encodeWithCoder:(id)a3;
- (void)followUndockedKeyboardOfTypes:(int64_t)a3;
- (void)forceDismissGuideAnimated:(BOOL)a3;
- (void)forceResizeGuideForInputMode:(id)a3 orientation:(BOOL)a4 showsAssistantBar:(BOOL)a5 animated:(BOOL)a6;
- (void)forceResizeGuideForOrientation:(int64_t)a3 showsAssistantBar:(BOOL)a4 animated:(BOOL)a5;
- (void)hideLightEffectsView:(BOOL)a3;
- (void)inheritOptionsFromGuide:(id)a3;
- (void)prepareForTestingWithState:(int64_t)a3;
- (void)reenableSynchronizingWithKeyboard;
- (void)removeLightEffectsView;
- (void)resetGuideForCancelledDismissInteraction;
- (void)setCurrentKeyboardVisualState:(int64_t)a3;
- (void)setDocked:(BOOL)a3;
- (void)setFollowsUndockedKeyboard:(BOOL)followsUndockedKeyboard;
- (void)setIgnoresSafeArea:(BOOL)a3;
- (void)setKeyboardDismissPadding:(CGFloat)keyboardDismissPadding;
- (void)setKeyboardTrackingState:(id)a3;
- (void)setWindowGuide:(BOOL)a3;
- (void)transitionBackdropForAnimationStart:(BOOL)a3;
- (void)updateBottomConstraint;
- (void)updateSizeForInputMode:(id)a3 orientation:(int64_t)a4 showsAssistantBar:(BOOL)a5 animated:(BOOL)a6;
- (void)useLightEffectsBackgroundBelowView:(id)a3;
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
  v3 = [(UIKeyboardLayoutGuide *)self viewBottomConstraint];

  if (v3)
  {
    v4 = [(UIKeyboardLayoutGuide *)self viewBottomConstraint];
    [v4 setActive:0];
  }

  v5 = [(UIKeyboardLayoutGuide *)self ignoresSafeArea];
  v6 = [(UILayoutGuide *)self owningView];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 bottomAnchor];
    v9 = [(UILayoutGuide *)self topAnchor];
    v10 = [v8 constraintGreaterThanOrEqualToAnchor:v9];
    [(UIKeyboardLayoutGuide *)self setViewBottomConstraint:v10];
  }

  else
  {
    v8 = [v6 safeAreaLayoutGuide];
    v9 = [v8 bottomAnchor];
    v10 = [(UILayoutGuide *)self topAnchor];
    v11 = [v9 constraintGreaterThanOrEqualToAnchor:v10];
    [(UIKeyboardLayoutGuide *)self setViewBottomConstraint:v11];
  }

  v12 = [(UIKeyboardLayoutGuide *)self viewBottomConstraint];
  [v12 setIdentifier:@"UIViewKeyboardLayoutGuide-viewBottom"];

  v13 = [(UIKeyboardLayoutGuide *)self viewBottomConstraint];
  [v13 setActive:1];
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

  v3 = [(UIKeyboardLayoutGuide *)self currentKeyboardVisualState];
  if (v3 == 1)
  {
    return v3;
  }

  if (self->_followsUndockedKeyboard || self->_followTypes == 30)
  {
LABEL_2:
    LOBYTE(v3) = 1;
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
        LOBYTE(v3) = 0;
        return v3;
      }

      v4 = 16;
    }

    LOBYTE(v3) = (self->_followTypes & v4) != 0;
  }

  return v3;
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
      v4 = [(UILayoutGuide *)self owningView];
      v5 = [v4 window];
      v6 = [v5 _primaryKeyboardTrackingGuide];
      v7 = [v6 isTransitioning];

      return v7;
    }

    return 0;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIKeyboardLayoutGuide;
  v4 = a3;
  [(UILayoutGuide *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_followsUndockedKeyboard forKey:{@"UIKeyboardLayoutGuideFollowsUndocked", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_usesBottomSafeArea forKey:@"UIKeyboardLayoutGuideUsesBottomSafeArea"];
  [v4 encodeDouble:@"UIKeyboardLayoutGuideKeyboardDismissPadding" forKey:self->_keyboardDismissPadding];
}

- (UIKeyboardLayoutGuide)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIKeyboardLayoutGuide;
  v5 = [(UILayoutGuide *)&v8 initWithCoder:v4];
  if (v5)
  {
    v5->_followsUndockedKeyboard = [v4 decodeBoolForKey:@"UIKeyboardLayoutGuideFollowsUndocked"];
    v5->_usesBottomSafeArea = [v4 decodeBoolForKey:@"UIKeyboardLayoutGuideUsesBottomSafeArea"];
    [v4 decodeDoubleForKey:@"UIKeyboardLayoutGuideKeyboardDismissPadding"];
    v5->_keyboardDismissPadding = v6;
    [(UIKeyboardLayoutGuide *)v5 _commonInit];
  }

  return v5;
}

- (void)inheritOptionsFromGuide:(id)a3
{
  v4 = a3;
  self->_followsUndockedKeyboard = [v4 followsUndockedKeyboard];
  self->_followTypes = [v4 followTypes];
  self->_docked = [v4 isDocked];
  self->_addsHeightWhenUndocked = [v4 addsHeightWhenUndocked];
  self->_ignoresSafeArea = [v4 ignoresSafeArea] ^ 1;
  -[UIKeyboardLayoutGuide setIgnoresSafeArea:](self, "setIgnoresSafeArea:", [v4 ignoresSafeArea]);
  [v4 keyboardDismissPadding];
  self->_keyboardDismissPadding = v5;
  v6 = [v4 lightEffectsBackdrop];
  lightEffectsBackdrop = self->_lightEffectsBackdrop;
  self->_lightEffectsBackdrop = v6;

  v8 = [v4 assistantHeightConstraint];

  assistantHeightConstraint = self->_assistantHeightConstraint;
  self->_assistantHeightConstraint = v8;
}

- (void)constrainToReference:(id)a3
{
  v25[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
  {
    v5 = [(UILayoutGuide *)self _systemConstraints];
    v6 = [v5 count];

    if (v6)
    {
      v7 = MEMORY[0x1E69977A0];
      v8 = [(UILayoutGuide *)self _systemConstraints];
      [v7 deactivateConstraints:v8];
    }

    v9 = [(UILayoutGuide *)self topAnchor];
    v10 = [v4 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    LODWORD(v12) = 1148829696;
    [v11 setPriority:v12];
    [v11 setIdentifier:@"UIViewKeyboardLayoutGuide-topConstraint"];
    v13 = [(UILayoutGuide *)self leadingAnchor];
    v14 = [v4 leadingAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    [v15 setIdentifier:@"UIViewKeyboardLayoutGuide-leadingConstraint"];
    v16 = [v4 bottomAnchor];
    v17 = [(UILayoutGuide *)self bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    [v18 setIdentifier:@"UIViewKeyboardLayoutGuide-bottomConstraint"];
    v19 = [v4 trailingAnchor];
    v20 = [(UILayoutGuide *)self trailingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    [v21 setIdentifier:@"UIViewKeyboardLayoutGuide-trailingConstraint"];
    v25[0] = v11;
    v25[1] = v15;
    v25[2] = v18;
    v25[3] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:4];
    [(UILayoutGuide *)self _setSystemConstraints:v22];

    v23 = MEMORY[0x1E69977A0];
    v24 = [(UILayoutGuide *)self _systemConstraints];
    [v23 activateConstraints:v24];

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
      v6 = [(UILayoutGuide *)self owningView];
      v7 = [v6 window];
      v8 = [v7 _primaryKeyboardTrackingGuide];
      [v8 setFollowsUndockedKeyboard:v4];
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

- (void)setIgnoresSafeArea:(BOOL)a3
{
  if (self->_ignoresSafeArea != a3)
  {
    v3 = a3;
    self->_ignoresSafeArea = a3;
    if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
    {
      [(UIKeyboardLayoutGuide *)self updateBottomConstraint];
      v7 = [(UILayoutGuide *)self owningView];
      v5 = [v7 window];
      v6 = [v5 _primaryKeyboardTrackingGuide];
      [v6 setIgnoresSafeArea:v3];
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
      v7 = [(UILayoutGuide *)self owningView];
      v5 = [v7 window];
      v6 = [v5 _primaryKeyboardTrackingGuide];
      [v6 setKeyboardDismissPadding:keyboardDismissPadding];
    }
  }
}

- (void)followUndockedKeyboardOfTypes:(int64_t)a3
{
  if (self->_followTypes != a3)
  {
    self->_followTypes = a3;
    if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
    {
      v7 = [(UILayoutGuide *)self owningView];
      v5 = [v7 window];
      v6 = [v5 _primaryKeyboardTrackingGuide];
      [v6 followUndockedKeyboardOfTypes:a3];
    }
  }
}

- (void)forceResizeGuideForOrientation:(int64_t)a3 showsAssistantBar:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_error_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "forceResizeGuideForOrientation:showsAssistantBar:animated: has been deprecated.", v12, 2u);
  }

  v10 = +[UIKeyboardInputModeController sharedInputModeController];
  v11 = [v10 currentInputMode];
  [(UIKeyboardLayoutGuide *)self updateSizeForInputMode:v11 orientation:a3 showsAssistantBar:v6 animated:v5];
}

- (void)forceResizeGuideForInputMode:(id)a3 orientation:(BOOL)a4 showsAssistantBar:(BOOL)a5 animated:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_error_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "forceResizeGuideForInputMode:orientation:showsAssistantBar:animated: has been deprecated.", v15, 2u);
  }

  if (!v10)
  {
    v12 = +[UIKeyboardInputModeController sharedInputModeController];
    v10 = [v12 documentInputMode];
  }

  v13 = +[UIKeyboardInputModeController sharedInputModeController];
  v14 = [v13 lastUsedInputModeForTextInputMode:v10];

  [(UIKeyboardLayoutGuide *)self updateSizeForInputMode:v14 orientation:v8 showsAssistantBar:v7 animated:v6];
}

- (void)forceDismissGuideAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "forceDismissGuideAnimated: has been deprecated.", v6, 2u);
  }

  [(UIKeyboardLayoutGuide *)self updateSizeForInputMode:0 orientation:0 showsAssistantBar:0 animated:v3];
}

- (void)updateSizeForInputMode:(id)a3 orientation:(int64_t)a4 showsAssistantBar:(BOOL)a5 animated:(BOOL)a6
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

- (void)_detachGuideFromKeyboard:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x1E69E9840];
  if ([(UIKeyboardLayoutGuide *)self ignoreKeyboardChanges]!= a3)
  {
    v5 = _UIKeyboardLayoutGuideLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"attached";
      if (v3)
      {
        v6 = @"detached";
      }

      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "_detachGuideFromKeyboard: changed to %@", &v10, 0xCu);
    }

    if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
    {
      v7 = [(UILayoutGuide *)self owningView];
      v8 = [v7 window];
      v9 = [v8 _primaryKeyboardTrackingGuide];
      [v9 _detachGuideFromKeyboard:v3];
    }

    [(UIKeyboardLayoutGuide *)self setIgnoreKeyboardChanges:v3];
  }
}

- (CGSize)defaultKeyboardSizeForInputMode:(id)a3 orientation:(int64_t)a4 addingAssistant:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = +[UIKeyboardImpl keyboardScreen];
  v10 = [UIKBScreenTraits traitsWithScreen:v9 orientation:a4];

  v11 = [v8 identifier];
  [UIKeyboardLayoutStar keyboardSizeForInputMode:v11 screenTraits:v10 keyboardType:0];
  v13 = v12;
  v15 = v14;

  [UIKeyboardImpl topMarginForInterfaceOrientation:a4];
  v17 = v15 + v16;
  [UIKeyboardImpl deviceSpecificPaddingForInterfaceOrientation:a4 inputMode:v8];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v17 + v19 + v23;
  if (v5)
  {
    v27 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v28 = [v27 systemInputAssistantViewController];
    v29 = v28;
    if (v28)
    {
      v30 = [v28 traitCollection];
      [v29 preferredHeightForTraitCollection:v30 orientation:a4];
    }

    else
    {
      v32 = [(UILayoutGuide *)self owningView];
      v30 = [v32 traitCollection];

      [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:v30 interfaceOrientation:a4];
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

- (void)useLightEffectsBackgroundBelowView:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(UILayoutGuide *)self owningView];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"UIKeyboardLayoutGuide.m" lineNumber:367 description:{@"You cannot add a backdrop below a view to that view's keyboardLayoutGuide. Please use a keyboardLayoutGuide from higher up the view hierarchy. For best results, use viewController.view.keyboardLayoutGuide (or something else that's the size of your window)."}];
  }

  v8 = [(UILayoutGuide *)self owningView];
  v9 = [v5 isDescendantOfView:v8];

  if ((v9 & 1) == 0)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"UIKeyboardLayoutGuide.m" lineNumber:368 description:{@"To add a backdrop with keyboardLayoutGuide, the backedView to put it below must be a subview of the keyboardLayoutGuide's owning view. Ideally use viewController.view.keyboardLayoutGuide (or something else that's the size of your window)."}];
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

  v11 = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];

  if (!v11)
  {
    v12 = [(UILayoutGuide *)self owningView];
    v13 = [v12 _window];
    v14 = [v13 _primaryKeyboardTrackingGuide];
    [v14 previousSize];
    v16 = v15;

    v17 = _UIKeyboardLayoutGuideLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v82 = objc_opt_class();
      v83 = 2048;
      v84 = v5;
      _os_log_debug_impl(&dword_188A29000, v17, OS_LOG_TYPE_DEBUG, "useLightEffectsBackgroundBelowView: adding below <%@: %p>", buf, 0x16u);
    }

    v10 = objc_alloc_init(_UIKBLightEffectsBackground);
    [(UIView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(UILayoutGuide *)self owningView];
    v78 = v5;
    [v18 insertSubview:v10 belowSubview:v5];

    v76 = [(UIView *)v10 topAnchor];
    v77 = [(UILayoutGuide *)self owningView];
    v75 = [v77 topAnchor];
    v74 = [v76 constraintEqualToAnchor:v75];
    v80[0] = v74;
    v72 = [(UIView *)v10 leadingAnchor];
    v73 = [(UILayoutGuide *)self owningView];
    v71 = [v73 leadingAnchor];
    v70 = [v72 constraintEqualToAnchor:v71];
    v80[1] = v70;
    v69 = [(UILayoutGuide *)self owningView];
    v68 = [v69 bottomAnchor];
    v67 = [(UIView *)v10 bottomAnchor];
    v66 = [v68 constraintEqualToAnchor:v67];
    v80[2] = v66;
    v65 = [(UILayoutGuide *)self owningView];
    v64 = [v65 trailingAnchor];
    v63 = [(UIView *)v10 trailingAnchor];
    v62 = [v64 constraintEqualToAnchor:v63];
    v80[3] = v62;
    v61 = [(_UIKBLightEffectsBackground *)v10 fullBackdropLayoutGuide];
    v60 = [v61 topAnchor];
    v59 = [(UILayoutGuide *)self topAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v80[4] = v58;
    v57 = [(_UIKBLightEffectsBackground *)v10 fullBackdropLayoutGuide];
    v56 = [v57 leadingAnchor];
    v55 = [(UILayoutGuide *)self leadingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v80[5] = v54;
    v52 = [(UILayoutGuide *)self trailingAnchor];
    v53 = [(_UIKBLightEffectsBackground *)v10 fullBackdropLayoutGuide];
    v51 = [v53 trailingAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v80[6] = v50;
    v49 = [(_UIKBLightEffectsBackground *)v10 fullBackdropLayoutGuide];
    v19 = [v49 bottomAnchor];
    v20 = [(UILayoutGuide *)self bottomAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v80[7] = v21;
    v22 = [(_UIKBLightEffectsBackground *)v10 assistantLayoutGuide];
    v23 = [v22 topAnchor];
    v24 = [(UILayoutGuide *)self topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v80[8] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:9];
    [(UIKeyboardLayoutGuide *)self setBackdropConstraints:v26];

    v27 = [(UILayoutGuide *)self owningView];
    v28 = [v27 traitCollection];
    [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:v28];
    v30 = v29;

    v31 = [(_UIKBLightEffectsBackground *)v10 assistantLayoutGuide];
    v32 = [v31 heightAnchor];
    v33 = [v32 constraintEqualToConstant:v30];
    [(UIKeyboardLayoutGuide *)self setAssistantHeightConstraint:v33];

    v34 = MEMORY[0x1E69977A0];
    v35 = [(UIKeyboardLayoutGuide *)self backdropConstraints];
    v36 = [(UIKeyboardLayoutGuide *)self assistantHeightConstraint];
    v37 = [v35 arrayByAddingObject:v36];
    [v34 activateConstraints:v37];

    [(UIKeyboardLayoutGuide *)self setLightEffectsBackdrop:v10];
    v38 = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];
    [v38 changeClippingStyle:3];

    v39 = [(UILayoutGuide *)self owningView];
    v40 = [v39 _window];
    v41 = [v40 _primaryKeyboardTrackingGuide];
    v42 = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];
    [v41 setLightEffectsBackdrop:v42];

    v43 = [(UILayoutGuide *)self owningView];
    v44 = [v43 _window];
    v45 = [v44 _primaryKeyboardTrackingGuide];
    v46 = [(UIKeyboardLayoutGuide *)self assistantHeightConstraint];
    [v45 setAssistantHeightConstraint:v46];

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

    v5 = v78;
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

- (void)hideLightEffectsView:(BOOL)a3
{
  if (a3)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  v4 = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];
  [v4 setAlpha:v3];
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
    v17 = self;
    _os_log_debug_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEBUG, "removeLightEffectsView for <%@: %p>", &v14, 0x16u);
  }

  v4 = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];

  if (v4)
  {
    v5 = MEMORY[0x1E69977A0];
    v6 = [(UIKeyboardLayoutGuide *)self backdropConstraints];
    [v5 deactivateConstraints:v6];

    [(UIKeyboardLayoutGuide *)self setBackdropConstraints:0];
    v7 = [(UIKeyboardLayoutGuide *)self assistantHeightConstraint];
    [v7 setActive:0];

    [(UIKeyboardLayoutGuide *)self setAssistantHeightConstraint:0];
    v8 = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];
    [v8 removeFromSuperview];

    [(UIKeyboardLayoutGuide *)self setLightEffectsBackdrop:0];
    v9 = [(UILayoutGuide *)self owningView];
    [v9 layoutIfNeeded];
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
    v11 = [(UILayoutGuide *)self owningView];
    v12 = [v11 _window];
    v13 = [v12 _primaryKeyboardTrackingGuide];
    [v13 removeLightEffectsView];
  }
}

- (void)transitionBackdropForAnimationStart:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];
  [v4 updateAlphaForAnimationStart:v3];
}

- (BOOL)updateLightEffectsRenderConfig:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];

  if (v7)
  {
    if ([v6 animatedBackground])
    {
      [(UIKeyboardLayoutGuide *)self hideLightEffectsView:0];
      v8 = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];
      v9 = v8;
      if (v4)
      {
        [v8 animatedTransitionToRenderConfig:v6];
      }

      else
      {
        [v8 _setRenderConfig:v6];
      }
    }

    else
    {
      [(UIKeyboardLayoutGuide *)self hideLightEffectsView:1];
    }
  }

  return v7 != 0;
}

- (id)guideBackdropMatchLayer
{
  v2 = [(UIKeyboardLayoutGuide *)self lightEffectsBackdrop];
  v3 = [v2 layerForPositionMatchMove];

  return v3;
}

- (void)setDocked:(BOOL)a3
{
  if (self->_docked != a3)
  {
    v3 = a3;
    self->_docked = a3;
    if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
    {
      v10 = [(UILayoutGuide *)self owningView];
      v5 = [v10 window];
      v6 = [v5 _primaryKeyboardTrackingGuide];
      [v6 setDocked:v3];
    }

    else
    {
      [(UITrackingLayoutGuide *)self resetAnimationOptions];
      if (![(UIKeyboardLayoutGuide *)self isTransitioning]|| !v3 || [(UIKeyboardLayoutGuide *)self shouldFollowCurrentKeyboard])
      {
        return;
      }

      v10 = [(UILayoutGuide *)self owningView];
      [v10 bounds];
      v8 = v7;
      v5 = [(UILayoutGuide *)self owningView];
      v6 = [v5 window];
      [v6 insetForDismissedKeyboardGuide];
      [(UIKeyboardLayoutGuide *)self setPreviousSize:v8, v9];
    }
  }
}

- (void)setCurrentKeyboardVisualState:(int64_t)a3
{
  if (self->_currentKeyboardVisualState != a3)
  {
    [(UIKeyboardLayoutGuide *)self keyboardStateIsDocked:?];
    v5 = [(UIKeyboardLayoutGuide *)self keyboardStateIsDocked:a3];
    self->_currentKeyboardVisualState = a3;
    [(UIKeyboardLayoutGuide *)self setDocked:v5];
    if (!v5)
    {

      [(UIKeyboardLayoutGuide *)self setPreviousSize:1.0, 0.0];
    }
  }
}

- (void)setKeyboardTrackingState:(id)a3
{
  v7 = a3;
  if ([v7 isFloating])
  {
    if (![v7 hasFloatingAssistantView])
    {
      v6 = 3;
      goto LABEL_11;
    }

    v4 = [v7 isCompact] == 0;
    v5 = 5;
  }

  else
  {
    if (![v7 isDocked])
    {
      v6 = 4;
      goto LABEL_11;
    }

    v4 = [v7 hasInputView] == 0;
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

- (void)setWindowGuide:(BOOL)a3
{
  if (self->_windowGuide != a3)
  {
    self->_windowGuide = a3;
  }
}

- (id)_obtainTransitionAssertionForReason:(id)a3
{
  v4 = a3;
  if ([(UIKeyboardLayoutGuide *)self isWindowGuide])
  {
    v5 = [(UIKeyboardLayoutGuide *)self _assertionController];
    v6 = [v5 vendAssertionOfType:1 initialState:1 reason:v4 requiresExplicitInvalidation:0];
LABEL_5:

    goto LABEL_7;
  }

  if ([(UITrackingLayoutGuide *)self constrainedToWindowGuide])
  {
    v5 = [(UILayoutGuide *)self owningView];
    v7 = [v5 window];
    v8 = [v7 _primaryKeyboardTrackingGuide];
    v6 = [v8 _obtainTransitionAssertionForReason:v4];

    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)_setTransitioning:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x1E69E9840];
  if ([(UIKeyboardLayoutGuide *)self isWindowGuide]&& self->_transitioning != v3)
  {
    self->_transitioning = v3;
    v5 = _UIKeyboardLayoutGuideLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"not transitioning";
      if (v3)
      {
        v6 = @"transitioning";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "setTransitioning: %@", &v7, 0xCu);
    }

    if (!v3)
    {
      [(UITrackingLayoutGuide *)self resetAnimationOptions];
    }
  }
}

- (unint64_t)validatedOverlappingEdges:(unint64_t)a3
{
  v3 = a3 & 0xFFFFFFFFFFFFFFF5;
  if ((~a3 & 0xA) != 0)
  {
    v3 = a3;
  }

  if ((~a3 & 5) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = a3 & 0xFFFFFFFFFFFFFFFELL;
  }

  if ((v4 & 4) == 0 && [(UIKeyboardLayoutGuide *)self currentKeyboardVisualState]!= 3 && [(UIKeyboardLayoutGuide *)self currentKeyboardVisualState]!= 4)
  {
    v4 |= 4uLL;
  }

  return v4;
}

- (BOOL)_moveGuideOffscreenAtEdge:(unint64_t)a3 force:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x1E69E9840];
  if (![(UIKeyboardLayoutGuide *)self isWindowGuide]|| [(UIKeyboardLayoutGuide *)self isTransitioning]&& !v4)
  {
    return 0;
  }

  v7 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 134217984;
    v28 = a3;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "_moveGuideOffscreenAtEdge: %lu", &v27, 0xCu);
  }

  v8 = [(UILayoutGuide *)self owningView];
  [v8 bounds];
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
  if (a3 == 2)
  {
    v21 = v19 - v10;
  }

  else if (a3 == 8)
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
      v22 = [(UILayoutGuide *)self owningView];
      [v22 safeAreaInsets];
      v18 = v23;
    }

    v16 = v10;
    v21 = 0.0;
  }

  v24 = [(UIKeyboardLayoutGuide *)self _changeOffsetConstants:v4 force:v21, v20];
  v25 = [(UIKeyboardLayoutGuide *)self _changeSizingConstants:v4 force:v16, v18];
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

- (void)prepareForTestingWithState:(int64_t)a3
{
  if (![(UIKeyboardLayoutGuide *)self isWindowGuide])
  {
    v5 = [(UILayoutGuide *)self owningView];
    v6 = [v5 window];
    v7 = [v6 _primaryKeyboardTrackingGuide];
    [v7 prepareForTestingWithState:a3];
  }

  [(UIKeyboardLayoutGuide *)self setCurrentKeyboardVisualState:a3];
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

- (BOOL)assertionActivationStateForType:(unint64_t)a3
{
  if (a3 == 1)
  {
    return self->_transitioning;
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIKeyboardLayoutGuide.m" lineNumber:734 description:{@"Unknown _UIAssertionType %lu", a3}];

    return 0;
  }
}

- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4
{
  if (a4 == 1)
  {

    [(UIKeyboardLayoutGuide *)self _setTransitioning:a3];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"UIKeyboardLayoutGuide.m" lineNumber:746 description:{@"Unknown _UIAssertionType %lu", a4}];
  }
}

- (BOOL)_changeOffsetConstants:(UIOffset)a3 force:(BOOL)a4
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  v39 = *MEMORY[0x1E69E9840];
  v8 = [(UIKeyboardLayoutGuide *)self isWindowGuide];
  if (!v8)
  {
    return v8;
  }

  [(UIKeyboardLayoutGuide *)self previousOffset];
  if (horizontal == v10 && vertical == v9)
  {
LABEL_11:
    LOBYTE(v8) = 0;
    return v8;
  }

  if ([(UIKeyboardLayoutGuide *)self ignoreKeyboardChanges]&& !a4)
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

    v20 = [(UILayoutGuide *)self owningView];
    [v20 safeAreaInsets];
    if (vertical > v21)
    {
      if ([(UIKeyboardLayoutGuide *)self currentKeyboardVisualState]== 5)
      {
      }

      else
      {
        v22 = [(UIKeyboardLayoutGuide *)self currentKeyboardVisualState];

        if (v22 != 6)
        {
          goto LABEL_35;
        }
      }

      v20 = [(UILayoutGuide *)self owningView];
      [v20 safeAreaInsets];
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
  LOBYTE(v8) = ![(UIKeyboardLayoutGuide *)self isTransitioning]& v28;
  return v8;
}

- (BOOL)_changeSizingConstants:(CGSize)a3 force:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
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
  if ([(UIKeyboardLayoutGuide *)self ignoreKeyboardChanges]&& !a4)
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
      v19 = [(UILayoutGuide *)self owningView];
      [v19 safeAreaInsets];
      height = height + v20;
    }

    else
    {
      if ([(UIKeyboardLayoutGuide *)self currentKeyboardVisualState]== 5)
      {
        goto LABEL_19;
      }

      v19 = [(UILayoutGuide *)self owningView];
      v21 = [v19 window];
      [v21 insetForDismissedKeyboardGuide];
      height = v22;
    }

LABEL_19:
    v23 = [(UILayoutGuide *)self owningView];
    [v23 bounds];
    width = v24;

    [(UIKeyboardLayoutGuide *)self previousOffset];
    if (v25 > 0.0)
    {
      [(UIKeyboardLayoutGuide *)self changeOffsetConstants:0.0, 0.0];
    }
  }

  if (height == 0.0)
  {
    v26 = [(UILayoutGuide *)self owningView];
    v27 = [v26 window];
    [v27 insetForDismissedKeyboardGuide];
    height = v28;
  }

  v29 = [(UIKeyboardLayoutGuide *)self assistantHeightConstraint];

  if (v29)
  {
    v30 = [(UILayoutGuide *)self owningView];
    v31 = [v30 traitCollection];
    [UISystemInputAssistantViewController _defaultPreferredHeightForTraitCollection:v31];
    v33 = v32;

    v34 = [(UIKeyboardLayoutGuide *)self assistantHeightConstraint];
    [v34 setConstant:v33];
  }

  v35 = _UIKeyboardLayoutGuideLogger();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = [(UIKeyboardLayoutGuide *)self isTransitioning];
    *buf = 138413314;
    v37 = @"not transitioning";
    if (v36)
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
  v38 = [(UITrackingLayoutGuide *)&v39 changeSizingConstants:width, height];
  v13 = (v9 <= 1.0) | ((v9 <= 1.0) | ![(UIKeyboardLayoutGuide *)self isTransitioning]) & v38;
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