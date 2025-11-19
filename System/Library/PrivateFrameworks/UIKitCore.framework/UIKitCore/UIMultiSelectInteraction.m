@interface UIMultiSelectInteraction
- (BOOL)_areSelectionExtensionKeyCommandsEnabled;
- (BOOL)_attemptToAutomaticallyTransitionToMultiSelectModeIfNecessaryAtPoint:(CGPoint)a3 withVelocity:(CGPoint)a4;
- (BOOL)_isBandSelectionAllowedAtPoint:(CGPoint)a3;
- (BOOL)_isShiftKeyBeingHeldWithGesture:(id)a3;
- (BOOL)_shouldBeginInteractionWithGestureType:(int64_t)a3 location:(CGPoint)a4 velocity:(CGPoint)a5;
- (BOOL)_triggeredLegacyPathInsteadForGestureRecognizer:(id)a3 velocity:(CGPoint)a4 shouldBegin:(BOOL *)a5;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)multiSelectOneFingerPanGestureShouldPreventDragInteractionGesture:(id)a3;
- (NSArray)gesturesForFailureRequirements;
- (UIMultiSelectInteraction)init;
- (UIMultiSelectInteractionDelegate)delegate;
- (UIView)view;
- (id)_interactionDelegate;
- (id)_viewAsScrollView;
- (id)keyCommandsForSelectionExtension;
- (int64_t)_gestureTypeForGestureInstance:(id)a3;
- (unint64_t)_currentExtensionTypeForOneFingerTapGesture:(id)a3;
- (void)_askDelegateToAutomaticallyTransitionToMultiSelectModeKeepingSelection:(BOOL)a3;
- (void)_beginCommonPan:(id)a3;
- (void)_beginInteractionWithTrigger:(id)a3 point:(CGPoint)a4 keepingSelection:(BOOL)a5;
- (void)_beginObservingScrollViewOffsetUpdates;
- (void)_cancelCommonPan:(id)a3;
- (void)_cancelScrollingInScrollView:(id)a3;
- (void)_cancelScrollingInViewForGesture:(id)a3;
- (void)_didInvokeMultiSelectAppendGestureAtLocation:(CGPoint)a3;
- (void)_didInvokeMultiSelectExtendGestureAtLocation:(CGPoint)a3;
- (void)_endCommonPan:(id)a3;
- (void)_endInteractionAtPoint:(CGPoint)a3 canceled:(BOOL)a4;
- (void)_endObservingScrollViewOffsetUpdates;
- (void)_handleBandSelectionInteraction:(id)a3;
- (void)_handleCommonPanGestureStateChanged:(id)a3;
- (void)_handleKeyboardSelectionExtensionKeyCommand:(id)a3;
- (void)_handleSelectionExtensionTapGesture:(id)a3;
- (void)_multiFingerTapGesture:(id)a3;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)_sendWillBeginInteractionAtPoint:(CGPoint)a3 keepingSelection:(BOOL)a4;
- (void)_updateCommonPan:(id)a3;
- (void)_updateDelegateConformance;
- (void)didMoveToView:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation UIMultiSelectInteraction

