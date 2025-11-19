@interface UITextSelectionView
- (BOOL)_activeAndVisible;
- (BOOL)_editMenuIsVisible;
- (BOOL)_updateEditMenuPositionForPreferredArrowDirection:(int64_t)a3 replacements:(id)a4;
- (BOOL)_viewUsesAsynchronousProtocol;
- (BOOL)affectedByScrollerNotification:(id)a3;
- (BOOL)isInstalledInSelectionContainerView;
- (BOOL)isValid;
- (CGPoint)floatingCursorPositionForPoint:(CGPoint)a3;
- (CGPoint)floatingCursorPositionForPoint:(CGPoint)a3 lineSnapping:(BOOL)a4;
- (CGRect)clippedTargetRect:(CGRect)a3;
- (CGRect)previousGhostCaretRect;
- (CGRect)selectionBoundingBox;
- (CGRect)selectionBoundingBoxForRects:(id)a3;
- (CGRect)stashedCaretRect;
- (UITextInteractionAssistant)interactionAssistant;
- (UITextRangeView)rangeView;
- (UITextSelection)selection;
- (UITextSelectionView)initWithInteractionAssistant:(id)a3;
- (UIView)caretView;
- (id)_actingParentViewForGestureRecognizers;
- (id)_customSelectionContainerView;
- (id)_editMenuSourceWindow;
- (id)caretViewColor;
- (id)dynamicCaret;
- (id)dynamicCaretList;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)menuInteraction;
- (id)obtainGrabberSuppressionAssertion;
- (id)scrollView;
- (void)_hideCaret:(int)a3;
- (void)_hideSelectionCommandsWithReason:(int64_t)a3;
- (void)_presentEditMenuWithPreferredDirection:(int64_t)a3 replacements:(id)a4;
- (void)_registerForViewAnimationNotificationsIfNecessary;
- (void)_setCaretBlinkAnimationEnabled:(BOOL)a3;
- (void)_showCaret:(int)a3;
- (void)_showCommandsWithReplacements:(id)a3 forDictation:(BOOL)a4 afterDelay:(double)a5;
- (void)_showCommandsWithReplacements:(id)a3 isForContextMenu:(BOOL)a4 forDictation:(BOOL)a5 arrowDirection:(int64_t)a6;
- (void)_showSelectionCommandsForContextMenu:(BOOL)a3;
- (void)_unregisterForNotifications;
- (void)_unregisterForViewAnimationNotificationsIfNecessary;
- (void)_updateViewAnimateNotificationObservationIfNecessary;
- (void)activate;
- (void)addCaretToSubview;
- (void)animateBoxShrinkOn:(id)a3;
- (void)animateCaret:(id)a3 toPosition:(CGPoint)a4 withSize:(CGSize)a5;
- (void)animateExpanderOn:(id)a3;
- (void)animatePulsingDirectCaret:(id)a3;
- (void)animatePulsingIndirectCaret:(id)a3;
- (void)appearOrFadeIfNecessary;
- (void)beginFloatingCaretView;
- (void)beginFloatingCursorAtPoint:(CGPoint)a3;
- (void)calculateReplacementsWithGenerator:(id)a3 andShowAfterDelay:(double)a4;
- (void)canExpandAfterAlert:(id)a3;
- (void)canExpandAfterBecomeActive:(id)a3;
- (void)canExpandAfterNavigationTransition:(id)a3;
- (void)canExpandAfterPopover:(id)a3;
- (void)canExpandAfterSheet:(id)a3;
- (void)cancelDelayedCommandRequests;
- (void)clearCaret;
- (void)configureForHighlightMode;
- (void)configureForPencilDeletionPreviewMode;
- (void)configureForPencilHighlightMode;
- (void)configureForReplacementMode;
- (void)configureForSelectionMode;
- (void)deactivateAndCollapseSelection:(BOOL)a3;
- (void)dealloc;
- (void)deferredUpdateSelectionRects;
- (void)didRotate:(id)a3;
- (void)doneMagnifying;
- (void)endFloatingCaretView;
- (void)endFloatingCursor;
- (void)hideSelectionCommandsAfterDelay:(double)a3 reason:(int64_t)a4;
- (void)inputModeDidChange:(id)a3;
- (void)inputViewDidAnimate;
- (void)inputViewDidChange;
- (void)inputViewDidMove;
- (void)inputViewWillAnimate;
- (void)inputViewWillChange;
- (void)inputViewWillMove:(id)a3;
- (void)installIfNecessary;
- (void)invalidate;
- (void)layoutChangedByScrolling:(BOOL)a3;
- (void)mustFlattenForAlert:(id)a3;
- (void)mustFlattenForNavigationTransition:(id)a3;
- (void)mustFlattenForPopover:(id)a3;
- (void)mustFlattenForResignActive:(id)a3;
- (void)mustFlattenForSheet:(id)a3;
- (void)prepareForMagnification;
- (void)releaseGrabberHandleSuppressionAssertion:(id)a3;
- (void)removeFromSuperview;
- (void)saveDeactivationReason:(id)a3;
- (void)scaleDidChange:(id)a3;
- (void)scaleWillChange:(id)a3;
- (void)selectionChanged;
- (void)selectionDidScroll:(id)a3;
- (void)selectionDidTranslateForReachability:(id)a3;
- (void)selectionWillScroll:(id)a3;
- (void)selectionWillTranslateForReachability:(id)a3;
- (void)setCaretBlinks:(BOOL)a3;
- (void)setCaretVisible:(BOOL)a3;
- (void)setGhostAppearance:(BOOL)a3;
- (void)setVisible:(BOOL)a3;
- (void)showCalloutBarAfterDelay:(double)a3;
- (void)showCaret:(int)a3;
- (void)showInitialCaret;
- (void)showReplacementsWithGenerator:(id)a3 forDictation:(BOOL)a4 afterDelay:(double)a5;
- (void)showSelectionCommandsAfterDelay:(double)a3;
- (void)textSelectionViewActivated:(id)a3;
- (void)tintColorDidChange;
- (void)updateBaseIsStartWithDocumentPoint:(CGPoint)a3;
- (void)updateDocumentHasContent:(BOOL)a3;
- (void)updateFloatingCursorAtPoint:(CGPoint)a3 animated:(BOOL)a4;
- (void)updateRangeViewForSelectionMode;
- (void)updateSelectionCommands;
- (void)updateSelectionDots;
- (void)updateSelectionRects;
- (void)updateSelectionRectsIfNeeded;
- (void)updateSelectionWithDocumentPoint:(CGPoint)a3;
- (void)validateWithInteractionAssistant:(id)a3;
- (void)viewAnimate:(id)a3;
- (void)willBeginFloatingCursor:(BOOL)a3;
- (void)willMoveToWindow:(id)a3;
- (void)willRotate:(id)a3;
- (void)windowDidResignOrBecomeKey;
@end

@implementation UITextSelectionView

- (UITextSelectionView)initWithInteractionAssistant:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UITextSelectionView;
  v5 = [(UIView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    v5->_viewDidStopNotification = -1;
    v5->_viewDidCommitNotification = -1;
    [(UITextSelectionView *)v5 validateWithInteractionAssistant:v4];
    [(UIView *)v6 _setDisableDictationTouchCancellation:1];
    v7 = v6;
  }

  return v6;
}

