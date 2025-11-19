@interface UITextNonEditableInteraction
- (BOOL)_shouldAllowEnforcedTouchTypeForTouch:(id)a3 forGestureRecognizer:(id)a4;
- (BOOL)_shouldAllowOneFingerTapInUneditable:(id)a3;
- (BOOL)interaction_gestureRecognizerShouldBegin:(id)a3;
- (UITextNonEditableInteraction)initWithMode:(int64_t)a3;
- (void)_oneFingerTapInUneditableAcceleratedActionAtLocation:(CGPoint)a3 textInput:(id)a4 canReplaceText:(BOOL)a5;
- (void)_oneFingerTapInUneditableActionAtLocation:(CGPoint)a3 textInput:(id)a4 canReplaceText:(BOOL)a5 modifierFlags:(int64_t)a6;
- (void)_performGestureType:(int64_t)a3 state:(int64_t)a4 location:(CGPoint)a5 locationOfFirstTouch:(CGPoint)a6 forTouchType:(int64_t)a7;
- (void)doubleTapInUneditable:(id)a3;
- (void)oneFingerTapInUneditable:(id)a3;
- (void)oneFingerTapInUneditableAccelerated:(id)a3;
- (void)toggleSelectionCommands;
@end

@implementation UITextNonEditableInteraction

- (UITextNonEditableInteraction)initWithMode:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = UITextNonEditableInteraction;
  v4 = [(UITextInteraction *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_mode = a3;
    if (a3 == 2)
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

    if (a3 != 1)
    {
      goto LABEL_5;
    }
  }

  return v5;
}

- (BOOL)_shouldAllowEnforcedTouchTypeForTouch:(id)a3 forGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UITextInteraction *)self recognizerForName:0x1EFBA7650];

  v9 = [(UITextInteraction *)self recognizerForName:0x1EFBA75D0];

  if (v8 == v7 || v9 == v7)
  {
    v11 = [v6 _originatesFromPointerEvent] ^ 1;
  }

  else
  {
    LOBYTE(v11) = 1;
  }

  return v11;
}

- (BOOL)_shouldAllowOneFingerTapInUneditable:(id)a3
{
  v4 = [(UITextInteraction *)self linkInteractionSession];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(UITextInteraction *)self assistantDelegate];
    v7 = [(UITextInteraction *)self _textInput];
    if ([v6 viewCouldBecomeEditable:v7])
    {
      v5 = 1;
    }

    else
    {
      v8 = [(UITextInteraction *)self assistantDelegate];
      v9 = [v8 view];
      if ([v9 isFirstResponder])
      {
        v10 = [(UITextInteraction *)self assistantDelegate];
        v11 = [v10 view];
        v12 = [v11 _responderWindow];
        if ([v12 isKeyWindow])
        {
          v16 = [(UITextInteraction *)self assistantDelegate];
          v13 = [v16 activeSelection];
          [v13 selectedRange];
          v14 = v17 = v10;
          v5 = [v14 _isRanged];

          v10 = v17;
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 1;
      }
    }
  }

  return v5;
}

- (void)oneFingerTapInUneditable:(id)a3
{
  v26 = a3;
  v4 = [(UITextInteraction *)self linkInteractionSession];
  v5 = [v4 tapOnLinkWithGesture:v26];

  v6 = v26;
  if ((v5 & 1) == 0)
  {
    v7 = [v26 view];
    v8 = [v7 superview];

    [v26 locationInView:v8];
    v10 = v9;
    v12 = v11;
    v13 = [(UITextInteraction *)self assistantDelegate];
    v14 = [v13 activeSelection];
    v15 = [(UITextInteraction *)self view];
    v16 = [(UITextInteraction *)self _textInput];
    [v13 setNeedsGestureUpdate:{objc_msgSend(v16, "isFirstResponder") ^ 1}];
    if ([v13 viewCouldBecomeEditable:v16] && (objc_msgSend(v14, "selectedRange"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "_isRanged"), v17, !v18))
    {
      v20 = +[UIKeyboardImpl sharedInstance];
      [v20 updateChangeTimeAndIncrementCount];

      v19 = 1;
      [v15 setEditable:1];
      [v13 setFirstResponderIfNecessaryActivatingSelection:0];
      [v13 setGestureRecognizers];
    }

    else
    {
      [v13 setFirstResponderIfNecessaryActivatingSelection:0];
      v19 = 0;
    }

    [(UITextInteraction *)self _performPreemtiveLayoutToEnsureNoMoreLayoutWhileSelecting:v16];
    v21 = [v16 textInputView];
    [v8 convertPoint:v21 toView:{v10, v12}];
    v23 = v22;
    v25 = v24;

    -[UITextNonEditableInteraction _oneFingerTapInUneditableActionAtLocation:textInput:canReplaceText:modifierFlags:](self, "_oneFingerTapInUneditableActionAtLocation:textInput:canReplaceText:modifierFlags:", v16, v19, [v26 modifierFlags], v23, v25);
    if ([v13 needsGestureUpdate] && objc_msgSend(v16, "isFirstResponder"))
    {
      [v13 setGestureRecognizers];
    }

    [v13 notifyKeyboardSelectionChanged];

    v6 = v26;
  }
}

