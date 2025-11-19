@interface _UITypeSelectInteraction
+ (id)_defaultSecondaryColorTransformer;
+ (uint64_t)isTypeSelectSupported;
- (BOOL)_isKeyInputModeEnabled;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (UIView)view;
- (_UITypeSelectInteraction)initWithDelegate:(id)a3;
- (_UITypeSelectInteractionDelegate)delegate;
- (id)_filterResultsForTypeSelectItems:(id)a3;
- (id)_updateInputStringWithNewInput:(id)a3;
- (void)_addGesturesToView:(id)a3;
- (void)_addSceneComponentStateInScene:(id)a3;
- (void)_beginTypeSelectWithInput:(id *)a1;
- (void)_cancelTimer;
- (void)_createNewTimer;
- (void)_createTimerWithTimeout:(double)a3;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_keyInputHasChanged;
- (void)_keyPressedGestureRecognizerInputHasChanged:(id)a3;
- (void)_registerWindowNotificationsOnNewWindow:(id)a3;
- (void)_removeGesturesFromView:(id)a3;
- (void)_removeSceneComponentStateInWindow:(id)a3;
- (void)_resetTypeSelectInput;
- (void)_timerHandler:(id)a3;
- (void)_touchToEnableAllOptions;
- (void)_typeSelectInteractionDidReset;
- (void)_typeSelectInteractionInputHasChanged:(id)a3;
- (void)_unregisterWindowNotificationsOnOldWindow:(id)a3;
- (void)_updateGesturesIfNeeded;
- (void)_updateResultsAnimated:(uint64_t)a1;
- (void)_updateWithResult:(id)a3 animated:(BOOL)a4;
- (void)_willMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_windowDidMoveToScene:(id)a3;
- (void)_windowWillMoveToScene:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)setEnabled:(BOOL)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation _UITypeSelectInteraction

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (void)_updateGesturesIfNeeded
{
  if ([(_UITypeSelectInteraction *)self isEnabled]&& +[_UITypeSelectInteraction isTypeSelectSupported])
  {
    v3 = [(_UITypeSelectInteraction *)self view];
    [(_UITypeSelectInteraction *)self _addGesturesToView:?];
  }

  else
  {
    if (self->_currentInput)
    {
      [(_UITypeSelectInteraction *)self _typeSelectInteractionDidReset];
    }

    v3 = [(_UITypeSelectInteraction *)self view];
    [(_UITypeSelectInteraction *)self _removeGesturesFromView:?];
  }
}

- (_UITypeSelectInteraction)initWithDelegate:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _UITypeSelectInteraction;
  v5 = [(_UITypeSelectInteraction *)&v22 init];
  v6 = v5;
  if (v5)
  {
    v5->_enabled = 1;
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [[_UITypeSelectKeyPressGestureRecognizer alloc] initWithTarget:v6 action:sel__keyPressedGestureRecognizerInputHasChanged_];
    keyPressGestureRecognizer = v6->_keyPressGestureRecognizer;
    v6->_keyPressGestureRecognizer = v7;

    v9 = [(UIGestureRecognizer *)[_UITypeSelectTouchResetGestureRecognizer alloc] initWithTarget:v6 action:sel__touchToEnableAllOptions];
    didRecognizeTouchResetGestureRecognizer = v6->_didRecognizeTouchResetGestureRecognizer;
    v6->_didRecognizeTouchResetGestureRecognizer = v9;

    [(UIGestureRecognizer *)v6->_didRecognizeTouchResetGestureRecognizer setEnabled:0];
    v11 = [[_UITypeSelectNavigationGestureRecognizer alloc] initWithTarget:v6 action:sel__navigationKeyPressed_];
    navigationGestureRecognizer = v6->_navigationGestureRecognizer;
    v6->_navigationGestureRecognizer = v11;

    v13 = objc_alloc_init(_UITypeSelectFilterSystem);
    filterSystem = v6->_filterSystem;
    v6->_filterSystem = v13;

    currentInput = v6->_currentInput;
    v6->_currentInput = 0;

    v16 = +[_UITypeSelectTimeoutSettingsDomain rootSettings];
    [v16 timeoutValue];
    v6->_defaultTimeout = v17;

    v6->_hasTimedOut = 1;
    v18 = [MEMORY[0x1E696AD88] defaultCenter];
    [v18 addObserver:v6 selector:sel__hardwareKeyboardAvailabilityChanged_ name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];

    v19 = objc_alloc_init(_UITypeSelectKeyInput);
    keyInput = v6->_keyInput;
    v6->_keyInput = v19;

    [(_UITypeSelectKeyInput *)v6->_keyInput setDelegate:v6];
  }

  return v6;
}

