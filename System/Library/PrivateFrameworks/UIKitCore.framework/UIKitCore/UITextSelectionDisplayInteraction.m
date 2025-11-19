@interface UITextSelectionDisplayInteraction
- (BOOL)_clientManagesSelectionViewSubviewOrder;
- (BOOL)_isCursorAccessoryViewEnabled;
- (BOOL)_isCursorAccessoryViewVisible;
- (BOOL)_isCursorVisible;
- (BOOL)_isHighlightVisible;
- (BOOL)_isManagedSelectionSubview:(id)a3;
- (BOOL)_isRangeAdjustmentUIVisible;
- (BOOL)_shouldHitTestSelectionGrabbers;
- (BOOL)assertionActivationStateForType:(unint64_t)a3;
- (BOOL)cursorBlinks;
- (BOOL)ghostAppearance;
- (CGAffineTransform)_caretTransform;
- (CGAffineTransform)_lollipopTransformForSelectionRect:(SEL)a3 view:(id)a4;
- (CGAffineTransform)_transformRelativeToTextInputCoordinateSpace:(SEL)a3 forView:(CGAffineTransform *)a4;
- (CGRect)_caretRect;
- (CGRect)_caretRectAtStartOfLine;
- (CGRect)_caretRectForDictationTrailingGlowView;
- (CGRect)_caretRectForPosition:(id)a3;
- (CGRect)_contentBoundsForPlacement:(int64_t)a3;
- (CGRect)_grabberDotRectForTextRangeAdjustmentEdgeRect:(CGRect)a3 isVertical:(BOOL)a4 direction:(unint64_t)a5;
- (CGRect)_selectionClipRectAt:(int64_t)a3;
- (CGRect)_textInputRectInSelectionViewCoordinateSpace:(CGRect)a3;
- (CGRect)_textRangeAdjustmentRectForEdge:(unint64_t)a3 selectionRects:(id)a4;
- (CGRect)paddedTextRangeAdjustmentHitRegionForEdge:(unint64_t)a3 precision:(unint64_t)a4;
- (CGRect)textRangeAdjustmentRectForEdge:(unint64_t)a3;
- (CGRect)textSelectionMenuSourceRect;
- (NSArray)handleViews;
- (UIColor)_cursorTintColor;
- (UIEdgeInsets)_paddedEdgeInsetsForGrabberDirection:(unint64_t)a3 isVertical:(BOOL)a4 scale:(double)a5;
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
- (id)_beginFloatingCursorSessionAtPoint:(CGPoint)a3 inContainer:(id)a4;
- (id)_hostViewAboveText;
- (id)_hostViewBelowText;
- (id)_initWithTextInput:(id)a3 delegate:(id)a4 activated:(BOOL)a5;
- (id)_internalDelegate;
- (id)_managedSubviewsAboveText;
- (id)_managedSubviewsBelowText;
- (id)_managedViewForType:(int64_t)a3;
- (id)_proofreadingUnderlineView;
- (id)_selectedRange;
- (id)_tintColorOrDefault:(id)a3 alpha:(double)a4;
- (id)_underlineRectsForRange:(id)a3;
- (id)_underlineTextInRange:(id)a3 animated:(BOOL)a4 preferredUUID:(id)a5;
- (id)_visibleSelectionRectsForRange:(id)a3;
- (id)defaultUnderlineColor;
- (id)delegate;
- (id)inputModeForDictationLanguage:(id)a3;
- (id)obtainBlinkSuppressionAssertionForReason:(id)a3;
- (id)obtainGhostCursorAssertionForReason:(id)a3;
- (id)textInput;
- (id)textRangeAdjustmentViewForEdge:(unint64_t)a3;
- (void)_addInteractiveUnderlines:(id)a3 animated:(BOOL)a4;
- (void)_addPulseAnimationIfNeeded;
- (void)_animateDeleteButtonVisible:(BOOL)a3;
- (void)_applyDeleteHiddenState;
- (void)_cursorAccessoryViewController:(id)a3 didActivateCursorAccessory:(id)a4;
- (void)_dictationDidBeginNotification:(id)a3;
- (void)_dictationDidFinishNotification:(id)a3;
- (void)_dictationDidPauseNotification:(id)a3;
- (void)_dictationDidResumeNotification:(id)a3;
- (void)_dictationWillInsertHypothesisNotification:(id)a3;
- (void)_didBeginRangeAdjustmentInteraction:(id)a3;
- (void)_didEndRangeAdjustmentInteraction:(id)a3;
- (void)_enableDictationPortalViews;
- (void)_filterArchivedSubviews:(id)a3;
- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4;
- (void)_hideDeleteButton;
- (void)_initializeDictationSupport;
- (void)_initializeManagedDictationViewsIfNecessary;
- (void)_installManagedSubviewsIfNecessary;
- (void)_layoutDeleteButton;
- (void)_layoutManagedSubviewsResettingBlinkingAnimation:(BOOL)a3;
- (void)_removeAllInteractiveUnderlinesAnimated:(BOOL)a3;
- (void)_removeAllProofreadingUnderlinesAnimated:(BOOL)a3;
- (void)_removeDeleteButton;
- (void)_removeInteractiveUnderlines:(id)a3 animated:(BOOL)a4;
- (void)_removeManagedSubviews;
- (void)_removePulseAnimationIfNeeded;
- (void)_removeUnderlineWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)_resetDictationAnimations;
- (void)_resetDictationPortalViews;
- (void)_resetDictationUIForDeactivation;
- (void)_setCursorFadedHiddenForFloatingCursor:(BOOL)a3 animated:(BOOL)a4;
- (void)_setupDictationUIForActivation;
- (void)_showDeleteButton;
- (void)_startDictationAnimations;
- (void)_trackingViewportDidLayout:(id)a3;
- (void)_updateAccessibilityNonBlinkingAssertion;
- (void)_updateAnimatedUnderlinesIfNeeded;
- (void)_updateDelegateConformance;
- (void)_updateDictationUI;
- (void)_updateHighlightViewWithShimmerState;
- (void)_updateSelectionIfNeeded;
- (void)_updateSelectionIfNeededResettingBlinkingAnimation:(id)a3;
- (void)_updateTextInputConformance;
- (void)_updateUnderlinesIfNeeded;
- (void)_updateViewConformance;
- (void)_updateVoiceControlEnablementState;
- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4;
- (void)cleanUpProofreading;
- (void)clearDeleteButtonCursorAssertion;
- (void)clearInputModeCursorAssertion;
- (void)dealloc;
- (void)didMoveToView:(id)a3;
- (void)setActivated:(BOOL)activated;
- (void)setActiveIndicators:(unint64_t)a3 animationStyle:(int64_t)a4;
- (void)setCursorBlinks:(BOOL)a3;
- (void)setCursorView:(UIView *)cursorView;
- (void)setGhostAppearance:(BOOL)a3;
- (void)setHandleViews:(NSArray *)handleViews;
- (void)setHighlightView:(UIView *)highlightView;
- (void)setNeedsSelectionUpdate;
- (void)set_dictationBlinkSuppressionAssertion:(uint64_t)a1;
- (void)willMoveToView:(id)a3;
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:self selector:sel__dictationDidBeginNotification_ name:@"UIKeyboardDidBeginDictationNotification" object:0];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:self selector:sel__dictationDidFinishNotification_ name:@"UIDictationControllerDictationDidFinish" object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__dictationDidPauseNotification_ name:@"UIDictationControllerDidPauseNotification" object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:self selector:sel__dictationDidResumeNotification_ name:@"UIDictationControllerDidResumeNotification" object:0];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:self selector:sel__dictationWillInsertHypothesisNotification_ name:0x1EFB73D10 object:0];

    if (_os_feature_enabled_impl())
    {
      if (_initializeDictationSupport_onceToken != -1)
      {
        dispatch_once(&_initializeDictationSupport_onceToken, &__block_literal_global_248);
      }

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:self selector:sel__updateVoiceControlEnablementState name:0x1EFB73D30 object:0];
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
    v3 = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v4 = [(UITextSelectionDisplayInteraction *)self _managedSubviewsBelowText];
    v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
            objc_enumerationMutation(v4);
          }

          [v3 addSubview:*(*(&v22 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    v9 = [v3 layer];
    [v9 setAllowsGroupBlending:0];

    v10 = [(UITextSelectionDisplayInteraction *)self _hostViewAboveText];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [(UITextSelectionDisplayInteraction *)self _managedSubviewsAboveText];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
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
            objc_enumerationMutation(v11);
          }

          [v10 addSubview:*(*(&v18 + 1) + 8 * v15++)];
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v13);
    }

    v16 = [(UITextSelectionDisplayInteraction *)self _hostViewAboveText];
    [(UIView *)v16 _addGeometryChangeObserver:?];

    v17 = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
    [(UIView *)v17 _addGeometryChangeObserver:?];

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
  v3 = [(UITextSelectionDisplayInteraction *)self _hostViewAboveText];
  [(UIView *)v3 _removeGeometryChangeObserver:?];

  v4 = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
  [(UIView *)v4 _removeGeometryChangeObserver:?];

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
  if ((*&self->_textInputRespondsTo & 0x400) == 0 || (v3 = objc_loadWeakRetained(&self->_textInput), [v3 selectionContainerViewBelowText], v4 = objc_claimAutoreleasedReturnValue(), v3, !v4))
  {
    if ((*&self->_delegateRespondsTo & 1) == 0 || (v5 = objc_loadWeakRetained(&self->_delegate), [v5 selectionContainerViewBelowTextForSelectionDisplayInteraction:self], v4 = objc_claimAutoreleasedReturnValue(), v5, !v4))
    {
      if ((*&self->_viewRespondsTo & 2) == 0 || (v6 = objc_loadWeakRetained(&self->_view), [v6 selectionContainerView], v4 = objc_claimAutoreleasedReturnValue(), v6, !v4))
      {
        WeakRetained = objc_loadWeakRetained(&self->_view);
        v4 = [WeakRetained textInputView];
      }
    }
  }

  return v4;
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
    v6 = [(UITextSelectionDisplayInteraction *)self _internalDelegate];
    v5 = [v6 activeSelection];
  }

  else
  {
    v3 = [UITextSelection alloc];
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    v5 = [(UITextSelection *)v3 initWithDocument:WeakRetained];

    [(UITextSelection *)v5 selectionChanged];
  }

  return v5;
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

  v2 = [(UITextSelectionDisplayInteraction *)self _selectedRange];
  v3 = [v2 _isRanged];

  return v3;
}

