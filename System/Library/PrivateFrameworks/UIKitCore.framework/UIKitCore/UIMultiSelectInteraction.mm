@interface UIMultiSelectInteraction
- (BOOL)_areSelectionExtensionKeyCommandsEnabled;
- (BOOL)_attemptToAutomaticallyTransitionToMultiSelectModeIfNecessaryAtPoint:(CGPoint)point withVelocity:(CGPoint)velocity;
- (BOOL)_isBandSelectionAllowedAtPoint:(CGPoint)point;
- (BOOL)_isShiftKeyBeingHeldWithGesture:(id)gesture;
- (BOOL)_shouldBeginInteractionWithGestureType:(int64_t)type location:(CGPoint)location velocity:(CGPoint)velocity;
- (BOOL)_triggeredLegacyPathInsteadForGestureRecognizer:(id)recognizer velocity:(CGPoint)velocity shouldBegin:(BOOL *)begin;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)multiSelectOneFingerPanGestureShouldPreventDragInteractionGesture:(id)gesture;
- (NSArray)gesturesForFailureRequirements;
- (UIMultiSelectInteraction)init;
- (UIMultiSelectInteractionDelegate)delegate;
- (UIView)view;
- (id)_interactionDelegate;
- (id)_viewAsScrollView;
- (id)keyCommandsForSelectionExtension;
- (int64_t)_gestureTypeForGestureInstance:(id)instance;
- (unint64_t)_currentExtensionTypeForOneFingerTapGesture:(id)gesture;
- (void)_askDelegateToAutomaticallyTransitionToMultiSelectModeKeepingSelection:(BOOL)selection;
- (void)_beginCommonPan:(id)pan;
- (void)_beginInteractionWithTrigger:(id)trigger point:(CGPoint)point keepingSelection:(BOOL)selection;
- (void)_beginObservingScrollViewOffsetUpdates;
- (void)_cancelCommonPan:(id)pan;
- (void)_cancelScrollingInScrollView:(id)view;
- (void)_cancelScrollingInViewForGesture:(id)gesture;
- (void)_didInvokeMultiSelectAppendGestureAtLocation:(CGPoint)location;
- (void)_didInvokeMultiSelectExtendGestureAtLocation:(CGPoint)location;
- (void)_endCommonPan:(id)pan;
- (void)_endInteractionAtPoint:(CGPoint)point canceled:(BOOL)canceled;
- (void)_endObservingScrollViewOffsetUpdates;
- (void)_handleBandSelectionInteraction:(id)interaction;
- (void)_handleCommonPanGestureStateChanged:(id)changed;
- (void)_handleKeyboardSelectionExtensionKeyCommand:(id)command;
- (void)_handleSelectionExtensionTapGesture:(id)gesture;
- (void)_multiFingerTapGesture:(id)gesture;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)_sendWillBeginInteractionAtPoint:(CGPoint)point keepingSelection:(BOOL)selection;
- (void)_updateCommonPan:(id)pan;
- (void)_updateDelegateConformance;
- (void)didMoveToView:(id)view;
- (void)setDelegate:(id)delegate;
- (void)setEnabled:(BOOL)enabled;
- (void)willMoveToView:(id)view;
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
  window = [WeakRetained window];
  firstResponder = [window firstResponder];

  if ((*&self->_optionalDelegateFlags & 0x200) != 0)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    if ([v7 supportsKeyboardSelectionExtension])
    {
      v6 = _UIResponderRequiresTextInput(firstResponder) ^ 1;
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

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    self->_enabled = enabled;
    [(UIGestureRecognizer *)self->_multiSelectModePan setEnabled:?];
    [(UIGestureRecognizer *)self->_multiFingerPan setEnabled:enabledCopy];
    [(UIGestureRecognizer *)self->_multiFingerTap setEnabled:enabledCopy];
    [(UIGestureRecognizer *)self->_singleFingerExtensionTap setEnabled:enabledCopy];
    bandSelectionInteraction = self->_bandSelectionInteraction;

    [(UIBandSelectionInteraction *)bandSelectionInteraction setEnabled:enabledCopy];
  }
}