- (UIMultiSelectInteraction)init
{
  v20.receiver = self;
  v20.super_class = UIMultiSelectInteraction;
  v2 = [(UIMultiSelectInteraction *)&v20 init];
  if (v2)
  {
    v3 = [(UIPanGestureRecognizer *)[_UIMultiSelectOneFingerPanGesture alloc] initWithTarget:v2 action:sel__handleCommonPanGestureStateChanged_];
    [(UIGestureRecognizer *)v3 setName:@"com.apple.UIKit.multi-select.singleFingerPanGesture"];
    [(UIPanGestureRecognizer *)v3 setDelegate:v2];
    [(_UIMultiSelectOneFingerPanGesture *)v3 setOneFingerPanDelegate:v2];
    [(UIPanGestureRecognizer *)v3 setMaximumNumberOfTouches:1];
    [(UIPanGestureRecognizer *)v3 _setHysteresis:5.0];
    [(UIGestureRecognizer *)v3 setDelaysTouchesEnded:0];
    objc_storeStrong(&v2->_multiSelectModePan, v3);
    v4 = [[UIPanGestureRecognizer alloc] initWithTarget:v2 action:sel__handleCommonPanGestureStateChanged_];
    [(UIGestureRecognizer *)v4 setName:@"com.apple.UIKit.multi-select.multiFingerPanGesture"];
    [(UIPanGestureRecognizer *)v4 setDelegate:v2];
    [(UIPanGestureRecognizer *)v4 setMinimumNumberOfTouches:2];
    [(UIPanGestureRecognizer *)v4 setMaximumNumberOfTouches:2];
    [(UIPanGestureRecognizer *)v4 _setFailsPastHysteresisWithoutMinTouches:1];
    [(UIPanGestureRecognizer *)v4 _setHysteresis:0.0];
    [(UIGestureRecognizer *)v4 setDelaysTouchesEnded:0];
    [(UIPanGestureRecognizer *)v4 _setRequiresImmediateMultipleTouches:1];
    [(UIPanGestureRecognizer *)v4 _setAllowableTouchTimeSeparation:0.06];
    v5 = +[_UITextSelectionSettings sharedInstance];
    [v5 allowableSeparation];
    [(UIPanGestureRecognizer *)v4 _setAllowableSeparation:?];

    objc_storeStrong(&v2->_multiFingerPan, v4);
    v6 = [[UITapGestureRecognizer alloc] initWithTarget:v2 action:sel__multiFingerTapGesture_];
    [(UIGestureRecognizer *)v6 setName:@"com.apple.UIKit.multi-select.multiFingerTapGesture"];
    [(UIGestureRecognizer *)v6 setDelegate:v2];
    [(UITapGestureRecognizer *)v6 setAllowableMovement:60.0];
    v7 = +[_UITextSelectionSettings sharedInstance];
    [v7 allowableSeparation];
    [(UITapGestureRecognizer *)v6 _setAllowableSeparation:?];

    [(UITapGestureRecognizer *)v6 setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)v6 setNumberOfTouchesRequired:2];
    [(UITapGestureRecognizer *)v6 _setAllowableTouchTimeSeparation:0.06];
    [(UITapGestureRecognizer *)v6 setMaximumTapDuration:0.13];
    objc_storeStrong(&v2->_multiFingerTap, v6);
    v8 = [(UITapGestureRecognizer *)[_UISingleFingerTapExtensionGesture alloc] initWithTarget:v2 action:sel__handleSelectionExtensionTapGesture_];
    [(UIGestureRecognizer *)v8 setName:@"com.apple.UIKit.multi-select.singleFingerExtension"];
    [(UIGestureRecognizer *)v8 setDelegate:v2];
    [(UITapGestureRecognizer *)v8 setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)v8 setNumberOfTouchesRequired:1];
    objc_storeStrong(&v2->_singleFingerExtensionTap, v8);
    objc_initWeak(&location, v2);
    v9 = [UIBandSelectionInteraction alloc];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __32__UIMultiSelectInteraction_init__block_invoke;
    v17[3] = &unk_1E712D0A0;
    objc_copyWeak(&v18, &location);
    v10 = [(UIBandSelectionInteraction *)v9 initWithSelectionHandler:v17];
    bandSelectionInteraction = v2->_bandSelectionInteraction;
    v2->_bandSelectionInteraction = v10;

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __32__UIMultiSelectInteraction_init__block_invoke_2;
    v15[3] = &unk_1E712D0C8;
    objc_copyWeak(&v16, &location);
    [(UIBandSelectionInteraction *)v2->_bandSelectionInteraction setShouldBeginHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __32__UIMultiSelectInteraction_init__block_invoke_3;
    v13[3] = &unk_1E7122780;
    objc_copyWeak(&v14, &location);
    [(UIBandSelectionInteraction *)v2->_bandSelectionInteraction _setBandVisibilityHandler:v13];
    v2->_activeGestureType = 8;
    v2->_enabled = 1;
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_updateDelegateConformance
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateConformsToProtocol = [v4 conformsToProtocol:&unk_1EFFBADD0];
  }

  else
  {
    self->_delegateConformsToProtocol = 0;
  }

  v5 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = 16;
  }

  else
  {
    v6 = 0;
  }

  *&self->_optionalDelegateFlags = *&self->_optionalDelegateFlags & 0xFFEF | v6;

  v7 = objc_loadWeakRetained(&self->_delegate);
  *&self->_optionalDelegateFlags = *&self->_optionalDelegateFlags & 0xFFFE | objc_opt_respondsToSelector() & 1;

  v8 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  *&self->_optionalDelegateFlags = *&self->_optionalDelegateFlags & 0xFFFD | v9;

  v10 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  *&self->_optionalDelegateFlags = *&self->_optionalDelegateFlags & 0xFFFB | v11;

  v12 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v13 = 4096;
  }

  else
  {
    v13 = 0;
  }

  *&self->_optionalDelegateFlags = *&self->_optionalDelegateFlags & 0xEFFF | v13;

  v14 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v15 = 8;
  }

  else
  {
    v15 = 0;
  }

  *&self->_optionalDelegateFlags = *&self->_optionalDelegateFlags & 0xFFF7 | v15;

  v16 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v17 = 512;
  }

  else
  {
    v17 = 0;
  }

  *&self->_optionalDelegateFlags = *&self->_optionalDelegateFlags & 0xFDFF | v17;

  v18 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v19 = 1024;
  }

  else
  {
    v19 = 0;
  }

  *&self->_optionalDelegateFlags = *&self->_optionalDelegateFlags & 0xFBFF | v19;

  v20 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v21 = 2048;
  }

  else
  {
    v21 = 0;
  }

  *&self->_optionalDelegateFlags = *&self->_optionalDelegateFlags & 0xF7FF | v21;

  v22 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v23 = 0x2000;
  }

  else
  {
    v23 = 0;
  }

  *&self->_optionalDelegateFlags = *&self->_optionalDelegateFlags & 0xDFFF | v23;

  v24 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v25 = 32;
  }

  else
  {
    v25 = 0;
  }

  *&self->_optionalDelegateFlags = *&self->_optionalDelegateFlags & 0xFFDF | v25;

  v26 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v27 = 64;
  }

  else
  {
    v27 = 0;
  }

  *&self->_optionalDelegateFlags = *&self->_optionalDelegateFlags & 0xFFBF | v27;

  v28 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v29 = 128;
  }

  else
  {
    v29 = 0;
  }

  *&self->_optionalDelegateFlags = *&self->_optionalDelegateFlags & 0xFF7F | v29;

  v31 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v30 = 256;
  }

  else
  {
    v30 = 0;
  }

  *&self->_optionalDelegateFlags = *&self->_optionalDelegateFlags & 0xFEFF | v30;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (id)keyCommandsForSelectionExtension
{
  v17 = *MEMORY[0x1E69E9840];
  if ([(UIMultiSelectInteraction *)self _areSelectionExtensionKeyCommandsEnabled])
  {
    if (!self->_extendToCellAboveCommand)
    {
      v3 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputUpArrow" modifierFlags:0x20000 action:sel__handleKeyboardSelectionExtensionKeyCommand_];
      extendToCellAboveCommand = self->_extendToCellAboveCommand;
      self->_extendToCellAboveCommand = v3;
    }

    if (!self->_extendToCellBelowCommand)
    {
      v5 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputDownArrow" modifierFlags:0x20000 action:sel__handleKeyboardSelectionExtensionKeyCommand_];
      extendToCellBelowCommand = self->_extendToCellBelowCommand;
      self->_extendToCellBelowCommand = v5;
    }

    if (!self->_extendToCellRightCommand)
    {
      v7 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputRightArrow" modifierFlags:0x20000 action:sel__handleKeyboardSelectionExtensionKeyCommand_];
      extendToCellRightCommand = self->_extendToCellRightCommand;
      self->_extendToCellRightCommand = v7;
    }

    extendToCellLeftCommand = self->_extendToCellLeftCommand;
    if (!extendToCellLeftCommand)
    {
      v10 = [UIKeyCommand keyCommandWithInput:@"UIKeyInputLeftArrow" modifierFlags:0x20000 action:sel__handleKeyboardSelectionExtensionKeyCommand_];
      v11 = self->_extendToCellLeftCommand;
      self->_extendToCellLeftCommand = v10;

      extendToCellLeftCommand = self->_extendToCellLeftCommand;
    }

    v14 = *&self->_extendToCellAboveCommand;
    v15 = self->_extendToCellRightCommand;
    v16 = extendToCellLeftCommand;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:4];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_areSelectionExtensionKeyCommandsEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v4 = [WeakRetained window];
  v5 = [v4 firstResponder];

  if ((*&self->_optionalDelegateFlags & 0x200) != 0)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    if ([v7 supportsKeyboardSelectionExtension])
    {
      v6 = _UIResponderRequiresTextInput(v5) ^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

void __32__UIMultiSelectInteraction_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleBandSelectionInteraction:v3];
}