- (void)_removePulseAnimationIfNeeded
{
  highlightView = self->_highlightView;
  if (highlightView)
  {
    v4 = [(UITextSelectionHighlightView *)highlightView layer];
    v5 = [v4 animationForKey:@"pulseAnimation"];

    if (v5)
    {
      v6 = [(UITextSelectionHighlightView *)self->_highlightView layer];
      [v6 removeAnimationForKey:@"pulseAnimation"];
    }
  }
}

- (BOOL)_isRangeAdjustmentUIVisible
{
  if (*&self->_textInputRespondsTo)
  {
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    v5 = [WeakRetained _shouldSuppressSelectionHandles];

    v3 = v5 ^ 1;
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
  v3 = [(UITextSelectionDisplayInteraction *)self _selectedRange];
  v4 = [v3 end];

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
  v2 = [(UITextSelectionDisplayInteraction *)self _activeSelection];
  v3 = [v2 selectedRange];

  return v3;
}

- (UIColor)_cursorTintColor
{
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  isBETextInput = _isBETextInput(WeakRetained);

  if (isBETextInput)
  {
    v5 = objc_loadWeakRetained(&self->_textInput);
    v6 = [v5 performSelector:sel_extendedTextInputTraits];

    if (objc_opt_respondsToSelector())
    {
      v7 = [v6 performSelector:sel_insertionPointColor];
      goto LABEL_4;
    }

    goto LABEL_13;
  }

  if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
  {
    v6 = objc_loadWeakRetained(&self->_textInput);
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
          v6 = [v12 extendedTraitsDelegate];

          if (objc_opt_respondsToSelector())
          {
            v7 = [v6 insertionPointColor];
LABEL_4:
            v8 = v7;

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
  v3 = [(UITextSelectionDisplayInteraction *)self _activeSelection];
  v4 = [v3 hasEditableSelection];
  if (self->_activated && !self->_cursorHidden)
  {
    v6 = v4;
    v7 = [v3 selectedRange];
    v5 = ([v7 isEmpty] & v6) == 1 && !self->_hiddenForApplicationSuspend;
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

      v16 = [(UITextSelectionDisplayInteraction *)self cursorView];
      v17 = [v16 tintColor];
      v18 = [(UITextSelectionDisplayInteraction *)self _trailingGlowView];
      [v18 setTintColor:v17];

      v19 = [(UITextSelectionDisplayInteraction *)self _trailingGlowView];
      v20 = v19;
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

      [v19 cursorDidMoveToFrame:v15 fromPreviousFrame:v4 isNewLine:{v6, v8, v10, v25, v22, width, height}];

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

      v31 = [(UITextSelectionDisplayInteraction *)self cursorView];
      v32 = [v31 _scroller];

      if ([v32 _canScrollY])
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

    v33 = [(UITextSelectionDisplayInteraction *)self _cursorView];
    [v33 setGlowEffectEnabled:v14];

    v34 = +[_UIDictationSettingsDomain rootSettings];
    v35 = [v34 soundReactiveCursorEnabled];

    if (!v14 && v13 && v35)
    {
      v36 = [(UITextSelectionDisplayInteraction *)self _cursorView];
      [v36 setGlowEffectEnabled:1];
    }

    deleteButtonRemovalTimer = self->_deleteButtonRemovalTimer;
    if (deleteButtonRemovalTimer)
    {
      [(UIDelayedAction *)deleteButtonRemovalTimer touch];
    }

    v42 = [(UITextSelectionDisplayInteraction *)self _trailingGlowView];
    [v42 setTrailingAnimationEnabled:v13];
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
    v5 = [(UITextSelectionDisplayInteraction *)self _activeSelection];
    v3 = [v5 hasEditableSelection];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateSelectionIfNeeded
{
  [(UITextSelectionDisplayInteraction *)self _updateSelectionIfNeededResettingBlinkingAnimation:MEMORY[0x1E695E118]];
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  v3 = [WeakRetained textInputView];
  [v3 _selectionDidUpdate];
}

- (void)dealloc
{
  v3 = objc_getAssociatedObject(self, &_UITextInputImplicitSelectionDisplayInteractionKey);
  v4 = [v3 weakObject];

  if (v4 == self)
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
    v4 = [MEMORY[0x1E695DF70] array];
    for (i = 0; i != 3; ++i)
    {
      v6 = [(UITextSelectionDisplayInteraction *)self _managedViewForType:i];
      [(NSArray *)v4 addObject:v6];
    }

    v7 = self->_managedSubviewsBelowText;
    self->_managedSubviewsBelowText = v4;

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
    v4 = [MEMORY[0x1E695DF70] array];
    for (i = 3; i != 6; ++i)
    {
      v6 = [(UITextSelectionDisplayInteraction *)self _managedViewForType:i];
      [(NSArray *)v4 addObject:v6];
    }

    v7 = self->_managedSubviewsAboveText;
    self->_managedSubviewsAboveText = v4;

    managedSubviewsAboveText = self->_managedSubviewsAboveText;
  }

  return managedSubviewsAboveText;
}

- (BOOL)cursorBlinks
{
  v2 = [(UITextSelectionDisplayInteraction *)self cursorView];
  v3 = [v2 isBlinking];

  return v3;
}

- (BOOL)ghostAppearance
{
  v2 = [(UITextSelectionDisplayInteraction *)self _cursorView];
  v3 = [v2 isGhostEffectEnabled];

  return v3;
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
  v7 = [(UITextSelectionDisplayInteraction *)self _selectedRange];
  v8 = [v7 end];

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

      v12 = [(UITextSelectionDisplayInteraction *)self cursorView];
      v14[0] = v15;
      v14[1] = v16;
      v14[2] = v17;
      [(UITextSelectionDisplayInteraction *)self _transformRelativeToTextInputCoordinateSpace:v14 forView:v12];

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

    v4 = [(UITextSelectionDisplayInteraction *)self cursorView];
    v5 = [(UITextSelectionDisplayInteraction *)self cursorPortalInteraction];
    [v4 addInteraction:v5];

    v6 = objc_alloc_init(_UIContainerWindowPortalInteraction);
    [(UITextSelectionDisplayInteraction *)self setTrailingPortalInteraction:v6];

    v7 = [(UITextSelectionDisplayInteraction *)self _trailingGlowView];
    v8 = [(UITextSelectionDisplayInteraction *)self trailingPortalInteraction];
    [v7 addInteraction:v8];

    if ([(UITextSelectionDisplayInteraction *)self _supportDeleteButton])
    {
      v9 = objc_alloc_init(_UIContainerWindowPortalInteraction);
      [(UITextSelectionDisplayInteraction *)self setDeleteButtonPortalInteraction:v9];

      v10 = [(UITextSelectionDisplayInteraction(Dictation) *)self _deleteButton];
      v11 = [(UITextSelectionDisplayInteraction *)self deleteButtonPortalInteraction];
      [v10 addInteraction:v11];
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

- (void)_animateDeleteButtonVisible:(BOOL)a3
{
  v3 = a3;
  CGAffineTransformMakeScale(&v12, 0.8, 0.8);
  deleteButton = self->__deleteButton;
  v11 = v12;
  [(UIView *)deleteButton setTransform:&v11];
  if (v3)
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
    v18 = [(UITextSelectionDisplayInteraction *)self _hostViewAboveText];
    v11 = [(UITextSelectionDisplayInteraction *)self view];
    [v11 convertPoint:v18 fromView:{v9, MidY}];
    v13 = v12;
    v15 = v14;
    v16 = [(UITextSelectionDisplayInteraction(Dictation) *)self _deleteButton];
    [v16 setCenter:{v13, v15}];

    [(UITextSelectionDisplayInteraction *)self set_isDeleteButtonVisible:0];
    v17 = [(UITextSelectionDisplayInteraction *)self deleteButtonPortalInteraction];
    [v17 ensureVisibilityInContainerWindow];

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
  v3 = [(UITextSelectionDisplayInteraction *)self cursorPortalInteraction];
  [v3 setEnabled:0];

  v4 = [(UITextSelectionDisplayInteraction *)self trailingPortalInteraction];
  [v4 setEnabled:0];

  v5 = [(UITextSelectionDisplayInteraction *)self deleteButtonPortalInteraction];
  [v5 setEnabled:0];
}

- (void)_enableDictationPortalViews
{
  [(UITextSelectionDisplayInteraction *)self _initializeManagedDictationViewsIfNecessary];
  v3 = [(UITextSelectionDisplayInteraction *)self cursorPortalInteraction];
  [v3 setEnabled:1];

  v4 = [(UITextSelectionDisplayInteraction *)self trailingPortalInteraction];
  [v4 setEnabled:1];

  v5 = [(UITextSelectionDisplayInteraction *)self deleteButtonPortalInteraction];
  [v5 setEnabled:1];
}

- (void)_dictationDidBeginNotification:(id)a3
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

- (void)_dictationDidFinishNotification:(id)a3
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

    v4 = [(UITextSelectionDisplayInteraction *)self _cursorTintColor];
    v5 = [(UITextSelectionDisplayInteraction *)self _cursorView];
    [v5 setTintColor:v4];

    v6 = [(UITextSelectionDisplayInteraction *)self _cursorView];
    [v6 _setNeedsInitialDictationAnimation];

    v7 = [(UITextSelectionDisplayInteraction *)self _cursorView];
    v8 = +[UIDictationController activeInstance];
    [v7 setAudioLevelProvider:v8];

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
    v5 = [(UITextSelectionDisplayInteraction *)self _cursorView];
    [v5 setGlowEffectEnabled:0];

    v6 = [(UITextSelectionDisplayInteraction *)self _trailingGlowView];
    [v6 setTrailingAnimationEnabled:0];
  }

  [(UITextSelectionDisplayInteraction *)self _removeDeleteButton];

  [(UITextSelectionDisplayInteraction *)self _removePulseAnimationIfNeeded];
}

- (void)_dictationDidPauseNotification:(id)a3
{
  if (+[UIKeyboard isInlineDictationGlowEffectEnabled])
  {
    [(UITextSelectionDisplayInteraction *)self _setGlowViewMode:0];
    v4 = +[UIKeyboardImpl activeInstance];
    [v4 clearDictationMenuTimer];
  }
}

- (void)_dictationDidResumeNotification:(id)a3
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

- (void)_dictationWillInsertHypothesisNotification:(id)a3
{
  v8 = a3;
  if (+[UIKeyboard isInlineDictationGlowEffectEnabled]&& ([(UITextSelectionDisplayInteraction *)self _isDictationRunning]|| [(UITextSelectionDisplayInteraction *)self _isVoiceControlRunning]))
  {
    v4 = [v8 userInfo];

    if (v4)
    {
      v5 = [v8 userInfo];
      v6 = [v5 objectForKeyedSubscript:@"UIDictationGlowViewMode"];
      v7 = [v6 intValue];
    }

    else
    {
      v7 = 2;
    }

    [(UITextSelectionDisplayInteraction *)self _setGlowViewMode:v7];
  }

  [(UITextSelectionDisplayInteraction *)self _hideDeleteButton];
}

- (id)_initWithTextInput:(id)a3 delegate:(id)a4 activated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v20.receiver = self;
  v20.super_class = UITextSelectionDisplayInteraction;
  v10 = [(UITextSelectionDisplayInteraction *)&v20 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_textInput, v8);
    objc_storeWeak(&v11->_delegate, v9);
    v11->_activated = a5;
    v12 = [[_UIAssertionController alloc] initWithAssertionSubject:v11];
    assertionController = v11->_assertionController;
    v11->_assertionController = v12;

    v14 = objc_alloc_init(UITextCursorAssertionController);
    cursorAssertionController = v11->_cursorAssertionController;
    v11->_cursorAssertionController = v14;

    [(UITextCursorAssertionController *)v11->_cursorAssertionController setSubject:v11];
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v11 selector:sel__didReceiveApplicationWillSuspendNotification_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [v16 addObserver:v11 selector:sel__didReceiveApplicationWillResumeNotification_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [v16 addObserver:v11 selector:sel__trackingViewportDidLayout_ name:@"_UITextViewportLayoutControllerDidLayout" object:0];
    [v16 addObserver:v11 selector:sel__didReceiveAXNonBlinkingDidChangeNotification_ name:*MEMORY[0x1E6959538] object:0];
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

- (void)willMoveToView:(id)a3
{
  [(UITextSelectionDisplayInteraction *)self _removeManagedSubviews];

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)a3
{
  v4 = objc_storeWeak(&self->_view, a3);
  if (a3)
  {
    [(UITextSelectionDisplayInteraction *)self _updateViewConformance];
    [(UITextSelectionDisplayInteraction *)self _installManagedSubviewsIfNecessary];
  }
}

- (void)_trackingViewportDidLayout:(id)a3
{
  v4 = a3;
  if (self->_needsUpdate && (*&self->_textInputRespondsTo & 0x80) != 0)
  {
    v9 = v4;
    v5 = [v4 object];
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    v7 = [WeakRetained textLayoutManager];
    v8 = [v7 textViewportLayoutController];

    if (v5 == v8)
    {
      [(UITextSelectionDisplayInteraction *)self _updateSelectionIfNeeded];
    }

    v4 = v9;
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
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"UITextSelectionDisplayInteraction.m" lineNumber:457 description:{@"You must provide exactly two handle views to UITextSelectionDisplayInteraction, one for the leading selection handle and one for the trailing selection handle."}];
  }

  v7 = [(UITextSelectionDisplayInteraction *)self _rangeAdjustmentViewContainer];
  [v7 setSelectionGrabbers:v5];
}

- (NSArray)handleViews
{
  v2 = [(UITextSelectionDisplayInteraction *)self _rangeAdjustmentViewContainer];
  v3 = [v2 selectionGrabbers];

  return v3;
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
    v7 = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
    [v7 addSubview:self->_proofreadingUnderlineView];

    proofreadingUnderlineView = self->_proofreadingUnderlineView;
  }

  return proofreadingUnderlineView;
}

- (id)_managedViewForType:(int64_t)a3
{
  v3 = 0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v4 = [(UITextSelectionDisplayInteraction *)self _underlineView];
      }

      else
      {
        if (a3 != 2)
        {
          goto LABEL_15;
        }

        v4 = [(UITextSelectionDisplayInteraction *)self _trailingGlowView];
      }
    }

    else
    {
      v4 = [(UITextSelectionDisplayInteraction *)self highlightView];
    }

    goto LABEL_14;
  }

  switch(a3)
  {
    case 3:
      v4 = [(UITextSelectionDisplayInteraction *)self cursorView];
LABEL_14:
      v3 = v4;
      break;
    case 4:
      v4 = [(UITextSelectionDisplayInteraction *)self _rangeAdjustmentViewContainer];
      goto LABEL_14;
    case 5:
      v5 = [(UITextSelectionDisplayInteraction *)self _cursorAccessoryViewController];
      v3 = [v5 view];

      break;
  }

LABEL_15:

  return v3;
}

