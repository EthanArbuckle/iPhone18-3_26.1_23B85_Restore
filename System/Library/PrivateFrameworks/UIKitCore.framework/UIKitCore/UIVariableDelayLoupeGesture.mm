@interface UIVariableDelayLoupeGesture
- (BOOL)_allowsForShortDelay;
- (BOOL)_tracksPointerTouch;
- (BOOL)isCloseToCaret;
- (BOOL)isLongPress;
- (BOOL)isWithinRecentTap;
- (BOOL)shouldUseLegacyBehavior;
- (UITextInput)textView;
- (UIVariableDelayLoupeGesture)initWithTarget:(id)a3 action:(SEL)a4;
- (void)_startEnoughTimeElapsedTimer;
@end

@implementation UIVariableDelayLoupeGesture

- (UIVariableDelayLoupeGesture)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = UIVariableDelayLoupeGesture;
  v4 = [(UILongPressGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
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
  v3 = [(UIVariableDelayLoupeGesture *)self _tracksPointerTouch];
  v4 = [(UIVariableDelayLoupeGesture *)self textView];
  v5 = [(UIGestureRecognizer *)self view];

  v6 = 0;
  if (v5 && v4)
  {
    if (v3 || [v4 isEditing] && (!objc_msgSend(v4, "_usesAsynchronousProtocol") || objc_msgSend(v4, "isEditable")))
    {
      v7 = [(UIVariableDelayLoupeGesture *)self textView];
      v8 = [v7 _selectionDisplayInteraction];
      v9 = [v8 _isCursorAccessoryViewVisible];

      v6 = v9 ^ 1;
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
  v2 = [(UILongPressGestureRecognizer *)self touches];
  v3 = [v2 firstObject];

  LOBYTE(v2) = [v3 _isPointerTouch];
  return v2;
}

- (BOOL)isCloseToCaret
{
  v2 = self;
  v3 = [(UIVariableDelayLoupeGesture *)self textView];
  v4 = [v3 _proxyTextInput];
  v5 = [v4 textInputView];

  v6 = [(UIVariableDelayLoupeGesture *)v2 textView];
  v7 = [v6 interactionAssistant];
  v8 = [v7 activeSelectionController];
  v9 = [v8 selection];
  [v9 caretRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [(UILongPressGestureRecognizer *)v2 locationInView:v5];
  LOBYTE(v2) = sqrt((v11 + v15 * 0.5 - v18) * (v11 + v15 * 0.5 - v18) + (v13 + v17 * 0.5 - v19) * (v13 + v17 * 0.5 - v19)) < 40.0;

  return v2;
}

- (BOOL)isWithinRecentTap
{
  v3 = [(UIVariableDelayLoupeGesture *)self textView];
  v4 = [(UIGestureRecognizer *)self view];

  v5 = 0;
  if (v4 && v3)
  {
    v6 = [v3 __textInteractionFromAssistant];
    v7 = [v6 interactionWithClass:objc_opt_class()];
    v5 = [v7 _isNowWithinRepeatedTapTime];
  }

  return v5;
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

  v6 = [(UIVariableDelayLoupeGesture *)self textView];
  v7 = [v6 _proxyTextInput];
  v8 = [v7 textInputView];

  LOBYTE(v6) = [v8 conformsToProtocol:&unk_1F016CC30];
  return v6;
}

- (BOOL)isLongPress
{
  v3 = CACurrentMediaTime();
  [(UIGestureRecognizer *)self lastTouchTimestamp];
  return v3 - v4 > 0.5;
}

- (void)_startEnoughTimeElapsedTimer
{
  v3 = [(UIVariableDelayLoupeGesture *)self _tracksPointerTouch];
  if (![(UIVariableDelayLoupeGesture *)self _allowsForShortDelay]|| (v4 = 0.0, !v3))
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