+ (id)_defaultSecondaryColorTransformer
{
  if (qword_1ED49C9A8 != -1)
  {
    dispatch_once(&qword_1ED49C9A8, &__block_literal_global_68);
  }

  v2 = _Block_copy(_MergedGlobals_1009);

  return v2;
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    [(_UITypeSelectInteraction *)self _updateGesturesIfNeeded];
    if (!a3 && self->_shouldAvoidBecomingFirstResponder)
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      v8 = [WeakRetained window];

      v6 = [v8 _keyboardResponder];
      [(_UITypeSelectInteraction *)self _removeSceneComponentStateInWindow:v8];
      if ([v6 __isKindOfTypeSelectKeyInput])
      {
        v7 = [v8 firstResponder];
        [v7 reloadInputViewsWithoutReset];
      }
    }
  }
}

+ (uint64_t)isTypeSelectSupported
{
  objc_opt_self();
  v0 = +[UIDevice currentDevice];
  v1 = [v0 _isHardwareKeyboardAvailable];

  return v1;
}

- (BOOL)_isKeyInputModeEnabled
{
  if (!self || !self->_shouldAvoidBecomingFirstResponder || ![(_UITypeSelectInteraction *)self isEnabled:v2])
  {
    return 0;
  }

  return +[_UITypeSelectInteraction isTypeSelectSupported];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(_UITypeSelectInteraction *)self isEnabled]&& (self->_keyPressGestureRecognizer == v4 || self->_didRecognizeTouchResetGestureRecognizer == v4);

  return v5;
}

- (void)_beginTypeSelectWithInput:(id *)a1
{
  v4 = a2;
  if (a1)
  {
    [a1 _cancelTimer];
    [a1 _createTimer];
    objc_storeStrong(a1 + 4, a2);
    [a1[1] setProgrammaticInput:v4];
    [a1 _typeSelectInteractionInputHasChanged:v4];
  }
}

