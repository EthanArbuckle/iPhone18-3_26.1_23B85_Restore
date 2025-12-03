@interface UITextNonEditableInteraction
- (BOOL)_shouldAllowEnforcedTouchTypeForTouch:(id)touch forGestureRecognizer:(id)recognizer;
- (BOOL)_shouldAllowOneFingerTapInUneditable:(id)uneditable;
- (BOOL)interaction_gestureRecognizerShouldBegin:(id)begin;
- (UITextNonEditableInteraction)initWithMode:(int64_t)mode;
- (void)_oneFingerTapInUneditableAcceleratedActionAtLocation:(CGPoint)location textInput:(id)input canReplaceText:(BOOL)text;
- (void)_oneFingerTapInUneditableActionAtLocation:(CGPoint)location textInput:(id)input canReplaceText:(BOOL)text modifierFlags:(int64_t)flags;
- (void)_performGestureType:(int64_t)type state:(int64_t)state location:(CGPoint)location locationOfFirstTouch:(CGPoint)touch forTouchType:(int64_t)touchType;
- (void)doubleTapInUneditable:(id)uneditable;
- (void)oneFingerTapInUneditable:(id)uneditable;
- (void)oneFingerTapInUneditableAccelerated:(id)accelerated;
- (void)toggleSelectionCommands;
@end

@implementation UITextNonEditableInteraction