- (void)_unregisterForNotifications
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 removeObserver:a1 name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
    [v2 removeObserver:a1 name:@"UIKeyboardDidHideNotification" object:0];
    [v2 removeObserver:a1 name:@"UIKeyboardWillHideNotification" object:0];
    [v2 removeObserver:a1 name:@"UIKeyboardDidShowNotification" object:0];
    [v2 removeObserver:a1 name:@"UIKeyboardWillShowNotification" object:0];
    [v2 removeObserver:a1 name:@"UIKeyboardDidChangeFrameNotification" object:0];
    [v2 removeObserver:a1 name:@"UIKeyboardWillChangeFrameNotification" object:0];
    [v2 removeObserver:a1 name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
    [v2 removeObserver:a1 name:@"_UIWindowDidResignApplicationKeyNotification" object:0];
    [v2 removeObserver:a1 name:@"UIWindowDidRotateNotification" object:0];
    [v2 removeObserver:a1 name:@"UIWindowWillRotateNotification" object:0];
    [v2 removeObserver:a1 name:@"UITextSelectionDidTranslateForReachability" object:0];
    [v2 removeObserver:a1 name:@"UITextSelectionWillTranslateForReachability" object:0];
    [v2 removeObserver:a1 name:@"UITextSelectionDidInteractiveMove" object:0];
    [v2 removeObserver:a1 name:@"UITextSelectionWillInteractiveMove" object:0];
    [v2 removeObserver:a1 name:@"UITextSelectionDidZoom" object:0];
    [v2 removeObserver:a1 name:@"UITextSelectionWillZoom" object:0];
    [v2 removeObserver:a1 name:@"UITextSelectionDidScroll" object:0];
    [v2 removeObserver:a1 name:@"UITextSelectionWillScroll" object:0];
    [v2 removeObserver:a1 name:@"UITextSelectionViewActivatedNotification" object:0];
    [v2 removeObserver:a1 name:@"UITextEffectsWindowOffsetDidChangeNotification" object:0];
    [v2 removeObserver:a1 name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [v2 removeObserver:a1 name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [v2 removeObserver:a1 name:@"_UIAlertWillAppearNotification" object:0];
    [v2 removeObserver:a1 name:@"_UIAlertDidDisappearNotification" object:0];
    [v2 removeObserver:a1 name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
    [v2 removeObserver:a1 name:@"UIApplicationWillResignActiveNotification" object:0];
    [v2 removeObserver:a1 name:@"UIApplicationDidBecomeActiveNotification" object:0];
    [v2 removeObserver:a1 name:0x1EFB3A190 object:0];
    [v2 removeObserver:a1 name:0x1EFB3A1B0 object:0];
    [v2 removeObserver:a1 name:@"_UISheetWillAppearNotification" object:0];
    [v2 removeObserver:a1 name:@"_UISheetDidDisappearNotification" object:0];
    [v2 removeObserver:a1 name:0x1EFB37EF0 object:0];
    [v2 removeObserver:a1 name:0x1EFB37F10 object:0];
  }
}

- (void)validateWithInteractionAssistant:(id)a3
{
  objc_storeWeak(&self->m_interactionAssistant, a3);
  if (self->m_observer)
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveObserver(Current, self->m_observer, *MEMORY[0x1E695E8D0]);
    CFRelease(self->m_observer);
    self->m_observer = 0;
  }

  self->m_deferSelectionCommands = 0;
  [(UIView *)self setUserInteractionEnabled:0];
  [(UITextSelectionView *)self setVisible:1];
  [(UITextSelectionView *)self setCaretBlinks:1];
  [(UITextSelectionView *)self setCaretVisible:1];
  [(UIView *)self setClipsToBounds:0];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [(UITextSelectionView *)self _unregisterForNotifications];
  [v5 addObserver:self selector:sel_didSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  [v5 addObserver:self selector:sel_willResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
  [v5 addObserver:self selector:sel_updateSelectionDots name:@"UITextEffectsWindowOffsetDidChangeNotification" object:0];
  [v5 addObserver:self selector:sel_textSelectionViewActivated_ name:@"UITextSelectionViewActivatedNotification" object:0];
  [v5 addObserver:self selector:sel_selectionWillScroll_ name:@"UITextSelectionWillScroll" object:0];
  [v5 addObserver:self selector:sel_selectionDidScroll_ name:@"UITextSelectionDidScroll" object:0];
  [v5 addObserver:self selector:sel_scaleWillChange_ name:@"UITextSelectionWillZoom" object:0];
  [v5 addObserver:self selector:sel_scaleDidChange_ name:@"UITextSelectionDidZoom" object:0];
  [v5 addObserver:self selector:sel_inputViewWillAnimate name:@"UITextSelectionWillInteractiveMove" object:0];
  [v5 addObserver:self selector:sel_inputViewDidAnimate name:@"UITextSelectionDidInteractiveMove" object:0];
  [v5 addObserver:self selector:sel_selectionWillTranslateForReachability_ name:@"UITextSelectionWillTranslateForReachability" object:0];
  [v5 addObserver:self selector:sel_selectionDidTranslateForReachability_ name:@"UITextSelectionDidTranslateForReachability" object:0];
  [v5 addObserver:self selector:sel_willRotate_ name:@"UIWindowWillRotateNotification" object:0];
  [v5 addObserver:self selector:sel_didRotate_ name:@"UIWindowDidRotateNotification" object:0];
  [v5 addObserver:self selector:sel_windowDidResignOrBecomeKey name:@"_UIWindowDidResignApplicationKeyNotification" object:0];
  [v5 addObserver:self selector:sel_windowDidResignOrBecomeKey name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
  [v5 addObserver:self selector:sel_inputViewWillMove_ name:@"UIKeyboardWillChangeFrameNotification" object:0];
  [v5 addObserver:self selector:sel_inputViewDidMove name:@"UIKeyboardDidChangeFrameNotification" object:0];
  [v5 addObserver:self selector:sel_inputViewWillAnimate name:@"UIKeyboardWillShowNotification" object:0];
  [v5 addObserver:self selector:sel_inputViewDidAnimate name:@"UIKeyboardDidShowNotification" object:0];
  [v5 addObserver:self selector:sel_inputViewWillAnimate name:@"UIKeyboardWillHideNotification" object:0];
  [v5 addObserver:self selector:sel_inputViewDidAnimate name:@"UIKeyboardDidHideNotification" object:0];
  [v5 addObserver:self selector:sel_inputModeDidChange_ name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
  [v5 addObserver:self selector:sel_mustFlattenForAlert_ name:@"_UIAlertWillAppearNotification" object:0];
  [v5 addObserver:self selector:sel_canExpandAfterAlert_ name:@"_UIAlertDidDisappearNotification" object:0];
  [v5 addObserver:self selector:sel_saveDeactivationReason_ name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
  [v5 addObserver:self selector:sel_mustFlattenForResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];
  [v5 addObserver:self selector:sel_canExpandAfterBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
  [v5 addObserver:self selector:sel_mustFlattenForNavigationTransition_ name:0x1EFB3A190 object:0];
  [v5 addObserver:self selector:sel_canExpandAfterNavigationTransition_ name:0x1EFB3A1B0 object:0];
  [v5 addObserver:self selector:sel_mustFlattenForSheet_ name:@"_UISheetWillAppearNotification" object:0];
  [v5 addObserver:self selector:sel_canExpandAfterSheet_ name:@"_UISheetDidDisappearNotification" object:0];
  [v5 addObserver:self selector:sel_mustFlattenForPopover_ name:0x1EFB37EF0 object:0];
  [v5 addObserver:self selector:sel_canExpandAfterPopover_ name:0x1EFB37F10 object:0];
}

- (void)invalidate
{
  if (self->m_observer)
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveObserver(Current, self->m_observer, *MEMORY[0x1E695E8D0]);
    CFRelease(self->m_observer);
    self->m_observer = 0;
  }

  [(UITextSelectionView *)self _unregisterForNotifications];
  [(UITextSelectionView *)self _unregisterForViewAnimationNotificationsIfNecessary];
  [(UITextSelectionView *)self deactivate];
  [(UITextSelection *)self->m_selection invalidate];
  m_selection = self->m_selection;
  self->m_selection = 0;

  m_replacements = self->m_replacements;
  self->m_replacements = 0;

  objc_storeWeak(&self->m_interactionAssistant, 0);
}

- (BOOL)isValid
{
  WeakRetained = objc_loadWeakRetained(&self->m_interactionAssistant);
  if (WeakRetained)
  {
    m_activated = self->m_activated;
  }

  else
  {
    m_activated = 0;
  }

  return m_activated;
}

- (void)dealloc
{
  [(UITextSelectionView *)self invalidate];
  v3.receiver = self;
  v3.super_class = UITextSelectionView;
  [(UIView *)&v3 dealloc];
}

- (void)activate
{
  v3 = [(UITextSelectionView *)self interactionAssistant];
  v4 = [v3 containerAllowsSelection];

  if (v4)
  {
    v5 = [(UITextSelectionView *)self interactionAssistant];
    v6 = [v5 containerAllowsSelectionTintOnly];

    if (v6)
    {
      [(UITextSelectionView *)self configureForHighlightMode];
    }

    self->m_activated = 1;
    [(UITextSelectionView *)self _updateViewAnimateNotificationObservationIfNecessary];
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"UITextSelectionViewActivatedNotification" object:self];
    v7 = [(UITextSelectionView *)self selection];
    [v7 selectionChanged];
    [(UITextSelectionView *)self appearOrFadeIfNecessary];
    [(UITextSelectionView *)self deferredUpdateSelectionRects];
  }
}

- (void)deactivateAndCollapseSelection:(BOOL)a3
{
  v3 = a3;
  self->m_activated = 0;
  [(UITextSelectionView *)self _updateViewAnimateNotificationObservationIfNecessary];
  if (v3)
  {
    v5 = [(UITextSelectionView *)self selection];
    [v5 collapseSelection];

    v6 = [(UITextSelectionView *)self selection];
    [v6 commit];
  }

  [(UITextSelectionView *)self removeFromSuperview];
}

- (void)windowDidResignOrBecomeKey
{
  if (self->m_activated)
  {
    [(UITextSelectionView *)self appearOrFadeIfNecessary];
  }
}

- (void)inputModeDidChange:(id)a3
{
  if ([(UITextSelectionView *)self selectionCommandsShowing])
  {

    [(UITextSelectionView *)self deferredUpdateSelectionCommands];
  }
}

- (void)viewAnimate:(id)a3
{
  v20 = a3;
  v4 = [(UIView *)self->m_rangeView superview];
  if (v4)
  {
    v5 = v4;
    v6 = [(UITextSelectionView *)self interactionAssistant];
    v7 = [v6 view];

    if (v7)
    {
      v8 = [v20 userInfo];
      v9 = [v8 objectForKey:0x1EFB17410];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          v11 = 0;
          goto LABEL_17;
        }

        v10 = [v9 view];
      }

      v11 = v10;
      if (v10)
      {
        v12 = [(UITextSelectionView *)self interactionAssistant];
        v13 = [v12 view];
        v14 = [v13 textInputView];
        if (([v11 containsView:v14] & 1) == 0)
        {

LABEL_16:
          goto LABEL_17;
        }

        v15 = [v11 _layer];
        v16 = [v15 animationKeys];

        if (v16)
        {
          v17 = [v20 name];
          v18 = [v17 isEqualToString:0x1EFBBAB50];

          v19 = [(UITextSelectionView *)self rangeView];
          v12 = v19;
          if (v18)
          {
            [v19 startAnimating];
          }

          else
          {
            [v19 performSelector:sel_stopAnimating withObject:0 afterDelay:0.1];
          }

          goto LABEL_16;
        }
      }

LABEL_17:
    }
  }
}

- (void)_updateViewAnimateNotificationObservationIfNecessary
{
  if (self->m_activated && [(UITextSelectionView *)self visible]&& ([(UIView *)self superview], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {

    [(UITextSelectionView *)self _registerForViewAnimationNotificationsIfNecessary];
  }

  else
  {

    [(UITextSelectionView *)self _unregisterForViewAnimationNotificationsIfNecessary];
  }
}

- (void)_registerForViewAnimationNotificationsIfNecessary
{
  v3 = +[NSNotificationCenter uikitInternalCenter];
  if (self->_viewDidStopNotification == -1)
  {
    v4 = v3;
    self->_viewDidStopNotification = [v3 _addObserver:self selector:sel_viewAnimate_ name:0x1EFBBAB70 object:0 options:1024];
    v3 = v4;
  }

  if (self->_viewDidCommitNotification == -1)
  {
    v5 = v3;
    self->_viewDidCommitNotification = [v3 _addObserver:self selector:sel_viewAnimate_ name:0x1EFBBAB50 object:0 options:1024];
    v3 = v5;
  }
}

- (void)_unregisterForViewAnimationNotificationsIfNecessary
{
  v3 = +[NSNotificationCenter uikitInternalCenter];
  v4 = v3;
  if (self->_viewDidStopNotification != -1)
  {
    [v3 _removeObserver:?];
    v3 = v4;
    self->_viewDidStopNotification = -1;
  }

  if (self->_viewDidCommitNotification != -1)
  {
    [v4 _removeObserver:?];
    v3 = v4;
    self->_viewDidCommitNotification = -1;
  }
}

- (void)selectionWillScroll:(id)a3
{
  v11 = a3;
  if ([(UITextSelectionView *)self visible])
  {
    v4 = [(UIView *)self superview];

    if (v4)
    {
      if ([(UITextSelectionView *)self affectedByScrollerNotification:v11])
      {
        v5 = self->m_wasShowingCommands || [(UITextSelectionView *)self selectionCommandsShowing];
        self->m_wasShowingCommands = v5;
        [(UITextSelectionView *)self hideSelectionCommands];
        v6 = [(UITextSelectionView *)self selection];
        v7 = [v6 selectedRange];
        v8 = [v7 _isRanged];

        if (v8)
        {
          v9 = [(UITextSelectionView *)self rangeView];
          [v9 willScroll];
        }

        v10 = +[UIKeyboardImpl activeInstance];
        [v10 hideDictationMenuIfNeeded:0];
      }
    }
  }
}

- (void)selectionDidScroll:(id)a3
{
  v14 = a3;
  if ([(UITextSelectionView *)self visible])
  {
    v4 = [(UIView *)self superview];

    if (v4)
    {
      if ([(UITextSelectionView *)self affectedByScrollerNotification:v14])
      {
        v5 = [(UITextSelectionView *)self selection];
        v6 = [v5 selectedRange];
        v7 = [v6 _isRanged];

        v8 = [(UITextSelectionView *)self selectionCommandsShowing];
        if (v7)
        {
          if (v8)
          {
            v9 = [(UITextSelectionView *)self menuInteraction];

            if (v9)
            {
              v10 = [(UITextSelectionView *)self menuInteraction];
              [v10 updateVisibleMenuPosition];
            }

            else
            {
              [(UITextSelectionView *)self hideSelectionCommands];
              self->m_wasShowingCommands = 1;
            }
          }

          if (self->m_wasShowingCommands)
          {
            [(UITextSelectionView *)self showCalloutBarAfterDelay:0.1];
          }

          v12 = [(UITextSelectionView *)self rangeView];
          [v12 didScroll];
        }

        else
        {
          if (!v8)
          {
            goto LABEL_16;
          }

          v11 = [(UITextSelectionView *)self menuInteraction];

          if (!v11)
          {
            goto LABEL_16;
          }

          v12 = [(UITextSelectionView *)self menuInteraction];
          [v12 updateVisibleMenuPosition];
        }

LABEL_16:
        self->m_wasShowingCommands = 0;
        [(UITextSelectionView *)self deferredUpdateSelectionRects];
        v13 = +[UIKeyboardImpl activeInstance];
        [v13 showDictationMenuIfNeeded];
      }
    }
  }
}

- (BOOL)affectedByScrollerNotification:(id)a3
{
  v4 = [a3 object];
  if (v4)
  {
    v5 = [(UITextSelectionView *)self interactionAssistant];
    v6 = [v5 view];
    v7 = [v6 textInputView];
    if (v7)
    {
      v8 = [(UITextSelectionView *)self interactionAssistant];
      v9 = [v8 view];
      v10 = [v9 textInputView];
      v11 = [v4 containsView:v10];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)inputViewWillChange
{
  m_showingCommandsCounter = self->m_showingCommandsCounter;
  self->m_showingCommandsCounter = m_showingCommandsCounter + 1;
  if (!m_showingCommandsCounter)
  {
    v5 = self->m_delayShowingCommands || [(UITextSelectionView *)self selectionCommandsShowing];
    self->m_wasShowingCommands = v5;
    [(UITextSelectionView *)self cancelDelayedCommandRequests];
    [(UITextSelectionView *)self hideSelectionCommandsAfterDelay:1 reason:0.1];
    v6 = [(UITextSelectionView *)self rangeView];
    [v6 inputViewWillChange];

    v7 = +[UIKeyboardImpl activeInstance];
    [v7 hideDictationMenuIfNeeded:1];
  }
}

- (void)inputViewDidChange
{
  v3 = self->m_showingCommandsCounter - 1;
  self->m_showingCommandsCounter = v3;
  if (!v3)
  {
    if (self->m_wasShowingCommands)
    {
      [(UITextSelectionView *)self showCalloutBarAfterDelay:0.1];
    }

    self->m_wasShowingCommands = 0;
    v5 = [(UITextSelectionView *)self rangeView];
    [v5 inputViewDidChange];

    v6 = +[UIKeyboardImpl activeInstance];
    [v6 showDictationMenuIfNeeded];
  }
}

- (void)inputViewWillMove:(id)a3
{
  v4 = a3;
  if (self->m_activated)
  {
    v27 = v4;
    v5 = [(UITextSelectionView *)self shouldBeVisible];
    v4 = v27;
    if (v5)
    {
      v6 = [v27 userInfo];
      v7 = [v6 objectForKey:@"UIKeyboardFrameBeginUserInfoKey"];
      [v7 CGRectValue];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      v16 = [v27 userInfo];
      v17 = [v16 objectForKey:@"UIKeyboardFrameEndUserInfoKey"];
      [v17 CGRectValue];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;

      v29.origin.x = v9;
      v29.origin.y = v11;
      v29.size.width = v13;
      v29.size.height = v15;
      v30.origin.x = v19;
      v30.origin.y = v21;
      v30.size.width = v23;
      v30.size.height = v25;
      v26 = CGRectEqualToRect(v29, v30);
      v4 = v27;
      if (!v26)
      {
        [(UITextSelectionView *)self inputViewWillChange];
        v4 = v27;
      }
    }
  }
}

- (void)inputViewDidMove
{
  if (self->m_showingCommandsCounter)
  {
    [(UITextSelectionView *)self inputViewDidChange];
  }
}

- (void)inputViewWillAnimate
{
  v3 = [(UIView *)self keyboardSceneDelegate];
  if (self->m_activated)
  {
    v7 = v3;
    v4 = [(UITextSelectionView *)self shouldBeVisible];
    v3 = v7;
    if (v4)
    {
      v5 = [v7 containerView];
      v6 = [(UIView *)self isDescendantOfView:v5];

      v3 = v7;
      if (v6)
      {
        [(UITextSelectionView *)self inputViewWillChange];
        v3 = v7;
      }
    }
  }
}

- (void)inputViewDidAnimate
{
  v7 = [(UIView *)self keyboardSceneDelegate];
  if ([v7 isOnScreen])
  {
    if (!self->m_activated)
    {
      v3 = [(UITextSelectionView *)self interactionAssistant];
      v4 = [v3 externalTextInput];

      if (v4)
      {
        [(UITextSelectionView *)self activate];
      }
    }
  }

  if (self->m_showingCommandsCounter)
  {
    v5 = [v7 containerView];
    v6 = [(UIView *)self isDescendantOfView:v5];

    if (v6)
    {
      [(UITextSelectionView *)self inputViewDidChange];
    }
  }
}

- (void)selectionWillTranslateForReachability:(id)a3
{
  if (self->m_activated && [(UITextSelectionView *)self shouldBeVisible])
  {

    [(UITextSelectionView *)self inputViewWillChange];
  }
}

- (void)selectionDidTranslateForReachability:(id)a3
{
  if (self->m_showingCommandsCounter)
  {
    [(UITextSelectionView *)self inputViewDidChange];
  }
}

- (void)textSelectionViewActivated:(id)a3
{
  v4 = [a3 object];
  if (v4 != self)
  {
    v13 = v4;
    v5 = [(UITextSelectionView *)v4 interactionAssistant];
    v6 = [v5 view];
    v7 = [v6 textInputView];
    v8 = [v7 window];
    v9 = [(UITextSelectionView *)self interactionAssistant];
    v10 = [v9 view];
    v11 = [v10 textInputView];
    v12 = [v11 window];

    v4 = v13;
    if (v8 == v12)
    {
      [(UITextSelectionView *)self deactivateAndCollapseSelection:1];
      v4 = v13;
    }
  }
}

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = UITextSelectionView;
  [(UIView *)&v5 willMoveToWindow:?];
  if (!a3)
  {
    if ([(UITextSelectionView *)self _editMenuIsVisible])
    {
      [(UITextSelectionView *)self hideSelectionCommands];
    }
  }
}

- (void)removeFromSuperview
{
  v3 = [(UIView *)self superview];

  if (v3)
  {
    [(UITextSelectionView *)self hideSelectionCommands];
  }

  [(UITextSelectionView *)self detach];
  [(UIView *)self->m_floatingCaretView removeFromSuperview];
  m_floatingCaretView = self->m_floatingCaretView;
  self->m_floatingCaretView = 0;

  m_caretView = self->m_caretView;
  if (m_caretView)
  {
    [(UITextSelectionView *)self clearCaret];
    m_caretView = self->m_caretView;
  }

  self->m_caretView = 0;

  m_rangeView = self->m_rangeView;
  if (m_rangeView)
  {
    [(UITextSelectionView *)self clearRangeAnimated:0];
    m_rangeView = self->m_rangeView;
  }

  self->m_rangeView = 0;

  if ((*(&self->super._viewFlags + 1) & 8) == 0)
  {
    v7 = [(UIView *)self layer];
    v8 = [v7 animationKeys];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [(UIView *)self layer];
      [v10 removeAllAnimations];
    }
  }

  [(UITextSelectionView *)self _updateViewAnimateNotificationObservationIfNecessary];
  v11.receiver = self;
  v11.super_class = UITextSelectionView;
  [(UIView *)&v11 removeFromSuperview];
}

- (BOOL)_viewUsesAsynchronousProtocol
{
  v2 = [(UITextSelectionView *)self interactionAssistant];
  v3 = [v2 viewConformsToAsynchronousInteractionProtocol];

  return v3;
}

- (BOOL)isInstalledInSelectionContainerView
{
  v2 = [(UITextSelectionView *)self interactionAssistant];
  v3 = [v2 view];

  v4 = [v3 textInputView];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 selectionContainerView];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_customSelectionContainerView
{
  v3 = [(UITextSelectionView *)self interactionAssistant];
  v4 = [v3 view];

  v5 = [v4 textInputView];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 selectionContainerView];
  }

  else
  {
    v6 = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(UITextSelectionView *)self _viewUsesAsynchronousProtocol])
  {
    v7 = [v5 unscaledView];

    v6 = v7;
  }

  return v6;
}

- (BOOL)_activeAndVisible
{
  if (!self->m_activated)
  {
    return 0;
  }

  [(UIView *)self alpha];
  if (v3 <= 0.0)
  {
    return 0;
  }

  v4 = [(UITextSelectionView *)self interactionAssistant];
  v5 = [v4 containerAllowsSelection];

  return v5;
}

- (void)installIfNecessary
{
  if ([(UITextSelectionView *)self _activeAndVisible])
  {
    v3 = [(UITextSelectionView *)self interactionAssistant];
    v7 = [v3 view];

    v4 = [v7 textInputView];
    v5 = [(UITextSelectionView *)self _customSelectionContainerView];
    if (!v5)
    {
      v5 = v4;
    }

    v6 = [(UIView *)self superview];

    if (v6 != v5)
    {
      [v5 addSubview:self];
    }
  }
}

- (id)_actingParentViewForGestureRecognizers
{
  v3 = [(UITextSelectionView *)self _customSelectionContainerView];

  if (v3)
  {
    v4 = [(UITextSelectionView *)self interactionAssistant];
    v5 = [v4 view];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)selectionChanged
{
  v3 = [(UITextSelectionView *)self interactionAssistant];
  v4 = [v3 view];
  v5 = [v4 textInputView];
  v6 = [v5 window];

  if (!v6)
  {
    return;
  }

  if ([(UITextRangeView *)self->m_rangeView mode]== 2)
  {
    [(UITextSelectionView *)self updateRangeViewForSelectionMode];
  }

  else if ([(UITextRangeView *)self->m_rangeView mode]== 1)
  {
    v7 = [(UITextSelectionView *)self interactionAssistant];
    if ([v7 containerAllowsSelectionTintOnly])
    {
    }

    else
    {
      v8 = [(UITextSelectionView *)self selection];
      v9 = [v8 isRangedSelectionSpanningDocument];

      if ((v9 & 1) == 0)
      {
        [(UITextRangeView *)self->m_rangeView setMode:0];
      }
    }
  }

  v10 = [(UITextSelectionView *)self selection];
  [v10 selectionChanged];

  v11 = [(UITextSelectionView *)self selection];
  if ([v11 isCommitting])
  {

    goto LABEL_14;
  }

  v12 = [(UITextSelectionView *)self interactionAssistant];
  v13 = [v12 expectingCommit];

  if ((v13 & 1) != 0 || (-[UITextSelectionView interactionAssistant](self, "interactionAssistant"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 requiresImmediateUpdate], v14, v15))
  {
LABEL_14:

    [(UITextSelectionView *)self updateSelectionRects];
    return;
  }

  [(UITextSelectionView *)self deferredUpdateSelectionRects];
}

- (void)updateSelectionRects
{
  v101[1] = *MEMORY[0x1E69E9840];
  if ([(UITextSelectionView *)self _activeAndVisible])
  {
    if (self->m_observer && !self->m_deferSelectionCommands)
    {
      Current = CFRunLoopGetCurrent();
      CFRunLoopRemoveObserver(Current, self->m_observer, *MEMORY[0x1E695E8D0]);
      CFRelease(self->m_observer);
      self->m_observer = 0;
    }

    v4 = [(UITextSelectionView *)self interactionAssistant];
    v5 = [(UITextSelectionView *)self selection];
    v6 = [v5 selectedRange];

    if (!v6)
    {
      [(UITextSelectionView *)self clearCaret];
      [(UITextSelectionView *)self clearRangeAnimated:0];
      [(UITextSelectionView *)self removeFromSuperview];
      goto LABEL_30;
    }

    v7 = [(UITextSelectionView *)self selection];
    v8 = [v7 selectedRange];
    if ([v8 _isCaret])
    {
      v9 = [(UITextSelectionView *)self forceRangeView];

      if (!v9)
      {
        m_activeCaret = self->m_activeCaret;
        v11 = [(UITextSelectionView *)self interactionAssistant];
        v12 = [v11 textDocument];
        v13 = [UIDictationController shouldHideCursorForTextView:v12];

        if (!v13)
        {
          v14 = 1;
          [(UITextSelectionView *)self clearRangeAnimated:1];
          v15 = [(UITextSelectionView *)self interactionAssistant];
          v16 = [v15 view];
          if (([v16 isEditable] & 1) == 0)
          {
            v17 = [(UITextSelectionView *)self selection];
            v14 = [v17 hasEditableSelection];
          }

          v18 = [(UITextSelectionView *)self interactionAssistant];
          v19 = [v18 externalInteractions];
          v20 = [v19 textInteractionMode];

          v21 = [(UITextSelectionView *)self interactionAssistant];
          if ([v21 inGesture])
          {
            v22 = [(UITextSelectionView *)self rangeView];
            v23 = [v22 mode] != 1;
          }

          else
          {
            v23 = 0;
          }

          if (((v14 | v23) & 1) == 0 || v20 == 1)
          {
            [(UITextSelectionView *)self clearCaret];
            goto LABEL_30;
          }

          [(UITextSelectionView *)self installIfNecessary];
          v40 = [(UITextSelectionView *)self selection];
          [v40 caretRect];
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;

          v49 = [(UITextSelectionView *)self interactionAssistant];
          v50 = [v49 view];
          v51 = [v50 textInputView];
          [v51 convertRect:self toView:{v42, v44, v46, v48}];
          MinX = v52;
          v55 = v54;
          width = v56;
          rect = v58;

          v59 = [v4 view];
          if (v59 && (v60 = v59, [v4 view], v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_opt_respondsToSelector(), v61, v60, (v62 & 1) != 0))
          {
            v63 = [v4 view];
            [v63 selectionClipRect];
          }

          else
          {
            v68 = *MEMORY[0x1E695F050];
            v69 = *(MEMORY[0x1E695F050] + 8);
            v70 = *(MEMORY[0x1E695F050] + 16);
            v71 = *(MEMORY[0x1E695F050] + 24);
            v72 = [v4 view];
            if (!v72)
            {
              goto LABEL_42;
            }

            v73 = v72;
            v74 = [v4 view];
            v75 = objc_opt_respondsToSelector();

            if ((v75 & 1) == 0)
            {
              goto LABEL_42;
            }

            v63 = [v4 view];
            [v63 _selectionClipRect];
          }

          v68 = v64;
          v69 = v65;
          v70 = v66;
          v71 = v67;

LABEL_42:
          v103.origin.x = v68;
          v103.origin.y = v69;
          v103.size.width = v70;
          v103.size.height = v71;
          if (!CGRectIsNull(v103))
          {
            v76 = [(UITextSelectionView *)self interactionAssistant];
            v77 = [v76 view];
            v78 = [v77 textInputView];
            [v78 convertRect:self toView:{v68, v69, v70, v71}];
            v68 = v79;
            v69 = v80;
            v70 = v81;
            v71 = v82;
          }

          v31 = [(UITextSelectionView *)self caretView];
          v104.origin.x = v68;
          v104.origin.y = v69;
          v104.size.width = v70;
          v104.size.height = v71;
          r2 = v55;
          if (CGRectIsNull(v104))
          {
            x = MinX;
            v84 = rect;
          }

          else
          {
            v105.origin.x = v68;
            v105.origin.y = v69;
            v105.size.width = v70;
            v105.size.height = v71;
            if (MinX < CGRectGetMinX(v105))
            {
              v106.origin.x = v68;
              v106.origin.y = v69;
              v106.size.width = v70;
              v106.size.height = v71;
              MinX = CGRectGetMinX(v106);
            }

            x = MinX;
            v107.origin.x = MinX;
            v107.origin.y = v55;
            v107.size.width = width;
            v107.size.height = rect;
            v84 = rect;
            MaxX = CGRectGetMaxX(v107);
            v108.origin.x = v68;
            v108.origin.y = v69;
            v108.size.width = v70;
            v108.size.height = v71;
            if (MaxX > CGRectGetMaxX(v108))
            {
              v109.origin.x = v68;
              v109.origin.y = v69;
              v109.size.width = v70;
              v109.size.height = v71;
              x = CGRectGetMaxX(v109) - width;
            }
          }

          v110.origin.x = v68;
          v110.origin.y = v69;
          v110.size.width = v70;
          v110.size.height = v71;
          if (CGRectIsNull(v110))
          {
            height = v84;
            y = r2;
          }

          else
          {
            v111.origin.x = v68;
            v111.origin.y = v69;
            v111.size.width = v70;
            v111.size.height = v71;
            v115.origin.x = x;
            v115.origin.y = r2;
            v115.size.width = width;
            v115.size.height = v84;
            v112 = CGRectIntersection(v111, v115);
            x = v112.origin.x;
            y = v112.origin.y;
            width = v112.size.width;
            height = v112.size.height;
          }

          v113.origin.x = x;
          v113.origin.y = y;
          v113.size.width = width;
          v113.size.height = height;
          if (CGRectIsEmpty(v113) || (*&x & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&y & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&width & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (*&height & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            [(UITextSelectionView *)self clearCaret];
          }

          else
          {
            v88 = [(UITextSelectionView *)self dynamicCaret];
            if (v88 && (v89 = v88, [(UIView *)v31 superview], v90 = objc_claimAutoreleasedReturnValue(), v90, v89, v90))
            {
              v99[0] = MEMORY[0x1E69E9820];
              v99[1] = 3221225472;
              v99[2] = __43__UITextSelectionView_updateSelectionRects__block_invoke;
              v99[3] = &unk_1E70F3B20;
              v91 = v100;
              v100[0] = v31;
              *&v100[1] = x;
              *&v100[2] = y;
              *&v100[3] = width;
              *&v100[4] = height;
              [UIView animateWithDuration:v99 animations:0.2];
            }

            else if (self->m_caretAnimating)
            {
              v97[0] = MEMORY[0x1E69E9820];
              v97[1] = 3221225472;
              v97[2] = __43__UITextSelectionView_updateSelectionRects__block_invoke_2;
              v97[3] = &unk_1E70F3B20;
              v91 = v98;
              v98[0] = v31;
              *&v98[1] = x;
              *&v98[2] = y;
              *&v98[3] = width;
              *&v98[4] = height;
              [UIView animateWithDuration:50331648 delay:v97 options:0 animations:0.05 completion:0.0];
            }

            else
            {
              v95[0] = MEMORY[0x1E69E9820];
              v95[1] = 3221225472;
              v95[2] = __43__UITextSelectionView_updateSelectionRects__block_invoke_3;
              v95[3] = &unk_1E70F3B20;
              v91 = v96;
              v96[0] = v31;
              *&v96[1] = x;
              *&v96[2] = y;
              *&v96[3] = width;
              *&v96[4] = height;
              [UIView performWithoutAnimation:v95];
            }

            v92 = [(UIView *)v31 superview];

            if (!v92)
            {
              [(UITextSelectionView *)self addCaretToSubview];
            }

            if (m_activeCaret)
            {
              [(UITextSelectionView *)self showCaret:0];
            }

            else
            {
              [(UITextSelectionView *)self showInitialCaret];
            }

            [(UITextSelectionView *)self _setCaretBlinkAnimationEnabled:self->m_caretBlinks];
            +[UIDictationController updateLandingView];
            if (_AXSZoomTouchEnabled())
            {
              [(UIView *)v31 bounds];
              UIAccessibilityZoomFocusChanged(UIAccessibilityZoomTypeInsertionPoint, v114, v31);
            }
          }

LABEL_29:

          goto LABEL_30;
        }

        goto LABEL_30;
      }
    }

    else
    {
    }

    v24 = [(UITextSelectionView *)self selection];
    v25 = [v24 selectedRange];
    if ([v25 _isRanged])
    {
    }

    else
    {
      v26 = [(UITextSelectionView *)self forceRangeView];

      if (!v26)
      {
        goto LABEL_30;
      }
    }

    v27 = [(UITextSelectionView *)self interactionAssistant];
    v28 = [v27 textDocument];
    v29 = [UIDictationController shouldHideSelectionUIForTextView:v28];

    if (!v29)
    {
      [(UITextSelectionView *)self clearCaret];
      [(UITextSelectionView *)self installIfNecessary];
      v30 = [(UITextSelectionView *)self selection];
      v31 = [v30 selectionRects];

      if (![(UIView *)v31 count])
      {
        v32 = [(UITextSelectionView *)self selection];
        [v32 caretRect];
        v33 = [_UITextSelectionCaretRect selectionRectWithRect:?];
        v101[0] = v33;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:1];

        v31 = v34;
      }

      v35 = [(UITextSelectionView *)self rangeView];
      v36 = [v35 superview];

      if (!v36)
      {
        [(UIView *)self addSubview:v35];
      }

      [v35 setRects:v31];
      v37 = [(UITextSelectionView *)self interactionAssistant];
      v38 = [v37 view];
      v39 = [v38 textInputView];
      [v39 bounds];
      [(UIView *)self setFrame:?];

      if (self->m_shouldEmphasizeNextSelectionRects)
      {
        [v35 animateHighlighterExpanderAnimation];
        self->m_shouldEmphasizeNextSelectionRects = 0;
      }

      goto LABEL_29;
    }

LABEL_30:

    return;
  }

  [(UITextSelectionView *)self removeFromSuperview];
}

void __43__UITextSelectionView_updateSelectionRects__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 56) * 0.5;
  v3 = [*(a1 + 32) layer];
  [v3 setCornerRadius:v2];
}

void __43__UITextSelectionView_updateSelectionRects__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setFrame:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  v2 = *(a1 + 56) * 0.5;
  v3 = [*(a1 + 32) layer];
  [v3 setCornerRadius:v2];
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = UITextSelectionView;
  [(UIView *)&v4 tintColorDidChange];
  if (self->m_caretView)
  {
    v3 = [(UITextSelectionView *)self caretViewColor];
    [(UIView *)self->m_caretView setBackgroundColor:v3];
  }
}

- (void)deferredUpdateSelectionRects
{
  if (!self->m_observer && !self->m_isSuspended)
  {
    objc_initWeak(&location, self);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __51__UITextSelectionView_deferredUpdateSelectionRects__block_invoke;
    v4[3] = &unk_1E70F6870;
    objc_copyWeak(&v5, &location);
    self->m_observer = CFRunLoopObserverCreateWithHandler(0, 4uLL, 0, 0, v4);
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddObserver(Current, self->m_observer, *MEMORY[0x1E695E8D0]);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

void __51__UITextSelectionView_deferredUpdateSelectionRects__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateSelectionRectsIfNeeded];
}

- (void)updateSelectionRectsIfNeeded
{
  if (self->m_observer)
  {
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveObserver(Current, self->m_observer, *MEMORY[0x1E695E8D0]);
    CFRelease(self->m_observer);
    self->m_observer = 0;
    [(UITextSelectionView *)self updateSelectionRects];
    if (self->m_deferSelectionCommands)
    {

      [(UITextSelectionView *)self showCommandsWithReplacements:0];
    }
  }
}

- (void)updateSelectionDots
{
  if ([(UITextSelectionView *)self visible])
  {
    v3 = [(UITextSelectionView *)self selection];
    v4 = [v3 selectedRange];
    v5 = [v4 _isRanged];

    if (v5)
    {
      m_rangeView = self->m_rangeView;

      [(UITextRangeView *)m_rangeView updateDots];
    }
  }
}

- (void)appearOrFadeIfNecessary
{
  v3 = [(UITextSelectionView *)self shouldBeVisible];
  [(UIView *)self alpha];
  if (v4 != 0.0 || !v3)
  {
    [(UIView *)self alpha];
    if (v6 != 0.0 && !v3)
    {
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46__UITextSelectionView_appearOrFadeIfNecessary__block_invoke;
      v8[3] = &unk_1E70F3590;
      v8[4] = self;
      [UIView animateWithDuration:0 delay:v8 options:0 animations:0.25 completion:0.0];
    }
  }

  else
  {
    [(UIView *)self setAlpha:1.0];
    [(UITextSelectionView *)self deferredUpdateSelectionRects];
    m_rangeView = self->m_rangeView;

    [(UIView *)m_rangeView setUserInteractionEnabled:1];
  }
}

uint64_t __46__UITextSelectionView_appearOrFadeIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(*(a1 + 32) + 440) updateDots];
  v2 = *(*(a1 + 32) + 440);

  return [v2 setUserInteractionEnabled:0];
}