uint64_t __32__UIMultiSelectInteraction_init__block_invoke_2(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained _shouldBeginBandSelectionInteraction:v7 atPoint:{a3, a4}];

  return v9;
}

uint64_t __32__UIMultiSelectInteraction_init__block_invoke_3(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained && (WeakRetained[24] & 0x100) != 0)
  {
    v8 = [WeakRetained delegate];
    v7 = [v8 multiSelectInteraction:v6 shouldShowBandForSelectionStartingAtPoint:{a2, a3}];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    v4 = a3;
    self->_enabled = a3;
    [(UIGestureRecognizer *)self->_multiSelectModePan setEnabled:?];
    [(UIGestureRecognizer *)self->_multiFingerPan setEnabled:v4];
    [(UIGestureRecognizer *)self->_multiFingerTap setEnabled:v4];
    [(UIGestureRecognizer *)self->_singleFingerExtensionTap setEnabled:v4];
    bandSelectionInteraction = self->_bandSelectionInteraction;

    [(UIBandSelectionInteraction *)bandSelectionInteraction setEnabled:v4];
  }
}

- (int64_t)_gestureTypeForGestureInstance:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_multiSelectModePan == v4)
  {
    v6 = 0;
  }

  else if (self->_multiFingerPan == v4)
  {
    v6 = 1;
  }

  else if (self->_multiFingerTap == v4)
  {
    v6 = 2;
  }

  else
  {
    if (self->_singleFingerExtensionTap != v4)
    {
      goto LABEL_5;
    }

    v8 = [(UIMultiSelectInteraction *)self _currentExtensionTypeForOneFingerTapGesture:v4];
    if (v8 == 1)
    {
      v6 = 4;
      goto LABEL_9;
    }

    if (v8 == 2)
    {
      v6 = 3;
    }

    else
    {
LABEL_5:
      v6 = 8;
    }
  }