- (void)oneFingerTapInUneditableAccelerated:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v11 = [v5 superview];

  [v4 locationInView:v11];
  v7 = v6;
  v9 = v8;

  v10 = [(UITextInteraction *)self _textInput];
  [(UITextNonEditableInteraction *)self _oneFingerTapInUneditableAcceleratedActionAtLocation:v10 textInput:0 canReplaceText:v7, v9];
}

- (void)_oneFingerTapInUneditableActionAtLocation:(CGPoint)a3 textInput:(id)a4 canReplaceText:(BOOL)a5 modifierFlags:(int64_t)a6
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v10 = [(UITextInteraction *)self assistantDelegate];
  [v10 setGrabberSuppressionAssertion:0];
  v11 = [v10 activeSelection];
  if (!v9)
  {
    v9 = [(UITextInteraction *)self _textInput];
  }

  if (![v10 viewCouldBecomeEditable:v9])
  {
    goto LABEL_12;
  }

  if (objc_opt_respondsToSelector())
  {
    v12 = [v9 _usesAsynchronousProtocol];
    if ((WebThreadIsEnabled() & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (WebThreadIsEnabled())
  {
    v12 = 0;
LABEL_9:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_12;
    }

LABEL_10:
    if (v12)
    {
      goto LABEL_12;
    }
  }

  v13 = [v11 selectedRange];
  v14 = [v13 _isRanged];

  if ((v14 & 1) == 0)
  {
    v17 = [(UITextInteraction *)self assistantDelegate];
    v18 = [v17 activeSelectionController];

    [v18 beginSelection];
    [v18 selectPositionAtPoint:1 granularity:0 completionHandler:{x, y}];
    [v18 endSelection];
    v19 = [v10 _editMenuAssistant];
    [v19 hideSelectionCommands];

    v20 = [MEMORY[0x1E69D4E18] sharedInstance];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __113__UITextNonEditableInteraction__oneFingerTapInUneditableActionAtLocation_textInput_canReplaceText_modifierFlags___block_invoke;
    v23[3] = &__block_descriptor_48_e5__8__0l;
    *&v23[4] = x;
    *&v23[5] = y;
    [v20 logBlock:v23 domain:@"com.apple.keyboard.UIKit"];

LABEL_21:
    goto LABEL_22;
  }

LABEL_12:
  v15 = [v11 selectedRange];
  if ([v15 _isRanged])
  {
    v16 = [v10 containerAllowsSelectionTintOnly];

    if ((v16 & 1) == 0)
    {
      if ([(UITextInteraction *)self selection:v11 containsPoint:x, y])
      {
        [(UITextNonEditableInteraction *)self toggleSelectionCommands];
        [v10 setGrabberSuppressionAssertion:0];
      }

      else if (([v10 viewConformsToAsynchronousInteractionProtocol] & 1) == 0)
      {
        [v11 clearSelection];
        [v11 commit];
        v21 = [v10 _editMenuAssistant];
        [v21 hideSelectionCommands];
      }

      v18 = [MEMORY[0x1E69D4E18] sharedInstance];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __113__UITextNonEditableInteraction__oneFingerTapInUneditableActionAtLocation_textInput_canReplaceText_modifierFlags___block_invoke_2;
      v22[3] = &__block_descriptor_48_e5__8__0l;
      *&v22[4] = x;
      *&v22[5] = y;
      [v18 logBlock:v22 domain:@"com.apple.keyboard.UIKit"];
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

- (void)_oneFingerTapInUneditableAcceleratedActionAtLocation:(CGPoint)a3 textInput:(id)a4 canReplaceText:(BOOL)a5
{
  y = a3.y;
  x = a3.x;
  v18 = a4;
  v8 = [(UITextInteraction *)self view];
  v9 = [(UITextInteraction *)self assistantDelegate];
  [v9 setGrabberSuppressionAssertion:0];
  v10 = [(UITextInteraction *)self root];
  v11 = [v10 _allowsSelectionCommands];

  [v9 setFirstResponderIfNecessary];
  v12 = [v9 activeSelection];
  if (!v18)
  {
    v18 = [(UITextInteraction *)self _textInput];
  }

  v13 = [v12 selectedRange];
  if ([v13 _isRanged])
  {
    v14 = [v9 containerAllowsSelectionTintOnly];

    if ((v14 & 1) == 0)
    {
      if ([(UITextInteraction *)self selection:v12 containsPoint:x, y])
      {
        if (v11)
        {
          v15 = [v9 _editMenuAssistant];
          [v15 showSelectionCommands];

          [(UITextNonEditableInteraction *)self toggleSelectionCommands];
        }
      }

      else
      {
        [v12 clearSelection];
        [v12 commit];
      }

      goto LABEL_12;
    }
  }

  else
  {
  }

  v16 = [v9 activeSelection];
  [(UITextInteraction *)self _beginSelectionChange];
  [v16 alterSelection:1 granularity:{x, y}];
  [v16 commit];
  [(UITextInteraction *)self _endSelectionChange];
  if (v11)
  {
    v17 = [v9 _editMenuAssistant];
    [v17 showSelectionCommands];
  }

  [v9 scrollSelectionToVisible];

LABEL_12:
}

- (void)doubleTapInUneditable:(id)a3
{
  v25 = a3;
  [(UITextInteraction *)self cancelLinkInteractionSession];
  v4 = [(UITextInteraction *)self assistantDelegate];
  [v4 setSelectionHighlightMode:0];
  v5 = [(UITextInteraction *)self view];
  v6 = [(UITextInteraction *)self _textInput];
  v7 = [v25 view];
  [v25 centroid];
  v9 = v8;
  v11 = v10;
  v12 = [v6 textInputView];
  [v7 convertPoint:v12 toView:{v9, v11}];
  v14 = v13;
  v16 = v15;

  [v4 setFirstResponderIfNecessary];
  [v4 setGrabberSuppressionAssertion:0];
  if ([v6 isFirstResponder])
  {
    v17 = [v4 activeSelection];
    [(UITextInteraction *)self _beginSelectionChange];
    if ([(UITextInteraction *)self _shouldObscureTextInput])
    {
      v18 = 5;
    }

    else
    {
      v19 = [(UITextInteraction *)self recognizerForName:0x1EFBA7650];
      if (v19 == v25)
      {
        v18 = 1;
      }

      else
      {
        v18 = 3;
      }
    }

    [v17 alterSelection:v18 granularity:{v14, v16}];
    [v17 commit];
    [(UITextInteraction *)self _endSelectionChange];
    v20 = [(UITextInteraction *)self root];
    v21 = [v20 interactionWithGestureForName:0x1EFBA76D0];

    if (v21)
    {
      [v21 updateInitialPoint:{v14, v16}];
    }

    if (self->_mode != 2 || (-[UITextInteraction root](self, "root"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v22 _allowsSelectionCommands], v22, v23))
    {
      v24 = [v4 _editMenuAssistant];
      [v24 showSelectionCommands];
    }

    [v4 scrollSelectionToVisible];
  }
}

- (void)toggleSelectionCommands
{
  v3 = [(UITextInteraction *)self assistantDelegate];
  v4 = [v3 _editMenuAssistant];
  v5 = [v4 _editMenuIsVisibleOrDismissedRecently];

  v8 = [(UITextInteraction *)self assistantDelegate];
  v6 = [v8 _editMenuAssistant];
  v7 = v6;
  if (v5)
  {
    [v6 hideSelectionCommands];
  }

  else
  {
    [v6 showSelectionCommands];
  }
}

- (void)_performGestureType:(int64_t)a3 state:(int64_t)a4 location:(CGPoint)a5 locationOfFirstTouch:(CGPoint)a6 forTouchType:(int64_t)a7
{
  if (a3 == 1 && a4 == 3)
  {
    [(UITextNonEditableInteraction *)self _oneFingerTapInUneditableActionAtLocation:0 textInput:1 canReplaceText:0 modifierFlags:a5.x, a5.y, a6.x, a6.y];
  }
}

- (BOOL)interaction_gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  if (self->_mode != 2 && ([(UITextInteraction *)self recognizerForName:0x1EFBA75D0], v5 = objc_claimAutoreleasedReturnValue(), v5, v5 == v4))
  {
    v6 = [(UITextNonEditableInteraction *)self _shouldAllowOneFingerTapInUneditable:v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = UITextNonEditableInteraction;
    v6 = [(UITextInteraction *)&v9 interaction_gestureRecognizerShouldBegin:v4];
  }

  v7 = v6;

  return v7;
}

@end