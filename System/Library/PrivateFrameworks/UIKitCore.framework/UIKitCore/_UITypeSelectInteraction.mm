@interface _UITypeSelectInteraction
+ (id)_defaultSecondaryColorTransformer;
+ (uint64_t)isTypeSelectSupported;
- (BOOL)_isKeyInputModeEnabled;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UIView)view;
- (_UITypeSelectInteraction)initWithDelegate:(id)delegate;
- (_UITypeSelectInteractionDelegate)delegate;
- (id)_filterResultsForTypeSelectItems:(id)items;
- (id)_updateInputStringWithNewInput:(id)input;
- (void)_addGesturesToView:(id)view;
- (void)_addSceneComponentStateInScene:(id)scene;
- (void)_beginTypeSelectWithInput:(id *)input;
- (void)_cancelTimer;
- (void)_createNewTimer;
- (void)_createTimerWithTimeout:(double)timeout;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_keyInputHasChanged;
- (void)_keyPressedGestureRecognizerInputHasChanged:(id)changed;
- (void)_registerWindowNotificationsOnNewWindow:(id)window;
- (void)_removeGesturesFromView:(id)view;
- (void)_removeSceneComponentStateInWindow:(id)window;
- (void)_resetTypeSelectInput;
- (void)_timerHandler:(id)handler;
- (void)_touchToEnableAllOptions;
- (void)_typeSelectInteractionDidReset;
- (void)_typeSelectInteractionInputHasChanged:(id)changed;
- (void)_unregisterWindowNotificationsOnOldWindow:(id)window;
- (void)_updateGesturesIfNeeded;
- (void)_updateResultsAnimated:(uint64_t)animated;
- (void)_updateWithResult:(id)result animated:(BOOL)animated;
- (void)_willMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_windowDidMoveToScene:(id)scene;
- (void)_windowWillMoveToScene:(id)scene;
- (void)didMoveToView:(id)view;
- (void)setEnabled:(BOOL)enabled;
- (void)willMoveToView:(id)view;
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
    view = [(_UITypeSelectInteraction *)self view];
    [(_UITypeSelectInteraction *)self _addGesturesToView:?];
  }

  else
  {
    if (self->_currentInput)
    {
      [(_UITypeSelectInteraction *)self _typeSelectInteractionDidReset];
    }

    view = [(_UITypeSelectInteraction *)self view];
    [(_UITypeSelectInteraction *)self _removeGesturesFromView:?];
  }
}

- (_UITypeSelectInteraction)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = _UITypeSelectInteraction;
  v5 = [(_UITypeSelectInteraction *)&v22 init];
  v6 = v5;
  if (v5)
  {
    v5->_enabled = 1;
    objc_storeWeak(&v5->_delegate, delegateCopy);
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__hardwareKeyboardAvailabilityChanged_ name:@"_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification" object:0];

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

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    [(_UITypeSelectInteraction *)self _updateGesturesIfNeeded];
    if (!enabled && self->_shouldAvoidBecomingFirstResponder)
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      window = [WeakRetained window];

      _keyboardResponder = [window _keyboardResponder];
      [(_UITypeSelectInteraction *)self _removeSceneComponentStateInWindow:window];
      if ([_keyboardResponder __isKindOfTypeSelectKeyInput])
      {
        firstResponder = [window firstResponder];
        [firstResponder reloadInputViewsWithoutReset];
      }
    }
  }
}

+ (uint64_t)isTypeSelectSupported
{
  objc_opt_self();
  v0 = +[UIDevice currentDevice];
  _isHardwareKeyboardAvailable = [v0 _isHardwareKeyboardAvailable];

  return _isHardwareKeyboardAvailable;
}

- (BOOL)_isKeyInputModeEnabled
{
  if (!self || !self->_shouldAvoidBecomingFirstResponder || ![(_UITypeSelectInteraction *)self isEnabled:v2])
  {
    return 0;
  }

  return +[_UITypeSelectInteraction isTypeSelectSupported];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v5 = [(_UITypeSelectInteraction *)self isEnabled]&& (self->_keyPressGestureRecognizer == beginCopy || self->_didRecognizeTouchResetGestureRecognizer == beginCopy);

  return v5;
}

- (void)_beginTypeSelectWithInput:(id *)input
{
  v4 = a2;
  if (input)
  {
    [input _cancelTimer];
    [input _createTimer];
    objc_storeStrong(input + 4, a2);
    [input[1] setProgrammaticInput:v4];
    [input _typeSelectInteractionInputHasChanged:v4];
  }
}

- (id)_updateInputStringWithNewInput:(id)input
{
  inputCopy = input;
  programmaticInput = self->_programmaticInput;
  if (programmaticInput)
  {
    v6 = [(NSString *)programmaticInput stringByAppendingString:inputCopy];
  }

  else
  {
    v6 = inputCopy;
  }

  v7 = v6;

  return v7;
}

