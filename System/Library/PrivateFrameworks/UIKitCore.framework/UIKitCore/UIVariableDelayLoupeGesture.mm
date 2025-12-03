@interface UIVariableDelayLoupeGesture
- (BOOL)_allowsForShortDelay;
- (BOOL)_tracksPointerTouch;
- (BOOL)isCloseToCaret;
- (BOOL)isLongPress;
- (BOOL)isWithinRecentTap;
- (BOOL)shouldUseLegacyBehavior;
- (UITextInput)textView;
- (UIVariableDelayLoupeGesture)initWithTarget:(id)target action:(SEL)action;
- (void)_startEnoughTimeElapsedTimer;
@end

@implementation UIVariableDelayLoupeGesture

- (UIVariableDelayLoupeGesture)initWithTarget:(id)target action:(SEL)action
{
  v7.receiver = self;
  v7.super_class = UIVariableDelayLoupeGesture;
  v4 = [(UILongPressGestureRecognizer *)&v7 initWithTarget:target action:action];
  v5 = v4;
  if (v4)
  {
    [(UILongPressGestureRecognizer *)v4 set_prefersToBeExclusiveWithCompetingLongPressGestureRecognizers:1];
    [(UILongPressGestureRecognizer *)v5 set_prefersNotToBePreventedByCompetingLongPressGestureRecognizers:1];
  }

  return v5;
}

- (BOOL)_allowsForShortDelay
{
  _tracksPointerTouch = [(UIVariableDelayLoupeGesture *)self _tracksPointerTouch];
  textView = [(UIVariableDelayLoupeGesture *)self textView];
  view = [(UIGestureRecognizer *)self view];

  v6 = 0;
  if (view && textView)
  {
    if (_tracksPointerTouch || [textView isEditing] && (!objc_msgSend(textView, "_usesAsynchronousProtocol") || objc_msgSend(textView, "isEditable")))
    {
      textView2 = [(UIVariableDelayLoupeGesture *)self textView];
      _selectionDisplayInteraction = [textView2 _selectionDisplayInteraction];
      _isCursorAccessoryViewVisible = [_selectionDisplayInteraction _isCursorAccessoryViewVisible];

      v6 = _isCursorAccessoryViewVisible ^ 1;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_tracksPointerTouch
{
  touches = [(UILongPressGestureRecognizer *)self touches];
  firstObject = [touches firstObject];

  LOBYTE(touches) = [firstObject _isPointerTouch];
  return touches;
}

- (BOOL)isCloseToCaret
{
  selfCopy = self;
  textView = [(UIVariableDelayLoupeGesture *)self textView];
  _proxyTextInput = [textView _proxyTextInput];
  textInputView = [_proxyTextInput textInputView];

  textView2 = [(UIVariableDelayLoupeGesture *)selfCopy textView];
  interactionAssistant = [textView2 interactionAssistant];
  activeSelectionController = [interactionAssistant activeSelectionController];
  selection = [activeSelectionController selection];
  [selection caretRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(UILongPressGestureRecognizer *)selfCopy locationInView:textInputView];
  LOBYTE(selfCopy) = sqrt((v11 + v15 * 0.5 - v18) * (v11 + v15 * 0.5 - v18) + (v13 + v17 * 0.5 - v19) * (v13 + v17 * 0.5 - v19)) < 40.0;

  return selfCopy;
}

- (BOOL)isWithinRecentTap
{
  textView = [(UIVariableDelayLoupeGesture *)self textView];
  view = [(UIGestureRecognizer *)self view];

  _isNowWithinRepeatedTapTime = 0;
  if (view && textView)
  {
    __textInteractionFromAssistant = [textView __textInteractionFromAssistant];
    v7 = [__textInteractionFromAssistant interactionWithClass:objc_opt_class()];
    _isNowWithinRepeatedTapTime = [v7 _isNowWithinRepeatedTapTime];
  }

  return _isNowWithinRepeatedTapTime;
}

- (BOOL)shouldUseLegacyBehavior
{
  if (_UIInternalPreferencesRevisionOnce != -1)
  {
    dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
  }

  v3 = _UIInternalPreferencesRevisionVar;
  if (_UIInternalPreferencesRevisionVar < 1)
  {
    return 0;
  }

  v5 = _UIInternalPreference_AllowLegacyForWK;
  if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_AllowLegacyForWK)
  {
    return 0;
  }

  while (v3 >= v5)
  {
    _UIInternalPreferenceSync(v3, &_UIInternalPreference_AllowLegacyForWK, @"AllowLegacyForWK", _UIInternalPreferenceUpdateBool);
    v5 = _UIInternalPreference_AllowLegacyForWK;
    if (v3 == _UIInternalPreference_AllowLegacyForWK)
    {
      return 0;
    }
  }

  if (!byte_1EA95E754)
  {
    return 0;
  }

  textView = [(UIVariableDelayLoupeGesture *)self textView];
  _proxyTextInput = [textView _proxyTextInput];
  textInputView = [_proxyTextInput textInputView];

  LOBYTE(textView) = [textInputView conformsToProtocol:&unk_1F016CC30];
  return textView;
}

- (BOOL)isLongPress
{
  v3 = CACurrentMediaTime();
  [(UIGestureRecognizer *)self lastTouchTimestamp];
  return v3 - v4 > 0.5;
}

- (void)_startEnoughTimeElapsedTimer
{
  _tracksPointerTouch = [(UIVariableDelayLoupeGesture *)self _tracksPointerTouch];
  if (![(UIVariableDelayLoupeGesture *)self _allowsForShortDelay]|| (v4 = 0.0, !_tracksPointerTouch))
  {
    v4 = 0.5;
    if ([(UIVariableDelayLoupeGesture *)self _allowsForShortDelay]&& [(UIVariableDelayLoupeGesture *)self isCloseToCaret]&& ![(UIVariableDelayLoupeGesture *)self isWithinRecentTap])
    {
      if ([(UIVariableDelayLoupeGesture *)self shouldUseLegacyBehavior])
      {
        v4 = 0.25;
      }

      else
      {
        v4 = 0.07;
      }
    }
  }

  [(UILongPressGestureRecognizer *)self setDelay:v4];
  v5.receiver = self;
  v5.super_class = UIVariableDelayLoupeGesture;
  [(UILongPressGestureRecognizer *)&v5 _startEnoughTimeElapsedTimer];
}

- (UITextInput)textView
{
  WeakRetained = objc_loadWeakRetained(&self->_textView);

  return WeakRetained;
}

@end