- (int64_t)_gestureTypeForGestureInstance:(id)instance
{
  instanceCopy = instance;
  v5 = instanceCopy;
  if (self->_multiSelectModePan == instanceCopy)
  {
    v6 = 0;
  }

  else if (self->_multiFingerPan == instanceCopy)
  {
    v6 = 1;
  }

  else if (self->_multiFingerTap == instanceCopy)
  {
    v6 = 2;
  }

  else
  {
    if (self->_singleFingerExtensionTap != instanceCopy)
    {
      goto LABEL_5;
    }

    v8 = [(UIMultiSelectInteraction *)self _currentExtensionTypeForOneFingerTapGesture:instanceCopy];
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

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);

  [(UIMultiSelectInteraction *)self _updateDelegateConformance];
}

- (id)_interactionDelegate
{
  if (self->_delegateConformsToProtocol)
  {
    delegate = [(UIMultiSelectInteraction *)self delegate];
  }

  else
  {
    delegate = 0;
  }

  return delegate;
}

- (NSArray)gesturesForFailureRequirements
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *&self->_multiSelectModePan;
  multiFingerTap = self->_multiFingerTap;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:3];

  return v2;
}

- (void)willMoveToView:(id)view
{
  if (!view)
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

- (void)didMoveToView:(id)view
{
  v4 = objc_storeWeak(&self->_view, view);
  if (view)
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
  _viewAsScrollView = [(UIMultiSelectInteraction *)self _viewAsScrollView];
  [_viewAsScrollView _addScrollViewScrollObserver:self];
}

- (void)_endObservingScrollViewOffsetUpdates
{
  _viewAsScrollView = [(UIMultiSelectInteraction *)self _viewAsScrollView];
  [_viewAsScrollView _removeScrollViewScrollObserver:self];
}

- (BOOL)_attemptToAutomaticallyTransitionToMultiSelectModeIfNecessaryAtPoint:(CGPoint)point withVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = point.y;
  v7 = point.x;
  _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
  isInMultiSelectMode = [_interactionDelegate isInMultiSelectMode];

  if (isInMultiSelectMode)
  {
    return 1;
  }

  _interactionDelegate2 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  v13 = [_interactionDelegate2 interaction:self shouldAutomaticallyTransitionToMultiSelectModeAtPoint:v7 withVelocity:{v6, x, y}];

  return v13;
}

- (void)_askDelegateToAutomaticallyTransitionToMultiSelectModeKeepingSelection:(BOOL)selection
{
  selectionCopy = selection;
  _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
  if ([_interactionDelegate isInMultiSelectMode])
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

  _interactionDelegate2 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  [_interactionDelegate2 automaticallyTransitionToMultiSelectModeKeepingCurrentSelection:selectionCopy];
}

- (void)_sendWillBeginInteractionAtPoint:(CGPoint)point keepingSelection:(BOOL)selection
{
  selectionCopy = selection;
  y = point.y;
  x = point.x;
  optionalDelegateFlags = self->_optionalDelegateFlags;
  _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
  v10 = _interactionDelegate;
  if ((optionalDelegateFlags & 0x2000) != 0)
  {
    [_interactionDelegate willBeginMultiSelectInteraction:self atPoint:selectionCopy keepCurrentSelection:{x, y}];
  }

  else
  {
    [_interactionDelegate willBeginMultiSelectInteraction:self atPoint:{x, y}];
  }
}

- (BOOL)_isShiftKeyBeingHeldWithGesture:(id)gesture
{
  v3 = +[UIKeyboardImpl isHardwareShiftKeyBeingHeld];
  v4 = +[UIKeyboardImpl activeInstance];
  isShiftKeyBeingHeld = [v4 isShiftKeyBeingHeld];

  return (v3 | isShiftKeyBeingHeld) & 1;
}

- (unint64_t)_currentExtensionTypeForOneFingerTapGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([(UIMultiSelectInteraction *)self _isShiftKeyBeingHeldWithGesture:gestureCopy])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(UIMultiSelectInteraction *)self _isCommandKeyBeingHeldWithGesture:gestureCopy];

  if (v6)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