- (void)setVisible:(BOOL)a3
{
  v3 = a3;
  self->m_visible = a3;
  [(UITextSelectionView *)self _updateViewAnimateNotificationObservationIfNecessary];
  [(UITextSelectionView *)self appearOrFadeIfNecessary];
  v5 = v3 && self->m_caretBlinks;

  [(UITextSelectionView *)self _setCaretBlinkAnimationEnabled:v5];
}

- (void)setCaretBlinks:(BOOL)a3
{
  v3 = a3;
  if (_UIDeviceHasExternalTouchInput())
  {
    v3 = [UIApp _overridesDynamicCaret] & v3;
  }

  if (self->m_caretBlinks != v3 || !self->_caretBlinkAnimation)
  {
    self->m_caretBlinks = v3;
    if (self->m_caretShowingNow)
    {

      [(UITextSelectionView *)self _setCaretBlinkAnimationEnabled:v3];
    }
  }
}

- (void)setCaretVisible:(BOOL)a3
{
  if (self->m_caretVisible != a3)
  {
    self->m_caretVisible = a3;
    if (a3)
    {
      [(UITextSelectionView *)self addCaretToSubview];
      v4 = [(UITextSelectionView *)self selection];
      v5 = [v4 selectedRange];
      v6 = [v5 _isRanged];

      if ((v6 & 1) == 0)
      {
        [(UITextSelectionView *)self showCaret:0];
      }

      [(UITextSelectionView *)self updateSelectionDots];
    }

    else
    {

      [(UITextSelectionView *)self clearCaret];
    }
  }
}