- (id)_allManagedSubviews
{
  v3 = [(UITextSelectionDisplayInteraction *)self _managedSubviewsAboveText];
  v4 = [(UITextSelectionDisplayInteraction *)self _managedSubviewsBelowText];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (void)_layoutManagedSubviewsResettingBlinkingAnimation:(BOOL)a3
{
  self->_needsUpdate = 1;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
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
    v8 = [(UITextSelectionHighlightView *)v14 superview];
    v9 = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];

    if (v8 == v9)
    {
      [(UIView *)v4 setHidden:[(UITextSelectionHighlightView *)v14 isHidden]];
      v11 = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
      [v11 insertSubview:v4 belowSubview:v14];

      [(UITextSelectionHighlightView *)v14 removeFromSuperview];
    }

    else
    {
      [(UIView *)v4 setHidden:1];
      v10 = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
      [v10 insertSubview:v4 atIndex:0];
    }
  }

  [(UITextSelectionDisplayInteraction *)self setHighlightView:v4];
  managedSubviewsBelowText = self->_managedSubviewsBelowText;
  self->_managedSubviewsBelowText = 0;

  v13 = [(UITextSelectionDisplayInteraction *)self _managedSubviewsBelowText];
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
  v3 = [(UITextSelectionDisplayInteraction *)self _isCursorAccessoryViewEnabled];
  if (v3)
  {
    v4 = [(UITextSelectionDisplayInteraction *)self _cursorAccessoryViewController];
    v5 = [v4 isVisible];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (CGRect)_textInputRectInSelectionViewCoordinateSpace:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  rangeAdjustmentViewContainer = self->_rangeAdjustmentViewContainer;
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  v10 = [WeakRetained textInputView];
  [(UIView *)rangeAdjustmentViewContainer convertRect:v10 fromView:x, y, width, height];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = objc_loadWeakRetained(&self->_textInput);
  v20 = [v19 textInputView];
  [v20 contentScaleFactor];
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

- (CGAffineTransform)_transformRelativeToTextInputCoordinateSpace:(SEL)a3 forView:(CGAffineTransform *)a4
{
  [a5 center];
  v8 = v7;
  v10 = v9;
  *&retstr->a = 0u;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  CGAffineTransformMakeTranslation(retstr, -v7, -v9);
  v11 = *&a4->c;
  *&t1.a = *&a4->a;
  *&t1.c = v11;
  *&t1.tx = *&a4->tx;
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

- (CGRect)_caretRectForPosition:(id)a3
{
  if (a3)
  {
    v4 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    [WeakRetained caretRectForPosition:v4];
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
  v11 = [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
  [v11 convertRect:self->_rangeAdjustmentViewContainer fromView:{v4, v6, v8, v10}];
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
  v3 = [(UITextSelectionDisplayInteraction *)self _selectedRange];
  v4 = [v3 end];

  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  v6 = [WeakRetained tokenizer];

  if (v6)
  {
    v7 = [v6 positionFromPosition:v4 toBoundary:4 inDirection:1];

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

- (CGRect)_contentBoundsForPlacement:(int64_t)a3
{
  if (a3)
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

- (CGRect)_selectionClipRectAt:(int64_t)a3
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
    if (a3)
    {
      [(UITextSelectionDisplayInteraction *)self _hostViewBelowText];
    }

    else
    {
      [(UITextSelectionDisplayInteraction *)self _hostViewAboveText];
    }
    v20 = ;
    v21 = objc_loadWeakRetained(&self->_textInput);
    v22 = [v21 textInputView];
    [v20 convertRect:v22 fromView:{v9, v8, v7, v6}];
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

- (id)_visibleSelectionRectsForRange:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v30 = MEMORY[0x1E695E0F0];
    goto LABEL_28;
  }

  v6 = v4;
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
          v17 = [v6 _NSTextRanges];
          v18 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v17, "count")}];
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v19 = v17;
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

- (id)_tintColorOrDefault:(id)a3 alpha:(double)a4
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v8 = [WeakRetained tintColor];

  v9 = objc_loadWeakRetained(&self->_view);
  v10 = +[UIView _defaultInteractionTintColorForIdiom:](UIView, "_defaultInteractionTintColorForIdiom:", [v9 _userInterfaceIdiom]);

  v11 = v8;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {

    v16 = v11;
    v15 = v6;
LABEL_9:

    goto LABEL_10;
  }

  if (!v11 || !v12)
  {

    goto LABEL_8;
  }

  v14 = [v11 isEqual:v12];

  v15 = v6;
  if ((v14 & 1) == 0)
  {
LABEL_8:
    v15 = v11;
    v16 = v6;
    goto LABEL_9;
  }

LABEL_10:
  if (a4 >= 1.0)
  {
    v17 = v15;
  }

  else
  {
    v17 = [v15 colorWithAlphaComponent:a4];
  }

  v18 = v17;

  return v18;
}

- (CGAffineTransform)_lollipopTransformForSelectionRect:(SEL)a3 view:(id)a4
{
  v8 = a4;
  v9 = a5;
  v10 = MEMORY[0x1E695EFD0];
  v11 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v11;
  *&retstr->tx = *(v10 + 32);
  memset(&v13[1], 0, sizeof(CGAffineTransform));
  if (v8)
  {
    [v8 transform];
  }

  v13[0] = v13[1];
  if (!CGAffineTransformIsIdentity(v13))
  {
    v13[0] = v13[1];
    [(UITextSelectionDisplayInteraction *)self _transformRelativeToTextInputCoordinateSpace:v13 forView:v9];
  }

  return result;
}

- (void)_updateSelectionIfNeededResettingBlinkingAnimation:(id)a3
{
  v284 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!self->_needsUpdate)
  {
    goto LABEL_152;
  }

  v254 = v4;
  [(UITextSelectionDisplayInteraction *)self _selectionClipRectAt:1];
  x = v285.origin.x;
  y = v285.origin.y;
  width = v285.size.width;
  height = v285.size.height;
  IsNull = CGRectIsNull(v285);
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  v11 = [WeakRetained textInputView];
  [v11 _scaleFromLayerTransforms];
  dy = v12;

  v253 = [(UITextSelectionDisplayInteraction *)self _activeSelection];
  v255 = [v253 selectedRange];
  v13 = [(UITextSelectionDisplayInteraction *)self _visibleSelectionRectsForRange:?];
  v260 = [MEMORY[0x1E695DFA0] orderedSet];
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
      v30 = [v29 textInputView];
      [(UITextSelectionHighlightView *)highlightView convertRect:v30 fromView:v22, v24, v26, v28];
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
        v43 = [v42 textInputView];

        [v19 setRect:v43 fromView:{v32, v34, v36, v38}];
        v44 = [v19 _path];
        if (v44)
        {
          if (v43)
          {
            [v43 transform];
            if (!CGAffineTransformIsIdentity(&v276))
            {
              memset(&v276, 0, sizeof(v276));
              [v43 transform];
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
              [v44 applyTransform:&v275];
            }
          }
        }

        [v260 addObject:v19];
      }
    }

    v15 = [obj countByEnumeratingWithState:&v277 objects:v283 count:16];
  }

  while (v15);