- (id)_updateInputStringWithNewInput:(id)a3
{
  v4 = a3;
  programmaticInput = self->_programmaticInput;
  if (programmaticInput)
  {
    v6 = [(NSString *)programmaticInput stringByAppendingString:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (void)_keyInputHasChanged
{
  [(_UITypeSelectInteraction *)self _cancelTimer];
  [(_UITypeSelectInteraction *)self _createNewTimer];
  v3 = [(_UITypeSelectKeyInput *)self->_keyInput typedText];
  v4 = [(_UITypeSelectInteraction *)self _updateInputStringWithNewInput:v3];

  [(_UITypeSelectInteraction *)self _typeSelectInteractionInputHasChanged:v4];
}

- (void)_timerHandler:(id)a3
{
  v4 = [a3 state];
  if ((v4 - 3) >= 2)
  {
    if (v4 == 1)
    {

      [(_UITypeSelectInteraction *)self _cancelTimer];
    }
  }

  else
  {

    [(_UITypeSelectInteraction *)self _createNewTimer];
  }
}

- (void)_createNewTimer
{
  if (self->_noMatch)
  {
    [(_UITypeSelectInteraction *)self _createTimerWithTimeout:0.5];
  }

  else
  {
    [(_UITypeSelectInteraction *)self _createTimer];
  }
}

- (void)_keyPressedGestureRecognizerInputHasChanged:(id)a3
{
  [(_UITypeSelectInteraction *)self _timerHandler:a3];
  v4 = [(_UITypeSelectKeyPressGestureRecognizer *)self->_keyPressGestureRecognizer inputString];
  v5 = [(_UITypeSelectInteraction *)self _updateInputStringWithNewInput:v4];

  [(_UITypeSelectInteraction *)self _typeSelectInteractionInputHasChanged:v5];
}

- (void)_typeSelectInteractionInputHasChanged:(id)a3
{
  v5 = a3;
  currentInput = self->_currentInput;
  v9 = v5;
  v7 = currentInput;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqual:v7];

  if ((v8 & 1) == 0)
  {
LABEL_8:
    objc_storeStrong(&self->_currentInput, a3);
    [(_UITypeSelectInteraction *)self _updateResultsAnimated:?];
    self->_hasTimedOut = 0;
  }

LABEL_9:
}

- (void)_updateResultsAnimated:(uint64_t)a1
{
  if (a1)
  {
    v4 = *(a1 + 72);
    *(a1 + 72) = 0;

    v5 = *(a1 + 80);
    *(a1 + 80) = 0;

    *(a1 + 56) = 0;
    v6 = [a1 delegate];
    if (!*(a1 + 120))
    {
      [a1 _updateWithResult:0 animated:a2];
LABEL_16:

      return;
    }

    v23 = a2;
    [*(a1 + 16) setEnabled:1];
    if (v6)
    {
      [v6 _metadataForTypeSelectInteraction:a1];
      v7 = v24;
      v8 = v25;
      v9 = v26;
    }

    else
    {
      v9 = 0;
      v8 = 0;
      v7 = 0;
    }

    v22 = [v6 _itemsForTypeSelectInteraction:a1 forRange:{v7, v8}];
    v10 = [a1 _filterResultsForTypeSelectItems:?];
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v10];
    v12 = [v6 _itemsForTypeSelectInteraction:a1 forRange:{0, v7}];
    v13 = [a1 _filterResultsForTypeSelectItems:v12];
    [v11 addObjectsFromArray:v13];
    v14 = [v6 _itemsForTypeSelectInteraction:a1 forRange:{v7 + v8, v9 - (v7 + v8)}];
    v15 = [a1 _filterResultsForTypeSelectItems:v14];
    [v11 addObjectsFromArray:v15];
    v16 = [v11 copy];
    if (*(a1 + 72))
    {
      v17 = [_UITypeSelectResult alloc];
      v18 = *(a1 + 72);
    }

    else
    {
      v19 = *(a1 + 80);
      v17 = [_UITypeSelectResult alloc];
      if (!v19)
      {
        v20 = v16;
        v18 = 0;
        goto LABEL_12;
      }

      v18 = *(a1 + 80);
    }

    v20 = v16;
LABEL_12:
    v21 = [(_UITypeSelectResult *)v17 initWithTypeSelectItemResults:v20 preferredItem:v18];
    [a1 _updateWithResult:v21 animated:v23];
    if (!*(a1 + 72) && !*(a1 + 80))
    {
      *(a1 + 56) = 1;
    }

    goto LABEL_16;
  }
}

- (id)_filterResultsForTypeSelectItems:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v23 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        [(_UITypeSelectFilterSystem *)self->_filterSystem setInputString:self->_currentInput];
        v9 = [MEMORY[0x1E696AC90] indexSet];
        v10 = MEMORY[0x1E696AC90];
        v11 = [v8 string];
        v12 = [v10 indexSetWithIndexesInRange:{0, objc_msgSend(v11, "length")}];

        v13 = [(_UITypeSelectFilterSystem *)self->_filterSystem filterResultForTypeSelectItem:v8];
        if (!v13)
        {
          v13 = [[_UITypeSelectItemResult alloc] initWithTypeSelectItem:v8 matchingRanges:v9 unmatchingRanges:v12];
        }

        if (self->_currentInput)
        {
          v14 = [(_UITypeSelectItemResult *)v13 matchingRanges];
          v15 = [v14 containsIndex:0];
          v16 = [v14 count];
          if (!self->_primaryMatch && (v15 ? (v17 = v16 == 0) : (v17 = 1), p_primaryMatch = &self->_primaryMatch, !v17) || !((self->_secondaryMatch != 0) | v15 & 1) && (p_primaryMatch = &self->_secondaryMatch, v16))
          {
            v19 = [(_UITypeSelectItemResult *)v13 item];
            v20 = *p_primaryMatch;
            *p_primaryMatch = v19;
          }
        }

        [v24 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v6);
  }

  return v24;
}

- (void)_updateWithResult:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [(_UITypeSelectInteraction *)self delegate];
  [v8 _typeSelectInteraction:self didUpdateResult:v6 animator:v7];

  if (v4)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55___UITypeSelectInteraction__updateWithResult_animated___block_invoke;
    v14[3] = &unk_1E70F3590;
    v9 = &v15;
    v15 = v7;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55___UITypeSelectInteraction__updateWithResult_animated___block_invoke_2;
    v12[3] = &unk_1E70F5AC0;
    v13 = v15;
    [UIView animateWithDuration:v14 animations:v12 completion:0.3];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55___UITypeSelectInteraction__updateWithResult_animated___block_invoke_3;
    v10[3] = &unk_1E70F3590;
    v9 = &v11;
    v11 = v7;
    [UIView performWithoutAnimation:v10];
  }
}

- (void)_touchToEnableAllOptions
{
  if ([(UIGestureRecognizer *)self->_didRecognizeTouchResetGestureRecognizer isEnabled])
  {
    [(_UITypeSelectKeyPressGestureRecognizer *)self->_keyPressGestureRecognizer resetInput];
    [(_UITypeSelectKeyInput *)self->_keyInput resetInput];
    currentInput = self->_currentInput;
    self->_currentInput = 0;

    [(_UITypeSelectInteraction *)self _updateResultsAnimated:?];
    [(UIGestureRecognizer *)self->_didRecognizeTouchResetGestureRecognizer setEnabled:0];
  }

  self->_hasTimedOut = 1;
}

