@interface UITextSelectionDisplayInteraction
- (BOOL)_clientManagesSelectionViewSubviewOrder;
- (BOOL)_isCursorAccessoryViewEnabled;
- (BOOL)_isCursorAccessoryViewVisible;
- (BOOL)_isCursorVisible;
- (BOOL)_isHighlightVisible;
- (BOOL)_isManagedSelectionSubview:(id)subview;
- (BOOL)_isRangeAdjustmentUIVisible;
- (BOOL)_shouldHitTestSelectionGrabbers;
- (BOOL)assertionActivationStateForType:(unint64_t)type;
- (BOOL)cursorBlinks;
- (BOOL)ghostAppearance;
- (CGAffineTransform)_caretTransform;
- (CGAffineTransform)_lollipopTransformForSelectionRect:(SEL)rect view:(id)view;
- (CGAffineTransform)_transformRelativeToTextInputCoordinateSpace:(SEL)space forView:(CGAffineTransform *)view;
- (CGRect)_caretRect;
- (CGRect)_caretRectAtStartOfLine;
- (CGRect)_caretRectForDictationTrailingGlowView;
- (CGRect)_caretRectForPosition:(id)position;
- (CGRect)_contentBoundsForPlacement:(int64_t)placement;
- (CGRect)_grabberDotRectForTextRangeAdjustmentEdgeRect:(CGRect)rect isVertical:(BOOL)vertical direction:(unint64_t)direction;
- (CGRect)_selectionClipRectAt:(int64_t)at;
- (CGRect)_textInputRectInSelectionViewCoordinateSpace:(CGRect)space;
- (CGRect)_textRangeAdjustmentRectForEdge:(unint64_t)edge selectionRects:(id)rects;
- (CGRect)paddedTextRangeAdjustmentHitRegionForEdge:(unint64_t)edge precision:(unint64_t)precision;
- (CGRect)textRangeAdjustmentRectForEdge:(unint64_t)edge;
- (CGRect)textSelectionMenuSourceRect;
- (NSArray)handleViews;
- (UIColor)_cursorTintColor;
- (UIEdgeInsets)_paddedEdgeInsetsForGrabberDirection:(unint64_t)direction isVertical:(BOOL)vertical scale:(double)scale;
- (UIView)cursorView;
- (UIView)highlightView;
- (UIView)view;
- (_UICursorAccessoryViewController)_cursorAccessoryViewController;
- (_UITextCursorTrailingGlowView)_trailingGlowView;
- (_UITextSelectionRangeAdjustmentContainerView)_rangeAdjustmentViewContainer;
- (_UITextUnderlineView)_underlineView;
- (double)_cursorAlpha;
- (double)_highlightAndRangeAdjustmentAlpha;
- (id)_activeSelection;
- (id)_allManagedSubviews;
- (id)_beginFloatingCursorSessionAtPoint:(CGPoint)point inContainer:(id)container;
- (id)_hostViewAboveText;
- (id)_hostViewBelowText;
- (id)_initWithTextInput:(id)input delegate:(id)delegate activated:(BOOL)activated;
- (id)_internalDelegate;
- (id)_managedSubviewsAboveText;
- (id)_managedSubviewsBelowText;
- (id)_managedViewForType:(int64_t)type;
- (id)_proofreadingUnderlineView;
- (id)_selectedRange;
- (id)_tintColorOrDefault:(id)default alpha:(double)alpha;
- (id)_underlineRectsForRange:(id)range;
- (id)_underlineTextInRange:(id)range animated:(BOOL)animated preferredUUID:(id)d;
- (id)_visibleSelectionRectsForRange:(id)range;
- (id)defaultUnderlineColor;
- (id)delegate;
- (id)inputModeForDictationLanguage:(id)language;
- (id)obtainBlinkSuppressionAssertionForReason:(id)reason;
- (id)obtainGhostCursorAssertionForReason:(id)reason;
- (id)textInput;
- (id)textRangeAdjustmentViewForEdge:(unint64_t)edge;
- (void)_addInteractiveUnderlines:(id)underlines animated:(BOOL)animated;
- (void)_addPulseAnimationIfNeeded;
- (void)_animateDeleteButtonVisible:(BOOL)visible;
- (void)_applyDeleteHiddenState;
- (void)_cursorAccessoryViewController:(id)controller didActivateCursorAccessory:(id)accessory;
- (void)_dictationDidBeginNotification:(id)notification;
- (void)_dictationDidFinishNotification:(id)notification;
- (void)_dictationDidPauseNotification:(id)notification;
- (void)_dictationDidResumeNotification:(id)notification;
- (void)_dictationWillInsertHypothesisNotification:(id)notification;
- (void)_didBeginRangeAdjustmentInteraction:(id)interaction;
- (void)_didEndRangeAdjustmentInteraction:(id)interaction;
- (void)_enableDictationPortalViews;
- (void)_filterArchivedSubviews:(id)subviews;
- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor;
- (void)_hideDeleteButton;
- (void)_initializeDictationSupport;
- (void)_initializeManagedDictationViewsIfNecessary;
- (void)_installManagedSubviewsIfNecessary;
- (void)_layoutDeleteButton;
- (void)_layoutManagedSubviewsResettingBlinkingAnimation:(BOOL)animation;
- (void)_removeAllInteractiveUnderlinesAnimated:(BOOL)animated;
- (void)_removeAllProofreadingUnderlinesAnimated:(BOOL)animated;
- (void)_removeDeleteButton;
- (void)_removeInteractiveUnderlines:(id)underlines animated:(BOOL)animated;
- (void)_removeManagedSubviews;
- (void)_removePulseAnimationIfNeeded;
- (void)_removeUnderlineWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)_resetDictationAnimations;
- (void)_resetDictationPortalViews;
- (void)_resetDictationUIForDeactivation;
- (void)_setCursorFadedHiddenForFloatingCursor:(BOOL)cursor animated:(BOOL)animated;
- (void)_setupDictationUIForActivation;
- (void)_showDeleteButton;
- (void)_startDictationAnimations;
- (void)_trackingViewportDidLayout:(id)layout;
- (void)_updateAccessibilityNonBlinkingAssertion;
- (void)_updateAnimatedUnderlinesIfNeeded;
- (void)_updateDelegateConformance;
- (void)_updateDictationUI;
- (void)_updateHighlightViewWithShimmerState;
- (void)_updateSelectionIfNeeded;
- (void)_updateSelectionIfNeededResettingBlinkingAnimation:(id)animation;
- (void)_updateTextInputConformance;
- (void)_updateUnderlinesIfNeeded;
- (void)_updateViewConformance;
- (void)_updateVoiceControlEnablementState;
- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type;
- (void)cleanUpProofreading;
- (void)clearDeleteButtonCursorAssertion;
- (void)clearInputModeCursorAssertion;
- (void)dealloc;
- (void)didMoveToView:(id)view;
- (void)setActivated:(BOOL)activated;
- (void)setActiveIndicators:(unint64_t)indicators animationStyle:(int64_t)style;
- (void)setCursorBlinks:(BOOL)blinks;
- (void)setCursorView:(UIView *)cursorView;
- (void)setGhostAppearance:(BOOL)appearance;
- (void)setHandleViews:(NSArray *)handleViews;
- (void)setHighlightView:(UIView *)highlightView;
- (void)setNeedsSelectionUpdate;
- (void)set_dictationBlinkSuppressionAssertion:(uint64_t)assertion;
- (void)willMoveToView:(id)view;
@end

@implementation UITextSelectionDisplayInteraction

- (void)_updateTextInputConformance
{
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  *&self->_textInputRespondsTo = *&self->_textInputRespondsTo & 0xFFFE | objc_opt_respondsToSelector() & 1;

  v4 = objc_loadWeakRetained(&self->_textInput);
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_textInputRespondsTo = *&self->_textInputRespondsTo & 0xFFFD | v5;

  v6 = objc_loadWeakRetained(&self->_textInput);
  if (objc_opt_respondsToSelector())
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_textInputRespondsTo = *&self->_textInputRespondsTo & 0xFFFB | v7;

  v8 = objc_loadWeakRetained(&self->_textInput);
  if (objc_opt_respondsToSelector())
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  *&self->_textInputRespondsTo = *&self->_textInputRespondsTo & 0xFFF7 | v9;

  v10 = objc_loadWeakRetained(&self->_textInput);
  if (objc_opt_respondsToSelector())
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  *&self->_textInputRespondsTo = *&self->_textInputRespondsTo & 0xFFEF | v11;

  v12 = objc_loadWeakRetained(&self->_textInput);
  if (objc_opt_respondsToSelector())
  {
    v13 = 32;
  }

  else
  {
    v13 = 0;
  }

  *&self->_textInputRespondsTo = *&self->_textInputRespondsTo & 0xFFDF | v13;

  v14 = objc_loadWeakRetained(&self->_textInput);
  if (objc_opt_respondsToSelector())
  {
    v15 = 64;
  }

  else
  {
    v15 = 0;
  }

  *&self->_textInputRespondsTo = *&self->_textInputRespondsTo & 0xFFBF | v15;

  v16 = objc_loadWeakRetained(&self->_textInput);
  if (objc_opt_respondsToSelector())
  {
    v17 = 128;
  }

  else
  {
    v17 = 0;
  }

  *&self->_textInputRespondsTo = *&self->_textInputRespondsTo & 0xFF7F | v17;

  v18 = objc_loadWeakRetained(&self->_textInput);
  if (objc_opt_respondsToSelector())
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  *&self->_textInputRespondsTo = *&self->_textInputRespondsTo & 0xFEFF | v19;

  v20 = objc_loadWeakRetained(&self->_textInput);
  if (objc_opt_respondsToSelector())
  {
    v21 = 512;
  }

  else
  {
    v21 = 0;
  }

  *&self->_textInputRespondsTo = *&self->_textInputRespondsTo & 0xFDFF | v21;

  v22 = objc_loadWeakRetained(&self->_textInput);
  isBETextInput = _isBETextInput(v22);

  if (isBETextInput)
  {
    v24 = objc_loadWeakRetained(&self->_textInput);
    if (objc_opt_respondsToSelector())
    {
      v25 = 1024;
    }

    else
    {
      v25 = 0;
    }

    *&self->_textInputRespondsTo = *&self->_textInputRespondsTo & 0xFBFF | v25;

    v27 = objc_loadWeakRetained(&self->_textInput);
    if (objc_opt_respondsToSelector())
    {
      v26 = 2048;
    }

    else
    {
      v26 = 0;
    }

    *&self->_textInputRespondsTo = *&self->_textInputRespondsTo & 0xF7FF | v26;
  }

  else
  {
    *&self->_textInputRespondsTo &= 0xF3FFu;
  }
}

- (void)_initializeDictationSupport
{
  if (!+[UIKeyboard inputUIOOP](UIKeyboard, "inputUIOOP") || +[UIKeyboard usesInputSystemUI])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__dictationDidBeginNotification_ name:@"UIKeyboardDidBeginDictationNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__dictationDidFinishNotification_ name:@"UIDictationControllerDictationDidFinish" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:self selector:sel__dictationDidPauseNotification_ name:@"UIDictationControllerDidPauseNotification" object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:self selector:sel__dictationDidResumeNotification_ name:@"UIDictationControllerDidResumeNotification" object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:self selector:sel__dictationWillInsertHypothesisNotification_ name:0x1EFB73D10 object:0];

    if (_os_feature_enabled_impl())
    {
      if (_initializeDictationSupport_onceToken != -1)
      {
        dispatch_once(&_initializeDictationSupport_onceToken, &__block_literal_global_248);
      }

      defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter6 addObserver:self selector:sel__updateVoiceControlEnablementState name:0x1EFB73D30 object:0];
    }
  }
}

- (void)_updateAccessibilityNonBlinkingAssertion
{
  v3 = AXPrefersNonBlinkingTextInsertionIndicator();
  accessibilityNonBlinkingAssertion = self->_accessibilityNonBlinkingAssertion;
  if (v3)
  {
    if (accessibilityNonBlinkingAssertion)
    {
      return;
    }

    v5 = [(UITextCursorAssertionController *)self->_cursorAssertionController nonBlinkingAssertionWithReason:@"AXPrefersNonBlinkingTextInsertionIndicator"];
  }

  else
  {
    if (!accessibilityNonBlinkingAssertion)
    {
      return;
    }

    [(UITextCursorAssertion *)accessibilityNonBlinkingAssertion invalidate];
    v5 = 0;
  }

  v6 = self->_accessibilityNonBlinkingAssertion;
  self->_accessibilityNonBlinkingAssertion = v5;
}

- (void)setNeedsSelectionUpdate
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (!self->_needsUpdate)
  {
    self->_needsUpdate = 1;
    v4[0] = *MEMORY[0x1E695DA28];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
    [(UITextSelectionDisplayInteraction *)self performSelector:sel__updateSelectionIfNeededResettingBlinkingAnimation_ withObject:MEMORY[0x1E695E118] afterDelay:v3 inModes:0.0];
  }
}

void __75__UITextSelectionDisplayInteraction_Dictation___initializeDictationSupport__block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v1 = *MEMORY[0x1E69E4CD8];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _voiceControlEnablementStateChanged, v1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_updateViewConformance
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  *&self->_viewRespondsTo = *&self->_viewRespondsTo & 0xFE | objc_opt_respondsToSelector() & 1;

  v4 = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_viewRespondsTo = *&self->_viewRespondsTo & 0xFD | v5;

  v6 = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_viewRespondsTo = *&self->_viewRespondsTo & 0xFB | v7;

  v9 = objc_loadWeakRetained(&self->_view);
  if (objc_opt_respondsToSelector())
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  *&self->_viewRespondsTo = *&self->_viewRespondsTo & 0xF7 | v8;
}

- (void)_installManagedSubviewsIfNecessary
{
  v28 = *MEMORY[0x1E69E9840];
  if (self->_activated && !self->_didInstallManagedSubviews)
  {
    _hostViewBelowText = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    _managedSubviewsBelowText = [(UITextSelectionDisplayInteraction *)self _managedSubviewsBelowText];
    v5 = [_managedSubviewsBelowText countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(_managedSubviewsBelowText);
          }

          [_hostViewBelowText addSubview:*(*(&v22 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [_managedSubviewsBelowText countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    layer = [_hostViewBelowText layer];
    [layer setAllowsGroupBlending:0];

    _hostViewAboveText = [(UITextSelectionDisplayInteraction *)self _hostViewAboveText];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    _managedSubviewsAboveText = [(UITextSelectionDisplayInteraction *)self _managedSubviewsAboveText];
    v12 = [_managedSubviewsAboveText countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(_managedSubviewsAboveText);
          }

          [_hostViewAboveText addSubview:*(*(&v18 + 1) + 8 * v15++)];
        }

        while (v13 != v15);
        v13 = [_managedSubviewsAboveText countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v13);
    }

    _hostViewAboveText2 = [(UITextSelectionDisplayInteraction *)self _hostViewAboveText];
    [(UIView *)_hostViewAboveText2 _addGeometryChangeObserver:?];

    _hostViewBelowText2 = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
    [(UIView *)_hostViewBelowText2 _addGeometryChangeObserver:?];

    [(_UICursorAccessoryViewController *)self->_cursorAccessoryViewController setVisible:0];
    [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer setHidden:1];
    [(UITextSelectionHighlightView *)self->_highlightView setHidden:1];
    [(UITextCursorView *)self->_cursorView setHidden:1];
    self->_didInstallManagedSubviews = 1;
    [(UITextSelectionDisplayInteraction *)self setNeedsSelectionUpdate];
  }
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)_removeManagedSubviews
{
  _hostViewAboveText = [(UITextSelectionDisplayInteraction *)self _hostViewAboveText];
  [(UIView *)_hostViewAboveText _removeGeometryChangeObserver:?];

  _hostViewBelowText = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
  [(UIView *)_hostViewBelowText _removeGeometryChangeObserver:?];

  [(NSArray *)self->_managedSubviewsBelowText makeObjectsPerformSelector:sel_removeFromSuperview];
  managedSubviewsBelowText = self->_managedSubviewsBelowText;
  self->_managedSubviewsBelowText = 0;

  [(NSArray *)self->_managedSubviewsAboveText makeObjectsPerformSelector:sel_removeFromSuperview];
  managedSubviewsAboveText = self->_managedSubviewsAboveText;
  self->_managedSubviewsAboveText = 0;

  self->_didInstallManagedSubviews = 0;
}

- (void)_resetDictationUIForDeactivation
{
  if ([(UITextSelectionDisplayInteraction *)self _isDictationRunning])
  {
    [(UITextSelectionDisplayInteraction *)self _resetDictationPortalViews];
  }

  if ([(UITextSelectionDisplayInteraction *)self _isVoiceControlRunning])
  {
    [(UITextSelectionDisplayInteraction *)self set_isVoiceControlRunning:0];

    [(UITextSelectionDisplayInteraction *)self _resetDictationAnimations];
  }
}

- (id)_hostViewAboveText
{
  if ((*&self->_textInputRespondsTo & 0x800) == 0 || (v3 = objc_loadWeakRetained(&self->_view), [v3 selectionContainerViewAboveText], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    viewRespondsTo = self->_viewRespondsTo;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    v7 = WeakRetained;
    if (viewRespondsTo)
    {
      [WeakRetained _selectionContainerViewAboveText];
    }

    else
    {
      [WeakRetained textInputView];
    }
    v4 = ;
  }

  return v4;
}

- (id)_hostViewBelowText
{
  if ((*&self->_textInputRespondsTo & 0x400) == 0 || (v3 = objc_loadWeakRetained(&self->_textInput), [v3 selectionContainerViewBelowText], textInputView = objc_claimAutoreleasedReturnValue(), v3, !textInputView))
  {
    if ((*&self->_delegateRespondsTo & 1) == 0 || (v5 = objc_loadWeakRetained(&self->_delegate), [v5 selectionContainerViewBelowTextForSelectionDisplayInteraction:self], textInputView = objc_claimAutoreleasedReturnValue(), v5, !textInputView))
    {
      if ((*&self->_viewRespondsTo & 2) == 0 || (v6 = objc_loadWeakRetained(&self->_view), [v6 selectionContainerView], textInputView = objc_claimAutoreleasedReturnValue(), v6, !textInputView))
      {
        WeakRetained = objc_loadWeakRetained(&self->_view);
        textInputView = [WeakRetained textInputView];
      }
    }
  }

  return textInputView;
}

- (void)_updateDelegateConformance
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | objc_opt_respondsToSelector() & 1;

  v4 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFD | v5;

  v6 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFB | v7;

  v8 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xF7 | v9;

  v10 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xEF | v11;

  v13 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v12 = 32;
  }

  else
  {
    v12 = 0;
  }

  *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xDF | v12;
}

- (id)_activeSelection
{
  if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    _internalDelegate = [(UITextSelectionDisplayInteraction *)self _internalDelegate];
    activeSelection = [_internalDelegate activeSelection];
  }

  else
  {
    v3 = [UITextSelection alloc];
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    activeSelection = [(UITextSelection *)v3 initWithDocument:WeakRetained];

    [(UITextSelection *)activeSelection selectionChanged];
  }

  return activeSelection;
}