- (UITextNonEditableInteraction)initWithMode:(int64_t)mode
{
  v10.receiver = self;
  v10.super_class = UITextNonEditableInteraction;
  v4 = [(UITextInteraction *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_mode = mode;
    if (mode == 2)
    {
      v6 = [(UITextInteraction *)v4 defaultTapRecognizerWithAction:sel_oneFingerTapInUneditableAccelerated_];
      [(UITextInteraction *)v5 addGestureRecognizer:v6 withName:0x1EFBA75D0];

LABEL_5:
      v8 = [(UITextInteraction *)v5 defaultDoubleTapRecognizerWithAction:sel_doubleTapInUneditable_];
      [(UITextInteraction *)v5 addGestureRecognizer:v8 withName:0x1EFBA7650];

      return v5;
    }

    v7 = [(UITextInteraction *)v4 defaultTapRecognizerWithAction:sel_oneFingerTapInUneditable_];
    [(UITextInteraction *)v5 addGestureRecognizer:v7 withName:0x1EFBA75D0];

    if (mode != 1)
    {
      goto LABEL_5;
    }
  }

  return v5;
}

- (BOOL)_shouldAllowEnforcedTouchTypeForTouch:(id)touch forGestureRecognizer:(id)recognizer
{
  touchCopy = touch;
  recognizerCopy = recognizer;
  v8 = [(UITextInteraction *)self recognizerForName:0x1EFBA7650];

  v9 = [(UITextInteraction *)self recognizerForName:0x1EFBA75D0];

  if (v8 == recognizerCopy || v9 == recognizerCopy)
  {
    v11 = [touchCopy _originatesFromPointerEvent] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

- (BOOL)_shouldAllowOneFingerTapInUneditable:(id)uneditable
{
  linkInteractionSession = [(UITextInteraction *)self linkInteractionSession];
  if (linkInteractionSession)
  {
    _isRanged = 1;
  }

  else
  {
    assistantDelegate = [(UITextInteraction *)self assistantDelegate];
    _textInput = [(UITextInteraction *)self _textInput];
    if ([assistantDelegate viewCouldBecomeEditable:_textInput])
    {
      _isRanged = 1;
    }

    else
    {
      assistantDelegate2 = [(UITextInteraction *)self assistantDelegate];
      view = [assistantDelegate2 view];
      if ([view isFirstResponder])
      {
        assistantDelegate3 = [(UITextInteraction *)self assistantDelegate];
        view2 = [assistantDelegate3 view];
        _responderWindow = [view2 _responderWindow];
        if ([_responderWindow isKeyWindow])
        {
          assistantDelegate4 = [(UITextInteraction *)self assistantDelegate];
          activeSelection = [assistantDelegate4 activeSelection];
          [activeSelection selectedRange];
          v14 = v17 = assistantDelegate3;
          _isRanged = [v14 _isRanged];

          assistantDelegate3 = v17;
        }

        else
        {
          _isRanged = 1;
        }
      }

      else
      {
        _isRanged = 1;
      }
    }
  }

  return _isRanged;
}

- (void)oneFingerTapInUneditable:(id)uneditable
{
  uneditableCopy = uneditable;
  linkInteractionSession = [(UITextInteraction *)self linkInteractionSession];
  v5 = [linkInteractionSession tapOnLinkWithGesture:uneditableCopy];

  v6 = uneditableCopy;
  if ((v5 & 1) == 0)
  {
    view = [uneditableCopy view];
    superview = [view superview];

    [uneditableCopy locationInView:superview];
    v10 = v9;
    v12 = v11;
    assistantDelegate = [(UITextInteraction *)self assistantDelegate];
    activeSelection = [assistantDelegate activeSelection];
    view2 = [(UITextInteraction *)self view];
    _textInput = [(UITextInteraction *)self _textInput];
    [assistantDelegate setNeedsGestureUpdate:{objc_msgSend(_textInput, "isFirstResponder") ^ 1}];
    if ([assistantDelegate viewCouldBecomeEditable:_textInput] && (objc_msgSend(activeSelection, "selectedRange"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "_isRanged"), v17, !v18))
    {
      v20 = +[UIKeyboardImpl sharedInstance];
      [v20 updateChangeTimeAndIncrementCount];

      v19 = 1;
      [view2 setEditable:1];
      [assistantDelegate setFirstResponderIfNecessaryActivatingSelection:0];
      [assistantDelegate setGestureRecognizers];
    }

    else
    {
      [assistantDelegate setFirstResponderIfNecessaryActivatingSelection:0];
      v19 = 0;
    }

    [(UITextInteraction *)self _performPreemtiveLayoutToEnsureNoMoreLayoutWhileSelecting:_textInput];
    textInputView = [_textInput textInputView];
    [superview convertPoint:textInputView toView:{v10, v12}];
    v23 = v22;
    v25 = v24;

    -[UITextNonEditableInteraction _oneFingerTapInUneditableActionAtLocation:textInput:canReplaceText:modifierFlags:](self, "_oneFingerTapInUneditableActionAtLocation:textInput:canReplaceText:modifierFlags:", _textInput, v19, [uneditableCopy modifierFlags], v23, v25);
    if ([assistantDelegate needsGestureUpdate] && objc_msgSend(_textInput, "isFirstResponder"))
    {
      [assistantDelegate setGestureRecognizers];
    }

    [assistantDelegate notifyKeyboardSelectionChanged];

    v6 = uneditableCopy;
  }
}

- (void)oneFingerTapInUneditableAccelerated:(id)accelerated
{
  acceleratedCopy = accelerated;
  view = [acceleratedCopy view];
  superview = [view superview];

  [acceleratedCopy locationInView:superview];
  v7 = v6;
  v9 = v8;

  _textInput = [(UITextInteraction *)self _textInput];
  [(UITextNonEditableInteraction *)self _oneFingerTapInUneditableAcceleratedActionAtLocation:_textInput textInput:0 canReplaceText:v7, v9];
}

- (void)_oneFingerTapInUneditableActionAtLocation:(CGPoint)location textInput:(id)input canReplaceText:(BOOL)text modifierFlags:(int64_t)flags
{
  y = location.y;
  x = location.x;
  inputCopy = input;
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  [assistantDelegate setGrabberSuppressionAssertion:0];
  activeSelection = [assistantDelegate activeSelection];
  if (!inputCopy)
  {
    inputCopy = [(UITextInteraction *)self _textInput];
  }

  if (![assistantDelegate viewCouldBecomeEditable:inputCopy])
  {
    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    _usesAsynchronousProtocol = [inputCopy _usesAsynchronousProtocol];
    if ((WebThreadIsEnabled() & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (WebThreadIsEnabled())
  {
    _usesAsynchronousProtocol = 0;
LABEL_9:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_12;
    }

LABEL_10:
    if (_usesAsynchronousProtocol)
    {
      goto LABEL_12;
    }
  }

  selectedRange = [activeSelection selectedRange];
  _isRanged = [selectedRange _isRanged];

  if ((_isRanged & 1) == 0)
  {
    assistantDelegate2 = [(UITextInteraction *)self assistantDelegate];
    activeSelectionController = [assistantDelegate2 activeSelectionController];

    [activeSelectionController beginSelection];
    [activeSelectionController selectPositionAtPoint:1 granularity:0 completionHandler:{x, y}];
    [activeSelectionController endSelection];
    _editMenuAssistant = [assistantDelegate _editMenuAssistant];
    [_editMenuAssistant hideSelectionCommands];

    mEMORY[0x1E69D4E18] = [MEMORY[0x1E69D4E18] sharedInstance];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __113__UITextNonEditableInteraction__oneFingerTapInUneditableActionAtLocation_textInput_canReplaceText_modifierFlags___block_invoke;
    v23[3] = &__block_descriptor_48_e5__8__0l;
    *&v23[4] = x;
    *&v23[5] = y;
    [mEMORY[0x1E69D4E18] logBlock:v23 domain:@"com.apple.keyboard.UIKit"];

LABEL_21:
    goto LABEL_22;
  }

LABEL_12:
  selectedRange2 = [activeSelection selectedRange];
  if ([selectedRange2 _isRanged])
  {
    containerAllowsSelectionTintOnly = [assistantDelegate containerAllowsSelectionTintOnly];

    if ((containerAllowsSelectionTintOnly & 1) == 0)
    {
      if ([(UITextInteraction *)self selection:activeSelection containsPoint:x, y])
      {
        [(UITextNonEditableInteraction *)self toggleSelectionCommands];
        [assistantDelegate setGrabberSuppressionAssertion:0];
      }

      else if (([assistantDelegate viewConformsToAsynchronousInteractionProtocol] & 1) == 0)
      {
        [activeSelection clearSelection];
        [activeSelection commit];
        _editMenuAssistant2 = [assistantDelegate _editMenuAssistant];
        [_editMenuAssistant2 hideSelectionCommands];
      }

      activeSelectionController = [MEMORY[0x1E69D4E18] sharedInstance];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __113__UITextNonEditableInteraction__oneFingerTapInUneditableActionAtLocation_textInput_canReplaceText_modifierFlags___block_invoke_2;
      v22[3] = &__block_descriptor_48_e5__8__0l;
      *&v22[4] = x;
      *&v22[5] = y;
      [activeSelectionController logBlock:v22 domain:@"com.apple.keyboard.UIKit"];
      goto LABEL_21;
    }
  }

  else
  {
  }

LABEL_22:
}

id __113__UITextNonEditableInteraction__oneFingerTapInUneditableActionAtLocation_textInput_canReplaceText_modifierFlags___block_invoke(uint64_t a1)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v6[0] = @"KeyboardEventType";
  v6[1] = @"Operation";
  v7[0] = @"TextEditing";
  v7[1] = @"Uneditable text interaction";
  v7[2] = @"One finger";
  v6[2] = @"TriggerType";
  v6[3] = @"CursorLocationX";
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
  v7[3] = v2;
  v6[4] = @"CursorLocationY";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v7[4] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:5];

  return v4;
}

id __113__UITextNonEditableInteraction__oneFingerTapInUneditableActionAtLocation_textInput_canReplaceText_modifierFlags___block_invoke_2(uint64_t a1)
{
  v7[5] = *MEMORY[0x1E69E9840];
  v6[0] = @"KeyboardEventType";
  v6[1] = @"Operation";
  v7[0] = @"TextEditing";
  v7[1] = @"Selected uneditable text";
  v7[2] = @"One finger";
  v6[2] = @"TriggerType";
  v6[3] = @"CursorLocationX";
  v2 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 32)];
  v7[3] = v2;
  v6[4] = @"CursorLocationY";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 40)];
  v7[4] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:5];

  return v4;
}