LABEL_9:

  return v6;
}

- (void)setDelegate:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  [(UIMultiSelectInteraction *)self _updateDelegateConformance];
}

- (id)_interactionDelegate
{
  if (self->_delegateConformsToProtocol)
  {
    v4 = [(UIMultiSelectInteraction *)self delegate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSArray)gesturesForFailureRequirements
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *&self->_multiSelectModePan;
  multiFingerTap = self->_multiFingerTap;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:3];

  return v2;
}

- (void)willMoveToView:(id)a3
{
  if (!a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained removeGestureRecognizer:self->_multiSelectModePan];

    v6 = objc_loadWeakRetained(&self->_view);
    [v6 removeGestureRecognizer:self->_multiFingerPan];

    v7 = objc_loadWeakRetained(&self->_view);
    [v7 removeGestureRecognizer:self->_multiFingerTap];

    v8 = objc_loadWeakRetained(&self->_view);
    [v8 removeGestureRecognizer:self->_singleFingerExtensionTap];

    v9 = objc_loadWeakRetained(&self->_view);
    [v9 removeInteraction:self->_bandSelectionInteraction];
  }
}

- (void)didMoveToView:(id)a3
{
  v4 = objc_storeWeak(&self->_view, a3);
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
    [WeakRetained addGestureRecognizer:self->_multiSelectModePan];

    v6 = objc_loadWeakRetained(&self->_view);
    [v6 addGestureRecognizer:self->_multiFingerTap];

    v7 = objc_loadWeakRetained(&self->_view);
    [v7 addGestureRecognizer:self->_multiFingerPan];

    v8 = objc_loadWeakRetained(&self->_view);
    [v8 addGestureRecognizer:self->_singleFingerExtensionTap];

    [(UIGestureRecognizer *)self->_multiFingerTap requireGestureRecognizerToFail:self->_multiFingerPan];
    v9 = objc_loadWeakRetained(&self->_view);
    [v9 addInteraction:self->_bandSelectionInteraction];

    v10 = objc_loadWeakRetained(&self->_view);
    objc_opt_class();
    self->_isScrollView = objc_opt_isKindOfClass() & 1;
  }
}

- (id)_viewAsScrollView
{
  if (self->_isScrollView)
  {
    WeakRetained = objc_loadWeakRetained(&self->_view);
  }

  else
  {
    WeakRetained = 0;
  }

  return WeakRetained;
}

- (void)_beginObservingScrollViewOffsetUpdates
{
  v3 = [(UIMultiSelectInteraction *)self _viewAsScrollView];
  [v3 _addScrollViewScrollObserver:self];
}

- (void)_endObservingScrollViewOffsetUpdates
{
  v3 = [(UIMultiSelectInteraction *)self _viewAsScrollView];
  [v3 _removeScrollViewScrollObserver:self];
}

- (BOOL)_attemptToAutomaticallyTransitionToMultiSelectModeIfNecessaryAtPoint:(CGPoint)a3 withVelocity:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  v9 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  v10 = [v9 isInMultiSelectMode];

  if (v10)
  {
    return 1;
  }

  v12 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  v13 = [v12 interaction:self shouldAutomaticallyTransitionToMultiSelectModeAtPoint:v7 withVelocity:{v6, x, y}];

  return v13;
}

- (void)_askDelegateToAutomaticallyTransitionToMultiSelectModeKeepingSelection:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  if ([v5 isInMultiSelectMode])
  {
    v6 = [(UIMultiSelectInteraction *)self activeGestureType]- 1;

    if (v6 >= 2)
    {
      return;
    }
  }

  else
  {
  }

  v7 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  [v7 automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:v3];
}