- (void)_cancelTimer
{
  timer = self->_timer;
  if (timer)
  {
    [(NSTimer *)timer invalidate];
    timer = self->_timer;
  }

  self->_timer = 0;
}

- (void)_createTimerWithTimeout:(double)a3
{
  [(_UITypeSelectInteraction *)self _cancelTimer];
  v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__resetTypeSelectInput selector:0 userInfo:0 repeats:a3];
  timer = self->_timer;
  self->_timer = v5;
}

- (void)_resetTypeSelectInput
{
  [(_UITypeSelectKeyPressGestureRecognizer *)self->_keyPressGestureRecognizer resetInput];
  [(_UITypeSelectKeyInput *)self->_keyInput resetInput];
  [(UIGestureRecognizer *)self->_didRecognizeTouchResetGestureRecognizer setEnabled:0];
  [(_UITypeSelectInteraction *)self _typeSelectInteractionDidReset];
  self->_hasTimedOut = 1;
}

- (void)_typeSelectInteractionDidReset
{
  currentInput = self->_currentInput;
  if (currentInput)
  {
    self->_currentInput = 0;

    [(_UITypeSelectInteraction *)self _updateResultsAnimated:?];
  }

  programmaticInput = self->_programmaticInput;
  self->_programmaticInput = 0;

  keyPressGestureRecognizer = self->_keyPressGestureRecognizer;

  [(_UITypeSelectKeyPressGestureRecognizer *)keyPressGestureRecognizer setProgrammaticInput:0];
}

- (void)willMoveToView:(id)a3
{
  v4 = a3;
  v6 = [(_UITypeSelectInteraction *)self view];

  if (v6)
  {
    if (v6 != v4)
    {
      [(_UITypeSelectInteraction *)self _removeGesturesFromView:v6];
      if ([(_UITypeSelectInteraction *)self _isKeyInputModeEnabled])
      {
        v5 = [v6 window];
        [(_UITypeSelectInteraction *)self _unregisterWindowNotificationsOnOldWindow:v5];
      }
    }
  }

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)a3
{
  v7 = a3;
  objc_storeWeak(&self->_view, v7);
  v4 = v7;
  if (v7)
  {
    [(_UITypeSelectInteraction *)self _updateGesturesIfNeeded];
    v5 = [(_UITypeSelectInteraction *)self _isKeyInputModeEnabled];
    v4 = v7;
    if (v5)
    {
      v6 = [v7 window];
      [(_UITypeSelectInteraction *)self _registerWindowNotificationsOnNewWindow:v6];

      v4 = v7;
    }
  }
}

- (void)_willMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(_UITypeSelectInteraction *)self _isKeyInputModeEnabled])
  {
    v7 = [v9 windowScene];
    v8 = [v6 windowScene];
    if (v9)
    {
      if (v6 && v8)
      {
        *&self->_interactionFlags |= 2u;
      }

      [(_UITypeSelectInteraction *)self _unregisterWindowNotificationsOnOldWindow:v9];
    }
  }
}

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v18 = a3;
  v6 = a4;
  if ([(_UITypeSelectInteraction *)self _isKeyInputModeEnabled])
  {
    v7 = [v18 windowScene];
    v8 = [v6 windowScene];
    interactionFlags = self->_interactionFlags;
    v10 = (*&interactionFlags >> 1) & 1;
    if (!v18)
    {
      v10 = 0;
    }

    if (!v6)
    {
      v10 = 0;
    }

    if (v18)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    if (v7)
    {
      v12 = v8 == 0;
    }

    else
    {
      v12 = 1;
    }

    v14 = !v12 && v7 != v8;
    if (v11 != 1 || v8 == 0)
    {
      if (!v18 && v6 && !v8)
      {
        [(_UITypeSelectInteraction *)self _registerWindowNotificationsOnNewWindow:v6];
        goto LABEL_29;
      }

      if (!v14)
      {
LABEL_28:
        if (!v6)
        {
          v16 = v18;
          goto LABEL_31;
        }

LABEL_29:
        v16 = v6;
LABEL_31:
        v17 = [v16 firstResponder];
        [v17 reloadInputViewsWithoutReset];

        goto LABEL_32;
      }

      [(_UITypeSelectInteraction *)self _unregisterWindowNotificationsOnOldWindow:v18];
    }

    else
    {
      *&self->_interactionFlags = *&interactionFlags & 0xFD;
    }

    [(_UITypeSelectInteraction *)self _registerWindowNotificationsOnNewWindow:v6];
    goto LABEL_28;
  }