- (id)_internalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_isHighlightVisible
{
  if (!self->_activated)
  {
    return 0;
  }

  _selectedRange = [(UITextSelectionDisplayInteraction *)self _selectedRange];
  _isRanged = [_selectedRange _isRanged];

  return _isRanged;
}

- (void)_removePulseAnimationIfNeeded
{
  highlightView = self->_highlightView;
  if (highlightView)
  {
    layer = [(UITextSelectionHighlightView *)highlightView layer];
    v5 = [layer animationForKey:@"pulseAnimation"];

    if (v5)
    {
      layer2 = [(UITextSelectionHighlightView *)self->_highlightView layer];
      [layer2 removeAnimationForKey:@"pulseAnimation"];
    }
  }
}

- (BOOL)_isRangeAdjustmentUIVisible
{
  if (*&self->_textInputRespondsTo)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    _shouldSuppressSelectionHandles = [WeakRetained _shouldSuppressSelectionHandles];

    v3 = _shouldSuppressSelectionHandles ^ 1;
  }

  else
  {
    v3 = 1;
  }

  if (self->_rangeViewMode)
  {
    return 0;
  }

  else
  {
    return [(UITextSelectionDisplayInteraction *)self _isHighlightVisible]& v3;
  }
}

- (CGRect)_caretRect
{
  _selectedRange = [(UITextSelectionDisplayInteraction *)self _selectedRange];
  v4 = [_selectedRange end];

  [(UITextSelectionDisplayInteraction *)self _caretRectForPosition:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)_selectedRange
{
  _activeSelection = [(UITextSelectionDisplayInteraction *)self _activeSelection];
  selectedRange = [_activeSelection selectedRange];

  return selectedRange;
}

- (UIColor)_cursorTintColor
{
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  isBETextInput = _isBETextInput(WeakRetained);

  if (isBETextInput)
  {
    v5 = objc_loadWeakRetained(&self->_textInput);
    extendedTraitsDelegate = [v5 performSelector:sel_extendedTextInputTraits];

    if (objc_opt_respondsToSelector())
    {
      insertionPointColor = [extendedTraitsDelegate performSelector:sel_insertionPointColor];
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    extendedTraitsDelegate = objc_loadWeakRetained(&self->_textInput);
    if (objc_opt_respondsToSelector())
    {
      v9 = objc_loadWeakRetained(&self->_textInput);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = objc_loadWeakRetained(&self->_textInput);
        v11 = [v10 conformsToProtocolCached:&unk_1F0139608];

        if (v11)
        {
          v12 = objc_loadWeakRetained(&self->_textInput);
          extendedTraitsDelegate = [v12 extendedTraitsDelegate];

          if (objc_opt_respondsToSelector())
          {
            insertionPointColor = [extendedTraitsDelegate insertionPointColor];
LABEL_4:
            v8 = insertionPointColor;

            if (v8)
            {
              goto LABEL_17;
            }

            goto LABEL_14;
          }

          goto LABEL_13;
        }

        goto LABEL_14;
      }
    }

LABEL_13:
  }

LABEL_14:
  v13 = objc_loadWeakRetained(&self->_textInput);
  v14 = objc_opt_respondsToSelector();

  if ((v14 & 1) == 0 || (v15 = objc_loadWeakRetained(&self->_textInput), [v15 performSelector:sel_insertionPointColor], v8 = objc_claimAutoreleasedReturnValue(), v15, !v8))
  {
    v16 = +[UIColor insertionPointColor];
    v8 = [(UITextSelectionDisplayInteraction *)self _tintColorOrDefault:v16];
  }

LABEL_17:

  return v8;
}

- (BOOL)_isCursorVisible
{
  _activeSelection = [(UITextSelectionDisplayInteraction *)self _activeSelection];
  hasEditableSelection = [_activeSelection hasEditableSelection];
  if (self->_activated && !self->_cursorHidden)
  {
    v6 = hasEditableSelection;
    selectedRange = [_activeSelection selectedRange];
    v5 = ([selectedRange isEmpty] & v6) == 1 && !self->_hiddenForApplicationSuspend;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateDictationUI
{
  [(UITextSelectionDisplayInteraction *)self set_isDictationRunning:+[UIDictationController isRunning]];
  if ([(UITextSelectionDisplayInteraction *)self _isDictationRunning]|| [(UITextSelectionDisplayInteraction *)self _isVoiceControlRunning])
  {
    if ([(UITextSelectionDisplayInteraction *)self _isCursorVisible])
    {
      [(UITextSelectionDisplayInteraction *)self _caretRectForDictationTrailingGlowView];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      if (+[UIKeyboard isInlineDictationGlowEffectEnabled])
      {
        if ([(UITextSelectionDisplayInteraction *)self _glowViewMode]== 2)
        {
          if (self)
          {
            x = self->__previousCursorFrame.origin.x;
            y = self->__previousCursorFrame.origin.y;
          }

          else
          {
            y = 0.0;
            x = 0.0;
          }

          v13 = v4 >= x;
          v14 = v4 < x || v6 != y;
          if (v6 == y)
          {
            v15 = 0;
          }

          else
          {
            [(UITextSelectionDisplayInteraction *)self _caretRectAtStartOfLine];
            v14 = v4 < v38 || v6 != v39;
            v15 = v14 ^ 1;
            v13 = v15;
            if (self && !v14)
            {
              v14 = 0;
              self->__previousCursorFrame.origin.x = v38;
              self->__previousCursorFrame.origin.y = v39;
              v15 = 1;
              v13 = 1;
              self->__previousCursorFrame.size.width = v40;
              self->__previousCursorFrame.size.height = v41;
            }
          }
        }

        else
        {
          v15 = 0;
          v13 = 0;
          v14 = [(UITextSelectionDisplayInteraction *)self _glowViewMode]== 1;
        }
      }

      else
      {
        v15 = 0;
        v13 = 0;
        v14 = 0;
      }

      cursorView = [(UITextSelectionDisplayInteraction *)self cursorView];
      tintColor = [cursorView tintColor];
      _trailingGlowView = [(UITextSelectionDisplayInteraction *)self _trailingGlowView];
      [_trailingGlowView setTintColor:tintColor];

      _trailingGlowView2 = [(UITextSelectionDisplayInteraction *)self _trailingGlowView];
      v20 = _trailingGlowView2;
      v21 = 0.0;
      v22 = 0.0;
      width = 0.0;
      height = 0.0;
      v25 = 0.0;
      if (self)
      {
        v25 = self->__previousCursorFrame.origin.x;
        v22 = self->__previousCursorFrame.origin.y;
        width = self->__previousCursorFrame.size.width;
        height = self->__previousCursorFrame.size.height;
      }

      [_trailingGlowView2 cursorDidMoveToFrame:v15 fromPreviousFrame:v4 isNewLine:{v6, v8, v10, v25, v22, width, height}];

      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      if (self)
      {
        v28 = self->__previousCursorFrame.origin.x;
        v21 = self->__previousCursorFrame.origin.y;
        v26 = self->__previousCursorFrame.size.width;
        v27 = self->__previousCursorFrame.size.height;
      }

      v29 = v21;
      v44.origin.x = v4;
      v44.origin.y = v6;
      v44.size.width = v8;
      v44.size.height = v10;
      v30 = CGRectEqualToRect(*&v28, v44);
      if (self && !v30)
      {
        self->__previousCursorFrame.origin.x = v4;
        self->__previousCursorFrame.origin.y = v6;
        self->__previousCursorFrame.size.width = v8;
        self->__previousCursorFrame.size.height = v10;
      }

      cursorView2 = [(UITextSelectionDisplayInteraction *)self cursorView];
      _scroller = [cursorView2 _scroller];

      if ([_scroller _canScrollY])
      {
        [(UITextSelectionDisplayInteraction *)self _resetDictationPortalViews];
      }

      else
      {
        [(UITextSelectionDisplayInteraction *)self _enableDictationPortalViews];
      }
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    _cursorView = [(UITextSelectionDisplayInteraction *)self _cursorView];
    [_cursorView setGlowEffectEnabled:v14];

    v34 = +[_UIDictationSettingsDomain rootSettings];
    soundReactiveCursorEnabled = [v34 soundReactiveCursorEnabled];

    if (!v14 && v13 && soundReactiveCursorEnabled)
    {
      _cursorView2 = [(UITextSelectionDisplayInteraction *)self _cursorView];
      [_cursorView2 setGlowEffectEnabled:1];
    }

    deleteButtonRemovalTimer = self->_deleteButtonRemovalTimer;
    if (deleteButtonRemovalTimer)
    {
      [(UIDelayedAction *)deleteButtonRemovalTimer touch];
    }

    _trailingGlowView3 = [(UITextSelectionDisplayInteraction *)self _trailingGlowView];
    [_trailingGlowView3 setTrailingAnimationEnabled:v13];
  }
}

- (void)_updateUnderlinesIfNeeded
{
  if ([(NSMutableDictionary *)self->_proofreadingUnderlines count])
  {

    [(UITextSelectionDisplayInteraction *)self _updateAnimatedUnderlinesIfNeeded];
  }
}

- (BOOL)_isCursorAccessoryViewEnabled
{
  if (!self->_activated || self->_cursorAccessoryViewHidden)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  if ([(UIView *)WeakRetained _isInVisibleHierarchy])
  {
    _activeSelection = [(UITextSelectionDisplayInteraction *)self _activeSelection];
    hasEditableSelection = [_activeSelection hasEditableSelection];
  }

  else
  {
    hasEditableSelection = 0;
  }

  return hasEditableSelection;
}

- (void)_updateSelectionIfNeeded
{
  [(UITextSelectionDisplayInteraction *)self _updateSelectionIfNeededResettingBlinkingAnimation:MEMORY[0x1E695E118]];
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  textInputView = [WeakRetained textInputView];
  [textInputView _selectionDidUpdate];
}

- (void)dealloc
{
  v3 = objc_getAssociatedObject(self, &_UITextInputImplicitSelectionDisplayInteractionKey);
  weakObject = [v3 weakObject];

  if (weakObject == self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    objc_setAssociatedObject(WeakRetained, &_UITextInputImplicitSelectionDisplayInteractionKey, 0, 1);
  }

  v6.receiver = self;
  v6.super_class = UITextSelectionDisplayInteraction;
  [(UITextSelectionDisplayInteraction *)&v6 dealloc];
}

- (id)_managedSubviewsBelowText
{
  managedSubviewsBelowText = self->_managedSubviewsBelowText;
  if (!managedSubviewsBelowText)
  {
    array = [MEMORY[0x1E695DF70] array];
    for (i = 0; i != 3; ++i)
    {
      v6 = [(UITextSelectionDisplayInteraction *)self _managedViewForType:i];
      [(NSArray *)array addObject:v6];
    }

    v7 = self->_managedSubviewsBelowText;
    self->_managedSubviewsBelowText = array;

    managedSubviewsBelowText = self->_managedSubviewsBelowText;
  }

  return managedSubviewsBelowText;
}

- (UIView)highlightView
{
  highlightView = self->_highlightView;
  if (!highlightView)
  {
    v4 = [_UITextSelectionHighlightView alloc];
    v5 = [(_UITextSelectionHighlightView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UITextSelectionDisplayInteraction *)self setHighlightView:v5];

    highlightView = self->_highlightView;
  }

  return highlightView;
}

- (_UITextUnderlineView)_underlineView
{
  underlineView = self->_underlineView;
  if (!underlineView)
  {
    v4 = [_UITextUnderlineView alloc];
    v5 = [(_UITextUnderlineView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_underlineView;
    self->_underlineView = v5;

    [(_UITextUnderlineView *)self->_underlineView setUseDirectionalLightEffect:0];
    underlineView = self->_underlineView;
  }

  return underlineView;
}

- (id)_managedSubviewsAboveText
{
  managedSubviewsAboveText = self->_managedSubviewsAboveText;
  if (!managedSubviewsAboveText)
  {
    array = [MEMORY[0x1E695DF70] array];
    for (i = 3; i != 6; ++i)
    {
      v6 = [(UITextSelectionDisplayInteraction *)self _managedViewForType:i];
      [(NSArray *)array addObject:v6];
    }

    v7 = self->_managedSubviewsAboveText;
    self->_managedSubviewsAboveText = array;

    managedSubviewsAboveText = self->_managedSubviewsAboveText;
  }

  return managedSubviewsAboveText;
}

- (BOOL)cursorBlinks
{
  cursorView = [(UITextSelectionDisplayInteraction *)self cursorView];
  isBlinking = [cursorView isBlinking];

  return isBlinking;
}

- (BOOL)ghostAppearance
{
  _cursorView = [(UITextSelectionDisplayInteraction *)self _cursorView];
  isGhostEffectEnabled = [_cursorView isGhostEffectEnabled];

  return isGhostEffectEnabled;
}

- (_UITextSelectionRangeAdjustmentContainerView)_rangeAdjustmentViewContainer
{
  rangeAdjustmentViewContainer = self->_rangeAdjustmentViewContainer;
  if (!rangeAdjustmentViewContainer)
  {
    v4 = [_UITextSelectionRangeAdjustmentContainerView alloc];
    v5 = [(_UITextSelectionRangeAdjustmentContainerView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_rangeAdjustmentViewContainer;
    self->_rangeAdjustmentViewContainer = v5;

    rangeAdjustmentViewContainer = self->_rangeAdjustmentViewContainer;
  }

  return rangeAdjustmentViewContainer;
}

- (_UICursorAccessoryViewController)_cursorAccessoryViewController
{
  cursorAccessoryViewController = self->_cursorAccessoryViewController;
  if (!cursorAccessoryViewController)
  {
    v4 = objc_alloc_init(_UICursorAccessoryViewController);
    v5 = self->_cursorAccessoryViewController;
    self->_cursorAccessoryViewController = v4;

    [(_UICursorAccessoryViewController *)self->_cursorAccessoryViewController setDelegate:self];
    cursorAccessoryViewController = self->_cursorAccessoryViewController;
  }

  return cursorAccessoryViewController;
}

- (_UITextCursorTrailingGlowView)_trailingGlowView
{
  trailingGlowView = self->_trailingGlowView;
  if (!trailingGlowView)
  {
    v4 = [_UITextCursorTrailingGlowView alloc];
    v5 = [(_UITextCursorTrailingGlowView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_trailingGlowView;
    self->_trailingGlowView = v5;

    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__UITextSelectionDisplayInteraction_Dictation___trailingGlowView__block_invoke;
    v8[3] = &unk_1E70F5A28;
    objc_copyWeak(&v9, &location);
    [(_UITextCursorTrailingGlowView *)self->_trailingGlowView setTransitionBlock:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    trailingGlowView = self->_trailingGlowView;
  }

  return trailingGlowView;
}

- (void)_setupDictationUIForActivation
{
  if (_AXSCommandAndControlEnabled())
  {
    [(UITextSelectionDisplayInteraction *)self set_isVoiceControlRunning:0];

    [(UITextSelectionDisplayInteraction *)self _updateVoiceControlEnablementState];
  }
}

- (UIView)cursorView
{
  cursorView = self->_cursorView;
  if (!cursorView)
  {
    v4 = [UIStandardTextCursorView alloc];
    v5 = [(UIStandardTextCursorView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(UITextSelectionDisplayInteraction *)self setCursorView:v5];

    cursorView = self->_cursorView;
  }

  return cursorView;
}

- (CGAffineTransform)_caretTransform
{
  v5 = MEMORY[0x1E695EFD0];
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  _selectedRange = [(UITextSelectionDisplayInteraction *)self _selectedRange];
  v8 = [_selectedRange end];

  if ((*&self->_textInputRespondsTo & 0x100) != 0)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    v10 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained caretTransformForPosition:v8];
      goto LABEL_8;
    }

LABEL_7:
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    goto LABEL_8;
  }

  if ((*&self->_textInputRespondsTo & 0x200) != 0)
  {
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v9 = objc_loadWeakRetained(&self->_textInput);
    v10 = v9;
    if (v9)
    {
      [v9 _caretTransformForPosition:v8];
LABEL_8:

      cursorView = [(UITextSelectionDisplayInteraction *)self cursorView];
      v14[0] = v15;
      v14[1] = v16;
      v14[2] = v17;
      [(UITextSelectionDisplayInteraction *)self _transformRelativeToTextInputCoordinateSpace:v14 forView:cursorView];

      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_9:

  return result;
}

- (double)_cursorAlpha
{
  if (self->_cursorFadedHiddenForFloatingCursor)
  {
    return 0.0101;
  }

  result = 0.0101;
  if (!self->_selectionUIHiddenForAssertion)
  {
    return 1.0;
  }

  return result;
}

- (id)textInput
{
  WeakRetained = objc_loadWeakRetained(&self->_textInput);

  return WeakRetained;
}

void __65__UITextSelectionDisplayInteraction_Dictation___trailingGlowView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained _isDictationRunning] & 1) != 0 || objc_msgSend(WeakRetained, "_isVoiceControlRunning"))
  {
    v1 = [WeakRetained _cursorView];
    [v1 setGlowEffectEnabled:1];
  }
}

- (void)_initializeManagedDictationViewsIfNecessary
{
  if (!self->_didInitializeManagedDictationViews && [(UITextSelectionDisplayInteraction *)self isActivated])
  {
    v3 = objc_alloc_init(_UIContainerWindowPortalInteraction);
    [(UITextSelectionDisplayInteraction *)self setCursorPortalInteraction:v3];

    cursorView = [(UITextSelectionDisplayInteraction *)self cursorView];
    cursorPortalInteraction = [(UITextSelectionDisplayInteraction *)self cursorPortalInteraction];
    [cursorView addInteraction:cursorPortalInteraction];

    v6 = objc_alloc_init(_UIContainerWindowPortalInteraction);
    [(UITextSelectionDisplayInteraction *)self setTrailingPortalInteraction:v6];

    _trailingGlowView = [(UITextSelectionDisplayInteraction *)self _trailingGlowView];
    trailingPortalInteraction = [(UITextSelectionDisplayInteraction *)self trailingPortalInteraction];
    [_trailingGlowView addInteraction:trailingPortalInteraction];

    if ([(UITextSelectionDisplayInteraction *)self _supportDeleteButton])
    {
      v9 = objc_alloc_init(_UIContainerWindowPortalInteraction);
      [(UITextSelectionDisplayInteraction *)self setDeleteButtonPortalInteraction:v9];

      _deleteButton = [(UITextSelectionDisplayInteraction(Dictation) *)self _deleteButton];
      deleteButtonPortalInteraction = [(UITextSelectionDisplayInteraction *)self deleteButtonPortalInteraction];
      [_deleteButton addInteraction:deleteButtonPortalInteraction];
    }

    self->_didInitializeManagedDictationViews = 1;
  }
}

uint64_t __61__UITextSelectionDisplayInteraction_Dictation___deleteButton__block_invoke(uint64_t a1)
{
  v2 = +[UIKeyboardImpl activeInstance];
  [v2 updateIdleDetection:9];

  [*(a1 + 32) _caretRect];
  v4 = v3;
  v5 = +[UIKeyboardImpl activeInstance];
  [v5 handleDeleteWordWithExecutionContext:0];

  [*(a1 + 32) _caretRect];
  v7 = v6;
  v8 = [*(a1 + 32) textInput];
  v9 = [v8 hasText];

  v10 = *(a1 + 32);
  if (v9 && v7 >= v4)
  {
    v11 = v10[21];

    return [v11 touch];
  }

  else
  {

    return [v10 _hideDeleteButton];
  }
}

- (void)_showDeleteButton
{
  [(UITextSelectionDisplayInteraction(Dictation) *)self setWantsDeleteButtonVisible:1];

  [(UITextSelectionDisplayInteraction *)self setNeedsSelectionUpdate];
}

- (void)_animateDeleteButtonVisible:(BOOL)visible
{
  visibleCopy = visible;
  CGAffineTransformMakeScale(&v12, 0.8, 0.8);
  deleteButton = self->__deleteButton;
  v11 = v12;
  [(UIView *)deleteButton setTransform:&v11];
  if (visibleCopy)
  {
    v6 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v7 = __76__UITextSelectionDisplayInteraction_Dictation___animateDeleteButtonVisible___block_invoke;
  }

  else
  {
    v6 = &v8;
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v7 = __76__UITextSelectionDisplayInteraction_Dictation___animateDeleteButtonVisible___block_invoke_2;
  }

  v6[2] = v7;
  v6[3] = &unk_1E70F3590;
  v6[4] = self;
  [UIView animateWithDuration:6 delay:0.25 usingSpringWithDamping:0.0 initialSpringVelocity:0.85 options:0.0 animations:v8 completion:v9];
}

uint64_t __76__UITextSelectionDisplayInteraction_Dictation___animateDeleteButtonVisible___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 160);
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v5[0] = *MEMORY[0x1E695EFD0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v5];
  return [*(*(a1 + 32) + 160) setAlpha:1.0];
}

- (void)_hideDeleteButton
{
  [(UITextSelectionDisplayInteraction(Dictation) *)self setWantsDeleteButtonVisible:0];

  [(UITextSelectionDisplayInteraction *)self setNeedsSelectionUpdate];
}

- (void)_applyDeleteHiddenState
{
  if ([(UIDelayedAction *)self->_deleteButtonRemovalTimer scheduled])
  {
    [(UIDelayedAction *)self->_deleteButtonRemovalTimer cancel];
  }

  deleteButtonRemovalTimer = self->_deleteButtonRemovalTimer;
  self->_deleteButtonRemovalTimer = 0;

  [(UITextSelectionDisplayInteraction *)self _animateDeleteButtonVisible:0];
}

- (void)_layoutDeleteButton
{
  if ([(UITextSelectionDisplayInteraction *)self _isDeleteButtonVisible])
  {
    if (!self->_deleteButtonRemovalTimer)
    {
      v3 = [[UIDelayedAction alloc] initWithTarget:self action:sel__hideDeleteButton userInfo:0 delay:1.5];
      deleteButtonRemovalTimer = self->_deleteButtonRemovalTimer;
      self->_deleteButtonRemovalTimer = v3;
    }

    [(UITextSelectionDisplayInteraction *)self _caretRect];
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    height = v20.size.height;
    v9 = CGRectGetMidX(v20) + 30.0;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    MidY = CGRectGetMidY(v21);
    _hostViewAboveText = [(UITextSelectionDisplayInteraction *)self _hostViewAboveText];
    view = [(UITextSelectionDisplayInteraction *)self view];
    [view convertPoint:_hostViewAboveText fromView:{v9, MidY}];
    v13 = v12;
    v15 = v14;
    _deleteButton = [(UITextSelectionDisplayInteraction(Dictation) *)self _deleteButton];
    [_deleteButton setCenter:{v13, v15}];

    [(UITextSelectionDisplayInteraction *)self set_isDeleteButtonVisible:0];
    deleteButtonPortalInteraction = [(UITextSelectionDisplayInteraction *)self deleteButtonPortalInteraction];
    [deleteButtonPortalInteraction ensureVisibilityInContainerWindow];

    [(UITextSelectionDisplayInteraction *)self _animateDeleteButtonVisible:1];
  }
}

- (void)_removeDeleteButton
{
  if ([(UITextSelectionDisplayInteraction *)self _supportDeleteButton])
  {
    [(UITextSelectionDisplayInteraction *)self _hideDeleteButton];
    [(UIView *)self->__deleteButton removeFromSuperview];
    deleteButton = self->__deleteButton;
    self->__deleteButton = 0;
  }
}

- (void)_updateVoiceControlEnablementState
{
  if (_os_feature_enabled_impl())
  {
    v3 = _AXSCommandAndControlEnabled();
    if ([(UITextSelectionDisplayInteraction *)self _isVoiceControlRunning]!= (v3 != 0))
    {
      [(UITextSelectionDisplayInteraction *)self set_isVoiceControlRunning:v3 != 0];
      if (v3)
      {

        [(UITextSelectionDisplayInteraction *)self _startDictationAnimations];
      }

      else if (![(UITextSelectionDisplayInteraction *)self _isDictationRunning])
      {

        [(UITextSelectionDisplayInteraction *)self _resetDictationAnimations];
      }
    }
  }
}

- (void)_resetDictationPortalViews
{
  cursorPortalInteraction = [(UITextSelectionDisplayInteraction *)self cursorPortalInteraction];
  [cursorPortalInteraction setEnabled:0];

  trailingPortalInteraction = [(UITextSelectionDisplayInteraction *)self trailingPortalInteraction];
  [trailingPortalInteraction setEnabled:0];

  deleteButtonPortalInteraction = [(UITextSelectionDisplayInteraction *)self deleteButtonPortalInteraction];
  [deleteButtonPortalInteraction setEnabled:0];
}

- (void)_enableDictationPortalViews
{
  [(UITextSelectionDisplayInteraction *)self _initializeManagedDictationViewsIfNecessary];
  cursorPortalInteraction = [(UITextSelectionDisplayInteraction *)self cursorPortalInteraction];
  [cursorPortalInteraction setEnabled:1];

  trailingPortalInteraction = [(UITextSelectionDisplayInteraction *)self trailingPortalInteraction];
  [trailingPortalInteraction setEnabled:1];

  deleteButtonPortalInteraction = [(UITextSelectionDisplayInteraction *)self deleteButtonPortalInteraction];
  [deleteButtonPortalInteraction setEnabled:1];
}

- (void)_dictationDidBeginNotification:(id)notification
{
  [(UITextSelectionDisplayInteraction *)self set_isDictationRunning:1];
  if ([(UITextSelectionDisplayInteraction *)self _isCursorVisible])
  {

    [(UITextSelectionDisplayInteraction *)self _startDictationAnimations];
  }

  else
  {
    v4 = +[UIKeyboardImpl activeInstance];
    [v4 presentDictationMenu];

    v5 = [(UITextSelectionDisplayInteraction *)self obtainBlinkSuppressionAssertionForReason:@"dictation"];
    [(UITextSelectionDisplayInteraction *)self set_dictationBlinkSuppressionAssertion:v5];
  }
}

- (void)_dictationDidFinishNotification:(id)notification
{
  [(UITextSelectionDisplayInteraction *)self set_isDictationRunning:0];
  if (![(UITextSelectionDisplayInteraction *)self _isVoiceControlRunning])
  {
    [(UITextSelectionDisplayInteraction *)self _resetDictationAnimations];
  }

  self->_didInitializeManagedDictationViews = 0;
}

- (void)_startDictationAnimations
{
  [(UITextSelectionDisplayInteraction *)self _initializeManagedDictationViewsIfNecessary];
  if (+[UIKeyboard isInlineDictationGlowEffectEnabled])
  {
    [(UITextSelectionDisplayInteraction *)self _setGlowViewMode:1];
    [(UITextSelectionDisplayInteraction *)self _enableDictationPortalViews];
    v3 = [(UITextSelectionDisplayInteraction *)self obtainBlinkSuppressionAssertionForReason:@"dictation"];
    [(UITextSelectionDisplayInteraction *)self set_dictationBlinkSuppressionAssertion:v3];

    _cursorTintColor = [(UITextSelectionDisplayInteraction *)self _cursorTintColor];
    _cursorView = [(UITextSelectionDisplayInteraction *)self _cursorView];
    [_cursorView setTintColor:_cursorTintColor];

    _cursorView2 = [(UITextSelectionDisplayInteraction *)self _cursorView];
    [_cursorView2 _setNeedsInitialDictationAnimation];

    _cursorView3 = [(UITextSelectionDisplayInteraction *)self _cursorView];
    v8 = +[UIDictationController activeInstance];
    [_cursorView3 setAudioLevelProvider:v8];

    [(UITextSelectionDisplayInteraction *)self _updateDictationUI];
  }
}

- (void)_resetDictationAnimations
{
  if (+[UIKeyboard isInlineDictationGlowEffectEnabled])
  {
    [(UITextSelectionDisplayInteraction *)self _setGlowViewMode:0];
    [(UITextSelectionDisplayInteraction *)self _resetDictationPortalViews];
    if (self)
    {
      dictationBlinkSuppressionAssertion = self->__dictationBlinkSuppressionAssertion;
    }

    else
    {
      dictationBlinkSuppressionAssertion = 0;
    }

    v4 = dictationBlinkSuppressionAssertion;
    [(UITextCursorAssertion *)v4 invalidate];

    [(UITextSelectionDisplayInteraction *)self set_dictationBlinkSuppressionAssertion:?];
    _cursorView = [(UITextSelectionDisplayInteraction *)self _cursorView];
    [_cursorView setGlowEffectEnabled:0];

    _trailingGlowView = [(UITextSelectionDisplayInteraction *)self _trailingGlowView];
    [_trailingGlowView setTrailingAnimationEnabled:0];
  }

  [(UITextSelectionDisplayInteraction *)self _removeDeleteButton];

  [(UITextSelectionDisplayInteraction *)self _removePulseAnimationIfNeeded];
}

- (void)_dictationDidPauseNotification:(id)notification
{
  if (+[UIKeyboard isInlineDictationGlowEffectEnabled])
  {
    [(UITextSelectionDisplayInteraction *)self _setGlowViewMode:0];
    v4 = +[UIKeyboardImpl activeInstance];
    [v4 clearDictationMenuTimer];
  }
}

- (void)_dictationDidResumeNotification:(id)notification
{
  if (+[UIKeyboard isInlineDictationGlowEffectEnabled]&& [(UITextSelectionDisplayInteraction *)self _isDictationRunning])
  {
    [(UITextSelectionDisplayInteraction *)self _setGlowViewMode:1];
    if (self)
    {
      dictationBlinkSuppressionAssertion = self->__dictationBlinkSuppressionAssertion;
    }

    else
    {
      dictationBlinkSuppressionAssertion = 0;
    }

    v5 = dictationBlinkSuppressionAssertion;

    if (!v5)
    {
      v6 = [(UITextSelectionDisplayInteraction *)self obtainBlinkSuppressionAssertionForReason:@"dictation"];
      [(UITextSelectionDisplayInteraction *)self set_dictationBlinkSuppressionAssertion:v6];
    }

    v7 = +[UIKeyboardImpl activeInstance];
    [v7 representDictationMenu];
  }
}

- (void)_dictationWillInsertHypothesisNotification:(id)notification
{
  notificationCopy = notification;
  if (+[UIKeyboard isInlineDictationGlowEffectEnabled]&& ([(UITextSelectionDisplayInteraction *)self _isDictationRunning]|| [(UITextSelectionDisplayInteraction *)self _isVoiceControlRunning]))
  {
    userInfo = [notificationCopy userInfo];

    if (userInfo)
    {
      userInfo2 = [notificationCopy userInfo];
      v6 = [userInfo2 objectForKeyedSubscript:@"UIDictationGlowViewMode"];
      intValue = [v6 intValue];
    }

    else
    {
      intValue = 2;
    }

    [(UITextSelectionDisplayInteraction *)self _setGlowViewMode:intValue];
  }

  [(UITextSelectionDisplayInteraction *)self _hideDeleteButton];
}

- (id)_initWithTextInput:(id)input delegate:(id)delegate activated:(BOOL)activated
{
  inputCopy = input;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = UITextSelectionDisplayInteraction;
  v10 = [(UITextSelectionDisplayInteraction *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_textInput, inputCopy);
    objc_storeWeak(&v11->_delegate, delegateCopy);
    v11->_activated = activated;
    v12 = [[_UIAssertionController alloc] initWithAssertionSubject:v11];
    assertionController = v11->_assertionController;
    v11->_assertionController = v12;

    v14 = objc_alloc_init(UITextCursorAssertionController);
    cursorAssertionController = v11->_cursorAssertionController;
    v11->_cursorAssertionController = v14;

    [(UITextCursorAssertionController *)v11->_cursorAssertionController setSubject:v11];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__didReceiveApplicationWillSuspendNotification_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [defaultCenter addObserver:v11 selector:sel__didReceiveApplicationWillResumeNotification_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [defaultCenter addObserver:v11 selector:sel__trackingViewportDidLayout_ name:@"_UITextViewportLayoutControllerDidLayout" object:0];
    [defaultCenter addObserver:v11 selector:sel__didReceiveAXNonBlinkingDidChangeNotification_ name:*MEMORY[0x1E6959538] object:0];
    v17 = [_UITextInputImplicitObjectWrapper wrapperForObject:v11];
    WeakRetained = objc_loadWeakRetained(&v11->_textInput);
    objc_setAssociatedObject(WeakRetained, &_UITextInputImplicitSelectionDisplayInteractionKey, v17, 1);

    [(UITextSelectionDisplayInteraction *)v11 _updateDelegateConformance];
    [(UITextSelectionDisplayInteraction *)v11 _updateTextInputConformance];
    [(UITextSelectionDisplayInteraction *)v11 _initializeDictationSupport];
    [(UITextSelectionDisplayInteraction *)v11 _updateAccessibilityNonBlinkingAssertion];
  }

  return v11;
}

- (void)willMoveToView:(id)view
{
  [(UITextSelectionDisplayInteraction *)self _removeManagedSubviews];

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)view
{
  v4 = objc_storeWeak(&self->_view, view);
  if (view)
  {
    [(UITextSelectionDisplayInteraction *)self _updateViewConformance];
    [(UITextSelectionDisplayInteraction *)self _installManagedSubviewsIfNecessary];
  }
}

- (void)_trackingViewportDidLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_needsUpdate && (*&self->_textInputRespondsTo & 0x80) != 0)
  {
    v9 = layoutCopy;
    object = [layoutCopy object];
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    textLayoutManager = [WeakRetained textLayoutManager];
    textViewportLayoutController = [textLayoutManager textViewportLayoutController];

    if (object == textViewportLayoutController)
    {
      [(UITextSelectionDisplayInteraction *)self _updateSelectionIfNeeded];
    }

    layoutCopy = v9;
  }
}

- (void)setCursorView:(UIView *)cursorView
{
  v5 = cursorView;
  objc_storeStrong(&self->_cursorView, cursorView);
  v6 = objc_opt_class();
  v10 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v10;
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

  v8 = v7;

  concreteCursorView = self->_concreteCursorView;
  self->_concreteCursorView = v8;

  [(UITextCursorAssertionController *)self->_cursorAssertionController _updateSubjectWithAssertionState];
}

- (void)setHighlightView:(UIView *)highlightView
{
  v5 = highlightView;
  objc_storeStrong(&self->_highlightView, highlightView);
  v6 = objc_opt_class();
  v10 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v10;
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

  v8 = v7;

  concreteHighlightView = self->_concreteHighlightView;
  self->_concreteHighlightView = v8;
}

- (void)setHandleViews:(NSArray *)handleViews
{
  v5 = handleViews;
  if ([(NSArray *)v5 count]!= 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextSelectionDisplayInteraction.m" lineNumber:457 description:{@"You must provide exactly two handle views to UITextSelectionDisplayInteraction, one for the leading selection handle and one for the trailing selection handle."}];
  }

  _rangeAdjustmentViewContainer = [(UITextSelectionDisplayInteraction *)self _rangeAdjustmentViewContainer];
  [_rangeAdjustmentViewContainer setSelectionGrabbers:v5];
}

- (NSArray)handleViews
{
  _rangeAdjustmentViewContainer = [(UITextSelectionDisplayInteraction *)self _rangeAdjustmentViewContainer];
  selectionGrabbers = [_rangeAdjustmentViewContainer selectionGrabbers];

  return selectionGrabbers;
}

- (id)_proofreadingUnderlineView
{
  proofreadingUnderlineView = self->_proofreadingUnderlineView;
  if (!proofreadingUnderlineView)
  {
    v4 = [_UITextUnderlineView alloc];
    v5 = [(_UITextUnderlineView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_proofreadingUnderlineView;
    self->_proofreadingUnderlineView = v5;

    [(_UITextUnderlineView *)self->_proofreadingUnderlineView setUseDirectionalLightEffect:1];
    _hostViewBelowText = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
    [_hostViewBelowText addSubview:self->_proofreadingUnderlineView];

    proofreadingUnderlineView = self->_proofreadingUnderlineView;
  }

  return proofreadingUnderlineView;
}

- (id)_managedViewForType:(int64_t)type
{
  view = 0;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        _underlineView = [(UITextSelectionDisplayInteraction *)self _underlineView];
      }

      else
      {
        if (type != 2)
        {
          goto LABEL_15;
        }

        _underlineView = [(UITextSelectionDisplayInteraction *)self _trailingGlowView];
      }
    }

    else
    {
      _underlineView = [(UITextSelectionDisplayInteraction *)self highlightView];
    }

    goto LABEL_14;
  }

  switch(type)
  {
    case 3:
      _underlineView = [(UITextSelectionDisplayInteraction *)self cursorView];
LABEL_14:
      view = _underlineView;
      break;
    case 4:
      _underlineView = [(UITextSelectionDisplayInteraction *)self _rangeAdjustmentViewContainer];
      goto LABEL_14;
    case 5:
      _cursorAccessoryViewController = [(UITextSelectionDisplayInteraction *)self _cursorAccessoryViewController];
      view = [_cursorAccessoryViewController view];

      break;
  }

LABEL_15:

  return view;
}

- (id)_allManagedSubviews
{
  _managedSubviewsAboveText = [(UITextSelectionDisplayInteraction *)self _managedSubviewsAboveText];
  _managedSubviewsBelowText = [(UITextSelectionDisplayInteraction *)self _managedSubviewsBelowText];
  v5 = [_managedSubviewsAboveText arrayByAddingObjectsFromArray:_managedSubviewsBelowText];

  return v5;
}

- (void)_layoutManagedSubviewsResettingBlinkingAnimation:(BOOL)animation
{
  self->_needsUpdate = 1;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:animation];
  [(UITextSelectionDisplayInteraction *)self _updateSelectionIfNeededResettingBlinkingAnimation:v4];
}

- (void)_updateHighlightViewWithShimmerState
{
  v14 = self->_highlightView;
  if (self->_shouldDisplayShimmerHighlights)
  {
    v3 = [_UITextSelectionHighlightShimmerView alloc];
    v4 = [(_UITextSelectionHighlightShimmerView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v5 = v14;
    savedHighlightView = self->_savedHighlightView;
    self->_savedHighlightView = v5;
  }

  else
  {
    v7 = self->_savedHighlightView;
    if (!v7)
    {
      v4 = 0;
      goto LABEL_6;
    }

    v4 = v7;
    savedHighlightView = self->_savedHighlightView;
    self->_savedHighlightView = 0;
  }

LABEL_6:
  if (self->_activated || self->_didInstallManagedSubviews)
  {
    superview = [(UITextSelectionHighlightView *)v14 superview];
    _hostViewBelowText = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];

    if (superview == _hostViewBelowText)
    {
      [(UIView *)v4 setHidden:[(UITextSelectionHighlightView *)v14 isHidden]];
      _hostViewBelowText2 = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
      [_hostViewBelowText2 insertSubview:v4 belowSubview:v14];

      [(UITextSelectionHighlightView *)v14 removeFromSuperview];
    }

    else
    {
      [(UIView *)v4 setHidden:1];
      _hostViewBelowText3 = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
      [_hostViewBelowText3 insertSubview:v4 atIndex:0];
    }
  }

  [(UITextSelectionDisplayInteraction *)self setHighlightView:v4];
  managedSubviewsBelowText = self->_managedSubviewsBelowText;
  self->_managedSubviewsBelowText = 0;

  _managedSubviewsBelowText = [(UITextSelectionDisplayInteraction *)self _managedSubviewsBelowText];
  if (self->_activated || self->_didInstallManagedSubviews)
  {
    [(UITextSelectionDisplayInteraction *)self _updateSelectionIfNeededResettingBlinkingAnimation:MEMORY[0x1E695E110]];
  }
}

- (double)_highlightAndRangeAdjustmentAlpha
{
  result = 1.0;
  if (self->_selectionUIHiddenForAssertion)
  {
    return 0.0;
  }

  return result;
}

- (BOOL)_isCursorAccessoryViewVisible
{
  _isCursorAccessoryViewEnabled = [(UITextSelectionDisplayInteraction *)self _isCursorAccessoryViewEnabled];
  if (_isCursorAccessoryViewEnabled)
  {
    _cursorAccessoryViewController = [(UITextSelectionDisplayInteraction *)self _cursorAccessoryViewController];
    isVisible = [_cursorAccessoryViewController isVisible];

    LOBYTE(_isCursorAccessoryViewEnabled) = isVisible;
  }

  return _isCursorAccessoryViewEnabled;
}

- (CGRect)_textInputRectInSelectionViewCoordinateSpace:(CGRect)space
{
  height = space.size.height;
  width = space.size.width;
  y = space.origin.y;
  x = space.origin.x;
  rangeAdjustmentViewContainer = self->_rangeAdjustmentViewContainer;
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  textInputView = [WeakRetained textInputView];
  [(UIView *)rangeAdjustmentViewContainer convertRect:textInputView fromView:x, y, width, height];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = objc_loadWeakRetained(&self->_textInput);
  textInputView2 = [v19 textInputView];
  [textInputView2 contentScaleFactor];
  v22 = UIRectIntegralWithScale(v12, v14, v16, v18, v21);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CGAffineTransform)_transformRelativeToTextInputCoordinateSpace:(SEL)space forView:(CGAffineTransform *)view
{
  [a5 center];
  v8 = v7;
  v10 = v9;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  CGAffineTransformMakeTranslation(retstr, -v7, -v9);
  v11 = *&view->c;
  *&t1.a = *&view->a;
  *&t1.c = v11;
  *&t1.tx = *&view->tx;
  v12 = *&retstr->c;
  *&v17.a = *&retstr->a;
  *&v17.c = v12;
  *&v17.tx = *&retstr->tx;
  CGAffineTransformConcat(&v19, &t1, &v17);
  v13 = *&v19.c;
  *&retstr->a = *&v19.a;
  *&retstr->c = v13;
  *&retstr->tx = *&v19.tx;
  v14 = *&retstr->c;
  *&t1.a = *&retstr->a;
  *&t1.c = v14;
  *&t1.tx = *&retstr->tx;
  result = CGAffineTransformTranslate(&v19, &t1, v8, v10);
  v16 = *&v19.c;
  *&retstr->a = *&v19.a;
  *&retstr->c = v16;
  *&retstr->tx = *&v19.tx;
  return result;
}

- (CGRect)_caretRectForPosition:(id)position
{
  if (position)
  {
    positionCopy = position;
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    [WeakRetained caretRectForPosition:positionCopy];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [(UITextSelectionDisplayInteraction *)self _textInputRectInSelectionViewCoordinateSpace:v7, v9, v11, v13];
  }

  else
  {
    v14 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v16 = *(MEMORY[0x1E695F058] + 16);
    v17 = *(MEMORY[0x1E695F058] + 24);
  }

  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)_caretRectForDictationTrailingGlowView
{
  [(UITextSelectionDisplayInteraction *)self _caretRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _hostViewBelowText = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
  [_hostViewBelowText convertRect:self->_rangeAdjustmentViewContainer fromView:{v4, v6, v8, v10}];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_caretRectAtStartOfLine
{
  _selectedRange = [(UITextSelectionDisplayInteraction *)self _selectedRange];
  v4 = [_selectedRange end];

  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  tokenizer = [WeakRetained tokenizer];

  if (tokenizer)
  {
    v7 = [tokenizer positionFromPosition:v4 toBoundary:4 inDirection:1];

    v4 = v7;
  }

  [(UITextSelectionDisplayInteraction *)self _caretRectForPosition:v4];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)_contentBoundsForPlacement:(int64_t)placement
{
  if (placement)
  {
    [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
  }

  else
  {
    [(UITextSelectionDisplayInteraction *)self _hostViewAboveText];
  }
  v3 = ;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  if ([v3 __isKindOfUIScrollView])
  {
    [v3 contentSize];
    v10 = v8 > v5;
    if (v9 > v7)
    {
      v10 = 1;
    }

    if (v10)
    {
      v5 = v8;
      v7 = v9;
    }
  }

  v11 = 0.0;
  v12 = 0.0;
  v13 = v5;
  v14 = v7;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_selectionClipRectAt:(int64_t)at
{
  v5 = MEMORY[0x1E695F050];
  if ((*&self->_viewRespondsTo & 8) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained conformsToProtocolCached:&unk_1F016C810];

    v11 = objc_loadWeakRetained(&self->_view);
    [v11 selectionClipRect];
  }

  else
  {
    if ((*&self->_viewRespondsTo & 4) == 0)
    {
      v7 = *(MEMORY[0x1E695F050] + 16);
      v6 = *(MEMORY[0x1E695F050] + 24);
      v9 = *MEMORY[0x1E695F050];
      v8 = *(MEMORY[0x1E695F050] + 8);
      goto LABEL_7;
    }

    v11 = objc_loadWeakRetained(&self->_view);
    [v11 _selectionClipRect];
  }

  v9 = v12;
  v8 = v13;
  v7 = v14;
  v6 = v15;

LABEL_7:
  v31.origin.x = v9;
  v31.origin.y = v8;
  v31.size.width = v7;
  v31.size.height = v6;
  if (CGRectIsNull(v31))
  {
    v16 = *v5;
    v17 = v5[1];
    v18 = v5[2];
    v19 = v5[3];
  }

  else
  {
    if (at)
    {
      [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
    }

    else
    {
      [(UITextSelectionDisplayInteraction *)self _hostViewAboveText];
    }
    v20 = ;
    v21 = objc_loadWeakRetained(&self->_textInput);
    textInputView = [v21 textInputView];
    [v20 convertRect:textInputView fromView:{v9, v8, v7, v6}];
    v16 = v23;
    v17 = v24;
    v18 = v25;
    v19 = v26;
  }

  v27 = v16;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (id)_visibleSelectionRectsForRange:(id)range
{
  v48 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v5 = rangeCopy;
  if (!rangeCopy)
  {
    v30 = MEMORY[0x1E695E0F0];
    goto LABEL_28;
  }

  v6 = rangeCopy;
  if ((*&self->_textInputRespondsTo & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    v8 = [WeakRetained _visibleRangeWithLayout:0];
    v10 = v9;

    if (v10)
    {
      if (v8 <= 2000)
      {
        v11 = 2000;
      }

      else
      {
        v11 = v8;
      }

      textInputRespondsTo = self->_textInputRespondsTo;
      if ((~*&textInputRespondsTo & 0x30) != 0)
      {
        v16 = v6;
      }

      else
      {
        v13 = objc_loadWeakRetained(&self->_textInput);
        v14 = [v13 _NSTextRangeFromNSRange:{v8, v10}];

        v15 = v14 != 0;
        v16 = v6;
        if (v14)
        {
          v40 = v11;
          v41 = v10;
          v42 = v6;
          _NSTextRanges = [v6 _NSTextRanges];
          v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_NSTextRanges, "count")}];
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v19 = _NSTextRanges;
          v20 = [v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v44;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v44 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = *(*(&v43 + 1) + 8 * i);
                v25 = [v24 textRangeByIntersectingWithTextRange:v14];
                v26 = v25;
                if (v25)
                {
                  v27 = v25;
                }

                else
                {
                  v27 = v24;
                }

                v28 = v27;

                [v18 addObject:v28];
              }

              v21 = [v19 countByEnumeratingWithState:&v43 objects:v47 count:16];
            }

            while (v21);
          }

          v29 = objc_loadWeakRetained(&self->_textInput);
          v16 = [v29 _rangeForTextKitRanges:v18];
          v6 = v42;

          v11 = v40;
          v10 = v41;
          v15 = 1;
        }

        *&textInputRespondsTo = self->_textInputRespondsTo;
        if (v15)
        {
          goto LABEL_26;
        }
      }

      if ((*&textInputRespondsTo & 0xC) != 0xC)
      {
LABEL_26:
        v6 = v16;
        goto LABEL_27;
      }

      v31 = v11 - 2000;
      v32 = objc_loadWeakRetained(&self->_textInput);
      v33 = [v32 _nsrangeForTextRange:v6];
      v35 = v34;

      v50.length = v10 + 4000;
      v50.location = v31;
      v51.location = v33;
      v51.length = v35;
      v36 = NSIntersectionRange(v50, v51);
      v37 = objc_loadWeakRetained(&self->_textInput);
      v6 = [v37 _textRangeFromNSRange:{v36.location, v36.length}];
    }
  }

LABEL_27:
  v38 = objc_loadWeakRetained(&self->_textInput);
  v30 = [v38 selectionRectsForRange:v6];

LABEL_28:

  return v30;
}

- (id)_tintColorOrDefault:(id)default alpha:(double)alpha
{
  defaultCopy = default;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  tintColor = [WeakRetained tintColor];

  v9 = objc_loadWeakRetained(&self->_view);
  v10 = +[UIView _defaultInteractionTintColorForIdiom:](UIView, "_defaultInteractionTintColorForIdiom:", [v9 _userInterfaceIdiom]);

  v11 = tintColor;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {

    v16 = v11;
    v15 = defaultCopy;
LABEL_9:

    goto LABEL_10;
  }

  if (!v11 || !v12)
  {

    goto LABEL_8;
  }

  v14 = [v11 isEqual:v12];

  v15 = defaultCopy;
  if ((v14 & 1) == 0)
  {
LABEL_8:
    v15 = v11;
    v16 = defaultCopy;
    goto LABEL_9;
  }

LABEL_10:
  if (alpha >= 1.0)
  {
    v17 = v15;
  }

  else
  {
    v17 = [v15 colorWithAlphaComponent:alpha];
  }

  v18 = v17;

  return v18;
}

- (CGAffineTransform)_lollipopTransformForSelectionRect:(SEL)rect view:(id)view
{
  viewCopy = view;
  v9 = a5;
  v10 = MEMORY[0x1E695EFD0];
  v11 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v11;
  *&retstr->tx = *(v10 + 32);
  memset(&v13[1], 0, sizeof(CGAffineTransform));
  if (viewCopy)
  {
    [viewCopy transform];
  }

  v13[0] = v13[1];
  if (!CGAffineTransformIsIdentity(v13))
  {
    v13[0] = v13[1];
    [(UITextSelectionDisplayInteraction *)self _transformRelativeToTextInputCoordinateSpace:v13 forView:v9];
  }

  return result;
}

- (void)_updateSelectionIfNeededResettingBlinkingAnimation:(id)animation
{
  v284 = *MEMORY[0x1E69E9840];
  animationCopy = animation;
  v5 = animationCopy;
  if (!self->_needsUpdate)
  {
    goto LABEL_152;
  }

  v254 = animationCopy;
  [(UITextSelectionDisplayInteraction *)self _selectionClipRectAt:1];
  x = v285.origin.x;
  y = v285.origin.y;
  width = v285.size.width;
  height = v285.size.height;
  IsNull = CGRectIsNull(v285);
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  textInputView = [WeakRetained textInputView];
  [textInputView _scaleFromLayerTransforms];
  dy = v12;

  _activeSelection = [(UITextSelectionDisplayInteraction *)self _activeSelection];
  selectedRange = [_activeSelection selectedRange];
  v13 = [(UITextSelectionDisplayInteraction *)self _visibleSelectionRectsForRange:?];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v277 = 0u;
  v278 = 0u;
  v279 = 0u;
  v280 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v277 objects:v283 count:16];
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = v14;
  v16 = *v278;
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v278 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v277 + 1) + 8 * i);
      v19 = [v18 mutableCopy];
      highlightView = self->_highlightView;
      [v18 rect];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = objc_loadWeakRetained(&self->_textInput);
      textInputView2 = [v29 textInputView];
      [(UITextSelectionHighlightView *)highlightView convertRect:textInputView2 fromView:v22, v24, v26, v28];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      if (!IsNull)
      {
        v286.origin.x = x;
        v286.origin.y = y;
        v286.size.width = width;
        v286.size.height = height;
        v301.origin.x = v32;
        v301.origin.y = v34;
        v301.size.width = v36;
        v301.size.height = v38;
        v287 = CGRectIntersection(v286, v301);
        v32 = v287.origin.x;
        v34 = v287.origin.y;
        v36 = v287.size.width;
        v38 = v287.size.height;
      }

      if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v34 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v36 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v38 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        v42 = objc_loadWeakRetained(&self->_textInput);
        textInputView3 = [v42 textInputView];

        [v19 setRect:textInputView3 fromView:{v32, v34, v36, v38}];
        _path = [v19 _path];
        if (_path)
        {
          if (textInputView3)
          {
            [textInputView3 transform];
            if (!CGAffineTransformIsIdentity(&v276))
            {
              memset(&v276, 0, sizeof(v276));
              [textInputView3 transform];
              goto LABEL_25;
            }
          }

          else
          {
            memset(&v276, 0, sizeof(v276));
            if (!CGAffineTransformIsIdentity(&v276))
            {
              memset(&v276, 0, sizeof(v276));
              memset(&v275, 0, sizeof(v275));
LABEL_25:
              CGAffineTransformInvert(&v276, &v275);
              v275 = v276;
              [_path applyTransform:&v275];
            }
          }
        }

        [orderedSet addObject:v19];
      }
    }

    v15 = [obj countByEnumeratingWithState:&v277 objects:v283 count:16];
  }

  while (v15);