- (void)_sendWillBeginInteractionAtPoint:(CGPoint)a3 keepingSelection:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  optionalDelegateFlags = self->_optionalDelegateFlags;
  v9 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  v10 = v9;
  if ((optionalDelegateFlags & 0x2000) != 0)
  {
    [v9 willBeginMultiSelectInteraction:self atPoint:v4 keepCurrentSelection:{x, y}];
  }

  else
  {
    [v9 willBeginMultiSelectInteraction:self atPoint:{x, y}];
  }
}

- (BOOL)_isShiftKeyBeingHeldWithGesture:(id)a3
{
  v3 = +[UIKeyboardImpl isHardwareShiftKeyBeingHeld];
  v4 = +[UIKeyboardImpl activeInstance];
  v5 = [v4 isShiftKeyBeingHeld];

  return (v3 | v5) & 1;
}

- (unint64_t)_currentExtensionTypeForOneFingerTapGesture:(id)a3
{
  v4 = a3;
  if ([(UIMultiSelectInteraction *)self _isShiftKeyBeingHeldWithGesture:v4])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(UIMultiSelectInteraction *)self _isCommandKeyBeingHeldWithGesture:v4];

  if (v6)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (BOOL)multiSelectOneFingerPanGestureShouldPreventDragInteractionGesture:(id)a3
{
  if ((*&self->_optionalDelegateFlags & 1) == 0)
  {
    return 0;
  }

  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained multiSelectInteractionGestureShouldPreventDragLiftGesture:v5];

  return v7;
}

- (BOOL)_triggeredLegacyPathInsteadForGestureRecognizer:(id)a3 velocity:(CGPoint)a4 shouldBegin:(BOOL *)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  optionalDelegateFlags = self->_optionalDelegateFlags;
  if ((optionalDelegateFlags & 0x1000) == 0)
  {
    v11 = [(UIMultiSelectInteraction *)self view];
    [(UIPanGestureRecognizer *)v9 locationInView:v11];
    v13 = v12;
    v15 = v14;

    v16 = [(UIMultiSelectInteraction *)self _interactionDelegate];
    if ([v16 isInMultiSelectMode])
    {

LABEL_6:
      v18 = [(UIMultiSelectInteraction *)self _interactionDelegate];
      *a5 = [v18 shouldBeginMultiSelectInteraction:self atPoint:v13 withVelocity:{v15, x, y}];

      goto LABEL_9;
    }

    if (self->_multiFingerPan == v9)
    {
    }

    else
    {
      multiFingerTap = self->_multiFingerTap;

      if (multiFingerTap != v9)
      {
        goto LABEL_6;
      }
    }

    *a5 = [(UIMultiSelectInteraction *)self _attemptToAutomaticallyTransitionToMultiSelectModeIfNecessaryAtPoint:v13 withVelocity:v15, x, y];
  }

LABEL_9:

  return (optionalDelegateFlags & 0x1000) == 0;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if (self->_singleFingerExtensionTap == v4)
  {
    v9 = 1;
    goto LABEL_13;
  }

  v5 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  v6 = [v5 isInMultiSelectMode];

  v7 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  v8 = [v7 supportsMultiSelectInteraction:self];

  v22 = v8;
  if (v6)
  {
    if (((self->_multiFingerTap != v4) & v8) == 0)
    {
LABEL_4:
      v9 = 0;
      goto LABEL_13;
    }
  }

  else if (!v8)
  {
    goto LABEL_4;
  }

  if ([(UITapGestureRecognizer *)v4 _isGestureType:8])
  {
    v10 = v4;
    v11 = [(UIMultiSelectInteraction *)self view];
    [(_UISingleFingerTapExtensionGesture *)v10 velocityInView:v11];
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v13 = *MEMORY[0x1E695EFF8];
    v15 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if ([(UIMultiSelectInteraction *)self _triggeredLegacyPathInsteadForGestureRecognizer:v4 velocity:&v22 shouldBegin:v13, v15])
  {
    v9 = v22;
  }

  else
  {
    v16 = [(UIMultiSelectInteraction *)self view];
    [(UITapGestureRecognizer *)v4 locationInView:v16];
    v18 = v17;
    v20 = v19;

    v9 = [(UIMultiSelectInteraction *)self _shouldBeginInteractionWithGestureType:[(UIMultiSelectInteraction *)self _gestureTypeForGestureInstance:v4] location:v18 velocity:v20, v13, v15];
  }

LABEL_13:

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = (self->_multiSelectModePan == v6 || self->_multiFingerPan == v6) && ([v7 _isGestureType:8] & 1) != 0;

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (_isDragInteractionGestureRecognizer(v7))
  {
    v8 = 0;
  }

  else
  {
    multiFingerTap = self->_multiFingerTap;
    if (self->_multiSelectModePan == v6)
    {
      v8 = multiFingerTap != v7;
    }

    else
    {
      v8 = multiFingerTap == v6 || self->_multiFingerPan == v6;
    }
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!self->_enabled)
  {
    goto LABEL_14;
  }

  if (self->_singleFingerExtensionTap == v6)
  {
    v15 = [(UIMultiSelectInteraction *)self _currentExtensionTypeForOneFingerTapGesture:v6];
    if (v15)
    {
      v16 = v15;
      v17 = [(UIMultiSelectInteraction *)self view];
      [v8 locationInView:v17];
      v19 = v18;
      v21 = v20;

      optionalDelegateFlags = self->_optionalDelegateFlags;
      if (v16 == 1 && (optionalDelegateFlags & 8) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v24 = [WeakRetained shouldAllowSelectionAppendageAtPoint:{v19, v21}];
LABEL_19:
        v25 = v24;

        goto LABEL_15;
      }

      if ((optionalDelegateFlags & 2) != 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v24 = [WeakRetained shouldAllowSelectionExtensionAtPoint:{v19, v21}];
        goto LABEL_19;
      }
    }

LABEL_14:
    v25 = 0;
    goto LABEL_15;
  }

  if (self->_multiFingerPan == v6)
  {
    if ((*&self->_optionalDelegateFlags & 0x20) != 0)
    {
      v14 = [v7 _originatesFromPointerEvent];
      goto LABEL_17;
    }
  }

  else if (self->_multiSelectModePan == v6 && [v7 _originatesFromPointerEvent])
  {
    v9 = [(UIMultiSelectInteraction *)self view];
    [v8 locationInView:v9];
    v11 = v10;
    v13 = v12;

    v14 = [(UIMultiSelectInteraction *)self _isBandSelectionAllowedAtPoint:v11, v13];
LABEL_17:
    v25 = v14 ^ 1;
    goto LABEL_15;
  }

  v25 = 1;
LABEL_15:

  return v25;
}