LABEL_29:
  v45 = fmax(dy, 1.0);

  v46 = [v260 array];
  v47 = [(UITextSelectionDisplayInteraction *)self _isHighlightVisible];
  v48 = self->_highlightView;
  if (v47)
  {
    [(UITextSelectionHighlightView *)v48 setHidden:0];
    [(UITextSelectionDisplayInteraction *)self _contentBoundsForPlacement:1];
    [(UITextSelectionHighlightView *)self->_highlightView setFrame:?];
    [(UITextSelectionHighlightView *)self->_highlightView setSelectionRects:v46];
    [(UITextSelectionDisplayInteraction *)self _highlightAndRangeAdjustmentAlpha];
    [(UITextSelectionHighlightView *)self->_highlightView setAlpha:?];
    v49 = objc_loadWeakRetained(&self->_view);
    v50 = [v49 traitCollection];
    v51 = [v50 userInterfaceStyle] == 2;

    v52 = objc_loadWeakRetained(&self->_textInput);
    LODWORD(v50) = _isBETextInput(v52);

    if (v50)
    {
      v53 = objc_loadWeakRetained(&self->_textInput);
      v54 = [v53 performSelector:sel_extendedTextInputTraits];

      if (objc_opt_respondsToSelector())
      {
        v55 = [v54 performSelector:sel_selectionHighlightColor];
        goto LABEL_33;
      }

LABEL_43:

      goto LABEL_44;
    }

    if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
    {
      goto LABEL_44;
    }

    v54 = objc_loadWeakRetained(&self->_textInput);
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
    v54 = [v60 extendedTraitsDelegate];

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_43;
    }

    v55 = [v54 selectionHighlightColor];