- (BOOL)multiSelectOneFingerPanGestureShouldPreventDragInteractionGesture:(id)gesture
{
  if ((*&self->_optionalDelegateFlags & 1) == 0)
  {
    return 0;
  }

  gestureCopy = gesture;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained multiSelectInteractionGestureShouldPreventDragLiftGesture:gestureCopy];

  return v7;
}

- (BOOL)_triggeredLegacyPathInsteadForGestureRecognizer:(id)recognizer velocity:(CGPoint)velocity shouldBegin:(BOOL *)begin
{
  y = velocity.y;
  x = velocity.x;
  recognizerCopy = recognizer;
  optionalDelegateFlags = self->_optionalDelegateFlags;
  if ((optionalDelegateFlags & 0x1000) == 0)
  {
    view = [(UIMultiSelectInteraction *)self view];
    [(UIPanGestureRecognizer *)recognizerCopy locationInView:view];
    v13 = v12;
    v15 = v14;

    _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
    if ([_interactionDelegate isInMultiSelectMode])
    {

LABEL_6:
      _interactionDelegate2 = [(UIMultiSelectInteraction *)self _interactionDelegate];
      *begin = [_interactionDelegate2 shouldBeginMultiSelectInteraction:self atPoint:v13 withVelocity:{v15, x, y}];

      goto LABEL_9;
    }

    if (self->_multiFingerPan == recognizerCopy)
    {
    }

    else
    {
      multiFingerTap = self->_multiFingerTap;

      if (multiFingerTap != recognizerCopy)
      {
        goto LABEL_6;
      }
    }

    *begin = [(UIMultiSelectInteraction *)self _attemptToAutomaticallyTransitionToMultiSelectModeIfNecessaryAtPoint:v13 withVelocity:v15, x, y];
  }

LABEL_9:

  return (optionalDelegateFlags & 0x1000) == 0;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if (self->_singleFingerExtensionTap == beginCopy)
  {
    v9 = 1;
    goto LABEL_13;
  }

  _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
  isInMultiSelectMode = [_interactionDelegate isInMultiSelectMode];

  _interactionDelegate2 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  v8 = [_interactionDelegate2 supportsMultiSelectInteraction:self];

  v22 = v8;
  if (isInMultiSelectMode)
  {
    if (((self->_multiFingerTap != beginCopy) & v8) == 0)
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

  if ([(UITapGestureRecognizer *)beginCopy _isGestureType:8])
  {
    v10 = beginCopy;
    view = [(UIMultiSelectInteraction *)self view];
    [(_UISingleFingerTapExtensionGesture *)v10 velocityInView:view];
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v13 = *MEMORY[0x1E695EFF8];
    v15 = *(MEMORY[0x1E695EFF8] + 8);
  }

  if ([(UIMultiSelectInteraction *)self _triggeredLegacyPathInsteadForGestureRecognizer:beginCopy velocity:&v22 shouldBegin:v13, v15])
  {
    v9 = v22;
  }

  else
  {
    view2 = [(UIMultiSelectInteraction *)self view];
    [(UITapGestureRecognizer *)beginCopy locationInView:view2];
    v18 = v17;
    v20 = v19;

    v9 = [(UIMultiSelectInteraction *)self _shouldBeginInteractionWithGestureType:[(UIMultiSelectInteraction *)self _gestureTypeForGestureInstance:beginCopy] location:v18 velocity:v20, v13, v15];
  }

LABEL_13:

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  v8 = gestureRecognizerCopy;
  v9 = (self->_multiSelectModePan == recognizerCopy || self->_multiFingerPan == recognizerCopy) && ([gestureRecognizerCopy _isGestureType:8] & 1) != 0;

  return v9;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  if (_isDragInteractionGestureRecognizer(gestureRecognizerCopy))
  {
    v8 = 0;
  }

  else
  {
    multiFingerTap = self->_multiFingerTap;
    if (self->_multiSelectModePan == recognizerCopy)
    {
      v8 = multiFingerTap != gestureRecognizerCopy;
    }

    else
    {
      v8 = multiFingerTap == recognizerCopy || self->_multiFingerPan == recognizerCopy;
    }
  }

  return v8;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  v8 = touchCopy;
  if (!self->_enabled)
  {
    goto LABEL_14;
  }

  if (self->_singleFingerExtensionTap == recognizerCopy)
  {
    v15 = [(UIMultiSelectInteraction *)self _currentExtensionTypeForOneFingerTapGesture:recognizerCopy];
    if (v15)
    {
      v16 = v15;
      view = [(UIMultiSelectInteraction *)self view];
      [v8 locationInView:view];
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

  if (self->_multiFingerPan == recognizerCopy)
  {
    if ((*&self->_optionalDelegateFlags & 0x20) != 0)
    {
      _originatesFromPointerEvent = [touchCopy _originatesFromPointerEvent];
      goto LABEL_17;
    }
  }

  else if (self->_multiSelectModePan == recognizerCopy && [touchCopy _originatesFromPointerEvent])
  {
    view2 = [(UIMultiSelectInteraction *)self view];
    [v8 locationInView:view2];
    v11 = v10;
    v13 = v12;

    _originatesFromPointerEvent = [(UIMultiSelectInteraction *)self _isBandSelectionAllowedAtPoint:v11, v13];
LABEL_17:
    v25 = _originatesFromPointerEvent ^ 1;
    goto LABEL_15;
  }

  v25 = 1;
LABEL_15:

  return v25;
}

- (BOOL)_isBandSelectionAllowedAtPoint:(CGPoint)point
{
  if ((*&self->_optionalDelegateFlags & 0x20) == 0)
  {
    return 0;
  }

  y = point.y;
  x = point.x;
  _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
  v7 = [_interactionDelegate supportsMultiSelectInteraction:self];

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

- (void)_observeScrollViewDidScroll:(id)scroll
{
  activeTouch = [(_UIMultiSelectOneFingerPanGesture *)self->_multiSelectModePan activeTouch];
  if (activeTouch)
  {
    v11 = activeTouch;
    view = [(UIMultiSelectInteraction *)self view];
    [v11 locationInView:view];
    v7 = v6;
    v9 = v8;

    _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
    [_interactionDelegate multiSelectInteraction:self toggleSelectionStateUpToPoint:{v7, v9}];

    activeTouch = v11;
  }
}

- (void)_handleBandSelectionInteraction:(id)interaction
{
  interactionCopy = interaction;
  view = [(UIMultiSelectInteraction *)self view];
  [interactionCopy _locationInView:view];
  v6 = v5;
  v8 = v7;

  _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
  state = [interactionCopy state];
  if (state == 3)
  {
    [(UIMultiSelectInteraction *)self _endInteractionAtPoint:0 canceled:v6, v8];
  }

  else if (state == 2 || state == 1 && [_interactionDelegate isInMultiSelectMode])
  {
    [interactionCopy selectionRect];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    initialModifierFlags = [interactionCopy initialModifierFlags];
    if ([(UIMultiSelectInteraction *)self _isActive])
    {
LABEL_14:
      if (initialModifierFlags == 0x100000 && (*&self->_optionalDelegateFlags & 0x40) != 0)
      {
        [_interactionDelegate multiSelectInteraction:self toggleSelectionWithinRect:v12 leadingPoint:{v14, v16, v18, v6, v8}];
      }

      else
      {
        [_interactionDelegate multiSelectInteraction:self selectItemsWithinRect:v12 leadingPoint:{v14, v16, v18, v6, v8}];
      }

      goto LABEL_19;
    }

    if ([(UIMultiSelectInteraction *)self _shouldBeginInteractionWithGestureType:5 location:v6 velocity:v8, 1.0, 1.0])
    {
      v21 = initialModifierFlags == 0x20000 || initialModifierFlags == 0x100000;
      [(UIMultiSelectInteraction *)self _beginInteractionWithTrigger:interactionCopy point:v21 keepingSelection:v6, v8];
      goto LABEL_14;
    }
  }

LABEL_19:
}

- (void)_cancelScrollingInScrollView:(id)view
{
  panGestureRecognizer = [view panGestureRecognizer];
  if ([panGestureRecognizer isEnabled])
  {
    [panGestureRecognizer setEnabled:0];
    [panGestureRecognizer setEnabled:1];
  }
}

- (void)_cancelScrollingInViewForGesture:(id)gesture
{
  gestureCopy = gesture;
  if (self->_isScrollView && self->_multiSelectModePan != gestureCopy)
  {
    v9 = gestureCopy;
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

    gestureCopy = v9;
  }
}

- (void)_handleCommonPanGestureStateChanged:(id)changed
{
  changedCopy = changed;
  state = [changedCopy state];
  if (state <= 2)
  {
    if (state == 1)
    {
      [(UIMultiSelectInteraction *)self _beginCommonPan:changedCopy];
    }

    else
    {
      v5 = state == 2;
      v6 = changedCopy;
      if (!v5)
      {
        goto LABEL_13;
      }

      [(UIMultiSelectInteraction *)self _updateCommonPan:changedCopy];
    }

LABEL_12:
    v6 = changedCopy;
    goto LABEL_13;
  }

  if (state == 3)
  {
    [(UIMultiSelectInteraction *)self _endCommonPan:changedCopy];
    goto LABEL_12;
  }

  v5 = state == 4;
  v6 = changedCopy;
  if (v5)
  {
    [(UIMultiSelectInteraction *)self _cancelCommonPan:changedCopy];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_beginCommonPan:(id)pan
{
  panCopy = pan;
  view = [(UIMultiSelectInteraction *)self view];
  [panCopy locationInView:view];
  v6 = v5;
  v8 = v7;

  [(UIMultiSelectInteraction *)self _beginInteractionWithTrigger:panCopy point:0 keepingSelection:v6, v8];
}

- (void)_updateCommonPan:(id)pan
{
  panCopy = pan;
  view = [(UIMultiSelectInteraction *)self view];
  [panCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
  [_interactionDelegate multiSelectInteraction:self toggleSelectionStateUpToPoint:{v7, v9}];
}

- (void)_endCommonPan:(id)pan
{
  panCopy = pan;
  view = [(UIMultiSelectInteraction *)self view];
  [panCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
  [_interactionDelegate multiSelectInteraction:self toggleSelectionStateUpToPoint:{v7, v9}];

  [(UIMultiSelectInteraction *)self _endInteractionAtPoint:0 canceled:v7, v9];
}

- (void)_cancelCommonPan:(id)pan
{
  panCopy = pan;
  view = [(UIMultiSelectInteraction *)self view];
  [panCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  [(UIMultiSelectInteraction *)self _endInteractionAtPoint:1 canceled:v7, v9];
}

- (void)_didInvokeMultiSelectAppendGestureAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIMultiSelectInteraction *)self _askDelegateToAutomaticallyTransitionToMultiSelectModeKeepingSelection:1];
  [(UIMultiSelectInteraction *)self _sendWillBeginInteractionAtPoint:1 keepingSelection:x, y];
  _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
  [_interactionDelegate multiSelectInteraction:self appendSelectionAtPoint:{x, y}];

  _interactionDelegate2 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  [_interactionDelegate2 didEndMultiSelectInteraction:self atPoint:{x, y}];
}

- (void)_didInvokeMultiSelectExtendGestureAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  [(UIMultiSelectInteraction *)self _askDelegateToAutomaticallyTransitionToMultiSelectModeKeepingSelection:1];
  [(UIMultiSelectInteraction *)self _sendWillBeginInteractionAtPoint:1 keepingSelection:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8)];
  _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
  [_interactionDelegate multiSelectInteraction:self toggleSelectionStateUpToPoint:{x, y}];

  _interactionDelegate2 = [(UIMultiSelectInteraction *)self _interactionDelegate];
  [_interactionDelegate2 didEndMultiSelectInteraction:self atPoint:{x, y}];
}

- (void)_multiFingerTapGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [(UIMultiSelectInteraction *)self view];
  [gestureCopy locationInView:view];
  v7 = v6;
  v9 = v8;

  state = [gestureCopy state];
  if (state == 3)
  {

    [(UIMultiSelectInteraction *)self _didInvokeMultiSelectAppendGestureAtLocation:v7, v9];
  }
}

- (void)_handleSelectionExtensionTapGesture:(id)gesture
{
  gestureCopy = gesture;
  view = [(UIMultiSelectInteraction *)self view];
  [gestureCopy locationInView:view];
  v6 = v5;
  v8 = v7;

  if ([gestureCopy state] == 3)
  {
    v9 = [(UIMultiSelectInteraction *)self _currentExtensionTypeForOneFingerTapGesture:gestureCopy];
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

- (void)_beginInteractionWithTrigger:(id)trigger point:(CGPoint)point keepingSelection:(BOOL)selection
{
  selectionCopy = selection;
  y = point.y;
  x = point.x;
  triggerCopy = trigger;
  if (![(UIMultiSelectInteraction *)self _isActive])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = triggerCopy;
      v10 = [(UIMultiSelectInteraction *)self _gestureTypeForGestureInstance:v9];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        initialModifierFlags = [triggerCopy initialModifierFlags];
        v9 = 0;
        v12 = 5;
        if (initialModifierFlags == 0x100000)
        {
          v12 = 7;
        }

        if (initialModifierFlags == 0x20000)
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
    [(UIMultiSelectInteraction *)self _askDelegateToAutomaticallyTransitionToMultiSelectModeKeepingSelection:selectionCopy];
    [(UIMultiSelectInteraction *)self _cancelScrollingInViewForGesture:v9];
    [(UIMultiSelectInteraction *)self _sendWillBeginInteractionAtPoint:selectionCopy keepingSelection:x, y];
    [(UIMultiSelectInteraction *)self _beginObservingScrollViewOffsetUpdates];
  }
}

- (void)_endInteractionAtPoint:(CGPoint)point canceled:(BOOL)canceled
{
  canceledCopy = canceled;
  y = point.y;
  x = point.x;
  if ([(UIMultiSelectInteraction *)self _isActive])
  {
    [(UIMultiSelectInteraction *)self _endObservingScrollViewOffsetUpdates];
    if (canceledCopy)
    {
      if ((*&self->_optionalDelegateFlags & 0x10) == 0)
      {
LABEL_7:
        self->_activeGestureType = 8;
        return;
      }

      _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
      [_interactionDelegate didCancelMultiSelectInteraction:self atPoint:{x, y}];
    }

    else
    {
      _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
      [_interactionDelegate didEndMultiSelectInteraction:self atPoint:{x, y}];
    }

    goto LABEL_7;
  }
}

- (BOOL)_shouldBeginInteractionWithGestureType:(int64_t)type location:(CGPoint)location velocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v7 = location.y;
  v8 = location.x;
  _interactionDelegate = [(UIMultiSelectInteraction *)self _interactionDelegate];
  isInMultiSelectMode = [_interactionDelegate isInMultiSelectMode];

  if ((isInMultiSelectMode & 1) != 0 || type > 5 || ((1 << type) & 0x26) == 0)
  {
    _interactionDelegate2 = [(UIMultiSelectInteraction *)self _interactionDelegate];
    v14 = [_interactionDelegate2 shouldBeginMultiSelectInteraction:self ofType:type atPoint:v8 withVelocity:{v7, x, y}];

    return v14;
  }

  else
  {

    return [(UIMultiSelectInteraction *)self _attemptToAutomaticallyTransitionToMultiSelectModeIfNecessaryAtPoint:v8 withVelocity:v7, x, y];
  }
}

- (void)_handleKeyboardSelectionExtensionKeyCommand:(id)command
{
  commandCopy = command;
  _areSelectionExtensionKeyCommandsEnabled = [(UIMultiSelectInteraction *)self _areSelectionExtensionKeyCommandsEnabled];
  v5 = commandCopy;
  if (_areSelectionExtensionKeyCommandsEnabled)
  {
    input = [commandCopy input];
    if (input == @"UIKeyInputUpArrow")
    {
      v9 = 2;
    }

    else
    {
      input2 = [commandCopy input];
      if (input2 == @"UIKeyInputDownArrow")
      {
        v9 = 1;
      }

      else
      {
        input3 = [commandCopy input];
        v9 = input3 == @"UIKeyInputRightArrow" ? 3 : 0;
      }
    }

    v5 = commandCopy;
    if ((*&self->_optionalDelegateFlags & 4) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if ([WeakRetained shouldAllowSelectionExtensionAtIndexPath:0])
      {
        optionalDelegateFlags = self->_optionalDelegateFlags;

        v5 = commandCopy;
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

      v5 = commandCopy;
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