LABEL_29:
  v45 = fmax(dy, 1.0);

  array = [orderedSet array];
  _isHighlightVisible = [(UITextSelectionDisplayInteraction *)self _isHighlightVisible];
  v48 = self->_highlightView;
  if (_isHighlightVisible)
  {
    [(UITextSelectionHighlightView *)v48 setHidden:0];
    [(UITextSelectionDisplayInteraction *)self _contentBoundsForPlacement:1];
    [(UITextSelectionHighlightView *)self->_highlightView setFrame:?];
    [(UITextSelectionHighlightView *)self->_highlightView setSelectionRects:array];
    [(UITextSelectionDisplayInteraction *)self _highlightAndRangeAdjustmentAlpha];
    [(UITextSelectionHighlightView *)self->_highlightView setAlpha:?];
    v49 = objc_loadWeakRetained(&self->_view);
    traitCollection = [v49 traitCollection];
    v51 = [traitCollection userInterfaceStyle] == 2;

    v52 = objc_loadWeakRetained(&self->_textInput);
    LODWORD(traitCollection) = _isBETextInput(v52);

    if (traitCollection)
    {
      v53 = objc_loadWeakRetained(&self->_textInput);
      extendedTraitsDelegate = [v53 performSelector:sel_extendedTextInputTraits];

      if (objc_opt_respondsToSelector())
      {
        selectionHighlightColor = [extendedTraitsDelegate performSelector:sel_selectionHighlightColor];
        goto LABEL_33;
      }

LABEL_43:

      goto LABEL_44;
    }

    if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
    {
      goto LABEL_44;
    }

    extendedTraitsDelegate = objc_loadWeakRetained(&self->_textInput);
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_43;
    }

    v57 = objc_loadWeakRetained(&self->_textInput);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_43;
    }

    v58 = objc_loadWeakRetained(&self->_textInput);
    v59 = [v58 conformsToProtocolCached:&unk_1F0139608];

    if (!v59)
    {
      goto LABEL_44;
    }

    v60 = objc_loadWeakRetained(&self->_textInput);
    extendedTraitsDelegate = [v60 extendedTraitsDelegate];

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_43;
    }

    selectionHighlightColor = [extendedTraitsDelegate selectionHighlightColor];