LABEL_32:
}

- (void)_registerWindowNotificationsOnNewWindow:(id)a3
{
  v6 = a3;
  v4 = [v6 windowScene];
  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *&self->_interactionFlags |= 1u;
    goto LABEL_6;
  }

  *&self->_interactionFlags &= ~1u;
  [(_UITypeSelectInteraction *)self _addSceneComponentStateInScene:v4];
  if (v6)
  {
LABEL_6:
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:self selector:sel__windowWillMoveToScene_ name:@"_UIWindowWillMoveToSceneNotification" object:v6];
    [v5 addObserver:self selector:sel__windowDidMoveToScene_ name:@"_UIWindowDidMoveToSceneNotification" object:v6];
    [v5 addObserver:self selector:sel__windowWillMoveToScene_ name:@"_UIWindowWillMoveToNilSceneNotification" object:v6];
  }

LABEL_7:
}

- (void)_unregisterWindowNotificationsOnOldWindow:(id)a3
{
  v8[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  v8[0] = @"_UIWindowWillMoveToSceneNotification";
  v8[1] = @"_UIWindowDidMoveToSceneNotification";
  v8[2] = @"_UIWindowWillMoveToNilSceneNotification";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  [(NSNotificationCenter *)v6 _uiRemoveObserver:v7 names:?];

  *&self->_interactionFlags &= ~1u;
  [(_UITypeSelectInteraction *)self _removeSceneComponentStateInWindow:v5];
}

- (void)_windowWillMoveToScene:(id)a3
{
  v10 = a3;
  v4 = [v10 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v10 object];

    if (v5)
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      v7 = [WeakRetained _window];

      if (v7 == v5)
      {
        v8 = objc_loadWeakRetained(&self->_view);
        v9 = [v8 window];
        [(_UITypeSelectInteraction *)self _removeSceneComponentStateInWindow:v9];

        *&self->_interactionFlags |= 1u;
      }
    }
  }

  else
  {

    v5 = 0;
  }
}

- (void)_windowDidMoveToScene:(id)a3
{
  v8 = a3;
  WeakRetained = [v8 object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = [v8 object];

  if (!v5)
  {
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  v6 = [WeakRetained _window];
  if (v6 != v5)
  {

LABEL_6:
    goto LABEL_7;
  }

  interactionFlags = self->_interactionFlags;

  if (interactionFlags)
  {
    *&self->_interactionFlags &= ~1u;
    WeakRetained = [v5 windowScene];
    [(_UITypeSelectInteraction *)self _addSceneComponentStateInScene:WeakRetained];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_addSceneComponentStateInScene:(id)a3
{
  v11 = [a3 _keyboardOverridingSceneComponent];
  v4 = [v11 commonView];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v6 = [WeakRetained isDescendantOfView:v4];

  if (v6)
  {
    v7 = [_UIKeyboardResponderOverrideInfo alloc];
    keyInput = self->_keyInput;
    v9 = objc_loadWeakRetained(&self->_view);
    v10 = [(_UIKeyboardResponderOverrideInfo *)&v7->super.isa initWithKeyboardResponder:v9 sourceView:v4 commonView:?];

    [v11 pushPreferredKeyboardResponderOverride:v10];
  }
}

- (void)_removeSceneComponentStateInWindow:(id)a3
{
  v4 = [a3 windowScene];
  v5 = [v4 _keyboardOverridingSceneComponent];

  [v5 removePreferredKeyboardResponderOverride:self->_keyInput];
}

- (void)_addGesturesToView:(id)a3
{
  v5 = a3;
  v4 = [(UIGestureRecognizer *)self->_keyPressGestureRecognizer view];

  if (v4 != v5)
  {
    [v5 addGestureRecognizer:self->_keyPressGestureRecognizer];
    [v5 addGestureRecognizer:self->_navigationGestureRecognizer];
    [v5 addGestureRecognizer:self->_didRecognizeTouchResetGestureRecognizer];
  }
}

- (void)_removeGesturesFromView:(id)a3
{
  v6 = a3;
  v4 = [(UIGestureRecognizer *)self->_keyPressGestureRecognizer view];

  v5 = v6;
  if (v4 == v6)
  {
    [v6 removeGestureRecognizer:self->_keyPressGestureRecognizer];
    [v6 removeGestureRecognizer:self->_navigationGestureRecognizer];
    [v6 removeGestureRecognizer:self->_didRecognizeTouchResetGestureRecognizer];
    v5 = v6;
  }
}

- (_UITypeSelectInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end