- (void)setGhostAppearance:(BOOL)a3
{
  if (self->m_ghostApperarance != a3)
  {
    self->m_ghostApperarance = a3;
    v5 = [(UITextSelectionView *)self caretViewColor];
    [(UIView *)self->m_caretView setBackgroundColor:v5];
  }
}

- (BOOL)_updateEditMenuPositionForPreferredArrowDirection:(int64_t)a3 replacements:(id)a4
{
  v6 = a4;
  if ([(UITextSelectionView *)self _editMenuIsVisible])
  {
    [(UITextSelectionView *)self _presentEditMenuWithPreferredDirection:a3 replacements:v6];
  }

  return 1;
}

- (void)_showCommandsWithReplacements:(id)a3 forDictation:(BOOL)a4 afterDelay:(double)a5
{
  v8 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__UITextSelectionView__showCommandsWithReplacements_forDictation_afterDelay___block_invoke;
  aBlock[3] = &unk_1E70F5AF0;
  aBlock[4] = self;
  v9 = v8;
  v18 = v9;
  v19 = a4;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (a5 == 0.0)
  {
    (*(v10 + 2))(v10);
  }

  else
  {
    m_delayShowingCommands = self->m_delayShowingCommands;
    v13 = dispatch_time(0, (a5 * 1000000000.0));
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__UITextSelectionView__showCommandsWithReplacements_forDictation_afterDelay___block_invoke_3;
    v14[3] = &unk_1E70FD0C8;
    v16 = m_delayShowingCommands;
    v14[4] = self;
    v15 = v11;
    dispatch_after(v13, MEMORY[0x1E69E96A0], v14);
  }
}

void __77__UITextSelectionView__showCommandsWithReplacements_forDictation_afterDelay___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interactionAssistant];
  v3 = [v2 view];

  if ([*(a1 + 32) _viewUsesAsynchronousProtocol] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __77__UITextSelectionView__showCommandsWithReplacements_forDictation_afterDelay___block_invoke_2;
    v5[3] = &unk_1E71049E0;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v6 = v4;
    v7 = *(a1 + 48);
    [v3 requestPreferredArrowDirectionForEditMenuWithCompletionHandler:v5];
  }

  else
  {
    [*(a1 + 32) _showCommandsWithReplacements:*(a1 + 40) isForContextMenu:0 forDictation:*(a1 + 48) arrowDirection:0];
  }
}

uint64_t __77__UITextSelectionView__showCommandsWithReplacements_forDictation_afterDelay___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  return [*(a1 + 32) _showCommandsWithReplacements:*(a1 + 40) isForContextMenu:0 forDictation:*(a1 + 48) arrowDirection:v2];
}

uint64_t __77__UITextSelectionView__showCommandsWithReplacements_forDictation_afterDelay___block_invoke_3(uint64_t result)
{
  if (*(result + 48) == *(*(result + 32) + 456))
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

- (void)_showCommandsWithReplacements:(id)a3 isForContextMenu:(BOOL)a4 forDictation:(BOOL)a5 arrowDirection:(int64_t)a6
{
  v7 = a5;
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  self->m_showingCommandsCounter = 0;
  self->m_showingCommandsCounterForRotate = 0;
  v11 = [(UITextSelectionView *)self interactionAssistant];
  v12 = [v11 textDocument];
  v13 = [UIDictationController shouldHideSelectionUIForTextView:v12];
  if ((v13 & 1) == 0 && !a4)
  {
    v14 = [(UITextSelectionView *)self interactionAssistant];
    v13 = [v14 shouldSuppressSelectionCommands];
  }

  if ((v13 & 1) == 0)
  {
    [(UITextSelectionView *)self cancelDelayedCommandRequests];
    if ([(UITextSelectionView *)self selectionCommandsShowing])
    {
      if (![(UITextSelectionView *)self _updateEditMenuPositionForPreferredArrowDirection:a6 replacements:v10])
      {
        [(UITextSelectionView *)self hideSelectionCommands];
      }
    }

    else
    {
      v15 = +[UIKeyboardImpl activeInstance];
      v16 = [v15 hasMarkedText];

      if ((v16 & 1) == 0)
      {
        v17 = [v10 indexOfObjectPassingTest:&__block_literal_global_608];
        v18 = +[UIKeyboardImpl activeInstance];
        v19 = [v18 isPredictionViewControllerVisible];

        if (v7 && v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = +[UIDevice currentDevice];
          v21 = [v20 userInterfaceIdiom];

          if ((v21 & 0xFFFFFFFFFFFFFFFBLL) != 1 && (([v10 count] != 0) & v19) == 1)
          {
            v22 = +[UIKeyboardImpl activeInstance];
            v31 = [v22 autocorrectionController];

            v23 = [MEMORY[0x1E695DF70] array];
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v24 = v10;
            v25 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v33;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v33 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = [UITextReplacementCandidate textReplacementCandidateForTextReplacement:*(*(&v32 + 1) + 8 * i)];
                  [v23 addObject:v29];
                }

                v26 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
              }

              while (v26);
            }

            v30 = [MEMORY[0x1E69D9570] listWithAutocorrection:0 predictions:v23];
            [v31 setAutocorrectionList:v30];
          }
        }

        [(UITextSelectionView *)self _presentEditMenuWithPreferredDirection:a6 replacements:v10];
      }
    }
  }
}

- (id)_editMenuSourceWindow
{
  v3 = [(UIView *)self keyboardSceneDelegate];
  v4 = [v3 containerWindow];

  v5 = [(UIView *)self window];
  v6 = [v5 _isRemoteKeyboardWindow];

  if (v6)
  {
    v7 = [(UIView *)self window];

    v4 = v7;
  }

  return v4;
}