LABEL_33:
    v56 = selectionHighlightColor;

    if (!v56)
    {
LABEL_44:
      v61 = objc_loadWeakRetained(&self->_textInput);
      v62 = objc_opt_respondsToSelector();

      if ((v62 & 1) != 0 && (v63 = objc_loadWeakRetained(&self->_textInput), [v63 performSelector:sel_selectionHighlightColor], v64 = objc_claimAutoreleasedReturnValue(), v63, v64))
      {
        v65 = v64;
        v56 = v65;
      }

      else
      {
        v66 = dbl_18A679CF0[v51];
        v65 = +[UIColor selectionHighlightColor];
        v56 = [(UITextSelectionDisplayInteraction *)self _tintColorOrDefault:v65 alpha:v66];
      }
    }

    [(UITextSelectionHighlightView *)self->_highlightView setTintColor:v56];

    if (self->_concreteHighlightView)
    {
      v67 = objc_loadWeakRetained(&self->_textInput);
      v68 = objc_opt_respondsToSelector();

      v69 = 0.0;
      v70 = 0.0;
      if (v68)
      {
        v71 = objc_loadWeakRetained(&self->_textInput);
        [v71 selectionBorderWidth];
        v70 = v72;
      }

      [(_UITextSelectionHighlightView *)self->_concreteHighlightView _setSelectionBorderWidth:v70];
      v73 = objc_loadWeakRetained(&self->_textInput);
      v74 = objc_opt_respondsToSelector();

      if (v74)
      {
        v75 = objc_loadWeakRetained(&self->_textInput);
        [v75 selectionCornerRadius];
        v69 = v76;
      }

      [(_UITextSelectionHighlightView *)self->_concreteHighlightView _setSelectionCornerRadius:v69];
      v77 = objc_loadWeakRetained(&self->_textInput);
      v78 = objc_opt_respondsToSelector();

      v79 = 0.0;
      v80 = 0.0;
      v81 = 0.0;
      v82 = 0.0;
      if (v78)
      {
        v83 = objc_loadWeakRetained(&self->_textInput);
        [v83 selectionEdgeInsets];
        v82 = v84;
        v81 = v85;
        v80 = v86;
        v79 = v87;
      }

      [(_UITextSelectionHighlightView *)self->_concreteHighlightView _setSelectionEdgeInsets:v82, v81, v80, v79];
      v88 = +[UIColor clearColor];
      v89 = objc_loadWeakRetained(&self->_textInput);
      v90 = objc_opt_respondsToSelector();

      if (v90)
      {
        v91 = objc_loadWeakRetained(&self->_textInput);
        selectionBorderColor = [v91 selectionBorderColor];

        v88 = selectionBorderColor;
      }

      v93 = v88;

      [(_UITextSelectionHighlightView *)self->_concreteHighlightView _setSelectionBorderColor:v93];
    }

    [(UITextSelectionDisplayInteraction *)self _addPulseAnimationIfNeeded];
  }

  else
  {
    [(UITextSelectionHighlightView *)v48 setHidden:1];
    [(UITextSelectionDisplayInteraction *)self _removePulseAnimationIfNeeded];
  }

  v252 = 1.0 / v45;
  if (-[UITextSelectionDisplayInteraction _isRangeAdjustmentUIVisible](self, "_isRangeAdjustmentUIVisible") && [array count])
  {
    [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer setHidden:0];
    [(UITextSelectionDisplayInteraction *)self _contentBoundsForPlacement:0];
    [(UIView *)self->_rangeAdjustmentViewContainer setFrame:?];
    [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer setShapeScale:1.0 / v45];
    firstObject = [array firstObject];
    -[_UITextSelectionRangeAdjustmentContainerView setVertical:](self->_rangeAdjustmentViewContainer, "setVertical:", [firstObject isVertical]);

    [(UITextSelectionDisplayInteraction *)self _highlightAndRangeAdjustmentAlpha];
    [(UIView *)self->_rangeAdjustmentViewContainer setAlpha:?];
    v95 = [UITextSelectionRect startRectFromRects:array];
    v96 = [UITextSelectionRect endRectFromRects:array];
    rangeAdjustmentViewContainer = self->_rangeAdjustmentViewContainer;
    [v95 _startEdgeRect];
    [(UIView *)rangeAdjustmentViewContainer convertRect:self->_highlightView fromView:?];
    [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer setStartEdge:?];
    v98 = self->_rangeAdjustmentViewContainer;
    [v96 _endEdgeRect];
    [(UIView *)v98 convertRect:self->_highlightView fromView:?];
    [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer setEndEdge:?];
    [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer layoutSubviews];
    _hostViewAboveText = [(UITextSelectionDisplayInteraction *)self _hostViewAboveText];
    leadingLollipopView = [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer leadingLollipopView];
    _startCustomSelectionPath = [v95 _startCustomSelectionPath];
    v101 = [_startCustomSelectionPath bezierPathForHostView:_hostViewAboveText targetView:leadingLollipopView];
    [leadingLollipopView setCustomShape:v101];

    trailingLollipopView = [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer trailingLollipopView];
    _endCustomSelectionPath = [v96 _endCustomSelectionPath];
    v251 = _hostViewAboveText;
    v103 = [_endCustomSelectionPath bezierPathForHostView:_hostViewAboveText targetView:trailingLollipopView];
    [trailingLollipopView setCustomShape:v103];

    [(UITextSelectionDisplayInteraction *)self _lollipopTransformForSelectionRect:v95 view:leadingLollipopView];
    v276 = v274;
    v249 = leadingLollipopView;
    [leadingLollipopView setTransform:&v276];
    v250 = v96;
    [(UITextSelectionDisplayInteraction *)self _lollipopTransformForSelectionRect:v96 view:trailingLollipopView];
    v276 = v273;
    v247 = trailingLollipopView;
    [trailingLollipopView setTransform:&v276];
    v104 = objc_loadWeakRetained(&self->_textInput);
    LODWORD(v96) = _isBETextInput(v104);

    v105 = selectedRange;
    if (v96)
    {
      v106 = objc_loadWeakRetained(&self->_textInput);
      extendedTraitsDelegate2 = [v106 performSelector:sel_extendedTextInputTraits];

      if (objc_opt_respondsToSelector())
      {
        selectionHandleColor = [extendedTraitsDelegate2 performSelector:sel_selectionHandleColor];
        goto LABEL_65;
      }

LABEL_75:

      goto LABEL_76;
    }

    if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
    {
      extendedTraitsDelegate2 = objc_loadWeakRetained(&self->_textInput);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_75;
      }

      v111 = objc_loadWeakRetained(&self->_textInput);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        goto LABEL_75;
      }

      v112 = objc_loadWeakRetained(&self->_textInput);
      v113 = [v112 conformsToProtocolCached:&unk_1F0139608];

      if (v113)
      {
        v114 = objc_loadWeakRetained(&self->_textInput);
        extendedTraitsDelegate2 = [v114 extendedTraitsDelegate];

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_75;
        }

        selectionHandleColor = [extendedTraitsDelegate2 selectionHandleColor];