LABEL_33:
    v56 = v55;

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
        v92 = [v91 selectionBorderColor];

        v88 = v92;
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
  if (-[UITextSelectionDisplayInteraction _isRangeAdjustmentUIVisible](self, "_isRangeAdjustmentUIVisible") && [v46 count])
  {
    [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer setHidden:0];
    [(UITextSelectionDisplayInteraction *)self _contentBoundsForPlacement:0];
    [(UIView *)self->_rangeAdjustmentViewContainer setFrame:?];
    [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer setShapeScale:1.0 / v45];
    v94 = [v46 firstObject];
    -[_UITextSelectionRangeAdjustmentContainerView setVertical:](self->_rangeAdjustmentViewContainer, "setVertical:", [v94 isVertical]);

    [(UITextSelectionDisplayInteraction *)self _highlightAndRangeAdjustmentAlpha];
    [(UIView *)self->_rangeAdjustmentViewContainer setAlpha:?];
    v95 = [UITextSelectionRect startRectFromRects:v46];
    v96 = [UITextSelectionRect endRectFromRects:v46];
    rangeAdjustmentViewContainer = self->_rangeAdjustmentViewContainer;
    [v95 _startEdgeRect];
    [(UIView *)rangeAdjustmentViewContainer convertRect:self->_highlightView fromView:?];
    [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer setStartEdge:?];
    v98 = self->_rangeAdjustmentViewContainer;
    [v96 _endEdgeRect];
    [(UIView *)v98 convertRect:self->_highlightView fromView:?];
    [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer setEndEdge:?];
    [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer layoutSubviews];
    v99 = [(UITextSelectionDisplayInteraction *)self _hostViewAboveText];
    v100 = [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer leadingLollipopView];
    v248 = [v95 _startCustomSelectionPath];
    v101 = [v248 bezierPathForHostView:v99 targetView:v100];
    [v100 setCustomShape:v101];

    v102 = [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer trailingLollipopView];
    v246 = [v96 _endCustomSelectionPath];
    v251 = v99;
    v103 = [v246 bezierPathForHostView:v99 targetView:v102];
    [v102 setCustomShape:v103];

    [(UITextSelectionDisplayInteraction *)self _lollipopTransformForSelectionRect:v95 view:v100];
    v276 = v274;
    v249 = v100;
    [v100 setTransform:&v276];
    v250 = v96;
    [(UITextSelectionDisplayInteraction *)self _lollipopTransformForSelectionRect:v96 view:v102];
    v276 = v273;
    v247 = v102;
    [v102 setTransform:&v276];
    v104 = objc_loadWeakRetained(&self->_textInput);
    LODWORD(v96) = _isBETextInput(v104);

    v105 = v255;
    if (v96)
    {
      v106 = objc_loadWeakRetained(&self->_textInput);
      v107 = [v106 performSelector:sel_extendedTextInputTraits];

      if (objc_opt_respondsToSelector())
      {
        v108 = [v107 performSelector:sel_selectionHandleColor];
        goto LABEL_65;
      }

LABEL_75:

      goto LABEL_76;
    }

    if (+[UIKBInputDelegateManager isAsyncTextInputEnabled])
    {
      v107 = objc_loadWeakRetained(&self->_textInput);
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
        v107 = [v114 extendedTraitsDelegate];

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_75;
        }

        v108 = [v107 selectionHandleColor];
LABEL_65:
        v109 = v108;

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
        v123 = [v122 performSelector:sel_extendedTextInputTraits];

        if (objc_opt_respondsToSelector())
        {
          v124 = [v123 performSelector:sel_selectionBarColor];
          goto LABEL_81;
        }

LABEL_90:

        goto LABEL_91;
      }

      if (!+[UIKBInputDelegateManager isAsyncTextInputEnabled])
      {
        goto LABEL_91;
      }

      v123 = objc_loadWeakRetained(&self->_textInput);
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
      v123 = [v128 extendedTraitsDelegate];

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_90;
      }

      v124 = [v123 selectionBarColor];
LABEL_81:
      v119 = v124;

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
    v134 = [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer selectionGrabbers];
    v135 = [v134 countByEnumeratingWithState:&v269 objects:v282 count:16];
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
            objc_enumerationMutation(v134);
          }

          [*(*(&v269 + 1) + 8 * j) setTintColor:v119];
        }

        v136 = [v134 countByEnumeratingWithState:&v269 objects:v282 count:16];
      }

      while (v136);
    }

    if ([(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer areSelectionGrabbersConcreteImpl])
    {
      v245 = v46;
      v139 = +[_UITextSelectionLollipopView _visualStyle];
      [v139 minimumStemLength];
      v141 = v140;

      v244 = v95;
      [v95 _startEdgeRect];
      v142 = CGRectGetHeight(v288);
      v143 = [v251 _enclosingScrollerIncludingSelf];
      v144 = v143;
      if (v143)
      {
        v145 = v143;
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
      v147 = [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer selectionGrabbers];
      v148 = [v147 countByEnumeratingWithState:&v265 objects:v281 count:16];
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
              objc_enumerationMutation(v147);
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
              v171 = [v170 textInputView];
              [v146 convertRect:v171 fromView:{v163, v165, v167, v169}];
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
          v203 = [v147 countByEnumeratingWithState:&v265 objects:v281 count:16];
          v149 = v203;
        }

        while (v203);
      }

      v95 = v244;
      v46 = v245;
      v105 = v255;
    }

    v5 = v254;
  }

  else
  {
    [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer setHidden:1];
    v5 = v254;
    v105 = v255;
  }

  [(UITextSelectionDisplayInteraction *)self _caretRect];
  v205 = v204;
  v207 = v206;
  v209 = v208;
  v211 = v210;
  v212 = [(UITextSelectionDisplayInteraction *)self _cursorTintColor];
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
    v224 = [(UITextSelectionDisplayInteraction *)self _internalDelegate];
    v225 = [(UITextSelectionDisplayInteraction *)self _selectedRange];
    v229 = [v225 end];
    [v224 _selectionViewManager:self convertPointToRenderSpace:v229 textPosition:{v221, v223}];
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
    v224 = [(UITextSelectionDisplayInteraction *)self _internalDelegate];
    v225 = [(UITextSelectionDisplayInteraction *)self _selectedRange];
    [v224 _selectionViewManager:self convertPointToRenderSpace:v225 textRange:{v221, v223}];
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
  [(UITextCursorView *)self->_cursorView setTintColor:v212];
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
  [(_UICursorAccessoryViewController *)self->_cursorAccessoryViewController setSelectionRects:v46];
  [(_UICursorAccessoryViewController *)self->_cursorAccessoryViewController setAccessoryTintColor:v212];
LABEL_151:
  v233 = [(UITextSelectionDisplayInteraction *)self _isCursorAccessoryViewEnabled];
  v234 = [(UIViewController *)self->_cursorAccessoryViewController view];
  [v234 setHidden:!v233];

  [(UITextSelectionDisplayInteraction *)self _contentBoundsForPlacement:0];
  v236 = v235;
  v238 = v237;
  v240 = v239;
  v242 = v241;
  v243 = [(UIViewController *)self->_cursorAccessoryViewController view];
  [v243 setFrame:{v236, v238, v240, v242}];

  self->_needsUpdate = 0;
LABEL_152:
}

- (void)setActivated:(BOOL)activated
{
  self->_activated = activated;
  if (activated)
  {
    [(UITextSelectionDisplayInteraction *)self _installManagedSubviewsIfNecessary];
    v4 = [(UITextSelectionDisplayInteraction *)self _activeSelection];
    [v4 selectionChanged];

    [(UITextSelectionDisplayInteraction *)self _setupDictationUIForActivation];
  }

  else
  {
    [(UITextSelectionDisplayInteraction *)self _resetDictationUIForDeactivation];
  }

  [(UITextSelectionDisplayInteraction *)self setNeedsSelectionUpdate];
}

- (void)_addInteractiveUnderlines:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UITextSelectionDisplayInteraction *)self _underlineView];
  [v7 addUnderlines:v6 animated:v4];
}

- (void)_removeInteractiveUnderlines:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(UITextSelectionDisplayInteraction *)self _existingUnderlineView];
  [v7 removeUnderlines:v6 animated:v4];
}

- (void)_removeAllInteractiveUnderlinesAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(UITextSelectionDisplayInteraction *)self _existingUnderlineView];
  [v4 clearAllUnderlinesAnimated:v3];
}