- (id)menuInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->m_interactionAssistant);
  v3 = [WeakRetained _editMenuAssistant];
  v4 = [v3 menuInteraction];

  return v4;
}

- (BOOL)_editMenuIsVisible
{
  WeakRetained = objc_loadWeakRetained(&self->m_interactionAssistant);
  v3 = [WeakRetained _editMenuAssistant];
  v4 = [v3 _editMenuIsVisible];

  return v4;
}

- (void)_presentEditMenuWithPreferredDirection:(int64_t)a3 replacements:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->m_interactionAssistant);
  v7 = [WeakRetained _editMenuAssistant];
  [v7 _presentEditMenuWithPreferredDirection:a3 replacements:v6];
}

- (void)updateSelectionCommands
{
  if ([(UITextSelectionView *)self selectionCommandsShowing])
  {
    v3 = [(UITextSelectionView *)self interactionAssistant];
    v4 = [v3 view];

    if ([(UITextSelectionView *)self _viewUsesAsynchronousProtocol]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __46__UITextSelectionView_updateSelectionCommands__block_invoke;
      v6[3] = &unk_1E70F5DB8;
      v6[4] = self;
      [v4 requestPreferredArrowDirectionForEditMenuWithCompletionHandler:v6];
    }

    else
    {
      v5 = [(UITextSelectionView *)self replacements];
      [(UITextSelectionView *)self _updateEditMenuPositionForPreferredArrowDirection:0 replacements:v5];
    }
  }
}

void __46__UITextSelectionView_updateSelectionCommands__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if ((a2 - 1) >= 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = a2;
  }

  v4 = [*(a1 + 32) replacements];
  [v2 _updateEditMenuPositionForPreferredArrowDirection:v3 replacements:v4];
}

- (void)cancelDelayedCommandRequests
{
  self->m_delayShowingCommands = 0;
  self->m_deferSelectionCommands = 0;
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  hideSelectionCommandsWorkItem = self->_hideSelectionCommandsWorkItem;
  if (hideSelectionCommandsWorkItem)
  {
    dispatch_block_cancel(hideSelectionCommandsWorkItem);
    v4 = self->_hideSelectionCommandsWorkItem;
    self->_hideSelectionCommandsWorkItem = 0;
  }
}

- (void)showCalloutBarAfterDelay:(double)a3
{
  WeakRetained = objc_loadWeakRetained(&self->m_interactionAssistant);
  v11 = [WeakRetained _editMenuAssistant];

  if (![v11 _editMenuDismissedRecently] || objc_msgSend(v11, "_editMenuDismissedByActionSelection"))
  {
    [(UITextSelectionView *)self cancelDelayedCommandRequests];
    self->m_delayShowingCommands = 1;
    v6 = [(UITextSelectionView *)self replacements];
    [(UITextSelectionView *)self _showCommandsWithReplacements:v6 forDictation:0 afterDelay:a3];

    v7 = [(UITextSelectionView *)self replacements];
    v8 = [v7 count];

    if (v8)
    {
      if (self->m_dictationReplacementsMode)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 0;
    }

    v10 = [(UITextSelectionView *)self rangeView];
    [v10 setMode:v9];
  }
}

- (void)showSelectionCommandsAfterDelay:(double)a3
{
  v5 = [(UITextSelectionView *)self interactionAssistant];
  v6 = [v5 textDocument];
  v7 = [UIDictationController shouldHideSelectionUIForTextView:v6];

  if (!v7)
  {
    [(UITextSelectionView *)self setReplacements:0];

    [(UITextSelectionView *)self showCalloutBarAfterDelay:a3];
  }
}

- (void)updateRangeViewForSelectionMode
{
  v2 = [(UITextSelectionView *)self rangeView];
  [v2 setMode:0];
}

- (void)_showSelectionCommandsForContextMenu:(BOOL)a3
{
  v3 = a3;
  v5 = [(UITextSelectionView *)self interactionAssistant];
  v6 = [v5 textDocument];
  v7 = [UIDictationController shouldHideSelectionUIForTextView:v6];

  if (!v7)
  {
    v8 = [(UITextSelectionView *)self selection];
    v9 = [v8 isCommitting];

    if (v9)
    {
      [(UITextSelectionView *)self showCommandsWithReplacements:0];
    }

    else if (v3)
    {
      [(UITextSelectionView *)self _showCommandsWithReplacements:0 isForContextMenu:1 forDictation:self->m_dictationReplacementsMode arrowDirection:0];
    }

    else
    {
      [(UITextSelectionView *)self deferredUpdateSelectionCommands];
    }

    self->m_dictationReplacementsMode = 0;

    [(UITextSelectionView *)self updateRangeViewForSelectionMode];
  }
}

- (void)calculateReplacementsWithGenerator:(id)a3 andShowAfterDelay:(double)a4
{
  v6 = [a3 replacements];
  if ([v6 count])
  {
    [(UITextSelectionView *)self _showCommandsWithReplacements:v6 forDictation:0 afterDelay:a4];
  }
}

- (void)showReplacementsWithGenerator:(id)a3 forDictation:(BOOL)a4 afterDelay:(double)a5
{
  v6 = a4;
  v8 = a3;
  [(UITextSelectionView *)self cancelDelayedCommandRequests];
  self->m_dictationReplacementsMode = v6;
  if (v6)
  {
    v9 = 0;
    v10 = 3;
  }

  else
  {
    v11 = [v8 isStringToReplaceMisspelled];
    v9 = v11;
    if (v11)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }
  }

  v12 = [(UITextSelectionView *)self rangeView];
  [v12 setMode:v10];

  if ((v9 & 1) != 0 || v6)
  {
    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 postNotificationName:@"UIKeyboardPredictionsAvailable" object:0];
  }

  v14 = [(UITextSelectionView *)self interactionAssistant];
  v15 = [v14 view];
  v16 = [v15 conformsToProtocol:&unk_1F016CC30];

  if (v16)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __77__UITextSelectionView_showReplacementsWithGenerator_forDictation_afterDelay___block_invoke;
    v24 = &unk_1E70FD1B8;
    v25 = self;
    v26 = v8;
    v17 = _Block_copy(&v21);
    v18 = [UIKeyboardImpl sharedInstance:v21];
    v19 = [v18 taskQueue];
    v20 = [v19 scheduleTask:v17 timeInterval:0 repeats:a5];
  }

  else
  {
    [(UITextSelectionView *)self calculateReplacementsWithGenerator:v8 andShowAfterDelay:a5];
  }
}

void __77__UITextSelectionView_showReplacementsWithGenerator_forDictation_afterDelay___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 calculateReplacementsWithGenerator:v3 andShowAfterDelay:0.0];
  [v4 returnExecutionToParent];
}

- (void)hideSelectionCommandsAfterDelay:(double)a3 reason:(int64_t)a4
{
  [(UITextSelectionView *)self cancelDelayedCommandRequests];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__UITextSelectionView_hideSelectionCommandsAfterDelay_reason___block_invoke;
  v12[3] = &unk_1E70F32F0;
  v12[4] = self;
  v12[5] = a4;
  v7 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v12);
  v8 = v7;
  if (a3 == 0.0)
  {
    v7[2](v7);
  }

  else
  {
    v9 = _Block_copy(v7);
    hideSelectionCommandsWorkItem = self->_hideSelectionCommandsWorkItem;
    self->_hideSelectionCommandsWorkItem = v9;

    v11 = dispatch_time(0, (a3 * 1000000000.0));
    dispatch_after(v11, MEMORY[0x1E69E96A0], v8);
  }
}

- (void)_hideSelectionCommandsWithReason:(int64_t)a3
{
  [(UITextSelectionView *)self cancelDelayedCommandRequests];
  v5 = [(UITextSelectionView *)self menuInteraction];
  [v5 dismissSelectionCommandsWithReason:a3];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UITextSelectionView *)self dynamicCaret];

  if (!v8 || (-[UITextSelectionView caretView](self, "caretView"), v9 = objc_claimAutoreleasedReturnValue(), -[UITextSelectionView caretView](self, "caretView"), v10 = objc_claimAutoreleasedReturnValue(), [v10 _window], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "convertPoint:fromView:", self, x, y), objc_msgSend(v9, "convertPoint:fromView:", 0), v13 = v12, v15 = v14, v11, v10, v9, -[UITextSelectionView caretView](self, "caretView"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "hitTest:withEvent:", v7, v13, v15), v17 = objc_claimAutoreleasedReturnValue(), v16, !v17))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = ![(UITextSelectionView *)self shouldSuppressSelectionHandles];
    }

    else
    {
      LOBYTE(v18) = 1;
    }

    v19 = [(UITextSelectionView *)self selection];
    v20 = [v19 selectedRange];
    if ([v20 _isRanged])
    {
      v21 = [(UIView *)self->m_rangeView _window];
      v22 = (v21 != 0) & v18;

      if (v22 == 1)
      {
        m_rangeView = self->m_rangeView;
        v24 = [(UIView *)m_rangeView _window];
        [v24 convertPoint:self fromView:{x, y}];
        [(UIView *)m_rangeView convertPoint:0 fromView:?];
        v26 = v25;
        v28 = v27;

        v17 = [(UIView *)self->m_rangeView hitTest:v7 withEvent:v26, v28];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v17 = 0;
  }

LABEL_11:

  return v17;
}

- (void)configureForSelectionMode
{
  v2 = [(UITextSelectionView *)self rangeView];
  [v2 setMode:0];
}

- (void)configureForHighlightMode
{
  v2 = [(UITextSelectionView *)self rangeView];
  [v2 setMode:1];
}

- (void)configureForReplacementMode
{
  if (self->m_dictationReplacementsMode)
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  v3 = [(UITextSelectionView *)self rangeView];
  [v3 setMode:v2];
}

- (void)configureForPencilHighlightMode
{
  v2 = [(UITextSelectionView *)self rangeView];
  [v2 setMode:4];
}

- (void)configureForPencilDeletionPreviewMode
{
  v2 = [(UITextSelectionView *)self rangeView];
  [v2 setMode:5];
}

- (void)clearCaret
{
  self->m_activeCaret = 0;
  [(UITextSelectionView *)self hideCaret:0];
  v3 = [(UITextSelectionView *)self caretView];
  [v3 removeFromSuperview];

  if (self->m_caretAnimating)
  {

    [(UITextSelectionView *)self endFloatingCursor];
  }
}

- (void)_hideCaret:(int)a3
{
  switch(a3)
  {
    case 2:
      if (!self->m_caretShowingNow)
      {
        break;
      }

      v7 = MEMORY[0x1E69E9820];
      v8 = 3221225472;
      v9 = __34__UITextSelectionView__hideCaret___block_invoke_2;
      v10 = &unk_1E70F3590;
      v11 = self;
      v5 = 0.15;
      v6 = &v7;
      goto LABEL_9;
    case 1:
      if (!self->m_caretShowingNow)
      {
        break;
      }

      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __34__UITextSelectionView__hideCaret___block_invoke;
      v15 = &unk_1E70F3590;
      v16 = self;
      v5 = 0.25;
      v6 = &v12;
LABEL_9:
      [UIView animateWithDuration:117440512 delay:v6 options:0 animations:v5 completion:0.0, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16];
      break;
    case 0:
      v4 = [(UITextSelectionView *)self caretView];
      [v4 setAlpha:0.0];

      break;
  }

  self->m_caretShowingNow = 0;
}

void __34__UITextSelectionView__hideCaret___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) caretView];
  [v1 setAlpha:0.0];
}

void __34__UITextSelectionView__hideCaret___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) caretView];
  [v1 setAlpha:0.0];
}

- (void)animateBoxShrinkOn:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  [v3 frame];
  v5 = v4;
  v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v6 setFrameInterval:0.0166666667];
  [v6 setDuration:0.125];
  [v6 setFillMode:*MEMORY[0x1E69797E0]];
  v7 = [v6 keyPath];
  [v3 addAnimation:v6 forKey:v7];

  LODWORD(v8) = 1.0;
  [v3 setOpacity:v8];
  v9 = [MEMORY[0x1E6979390] animationWithKeyPath:@"bounds.size.width"];
  [v9 setFrameInterval:0.0166666667];
  [v9 setDuration:0.125];
  v10 = *MEMORY[0x1E69797D8];
  [v9 setFillMode:*MEMORY[0x1E69797D8]];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v5 * 7.0];
  v20[0] = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v20[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  [v9 setValues:v13];

  v14 = [v9 keyPath];
  [v3 addAnimation:v9 forKey:v14];

  v15 = [MEMORY[0x1E6979390] animationWithKeyPath:@"position.x"];
  [v15 setFrameInterval:0.0166666667];
  [v15 setDuration:0.125];
  [v15 setFillMode:v10];
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v5 * 7.0 * 0.5];
  v19[0] = v16;
  v19[1] = &unk_1EFE33658;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  [v15 setValues:v17];

  [v15 setAdditive:1];
  v18 = [v15 keyPath];
  [v3 addAnimation:v15 forKey:v18];
}