- (BOOL)_isBandSelectionAllowedAtPoint:(CGPoint)a3
{
  if ((*&self->_optionalDelegateFlags & 0x20) == 0)
  {
    return 0;
  }

  y = a3.y;
  x = a3.x;
  v6 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  v7 = [v6 supportsMultiSelectInteraction:self];

  if (!v7)
  {
    return 0;
  }

  if ((*&self->_optionalDelegateFlags & 0x80) == 0)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained multiSelectInteraction:self shouldStartBandSelectionAtPoint:{x, y}];

  return v10;
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v4 = [(_UIMultiSelectOneFingerPanGesture *)self->_multiSelectModePan activeTouch];
  if (v4)
  {
    v11 = v4;
    v5 = [(UIMultiSelectInteraction *)self view];
    [v11 locationInView:v5];
    v7 = v6;
    v9 = v8;

    v10 = [(UIMultiSelectInteraction *)self _interactionDelegate];
    [v10 multiSelectInteraction:self toggleSelectionStateUpToPoint:{v7, v9}];

    v4 = v11;
  }
}

- (void)_handleBandSelectionInteraction:(id)a3
{
  v22 = a3;
  v4 = [(UIMultiSelectInteraction *)self view];
  [v22 _locationInView:v4];
  v6 = v5;
  v8 = v7;

  v9 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  v10 = [v22 state];
  if (v10 == 3)
  {
    [(UIMultiSelectInteraction *)self _endInteractionAtPoint:0 canceled:v6, v8];
  }

  else if (v10 == 2 || v10 == 1 && [v9 isInMultiSelectMode])
  {
    [v22 selectionRect];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v22 initialModifierFlags];
    if ([(UIMultiSelectInteraction *)self _isActive])
    {
LABEL_14:
      if (v19 == 0x100000 && (*&self->_optionalDelegateFlags & 0x40) != 0)
      {
        [v9 multiSelectInteraction:self toggleSelectionWithinRect:v12 leadingPoint:{v14, v16, v18, v6, v8}];
      }

      else
      {
        [v9 multiSelectInteraction:self selectItemsWithinRect:v12 leadingPoint:{v14, v16, v18, v6, v8}];
      }

      goto LABEL_19;
    }

    if ([(UIMultiSelectInteraction *)self _shouldBeginInteractionWithGestureType:5 location:v6 velocity:v8, 1.0, 1.0])
    {
      v21 = v19 == 0x20000 || v19 == 0x100000;
      [(UIMultiSelectInteraction *)self _beginInteractionWithTrigger:v22 point:v21 keepingSelection:v6, v8];
      goto LABEL_14;
    }
  }

LABEL_19:
}

- (void)_cancelScrollingInScrollView:(id)a3
{
  v3 = [a3 panGestureRecognizer];
  if ([v3 isEnabled])
  {
    [v3 setEnabled:0];
    [v3 setEnabled:1];
  }
}