LABEL_65:
        v109 = selectionHandleColor;

        if (v109)
        {
          v110 = v109;
          goto LABEL_94;
        }
      }
    }

LABEL_76:
    v115 = objc_loadWeakRetained(&self->_textInput);
    v116 = objc_opt_respondsToSelector();

    if ((v116 & 1) == 0 || (v117 = objc_loadWeakRetained(&self->_textInput), [v117 performSelector:sel_selectionHandleColor], v118 = objc_claimAutoreleasedReturnValue(), v117, v119 = v118, v119, !v118))
    {
      v120 = objc_loadWeakRetained(&self->_textInput);
      isBETextInput = _isBETextInput(v120);

      if (isBETextInput)
      {
        v122 = objc_loadWeakRetained(&self->_textInput);
        extendedTraitsDelegate3 = [v122 performSelector:sel_extendedTextInputTraits];

        if (objc_opt_respondsToSelector())
        {
          selectionBarColor = [extendedTraitsDelegate3 performSelector:sel_selectionBarColor];
          goto LABEL_81;
        }

LABEL_90:

        goto LABEL_91;
      }

      if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
      {
        goto LABEL_91;
      }

      extendedTraitsDelegate3 = objc_loadWeakRetained(&self->_textInput);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_90;
      }

      v125 = objc_loadWeakRetained(&self->_textInput);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        goto LABEL_90;
      }

      v126 = objc_loadWeakRetained(&self->_textInput);
      v127 = [v126 conformsToProtocolCached:&unk_1F0139608];

      if (!v127)
      {
        goto LABEL_91;
      }

      v128 = objc_loadWeakRetained(&self->_textInput);
      extendedTraitsDelegate3 = [v128 extendedTraitsDelegate];

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_90;
      }

      selectionBarColor = [extendedTraitsDelegate3 selectionBarColor];