- (void)animateExpanderOn:(id)a3
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = a3;
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v28 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  [v28 setFrameInterval:0.0166666667];
  [v28 setDuration:0.125];
  v8 = *MEMORY[0x1E69797D8];
  [v28 setFillMode:*MEMORY[0x1E69797D8]];
  [v28 setValues:&unk_1EFE2DA68];
  v9 = [v28 keyPath];
  [v3 addAnimation:v28 forKey:v9];

  LODWORD(v10) = 1.0;
  [v3 setOpacity:v10];
  v11 = [MEMORY[0x1E6979390] animationWithKeyPath:@"bounds.size.width"];
  [v11 setFrameInterval:0.0166666667];
  v12 = *MEMORY[0x1E6979598];
  [v11 setCalculationMode:*MEMORY[0x1E6979598]];
  [v11 setDuration:0.300000012];
  [v11 setFillMode:v8];
  [v11 setKeyTimes:&unk_1EFE2DA80];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v30[0] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v5 * 3.5];
  v30[1] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:v5 * 0.5];
  v30[2] = v15;
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v30[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  [v11 setValues:v17];

  v18 = [v11 keyPath];
  [v3 addAnimation:v11 forKey:v18];

  v19 = [MEMORY[0x1E6979390] animationWithKeyPath:@"bounds.size.height"];
  [v19 setFrameInterval:0.0166666667];
  [v19 setCalculationMode:v12];
  [v19 setDuration:0.300000012];
  [v19 setFillMode:v8];
  [v19 setKeyTimes:&unk_1EFE2DA98];
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * 0.1];
  v29[0] = v20;
  v21 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * 1.25];
  v29[1] = v21;
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:v7 * 0.75];
  v29[2] = v22;
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v29[3] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v19 setValues:v24];

  v25 = [v19 keyPath];
  [v3 addAnimation:v19 forKey:v25];

  v26 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  [v26 setFrameInterval:0.0166666667];
  [v26 setDuration:0.600000024];
  [v26 setFillMode:v8];
  [v26 setValues:&unk_1EFE2DAB0];
  [v26 setKeyTimes:&unk_1EFE2DAC8];
  [v26 setBeginTime:0.0925];
  v27 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v26 setTimingFunction:v27];

  [v3 addAnimation:v26 forKey:@"opacity2"];
}

- (void)showInitialCaret
{
  if ([(UITextSelectionView *)self visible]&& !self->m_caretAnimating && self->m_caretVisible)
  {
    v3 = [(UIView *)self keyboardSceneDelegate];
    v4 = [v3 containerWindow];
    v5 = [v4 _isFullscreen];

    if (v5)
    {

      [(UITextSelectionView *)self showCaret:0];
    }

    else
    {
      [(UITextSelectionView *)self _setCaretBlinkAnimationEnabled:self->m_caretBlinks];
      self->m_activeCaret = 1;
    }
  }
}

- (void)showCaret:(int)a3
{
  v3 = *&a3;
  if ([(UITextSelectionView *)self visible]&& !self->m_caretAnimating && self->m_caretVisible)
  {

    [(UITextSelectionView *)self _showCaret:v3];
  }
}

- (void)_showCaret:(int)a3
{
  switch(a3)
  {
    case 2:
      if (self->m_caretShowingNow)
      {
        break;
      }

      v6 = MEMORY[0x1E69E9820];
      v7 = 3221225472;
      v8 = __34__UITextSelectionView__showCaret___block_invoke_2;
      v9 = &unk_1E70F3590;
      v10 = self;
      v5 = &v6;
      goto LABEL_9;
    case 1:
      if (self->m_caretShowingNow)
      {
        break;
      }

      v11 = MEMORY[0x1E69E9820];
      v12 = 3221225472;
      v13 = __34__UITextSelectionView__showCaret___block_invoke;
      v14 = &unk_1E70F3590;
      v15 = self;
      v5 = &v11;
LABEL_9:
      [UIView animateWithDuration:117440512 delay:v5 options:0 animations:0.15 completion:0.0, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15];
      break;
    case 0:
      v4 = [(UITextSelectionView *)self caretView];
      [v4 setAlpha:1.0];

      break;
  }

  self->m_caretShowingNow = 1;
  self->m_activeCaret = 1;
}

void __34__UITextSelectionView__showCaret___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) caretView];
  [v1 setAlpha:1.0];
}

void __34__UITextSelectionView__showCaret___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) caretView];
  [v1 setAlpha:1.0];
}

- (void)_setCaretBlinkAnimationEnabled:(BOOL)a3
{
  if (a3 && [(UITextSelectionView *)self visible])
  {
    if (!self->_caretBlinkAnimation)
    {
      v4 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
      caretBlinkAnimation = self->_caretBlinkAnimation;
      self->_caretBlinkAnimation = v4;

      [(CAKeyframeAnimation *)self->_caretBlinkAnimation setCalculationMode:*MEMORY[0x1E69795A0]];
      [(CAKeyframeAnimation *)self->_caretBlinkAnimation setValues:&unk_1EFE2DAE0];
      [(CAKeyframeAnimation *)self->_caretBlinkAnimation setKeyTimes:&unk_1EFE2DAF8];
      [(CAKeyframeAnimation *)self->_caretBlinkAnimation setDuration:1.0];
      LODWORD(v6) = 2139095039;
      [(CAKeyframeAnimation *)self->_caretBlinkAnimation setRepeatCount:v6];
    }

    v10 = [(UIView *)self->m_caretView layer];
    [(CAKeyframeAnimation *)v10 addAnimation:self->_caretBlinkAnimation forKey:@"UITextSelectionViewCaretBlinkAnimation"];
    v7 = v10;
  }

  else
  {
    if (!self->_caretBlinkAnimation)
    {
      return;
    }

    v8 = [(UIView *)self->m_floatingCaretView layer];
    [v8 removeAnimationForKey:@"UITextSelectionViewCaretBlinkAnimation"];

    v9 = [(UIView *)self->m_caretView layer];
    [v9 removeAnimationForKey:@"UITextSelectionViewCaretBlinkAnimation"];

    v7 = self->_caretBlinkAnimation;
    self->_caretBlinkAnimation = 0;
  }
}

id __42__UITextSelectionView_ghostCaretViewColor__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  v3 = 0.0;
  if (v2 == 2)
  {
    v3 = 1.0;
  }

  v4 = [UIColor colorWithWhite:v3 alpha:0.3];

  return v4;
}

- (id)caretViewColor
{
  if (self->m_ghostApperarance)
  {
    v3 = [(UITextSelectionView *)self ghostCaretViewColor];
  }

  else
  {
    v4 = [(UITextSelectionView *)self interactionAssistant];
    v5 = [v4 view];
    if (objc_opt_respondsToSelector())
    {
      v6 = [(UITextSelectionView *)self interactionAssistant];
      v7 = [v6 view];
      v3 = [v7 insertionPointColor];
    }

    else
    {
      v3 = +[UIColor insertionPointColor];
    }
  }

  return v3;
}

- (void)addCaretToSubview
{
  v3 = [(UITextSelectionView *)self caretView];
  [(UIView *)self addSubview:v3];
}

- (UIView)caretView
{
  if (!self->m_caretView)
  {
    if (_UIDeviceHasExternalTouchInput() && ([UIApp _overridesDynamicCaret] & 1) == 0)
    {
      v8 = [UIDynamicCaret alloc];
      v9 = [(UIDynamicCaret *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      m_caretView = self->m_caretView;
      self->m_caretView = v9;

      [(UIView *)self setUserInteractionEnabled:1];
    }

    else
    {
      v3 = [UIView alloc];
      v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      v5 = self->m_caretView;
      self->m_caretView = v4;

      [(UIView *)self->m_caretView setUserInteractionEnabled:0];
      v6 = [(UITextSelectionView *)self caretViewColor];
      [(UIView *)self->m_caretView setBackgroundColor:v6];

      [(UIView *)self->m_caretView setAlpha:0.0];
      v7 = [(UIView *)self->m_caretView layer];
      [v7 setCornerRadius:1.0];
    }
  }

  v11 = self->m_caretView;

  return v11;
}

- (void)beginFloatingCaretView
{
  v3 = [UIView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(UIView *)v4 setUserInteractionEnabled:0];
  v5 = [(UITextSelectionView *)self ghostCaretViewColor];
  [(UIView *)v4 setBackgroundColor:v5];

  v6 = [(UIView *)v4 layer];
  [v6 setCornerRadius:1.0];

  v7 = [(UITextSelectionView *)self caretView];
  v8 = [v7 superview];

  if (v8)
  {
    [(UIView *)self->m_caretView frame];
    [(UIView *)v4 setFrame:?];
    v9 = [(UIView *)self->m_caretView layer];
    [v9 cornerRadius];
    v11 = v10;
    v12 = [(UIView *)v4 layer];
    [v12 setCornerRadius:v11];

    [(UIView *)self addSubview:v4];
  }

  [(UIView *)self->m_floatingCaretView removeFromSuperview];
  objc_storeStrong(&self->m_floatingCaretView, self->m_caretView);
  m_caretView = self->m_caretView;
  self->m_caretView = v4;
  v14 = v4;

  v15 = [(UITextSelectionView *)self floatingCaretView];
  v16 = [v15 superview];

  if (!v16)
  {
    v17 = [(UITextSelectionView *)self selection];
    v18 = [v17 selectedRange];
    v19 = [v18 start];

    if (v19)
    {
      v20 = [(UITextSelectionView *)self selection];
      v21 = [v20 document];
      [v21 caretRectForPosition:v19];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      v30 = [(UITextSelectionView *)self floatingCaretView];
      [v30 setFrame:{v23, v25, v27, v29}];

      v31 = [(UITextSelectionView *)self floatingCaretView];
      v32 = [v31 layer];
      [v32 setCornerRadius:v27 * 0.5];
    }

    v33 = [(UITextSelectionView *)self floatingCaretView];
    [(UIView *)self addSubview:v33];
  }

  v34 = [(UITextSelectionView *)self floatingCaretViewColor];
  [(UIView *)self->m_floatingCaretView setBackgroundColor:v34];

  [(UIView *)self->m_floatingCaretView bounds];
  v35 = [UIBezierPath bezierPathWithRect:?];
  v36 = [v35 CGPath];
  v37 = [(UIView *)self->m_floatingCaretView layer];
  [v37 setShadowPath:v36];

  v38 = [UIColor colorWithRed:0.274509804 green:0.431372549 blue:0.725490196 alpha:1.0];
  v39 = [v38 CGColor];
  v40 = [(UIView *)self->m_floatingCaretView layer];
  [v40 setShadowColor:v39];

  v41 = [(UIView *)self->m_floatingCaretView layer];
  [v41 setShadowOffset:{0.0, 10.0}];

  v42 = [(UIView *)self->m_floatingCaretView layer];
  [v42 setShadowRadius:3.0];

  v44 = [(UIView *)self->m_floatingCaretView layer];

  LODWORD(v43) = 1051931443;
  [v44 setShadowOpacity:v43];
}

- (void)animatePulsingIndirectCaret:(id)a3
{
  v3 = MEMORY[0x1E69794A8];
  v4 = a3;
  v8 = [v3 animationWithKeyPath:@"transform.scale"];
  [v8 setFrameInterval:0.0166666667];
  v5 = *MEMORY[0x1E69797D8];
  [v8 setFillMode:*MEMORY[0x1E69797D8]];
  [v8 setFromValue:&unk_1EFE33658];
  [v8 setToValue:&unk_1EFE2EEC8];
  [v8 setAdditive:1];
  [v8 setMass:1.0];
  [v8 setStiffness:734.0];
  [v8 setDamping:33.0];
  v6 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"transform.scale"];
  [v6 setFrameInterval:0.0166666667];
  [v6 setFillMode:v5];
  [v6 setFromValue:&unk_1EFE33658];
  [v6 setToValue:&unk_1EFE2EF78];
  [v6 setAdditive:1];
  [v6 setMass:1.0];
  [v6 setStiffness:155.0];
  [v6 setDamping:14.0];
  [v6 settlingDuration];
  [v6 setDuration:?];
  [v6 setBeginTime:CACurrentMediaTime() + 0.12];
  [v6 settlingDuration];
  [v8 setDuration:v7 + 0.12];
  [v4 addAnimation:v6 forKey:0];
  [v4 addAnimation:v8 forKey:0];
}

- (void)animatePulsingDirectCaret:(id)a3
{
  v3 = a3;
  [v3 bounds];
  v5 = v4;
  [v3 bounds];
  v7 = v6;
  v12 = [MEMORY[0x1E69794A8] animationWithKeyPath:@"bounds"];
  [v12 setFillMode:*MEMORY[0x1E69797D8]];
  v8 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v7, v5}];
  [v12 setFromValue:v8];

  v9 = v7 * 1.5;
  v10 = v5 * 1.8;
  v11 = [MEMORY[0x1E696B098] valueWithCGRect:{0.0, 0.0, v9, v10}];
  [v12 setToValue:v11];

  [v12 setMass:1.0];
  [v12 setStiffness:300.0];
  [v12 setDamping:25.82];
  [v12 settlingDuration];
  [v12 setDuration:?];
  [v3 addAnimation:v12 forKey:@"bounds"];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [v3 setBounds:{0.0, 0.0, v9, v10}];

  [MEMORY[0x1E6979518] setDisableActions:0];
}

- (void)willBeginFloatingCursor:(BOOL)a3
{
  v3 = a3;
  [(UIView *)self->m_caretView frame];
  [(UITextSelectionView *)self setStashedCaretRect:?];
  [(UIView *)self->m_caretView frame];
  [(UITextSelectionView *)self setPreviousGhostCaretRect:?];

  [(UITextSelectionView *)self setIsIndirectFloatingCaret:v3];
}