- (void)_cancelScrollingInViewForGesture:(id)a3
{
  v4 = a3;
  if (self->_isScrollView && self->_multiSelectModePan != v4)
  {
    v9 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_view);
    if ((*&self->_optionalDelegateFlags & 0x800) != 0)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      v7 = objc_loadWeakRetained(&self->_view);
      [(UIPanGestureRecognizer *)v9 locationInView:v7];
      v8 = [v6 childScrollViewAtLocation:?];

      [(UIMultiSelectInteraction *)self _cancelScrollingInScrollView:v8];
    }

    [(UIMultiSelectInteraction *)self _cancelScrollingInScrollView:WeakRetained];

    v4 = v9;
  }
}

- (void)_handleCommonPanGestureStateChanged:(id)a3
{
  v7 = a3;
  v4 = [v7 state];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      [(UIMultiSelectInteraction *)self _beginCommonPan:v7];
    }

    else
    {
      v5 = v4 == 2;
      v6 = v7;
      if (!v5)
      {
        goto LABEL_13;
      }

      [(UIMultiSelectInteraction *)self _updateCommonPan:v7];
    }

LABEL_12:
    v6 = v7;
    goto LABEL_13;
  }

  if (v4 == 3)
  {
    [(UIMultiSelectInteraction *)self _endCommonPan:v7];
    goto LABEL_12;
  }

  v5 = v4 == 4;
  v6 = v7;
  if (v5)
  {
    [(UIMultiSelectInteraction *)self _cancelCommonPan:v7];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_beginCommonPan:(id)a3
{
  v9 = a3;
  v4 = [(UIMultiSelectInteraction *)self view];
  [v9 locationInView:v4];
  v6 = v5;
  v8 = v7;

  [(UIMultiSelectInteraction *)self _beginInteractionWithTrigger:v9 point:0 keepingSelection:v6, v8];
}

- (void)_updateCommonPan:(id)a3
{
  v4 = a3;
  v5 = [(UIMultiSelectInteraction *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  [v10 multiSelectInteraction:self toggleSelectionStateUpToPoint:{v7, v9}];
}

- (void)_endCommonPan:(id)a3
{
  v4 = a3;
  v5 = [(UIMultiSelectInteraction *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  [v10 multiSelectInteraction:self toggleSelectionStateUpToPoint:{v7, v9}];

  [(UIMultiSelectInteraction *)self _endInteractionAtPoint:0 canceled:v7, v9];
}

- (void)_cancelCommonPan:(id)a3
{
  v4 = a3;
  v5 = [(UIMultiSelectInteraction *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  [(UIMultiSelectInteraction *)self _endInteractionAtPoint:1 canceled:v7, v9];
}

- (void)_didInvokeMultiSelectAppendGestureAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIMultiSelectInteraction *)self _askDelegateToAutomaticallyTransitionToMultiSelectModeKeepingSelection:1];
  [(UIMultiSelectInteraction *)self _sendWillBeginInteractionAtPoint:1 keepingSelection:x, y];
  v6 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  [v6 multiSelectInteraction:self appendSelectionAtPoint:{x, y}];

  v7 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  [v7 didEndMultiSelectInteraction:self atPoint:{x, y}];
}

- (void)_didInvokeMultiSelectExtendGestureAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIMultiSelectInteraction *)self _askDelegateToAutomaticallyTransitionToMultiSelectModeKeepingSelection:1];
  [(UIMultiSelectInteraction *)self _sendWillBeginInteractionAtPoint:1 keepingSelection:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8)];
  v6 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  [v6 multiSelectInteraction:self toggleSelectionStateUpToPoint:{x, y}];

  v7 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  [v7 didEndMultiSelectInteraction:self atPoint:{x, y}];
}

- (void)_multiFingerTapGesture:(id)a3
{
  v4 = a3;
  v5 = [(UIMultiSelectInteraction *)self view];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [v4 state];
  if (v10 == 3)
  {

    [(UIMultiSelectInteraction *)self _didInvokeMultiSelectAppendGestureAtLocation:v7, v9];
  }
}

- (void)_handleSelectionExtensionTapGesture:(id)a3
{
  v10 = a3;
  v4 = [(UIMultiSelectInteraction *)self view];
  [v10 locationInView:v4];
  v6 = v5;
  v8 = v7;

  if ([v10 state] == 3)
  {
    v9 = [(UIMultiSelectInteraction *)self _currentExtensionTypeForOneFingerTapGesture:v10];
    if (v9 == 2)
    {
      [(UIMultiSelectInteraction *)self _didInvokeMultiSelectExtendGestureAtLocation:v6, v8];
    }

    else if (v9 == 1)
    {
      [(UIMultiSelectInteraction *)self _didInvokeMultiSelectAppendGestureAtLocation:v6, v8];
    }
  }
}

