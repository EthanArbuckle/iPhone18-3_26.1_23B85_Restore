@interface UITextSelectionView
- (BOOL)_activeAndVisible;
- (BOOL)_editMenuIsVisible;
- (BOOL)_updateEditMenuPositionForPreferredArrowDirection:(int64_t)direction replacements:(id)replacements;
- (BOOL)_viewUsesAsynchronousProtocol;
- (BOOL)affectedByScrollerNotification:(id)notification;
- (BOOL)isInstalledInSelectionContainerView;
- (BOOL)isValid;
- (CGPoint)floatingCursorPositionForPoint:(CGPoint)point;
- (CGPoint)floatingCursorPositionForPoint:(CGPoint)point lineSnapping:(BOOL)snapping;
- (CGRect)clippedTargetRect:(CGRect)rect;
- (CGRect)previousGhostCaretRect;
- (CGRect)selectionBoundingBox;
- (CGRect)selectionBoundingBoxForRects:(id)rects;
- (CGRect)stashedCaretRect;
- (UITextInteractionAssistant)interactionAssistant;
- (UITextRangeView)rangeView;
- (UITextSelection)selection;
- (UITextSelectionView)initWithInteractionAssistant:(id)assistant;
- (UIView)caretView;
- (id)_actingParentViewForGestureRecognizers;
- (id)_customSelectionContainerView;
- (id)_editMenuSourceWindow;
- (id)caretViewColor;
- (id)dynamicCaret;
- (id)dynamicCaretList;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)menuInteraction;
- (id)obtainGrabberSuppressionAssertion;
- (id)scrollView;
- (void)_hideCaret:(int)caret;
- (void)_hideSelectionCommandsWithReason:(int64_t)reason;
- (void)_presentEditMenuWithPreferredDirection:(int64_t)direction replacements:(id)replacements;
- (void)_registerForViewAnimationNotificationsIfNecessary;
- (void)_setCaretBlinkAnimationEnabled:(BOOL)enabled;
- (void)_showCaret:(int)caret;
- (void)_showCommandsWithReplacements:(id)replacements forDictation:(BOOL)dictation afterDelay:(double)delay;
- (void)_showCommandsWithReplacements:(id)replacements isForContextMenu:(BOOL)menu forDictation:(BOOL)dictation arrowDirection:(int64_t)direction;
- (void)_showSelectionCommandsForContextMenu:(BOOL)menu;
- (void)_unregisterForNotifications;
- (void)_unregisterForViewAnimationNotificationsIfNecessary;
- (void)_updateViewAnimateNotificationObservationIfNecessary;
- (void)activate;
- (void)addCaretToSubview;
- (void)animateBoxShrinkOn:(id)on;
- (void)animateCaret:(id)caret toPosition:(CGPoint)position withSize:(CGSize)size;
- (void)animateExpanderOn:(id)on;
- (void)animatePulsingDirectCaret:(id)caret;
- (void)animatePulsingIndirectCaret:(id)caret;
- (void)appearOrFadeIfNecessary;
- (void)beginFloatingCaretView;
- (void)beginFloatingCursorAtPoint:(CGPoint)point;
- (void)calculateReplacementsWithGenerator:(id)generator andShowAfterDelay:(double)delay;
- (void)canExpandAfterAlert:(id)alert;
- (void)canExpandAfterBecomeActive:(id)active;
- (void)canExpandAfterNavigationTransition:(id)transition;
- (void)canExpandAfterPopover:(id)popover;
- (void)canExpandAfterSheet:(id)sheet;
- (void)cancelDelayedCommandRequests;
- (void)clearCaret;
- (void)configureForHighlightMode;
- (void)configureForPencilDeletionPreviewMode;
- (void)configureForPencilHighlightMode;
- (void)configureForReplacementMode;
- (void)configureForSelectionMode;
- (void)deactivateAndCollapseSelection:(BOOL)selection;
- (void)dealloc;
- (void)deferredUpdateSelectionRects;
- (void)didRotate:(id)rotate;
- (void)doneMagnifying;
- (void)endFloatingCaretView;
- (void)endFloatingCursor;
- (void)hideSelectionCommandsAfterDelay:(double)delay reason:(int64_t)reason;
- (void)inputModeDidChange:(id)change;
- (void)inputViewDidAnimate;
- (void)inputViewDidChange;
- (void)inputViewDidMove;
- (void)inputViewWillAnimate;
- (void)inputViewWillChange;
- (void)inputViewWillMove:(id)move;
- (void)installIfNecessary;
- (void)invalidate;
- (void)layoutChangedByScrolling:(BOOL)scrolling;
- (void)mustFlattenForAlert:(id)alert;
- (void)mustFlattenForNavigationTransition:(id)transition;
- (void)mustFlattenForPopover:(id)popover;
- (void)mustFlattenForResignActive:(id)active;
- (void)mustFlattenForSheet:(id)sheet;
- (void)prepareForMagnification;
- (void)releaseGrabberHandleSuppressionAssertion:(id)assertion;
- (void)removeFromSuperview;
- (void)saveDeactivationReason:(id)reason;
- (void)scaleDidChange:(id)change;
- (void)scaleWillChange:(id)change;
- (void)selectionChanged;
- (void)selectionDidScroll:(id)scroll;
- (void)selectionDidTranslateForReachability:(id)reachability;
- (void)selectionWillScroll:(id)scroll;
- (void)selectionWillTranslateForReachability:(id)reachability;
- (void)setCaretBlinks:(BOOL)blinks;
- (void)setCaretVisible:(BOOL)visible;
- (void)setGhostAppearance:(BOOL)appearance;
- (void)setVisible:(BOOL)visible;
- (void)showCalloutBarAfterDelay:(double)delay;
- (void)showCaret:(int)caret;
- (void)showInitialCaret;
- (void)showReplacementsWithGenerator:(id)generator forDictation:(BOOL)dictation afterDelay:(double)delay;
- (void)showSelectionCommandsAfterDelay:(double)delay;
- (void)textSelectionViewActivated:(id)activated;
- (void)tintColorDidChange;
- (void)updateBaseIsStartWithDocumentPoint:(CGPoint)point;
- (void)updateDocumentHasContent:(BOOL)content;
- (void)updateFloatingCursorAtPoint:(CGPoint)point animated:(BOOL)animated;
- (void)updateRangeViewForSelectionMode;
- (void)updateSelectionCommands;
- (void)updateSelectionDots;
- (void)updateSelectionRects;
- (void)updateSelectionRectsIfNeeded;
- (void)updateSelectionWithDocumentPoint:(CGPoint)point;
- (void)validateWithInteractionAssistant:(id)assistant;
- (void)viewAnimate:(id)animate;
- (void)willBeginFloatingCursor:(BOOL)cursor;
- (void)willMoveToWindow:(id)window;
- (void)willRotate:(id)rotate;
- (void)windowDidResignOrBecomeKey;
@end

@implementation UITextSelectionView