LABEL_81:
      v119 = selectionBarColor;

      if (!v119)
      {
LABEL_91:
        v129 = objc_loadWeakRetained(&self->_textInput);
        v130 = objc_opt_respondsToSelector();

        if ((v130 & 1) != 0 && (v131 = objc_loadWeakRetained(&self->_textInput), [v131 performSelector:sel_selectionBarColor], v132 = objc_claimAutoreleasedReturnValue(), v131, v132))
        {
          v110 = v132;
LABEL_94:
          v133 = v110;
          v119 = v110;
        }

        else
        {
          v133 = +[UIColor selectionGrabberColor];
          v119 = [(UITextSelectionDisplayInteraction *)self _tintColorOrDefault:v133];
        }
      }
    }

    v271 = 0u;
    v272 = 0u;
    v269 = 0u;
    v270 = 0u;
    selectionGrabbers = [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer selectionGrabbers];
    v135 = [selectionGrabbers countByEnumeratingWithState:&v269 objects:v282 count:16];
    if (v135)
    {
      v136 = v135;
      v137 = *v270;
      do
      {
        for (j = 0; j != v136; ++j)
        {
          if (*v270 != v137)
          {
            objc_enumerationMutation(selectionGrabbers);
          }

          [*(*(&v269 + 1) + 8 * j) setTintColor:v119];
        }

        v136 = [selectionGrabbers countByEnumeratingWithState:&v269 objects:v282 count:16];
      }

      while (v136);
    }

    if ([(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer areSelectionGrabbersConcreteImpl])
    {
      v245 = array;
      v139 = +[_UITextSelectionLollipopView _visualStyle];
      [v139 minimumStemLength];
      v141 = v140;

      v244 = v95;
      [v95 _startEdgeRect];
      v142 = CGRectGetHeight(v288);
      _enclosingScrollerIncludingSelf = [v251 _enclosingScrollerIncludingSelf];
      v144 = _enclosingScrollerIncludingSelf;
      if (_enclosingScrollerIncludingSelf)
      {
        v145 = _enclosingScrollerIncludingSelf;
      }

      else
      {
        v145 = v251;
      }

      v146 = v145;

      v267 = 0u;
      v268 = 0u;
      v265 = 0u;
      v266 = 0u;
      selectionGrabbers2 = [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer selectionGrabbers];
      v148 = [selectionGrabbers2 countByEnumeratingWithState:&v265 objects:v281 count:16];
      if (v148)
      {
        v149 = v148;
        v150 = *v266;
        dya = fmax(v141 - v142, 0.0) * -2.0;
        do
        {
          v151 = 0;
          do
          {
            if (*v266 != v150)
            {
              objc_enumerationMutation(selectionGrabbers2);
            }

            v152 = *(*(&v265 + 1) + 8 * v151);
            [v146 visibleBounds];
            if ((*&self->_textInputRespondsTo & 0x40) != 0)
            {
              v161 = objc_loadWeakRetained(&self->_textInput);
              [v161 unobscuredContentRect];
              v163 = v162;
              v165 = v164;
              v167 = v166;
              v169 = v168;

              v170 = objc_loadWeakRetained(&self->_textInput);
              textInputView4 = [v170 textInputView];
              [v146 convertRect:textInputView4 fromView:{v163, v165, v167, v169}];
              v157 = v172;
              v158 = v173;
              v159 = v174;
              v160 = v175;
            }

            else
            {
              v157 = v153;
              v158 = v154;
              v159 = v155;
              v160 = v156;
            }

            [v152 dotViewFrame];
            [v146 convertRect:v152 fromView:?];
            v177 = v176;
            v179 = v178;
            v181 = v180;
            v183 = v182;
            v184 = objc_loadWeakRetained(&self->_view);
            [v184 contentScaleFactor];
            v186 = UIRectIntegralWithScale(v177, v179, v181, v183, v185);
            v188 = v187;
            v190 = v189;
            v192 = v191;

            v289.origin.x = v186;
            v289.origin.y = v188;
            v289.size.width = v190;
            v289.size.height = v192;
            v290 = CGRectInset(v289, 0.0, dya);
            v193 = v290.origin.x;
            v194 = v290.origin.y;
            v195 = v290.size.width;
            v196 = v290.size.height;
            v290.origin.x = v157;
            v290.origin.y = v158;
            v290.size.width = v159;
            v290.size.height = v160;
            v302.origin.x = v193;
            v302.origin.y = v194;
            v302.size.width = v195;
            v302.size.height = v196;
            if (!CGRectContainsRect(v290, v302) && ((v291.origin.x = v157, v291.origin.y = v158, v291.size.width = v159, v291.size.height = v160, v303.origin.x = v193, v303.origin.y = v194, v303.size.width = v195, v303.size.height = v196, v292 = CGRectIntersection(v291, v303), v198 = v292.origin.x, v199 = v292.origin.y, v200 = v292.size.width, v201 = v292.size.height, CGRectGetHeight(v292) > 0.0) || (v293.origin.x = v198, v293.origin.y = v199, v293.size.width = v200, v293.size.height = v201, CGRectGetWidth(v293) > 0.0)) && ([v152 direction] == 2 || (v294.origin.x = v198, v294.origin.y = v199, v294.size.width = v200, v294.size.height = v201, MinY = CGRectGetMinY(v294), v295.origin.x = v193, v295.origin.y = v194, v295.size.width = v195, v295.size.height = v196, MinY == CGRectGetMinY(v295))))
            {
              if ([v152 direction] == 8)
              {
                v197 = 1;
              }

              else
              {
                v296.origin.x = v198;
                v296.origin.y = v199;
                v296.size.width = v200;
                v296.size.height = v201;
                MaxY = CGRectGetMaxY(v296);
                v297.origin.x = v193;
                v297.origin.y = v194;
                v297.size.width = v195;
                v297.size.height = v196;
                v197 = MaxY == CGRectGetMaxY(v297);
              }
            }

            else
            {
              v197 = 0;
            }

            [v152 setPortalsDotToContainerWindow:v197];
            ++v151;
          }

          while (v149 != v151);
          v203 = [selectionGrabbers2 countByEnumeratingWithState:&v265 objects:v281 count:16];
          v149 = v203;
        }

        while (v203);
      }

      v95 = v244;
      array = v245;
      v105 = selectedRange;
    }

    v5 = v254;
  }

  else
  {
    [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer setHidden:1];
    v5 = v254;
    v105 = selectedRange;
  }

  [(UITextSelectionDisplayInteraction *)self _caretRect];
  v205 = v204;
  v207 = v206;
  v209 = v208;
  v211 = v210;
  _cursorTintColor = [(UITextSelectionDisplayInteraction *)self _cursorTintColor];
  if (!IsNull)
  {
    [(UITextSelectionDisplayInteraction *)self _selectionClipRectAt:0];
    v304.origin.x = v205;
    v304.origin.y = v207;
    v304.size.width = v209;
    v304.size.height = v211;
    v299 = CGRectIntersection(v298, v304);
    v214 = v299.origin.x;
    v215 = v299.origin.y;
    v216 = v299.size.width;
    v217 = v299.size.height;
    if ((*&v299.origin.x & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v299.origin.y & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v299.size.width & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*&v299.size.height & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v213 = !CGRectIsEmpty(v299);
      goto LABEL_137;
    }

    [(UITextSelectionDisplayInteraction *)self _isCursorVisible];
    goto LABEL_143;
  }

  v213 = 1;
  v214 = v205;
  v215 = v207;
  v216 = v209;
  v217 = v211;
LABEL_137:
  if (![(UITextSelectionDisplayInteraction *)self _isCursorVisible]|| !v213)
  {
LABEL_143:
    [(UITextCursorView *)self->_cursorView setHidden:1];
    [(_UITextFloatingCursorSession *)self->_activeFloatingCursorSession _invalidate];
    activeFloatingCursorSession = self->_activeFloatingCursorSession;
    self->_activeFloatingCursorSession = 0;

    [(UITextSelectionDisplayInteraction *)self _updateDictationUI];
    [(UITextSelectionDisplayInteraction *)self _updateUnderlinesIfNeeded];
    goto LABEL_151;
  }

  [(UITextCursorView *)self->_cursorView anchorPoint];
  v218 = *MEMORY[0x1E695EFF8];
  v219 = *(MEMORY[0x1E695EFF8] + 8);
  v221 = v214 + v216 * v220;
  v223 = v215 + v217 * v222;
  if ((*&self->_delegateRespondsTo & 0x20) != 0)
  {
    dyb = *(MEMORY[0x1E695EFF8] + 8);
    v263 = *MEMORY[0x1E695EFF8];
    _internalDelegate = [(UITextSelectionDisplayInteraction *)self _internalDelegate];
    _selectedRange = [(UITextSelectionDisplayInteraction *)self _selectedRange];
    v229 = [_selectedRange end];
    [_internalDelegate _selectionViewManager:self convertPointToRenderSpace:v229 textPosition:{v221, v223}];
    v221 = v230;
    v223 = v231;

LABEL_145:
    v218 = v263;
    v219 = dyb;
  }

  else if ((*&self->_delegateRespondsTo & 0x10) != 0)
  {
    dyb = *(MEMORY[0x1E695EFF8] + 8);
    v263 = *MEMORY[0x1E695EFF8];
    _internalDelegate = [(UITextSelectionDisplayInteraction *)self _internalDelegate];
    _selectedRange = [(UITextSelectionDisplayInteraction *)self _selectedRange];
    [_internalDelegate _selectionViewManager:self convertPointToRenderSpace:_selectedRange textRange:{v221, v223}];
    v221 = v226;
    v223 = v227;
    goto LABEL_145;
  }

  [(UITextCursorView *)self->_cursorView setBounds:v218, v219, v216, v217];
  [(UITextCursorView *)self->_cursorView setCenter:v221, v223];
  [(UITextSelectionDisplayInteraction *)self _caretTransform];
  cursorView = self->_cursorView;
  v276 = v264;
  [(UITextCursorView *)cursorView setTransform:&v276];
  [(UITextCursorView *)self->_cursorView setHidden:0];
  [(UITextCursorView *)self->_cursorView setTintColor:_cursorTintColor];
  [(UITextSelectionDisplayInteraction *)self _cursorAlpha];
  [(UITextCursorView *)self->_cursorView setAlpha:?];
  [(UIStandardTextCursorView *)self->_concreteCursorView _setShapeScale:v252];
  if ([v5 BOOLValue])
  {
    [(UITextCursorView *)self->_cursorView resetBlinkAnimation];
  }

  if (_AXSZoomTouchEnabled())
  {
    [(UITextCursorView *)self->_cursorView bounds];
    UIAccessibilityZoomFocusChanged(UIAccessibilityZoomTypeInsertionPoint, v300, self->_cursorView);
  }

  [(UITextSelectionDisplayInteraction *)self _updateDictationUI];
  [(UITextSelectionDisplayInteraction *)self _updateUnderlinesIfNeeded];
  [(_UICursorAccessoryViewController *)self->_cursorAccessoryViewController setCursorRect:v205, v207, v209, v211];
  [(_UICursorAccessoryViewController *)self->_cursorAccessoryViewController setSelectedRange:v105];
  [(_UICursorAccessoryViewController *)self->_cursorAccessoryViewController setSelectionRects:array];
  [(_UICursorAccessoryViewController *)self->_cursorAccessoryViewController setAccessoryTintColor:_cursorTintColor];
LABEL_151:
  _isCursorAccessoryViewEnabled = [(UITextSelectionDisplayInteraction *)self _isCursorAccessoryViewEnabled];
  view = [(UIViewController *)self->_cursorAccessoryViewController view];
  [view setHidden:!_isCursorAccessoryViewEnabled];

  [(UITextSelectionDisplayInteraction *)self _contentBoundsForPlacement:0];
  v236 = v235;
  v238 = v237;
  v240 = v239;
  v242 = v241;
  view2 = [(UIViewController *)self->_cursorAccessoryViewController view];
  [view2 setFrame:{v236, v238, v240, v242}];

  self->_needsUpdate = 0;
LABEL_152:
}

- (void)setActivated:(BOOL)activated
{
  self->_activated = activated;
  if (activated)
  {
    [(UITextSelectionDisplayInteraction *)self _installManagedSubviewsIfNecessary];
    _activeSelection = [(UITextSelectionDisplayInteraction *)self _activeSelection];
    [_activeSelection selectionChanged];

    [(UITextSelectionDisplayInteraction *)self _setupDictationUIForActivation];
  }

  else
  {
    [(UITextSelectionDisplayInteraction *)self _resetDictationUIForDeactivation];
  }

  [(UITextSelectionDisplayInteraction *)self setNeedsSelectionUpdate];
}

- (void)_addInteractiveUnderlines:(id)underlines animated:(BOOL)animated
{
  animatedCopy = animated;
  underlinesCopy = underlines;
  _underlineView = [(UITextSelectionDisplayInteraction *)self _underlineView];
  [_underlineView addUnderlines:underlinesCopy animated:animatedCopy];
}

- (void)_removeInteractiveUnderlines:(id)underlines animated:(BOOL)animated
{
  animatedCopy = animated;
  underlinesCopy = underlines;
  _existingUnderlineView = [(UITextSelectionDisplayInteraction *)self _existingUnderlineView];
  [_existingUnderlineView removeUnderlines:underlinesCopy animated:animatedCopy];
}

- (void)_removeAllInteractiveUnderlinesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _existingUnderlineView = [(UITextSelectionDisplayInteraction *)self _existingUnderlineView];
  [_existingUnderlineView clearAllUnderlinesAnimated:animatedCopy];
}

- (id)_underlineRectsForRange:(id)range
{
  v36 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  v6 = [WeakRetained _underlineRectsByDocumentLineForSelectionRange:rangeCopy];

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  textInput = [(UITextSelectionDisplayInteraction *)self textInput];
  textInputView = [textInput textInputView];

  _proofreadingUnderlineView = [(UITextSelectionDisplayInteraction *)self _proofreadingUnderlineView];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v6;
  v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v31 + 1) + 8 * i);
        [v14 rect];
        [_proofreadingUnderlineView convertRect:textInputView fromView:?];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;
        [v14 baselineOffset];
        if (v23 == 0.0)
        {
          v24 = v22 * 0.75;
        }

        else
        {
          v24 = v23;
        }

        if (v14)
        {
          [v14 transform];
        }

        else
        {
          memset(v30, 0, sizeof(v30));
        }

        v25 = [_UITextUnderlineRect underlineRectWithRect:v30 offset:v16 transform:v18, v20, v22, v24];
        [v25 setAssociatedTextRange:rangeCopy];
        defaultUnderlineColor = [(UITextSelectionDisplayInteraction *)self defaultUnderlineColor];
        [v25 setUnderlineColor:defaultUnderlineColor];

        if (v25)
        {
          [v29 addObject:v25];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v11);
  }

  return v29;
}

- (void)_addPulseAnimationIfNeeded
{
  if ([(UITextSelectionDisplayInteraction *)self _isHighlightVisible])
  {
    highlightView = self->_highlightView;
    if (highlightView)
    {
      layer = [(UITextSelectionHighlightView *)highlightView layer];
      v4 = [layer animationForKey:@"pulseAnimation"];
      if (v4)
      {
        layer2 = v4;
      }

      else
      {
        _isDictationRunning = [(UITextSelectionDisplayInteraction *)self _isDictationRunning];

        if (!_isDictationRunning)
        {
          return;
        }

        layer = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
        [layer setFromValue:&unk_1EFE34C48];
        [layer setToValue:&unk_1EFE34C58];
        [layer setDuration:0.6];
        [layer setAutoreverses:1];
        LODWORD(v7) = 2139095040;
        [layer setRepeatCount:v7];
        v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
        [layer setTimingFunction:v8];

        layer2 = [(UITextSelectionHighlightView *)self->_highlightView layer];
        [layer2 addAnimation:layer forKey:@"pulseAnimation"];
      }
    }
  }
}

- (id)_underlineTextInRange:(id)range animated:(BOOL)animated preferredUUID:(id)d
{
  animatedCopy = animated;
  rangeCopy = range;
  dCopy = d;
  if (!self->_proofreadingUnderlines)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    proofreadingUnderlines = self->_proofreadingUnderlines;
    self->_proofreadingUnderlines = v10;
  }

  v12 = [(UITextSelectionDisplayInteraction *)self _underlineRectsForRange:rangeCopy];
  if (dCopy)
  {
    v13 = [(NSMutableDictionary *)self->_proofreadingUnderlines objectForKeyedSubscript:dCopy];
    v14 = [v12 isEqualToArray:v13];

    uUID = dCopy;
    if (v14)
    {
      goto LABEL_8;
    }

    [(UITextSelectionDisplayInteraction *)self _removeUnderlineWithIdentifier:uUID animated:0];
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
  }

  [(NSMutableDictionary *)self->_proofreadingUnderlines setObject:v12 forKey:uUID];
  _proofreadingUnderlineView = [(UITextSelectionDisplayInteraction *)self _proofreadingUnderlineView];
  [_proofreadingUnderlineView addUnderlines:v12 animated:animatedCopy];

LABEL_8:

  return uUID;
}

- (void)_removeUnderlineWithIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  identifierCopy = identifier;
  v6 = [(NSMutableDictionary *)self->_proofreadingUnderlines objectForKey:?];
  if (v6)
  {
    [(NSMutableDictionary *)self->_proofreadingUnderlines removeObjectForKey:identifierCopy];
    _proofreadingUnderlineView = [(UITextSelectionDisplayInteraction *)self _proofreadingUnderlineView];
    [_proofreadingUnderlineView removeUnderlines:v6 animated:animatedCopy];
  }

  if (![(NSMutableDictionary *)self->_proofreadingUnderlines count])
  {
    [(UITextSelectionDisplayInteraction *)self cleanUpProofreading];
  }
}

- (void)_removeAllProofreadingUnderlinesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_proofreadingUnderlines allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        _proofreadingUnderlineView = [(UITextSelectionDisplayInteraction *)self _proofreadingUnderlineView];
        [_proofreadingUnderlineView removeUnderlines:v10 animated:animatedCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)self->_proofreadingUnderlines removeAllObjects];
  [(UITextSelectionDisplayInteraction *)self cleanUpProofreading];
}

- (void)_updateAnimatedUnderlinesIfNeeded
{
  v22 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_proofreadingUnderlines count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    allKeys = [(NSMutableDictionary *)self->_proofreadingUnderlines allKeys];
    v4 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(allKeys);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [(NSMutableDictionary *)self->_proofreadingUnderlines objectForKey:v8];
          v10 = v9;
          if (v9)
          {
            firstObject = [v9 firstObject];
            associatedTextRange = [firstObject associatedTextRange];

            v13 = [(UITextSelectionDisplayInteraction *)self _underlineRectsForRange:associatedTextRange];
            v14 = v13;
            if (v13)
            {
              if (([v13 isEqual:v10] & 1) == 0)
              {
                _proofreadingUnderlineView = [(UITextSelectionDisplayInteraction *)self _proofreadingUnderlineView];
                [_proofreadingUnderlineView removeUnderlines:v10 animated:0];

                [(NSMutableDictionary *)self->_proofreadingUnderlines setObject:v14 forKey:v8];
                _proofreadingUnderlineView2 = [(UITextSelectionDisplayInteraction *)self _proofreadingUnderlineView];
                [_proofreadingUnderlineView2 addUnderlines:v14 animated:0];
              }
            }
          }
        }

        v5 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }
  }
}

- (void)cleanUpProofreading
{
  [(UIView *)self->_proofreadingUnderlineView removeFromSuperview];
  proofreadingUnderlineView = self->_proofreadingUnderlineView;
  self->_proofreadingUnderlineView = 0;
}

- (id)defaultUnderlineColor
{
  textInput = [(UITextSelectionDisplayInteraction *)self textInput];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    textInput2 = [(UITextSelectionDisplayInteraction *)self textInput];
    insertionPointColor = [textInput2 insertionPointColor];
    goto LABEL_5;
  }

  view = [(UITextSelectionDisplayInteraction *)self view];

  if (view)
  {
    textInput2 = [(UITextSelectionDisplayInteraction *)self view];
    insertionPointColor = [textInput2 tintColor];
LABEL_5:
    v8 = insertionPointColor;

    if (v8)
    {
      goto LABEL_7;
    }
  }

  v8 = +[UIColor insertionPointColor];