- (void)_beginInteractionWithTrigger:(id)a3 point:(CGPoint)a4 keepingSelection:(BOOL)a5
{
  v5 = a5;
  y = a4.y;
  x = a4.x;
  v13 = a3;
  if (![(UIMultiSelectInteraction *)self _isActive])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v13;
      v10 = [(UIMultiSelectInteraction *)self _gestureTypeForGestureInstance:v9];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v13 initialModifierFlags];
        v9 = 0;
        v12 = 5;
        if (v11 == 0x100000)
        {
          v12 = 7;
        }

        if (v11 == 0x20000)
        {
          v10 = 6;
        }

        else
        {
          v10 = v12;
        }
      }

      else
      {
        v9 = 0;
        v10 = 8;
      }
    }

    self->_activeGestureType = v10;
    [(UIMultiSelectInteraction *)self _askDelegateToAutomaticallyTransitionToMultiSelectModeKeepingSelection:v5];
    [(UIMultiSelectInteraction *)self _cancelScrollingInViewForGesture:v9];
    [(UIMultiSelectInteraction *)self _sendWillBeginInteractionAtPoint:v5 keepingSelection:x, y];
    [(UIMultiSelectInteraction *)self _beginObservingScrollViewOffsetUpdates];
  }
}

- (void)_endInteractionAtPoint:(CGPoint)a3 canceled:(BOOL)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  if ([(UIMultiSelectInteraction *)self _isActive])
  {
    [(UIMultiSelectInteraction *)self _endObservingScrollViewOffsetUpdates];
    if (v4)
    {
      if ((*&self->_optionalDelegateFlags & 0x10) == 0)
      {
LABEL_7:
        self->_activeGestureType = 8;
        return;
      }

      v8 = [(UIMultiSelectInteraction *)self _interactionDelegate];
      [v8 didCancelMultiSelectInteraction:self atPoint:{x, y}];
    }

    else
    {
      v8 = [(UIMultiSelectInteraction *)self _interactionDelegate];
      [v8 didEndMultiSelectInteraction:self atPoint:{x, y}];
    }

    goto LABEL_7;
  }
}

- (BOOL)_shouldBeginInteractionWithGestureType:(int64_t)a3 location:(CGPoint)a4 velocity:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v7 = a4.y;
  v8 = a4.x;
  v11 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  v12 = [v11 isInMultiSelectMode];

  if ((v12 & 1) != 0 || a3 > 5 || ((1 << a3) & 0x26) == 0)
  {
    v13 = [(UIMultiSelectInteraction *)self _interactionDelegate];
    v14 = [v13 shouldBeginMultiSelectInteraction:self ofType:a3 atPoint:v8 withVelocity:{v7, x, y}];

    return v14;
  }

  else
  {

    return [(UIMultiSelectInteraction *)self _attemptToAutomaticallyTransitionToMultiSelectModeIfNecessaryAtPoint:v8 withVelocity:v7, x, y];
  }
}

- (void)_handleKeyboardSelectionExtensionKeyCommand:(id)a3
{
  v15 = a3;
  v4 = [(UIMultiSelectInteraction *)self _areSelectionExtensionKeyCommandsEnabled];
  v5 = v15;
  if (v4)
  {
    v6 = [v15 input];
    if (v6 == @"UIKeyInputUpArrow")
    {
      v9 = 2;
    }

    else
    {
      v7 = [v15 input];
      if (v7 == @"UIKeyInputDownArrow")
      {
        v9 = 1;
      }

      else
      {
        v8 = [v15 input];
        v9 = v8 == @"UIKeyInputRightArrow" ? 3 : 0;
      }
    }

    v5 = v15;
    if ((*&self->_optionalDelegateFlags & 4) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if ([WeakRetained shouldAllowSelectionExtensionAtIndexPath:0])
      {
        optionalDelegateFlags = self->_optionalDelegateFlags;

        v5 = v15;
        if ((optionalDelegateFlags & 0x400) == 0)
        {
          goto LABEL_16;
        }

        [(UIMultiSelectInteraction *)self _askDelegateToAutomaticallyTransitionToMultiSelectModeKeepingSelection:1];
        v12 = *MEMORY[0x1E695F050];
        v13 = *(MEMORY[0x1E695F050] + 8);
        [(UIMultiSelectInteraction *)self _sendWillBeginInteractionAtPoint:1 keepingSelection:*MEMORY[0x1E695F050], v13];
        v14 = objc_loadWeakRetained(&self->_delegate);
        [v14 multiSelectInteraction:self extendSelectionInDirection:v9];

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained didEndMultiSelectInteraction:self atPoint:{v12, v13}];
      }

      v5 = v15;
    }
  }

LABEL_16:
}

- (UIMultiSelectInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end