- (void)beginFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(UITextSelectionView *)self selection];
  v7 = [v6 selectedRange];

  if (!v7)
  {
    return;
  }

  v8 = [(UITextSelectionView *)self floatingCaretView];
  if (v8)
  {
    m_caretAnimating = self->m_caretAnimating;

    if (m_caretAnimating)
    {
      return;
    }
  }

  v10 = [(UITextSelectionView *)self caretView];
  [v10 frame];
  IsEmpty = CGRectIsEmpty(v21);

  if (IsEmpty)
  {
    [(UITextSelectionView *)self updateSelectionRects];
  }

  [(UITextSelectionView *)self hideSelectionCommands];
  [(UITextSelectionView *)self showCaret:0];
  self->m_caretAnimating = 1;
  v12 = [(UITextSelectionView *)self interactionAssistant];
  v13 = [v12 _assertionController];
  v14 = [v13 nonBlinkingAssertionWithReason:@"Floating cursor"];
  floatingCaretBlinkAssertion = self->_floatingCaretBlinkAssertion;
  self->_floatingCaretBlinkAssertion = v14;

  [(UITextSelectionView *)self beginFloatingCaretView];
  v16 = [(UITextSelectionView *)self selection];
  if (![v16 granularity])
  {

LABEL_11:
    [MEMORY[0x1E6979518] begin];
    if ([(UITextSelectionView *)self isIndirectFloatingCaret]|| [(UITextSelectionView *)self _shouldUseIndirectFloatingCaret])
    {
      v18 = [(UITextSelectionView *)self floatingCaretView];
      v19 = [v18 layer];
      [(UITextSelectionView *)self animatePulsingIndirectCaret:v19];
    }

    [MEMORY[0x1E6979518] commit];
    goto LABEL_15;
  }

  m_shouldEmphasizeNextSelectionRects = self->m_shouldEmphasizeNextSelectionRects;

  if (!m_shouldEmphasizeNextSelectionRects)
  {
    goto LABEL_11;
  }

LABEL_15:

  [(UITextSelectionView *)self updateFloatingCursorAtPoint:x, y];
}

- (CGPoint)floatingCursorPositionForPoint:(CGPoint)a3
{
  [(UITextSelectionView *)self floatingCursorPositionForPoint:1 lineSnapping:a3.x, a3.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)floatingCursorPositionForPoint:(CGPoint)a3 lineSnapping:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = [(UITextSelectionView *)self interactionAssistant];
  v9 = [v8 view];
  v10 = objc_opt_respondsToSelector();

  v11 = [(UITextSelectionView *)self interactionAssistant];
  v12 = [v11 view];
  v13 = v12;
  if (v10)
  {
    [v12 _selectionClipRect];
LABEL_5:
    v19 = v14;
    v20 = v15;
    v21 = v16;
    v22 = v17;

    goto LABEL_7;
  }

  v18 = objc_opt_respondsToSelector();

  if (v18)
  {
    v11 = [(UITextSelectionView *)self interactionAssistant];
    v13 = [v11 view];
    [v13 selectionClipRect];
    goto LABEL_5;
  }

  v19 = *MEMORY[0x1E695F050];
  v20 = *(MEMORY[0x1E695F050] + 8);
  v21 = *(MEMORY[0x1E695F050] + 16);
  v22 = *(MEMORY[0x1E695F050] + 24);
LABEL_7:
  v56.origin.x = v19;
  v56.origin.y = v20;
  v56.size.width = v21;
  v56.size.height = v22;
  if (CGRectIsNull(v56))
  {
    v23 = [(UITextSelectionView *)self interactionAssistant];
    v24 = [v23 view];
    v25 = [v24 textInputView];
    [v25 bounds];
    v19 = v26;
    v20 = v27;
    v21 = v28;
    v22 = v29;
  }

  v30 = [(UITextSelectionView *)self interactionAssistant];
  v31 = [v30 view];
  v32 = [v31 textInputView];
  [(UIView *)self convertRect:v32 fromView:v19, v20, v21, v22];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  v41 = [(UITextSelectionView *)self floatingCaretView];
  [v41 frame];
  v43 = v42 * 0.5;

  v44 = [(UITextSelectionView *)self floatingCaretView];
  [v44 frame];
  v46 = v45 * 0.5;

  v47 = v38 - (v43 + v43);
  v48 = v40 - (v46 + v46);
  if (v47 >= 0.0)
  {
    if (x >= v34 + v43)
    {
      v49 = v34 + v43 + v47;
      if (x > v49)
      {
        x = v49;
      }
    }

    else
    {
      x = v34 + v43;
    }
  }

  if (v48 >= 0.0)
  {
    if (y >= v36 + v46)
    {
      v50 = v36 + v46 + v48;
      if (y > v50)
      {
        y = v50;
      }
    }

    else
    {
      y = v36 + v46;
    }
  }

  if (v4)
  {
    [(UIView *)self->m_caretView frame];
    y = v52 + v51 * 0.5 + (y - (v52 + v51 * 0.5)) * 0.3;
  }

  v53 = x;
  v54 = y;
  result.y = v54;
  result.x = v53;
  return result;
}

- (void)updateFloatingCursorAtPoint:(CGPoint)a3 animated:(BOOL)a4
{
  v4 = a4;
  self->m_caretAnimating = 1;
  [(UITextSelectionView *)self floatingCursorPositionForPoint:a3.x, a3.y];
  v7 = v6;
  v9 = v8;
  v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v11 = [v10 preferencesActions];
  v12 = [v11 BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

  if (v12)
  {
    [(UIView *)self->m_caretView frame];
    if ([(UITextSelectionView *)self point:v7 isNearCursorRect:v9, v13, v14, v15, v16])
    {
      if (self->m_caretShowingNow)
      {
        [(UITextSelectionView *)self _hideCaret:2];
      }
    }

    else if (!self->m_caretShowingNow)
    {
      [(UITextSelectionView *)self _showCaret:2];
    }

    [(UITextSelectionView *)self previousGhostCaretRect];
    CGRectGetMidY(v22);
    if (v4)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __60__UITextSelectionView_updateFloatingCursorAtPoint_animated___block_invoke;
      v20[3] = &unk_1E70F6848;
      v20[4] = self;
      *&v20[5] = v7;
      *&v20[6] = v9;
      [UIView _animateUsingDefaultDampedSpringWithDelay:4 initialSpringVelocity:v20 options:&__block_literal_global_439_0 animations:0.0 completion:0.0];
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __60__UITextSelectionView_updateFloatingCursorAtPoint_animated___block_invoke_3;
      v19[3] = &unk_1E70F6848;
      v19[4] = self;
      *&v19[5] = v7;
      *&v19[6] = v9;
      [UIView performWithoutAnimation:v19];
    }

    [(UIView *)self->m_caretView frame];
    [(UITextSelectionView *)self setPreviousGhostCaretRect:?];
  }

  else
  {
    v18 = [(UITextSelectionView *)self floatingCaretView];
    v17 = [v18 layer];
    [v17 setPosition:{v7, v9}];
  }
}

void __60__UITextSelectionView_updateFloatingCursorAtPoint_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) floatingCaretView];
  [v3 setCenter:{v1, v2}];
}

void __60__UITextSelectionView_updateFloatingCursorAtPoint_animated___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) floatingCaretView];
  [v3 setCenter:{v1, v2}];
}

- (void)animateCaret:(id)a3 toPosition:(CGPoint)a4 withSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  y = a4.y;
  x = a4.x;
  v9 = MEMORY[0x1E69793D0];
  v10 = a3;
  LODWORD(v11) = 1048911544;
  LODWORD(v12) = 1054615798;
  LODWORD(v13) = 1065520988;
  v28 = [v9 functionWithControlPoints:v11 :0.0 :v12 :v13];
  v14 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position"];
  [v14 setFrameInterval:0.0166666667];
  [v14 setDuration:0.15];
  [v14 setTimingFunction:v28];
  v15 = MEMORY[0x1E696B098];
  [v10 position];
  v16 = [v15 valueWithCGPoint:?];
  [v14 setFromValue:v16];

  v17 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
  [v14 setToValue:v17];

  v18 = [v14 keyPath];
  [v10 addAnimation:v14 forKey:v18];

  [v10 setPosition:{x, y}];
  [v10 bounds];
  v20 = v19;
  v22 = v21;
  v23 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
  [v23 setFrameInterval:0.0166666667];
  [v23 setDuration:0.15];
  [v23 setTimingFunction:v28];
  v24 = MEMORY[0x1E696B098];
  [v10 bounds];
  v25 = [v24 valueWithCGRect:?];
  [v23 setFromValue:v25];

  v26 = [MEMORY[0x1E696B098] valueWithCGRect:{v20, v22, width, height}];
  [v23 setToValue:v26];

  v27 = [v23 keyPath];
  [v10 addAnimation:v23 forKey:v27];

  [v10 setBounds:{v20, v22, width, height}];
}

- (void)endFloatingCaretView
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v4 = [v3 preferencesActions];
  v5 = [v4 BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

  if (v5 && !self->m_caretShowingNow)
  {
    [(UITextSelectionView *)self showCaret:2];
  }

  v6 = [(UITextSelectionView *)self caretViewColor];
  [(UIView *)self->m_floatingCaretView setBackgroundColor:v6];

  v7 = [(UIView *)self->m_floatingCaretView layer];
  [v7 setShadowColor:0];

  v8 = [(UIView *)self->m_floatingCaretView layer];
  [v8 setShadowPath:0];

  v9 = [(UIView *)self->m_floatingCaretView layer];
  [v9 setShadowOpacity:0.0];

  [(UIView *)self->m_caretView removeFromSuperview];
  objc_storeStrong(&self->m_caretView, self->m_floatingCaretView);
  m_floatingCaretView = self->m_floatingCaretView;
  self->m_floatingCaretView = 0;
}

- (void)endFloatingCursor
{
  floatingCaretBlinkAssertion = self->_floatingCaretBlinkAssertion;
  self->_floatingCaretBlinkAssertion = 0;

  v4 = [(UITextSelectionView *)self caretView];
  v5 = [v4 superview];

  if (v5)
  {
    [MEMORY[0x1E6979518] begin];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __40__UITextSelectionView_endFloatingCursor__block_invoke;
    v16[3] = &unk_1E70F3590;
    v16[4] = self;
    [MEMORY[0x1E6979518] setCompletionBlock:v16];
    v6 = [(UITextSelectionView *)self floatingCaretView];
    v7 = [v6 layer];
    v8 = [(UITextSelectionView *)self caretView];
    v9 = [v8 layer];
    [v9 position];
    v11 = v10;
    v13 = v12;
    v14 = [(UITextSelectionView *)self caretView];
    [v14 bounds];
    [(UITextSelectionView *)self animateCaret:v7 toPosition:v11 withSize:v13];

    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    v15 = [(UITextSelectionView *)self floatingCaretView];
    [v15 removeFromSuperview];

    self->m_caretAnimating = 0;
  }

  [(UITextSelectionView *)self endFloatingCaretView];
}

- (id)obtainGrabberSuppressionAssertion
{
  ++self->_activeGrabberSuppressionAssertions;
  v2 = [[UITextSelectionGrabberSuppressionAssertion alloc] initWithSelectionView:self];

  return v2;
}

- (void)releaseGrabberHandleSuppressionAssertion:(id)a3
{
  activeGrabberSuppressionAssertions = self->_activeGrabberSuppressionAssertions;
  if (activeGrabberSuppressionAssertions)
  {
    self->_activeGrabberSuppressionAssertions = activeGrabberSuppressionAssertions - 1;
    v5 = dispatch_time(0, 300000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__UITextSelectionView_releaseGrabberHandleSuppressionAssertion___block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  }
}

void __64__UITextSelectionView_releaseGrabberHandleSuppressionAssertion___block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) shouldSuppressSelectionHandles] & 1) == 0)
  {
    v2 = [*(a1 + 32) rangeView];
    v3 = [v2 areSelectionRectsVisible];

    if (v3)
    {
      v4 = [*(a1 + 32) rangeView];
      [v4 updateGrabbers];
    }
  }
}

- (id)dynamicCaret
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    m_caretView = self->m_caretView;
  }

  else
  {
    m_caretView = 0;
  }

  return m_caretView;
}