LABEL_7:

  return v8;
}

- (BOOL)_shouldHitTestSelectionGrabbers
{
  if ((self->_rangeViewMode & 0xFFFFFFFE) == 4)
  {
    return 0;
  }

  _selectedRange = [(UITextSelectionDisplayInteraction *)self _selectedRange];
  _isRanged = [_selectedRange _isRanged];

  return _isRanged;
}

- (id)_beginFloatingCursorSessionAtPoint:(CGPoint)point inContainer:(id)container
{
  y = point.y;
  x = point.x;
  containerCopy = container;
  activeFloatingCursorSession = self->_activeFloatingCursorSession;
  if (activeFloatingCursorSession)
  {
    [(_UITextFloatingCursorSession *)activeFloatingCursorSession _invalidate];
    v9 = self->_activeFloatingCursorSession;
    self->_activeFloatingCursorSession = 0;
  }

  v10 = [[_UITextFloatingCursorSession alloc] initWithCursorView:self->_concreteCursorView selectionManager:self];
  v11 = self->_activeFloatingCursorSession;
  self->_activeFloatingCursorSession = v10;

  [(_UITextFloatingCursorSession *)self->_activeFloatingCursorSession updateWithPoint:containerCopy inContainer:1 animated:x, y];
  v12 = self->_activeFloatingCursorSession;
  v13 = v12;

  return v12;
}

- (BOOL)_clientManagesSelectionViewSubviewOrder
{
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_loadWeakRetained(&self->_textInput);
    selectionContainerView = [v4 selectionContainerView];
    v6 = selectionContainerView != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_filterArchivedSubviews:(id)subviews
{
  subviewsCopy = subviews;
  _allManagedSubviews = [(UITextSelectionDisplayInteraction *)self _allManagedSubviews];
  if (_allManagedSubviews)
  {
    v5 = [MEMORY[0x1E695DFD8] setWithArray:_allManagedSubviews];
    [subviewsCopy minusSet:v5];
  }
}

- (BOOL)_isManagedSelectionSubview:(id)subview
{
  v15 = *MEMORY[0x1E69E9840];
  subviewCopy = subview;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _allManagedSubviews = [(UITextSelectionDisplayInteraction *)self _allManagedSubviews];
  v6 = [_allManagedSubviews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(_allManagedSubviews);
        }

        if ([*(*(&v10 + 1) + 8 * i) containsView:subviewCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [_allManagedSubviews countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (CGRect)_textRangeAdjustmentRectForEdge:(unint64_t)edge selectionRects:(id)rects
{
  if (edge)
  {
    [UITextSelectionRect endEdgeFromRects:rects];
  }

  else
  {
    [UITextSelectionRect startEdgeFromRects:rects];
  }

  rangeAdjustmentViewContainer = self->_rangeAdjustmentViewContainer;
  highlightView = self->_highlightView;

  [(UIView *)rangeAdjustmentViewContainer convertRect:highlightView fromView:?];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)_grabberDotRectForTextRangeAdjustmentEdgeRect:(CGRect)rect isVertical:(BOOL)vertical direction:(unint64_t)direction
{
  verticalCopy = vertical;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = [_UITextSelectionLollipopView _visualStyle:rect.origin.x];
  [v9 dotSizeWithEngagedEffect:0];
  v11 = v10;

  v12 = +[_UITextSelectionLollipopView _visualStyle];
  [v12 minimumStemLength];
  v14 = v13;

  v15 = -v14;
  v16 = v11 * 0.5;
  if (direction == 4)
  {
    v17 = -v14;
  }

  else
  {
    v17 = v14;
  }

  v18 = x + v17;
  if (direction != 2)
  {
    v15 = v14;
  }

  v19 = y + v15;
  v20 = x - v16;
  if (verticalCopy)
  {
    v21 = v19;
  }

  else
  {
    v21 = y - v16;
  }

  if (verticalCopy)
  {
    v22 = v20;
  }

  else
  {
    v22 = v18;
  }

  v23 = v11;
  v24 = v11;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v21;
  result.origin.x = v22;
  return result;
}

- (void)_didBeginRangeAdjustmentInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer areSelectionGrabbersConcreteImpl])
  {
    baseIsStart = [interactionCopy baseIsStart];
    rangeAdjustmentViewContainer = self->_rangeAdjustmentViewContainer;
    if (baseIsStart)
    {
      [(_UITextSelectionRangeAdjustmentContainerView *)rangeAdjustmentViewContainer trailingLollipopView];
    }

    else
    {
      [(_UITextSelectionRangeAdjustmentContainerView *)rangeAdjustmentViewContainer leadingLollipopView];
    }
    v7 = ;
    v8 = +[_UITextSelectionLollipopView _visualStyle];
    lollipopDotAnimationDurationOnEngagementChange = [v8 lollipopDotAnimationDurationOnEngagementChange];

    if (([v7 isEngaged] & 1) == 0)
    {
      if (lollipopDotAnimationDurationOnEngagementChange)
      {
        [lollipopDotAnimationDurationOnEngagementChange doubleValue];
        v11 = v10;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __73__UITextSelectionDisplayInteraction__didBeginRangeAdjustmentInteraction___block_invoke;
        v12[3] = &unk_1E70F3590;
        v13 = v7;
        [UIView animateWithDuration:v12 animations:0 completion:v11];
      }

      else
      {
        [v7 setEngaged:1];
      }
    }

    [(UITextSelectionDisplayInteraction *)self _hideDeleteButton];
  }
}

uint64_t __73__UITextSelectionDisplayInteraction__didBeginRangeAdjustmentInteraction___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEngaged:1];
  v2 = *(a1 + 32);

  return [v2 layoutSubviews];
}

- (void)_didEndRangeAdjustmentInteraction:(id)interaction
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer areSelectionGrabbersConcreteImpl])
  {
    v4 = +[_UITextSelectionLollipopView _visualStyle];
    lollipopDotAnimationDurationOnEngagementChange = [v4 lollipopDotAnimationDurationOnEngagementChange];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    selectionGrabbers = [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer selectionGrabbers];
    v7 = [selectionGrabbers countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(selectionGrabbers);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 isEngaged])
          {
            if (lollipopDotAnimationDurationOnEngagementChange)
            {
              [lollipopDotAnimationDurationOnEngagementChange doubleValue];
              v12[0] = MEMORY[0x1E69E9820];
              v12[1] = 3221225472;
              v12[2] = __71__UITextSelectionDisplayInteraction__didEndRangeAdjustmentInteraction___block_invoke;
              v12[3] = &unk_1E70F3590;
              v12[4] = v11;
              [UIView animateWithDuration:v12 animations:0 completion:?];
            }

            else
            {
              [v11 setEngaged:0];
            }
          }
        }

        v8 = [selectionGrabbers countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

uint64_t __71__UITextSelectionDisplayInteraction__didEndRangeAdjustmentInteraction___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setEngaged:0];
  v2 = *(a1 + 32);

  return [v2 layoutSubviews];
}

- (void)_geometryChanged:(id *)changed forAncestor:(id)ancestor
{
  if ((changed->var0 & 8) != 0)
  {
    [(UITextSelectionDisplayInteraction *)self setNeedsSelectionUpdate];
  }
}

- (UIEdgeInsets)_paddedEdgeInsetsForGrabberDirection:(unint64_t)direction isVertical:(BOOL)vertical scale:(double)scale
{
  verticalCopy = vertical;
  v8 = +[_UITextSelectionLollipopView _visualStyle];
  [v8 smallPaddedInset];
  v10 = v9;

  v11 = +[_UITextSelectionLollipopView _visualStyle];
  [v11 bigPaddedInset];
  v13 = v12;

  v14 = +[_UITextSelectionLollipopView _visualStyle];
  useGrabberDotsForSelection = [v14 useGrabberDotsForSelection];

  if (!verticalCopy)
  {
    v16 = v10 / scale;
    v17 = v13 / scale;
    if ((useGrabberDotsForSelection & 1) == 0)
    {
      if (direction == 4)
      {
        v19 = v16 + v17;
      }

      else
      {
        v19 = v10 / scale;
      }

      if (direction != 4)
      {
        v16 = v16 + v17;
      }

      goto LABEL_16;
    }

LABEL_10:
    v19 = v16;
LABEL_16:
    v18 = v17;
    goto LABEL_17;
  }

  v16 = v13 / scale;
  v17 = v10 / scale;
  if (useGrabberDotsForSelection)
  {
    goto LABEL_10;
  }

  if (direction == 2)
  {
    v18 = v17 + v16;
  }

  else
  {
    v18 = v10 / scale;
  }

  if (direction != 2)
  {
    v17 = v17 + v16;
  }

  v19 = v13 / scale;
LABEL_17:
  result.right = v16;
  result.bottom = v17;
  result.left = v19;
  result.top = v18;
  return result;
}

- (CGRect)textRangeAdjustmentRectForEdge:(unint64_t)edge
{
  selectionRects = [(UITextSelectionHighlightView *)self->_highlightView selectionRects];
  [(UITextSelectionDisplayInteraction *)self _textRangeAdjustmentRectForEdge:edge selectionRects:selectionRects];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)paddedTextRangeAdjustmentHitRegionForEdge:(unint64_t)edge precision:(unint64_t)precision
{
  if ([(UITextSelectionDisplayInteraction *)self _shouldHitTestSelectionGrabbers])
  {
    [(UITextSelectionDisplayInteraction *)self textRangeAdjustmentRectForEdge:edge];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(UITextSelectionDisplayInteraction *)self textRangeAdjustmentViewForEdge:edge];
    v16 = +[_UITextSelectionLollipopView _visualStyle];
    useGrabberDotsForSelection = [v16 useGrabberDotsForSelection];

    v18 = v14;
    v19 = v12;
    v20 = v10;
    v21 = v8;
    if (useGrabberDotsForSelection)
    {
      -[UITextSelectionDisplayInteraction _grabberDotRectForTextRangeAdjustmentEdgeRect:isVertical:direction:](self, "_grabberDotRectForTextRangeAdjustmentEdgeRect:isVertical:direction:", [v15 isVertical], objc_msgSend(v15, "direction"), v8, v10, v12, v14);
      v21 = v22;
      v20 = v23;
    }

    v44 = v19;
    v45 = v18;
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    textInputView = [WeakRetained textInputView];
    [textInputView _scaleFromLayerTransforms];
    v27 = v26;
    v29 = v28;

    v30 = 1.0;
    if (v27 < 1.0)
    {
      v27 = 1.0;
    }

    if (precision == 2)
    {
      if (v29 >= 1.0)
      {
        v30 = v29;
      }

      v31 = -6.0 / v30;
      v46.origin.x = v8;
      v46.origin.y = v10;
      v46.size.width = v12;
      v46.size.height = v14;
      v47 = CGRectInset(v46, -6.0 / v27, v31);
      x = v47.origin.x;
      y = v47.origin.y;
      width = v47.size.width;
      height = v47.size.height;
    }

    else
    {
      -[UITextSelectionDisplayInteraction _paddedEdgeInsetsForGrabberDirection:isVertical:scale:](self, "_paddedEdgeInsetsForGrabberDirection:isVertical:scale:", [v15 direction], objc_msgSend(v15, "isVertical"), v27);
      x = v21 + v36;
      y = v20 + v37;
      width = v44 - (v36 + v38);
      height = v45 - (v37 + v39);
    }
  }

  else
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  v40 = x;
  v41 = y;
  v42 = width;
  v43 = height;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (id)textRangeAdjustmentViewForEdge:(unint64_t)edge
{
  rangeAdjustmentViewContainer = self->_rangeAdjustmentViewContainer;
  if (edge)
  {
    [(_UITextSelectionRangeAdjustmentContainerView *)rangeAdjustmentViewContainer trailingLollipopView];
  }

  else
  {
    [(_UITextSelectionRangeAdjustmentContainerView *)rangeAdjustmentViewContainer leadingLollipopView];
  }
  v4 = ;

  return v4;
}

- (void)_setCursorFadedHiddenForFloatingCursor:(BOOL)cursor animated:(BOOL)animated
{
  if (self->_cursorFadedHiddenForFloatingCursor != cursor)
  {
    self->_cursorFadedHiddenForFloatingCursor = cursor;
    if (animated)
    {
      v6[5] = v4;
      v6[6] = v5;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __85__UITextSelectionDisplayInteraction__setCursorFadedHiddenForFloatingCursor_animated___block_invoke;
      v6[3] = &unk_1E70F3590;
      v6[4] = self;
      [UIView animateWithDuration:117440512 delay:v6 options:0 animations:0.15 completion:0.0];
    }

    else
    {

      [(UITextSelectionDisplayInteraction *)self layoutManagedSubviews];
    }
  }
}

- (id)obtainGhostCursorAssertionForReason:(id)reason
{
  reasonCopy = reason;
  _cursorAssertionController = [(UITextSelectionDisplayInteraction *)self _cursorAssertionController];
  v6 = [_cursorAssertionController nonBlinkingGhostAssertionWithReason:reasonCopy];

  return v6;
}

- (id)obtainBlinkSuppressionAssertionForReason:(id)reason
{
  reasonCopy = reason;
  _cursorAssertionController = [(UITextSelectionDisplayInteraction *)self _cursorAssertionController];
  v6 = [_cursorAssertionController nonBlinkingAssertionWithReason:reasonCopy];

  return v6;
}