- (void)_keyInputHasChanged
{
  [(_UITypeSelectInteraction *)self _cancelTimer];
  [(_UITypeSelectInteraction *)self _createNewTimer];
  typedText = [(_UITypeSelectKeyInput *)self->_keyInput typedText];
  v4 = [(_UITypeSelectInteraction *)self _updateInputStringWithNewInput:typedText];

  [(_UITypeSelectInteraction *)self _typeSelectInteractionInputHasChanged:v4];
}

- (void)_timerHandler:(id)handler
{
  state = [handler state];
  if ((state - 3) >= 2)
  {
    if (state == 1)
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

- (void)_keyPressedGestureRecognizerInputHasChanged:(id)changed
{
  [(_UITypeSelectInteraction *)self _timerHandler:changed];
  inputString = [(_UITypeSelectKeyPressGestureRecognizer *)self->_keyPressGestureRecognizer inputString];
  v5 = [(_UITypeSelectInteraction *)self _updateInputStringWithNewInput:inputString];

  [(_UITypeSelectInteraction *)self _typeSelectInteractionInputHasChanged:v5];
}

- (void)_typeSelectInteractionInputHasChanged:(id)changed
{
  changedCopy = changed;
  currentInput = self->_currentInput;
  v9 = changedCopy;
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
    objc_storeStrong(&self->_currentInput, changed);
    [(_UITypeSelectInteraction *)self _updateResultsAnimated:?];
    self->_hasTimedOut = 0;
  }

LABEL_9:
}

- (void)_updateResultsAnimated:(uint64_t)animated
{
  if (animated)
  {
    v4 = *(animated + 72);
    *(animated + 72) = 0;

    v5 = *(animated + 80);
    *(animated + 80) = 0;

    *(animated + 56) = 0;
    delegate = [animated delegate];
    if (!*(animated + 120))
    {
      [animated _updateWithResult:0 animated:a2];
LABEL_16:

      return;
    }

    v23 = a2;
    [*(animated + 16) setEnabled:1];
    if (delegate)
    {
      [delegate _metadataForTypeSelectInteraction:animated];
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

    v22 = [delegate _itemsForTypeSelectInteraction:animated forRange:{v7, v8}];
    v10 = [animated _filterResultsForTypeSelectItems:?];
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v10];
    v12 = [delegate _itemsForTypeSelectInteraction:animated forRange:{0, v7}];
    v13 = [animated _filterResultsForTypeSelectItems:v12];
    [v11 addObjectsFromArray:v13];
    v14 = [delegate _itemsForTypeSelectInteraction:animated forRange:{v7 + v8, v9 - (v7 + v8)}];
    v15 = [animated _filterResultsForTypeSelectItems:v14];
    [v11 addObjectsFromArray:v15];
    v16 = [v11 copy];
    if (*(animated + 72))
    {
      v17 = [_UITypeSelectResult alloc];
      v18 = *(animated + 72);
    }

    else
    {
      v19 = *(animated + 80);
      v17 = [_UITypeSelectResult alloc];
      if (!v19)
      {
        v20 = v16;
        v18 = 0;
        goto LABEL_12;
      }

      v18 = *(animated + 80);
    }

    v20 = v16;
LABEL_12:
    v21 = [(_UITypeSelectResult *)v17 initWithTypeSelectItemResults:v20 preferredItem:v18];
    [animated _updateWithResult:v21 animated:v23];
    if (!*(animated + 72) && !*(animated + 80))
    {
      *(animated + 56) = 1;
    }

    goto LABEL_16;
  }
}

- (id)_filterResultsForTypeSelectItems:(id)items
{
  v30 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = itemsCopy;
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
        indexSet = [MEMORY[0x1E696AC90] indexSet];
        v10 = MEMORY[0x1E696AC90];
        string = [v8 string];
        v12 = [v10 indexSetWithIndexesInRange:{0, objc_msgSend(string, "length")}];

        v13 = [(_UITypeSelectFilterSystem *)self->_filterSystem filterResultForTypeSelectItem:v8];
        if (!v13)
        {
          v13 = [[_UITypeSelectItemResult alloc] initWithTypeSelectItem:v8 matchingRanges:indexSet unmatchingRanges:v12];
        }

        if (self->_currentInput)
        {
          matchingRanges = [(_UITypeSelectItemResult *)v13 matchingRanges];
          v15 = [matchingRanges containsIndex:0];
          v16 = [matchingRanges count];
          if (!self->_primaryMatch && (v15 ? (v17 = v16 == 0) : (v17 = 1), p_primaryMatch = &self->_primaryMatch, !v17) || !((self->_secondaryMatch != 0) | v15 & 1) && (p_primaryMatch = &self->_secondaryMatch, v16))
          {
            item = [(_UITypeSelectItemResult *)v13 item];
            v20 = *p_primaryMatch;
            *p_primaryMatch = item;
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

- (void)_updateWithResult:(id)result animated:(BOOL)animated
{
  animatedCopy = animated;
  resultCopy = result;
  v7 = objc_opt_new();
  delegate = [(_UITypeSelectInteraction *)self delegate];
  [delegate _typeSelectInteraction:self didUpdateResult:resultCopy animator:v7];

  if (animatedCopy)
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

- (void)_createTimerWithTimeout:(double)timeout
{
  [(_UITypeSelectInteraction *)self _cancelTimer];
  v5 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__resetTypeSelectInput selector:0 userInfo:0 repeats:timeout];
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

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  view = [(_UITypeSelectInteraction *)self view];

  if (view)
  {
    if (view != viewCopy)
    {
      [(_UITypeSelectInteraction *)self _removeGesturesFromView:view];
      if ([(_UITypeSelectInteraction *)self _isKeyInputModeEnabled])
      {
        window = [view window];
        [(_UITypeSelectInteraction *)self _unregisterWindowNotificationsOnOldWindow:window];
      }
    }
  }

  objc_storeWeak(&self->_view, 0);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  objc_storeWeak(&self->_view, viewCopy);
  v4 = viewCopy;
  if (viewCopy)
  {
    [(_UITypeSelectInteraction *)self _updateGesturesIfNeeded];
    _isKeyInputModeEnabled = [(_UITypeSelectInteraction *)self _isKeyInputModeEnabled];
    v4 = viewCopy;
    if (_isKeyInputModeEnabled)
    {
      window = [viewCopy window];
      [(_UITypeSelectInteraction *)self _registerWindowNotificationsOnNewWindow:window];

      v4 = viewCopy;
    }
  }
}

- (void)_willMoveFromWindow:(id)window toWindow:(id)toWindow
{
  windowCopy = window;
  toWindowCopy = toWindow;
  if ([(_UITypeSelectInteraction *)self _isKeyInputModeEnabled])
  {
    windowScene = [windowCopy windowScene];
    windowScene2 = [toWindowCopy windowScene];
    if (windowCopy)
    {
      if (toWindowCopy && windowScene2)
      {
        *&self->_interactionFlags |= 2u;
      }

      [(_UITypeSelectInteraction *)self _unregisterWindowNotificationsOnOldWindow:windowCopy];
    }
  }
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  windowCopy = window;
  toWindowCopy = toWindow;
  if ([(_UITypeSelectInteraction *)self _isKeyInputModeEnabled])
  {
    windowScene = [windowCopy windowScene];
    windowScene2 = [toWindowCopy windowScene];
    interactionFlags = self->_interactionFlags;
    v10 = (*&interactionFlags >> 1) & 1;
    if (!windowCopy)
    {
      v10 = 0;
    }

    if (!toWindowCopy)
    {
      v10 = 0;
    }

    if (windowCopy)
    {
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }

    if (windowScene)
    {
      v12 = windowScene2 == 0;
    }

    else
    {
      v12 = 1;
    }

    v14 = !v12 && windowScene != windowScene2;
    if (v11 != 1 || windowScene2 == 0)
    {
      if (!windowCopy && toWindowCopy && !windowScene2)
      {
        [(_UITypeSelectInteraction *)self _registerWindowNotificationsOnNewWindow:toWindowCopy];
        goto LABEL_29;
      }

      if (!v14)
      {
LABEL_28:
        if (!toWindowCopy)
        {
          v16 = windowCopy;
          goto LABEL_31;
        }

LABEL_29:
        v16 = toWindowCopy;
LABEL_31:
        firstResponder = [v16 firstResponder];
        [firstResponder reloadInputViewsWithoutReset];

        goto LABEL_32;
      }

      [(_UITypeSelectInteraction *)self _unregisterWindowNotificationsOnOldWindow:windowCopy];
    }

    else
    {
      *&self->_interactionFlags = *&interactionFlags & 0xFD;
    }

    [(_UITypeSelectInteraction *)self _registerWindowNotificationsOnNewWindow:toWindowCopy];
    goto LABEL_28;
  }

LABEL_32:
}

- (void)_registerWindowNotificationsOnNewWindow:(id)window
{
  windowCopy = window;
  windowScene = [windowCopy windowScene];
  if (!windowScene)
  {
    if (!windowCopy)
    {
      goto LABEL_7;
    }

    *&self->_interactionFlags |= 1u;
    goto LABEL_6;
  }

  *&self->_interactionFlags &= ~1u;
  [(_UITypeSelectInteraction *)self _addSceneComponentStateInScene:windowScene];
  if (windowCopy)
  {
LABEL_6:
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__windowWillMoveToScene_ name:@"_UIWindowWillMoveToSceneNotification" object:windowCopy];
    [defaultCenter addObserver:self selector:sel__windowDidMoveToScene_ name:@"_UIWindowDidMoveToSceneNotification" object:windowCopy];
    [defaultCenter addObserver:self selector:sel__windowWillMoveToScene_ name:@"_UIWindowWillMoveToNilSceneNotification" object:windowCopy];
  }

LABEL_7:
}

- (void)_unregisterWindowNotificationsOnOldWindow:(id)window
{
  v8[3] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AD88];
  windowCopy = window;
  defaultCenter = [v4 defaultCenter];
  v8[0] = @"_UIWindowWillMoveToSceneNotification";
  v8[1] = @"_UIWindowDidMoveToSceneNotification";
  v8[2] = @"_UIWindowWillMoveToNilSceneNotification";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  [(NSNotificationCenter *)defaultCenter _uiRemoveObserver:v7 names:?];

  *&self->_interactionFlags &= ~1u;
  [(_UITypeSelectInteraction *)self _removeSceneComponentStateInWindow:windowCopy];
}

- (void)_windowWillMoveToScene:(id)scene
{
  sceneCopy = scene;
  object = [sceneCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    object2 = [sceneCopy object];

    if (object2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_view);
      _window = [WeakRetained _window];

      if (_window == object2)
      {
        v8 = objc_loadWeakRetained(&self->_view);
        window = [v8 window];
        [(_UITypeSelectInteraction *)self _removeSceneComponentStateInWindow:window];

        *&self->_interactionFlags |= 1u;
      }
    }
  }

  else
  {

    object2 = 0;
  }
}

- (void)_windowDidMoveToScene:(id)scene
{
  sceneCopy = scene;
  WeakRetained = [sceneCopy object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    object = 0;
    goto LABEL_6;
  }

  object = [sceneCopy object];

  if (!object)
  {
    goto LABEL_7;
  }

  WeakRetained = objc_loadWeakRetained(&self->_view);
  _window = [WeakRetained _window];
  if (_window != object)
  {

LABEL_6:
    goto LABEL_7;
  }

  interactionFlags = self->_interactionFlags;

  if (interactionFlags)
  {
    *&self->_interactionFlags &= ~1u;
    WeakRetained = [object windowScene];
    [(_UITypeSelectInteraction *)self _addSceneComponentStateInScene:WeakRetained];
    goto LABEL_6;
  }

LABEL_7:
}

- (void)_addSceneComponentStateInScene:(id)scene
{
  _keyboardOverridingSceneComponent = [scene _keyboardOverridingSceneComponent];
  commonView = [_keyboardOverridingSceneComponent commonView];
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v6 = [WeakRetained isDescendantOfView:commonView];

  if (v6)
  {
    v7 = [_UIKeyboardResponderOverrideInfo alloc];
    keyInput = self->_keyInput;
    v9 = objc_loadWeakRetained(&self->_view);
    v10 = [(_UIKeyboardResponderOverrideInfo *)&v7->super.isa initWithKeyboardResponder:v9 sourceView:commonView commonView:?];

    [_keyboardOverridingSceneComponent pushPreferredKeyboardResponderOverride:v10];
  }
}

- (void)_removeSceneComponentStateInWindow:(id)window
{
  windowScene = [window windowScene];
  _keyboardOverridingSceneComponent = [windowScene _keyboardOverridingSceneComponent];

  [_keyboardOverridingSceneComponent removePreferredKeyboardResponderOverride:self->_keyInput];
}

- (void)_addGesturesToView:(id)view
{
  viewCopy = view;
  view = [(UIGestureRecognizer *)self->_keyPressGestureRecognizer view];

  if (view != viewCopy)
  {
    [viewCopy addGestureRecognizer:self->_keyPressGestureRecognizer];
    [viewCopy addGestureRecognizer:self->_navigationGestureRecognizer];
    [viewCopy addGestureRecognizer:self->_didRecognizeTouchResetGestureRecognizer];
  }
}

- (void)_removeGesturesFromView:(id)view
{
  viewCopy = view;
  view = [(UIGestureRecognizer *)self->_keyPressGestureRecognizer view];

  v5 = viewCopy;
  if (view == viewCopy)
  {
    [viewCopy removeGestureRecognizer:self->_keyPressGestureRecognizer];
    [viewCopy removeGestureRecognizer:self->_navigationGestureRecognizer];
    [viewCopy removeGestureRecognizer:self->_didRecognizeTouchResetGestureRecognizer];
    v5 = viewCopy;
  }
}

- (_UITypeSelectInteractionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end