- (UITextSelectionView)initWithInteractionAssistant:(id)assistant
{
  assistantCopy = assistant;
  v9.receiver = self;
  v9.super_class = UITextSelectionView;
  v5 = [(UIView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    v5->_viewDidStopNotification = -1;
    v5->_viewDidCommitNotification = -1;
    [(UITextSelectionView *)v5 validateWithInteractionAssistant:assistantCopy];
    [(UIView *)v6 _setDisableDictationTouchCancellation:1];
    v7 = v6;
  }

  return v6;
}

- (void)_unregisterForNotifications
{
  if (self)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIKeyboardDidHideNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIKeyboardWillHideNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIKeyboardDidShowNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIKeyboardWillShowNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIKeyboardDidChangeFrameNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIKeyboardWillChangeFrameNotification" object:0];
    [defaultCenter removeObserver:self name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
    [defaultCenter removeObserver:self name:@"_UIWindowDidResignApplicationKeyNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIWindowDidRotateNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIWindowWillRotateNotification" object:0];
    [defaultCenter removeObserver:self name:@"UITextSelectionDidTranslateForReachability" object:0];
    [defaultCenter removeObserver:self name:@"UITextSelectionWillTranslateForReachability" object:0];
    [defaultCenter removeObserver:self name:@"UITextSelectionDidInteractiveMove" object:0];
    [defaultCenter removeObserver:self name:@"UITextSelectionWillInteractiveMove" object:0];
    [defaultCenter removeObserver:self name:@"UITextSelectionDidZoom" object:0];
    [defaultCenter removeObserver:self name:@"UITextSelectionWillZoom" object:0];
    [defaultCenter removeObserver:self name:@"UITextSelectionDidScroll" object:0];
    [defaultCenter removeObserver:self name:@"UITextSelectionWillScroll" object:0];
    [defaultCenter removeObserver:self name:@"UITextSelectionViewActivatedNotification" object:0];
    [defaultCenter removeObserver:self name:@"UITextEffectsWindowOffsetDidChangeNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIApplicationWillEnterForegroundNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIApplicationDidEnterBackgroundNotification" object:0];
    [defaultCenter removeObserver:self name:@"_UIAlertWillAppearNotification" object:0];
    [defaultCenter removeObserver:self name:@"_UIAlertDidDisappearNotification" object:0];
    [defaultCenter removeObserver:self name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIApplicationWillResignActiveNotification" object:0];
    [defaultCenter removeObserver:self name:@"UIApplicationDidBecomeActiveNotification" object:0];
    [defaultCenter removeObserver:self name:0x1EFB3A190 object:0];
    [defaultCenter removeObserver:self name:0x1EFB3A1B0 object:0];
    [defaultCenter removeObserver:self name:@"_UISheetWillAppearNotification" object:0];
    [defaultCenter removeObserver:self name:@"_UISheetDidDisappearNotification" object:0];
    [defaultCenter removeObserver:self name:0x1EFB37EF0 object:0];
    [defaultCenter removeObserver:self name:0x1EFB37F10 object:0];
  }
}

- (void)validateWithInteractionAssistant:(id)assistant
{
  objc_storeWeak(&self->m_interactionAssistant, assistant);
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [(UITextSelectionView *)self _unregisterForNotifications];
  [defaultCenter addObserver:self selector:sel_didSuspend_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  [defaultCenter addObserver:self selector:sel_willResume_ name:@"UIApplicationWillEnterForegroundNotification" object:0];
  [defaultCenter addObserver:self selector:sel_updateSelectionDots name:@"UITextEffectsWindowOffsetDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel_textSelectionViewActivated_ name:@"UITextSelectionViewActivatedNotification" object:0];
  [defaultCenter addObserver:self selector:sel_selectionWillScroll_ name:@"UITextSelectionWillScroll" object:0];
  [defaultCenter addObserver:self selector:sel_selectionDidScroll_ name:@"UITextSelectionDidScroll" object:0];
  [defaultCenter addObserver:self selector:sel_scaleWillChange_ name:@"UITextSelectionWillZoom" object:0];
  [defaultCenter addObserver:self selector:sel_scaleDidChange_ name:@"UITextSelectionDidZoom" object:0];
  [defaultCenter addObserver:self selector:sel_inputViewWillAnimate name:@"UITextSelectionWillInteractiveMove" object:0];
  [defaultCenter addObserver:self selector:sel_inputViewDidAnimate name:@"UITextSelectionDidInteractiveMove" object:0];
  [defaultCenter addObserver:self selector:sel_selectionWillTranslateForReachability_ name:@"UITextSelectionWillTranslateForReachability" object:0];
  [defaultCenter addObserver:self selector:sel_selectionDidTranslateForReachability_ name:@"UITextSelectionDidTranslateForReachability" object:0];
  [defaultCenter addObserver:self selector:sel_willRotate_ name:@"UIWindowWillRotateNotification" object:0];
  [defaultCenter addObserver:self selector:sel_didRotate_ name:@"UIWindowDidRotateNotification" object:0];
  [defaultCenter addObserver:self selector:sel_windowDidResignOrBecomeKey name:@"_UIWindowDidResignApplicationKeyNotification" object:0];
  [defaultCenter addObserver:self selector:sel_windowDidResignOrBecomeKey name:@"_UIWindowDidBecomeApplicationKeyNotification" object:0];
  [defaultCenter addObserver:self selector:sel_inputViewWillMove_ name:@"UIKeyboardWillChangeFrameNotification" object:0];
  [defaultCenter addObserver:self selector:sel_inputViewDidMove name:@"UIKeyboardDidChangeFrameNotification" object:0];
  [defaultCenter addObserver:self selector:sel_inputViewWillAnimate name:@"UIKeyboardWillShowNotification" object:0];
  [defaultCenter addObserver:self selector:sel_inputViewDidAnimate name:@"UIKeyboardDidShowNotification" object:0];
  [defaultCenter addObserver:self selector:sel_inputViewWillAnimate name:@"UIKeyboardWillHideNotification" object:0];
  [defaultCenter addObserver:self selector:sel_inputViewDidAnimate name:@"UIKeyboardDidHideNotification" object:0];
  [defaultCenter addObserver:self selector:sel_inputModeDidChange_ name:@"UITextInputCurrentInputModeDidChangeNotification" object:0];
  [defaultCenter addObserver:self selector:sel_mustFlattenForAlert_ name:@"_UIAlertWillAppearNotification" object:0];
  [defaultCenter addObserver:self selector:sel_canExpandAfterAlert_ name:@"_UIAlertDidDisappearNotification" object:0];
  [defaultCenter addObserver:self selector:sel_saveDeactivationReason_ name:@"_UIApplicationWillAddDeactivationReasonNotification" object:0];
  [defaultCenter addObserver:self selector:sel_mustFlattenForResignActive_ name:@"UIApplicationWillResignActiveNotification" object:0];
  [defaultCenter addObserver:self selector:sel_canExpandAfterBecomeActive_ name:@"UIApplicationDidBecomeActiveNotification" object:0];
  [defaultCenter addObserver:self selector:sel_mustFlattenForNavigationTransition_ name:0x1EFB3A190 object:0];
  [defaultCenter addObserver:self selector:sel_canExpandAfterNavigationTransition_ name:0x1EFB3A1B0 object:0];
  [defaultCenter addObserver:self selector:sel_mustFlattenForSheet_ name:@"_UISheetWillAppearNotification" object:0];
  [defaultCenter addObserver:self selector:sel_canExpandAfterSheet_ name:@"_UISheetDidDisappearNotification" object:0];
  [defaultCenter addObserver:self selector:sel_mustFlattenForPopover_ name:0x1EFB37EF0 object:0];
  [defaultCenter addObserver:self selector:sel_canExpandAfterPopover_ name:0x1EFB37F10 object:0];
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
  interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
  containerAllowsSelection = [interactionAssistant containerAllowsSelection];

  if (containerAllowsSelection)
  {
    interactionAssistant2 = [(UITextSelectionView *)self interactionAssistant];
    containerAllowsSelectionTintOnly = [interactionAssistant2 containerAllowsSelectionTintOnly];

    if (containerAllowsSelectionTintOnly)
    {
      [(UITextSelectionView *)self configureForHighlightMode];
    }

    self->m_activated = 1;
    [(UITextSelectionView *)self _updateViewAnimateNotificationObservationIfNecessary];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UITextSelectionViewActivatedNotification" object:self];
    selection = [(UITextSelectionView *)self selection];
    [selection selectionChanged];
    [(UITextSelectionView *)self appearOrFadeIfNecessary];
    [(UITextSelectionView *)self deferredUpdateSelectionRects];
  }
}

- (void)deactivateAndCollapseSelection:(BOOL)selection
{
  selectionCopy = selection;
  self->m_activated = 0;
  [(UITextSelectionView *)self _updateViewAnimateNotificationObservationIfNecessary];
  if (selectionCopy)
  {
    selection = [(UITextSelectionView *)self selection];
    [selection collapseSelection];

    selection2 = [(UITextSelectionView *)self selection];
    [selection2 commit];
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

- (void)inputModeDidChange:(id)change
{
  if ([(UITextSelectionView *)self selectionCommandsShowing])
  {

    [(UITextSelectionView *)self deferredUpdateSelectionCommands];
  }
}

- (void)viewAnimate:(id)animate
{
  animateCopy = animate;
  superview = [(UIView *)self->m_rangeView superview];
  if (superview)
  {
    v5 = superview;
    interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
    view = [interactionAssistant view];

    if (view)
    {
      userInfo = [animateCopy userInfo];
      v9 = [userInfo objectForKey:0x1EFB17410];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        view2 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          v11 = 0;
          goto LABEL_17;
        }

        view2 = [v9 view];
      }

      v11 = view2;
      if (view2)
      {
        interactionAssistant2 = [(UITextSelectionView *)self interactionAssistant];
        view3 = [interactionAssistant2 view];
        textInputView = [view3 textInputView];
        if (([v11 containsView:textInputView] & 1) == 0)
        {

LABEL_16:
          goto LABEL_17;
        }

        _layer = [v11 _layer];
        animationKeys = [_layer animationKeys];

        if (animationKeys)
        {
          name = [animateCopy name];
          v18 = [name isEqualToString:0x1EFBBAB50];

          rangeView = [(UITextSelectionView *)self rangeView];
          interactionAssistant2 = rangeView;
          if (v18)
          {
            [rangeView startAnimating];
          }

          else
          {
            [rangeView performSelector:sel_stopAnimating withObject:0 afterDelay:0.1];
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

- (void)selectionWillScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(UITextSelectionView *)self visible])
  {
    superview = [(UIView *)self superview];

    if (superview)
    {
      if ([(UITextSelectionView *)self affectedByScrollerNotification:scrollCopy])
      {
        v5 = self->m_wasShowingCommands || [(UITextSelectionView *)self selectionCommandsShowing];
        self->m_wasShowingCommands = v5;
        [(UITextSelectionView *)self hideSelectionCommands];
        selection = [(UITextSelectionView *)self selection];
        selectedRange = [selection selectedRange];
        _isRanged = [selectedRange _isRanged];

        if (_isRanged)
        {
          rangeView = [(UITextSelectionView *)self rangeView];
          [rangeView willScroll];
        }

        v10 = +[UIKeyboardImpl activeInstance];
        [v10 hideDictationMenuIfNeeded:0];
      }
    }
  }
}

- (void)selectionDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(UITextSelectionView *)self visible])
  {
    superview = [(UIView *)self superview];

    if (superview)
    {
      if ([(UITextSelectionView *)self affectedByScrollerNotification:scrollCopy])
      {
        selection = [(UITextSelectionView *)self selection];
        selectedRange = [selection selectedRange];
        _isRanged = [selectedRange _isRanged];

        selectionCommandsShowing = [(UITextSelectionView *)self selectionCommandsShowing];
        if (_isRanged)
        {
          if (selectionCommandsShowing)
          {
            menuInteraction = [(UITextSelectionView *)self menuInteraction];

            if (menuInteraction)
            {
              menuInteraction2 = [(UITextSelectionView *)self menuInteraction];
              [menuInteraction2 updateVisibleMenuPosition];
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

          rangeView = [(UITextSelectionView *)self rangeView];
          [rangeView didScroll];
        }

        else
        {
          if (!selectionCommandsShowing)
          {
            goto LABEL_16;
          }

          menuInteraction3 = [(UITextSelectionView *)self menuInteraction];

          if (!menuInteraction3)
          {
            goto LABEL_16;
          }

          rangeView = [(UITextSelectionView *)self menuInteraction];
          [rangeView updateVisibleMenuPosition];
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

- (BOOL)affectedByScrollerNotification:(id)notification
{
  object = [notification object];
  if (object)
  {
    interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
    view = [interactionAssistant view];
    textInputView = [view textInputView];
    if (textInputView)
    {
      interactionAssistant2 = [(UITextSelectionView *)self interactionAssistant];
      view2 = [interactionAssistant2 view];
      textInputView2 = [view2 textInputView];
      v11 = [object containsView:textInputView2];
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
    rangeView = [(UITextSelectionView *)self rangeView];
    [rangeView inputViewWillChange];

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
    rangeView = [(UITextSelectionView *)self rangeView];
    [rangeView inputViewDidChange];

    v6 = +[UIKeyboardImpl activeInstance];
    [v6 showDictationMenuIfNeeded];
  }
}

- (void)inputViewWillMove:(id)move
{
  moveCopy = move;
  if (self->m_activated)
  {
    v27 = moveCopy;
    shouldBeVisible = [(UITextSelectionView *)self shouldBeVisible];
    moveCopy = v27;
    if (shouldBeVisible)
    {
      userInfo = [v27 userInfo];
      v7 = [userInfo objectForKey:@"UIKeyboardFrameBeginUserInfoKey"];
      [v7 CGRectValue];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      userInfo2 = [v27 userInfo];
      v17 = [userInfo2 objectForKey:@"UIKeyboardFrameEndUserInfoKey"];
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
      moveCopy = v27;
      if (!v26)
      {
        [(UITextSelectionView *)self inputViewWillChange];
        moveCopy = v27;
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
  keyboardSceneDelegate = [(UIView *)self keyboardSceneDelegate];
  if (self->m_activated)
  {
    v7 = keyboardSceneDelegate;
    shouldBeVisible = [(UITextSelectionView *)self shouldBeVisible];
    keyboardSceneDelegate = v7;
    if (shouldBeVisible)
    {
      containerView = [v7 containerView];
      v6 = [(UIView *)self isDescendantOfView:containerView];

      keyboardSceneDelegate = v7;
      if (v6)
      {
        [(UITextSelectionView *)self inputViewWillChange];
        keyboardSceneDelegate = v7;
      }
    }
  }
}

- (void)inputViewDidAnimate
{
  keyboardSceneDelegate = [(UIView *)self keyboardSceneDelegate];
  if ([keyboardSceneDelegate isOnScreen])
  {
    if (!self->m_activated)
    {
      interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
      externalTextInput = [interactionAssistant externalTextInput];

      if (externalTextInput)
      {
        [(UITextSelectionView *)self activate];
      }
    }
  }

  if (self->m_showingCommandsCounter)
  {
    containerView = [keyboardSceneDelegate containerView];
    v6 = [(UIView *)self isDescendantOfView:containerView];

    if (v6)
    {
      [(UITextSelectionView *)self inputViewDidChange];
    }
  }
}

- (void)selectionWillTranslateForReachability:(id)reachability
{
  if (self->m_activated && [(UITextSelectionView *)self shouldBeVisible])
  {

    [(UITextSelectionView *)self inputViewWillChange];
  }
}

- (void)selectionDidTranslateForReachability:(id)reachability
{
  if (self->m_showingCommandsCounter)
  {
    [(UITextSelectionView *)self inputViewDidChange];
  }
}

- (void)textSelectionViewActivated:(id)activated
{
  object = [activated object];
  if (object != self)
  {
    v13 = object;
    interactionAssistant = [(UITextSelectionView *)object interactionAssistant];
    view = [interactionAssistant view];
    textInputView = [view textInputView];
    window = [textInputView window];
    interactionAssistant2 = [(UITextSelectionView *)self interactionAssistant];
    view2 = [interactionAssistant2 view];
    textInputView2 = [view2 textInputView];
    window2 = [textInputView2 window];

    object = v13;
    if (window == window2)
    {
      [(UITextSelectionView *)self deactivateAndCollapseSelection:1];
      object = v13;
    }
  }
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = UITextSelectionView;
  [(UIView *)&v5 willMoveToWindow:?];
  if (!window)
  {
    if ([(UITextSelectionView *)self _editMenuIsVisible])
    {
      [(UITextSelectionView *)self hideSelectionCommands];
    }
  }
}

- (void)removeFromSuperview
{
  superview = [(UIView *)self superview];

  if (superview)
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
    layer = [(UIView *)self layer];
    animationKeys = [layer animationKeys];
    v9 = [animationKeys count];

    if (v9)
    {
      layer2 = [(UIView *)self layer];
      [layer2 removeAllAnimations];
    }
  }

  [(UITextSelectionView *)self _updateViewAnimateNotificationObservationIfNecessary];
  v11.receiver = self;
  v11.super_class = UITextSelectionView;
  [(UIView *)&v11 removeFromSuperview];
}

- (BOOL)_viewUsesAsynchronousProtocol
{
  interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
  viewConformsToAsynchronousInteractionProtocol = [interactionAssistant viewConformsToAsynchronousInteractionProtocol];

  return viewConformsToAsynchronousInteractionProtocol;
}

- (BOOL)isInstalledInSelectionContainerView
{
  interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
  view = [interactionAssistant view];

  textInputView = [view textInputView];
  if (objc_opt_respondsToSelector())
  {
    selectionContainerView = [view selectionContainerView];
    v6 = selectionContainerView != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_customSelectionContainerView
{
  interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
  view = [interactionAssistant view];

  textInputView = [view textInputView];
  if (objc_opt_respondsToSelector())
  {
    selectionContainerView = [view selectionContainerView];
  }

  else
  {
    selectionContainerView = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && [(UITextSelectionView *)self _viewUsesAsynchronousProtocol])
  {
    unscaledView = [textInputView unscaledView];

    selectionContainerView = unscaledView;
  }

  return selectionContainerView;
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

  interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
  containerAllowsSelection = [interactionAssistant containerAllowsSelection];

  return containerAllowsSelection;
}

- (void)installIfNecessary
{
  if ([(UITextSelectionView *)self _activeAndVisible])
  {
    interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
    view = [interactionAssistant view];

    textInputView = [view textInputView];
    _customSelectionContainerView = [(UITextSelectionView *)self _customSelectionContainerView];
    if (!_customSelectionContainerView)
    {
      _customSelectionContainerView = textInputView;
    }

    superview = [(UIView *)self superview];

    if (superview != _customSelectionContainerView)
    {
      [_customSelectionContainerView addSubview:self];
    }
  }
}

- (id)_actingParentViewForGestureRecognizers
{
  _customSelectionContainerView = [(UITextSelectionView *)self _customSelectionContainerView];

  if (_customSelectionContainerView)
  {
    interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
    view = [interactionAssistant view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (void)selectionChanged
{
  interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
  view = [interactionAssistant view];
  textInputView = [view textInputView];
  window = [textInputView window];

  if (!window)
  {
    return;
  }

  if ([(UITextRangeView *)self->m_rangeView mode]== 2)
  {
    [(UITextSelectionView *)self updateRangeViewForSelectionMode];
  }

  else if ([(UITextRangeView *)self->m_rangeView mode]== 1)
  {
    interactionAssistant2 = [(UITextSelectionView *)self interactionAssistant];
    if ([interactionAssistant2 containerAllowsSelectionTintOnly])
    {
    }

    else
    {
      selection = [(UITextSelectionView *)self selection];
      isRangedSelectionSpanningDocument = [selection isRangedSelectionSpanningDocument];

      if ((isRangedSelectionSpanningDocument & 1) == 0)
      {
        [(UITextRangeView *)self->m_rangeView setMode:0];
      }
    }
  }

  selection2 = [(UITextSelectionView *)self selection];
  [selection2 selectionChanged];

  selection3 = [(UITextSelectionView *)self selection];
  if ([selection3 isCommitting])
  {

    goto LABEL_14;
  }

  interactionAssistant3 = [(UITextSelectionView *)self interactionAssistant];
  expectingCommit = [interactionAssistant3 expectingCommit];

  if ((expectingCommit & 1) != 0 || (-[UITextSelectionView interactionAssistant](self, "interactionAssistant"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 requiresImmediateUpdate], v14, v15))
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

    interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
    selection = [(UITextSelectionView *)self selection];
    selectedRange = [selection selectedRange];

    if (!selectedRange)
    {
      [(UITextSelectionView *)self clearCaret];
      [(UITextSelectionView *)self clearRangeAnimated:0];
      [(UITextSelectionView *)self removeFromSuperview];
      goto LABEL_30;
    }

    selection2 = [(UITextSelectionView *)self selection];
    selectedRange2 = [selection2 selectedRange];
    if ([selectedRange2 _isCaret])
    {
      forceRangeView = [(UITextSelectionView *)self forceRangeView];

      if (!forceRangeView)
      {
        m_activeCaret = self->m_activeCaret;
        interactionAssistant2 = [(UITextSelectionView *)self interactionAssistant];
        textDocument = [interactionAssistant2 textDocument];
        v13 = [UIDictationController shouldHideCursorForTextView:textDocument];

        if (!v13)
        {
          hasEditableSelection = 1;
          [(UITextSelectionView *)self clearRangeAnimated:1];
          interactionAssistant3 = [(UITextSelectionView *)self interactionAssistant];
          view = [interactionAssistant3 view];
          if (([view isEditable] & 1) == 0)
          {
            selection3 = [(UITextSelectionView *)self selection];
            hasEditableSelection = [selection3 hasEditableSelection];
          }

          interactionAssistant4 = [(UITextSelectionView *)self interactionAssistant];
          externalInteractions = [interactionAssistant4 externalInteractions];
          textInteractionMode = [externalInteractions textInteractionMode];

          interactionAssistant5 = [(UITextSelectionView *)self interactionAssistant];
          if ([interactionAssistant5 inGesture])
          {
            rangeView = [(UITextSelectionView *)self rangeView];
            v23 = [rangeView mode] != 1;
          }

          else
          {
            v23 = 0;
          }

          if (((hasEditableSelection | v23) & 1) == 0 || textInteractionMode == 1)
          {
            [(UITextSelectionView *)self clearCaret];
            goto LABEL_30;
          }

          [(UITextSelectionView *)self installIfNecessary];
          selection4 = [(UITextSelectionView *)self selection];
          [selection4 caretRect];
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;

          interactionAssistant6 = [(UITextSelectionView *)self interactionAssistant];
          view2 = [interactionAssistant6 view];
          textInputView = [view2 textInputView];
          [textInputView convertRect:self toView:{v42, v44, v46, v48}];
          MinX = v52;
          v55 = v54;
          width = v56;
          rect = v58;

          view3 = [interactionAssistant view];
          if (view3 && (v60 = view3, [interactionAssistant view], v61 = objc_claimAutoreleasedReturnValue(), v62 = objc_opt_respondsToSelector(), v61, v60, (v62 & 1) != 0))
          {
            view4 = [interactionAssistant view];
            [view4 selectionClipRect];
          }

          else
          {
            v68 = *MEMORY[0x1E695F050];
            v69 = *(MEMORY[0x1E695F050] + 8);
            v70 = *(MEMORY[0x1E695F050] + 16);
            v71 = *(MEMORY[0x1E695F050] + 24);
            view5 = [interactionAssistant view];
            if (!view5)
            {
              goto LABEL_42;
            }

            v73 = view5;
            view6 = [interactionAssistant view];
            v75 = objc_opt_respondsToSelector();

            if ((v75 & 1) == 0)
            {
              goto LABEL_42;
            }

            view4 = [interactionAssistant view];
            [view4 _selectionClipRect];
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
            interactionAssistant7 = [(UITextSelectionView *)self interactionAssistant];
            view7 = [interactionAssistant7 view];
            textInputView2 = [view7 textInputView];
            [textInputView2 convertRect:self toView:{v68, v69, v70, v71}];
            v68 = v79;
            v69 = v80;
            v70 = v81;
            v71 = v82;
          }

          caretView = [(UITextSelectionView *)self caretView];
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
            dynamicCaret = [(UITextSelectionView *)self dynamicCaret];
            if (dynamicCaret && (v89 = dynamicCaret, [(UIView *)caretView superview], v90 = objc_claimAutoreleasedReturnValue(), v90, v89, v90))
            {
              v99[0] = MEMORY[0x1E69E9820];
              v99[1] = 3221225472;
              v99[2] = __43__UITextSelectionView_updateSelectionRects__block_invoke;
              v99[3] = &unk_1E70F3B20;
              v91 = v100;
              v100[0] = caretView;
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
              v98[0] = caretView;
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
              v96[0] = caretView;
              *&v96[1] = x;
              *&v96[2] = y;
              *&v96[3] = width;
              *&v96[4] = height;
              [UIView performWithoutAnimation:v95];
            }

            superview = [(UIView *)caretView superview];

            if (!superview)
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
              [(UIView *)caretView bounds];
              UIAccessibilityZoomFocusChanged(UIAccessibilityZoomTypeInsertionPoint, v114, caretView);
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

    selection5 = [(UITextSelectionView *)self selection];
    selectedRange3 = [selection5 selectedRange];
    if ([selectedRange3 _isRanged])
    {
    }

    else
    {
      forceRangeView2 = [(UITextSelectionView *)self forceRangeView];

      if (!forceRangeView2)
      {
        goto LABEL_30;
      }
    }

    interactionAssistant8 = [(UITextSelectionView *)self interactionAssistant];
    textDocument2 = [interactionAssistant8 textDocument];
    v29 = [UIDictationController shouldHideSelectionUIForTextView:textDocument2];

    if (!v29)
    {
      [(UITextSelectionView *)self clearCaret];
      [(UITextSelectionView *)self installIfNecessary];
      selection6 = [(UITextSelectionView *)self selection];
      caretView = [selection6 selectionRects];

      if (![(UIView *)caretView count])
      {
        selection7 = [(UITextSelectionView *)self selection];
        [selection7 caretRect];
        v33 = [_UITextSelectionCaretRect selectionRectWithRect:?];
        v101[0] = v33;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:1];

        caretView = v34;
      }

      rangeView2 = [(UITextSelectionView *)self rangeView];
      superview2 = [rangeView2 superview];

      if (!superview2)
      {
        [(UIView *)self addSubview:rangeView2];
      }

      [rangeView2 setRects:caretView];
      interactionAssistant9 = [(UITextSelectionView *)self interactionAssistant];
      view8 = [interactionAssistant9 view];
      textInputView3 = [view8 textInputView];
      [textInputView3 bounds];
      [(UIView *)self setFrame:?];

      if (self->m_shouldEmphasizeNextSelectionRects)
      {
        [rangeView2 animateHighlighterExpanderAnimation];
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
    caretViewColor = [(UITextSelectionView *)self caretViewColor];
    [(UIView *)self->m_caretView setBackgroundColor:caretViewColor];
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
    selection = [(UITextSelectionView *)self selection];
    selectedRange = [selection selectedRange];
    _isRanged = [selectedRange _isRanged];

    if (_isRanged)
    {
      m_rangeView = self->m_rangeView;

      [(UITextRangeView *)m_rangeView updateDots];
    }
  }
}

- (void)appearOrFadeIfNecessary
{
  shouldBeVisible = [(UITextSelectionView *)self shouldBeVisible];
  [(UIView *)self alpha];
  if (v4 != 0.0 || !shouldBeVisible)
  {
    [(UIView *)self alpha];
    if (v6 != 0.0 && !shouldBeVisible)
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

- (void)setVisible:(BOOL)visible
{
  visibleCopy = visible;
  self->m_visible = visible;
  [(UITextSelectionView *)self _updateViewAnimateNotificationObservationIfNecessary];
  [(UITextSelectionView *)self appearOrFadeIfNecessary];
  v5 = visibleCopy && self->m_caretBlinks;

  [(UITextSelectionView *)self _setCaretBlinkAnimationEnabled:v5];
}

- (void)setCaretBlinks:(BOOL)blinks
{
  blinksCopy = blinks;
  if (_UIDeviceHasExternalTouchInput())
  {
    blinksCopy = [UIApp _overridesDynamicCaret] & blinksCopy;
  }

  if (self->m_caretBlinks != blinksCopy || !self->_caretBlinkAnimation)
  {
    self->m_caretBlinks = blinksCopy;
    if (self->m_caretShowingNow)
    {

      [(UITextSelectionView *)self _setCaretBlinkAnimationEnabled:blinksCopy];
    }
  }
}

- (void)setCaretVisible:(BOOL)visible
{
  if (self->m_caretVisible != visible)
  {
    self->m_caretVisible = visible;
    if (visible)
    {
      [(UITextSelectionView *)self addCaretToSubview];
      selection = [(UITextSelectionView *)self selection];
      selectedRange = [selection selectedRange];
      _isRanged = [selectedRange _isRanged];

      if ((_isRanged & 1) == 0)
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

- (void)setGhostAppearance:(BOOL)appearance
{
  if (self->m_ghostApperarance != appearance)
  {
    self->m_ghostApperarance = appearance;
    caretViewColor = [(UITextSelectionView *)self caretViewColor];
    [(UIView *)self->m_caretView setBackgroundColor:caretViewColor];
  }
}

- (BOOL)_updateEditMenuPositionForPreferredArrowDirection:(int64_t)direction replacements:(id)replacements
{
  replacementsCopy = replacements;
  if ([(UITextSelectionView *)self _editMenuIsVisible])
  {
    [(UITextSelectionView *)self _presentEditMenuWithPreferredDirection:direction replacements:replacementsCopy];
  }

  return 1;
}

- (void)_showCommandsWithReplacements:(id)replacements forDictation:(BOOL)dictation afterDelay:(double)delay
{
  replacementsCopy = replacements;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__UITextSelectionView__showCommandsWithReplacements_forDictation_afterDelay___block_invoke;
  aBlock[3] = &unk_1E70F5AF0;
  aBlock[4] = self;
  v9 = replacementsCopy;
  v18 = v9;
  dictationCopy = dictation;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (delay == 0.0)
  {
    (*(v10 + 2))(v10);
  }

  else
  {
    m_delayShowingCommands = self->m_delayShowingCommands;
    v13 = dispatch_time(0, (delay * 1000000000.0));
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

- (void)_showCommandsWithReplacements:(id)replacements isForContextMenu:(BOOL)menu forDictation:(BOOL)dictation arrowDirection:(int64_t)direction
{
  dictationCopy = dictation;
  v37 = *MEMORY[0x1E69E9840];
  replacementsCopy = replacements;
  self->m_showingCommandsCounter = 0;
  self->m_showingCommandsCounterForRotate = 0;
  interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
  textDocument = [interactionAssistant textDocument];
  shouldSuppressSelectionCommands = [UIDictationController shouldHideSelectionUIForTextView:textDocument];
  if ((shouldSuppressSelectionCommands & 1) == 0 && !menu)
  {
    interactionAssistant2 = [(UITextSelectionView *)self interactionAssistant];
    shouldSuppressSelectionCommands = [interactionAssistant2 shouldSuppressSelectionCommands];
  }

  if ((shouldSuppressSelectionCommands & 1) == 0)
  {
    [(UITextSelectionView *)self cancelDelayedCommandRequests];
    if ([(UITextSelectionView *)self selectionCommandsShowing])
    {
      if (![(UITextSelectionView *)self _updateEditMenuPositionForPreferredArrowDirection:direction replacements:replacementsCopy])
      {
        [(UITextSelectionView *)self hideSelectionCommands];
      }
    }

    else
    {
      v15 = +[UIKeyboardImpl activeInstance];
      hasMarkedText = [v15 hasMarkedText];

      if ((hasMarkedText & 1) == 0)
      {
        v17 = [replacementsCopy indexOfObjectPassingTest:&__block_literal_global_608];
        v18 = +[UIKeyboardImpl activeInstance];
        isPredictionViewControllerVisible = [v18 isPredictionViewControllerVisible];

        if (dictationCopy && v17 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v20 = +[UIDevice currentDevice];
          userInterfaceIdiom = [v20 userInterfaceIdiom];

          if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1 && (([replacementsCopy count] != 0) & isPredictionViewControllerVisible) == 1)
          {
            v22 = +[UIKeyboardImpl activeInstance];
            autocorrectionController = [v22 autocorrectionController];

            array = [MEMORY[0x1E695DF70] array];
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v24 = replacementsCopy;
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
                  [array addObject:v29];
                }

                v26 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
              }

              while (v26);
            }

            v30 = [MEMORY[0x1E69D9570] listWithAutocorrection:0 predictions:array];
            [autocorrectionController setAutocorrectionList:v30];
          }
        }

        [(UITextSelectionView *)self _presentEditMenuWithPreferredDirection:direction replacements:replacementsCopy];
      }
    }
  }
}

- (id)_editMenuSourceWindow
{
  keyboardSceneDelegate = [(UIView *)self keyboardSceneDelegate];
  containerWindow = [keyboardSceneDelegate containerWindow];

  window = [(UIView *)self window];
  _isRemoteKeyboardWindow = [window _isRemoteKeyboardWindow];

  if (_isRemoteKeyboardWindow)
  {
    window2 = [(UIView *)self window];

    containerWindow = window2;
  }

  return containerWindow;
}

- (id)menuInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->m_interactionAssistant);
  _editMenuAssistant = [WeakRetained _editMenuAssistant];
  menuInteraction = [_editMenuAssistant menuInteraction];

  return menuInteraction;
}

- (BOOL)_editMenuIsVisible
{
  WeakRetained = objc_loadWeakRetained(&self->m_interactionAssistant);
  _editMenuAssistant = [WeakRetained _editMenuAssistant];
  _editMenuIsVisible = [_editMenuAssistant _editMenuIsVisible];

  return _editMenuIsVisible;
}

- (void)_presentEditMenuWithPreferredDirection:(int64_t)direction replacements:(id)replacements
{
  replacementsCopy = replacements;
  WeakRetained = objc_loadWeakRetained(&self->m_interactionAssistant);
  _editMenuAssistant = [WeakRetained _editMenuAssistant];
  [_editMenuAssistant _presentEditMenuWithPreferredDirection:direction replacements:replacementsCopy];
}

- (void)updateSelectionCommands
{
  if ([(UITextSelectionView *)self selectionCommandsShowing])
  {
    interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
    view = [interactionAssistant view];

    if ([(UITextSelectionView *)self _viewUsesAsynchronousProtocol]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __46__UITextSelectionView_updateSelectionCommands__block_invoke;
      v6[3] = &unk_1E70F5DB8;
      v6[4] = self;
      [view requestPreferredArrowDirectionForEditMenuWithCompletionHandler:v6];
    }

    else
    {
      replacements = [(UITextSelectionView *)self replacements];
      [(UITextSelectionView *)self _updateEditMenuPositionForPreferredArrowDirection:0 replacements:replacements];
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

- (void)showCalloutBarAfterDelay:(double)delay
{
  WeakRetained = objc_loadWeakRetained(&self->m_interactionAssistant);
  _editMenuAssistant = [WeakRetained _editMenuAssistant];

  if (![_editMenuAssistant _editMenuDismissedRecently] || objc_msgSend(_editMenuAssistant, "_editMenuDismissedByActionSelection"))
  {
    [(UITextSelectionView *)self cancelDelayedCommandRequests];
    self->m_delayShowingCommands = 1;
    replacements = [(UITextSelectionView *)self replacements];
    [(UITextSelectionView *)self _showCommandsWithReplacements:replacements forDictation:0 afterDelay:delay];

    replacements2 = [(UITextSelectionView *)self replacements];
    v8 = [replacements2 count];

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

    rangeView = [(UITextSelectionView *)self rangeView];
    [rangeView setMode:v9];
  }
}

- (void)showSelectionCommandsAfterDelay:(double)delay
{
  interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
  textDocument = [interactionAssistant textDocument];
  v7 = [UIDictationController shouldHideSelectionUIForTextView:textDocument];

  if (!v7)
  {
    [(UITextSelectionView *)self setReplacements:0];

    [(UITextSelectionView *)self showCalloutBarAfterDelay:delay];
  }
}

- (void)updateRangeViewForSelectionMode
{
  rangeView = [(UITextSelectionView *)self rangeView];
  [rangeView setMode:0];
}

- (void)_showSelectionCommandsForContextMenu:(BOOL)menu
{
  menuCopy = menu;
  interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
  textDocument = [interactionAssistant textDocument];
  v7 = [UIDictationController shouldHideSelectionUIForTextView:textDocument];

  if (!v7)
  {
    selection = [(UITextSelectionView *)self selection];
    isCommitting = [selection isCommitting];

    if (isCommitting)
    {
      [(UITextSelectionView *)self showCommandsWithReplacements:0];
    }

    else if (menuCopy)
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

- (void)calculateReplacementsWithGenerator:(id)generator andShowAfterDelay:(double)delay
{
  replacements = [generator replacements];
  if ([replacements count])
  {
    [(UITextSelectionView *)self _showCommandsWithReplacements:replacements forDictation:0 afterDelay:delay];
  }
}

- (void)showReplacementsWithGenerator:(id)generator forDictation:(BOOL)dictation afterDelay:(double)delay
{
  dictationCopy = dictation;
  generatorCopy = generator;
  [(UITextSelectionView *)self cancelDelayedCommandRequests];
  self->m_dictationReplacementsMode = dictationCopy;
  if (dictationCopy)
  {
    v9 = 0;
    v10 = 3;
  }

  else
  {
    isStringToReplaceMisspelled = [generatorCopy isStringToReplaceMisspelled];
    v9 = isStringToReplaceMisspelled;
    if (isStringToReplaceMisspelled)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }
  }

  rangeView = [(UITextSelectionView *)self rangeView];
  [rangeView setMode:v10];

  if ((v9 & 1) != 0 || dictationCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"UIKeyboardPredictionsAvailable" object:0];
  }

  interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
  view = [interactionAssistant view];
  v16 = [view conformsToProtocol:&unk_1F016CC30];

  if (v16)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __77__UITextSelectionView_showReplacementsWithGenerator_forDictation_afterDelay___block_invoke;
    v24 = &unk_1E70FD1B8;
    selfCopy = self;
    v26 = generatorCopy;
    v17 = _Block_copy(&v21);
    v18 = [UIKeyboardImpl sharedInstance:v21];
    taskQueue = [v18 taskQueue];
    v20 = [taskQueue scheduleTask:v17 timeInterval:0 repeats:delay];
  }

  else
  {
    [(UITextSelectionView *)self calculateReplacementsWithGenerator:generatorCopy andShowAfterDelay:delay];
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

- (void)hideSelectionCommandsAfterDelay:(double)delay reason:(int64_t)reason
{
  [(UITextSelectionView *)self cancelDelayedCommandRequests];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__UITextSelectionView_hideSelectionCommandsAfterDelay_reason___block_invoke;
  v12[3] = &unk_1E70F32F0;
  v12[4] = self;
  v12[5] = reason;
  v7 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, v12);
  v8 = v7;
  if (delay == 0.0)
  {
    v7[2](v7);
  }

  else
  {
    v9 = _Block_copy(v7);
    hideSelectionCommandsWorkItem = self->_hideSelectionCommandsWorkItem;
    self->_hideSelectionCommandsWorkItem = v9;

    v11 = dispatch_time(0, (delay * 1000000000.0));
    dispatch_after(v11, MEMORY[0x1E69E96A0], v8);
  }
}

- (void)_hideSelectionCommandsWithReason:(int64_t)reason
{
  [(UITextSelectionView *)self cancelDelayedCommandRequests];
  menuInteraction = [(UITextSelectionView *)self menuInteraction];
  [menuInteraction dismissSelectionCommandsWithReason:reason];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  dynamicCaret = [(UITextSelectionView *)self dynamicCaret];

  if (!dynamicCaret || (-[UITextSelectionView caretView](self, "caretView"), v9 = objc_claimAutoreleasedReturnValue(), -[UITextSelectionView caretView](self, "caretView"), v10 = objc_claimAutoreleasedReturnValue(), [v10 _window], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "convertPoint:fromView:", self, x, y), objc_msgSend(v9, "convertPoint:fromView:", 0), v13 = v12, v15 = v14, v11, v10, v9, -[UITextSelectionView caretView](self, "caretView"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "hitTest:withEvent:", eventCopy, v13, v15), v17 = objc_claimAutoreleasedReturnValue(), v16, !v17))
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

    selection = [(UITextSelectionView *)self selection];
    selectedRange = [selection selectedRange];
    if ([selectedRange _isRanged])
    {
      _window = [(UIView *)self->m_rangeView _window];
      v22 = (_window != 0) & v18;

      if (v22 == 1)
      {
        m_rangeView = self->m_rangeView;
        _window2 = [(UIView *)m_rangeView _window];
        [_window2 convertPoint:self fromView:{x, y}];
        [(UIView *)m_rangeView convertPoint:0 fromView:?];
        v26 = v25;
        v28 = v27;

        v17 = [(UIView *)self->m_rangeView hitTest:eventCopy withEvent:v26, v28];
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
  rangeView = [(UITextSelectionView *)self rangeView];
  [rangeView setMode:0];
}

- (void)configureForHighlightMode
{
  rangeView = [(UITextSelectionView *)self rangeView];
  [rangeView setMode:1];
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

  rangeView = [(UITextSelectionView *)self rangeView];
  [rangeView setMode:v2];
}

- (void)configureForPencilHighlightMode
{
  rangeView = [(UITextSelectionView *)self rangeView];
  [rangeView setMode:4];
}

- (void)configureForPencilDeletionPreviewMode
{
  rangeView = [(UITextSelectionView *)self rangeView];
  [rangeView setMode:5];
}

- (void)clearCaret
{
  self->m_activeCaret = 0;
  [(UITextSelectionView *)self hideCaret:0];
  caretView = [(UITextSelectionView *)self caretView];
  [caretView removeFromSuperview];

  if (self->m_caretAnimating)
  {

    [(UITextSelectionView *)self endFloatingCursor];
  }
}

- (void)_hideCaret:(int)caret
{
  switch(caret)
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
      selfCopy = self;
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
      selfCopy2 = self;
      v5 = 0.25;
      v6 = &v12;
LABEL_9:
      [UIView animateWithDuration:117440512 delay:v6 options:0 animations:v5 completion:0.0, v7, v8, v9, v10, selfCopy, v12, v13, v14, v15, selfCopy2];
      break;
    case 0:
      caretView = [(UITextSelectionView *)self caretView];
      [caretView setAlpha:0.0];

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

- (void)animateBoxShrinkOn:(id)on
{
  v20[2] = *MEMORY[0x1E69E9840];
  onCopy = on;
  [onCopy frame];
  v5 = v4;
  v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  [v6 setFrameInterval:0.0166666667];
  [v6 setDuration:0.125];
  [v6 setFillMode:*MEMORY[0x1E69797E0]];
  keyPath = [v6 keyPath];
  [onCopy addAnimation:v6 forKey:keyPath];

  LODWORD(v8) = 1.0;
  [onCopy setOpacity:v8];
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

  keyPath2 = [v9 keyPath];
  [onCopy addAnimation:v9 forKey:keyPath2];

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
  keyPath3 = [v15 keyPath];
  [onCopy addAnimation:v15 forKey:keyPath3];
}

- (void)animateExpanderOn:(id)on
{
  v30[4] = *MEMORY[0x1E69E9840];
  onCopy = on;
  [onCopy frame];
  v5 = v4;
  v7 = v6;
  v28 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  [v28 setFrameInterval:0.0166666667];
  [v28 setDuration:0.125];
  v8 = *MEMORY[0x1E69797D8];
  [v28 setFillMode:*MEMORY[0x1E69797D8]];
  [v28 setValues:&unk_1EFE2DA68];
  keyPath = [v28 keyPath];
  [onCopy addAnimation:v28 forKey:keyPath];

  LODWORD(v10) = 1.0;
  [onCopy setOpacity:v10];
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

  keyPath2 = [v11 keyPath];
  [onCopy addAnimation:v11 forKey:keyPath2];

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

  keyPath3 = [v19 keyPath];
  [onCopy addAnimation:v19 forKey:keyPath3];

  v26 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  [v26 setFrameInterval:0.0166666667];
  [v26 setDuration:0.600000024];
  [v26 setFillMode:v8];
  [v26 setValues:&unk_1EFE2DAB0];
  [v26 setKeyTimes:&unk_1EFE2DAC8];
  [v26 setBeginTime:0.0925];
  v27 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v26 setTimingFunction:v27];

  [onCopy addAnimation:v26 forKey:@"opacity2"];
}

- (void)showInitialCaret
{
  if ([(UITextSelectionView *)self visible]&& !self->m_caretAnimating && self->m_caretVisible)
  {
    keyboardSceneDelegate = [(UIView *)self keyboardSceneDelegate];
    containerWindow = [keyboardSceneDelegate containerWindow];
    _isFullscreen = [containerWindow _isFullscreen];

    if (_isFullscreen)
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

- (void)showCaret:(int)caret
{
  v3 = *&caret;
  if ([(UITextSelectionView *)self visible]&& !self->m_caretAnimating && self->m_caretVisible)
  {

    [(UITextSelectionView *)self _showCaret:v3];
  }
}

- (void)_showCaret:(int)caret
{
  switch(caret)
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
      selfCopy = self;
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
      selfCopy2 = self;
      v5 = &v11;
LABEL_9:
      [UIView animateWithDuration:117440512 delay:v5 options:0 animations:0.15 completion:0.0, v6, v7, v8, v9, selfCopy, v11, v12, v13, v14, selfCopy2];
      break;
    case 0:
      caretView = [(UITextSelectionView *)self caretView];
      [caretView setAlpha:1.0];

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

- (void)_setCaretBlinkAnimationEnabled:(BOOL)enabled
{
  if (enabled && [(UITextSelectionView *)self visible])
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

    layer = [(UIView *)self->m_caretView layer];
    [(CAKeyframeAnimation *)layer addAnimation:self->_caretBlinkAnimation forKey:@"UITextSelectionViewCaretBlinkAnimation"];
    v7 = layer;
  }

  else
  {
    if (!self->_caretBlinkAnimation)
    {
      return;
    }

    layer2 = [(UIView *)self->m_floatingCaretView layer];
    [layer2 removeAnimationForKey:@"UITextSelectionViewCaretBlinkAnimation"];

    layer3 = [(UIView *)self->m_caretView layer];
    [layer3 removeAnimationForKey:@"UITextSelectionViewCaretBlinkAnimation"];

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
    ghostCaretViewColor = [(UITextSelectionView *)self ghostCaretViewColor];
  }

  else
  {
    interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
    view = [interactionAssistant view];
    if (objc_opt_respondsToSelector())
    {
      interactionAssistant2 = [(UITextSelectionView *)self interactionAssistant];
      view2 = [interactionAssistant2 view];
      ghostCaretViewColor = [view2 insertionPointColor];
    }

    else
    {
      ghostCaretViewColor = +[UIColor insertionPointColor];
    }
  }

  return ghostCaretViewColor;
}

- (void)addCaretToSubview
{
  caretView = [(UITextSelectionView *)self caretView];
  [(UIView *)self addSubview:caretView];
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
      caretViewColor = [(UITextSelectionView *)self caretViewColor];
      [(UIView *)self->m_caretView setBackgroundColor:caretViewColor];

      [(UIView *)self->m_caretView setAlpha:0.0];
      layer = [(UIView *)self->m_caretView layer];
      [layer setCornerRadius:1.0];
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
  ghostCaretViewColor = [(UITextSelectionView *)self ghostCaretViewColor];
  [(UIView *)v4 setBackgroundColor:ghostCaretViewColor];

  layer = [(UIView *)v4 layer];
  [layer setCornerRadius:1.0];

  caretView = [(UITextSelectionView *)self caretView];
  superview = [caretView superview];

  if (superview)
  {
    [(UIView *)self->m_caretView frame];
    [(UIView *)v4 setFrame:?];
    layer2 = [(UIView *)self->m_caretView layer];
    [layer2 cornerRadius];
    v11 = v10;
    layer3 = [(UIView *)v4 layer];
    [layer3 setCornerRadius:v11];

    [(UIView *)self addSubview:v4];
  }

  [(UIView *)self->m_floatingCaretView removeFromSuperview];
  objc_storeStrong(&self->m_floatingCaretView, self->m_caretView);
  m_caretView = self->m_caretView;
  self->m_caretView = v4;
  v14 = v4;

  floatingCaretView = [(UITextSelectionView *)self floatingCaretView];
  superview2 = [floatingCaretView superview];

  if (!superview2)
  {
    selection = [(UITextSelectionView *)self selection];
    selectedRange = [selection selectedRange];
    start = [selectedRange start];

    if (start)
    {
      selection2 = [(UITextSelectionView *)self selection];
      document = [selection2 document];
      [document caretRectForPosition:start];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      floatingCaretView2 = [(UITextSelectionView *)self floatingCaretView];
      [floatingCaretView2 setFrame:{v23, v25, v27, v29}];

      floatingCaretView3 = [(UITextSelectionView *)self floatingCaretView];
      layer4 = [floatingCaretView3 layer];
      [layer4 setCornerRadius:v27 * 0.5];
    }

    floatingCaretView4 = [(UITextSelectionView *)self floatingCaretView];
    [(UIView *)self addSubview:floatingCaretView4];
  }

  floatingCaretViewColor = [(UITextSelectionView *)self floatingCaretViewColor];
  [(UIView *)self->m_floatingCaretView setBackgroundColor:floatingCaretViewColor];

  [(UIView *)self->m_floatingCaretView bounds];
  v35 = [UIBezierPath bezierPathWithRect:?];
  cGPath = [v35 CGPath];
  layer5 = [(UIView *)self->m_floatingCaretView layer];
  [layer5 setShadowPath:cGPath];

  v38 = [UIColor colorWithRed:0.274509804 green:0.431372549 blue:0.725490196 alpha:1.0];
  cGColor = [v38 CGColor];
  layer6 = [(UIView *)self->m_floatingCaretView layer];
  [layer6 setShadowColor:cGColor];

  layer7 = [(UIView *)self->m_floatingCaretView layer];
  [layer7 setShadowOffset:{0.0, 10.0}];

  layer8 = [(UIView *)self->m_floatingCaretView layer];
  [layer8 setShadowRadius:3.0];

  layer9 = [(UIView *)self->m_floatingCaretView layer];

  LODWORD(v43) = 1051931443;
  [layer9 setShadowOpacity:v43];
}

- (void)animatePulsingIndirectCaret:(id)caret
{
  v3 = MEMORY[0x1E69794A8];
  caretCopy = caret;
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
  [caretCopy addAnimation:v6 forKey:0];
  [caretCopy addAnimation:v8 forKey:0];
}

- (void)animatePulsingDirectCaret:(id)caret
{
  caretCopy = caret;
  [caretCopy bounds];
  v5 = v4;
  [caretCopy bounds];
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
  [caretCopy addAnimation:v12 forKey:@"bounds"];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [caretCopy setBounds:{0.0, 0.0, v9, v10}];

  [MEMORY[0x1E6979518] setDisableActions:0];
}

- (void)willBeginFloatingCursor:(BOOL)cursor
{
  cursorCopy = cursor;
  [(UIView *)self->m_caretView frame];
  [(UITextSelectionView *)self setStashedCaretRect:?];
  [(UIView *)self->m_caretView frame];
  [(UITextSelectionView *)self setPreviousGhostCaretRect:?];

  [(UITextSelectionView *)self setIsIndirectFloatingCaret:cursorCopy];
}

- (void)beginFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selection = [(UITextSelectionView *)self selection];
  selectedRange = [selection selectedRange];

  if (!selectedRange)
  {
    return;
  }

  floatingCaretView = [(UITextSelectionView *)self floatingCaretView];
  if (floatingCaretView)
  {
    m_caretAnimating = self->m_caretAnimating;

    if (m_caretAnimating)
    {
      return;
    }
  }

  caretView = [(UITextSelectionView *)self caretView];
  [caretView frame];
  IsEmpty = CGRectIsEmpty(v21);

  if (IsEmpty)
  {
    [(UITextSelectionView *)self updateSelectionRects];
  }

  [(UITextSelectionView *)self hideSelectionCommands];
  [(UITextSelectionView *)self showCaret:0];
  self->m_caretAnimating = 1;
  interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
  _assertionController = [interactionAssistant _assertionController];
  v14 = [_assertionController nonBlinkingAssertionWithReason:@"Floating cursor"];
  floatingCaretBlinkAssertion = self->_floatingCaretBlinkAssertion;
  self->_floatingCaretBlinkAssertion = v14;

  [(UITextSelectionView *)self beginFloatingCaretView];
  selection2 = [(UITextSelectionView *)self selection];
  if (![selection2 granularity])
  {

LABEL_11:
    [MEMORY[0x1E6979518] begin];
    if ([(UITextSelectionView *)self isIndirectFloatingCaret]|| [(UITextSelectionView *)self _shouldUseIndirectFloatingCaret])
    {
      floatingCaretView2 = [(UITextSelectionView *)self floatingCaretView];
      layer = [floatingCaretView2 layer];
      [(UITextSelectionView *)self animatePulsingIndirectCaret:layer];
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

- (CGPoint)floatingCursorPositionForPoint:(CGPoint)point
{
  [(UITextSelectionView *)self floatingCursorPositionForPoint:1 lineSnapping:point.x, point.y];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)floatingCursorPositionForPoint:(CGPoint)point lineSnapping:(BOOL)snapping
{
  snappingCopy = snapping;
  y = point.y;
  x = point.x;
  interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
  view = [interactionAssistant view];
  v10 = objc_opt_respondsToSelector();

  interactionAssistant2 = [(UITextSelectionView *)self interactionAssistant];
  view2 = [interactionAssistant2 view];
  view3 = view2;
  if (v10)
  {
    [view2 _selectionClipRect];
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
    interactionAssistant2 = [(UITextSelectionView *)self interactionAssistant];
    view3 = [interactionAssistant2 view];
    [view3 selectionClipRect];
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
    interactionAssistant3 = [(UITextSelectionView *)self interactionAssistant];
    view4 = [interactionAssistant3 view];
    textInputView = [view4 textInputView];
    [textInputView bounds];
    v19 = v26;
    v20 = v27;
    v21 = v28;
    v22 = v29;
  }

  interactionAssistant4 = [(UITextSelectionView *)self interactionAssistant];
  view5 = [interactionAssistant4 view];
  textInputView2 = [view5 textInputView];
  [(UIView *)self convertRect:textInputView2 fromView:v19, v20, v21, v22];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  floatingCaretView = [(UITextSelectionView *)self floatingCaretView];
  [floatingCaretView frame];
  v43 = v42 * 0.5;

  floatingCaretView2 = [(UITextSelectionView *)self floatingCaretView];
  [floatingCaretView2 frame];
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

  if (snappingCopy)
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

- (void)updateFloatingCursorAtPoint:(CGPoint)point animated:(BOOL)animated
{
  animatedCopy = animated;
  self->m_caretAnimating = 1;
  [(UITextSelectionView *)self floatingCursorPositionForPoint:point.x, point.y];
  v7 = v6;
  v9 = v8;
  v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v10 preferencesActions];
  v12 = [preferencesActions BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

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
    if (animatedCopy)
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
    floatingCaretView = [(UITextSelectionView *)self floatingCaretView];
    layer = [floatingCaretView layer];
    [layer setPosition:{v7, v9}];
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

- (void)animateCaret:(id)caret toPosition:(CGPoint)position withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = position.y;
  x = position.x;
  v9 = MEMORY[0x1E69793D0];
  caretCopy = caret;
  LODWORD(v11) = 1048911544;
  LODWORD(v12) = 1054615798;
  LODWORD(v13) = 1065520988;
  v28 = [v9 functionWithControlPoints:v11 :0.0 :v12 :v13];
  v14 = [MEMORY[0x1E6979318] animationWithKeyPath:@"position"];
  [v14 setFrameInterval:0.0166666667];
  [v14 setDuration:0.15];
  [v14 setTimingFunction:v28];
  v15 = MEMORY[0x1E696B098];
  [caretCopy position];
  v16 = [v15 valueWithCGPoint:?];
  [v14 setFromValue:v16];

  v17 = [MEMORY[0x1E696B098] valueWithCGPoint:{x, y}];
  [v14 setToValue:v17];

  keyPath = [v14 keyPath];
  [caretCopy addAnimation:v14 forKey:keyPath];

  [caretCopy setPosition:{x, y}];
  [caretCopy bounds];
  v20 = v19;
  v22 = v21;
  v23 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
  [v23 setFrameInterval:0.0166666667];
  [v23 setDuration:0.15];
  [v23 setTimingFunction:v28];
  v24 = MEMORY[0x1E696B098];
  [caretCopy bounds];
  v25 = [v24 valueWithCGRect:?];
  [v23 setFromValue:v25];

  v26 = [MEMORY[0x1E696B098] valueWithCGRect:{v20, v22, width, height}];
  [v23 setToValue:v26];

  keyPath2 = [v23 keyPath];
  [caretCopy addAnimation:v23 forKey:keyPath2];

  [caretCopy setBounds:{v20, v22, width, height}];
}

- (void)endFloatingCaretView
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v3 preferencesActions];
  v5 = [preferencesActions BOOLForPreferenceKey:@"YukonMagnifiersDisabled"];

  if (v5 && !self->m_caretShowingNow)
  {
    [(UITextSelectionView *)self showCaret:2];
  }

  caretViewColor = [(UITextSelectionView *)self caretViewColor];
  [(UIView *)self->m_floatingCaretView setBackgroundColor:caretViewColor];

  layer = [(UIView *)self->m_floatingCaretView layer];
  [layer setShadowColor:0];

  layer2 = [(UIView *)self->m_floatingCaretView layer];
  [layer2 setShadowPath:0];

  layer3 = [(UIView *)self->m_floatingCaretView layer];
  [layer3 setShadowOpacity:0.0];

  [(UIView *)self->m_caretView removeFromSuperview];
  objc_storeStrong(&self->m_caretView, self->m_floatingCaretView);
  m_floatingCaretView = self->m_floatingCaretView;
  self->m_floatingCaretView = 0;
}

- (void)endFloatingCursor
{
  floatingCaretBlinkAssertion = self->_floatingCaretBlinkAssertion;
  self->_floatingCaretBlinkAssertion = 0;

  caretView = [(UITextSelectionView *)self caretView];
  superview = [caretView superview];

  if (superview)
  {
    [MEMORY[0x1E6979518] begin];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __40__UITextSelectionView_endFloatingCursor__block_invoke;
    v16[3] = &unk_1E70F3590;
    v16[4] = self;
    [MEMORY[0x1E6979518] setCompletionBlock:v16];
    floatingCaretView = [(UITextSelectionView *)self floatingCaretView];
    layer = [floatingCaretView layer];
    caretView2 = [(UITextSelectionView *)self caretView];
    layer2 = [caretView2 layer];
    [layer2 position];
    v11 = v10;
    v13 = v12;
    caretView3 = [(UITextSelectionView *)self caretView];
    [caretView3 bounds];
    [(UITextSelectionView *)self animateCaret:layer toPosition:v11 withSize:v13];

    [MEMORY[0x1E6979518] commit];
  }

  else
  {
    floatingCaretView2 = [(UITextSelectionView *)self floatingCaretView];
    [floatingCaretView2 removeFromSuperview];

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

- (void)releaseGrabberHandleSuppressionAssertion:(id)assertion
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

- (void)updateDocumentHasContent:(BOOL)content
{
  contentCopy = content;
  if ([(UIView *)self->m_caretView conformsToProtocol:&unk_1F00C8D58])
  {
    m_caretView = self->m_caretView;

    [(UIView *)m_caretView setDocumentHasContent:contentCopy];
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
  interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
  activeSelectionController = [interactionAssistant activeSelectionController];
  selection = [activeSelectionController selection];

  return selection;
}

- (CGRect)selectionBoundingBox
{
  selection = [(UITextSelectionView *)self selection];
  selectedRange = [selection selectedRange];
  _isRanged = [selectedRange _isRanged];

  if (_isRanged)
  {
    rects = [(UITextRangeView *)self->m_rangeView rects];
    [(UITextSelectionView *)self selectionBoundingBoxForRects:rects];
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

- (CGRect)selectionBoundingBoxForRects:(id)rects
{
  v47 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  *v41 = *MEMORY[0x1E695F058];
  *&v41[8] = *(MEMORY[0x1E695F058] + 8);
  *&v41[16] = *(MEMORY[0x1E695F058] + 16);
  *&v41[24] = *(MEMORY[0x1E695F058] + 24);
  interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
  view = [interactionAssistant view];
  textInputView = [view textInputView];
  [textInputView visibleBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = rectsCopy;
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
          interactionAssistant2 = [(UITextSelectionView *)self interactionAssistant];
          view2 = [interactionAssistant2 view];
          textInputView2 = [view2 textInputView];
          [textInputView2 convertRect:self toView:{x, y, width, height}];
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

- (void)layoutChangedByScrolling:(BOOL)scrolling
{
  [(UITextSelectionView *)self updateSelectionRects];

  [(UITextSelectionView *)self updateSelectionCommands];
}

- (void)prepareForMagnification
{
  rangeView = [(UITextSelectionView *)self rangeView];
  superview = [rangeView superview];

  if (superview)
  {
    rangeView2 = [(UITextSelectionView *)self rangeView];
    [rangeView2 prepareForMagnification];
  }
}

- (void)doneMagnifying
{
  rangeView = [(UITextSelectionView *)self rangeView];
  superview = [rangeView superview];

  if (superview)
  {
    rangeView2 = [(UITextSelectionView *)self rangeView];
    [rangeView2 doneMagnifying];
  }
}

- (void)scaleWillChange:(id)change
{
  changeCopy = change;
  v4 = [(UITextSelectionView *)self affectedByScrollerNotification:changeCopy];
  v5 = changeCopy;
  if (v4)
  {
    userInfo = [changeCopy userInfo];
    if (!userInfo || (v7 = userInfo, [changeCopy userInfo], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", @"UITextSelectionZoomScaleDidChange"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v8, v7, v10))
    {
      self->m_wasShowingCommands |= [(UITextSelectionView *)self selectionCommandsShowing];
      [(UITextSelectionView *)self hideSelectionCommands];
    }

    superview = [(UIView *)self->m_rangeView superview];

    v5 = changeCopy;
    if (superview)
    {
      [(UITextRangeView *)self->m_rangeView scaleWillChange];
      v5 = changeCopy;
    }
  }
}

- (void)scaleDidChange:(id)change
{
  changeCopy = change;
  v4 = [(UITextSelectionView *)self affectedByScrollerNotification:changeCopy];
  v5 = changeCopy;
  if (v4)
  {
    userInfo = [changeCopy userInfo];
    if (!userInfo || (v7 = userInfo, [changeCopy userInfo], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKey:", @"UITextSelectionZoomScaleDidChange"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "BOOLValue"), v9, v8, v7, v10))
    {
      selection = [(UITextSelectionView *)self selection];
      selectedRange = [selection selectedRange];
      _isRanged = [selectedRange _isRanged];

      if (_isRanged && self->m_wasShowingCommands)
      {
        [(UITextSelectionView *)self showCalloutBarAfterDelay:0.1];
      }

      self->m_wasShowingCommands = 0;
    }

    superview = [(UIView *)self->m_rangeView superview];

    v5 = changeCopy;
    if (superview)
    {
      [(UITextRangeView *)self->m_rangeView scaleDidChange];
      v5 = changeCopy;
    }
  }
}

- (void)willRotate:(id)rotate
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

    superview = [(UIView *)self->m_rangeView superview];

    if (superview)
    {
      m_rangeView = self->m_rangeView;

      [(UITextRangeView *)m_rangeView willRotate];
    }
  }
}

- (void)didRotate:(id)rotate
{
  superview = [(UIView *)self->m_rangeView superview];

  if (superview)
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

- (void)updateBaseIsStartWithDocumentPoint:(CGPoint)point
{
  m_rangeView = self->m_rangeView;
  if (m_rangeView)
  {
    [(UITextRangeView *)m_rangeView updateBaseIsStartWithDocumentPoint:point.x, point.y];
  }
}

- (void)updateSelectionWithDocumentPoint:(CGPoint)point
{
  m_rangeView = self->m_rangeView;
  if (m_rangeView)
  {
    [(UITextRangeView *)m_rangeView updateSelectionWithDocumentPoint:point.x, point.y];
  }
}

- (id)scrollView
{
  _scroller = [(UIView *)self _scroller];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = _scroller;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (CGRect)clippedTargetRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!+[UIKeyboard isKeyboardProcess])
  {
    interactionAssistant = [(UITextSelectionView *)self interactionAssistant];
    view = [interactionAssistant view];
    textInputView = [view textInputView];
    [textInputView visibleBounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    interactionAssistant2 = [(UITextSelectionView *)self interactionAssistant];
    view2 = [interactionAssistant2 view];
    textInputView2 = [view2 textInputView];
    [(UIView *)self convertRect:textInputView2 fromView:v12, v14, v16, v18];
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
    window = [(UIView *)self window];
    _screen = [(UIView *)self _screen];
    [_screen bounds];
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    _screen2 = [(UIView *)self _screen];
    coordinateSpace = [_screen2 coordinateSpace];
    [window convertRect:coordinateSpace fromCoordinateSpace:{v37, v39, v41, v43}];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;

    window2 = [(UIView *)self window];
    [(UIView *)self convertRect:window2 fromView:v47, v49, v51, v53];
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
    scrollView = [(UITextSelectionView *)self scrollView];
    if (scrollView)
    {
      [(UIView *)self convertRect:scrollView toView:x, y, width, height];
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;
      [scrollView bounds];
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
        [(UIView *)self convertRect:scrollView fromView:v74, v75, v76, v77];
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
            interactionAssistant3 = [(UITextSelectionView *)self interactionAssistant];
            view3 = [interactionAssistant3 view];
            isEditing = [view3 isEditing];

            if (isEditing)
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

- (void)mustFlattenForAlert:(id)alert
{
  alertCopy = alert;
  object = [alertCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UITextSelectionView *)self setAlertFlattened:0];
  }

  else
  {
    object2 = [alertCopy object];
    objc_opt_class();
    [(UITextSelectionView *)self setAlertFlattened:(objc_opt_isKindOfClass() & 1) == 0];
  }

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)canExpandAfterAlert:(id)alert
{
  [(UITextSelectionView *)self setAlertFlattened:0];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)mustFlattenForSheet:(id)sheet
{
  [(UITextSelectionView *)self setSheetFlattened:1];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)canExpandAfterSheet:(id)sheet
{
  [(UITextSelectionView *)self setSheetFlattened:0];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)mustFlattenForPopover:(id)popover
{
  [(UITextSelectionView *)self setPopoverFlattened:1];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)canExpandAfterPopover:(id)popover
{
  [(UITextSelectionView *)self setPopoverFlattened:0];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)saveDeactivationReason:(id)reason
{
  userInfo = [reason userInfo];
  v4 = [userInfo objectForKey:@"_UIApplicationDeactivationReasonUserInfoKey"];
  -[UITextSelectionView setApplicationDeactivationReason:](self, "setApplicationDeactivationReason:", [v4 intValue]);
}

- (void)mustFlattenForResignActive:(id)active
{
  if ([(UITextSelectionView *)self applicationDeactivationReason]!= 11 && [(UITextSelectionView *)self applicationDeactivationReason])
  {
    [(UITextSelectionView *)self setActiveFlattened:1];

    [(UITextSelectionView *)self updateSelectionDots];
  }
}

- (void)canExpandAfterBecomeActive:(id)active
{
  [(UITextSelectionView *)self setActiveFlattened:0];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)mustFlattenForNavigationTransition:(id)transition
{
  [(UITextSelectionView *)self setNavigationTransitionFlattened:1];

  [(UITextSelectionView *)self updateSelectionDots];
}

- (void)canExpandAfterNavigationTransition:(id)transition
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