- (BOOL)assertionActivationStateForType:(unint64_t)type
{
  v4 = 0;
  if (type <= 2)
  {
    if (type)
    {
      if (type == 1)
      {
        v5 = 21;
LABEL_11:
        v4 = *(&self->super.isa + v5);
        return v4 & 1;
      }

      return v4 & 1;
    }

    if ([(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer areSelectionGrabbersHidden])
    {
      v4 = 1;
      return v4 & 1;
    }

LABEL_10:
    v5 = 25;
    goto LABEL_11;
  }

  if (type == 3)
  {
    goto LABEL_10;
  }

  if (type == 4)
  {
    v5 = 26;
    goto LABEL_11;
  }

  return v4 & 1;
}

- (void)assertionActivationStateChangedToState:(BOOL)state forType:(unint64_t)type
{
  if (type > 2)
  {
    if (type == 3)
    {
      self->_shouldDisplayShimmerHighlights = state;
      [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer setSelectionGrabbersHidden:?];

      [(UITextSelectionDisplayInteraction *)self _updateHighlightViewWithShimmerState];
    }

    else if (type == 4)
    {
      self->_selectionUIHiddenForAssertion = state;
      [(UITextSelectionDisplayInteraction *)self setNeedsSelectionUpdate];
      if (self->_shouldAnimateSelectionUIHiddenAssertionState)
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __84__UITextSelectionDisplayInteraction_assertionActivationStateChangedToState_forType___block_invoke;
        v6[3] = &unk_1E70F3590;
        v6[4] = self;
        [UIView animateWithDuration:4 delay:v6 options:0 animations:0.15 completion:0.0];
      }
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      self->_cursorAccessoryViewHidden = state;

      [(UITextSelectionDisplayInteraction *)self setNeedsSelectionUpdate];
    }
  }

  else
  {
    rangeAdjustmentViewContainer = self->_rangeAdjustmentViewContainer;

    [(_UITextSelectionRangeAdjustmentContainerView *)rangeAdjustmentViewContainer setSelectionGrabbersHidden:state];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)textSelectionMenuSourceRect
{
  x = self->_textSelectionMenuSourceRect.origin.x;
  y = self->_textSelectionMenuSourceRect.origin.y;
  width = self->_textSelectionMenuSourceRect.size.width;
  height = self->_textSelectionMenuSourceRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)set_dictationBlinkSuppressionAssertion:(uint64_t)assertion
{
  if (assertion)
  {
    objc_storeStrong((assertion + 256), a2);
  }
}

- (void)setCursorBlinks:(BOOL)blinks
{
  blinksCopy = blinks;
  cursorView = [(UITextSelectionDisplayInteraction *)self cursorView];
  [cursorView setBlinking:blinksCopy];
}

- (void)setGhostAppearance:(BOOL)appearance
{
  appearanceCopy = appearance;
  _cursorView = [(UITextSelectionDisplayInteraction *)self _cursorView];
  [_cursorView setGhostEffectEnabled:appearanceCopy];
}

- (void)clearInputModeCursorAssertion
{
  [(UITextCursorAssertion *)self->_showInputModesCursorAssertion invalidate];
  showInputModesCursorAssertion = self->_showInputModesCursorAssertion;
  self->_showInputModesCursorAssertion = 0;
}

- (void)clearDeleteButtonCursorAssertion
{
  [(UITextCursorAssertion *)self->_showDeleteButtonCursorAssertion invalidate];
  showDeleteButtonCursorAssertion = self->_showDeleteButtonCursorAssertion;
  self->_showDeleteButtonCursorAssertion = 0;
}

- (id)inputModeForDictationLanguage:(id)language
{
  v25 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 keyboardLanguageForDictationLanguage:languageCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = languageCopy;
  }

  v8 = v7;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = +[UIKeyboardInputModeController sharedInputModeController];
  activeInputModes = [v9 activeInputModes];

  v11 = [activeInputModes countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v21;
LABEL_6:
    v15 = 0;
    v16 = v13;
    while (1)
    {
      if (*v21 != v14)
      {
        objc_enumerationMutation(activeInputModes);
      }

      v13 = *(*(&v20 + 1) + 8 * v15);

      languageWithRegion = [v13 languageWithRegion];
      v18 = [v8 isEqualToString:languageWithRegion];

      if (v18)
      {
        break;
      }

      ++v15;
      v16 = v13;
      if (v12 == v15)
      {
        v12 = [activeInputModes countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v12)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v13 = 0;
  }

  return v13;
}

- (void)setActiveIndicators:(unint64_t)indicators animationStyle:(int64_t)style
{
  indicatorsCopy = indicators;
  selfCopy = self;
  v87 = *MEMORY[0x1E69E9840];
  if ((indicators & 4) != 0 || self->_activeIndicators != indicators)
  {
    self->_activeIndicators = indicators;
    v72 = objc_opt_new();
    if ((indicatorsCopy & 8) != 0)
    {
      LODWORD(v8) = style == 1;
      if ((indicatorsCopy & 4) == 0)
      {
        v14 = objc_alloc_init(_UIDictationCursorAccessory);
        [(_UICursorAccessory *)v14 setIdentifier:@"dic"];
        [(_UICursorAccessory *)v14 setStyle:1];
        [(_UICursorAccessory *)v14 setInteractive:1];
        [v72 addObject:v14];
      }

      if ((indicatorsCopy & 0x10) != 0)
      {
        if (+[UIDictationUtilities shouldAddDeleteMenuElement])
        {
          v15 = objc_alloc_init(_UIDeleteCursorAccessory);
          [(_UICursorAccessory *)v15 setIdentifier:@"del"];
          [(_UICursorAccessory *)v15 setStyle:1];
          [(_UICursorAccessory *)v15 setInteractive:1];
          if ((indicatorsCopy & 4) != 0)
          {
            [(_UICursorAccessory *)v15 setStyle:2];
          }

          [v72 addObject:v15];
        }

        else
        {
          [(UITextSelectionDisplayInteraction *)selfCopy clearDeleteButtonCursorAssertion];
        }
      }

      v23 = +[UIKeyboardImpl activeInstance];
      activeDictationLanguage = [v23 activeDictationLanguage];

      if ((indicatorsCopy & 4) != 0)
      {
        v31 = activeDictationLanguage;
        v67 = style == 1;
        styleCopy = style;
        v83 = 0u;
        v84 = 0u;
        v82 = 0u;
        v81 = 0u;
        v32 = +[UIKeyboardInputModeController sharedInputModeController];
        enabledDictationLanguages = [v32 enabledDictationLanguages];

        obja = enabledDictationLanguages;
        v34 = [enabledDictationLanguages countByEnumeratingWithState:&v81 objects:v86 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v82;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v82 != v36)
              {
                objc_enumerationMutation(obja);
              }

              v38 = *(*(&v81 + 1) + 8 * i);
              v39 = [(UITextSelectionDisplayInteraction *)selfCopy inputModeForDictationLanguage:v38];
              v40 = selfCopy;
              v41 = objc_alloc_init(_UIInputModeCursorAccessory);
              identifier = [v39 identifier];
              [(_UIInputModeCursorAccessory *)v41 setInputModeIdentifier:identifier];

              [(_UIInputModeCursorAccessory *)v41 setDictationLanguage:v38];
              -[_UICursorAccessory setStyle:](v41, "setStyle:", [v38 isEqualToString:v31]);
              [(_UICursorAccessory *)v41 setInteractive:1];
              [(_UICursorAccessory *)v41 setLarge:1];
              [v72 addObject:v41];

              selfCopy = v40;
            }

            v35 = [obja countByEnumeratingWithState:&v81 objects:v86 count:16];
          }

          while (v35);
        }

        LODWORD(v8) = v67;
        style = styleCopy;
        activeDictationLanguage = v31;
      }

      else
      {
        v25 = +[UIKeyboardInputModeController sharedInputModeController];
        enabledDictationLanguages2 = [v25 enabledDictationLanguages];
        v27 = [enabledDictationLanguages2 count];

        if (style == 1 && v27 >= 2)
        {
          v28 = objc_alloc_init(_UIInputModeCursorAccessory);
          v29 = [(UITextSelectionDisplayInteraction *)selfCopy inputModeForDictationLanguage:activeDictationLanguage];
          identifier2 = [v29 identifier];
          [(_UIInputModeCursorAccessory *)v28 setInputModeIdentifier:identifier2];

          [(_UIInputModeCursorAccessory *)v28 setDictationLanguage:activeDictationLanguage];
          [(_UICursorAccessory *)v28 setStyle:1];
          [(_UICursorAccessory *)v28 setInteractive:1];
          [v72 addObject:v28];

          LODWORD(v8) = 1;
        }
      }
    }

    else
    {
      if ((indicatorsCopy & 0x20) != 0)
      {
        v7 = objc_alloc_init(_UIModifierKeyCursorAccessory);
        [(_UIModifierKeyCursorAccessory *)v7 setModifierType:3];
        [(_UICursorAccessory *)v7 setStyle:2];
        [v72 addObject:v7];
      }

      v8 = (indicatorsCopy >> 1) & 1;
      if ((indicatorsCopy & 2) != 0)
      {
        v9 = objc_alloc_init(_UIInputModeCursorAccessory);
        v10 = v9;
        if ((indicatorsCopy & 4) != 0)
        {
          v66 = (indicatorsCopy >> 1) & 1;
          styleCopy2 = style;
          obj = selfCopy;
          v64 = v9;
          v65 = indicatorsCopy;
          if ((indicatorsCopy & 0x40) != 0)
          {
            v43 = +[UIInputSwitcher sharedInstance];
            selectedInputMode = [v43 selectedInputMode];

            v19 = +[UIInputSwitcher sharedInstance];
            availableInputModes = [v19 availableInputModes];
          }

          else
          {
            v16 = +[UIKeyboardInputModeController sharedInputModeController];
            currentInputMode = [v16 currentInputMode];
            selectedInputMode = [currentInputMode identifier];

            v19 = +[UIKeyboardInputModeController sharedInputModeController];
            activeInputModeIdentifiers = [v19 activeInputModeIdentifiers];
            v21 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_522];
            availableInputModes = [activeInputModeIdentifiers filteredArrayUsingPredicate:v21];
          }

          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v44 = availableInputModes;
          v45 = [v44 countByEnumeratingWithState:&v77 objects:v85 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v78;
            do
            {
              for (j = 0; j != v46; ++j)
              {
                if (*v78 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v77 + 1) + 8 * j);
                v50 = objc_alloc_init(_UIInputModeCursorAccessory);
                v51 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v49];
                identifier3 = [v51 identifier];
                [(_UIInputModeCursorAccessory *)v50 setInputModeIdentifier:identifier3];

                -[_UICursorAccessory setStyle:](v50, "setStyle:", [v49 isEqual:selectedInputMode]);
                [(_UICursorAccessory *)v50 setInteractive:1];
                [(_UICursorAccessory *)v50 setLarge:1];
                [v72 addObject:v50];
              }

              v46 = [v44 countByEnumeratingWithState:&v77 objects:v85 count:16];
            }

            while (v46);
          }

          style = styleCopy2;
          selfCopy = obj;
          LOBYTE(indicatorsCopy) = v65;
          LODWORD(v8) = v66;
          v10 = v64;
        }

        else
        {
          v11 = UIKeyboardGetCurrentInputMode();
          v12 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v11];

          identifier4 = [v12 identifier];
          [(_UIInputModeCursorAccessory *)v10 setInputModeIdentifier:identifier4];

          [(_UICursorAccessory *)v10 setStyle:1];
          [(_UICursorAccessory *)v10 setInteractive:1];
          [v72 addObject:v10];
        }
      }

      if ((indicatorsCopy & 5) != 1)
      {
LABEL_44:
        textInput = [(UITextSelectionDisplayInteraction *)selfCopy textInput];
        if (objc_opt_respondsToSelector())
        {
          _systemCursorAccessoriesDisabled = [textInput _systemCursorAccessoriesDisabled];
        }

        else
        {
          _systemCursorAccessoriesDisabled = 0;
        }

        v55 = [(UITextSelectionDisplayInteraction *)selfCopy ghostAppearance]| _systemCursorAccessoriesDisabled;
        if (v8)
        {
          interactionAssistant = [textInput interactionAssistant];
          _editMenuAssistant = [interactionAssistant _editMenuAssistant];

          [_editMenuAssistant _hideSelectionCommandsWithReason:0];
        }

        if (v55)
        {
          goto LABEL_59;
        }

        if ([v72 count])
        {
          _isCursorAccessoryViewEnabled = [(UITextSelectionDisplayInteraction *)selfCopy _isCursorAccessoryViewEnabled];
          _cursorAccessoryViewController = [(UITextSelectionDisplayInteraction *)selfCopy _cursorAccessoryViewController];
          _cursorAccessoryViewController2 = _cursorAccessoryViewController;
          if (_isCursorAccessoryViewEnabled)
          {
            v61 = 1;
            [_cursorAccessoryViewController setAccessories:v72 animated:1];
            v62 = 0;
LABEL_55:
            [_cursorAccessoryViewController2 setTouchFallbackEnabled:v8 & v61];
            if (style == 2)
            {
              v63 = 2;
            }

            else
            {
              v63 = style == 1;
            }

            [_cursorAccessoryViewController2 setVisible:v61 animationStyle:v63 completion:v62];

LABEL_59:
            return;
          }
        }

        else
        {
          _cursorAccessoryViewController2 = [(UITextSelectionDisplayInteraction *)selfCopy _cursorAccessoryViewController];
        }

        objc_initWeak(&location, _cursorAccessoryViewController2);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __84__UITextSelectionDisplayInteraction_Assertions__setActiveIndicators_animationStyle___block_invoke_2;
        aBlock[3] = &unk_1E70F2F80;
        objc_copyWeak(&v75, &location);
        v74 = v72;
        v62 = _Block_copy(aBlock);

        objc_destroyWeak(&v75);
        objc_destroyWeak(&location);
        v61 = 0;
        goto LABEL_55;
      }

      activeDictationLanguage = objc_alloc_init(_UIModifierKeyCursorAccessory);
      [(_UIModifierKeyCursorAccessory *)activeDictationLanguage setModifierType:2];
      [(_UICursorAccessory *)activeDictationLanguage setStyle:1];
      [(_UICursorAccessory *)activeDictationLanguage setInteractive:1];
      [v72 addObject:activeDictationLanguage];
    }

    goto LABEL_44;
  }
}

uint64_t __84__UITextSelectionDisplayInteraction_Assertions__setActiveIndicators_animationStyle___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[UIKeyboardInputModeController sharedInputModeController];
  v4 = [v3 inputModeWithIdentifier:v2];

  if ([v4 isEmojiInputMode])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 primaryLanguage];
    if (UIKeyboardInputModeIsNonLinguistic(v6))
    {
      v5 = 0;
    }

    else
    {
      v5 = [v4 isExtensionInputMode] ^ 1;
    }
  }

  return v5;
}

void __84__UITextSelectionDisplayInteraction_Assertions__setActiveIndicators_animationStyle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained isVisible];

  if ((v3 & 1) == 0)
  {
    v4 = objc_loadWeakRetained((a1 + 40));
    [v4 setAccessories:*(a1 + 32) animated:0];
  }
}

- (void)_cursorAccessoryViewController:(id)controller didActivateCursorAccessory:(id)accessory
{
  controllerCopy = controller;
  accessoryCopy = accessory;
  _inputModeCursorAccessory = [accessoryCopy _inputModeCursorAccessory];
  v9 = _inputModeCursorAccessory;
  if (_inputModeCursorAccessory)
  {
    dictationLanguage = [_inputModeCursorAccessory dictationLanguage];

    showInputModesCursorAssertion = self->_showInputModesCursorAssertion;
    if (dictationLanguage)
    {
      if (showInputModesCursorAssertion)
      {
        v12 = +[UIKeyboardImpl activeInstance];
        activeDictationLanguage = [v12 activeDictationLanguage];

        dictationLanguage2 = [v9 dictationLanguage];
        v15 = [dictationLanguage2 isEqualToString:activeDictationLanguage];

        if ((v15 & 1) == 0)
        {
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          objc_initWeak(&location, defaultCenter);

          v51 = 0;
          v52 = &v51;
          v53 = 0x3032000000;
          v54 = __Block_byref_object_copy__179;
          v55 = __Block_byref_object_dispose__179;
          v56 = 0;
          v17 = objc_loadWeakRetained(&location);
          mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
          v44 = MEMORY[0x1E69E9820];
          v45 = 3221225472;
          v46 = __107__UITextSelectionDisplayInteraction_Assertions___cursorAccessoryViewController_didActivateCursorAccessory___block_invoke;
          v47 = &unk_1E7116C18;
          v48 = v9;
          objc_copyWeak(&v50, &location);
          v49 = &v51;
          v19 = [v17 addObserverForName:@"UIDictationControllerDictationDidFinish" object:0 queue:mainQueue usingBlock:&v44];
          v20 = v52[5];
          v52[5] = v19;

          if ([UIDictationController isRunning:v44])
          {
            v21 = +[UIDictationView sharedInstance];
            [v21 setSwitchingLanguage:1];

            v22 = +[UIDictationController activeInstance];
            [v22 setReasonType:28];

            v23 = +[UIDictationController activeInstance];
            [v23 cancelDictation];
          }

          _Block_object_dispose(&v51, 8);

          objc_destroyWeak(&v50);
          objc_destroyWeak(&location);
        }

        [(UITextSelectionDisplayInteraction *)self clearInputModeCursorAssertion];
      }

      else
      {
        activeDictationLanguage = [(UITextSelectionDisplayInteraction *)self _cursorAssertionController];
        v28 = [activeDictationLanguage inputModeSelectorAssertionWithReason:@"Show input modes" userInfo:MEMORY[0x1E695E0F8]];
        v29 = self->_showInputModesCursorAssertion;
        self->_showInputModesCursorAssertion = v28;
      }
    }

    else
    {
      if (showInputModesCursorAssertion)
      {
        v24 = +[UIKeyboardInputModeController sharedInputModeController];
        inputModeIdentifier = [v9 inputModeIdentifier];
        v26 = [v24 inputModeWithIdentifier:inputModeIdentifier];

        v27 = +[UIKeyboardImpl sharedInstance];
        [v27 setKeyboardInputMode:v26 userInitiated:1];

        [(UITextSelectionDisplayInteraction *)self clearInputModeCursorAssertion];
        goto LABEL_14;
      }

      _cursorAssertionController = [(UITextSelectionDisplayInteraction *)self _cursorAssertionController];
      v31 = [_cursorAssertionController inputModeSelectorAssertionWithReason:@"Show input modes" userInfo:MEMORY[0x1E695E0F8]];
      v32 = self->_showInputModesCursorAssertion;
      self->_showInputModesCursorAssertion = v31;

      activeDictationLanguage = +[UIKeyboardImpl sharedInstance];
      inputModeIndicatorController = [activeDictationLanguage inputModeIndicatorController];
      [inputModeIndicatorController inputModeSelectorDidOpen];
    }
  }

LABEL_14:
  identifier = [accessoryCopy identifier];

  if (identifier == @"dic")
  {
    v35 = +[UIDictationController activeInstance];
    [v35 setReasonType:29];

    v36 = +[UIDictationController activeInstance];
    [v36 stopDictation];

    [(UITextSelectionDisplayInteraction *)self clearInputModeCursorAssertion];
  }

  identifier2 = [accessoryCopy identifier];

  if (identifier2 == @"del")
  {
    v38 = +[UIKeyboardImpl activeInstance];
    inputDelegateManager = [v38 inputDelegateManager];
    [inputDelegateManager deleteBackward];

    v40 = +[UIKeyboardImpl activeInstance];
    [v40 dismissDictationMenu];

    [(UITextSelectionDisplayInteraction *)self clearDeleteButtonCursorAssertion];
  }

  _modifierKeyCursorAccessory = [accessoryCopy _modifierKeyCursorAccessory];
  modifierType = [_modifierKeyCursorAccessory modifierType];

  if (modifierType == 2)
  {
    v43 = +[UIKeyboardImpl activeInstance];
    [v43 _resetCapsLock];
  }
}

void __107__UITextSelectionDisplayInteraction_Assertions___cursorAccessoryViewController_didActivateCursorAccessory___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__UITextSelectionDisplayInteraction_Assertions___cursorAccessoryViewController_didActivateCursorAccessory___block_invoke_2;
  block[3] = &unk_1E70F3590;
  v5 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x1E69E96A0], block);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained removeObserver:*(*(*(a1 + 40) + 8) + 40)];
}

void __107__UITextSelectionDisplayInteraction_Assertions___cursorAccessoryViewController_didActivateCursorAccessory___block_invoke_2(uint64_t a1)
{
  v2 = +[UIDictationController sharedInstance];
  v3 = [*(a1 + 32) dictationLanguage];
  v4 = [UIDictationInputModeOptions dictationInputModeOptionsWithInvocationSource:@"UIDictationInputModeInvocationSourceDictationPopUpUILanguageSwitcherIcon"];
  [v2 switchToDictationLanguage:v3 inputOptions:v4];

  v5 = +[UIDictationView sharedInstance];
  [v5 setSwitchingLanguage:0];
}

@end