- (id)_underlineRectsForRange:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_textInput);
  v6 = [WeakRetained _underlineRectsByDocumentLineForSelectionRange:v4];

  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(UITextSelectionDisplayInteraction *)self textInput];
  v8 = [v7 textInputView];

  v9 = [(UITextSelectionDisplayInteraction *)self _proofreadingUnderlineView];
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
        [v9 convertRect:v8 fromView:?];
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
        [v25 setAssociatedTextRange:v4];
        v26 = [(UITextSelectionDisplayInteraction *)self defaultUnderlineColor];
        [v25 setUnderlineColor:v26];

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
      v9 = [(UITextSelectionHighlightView *)highlightView layer];
      v4 = [v9 animationForKey:@"pulseAnimation"];
      if (v4)
      {
        v5 = v4;
      }

      else
      {
        v6 = [(UITextSelectionDisplayInteraction *)self _isDictationRunning];

        if (!v6)
        {
          return;
        }

        v9 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
        [v9 setFromValue:&unk_1EFE34C48];
        [v9 setToValue:&unk_1EFE34C58];
        [v9 setDuration:0.6];
        [v9 setAutoreverses:1];
        LODWORD(v7) = 2139095040;
        [v9 setRepeatCount:v7];
        v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
        [v9 setTimingFunction:v8];

        v5 = [(UITextSelectionHighlightView *)self->_highlightView layer];
        [v5 addAnimation:v9 forKey:@"pulseAnimation"];
      }
    }
  }
}

- (id)_underlineTextInRange:(id)a3 animated:(BOOL)a4 preferredUUID:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!self->_proofreadingUnderlines)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    proofreadingUnderlines = self->_proofreadingUnderlines;
    self->_proofreadingUnderlines = v10;
  }

  v12 = [(UITextSelectionDisplayInteraction *)self _underlineRectsForRange:v8];
  if (v9)
  {
    v13 = [(NSMutableDictionary *)self->_proofreadingUnderlines objectForKeyedSubscript:v9];
    v14 = [v12 isEqualToArray:v13];

    v15 = v9;
    if (v14)
    {
      goto LABEL_8;
    }

    [(UITextSelectionDisplayInteraction *)self _removeUnderlineWithIdentifier:v15 animated:0];
  }

  else
  {
    v15 = [MEMORY[0x1E696AFB0] UUID];
  }

  [(NSMutableDictionary *)self->_proofreadingUnderlines setObject:v12 forKey:v15];
  v16 = [(UITextSelectionDisplayInteraction *)self _proofreadingUnderlineView];
  [v16 addUnderlines:v12 animated:v6];

LABEL_8:

  return v15;
}

- (void)_removeUnderlineWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  v6 = [(NSMutableDictionary *)self->_proofreadingUnderlines objectForKey:?];
  if (v6)
  {
    [(NSMutableDictionary *)self->_proofreadingUnderlines removeObjectForKey:v8];
    v7 = [(UITextSelectionDisplayInteraction *)self _proofreadingUnderlineView];
    [v7 removeUnderlines:v6 animated:v4];
  }

  if (![(NSMutableDictionary *)self->_proofreadingUnderlines count])
  {
    [(UITextSelectionDisplayInteraction *)self cleanUpProofreading];
  }
}

- (void)_removeAllProofreadingUnderlinesAnimated:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_proofreadingUnderlines allValues];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = [(UITextSelectionDisplayInteraction *)self _proofreadingUnderlineView];
        [v11 removeUnderlines:v10 animated:v3];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    v3 = [(NSMutableDictionary *)self->_proofreadingUnderlines allKeys];
    v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [(NSMutableDictionary *)self->_proofreadingUnderlines objectForKey:v8];
          v10 = v9;
          if (v9)
          {
            v11 = [v9 firstObject];
            v12 = [v11 associatedTextRange];

            v13 = [(UITextSelectionDisplayInteraction *)self _underlineRectsForRange:v12];
            v14 = v13;
            if (v13)
            {
              if (([v13 isEqual:v10] & 1) == 0)
              {
                v15 = [(UITextSelectionDisplayInteraction *)self _proofreadingUnderlineView];
                [v15 removeUnderlines:v10 animated:0];

                [(NSMutableDictionary *)self->_proofreadingUnderlines setObject:v14 forKey:v8];
                v16 = [(UITextSelectionDisplayInteraction *)self _proofreadingUnderlineView];
                [v16 addUnderlines:v14 animated:0];
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  v3 = [(UITextSelectionDisplayInteraction *)self textInput];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(UITextSelectionDisplayInteraction *)self textInput];
    v6 = [v5 insertionPointColor];
    goto LABEL_5;
  }

  v7 = [(UITextSelectionDisplayInteraction *)self view];

  if (v7)
  {
    v5 = [(UITextSelectionDisplayInteraction *)self view];
    v6 = [v5 tintColor];
LABEL_5:
    v8 = v6;

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

  v3 = [(UITextSelectionDisplayInteraction *)self _selectedRange];
  v4 = [v3 _isRanged];

  return v4;
}

- (id)_beginFloatingCursorSessionAtPoint:(CGPoint)a3 inContainer:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
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

  [(_UITextFloatingCursorSession *)self->_activeFloatingCursorSession updateWithPoint:v7 inContainer:1 animated:x, y];
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
    v5 = [v4 selectionContainerView];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_filterArchivedSubviews:(id)a3
{
  v6 = a3;
  v4 = [(UITextSelectionDisplayInteraction *)self _allManagedSubviews];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DFD8] setWithArray:v4];
    [v6 minusSet:v5];
  }
}