- (void)_oneFingerTapInUneditableAcceleratedActionAtLocation:(CGPoint)location textInput:(id)input canReplaceText:(BOOL)text
{
  y = location.y;
  x = location.x;
  inputCopy = input;
  view = [(UITextInteraction *)self view];
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  [assistantDelegate setGrabberSuppressionAssertion:0];
  root = [(UITextInteraction *)self root];
  _allowsSelectionCommands = [root _allowsSelectionCommands];

  [assistantDelegate setFirstResponderIfNecessary];
  activeSelection = [assistantDelegate activeSelection];
  if (!inputCopy)
  {
    inputCopy = [(UITextInteraction *)self _textInput];
  }

  selectedRange = [activeSelection selectedRange];
  if ([selectedRange _isRanged])
  {
    containerAllowsSelectionTintOnly = [assistantDelegate containerAllowsSelectionTintOnly];

    if ((containerAllowsSelectionTintOnly & 1) == 0)
    {
      if ([(UITextInteraction *)self selection:activeSelection containsPoint:x, y])
      {
        if (_allowsSelectionCommands)
        {
          _editMenuAssistant = [assistantDelegate _editMenuAssistant];
          [_editMenuAssistant showSelectionCommands];

          [(UITextNonEditableInteraction *)self toggleSelectionCommands];
        }
      }

      else
      {
        [activeSelection clearSelection];
        [activeSelection commit];
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  activeSelection2 = [assistantDelegate activeSelection];
  [(UITextInteraction *)self _beginSelectionChange];
  [activeSelection2 alterSelection:1 granularity:{x, y}];
  [activeSelection2 commit];
  [(UITextInteraction *)self _endSelectionChange];
  if (_allowsSelectionCommands)
  {
    _editMenuAssistant2 = [assistantDelegate _editMenuAssistant];
    [_editMenuAssistant2 showSelectionCommands];
  }

  [assistantDelegate scrollSelectionToVisible];

LABEL_12:
}

- (void)doubleTapInUneditable:(id)uneditable
{
  uneditableCopy = uneditable;
  [(UITextInteraction *)self cancelLinkInteractionSession];
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  [assistantDelegate setSelectionHighlightMode:0];
  view = [(UITextInteraction *)self view];
  _textInput = [(UITextInteraction *)self _textInput];
  view2 = [uneditableCopy view];
  [uneditableCopy centroid];
  v9 = v8;
  v11 = v10;
  textInputView = [_textInput textInputView];
  [view2 convertPoint:textInputView toView:{v9, v11}];
  v14 = v13;
  v16 = v15;

  [assistantDelegate setFirstResponderIfNecessary];
  [assistantDelegate setGrabberSuppressionAssertion:0];
  if ([_textInput isFirstResponder])
  {
    activeSelection = [assistantDelegate activeSelection];
    [(UITextInteraction *)self _beginSelectionChange];
    if ([(UITextInteraction *)self _shouldObscureTextInput])
    {
      v18 = 5;
    }

    else
    {
      v19 = [(UITextInteraction *)self recognizerForName:0x1EFBA7650];
      if (v19 == uneditableCopy)
      {
        v18 = 1;
      }

      else
      {
        v18 = 3;
      }
    }

    [activeSelection alterSelection:v18 granularity:{v14, v16}];
    [activeSelection commit];
    [(UITextInteraction *)self _endSelectionChange];
    root = [(UITextInteraction *)self root];
    v21 = [root interactionWithGestureForName:0x1EFBA76D0];

    if (v21)
    {
      [v21 updateInitialPoint:{v14, v16}];
    }

    if (self->_mode != 2 || (-[UITextInteraction root](self, "root"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 _allowsSelectionCommands], v22, v23))
    {
      _editMenuAssistant = [assistantDelegate _editMenuAssistant];
      [_editMenuAssistant showSelectionCommands];
    }

    [assistantDelegate scrollSelectionToVisible];
  }
}

- (void)toggleSelectionCommands
{
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  _editMenuAssistant = [assistantDelegate _editMenuAssistant];
  _editMenuIsVisibleOrDismissedRecently = [_editMenuAssistant _editMenuIsVisibleOrDismissedRecently];

  assistantDelegate2 = [(UITextInteraction *)self assistantDelegate];
  _editMenuAssistant2 = [assistantDelegate2 _editMenuAssistant];
  v7 = _editMenuAssistant2;
  if (_editMenuIsVisibleOrDismissedRecently)
  {
    [_editMenuAssistant2 hideSelectionCommands];
  }

  else
  {
    [_editMenuAssistant2 showSelectionCommands];
  }
}

- (void)_performGestureType:(int64_t)type state:(int64_t)state location:(CGPoint)location locationOfFirstTouch:(CGPoint)touch forTouchType:(int64_t)touchType
{
  if (type == 1 && state == 3)
  {
    [(UITextNonEditableInteraction *)self _oneFingerTapInUneditableActionAtLocation:0 textInput:1 canReplaceText:0 modifierFlags:location.x, location.y, touch.x, touch.y];
  }
}

- (BOOL)interaction_gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  if (self->_mode != 2 && ([(UITextInteraction *)self recognizerForName:0x1EFBA75D0], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == beginCopy))
  {
    v6 = [(UITextNonEditableInteraction *)self _shouldAllowOneFingerTapInUneditable:beginCopy];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UITextNonEditableInteraction;
    v6 = [(UITextInteraction *)&v9 interaction_gestureRecognizerShouldBegin:beginCopy];
  }

  v7 = v6;

  return v7;
}

@end