- (id)dynamicCaretList
{
  if ([(UIView *)self->m_caretView conformsToProtocol:&unk_1EFFFD6E8])
  {
    v3 = self->m_caretView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateDocumentHasContent:(BOOL)a3
{
  v3 = a3;
  if ([(UIView *)self->m_caretView conformsToProtocol:&unk_1F00C8D58])
  {
    m_caretView = self->m_caretView;

    [(UIView *)m_caretView setDocumentHasContent:v3];
  }
}

- (UITextRangeView)rangeView
{
  m_rangeView = self->m_rangeView;
  if (!m_rangeView)
  {
    v4 = [UITextRangeView alloc];
    v5 = [(UITextRangeView *)v4 initWithFrame:self selectionView:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->m_rangeView;
    self->m_rangeView = v5;

    m_rangeView = self->m_rangeView;
  }

  return m_rangeView;
}

- (UITextSelection)selection
{
  v2 = [(UITextSelectionView *)self interactionAssistant];
  v3 = [v2 activeSelectionController];
  v4 = [v3 selection];

  return v4;
}

- (CGRect)selectionBoundingBox
{
  v3 = [(UITextSelectionView *)self selection];
  v4 = [v3 selectedRange];
  v5 = [v4 _isRanged];

  if (v5)
  {
    v6 = [(UITextRangeView *)self->m_rangeView rects];
    [(UITextSelectionView *)self selectionBoundingBoxForRects:v6];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)selectionBoundingBoxForRects:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  *v41 = *MEMORY[0x1E695F058];
  *&v41[8] = *(MEMORY[0x1E695F058] + 8);
  *&v41[16] = *(MEMORY[0x1E695F058] + 16);
  *&v41[24] = *(MEMORY[0x1E695F058] + 24);
  v5 = [(UITextSelectionView *)self interactionAssistant];
  v6 = [v5 view];
  v7 = [v6 textInputView];
  [v7 visibleBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v43;
    do
    {
      v21 = 0;
      do
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v42 + 1) + 8 * v21) rect];
        x = v48.origin.x;
        y = v48.origin.y;
        width = v48.size.width;
        height = v48.size.height;
        v52.origin.x = v9;
        v52.origin.y = v11;
        v52.size.width = v13;
        v52.size.height = v15;
        v49 = CGRectIntersection(v48, v52);
        if (!CGRectIsNull(v49))
        {
          v26 = [(UITextSelectionView *)self interactionAssistant];
          v27 = [v26 view];
          v28 = [v27 textInputView];
          [v28 convertRect:self toView:{x, y, width, height}];
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v36 = v35;

          if (v19)
          {
            v53.origin.x = v30;
            v53.origin.y = v32;
            v53.size.width = v34;
            v53.size.height = v36;
            v50 = CGRectUnion(*v41, v53);
            v30 = v50.origin.x;
            v32 = v50.origin.y;
            v34 = v50.size.width;
            v36 = v50.size.height;
          }

          ++v19;
          *&v41[16] = v34;
          *&v41[24] = v36;
          *v41 = v30;
          *&v41[8] = v32;
        }

        ++v21;
      }

      while (v18 != v21);
      v18 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v18);
  }

  v37 = *v41;
  v38 = *&v41[8];
  v39 = *&v41[16];
  v40 = *&v41[24];
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (void)layoutChangedByScrolling:(BOOL)a3
{
  [(UITextSelectionView *)self updateSelectionRects];

  [(UITextSelectionView *)self updateSelectionCommands];
}

- (void)prepareForMagnification
{
  v3 = [(UITextSelectionView *)self rangeView];
  v4 = [v3 superview];

  if (v4)
  {
    v5 = [(UITextSelectionView *)self rangeView];
    [v5 prepareForMagnification];
  }
}

- (void)doneMagnifying
{
  v3 = [(UITextSelectionView *)self rangeView];
  v4 = [v3 superview];

  if (v4)
  {
    v5 = [(UITextSelectionView *)self rangeView];
    [v5 doneMagnifying];
  }
}

- (void)scaleWillChange:(id)a3
{
  v12 = a3;
  v4 = [(UITextSelectionView *)self affectedByScrollerNotification:v12];
  v5 = v12;
  if (v4)
  {
    v6 = [v12 userInfo];
    if (!v6 || (v7 = v6, [v12 userInfo], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", @"UITextSelectionZoomScaleDidChange"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v8, v7, v10))
    {
      self->m_wasShowingCommands |= [(UITextSelectionView *)self selectionCommandsShowing];
      [(UITextSelectionView *)self hideSelectionCommands];
    }

    v11 = [(UIView *)self->m_rangeView superview];

    v5 = v12;
    if (v11)
    {
      [(UITextRangeView *)self->m_rangeView scaleWillChange];
      v5 = v12;
    }
  }
}

- (void)scaleDidChange:(id)a3
{
  v15 = a3;
  v4 = [(UITextSelectionView *)self affectedByScrollerNotification:v15];
  v5 = v15;
  if (v4)
  {
    v6 = [v15 userInfo];
    if (!v6 || (v7 = v6, [v15 userInfo], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", @"UITextSelectionZoomScaleDidChange"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v8, v7, v10))
    {
      v11 = [(UITextSelectionView *)self selection];
      v12 = [v11 selectedRange];
      v13 = [v12 _isRanged];

      if (v13 && self->m_wasShowingCommands)
      {
        [(UITextSelectionView *)self showCalloutBarAfterDelay:0.1];
      }

      self->m_wasShowingCommands = 0;
    }

    v14 = [(UIView *)self->m_rangeView superview];

    v5 = v15;
    if (v14)
    {
      [(UITextRangeView *)self->m_rangeView scaleDidChange];
      v5 = v15;
    }
  }
}

- (void)willRotate:(id)a3
{
  if (self->m_activated && [(UITextSelectionView *)self shouldBeVisible])
  {
    m_showingCommandsCounterForRotate = self->m_showingCommandsCounterForRotate;
    self->m_showingCommandsCounterForRotate = m_showingCommandsCounterForRotate + 1;
    if (!m_showingCommandsCounterForRotate)
    {
      v5 = self->m_delayShowingCommands || [(UITextSelectionView *)self selectionCommandsShowing];
      self->m_wasShowingCommands = v5;
      [(UITextSelectionView *)self cancelDelayedCommandRequests];
      [(UITextSelectionView *)self hideSelectionCommands];
    }

    v6 = [(UIView *)self->m_rangeView superview];

    if (v6)
    {
      m_rangeView = self->m_rangeView;

      [(UITextRangeView *)m_rangeView willRotate];
    }
  }
}

- (void)didRotate:(id)a3
{
  v4 = [(UIView *)self->m_rangeView superview];

  if (v4)
  {
    [(UITextRangeView *)self->m_rangeView didRotate];
  }

  m_showingCommandsCounterForRotate = self->m_showingCommandsCounterForRotate;
  if (m_showingCommandsCounterForRotate)
  {
    v6 = m_showingCommandsCounterForRotate - 1;
    self->m_showingCommandsCounterForRotate = v6;
    if (!v6 && self->m_wasShowingCommands)
    {
      [(UITextSelectionView *)self showCalloutBarAfterDelay:0.1];
      self->m_wasShowingCommands = 0;
    }
  }
}

- (void)updateBaseIsStartWithDocumentPoint:(CGPoint)a3
{
  m_rangeView = self->m_rangeView;
  if (m_rangeView)
  {
    [(UITextRangeView *)m_rangeView updateBaseIsStartWithDocumentPoint:a3.x, a3.y];
  }
}

- (void)updateSelectionWithDocumentPoint:(CGPoint)a3
{
  m_rangeView = self->m_rangeView;
  if (m_rangeView)
  {
    [(UITextRangeView *)m_rangeView updateSelectionWithDocumentPoint:a3.x, a3.y];
  }
}

- (id)scrollView
{
  v2 = [(UIView *)self _scroller];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (CGRect)clippedTargetRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!+[UIKeyboard isKeyboardProcess])
  {
    v8 = [(UITextSelectionView *)self interactionAssistant];
    v9 = [v8 view];
    v10 = [v9 textInputView];
    [v10 visibleBounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(UITextSelectionView *)self interactionAssistant];
    v20 = [v19 view];
    v21 = [v20 textInputView];
    [(UIView *)self convertRect:v21 fromView:v12, v14, v16, v18];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v98.origin.x = v23;
    v98.origin.y = v25;
    v98.size.width = v27;
    v98.size.height = v29;
    v108.origin.x = x;
    v108.origin.y = y;
    v108.size.width = width;
    v108.size.height = height;
    v99 = CGRectIntersection(v98, v108);
    v30 = v99.origin.x;
    v31 = v99.origin.y;
    v32 = v99.size.width;
    v33 = v99.size.height;
    v34 = [(UIView *)self window];
    v35 = [(UIView *)self _screen];
    [v35 bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v44 = [(UIView *)self _screen];
    v45 = [v44 coordinateSpace];
    [v34 convertRect:v45 fromCoordinateSpace:{v37, v39, v41, v43}];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;

    v54 = [(UIView *)self window];
    [(UIView *)self convertRect:v54 fromView:v47, v49, v51, v53];
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;

    v100.origin.x = v56;
    v100.origin.y = v58;
    v100.size.width = v60;
    v100.size.height = v62;
    v109.origin.x = v30;
    v109.origin.y = v31;
    v109.size.width = v32;
    v109.size.height = v33;
    if (!CGRectIntersectsRect(v100, v109))
    {
      v63 = v56 + v60;
      if (v30 + v32 < v56 + 10.0)
      {
        v64 = v56 - v32 + 10.0;
      }

      else
      {
        v64 = v30;
      }

      if (v63 < v30 + 10.0)
      {
        v30 = v63 + -10.0;
      }

      else
      {
        v30 = v64;
      }

      if (v58 + v62 >= v31 + 10.0)
      {
        if (v31 + v33 < v58 + 10.0)
        {
          v31 = v58 - v33 + 10.0;
        }
      }

      else
      {
        v31 = v58 + v62 + -10.0;
      }
    }

    v101.origin.x = v56;
    v101.origin.y = v58;
    v101.size.width = v60;
    v101.size.height = v62;
    v110.origin.x = v30;
    v110.origin.y = v31;
    v110.size.width = v32;
    v110.size.height = v33;
    v102 = CGRectIntersection(v101, v110);
    x = v102.origin.x;
    y = v102.origin.y;
    width = v102.size.width;
    height = v102.size.height;
    v65 = [(UITextSelectionView *)self scrollView];
    if (v65)
    {
      [(UIView *)self convertRect:v65 toView:x, y, width, height];
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;
      [v65 bounds];
      v111.origin.x = v67;
      v111.origin.y = v69;
      v111.size.width = v71;
      v111.size.height = v73;
      v104 = CGRectIntersection(v103, v111);
      v74 = v104.origin.x;
      v75 = v104.origin.y;
      v76 = v104.size.width;
      v77 = v104.size.height;
      if (CGRectIsEmpty(v104))
      {
        x = *MEMORY[0x1E695F058];
        y = *(MEMORY[0x1E695F058] + 8);
        width = *(MEMORY[0x1E695F058] + 16);
        height = *(MEMORY[0x1E695F058] + 24);
      }

      else
      {
        [(UIView *)self convertRect:v65 fromView:v74, v75, v76, v77];
        v82 = v78;
        v83 = v79;
        v84 = v80;
        v85 = v81;
        if (v81 >= height)
        {
          x = v78;
          y = v79;
          width = v80;
          height = v81;
        }

        else
        {
          if (height >= 40.0)
          {
            v86 = [(UITextSelectionView *)self interactionAssistant];
            v87 = [v86 view];
            v88 = [v87 isEditing];

            if (v88)
            {
              v89 = +[UIKeyboardImpl activeInstance];
              [v89 subtractKeyboardFrameFromRect:self inView:{v82, v83, v84, v85}];
              v82 = v90;
              v83 = v91;
              v84 = v92;
              v85 = v93;
            }

            v106.origin.x = v82;
            v106.origin.y = v83;
            v106.size.width = v84;
            v106.size.height = v85;
            v105 = CGRectInset(v106, 0.0, -10.0);
          }

          else
          {
            v112.origin.x = x;
            v112.origin.y = y;
            v112.size.width = width;
            v112.size.height = height;
            v105 = CGRectUnion(*&v78, v112);
          }

          x = v105.origin.x;
          y = v105.origin.y;
          width = v105.size.width;
          height = v105.size.height;
        }
      }
    }
  }

  v94 = x;
  v95 = y;
  v96 = width;
  v97 = height;
  result.size.height = v97;
  result.size.width = v96;
  result.origin.y = v95;
  result.origin.x = v94;
  return result;
}

- (void)mustFlattenForAlert:(id)a3
{
  v6 = a3;
  v4 = [v6 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UITextSelectionView *)self setAlertFlattened:0];
  }

  else
  {
    v5 = [v6 object];
    objc_opt_class();
    [(UITextSelectionView *)self setAlertFlattened:(objc_opt_isKindOfClass() & 1) == 0];
  }

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)canExpandAfterAlert:(id)a3
{
  [(UITextSelectionView *)self setAlertFlattened:0];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)mustFlattenForSheet:(id)a3
{
  [(UITextSelectionView *)self setSheetFlattened:1];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)canExpandAfterSheet:(id)a3
{
  [(UITextSelectionView *)self setSheetFlattened:0];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)mustFlattenForPopover:(id)a3
{
  [(UITextSelectionView *)self setPopoverFlattened:1];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)canExpandAfterPopover:(id)a3
{
  [(UITextSelectionView *)self setPopoverFlattened:0];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)saveDeactivationReason:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  -[UITextSelectionView setApplicationDeactivationReason:](self, "setApplicationDeactivationReason:", [v4 intValue]);
}

- (void)mustFlattenForResignActive:(id)a3
{
  if ([(UITextSelectionView *)self applicationDeactivationReason]!= 11 && [(UITextSelectionView *)self applicationDeactivationReason])
  {
    [(UITextSelectionView *)self setActiveFlattened:1];

    [(UITextSelectionView *)self updateSelectionDots];
  }
}

- (void)canExpandAfterBecomeActive:(id)a3
{
  [(UITextSelectionView *)self setActiveFlattened:0];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)mustFlattenForNavigationTransition:(id)a3
{
  [(UITextSelectionView *)self setNavigationTransitionFlattened:1];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)canExpandAfterNavigationTransition:(id)a3
{
  [(UITextSelectionView *)self setNavigationTransitionFlattened:0];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (UITextInteractionAssistant)interactionAssistant
{
  WeakRetained = objc_loadWeakRetained(&self->m_interactionAssistant);

  return WeakRetained;
}

- (CGRect)stashedCaretRect
{
  x = self->_stashedCaretRect.origin.x;
  y = self->_stashedCaretRect.origin.y;
  width = self->_stashedCaretRect.size.width;
  height = self->_stashedCaretRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)previousGhostCaretRect
{
  x = self->_previousGhostCaretRect.origin.x;
  y = self->_previousGhostCaretRect.origin.y;
  width = self->_previousGhostCaretRect.size.width;
  height = self->_previousGhostCaretRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end