- (BOOL)_isManagedSelectionSubview:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(UITextSelectionDisplayInteraction *)self _allManagedSubviews];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) containsView:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (CGRect)_textRangeAdjustmentRectForEdge:(unint64_t)a3 selectionRects:(id)a4
{
  if (a3)
  {
    [UITextSelectionRect endEdgeFromRects:a4];
  }

  else
  {
    [UITextSelectionRect startEdgeFromRects:a4];
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

- (CGRect)_grabberDotRectForTextRangeAdjustmentEdgeRect:(CGRect)a3 isVertical:(BOOL)a4 direction:(unint64_t)a5
{
  v6 = a4;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [_UITextSelectionLollipopView _visualStyle:a3.origin.x];
  [v9 dotSizeWithEngagedEffect:0];
  v11 = v10;

  v12 = +[_UITextSelectionLollipopView _visualStyle];
  [v12 minimumStemLength];
  v14 = v13;

  v15 = -v14;
  v16 = v11 * 0.5;
  if (a5 == 4)
  {
    v17 = -v14;
  }

  else
  {
    v17 = v14;
  }

  v18 = x + v17;
  if (a5 != 2)
  {
    v15 = v14;
  }

  v19 = y + v15;
  v20 = x - v16;
  if (v6)
  {
    v21 = v19;
  }

  else
  {
    v21 = y - v16;
  }

  if (v6)
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

- (void)_didBeginRangeAdjustmentInteraction:(id)a3
{
  v4 = a3;
  if ([(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer areSelectionGrabbersConcreteImpl])
  {
    v5 = [v4 baseIsStart];
    rangeAdjustmentViewContainer = self->_rangeAdjustmentViewContainer;
    if (v5)
    {
      [(_UITextSelectionRangeAdjustmentContainerView *)rangeAdjustmentViewContainer trailingLollipopView];
    }

    else
    {
      [(_UITextSelectionRangeAdjustmentContainerView *)rangeAdjustmentViewContainer leadingLollipopView];
    }
    v7 = ;
    v8 = +[_UITextSelectionLollipopView _visualStyle];
    v9 = [v8 lollipopDotAnimationDurationOnEngagementChange];

    if (([v7 isEngaged] & 1) == 0)
    {
      if (v9)
      {
        [v9 doubleValue];
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

- (void)_didEndRangeAdjustmentInteraction:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer areSelectionGrabbersConcreteImpl])
  {
    v4 = +[_UITextSelectionLollipopView _visualStyle];
    v5 = [v4 lollipopDotAnimationDurationOnEngagementChange];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer selectionGrabbers];
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          if ([v11 isEngaged])
          {
            if (v5)
            {
              [v5 doubleValue];
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

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)_geometryChanged:(id *)a3 forAncestor:(id)a4
{
  if ((a3->var0 & 8) != 0)
  {
    [(UITextSelectionDisplayInteraction *)self setNeedsSelectionUpdate];
  }
}

- (UIEdgeInsets)_paddedEdgeInsetsForGrabberDirection:(unint64_t)a3 isVertical:(BOOL)a4 scale:(double)a5
{
  v6 = a4;
  v8 = +[_UITextSelectionLollipopView _visualStyle];
  [v8 smallPaddedInset];
  v10 = v9;

  v11 = +[_UITextSelectionLollipopView _visualStyle];
  [v11 bigPaddedInset];
  v13 = v12;

  v14 = +[_UITextSelectionLollipopView _visualStyle];
  v15 = [v14 useGrabberDotsForSelection];

  if (!v6)
  {
    v16 = v10 / a5;
    v17 = v13 / a5;
    if ((v15 & 1) == 0)
    {
      if (a3 == 4)
      {
        v19 = v16 + v17;
      }

      else
      {
        v19 = v10 / a5;
      }

      if (a3 != 4)
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

  v16 = v13 / a5;
  v17 = v10 / a5;
  if (v15)
  {
    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v18 = v17 + v16;
  }

  else
  {
    v18 = v10 / a5;
  }

  if (a3 != 2)
  {
    v17 = v17 + v16;
  }

  v19 = v13 / a5;
LABEL_17:
  result.right = v16;
  result.bottom = v17;
  result.left = v19;
  result.top = v18;
  return result;
}

- (CGRect)textRangeAdjustmentRectForEdge:(unint64_t)a3
{
  v5 = [(UITextSelectionHighlightView *)self->_highlightView selectionRects];
  [(UITextSelectionDisplayInteraction *)self _textRangeAdjustmentRectForEdge:a3 selectionRects:v5];
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

- (CGRect)paddedTextRangeAdjustmentHitRegionForEdge:(unint64_t)a3 precision:(unint64_t)a4
{
  if ([(UITextSelectionDisplayInteraction *)self _shouldHitTestSelectionGrabbers])
  {
    [(UITextSelectionDisplayInteraction *)self textRangeAdjustmentRectForEdge:a3];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(UITextSelectionDisplayInteraction *)self textRangeAdjustmentViewForEdge:a3];
    v16 = +[_UITextSelectionLollipopView _visualStyle];
    v17 = [v16 useGrabberDotsForSelection];

    v18 = v14;
    v19 = v12;
    v20 = v10;
    v21 = v8;
    if (v17)
    {
      -[UITextSelectionDisplayInteraction _grabberDotRectForTextRangeAdjustmentEdgeRect:isVertical:direction:](self, "_grabberDotRectForTextRangeAdjustmentEdgeRect:isVertical:direction:", [v15 isVertical], objc_msgSend(v15, "direction"), v8, v10, v12, v14);
      v21 = v22;
      v20 = v23;
    }

    v44 = v19;
    v45 = v18;
    WeakRetained = objc_loadWeakRetained(&self->_textInput);
    v25 = [WeakRetained textInputView];
    [v25 _scaleFromLayerTransforms];
    v27 = v26;
    v29 = v28;

    v30 = 1.0;
    if (v27 < 1.0)
    {
      v27 = 1.0;
    }

    if (a4 == 2)
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

- (id)textRangeAdjustmentViewForEdge:(unint64_t)a3
{
  rangeAdjustmentViewContainer = self->_rangeAdjustmentViewContainer;
  if (a3)
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

- (void)_setCursorFadedHiddenForFloatingCursor:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_cursorFadedHiddenForFloatingCursor != a3)
  {
    self->_cursorFadedHiddenForFloatingCursor = a3;
    if (a4)
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

- (id)obtainGhostCursorAssertionForReason:(id)a3
{
  v4 = a3;
  v5 = [(UITextSelectionDisplayInteraction *)self _cursorAssertionController];
  v6 = [v5 nonBlinkingGhostAssertionWithReason:v4];

  return v6;
}

- (id)obtainBlinkSuppressionAssertionForReason:(id)a3
{
  v4 = a3;
  v5 = [(UITextSelectionDisplayInteraction *)self _cursorAssertionController];
  v6 = [v5 nonBlinkingAssertionWithReason:v4];

  return v6;
}

- (BOOL)assertionActivationStateForType:(unint64_t)a3
{
  v4 = 0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
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

  if (a3 == 3)
  {
    goto LABEL_10;
  }

  if (a3 == 4)
  {
    v5 = 26;
    goto LABEL_11;
  }

  return v4 & 1;
}

- (void)assertionActivationStateChangedToState:(BOOL)a3 forType:(unint64_t)a4
{
  if (a4 > 2)
  {
    if (a4 == 3)
    {
      self->_shouldDisplayShimmerHighlights = a3;
      [(_UITextSelectionRangeAdjustmentContainerView *)self->_rangeAdjustmentViewContainer setSelectionGrabbersHidden:?];

      [(UITextSelectionDisplayInteraction *)self _updateHighlightViewWithShimmerState];
    }

    else if (a4 == 4)
    {
      self->_selectionUIHiddenForAssertion = a3;
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

  else if (a4)
  {
    if (a4 == 1)
    {
      self->_cursorAccessoryViewHidden = a3;

      [(UITextSelectionDisplayInteraction *)self setNeedsSelectionUpdate];
    }
  }

  else
  {
    rangeAdjustmentViewContainer = self->_rangeAdjustmentViewContainer;

    [(_UITextSelectionRangeAdjustmentContainerView *)rangeAdjustmentViewContainer setSelectionGrabbersHidden:a3];
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

- (void)set_dictationBlinkSuppressionAssertion:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 256), a2);
  }
}

- (void)setCursorBlinks:(BOOL)a3
{
  v3 = a3;
  v4 = [(UITextSelectionDisplayInteraction *)self cursorView];
  [v4 setBlinking:v3];
}

- (void)setGhostAppearance:(BOOL)a3
{
  v3 = a3;
  v4 = [(UITextSelectionDisplayInteraction *)self _cursorView];
  [v4 setGhostEffectEnabled:v3];
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

- (id)inputModeForDictationLanguage:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 keyboardLanguageForDictationLanguage:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = +[UIKeyboardInputModeController sharedInputModeController];
  v10 = [v9 activeInputModes];

  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        objc_enumerationMutation(v10);
      }

      v13 = *(*(&v20 + 1) + 8 * v15);

      v17 = [v13 languageWithRegion];
      v18 = [v8 isEqualToString:v17];

      if (v18)
      {
        break;
      }

      ++v15;
      v16 = v13;
      if (v12 == v15)
      {
        v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (void)setActiveIndicators:(unint64_t)a3 animationStyle:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v87 = *MEMORY[0x1E69E9840];
  if ((a3 & 4) != 0 || self->_activeIndicators != a3)
  {
    self->_activeIndicators = a3;
    v72 = objc_opt_new();
    if ((v5 & 8) != 0)
    {
      LODWORD(v8) = a4 == 1;
      if ((v5 & 4) == 0)
      {
        v14 = objc_alloc_init(_UIDictationCursorAccessory);
        [(_UICursorAccessory *)v14 setIdentifier:@"dic"];
        [(_UICursorAccessory *)v14 setStyle:1];
        [(_UICursorAccessory *)v14 setInteractive:1];
        [v72 addObject:v14];
      }

      if ((v5 & 0x10) != 0)
      {
        if (+[UIDictationUtilities shouldAddDeleteMenuElement])
        {
          v15 = objc_alloc_init(_UIDeleteCursorAccessory);
          [(_UICursorAccessory *)v15 setIdentifier:@"del"];
          [(_UICursorAccessory *)v15 setStyle:1];
          [(_UICursorAccessory *)v15 setInteractive:1];
          if ((v5 & 4) != 0)
          {
            [(_UICursorAccessory *)v15 setStyle:2];
          }

          [v72 addObject:v15];
        }

        else
        {
          [(UITextSelectionDisplayInteraction *)v6 clearDeleteButtonCursorAssertion];
        }
      }

      v23 = +[UIKeyboardImpl activeInstance];
      v24 = [v23 activeDictationLanguage];

      if ((v5 & 4) != 0)
      {
        v31 = v24;
        v67 = a4 == 1;
        v69 = a4;
        v83 = 0u;
        v84 = 0u;
        v82 = 0u;
        v81 = 0u;
        v32 = +[UIKeyboardInputModeController sharedInputModeController];
        v33 = [v32 enabledDictationLanguages];

        obja = v33;
        v34 = [v33 countByEnumeratingWithState:&v81 objects:v86 count:16];
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
              v39 = [(UITextSelectionDisplayInteraction *)v6 inputModeForDictationLanguage:v38];
              v40 = v6;
              v41 = objc_alloc_init(_UIInputModeCursorAccessory);
              v42 = [v39 identifier];
              [(_UIInputModeCursorAccessory *)v41 setInputModeIdentifier:v42];

              [(_UIInputModeCursorAccessory *)v41 setDictationLanguage:v38];
              -[_UICursorAccessory setStyle:](v41, "setStyle:", [v38 isEqualToString:v31]);
              [(_UICursorAccessory *)v41 setInteractive:1];
              [(_UICursorAccessory *)v41 setLarge:1];
              [v72 addObject:v41];

              v6 = v40;
            }

            v35 = [obja countByEnumeratingWithState:&v81 objects:v86 count:16];
          }

          while (v35);
        }

        LODWORD(v8) = v67;
        a4 = v69;
        v24 = v31;
      }

      else
      {
        v25 = +[UIKeyboardInputModeController sharedInputModeController];
        v26 = [v25 enabledDictationLanguages];
        v27 = [v26 count];

        if (a4 == 1 && v27 >= 2)
        {
          v28 = objc_alloc_init(_UIInputModeCursorAccessory);
          v29 = [(UITextSelectionDisplayInteraction *)v6 inputModeForDictationLanguage:v24];
          v30 = [v29 identifier];
          [(_UIInputModeCursorAccessory *)v28 setInputModeIdentifier:v30];

          [(_UIInputModeCursorAccessory *)v28 setDictationLanguage:v24];
          [(_UICursorAccessory *)v28 setStyle:1];
          [(_UICursorAccessory *)v28 setInteractive:1];
          [v72 addObject:v28];

          LODWORD(v8) = 1;
        }
      }
    }

    else
    {
      if ((v5 & 0x20) != 0)
      {
        v7 = objc_alloc_init(_UIModifierKeyCursorAccessory);
        [(_UIModifierKeyCursorAccessory *)v7 setModifierType:3];
        [(_UICursorAccessory *)v7 setStyle:2];
        [v72 addObject:v7];
      }

      v8 = (v5 >> 1) & 1;
      if ((v5 & 2) != 0)
      {
        v9 = objc_alloc_init(_UIInputModeCursorAccessory);
        v10 = v9;
        if ((v5 & 4) != 0)
        {
          v66 = (v5 >> 1) & 1;
          v68 = a4;
          obj = v6;
          v64 = v9;
          v65 = v5;
          if ((v5 & 0x40) != 0)
          {
            v43 = +[UIInputSwitcher sharedInstance];
            v18 = [v43 selectedInputMode];

            v19 = +[UIInputSwitcher sharedInstance];
            v22 = [v19 availableInputModes];
          }

          else
          {
            v16 = +[UIKeyboardInputModeController sharedInputModeController];
            v17 = [v16 currentInputMode];
            v18 = [v17 identifier];

            v19 = +[UIKeyboardInputModeController sharedInputModeController];
            v20 = [v19 activeInputModeIdentifiers];
            v21 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_522];
            v22 = [v20 filteredArrayUsingPredicate:v21];
          }

          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v44 = v22;
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
                v52 = [v51 identifier];
                [(_UIInputModeCursorAccessory *)v50 setInputModeIdentifier:v52];

                -[_UICursorAccessory setStyle:](v50, "setStyle:", [v49 isEqual:v18]);
                [(_UICursorAccessory *)v50 setInteractive:1];
                [(_UICursorAccessory *)v50 setLarge:1];
                [v72 addObject:v50];
              }

              v46 = [v44 countByEnumeratingWithState:&v77 objects:v85 count:16];
            }

            while (v46);
          }

          a4 = v68;
          v6 = obj;
          LOBYTE(v5) = v65;
          LODWORD(v8) = v66;
          v10 = v64;
        }

        else
        {
          v11 = UIKeyboardGetCurrentInputMode();
          v12 = [UIKeyboardInputMode keyboardInputModeWithIdentifier:v11];

          v13 = [v12 identifier];
          [(_UIInputModeCursorAccessory *)v10 setInputModeIdentifier:v13];

          [(_UICursorAccessory *)v10 setStyle:1];
          [(_UICursorAccessory *)v10 setInteractive:1];
          [v72 addObject:v10];
        }
      }

      if ((v5 & 5) != 1)
      {
LABEL_44:
        v53 = [(UITextSelectionDisplayInteraction *)v6 textInput];
        if (objc_opt_respondsToSelector())
        {
          v54 = [v53 _systemCursorAccessoriesDisabled];
        }

        else
        {
          v54 = 0;
        }

        v55 = [(UITextSelectionDisplayInteraction *)v6 ghostAppearance]| v54;
        if (v8)
        {
          v56 = [v53 interactionAssistant];
          v57 = [v56 _editMenuAssistant];

          [v57 _hideSelectionCommandsWithReason:0];
        }

        if (v55)
        {
          goto LABEL_59;
        }

        if ([v72 count])
        {
          v58 = [(UITextSelectionDisplayInteraction *)v6 _isCursorAccessoryViewEnabled];
          v59 = [(UITextSelectionDisplayInteraction *)v6 _cursorAccessoryViewController];
          v60 = v59;
          if (v58)
          {
            v61 = 1;
            [v59 setAccessories:v72 animated:1];
            v62 = 0;
LABEL_55:
            [v60 setTouchFallbackEnabled:v8 & v61];
            if (a4 == 2)
            {
              v63 = 2;
            }

            else
            {
              v63 = a4 == 1;
            }

            [v60 setVisible:v61 animationStyle:v63 completion:v62];

LABEL_59:
            return;
          }
        }

        else
        {
          v60 = [(UITextSelectionDisplayInteraction *)v6 _cursorAccessoryViewController];
        }

        objc_initWeak(&location, v60);
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

      v24 = objc_alloc_init(_UIModifierKeyCursorAccessory);
      [(_UIModifierKeyCursorAccessory *)v24 setModifierType:2];
      [(_UICursorAccessory *)v24 setStyle:1];
      [(_UICursorAccessory *)v24 setInteractive:1];
      [v72 addObject:v24];
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

- (void)_cursorAccessoryViewController:(id)a3 didActivateCursorAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 _inputModeCursorAccessory];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 dictationLanguage];

    showInputModesCursorAssertion = self->_showInputModesCursorAssertion;
    if (v10)
    {
      if (showInputModesCursorAssertion)
      {
        v12 = +[UIKeyboardImpl activeInstance];
        v13 = [v12 activeDictationLanguage];

        v14 = [v9 dictationLanguage];
        v15 = [v14 isEqualToString:v13];

        if ((v15 & 1) == 0)
        {
          v16 = [MEMORY[0x1E696AD88] defaultCenter];
          objc_initWeak(&location, v16);

          v51 = 0;
          v52 = &v51;
          v53 = 0x3032000000;
          v54 = __Block_byref_object_copy__179;
          v55 = __Block_byref_object_dispose__179;
          v56 = 0;
          v17 = objc_loadWeakRetained(&location);
          v18 = [MEMORY[0x1E696ADC8] mainQueue];
          v44 = MEMORY[0x1E69E9820];
          v45 = 3221225472;
          v46 = __107__UITextSelectionDisplayInteraction_Assertions___cursorAccessoryViewController_didActivateCursorAccessory___block_invoke;
          v47 = &unk_1E7116C18;
          v48 = v9;
          objc_copyWeak(&v50, &location);
          v49 = &v51;
          v19 = [v17 addObserverForName:@"UIDictationControllerDictationDidFinish" object:0 queue:v18 usingBlock:&v44];
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
        v13 = [(UITextSelectionDisplayInteraction *)self _cursorAssertionController];
        v28 = [v13 inputModeSelectorAssertionWithReason:@"Show input modes" userInfo:MEMORY[0x1E695E0F8]];
        v29 = self->_showInputModesCursorAssertion;
        self->_showInputModesCursorAssertion = v28;
      }
    }

    else
    {
      if (showInputModesCursorAssertion)
      {
        v24 = +[UIKeyboardInputModeController sharedInputModeController];
        v25 = [v9 inputModeIdentifier];
        v26 = [v24 inputModeWithIdentifier:v25];

        v27 = +[UIKeyboardImpl sharedInstance];
        [v27 setKeyboardInputMode:v26 userInitiated:1];

        [(UITextSelectionDisplayInteraction *)self clearInputModeCursorAssertion];
        goto LABEL_14;
      }

      v30 = [(UITextSelectionDisplayInteraction *)self _cursorAssertionController];
      v31 = [v30 inputModeSelectorAssertionWithReason:@"Show input modes" userInfo:MEMORY[0x1E695E0F8]];
      v32 = self->_showInputModesCursorAssertion;
      self->_showInputModesCursorAssertion = v31;

      v13 = +[UIKeyboardImpl sharedInstance];
      v33 = [v13 inputModeIndicatorController];
      [v33 inputModeSelectorDidOpen];
    }
  }

LABEL_14:
  v34 = [v7 identifier];

  if (v34 == @"dic")
  {
    v35 = +[UIDictationController activeInstance];
    [v35 setReasonType:29];

    v36 = +[UIDictationController activeInstance];
    [v36 stopDictation];

    [(UITextSelectionDisplayInteraction *)self clearInputModeCursorAssertion];
  }

  v37 = [v7 identifier];

  if (v37 == @"del")
  {
    v38 = +[UIKeyboardImpl activeInstance];
    v39 = [v38 inputDelegateManager];
    [v39 deleteBackward];

    v40 = +[UIKeyboardImpl activeInstance];
    [v40 dismissDictationMenu];

    [(UITextSelectionDisplayInteraction *)self clearDeleteButtonCursorAssertion];
  }

  v41 = [v7 _modifierKeyCursorAccessory];
  v42 = [v41 modifierType];

  if (v42 == 2)
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