@interface UISystemDefaultTextInputAssistantItem
- (BOOL)canPerformSystemButtonActionForStyle:(int64_t)a3;
- (SEL)_responderSelectorForSystemButtonStyle:(int64_t)a3;
- (UISystemDefaultTextInputAssistantItem)init;
- (UISystemDefaultTextInputAssistantItemDelegate)delegate;
- (void)_updateIsSystemItem;
- (void)analyticsDispatchWithActionStyle:(int64_t)a3;
- (void)assistantPaste:(id)a3 forEvent:(id)a4;
- (void)performSystemButtonActionForStyle:(int64_t)a3;
- (void)setLeadingBarButtonGroups:(id)a3;
- (void)setTrailingBarButtonGroups:(id)a3;
@end

@implementation UISystemDefaultTextInputAssistantItem

- (void)_updateIsSystemItem
{
  v6 = [(UISystemDefaultTextInputAssistantItem *)self defaultSystemLeadingBarButtonGroups];
  v3 = [(UITextInputAssistantItem *)self leadingBarButtonGroups];
  if (_areBarButtonGroupsBasicallyEqualToSystemDefaults(v6, v3))
  {
    v4 = [(UISystemDefaultTextInputAssistantItem *)self defaultSystemTrailingBarButtonGroups];
    v5 = [(UITextInputAssistantItem *)self trailingBarButtonGroups];
    self->_systemItem = _areBarButtonGroupsBasicallyEqualToSystemDefaults(v4, v5);
  }

  else
  {
    self->_systemItem = 0;
  }
}

- (UISystemDefaultTextInputAssistantItem)init
{
  v8.receiver = self;
  v8.super_class = UISystemDefaultTextInputAssistantItem;
  v2 = [(UITextInputAssistantItem *)&v8 init];
  if (v2)
  {
    if (+[UISystemInputAssistantViewController shouldShowSystemInputAssistantItems])
    {
      v3 = [UIAssistantBarButtonItemProvider defaultSystemLeadingBarButtonGroupsForItem:v2];
      defaultSystemLeadingBarButtonGroups = v2->_defaultSystemLeadingBarButtonGroups;
      v2->_defaultSystemLeadingBarButtonGroups = v3;

      v5 = [UIAssistantBarButtonItemProvider defaultSystemTrailingBarButtonGroupsForItem:v2];
      defaultSystemTrailingBarButtonGroups = v2->_defaultSystemTrailingBarButtonGroups;
      v2->_defaultSystemTrailingBarButtonGroups = v5;
    }

    [(UISystemDefaultTextInputAssistantItem *)v2 _updateIsSystemItem];
  }

  return v2;
}

- (void)setLeadingBarButtonGroups:(id)a3
{
  v4.receiver = self;
  v4.super_class = UISystemDefaultTextInputAssistantItem;
  [(UITextInputAssistantItem *)&v4 setLeadingBarButtonGroups:a3];
  [(UISystemDefaultTextInputAssistantItem *)self _updateIsSystemItem];
}

- (void)setTrailingBarButtonGroups:(id)a3
{
  v4.receiver = self;
  v4.super_class = UISystemDefaultTextInputAssistantItem;
  [(UITextInputAssistantItem *)&v4 setTrailingBarButtonGroups:a3];
  [(UISystemDefaultTextInputAssistantItem *)self _updateIsSystemItem];
}

- (void)assistantPaste:(id)a3 forEvent:(id)a4
{
  v5 = [a4 _authenticationMessage];
  [UIPasteboard _attemptAuthenticationWithMessage:v5];

  [(UISystemDefaultTextInputAssistantItem *)self performSystemButtonActionForStyle:2];
}

- (SEL)_responderSelectorForSystemButtonStyle:(int64_t)a3
{
  result = 0;
  if (a3 > 4)
  {
    switch(a3)
    {
      case 5:
        return sel_toggleBoldface_;
      case 6:
        return sel_toggleItalics_;
      case 7:
        return sel_toggleUnderline_;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      return sel_copy_;
    }

    else if (a3 == 2)
    {
      return sel_paste_;
    }
  }

  else
  {
    return sel_cut_;
  }

  return result;
}

- (BOOL)canPerformSystemButtonActionForStyle:(int64_t)a3
{
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = [v5 delegateAsResponder];
  v7 = [v6 _responderForEditing];

  v8 = [(UISystemDefaultTextInputAssistantItem *)self _responderSelectorForSystemButtonStyle:a3];
  if (v8)
  {
    v9 = [v7 canPerformAction:v8 withSender:0];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)analyticsDispatchWithActionStyle:(int64_t)a3
{
  if (a3 <= 4)
  {
    [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:*off_1E71255F0[a3] trigger:@"UCB"];
  }
}

- (void)performSystemButtonActionForStyle:(int64_t)a3
{
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = v5;
  if (a3 <= 13)
  {
    if (a3 > 11)
    {
      if (a3 != 12)
      {
        v10 = +[UIDictationController sharedInstance];
        [v10 setReasonType:12];

        v11 = +[UIDictationController sharedInstance];
        [v11 stopDictation];
LABEL_38:

        goto LABEL_39;
      }

      v18 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      v19 = [v18 responder];
      v20 = [v19 inputAssistantItem];
      v11 = [v20 _dictationReplacementAction];

      if (v11)
      {
        v17 = [v11 sender];
        [v11 performWithSender:v17 target:0];
      }

      else if (+[UIDictationController isRunning])
      {
        v24 = +[UIDictationController sharedInstance];
        [v24 setReasonType:12];

        v17 = +[UIDictationController sharedInstance];
        [v17 stopDictation];
      }

      else
      {
        v17 = +[UIKeyboardInputModeController sharedInputModeController];
        v25 = [UIDictationInputModeOptions dictationInputModeOptionsWithInvocationSource:@"UIDictationInputModeInvocationSourceUCBBar"];
        [v17 switchToDictationInputModeWithOptions:v25];
      }
    }

    else
    {
      if (a3 != 9)
      {
        if (a3 == 11)
        {
          [v5 presentEmojiPopoverViaTrigger:@"ucb" completion:0];
          goto LABEL_39;
        }

        goto LABEL_28;
      }

      v11 = _getResponderForEditing();
      v14 = [(UITextInputAssistantItem *)self trailingBarButtonGroups];
      v15 = [v14 lastObject];
      v16 = [v15 _items];
      v17 = [v16 firstObject];

      if (v11 && (objc_opt_respondsToSelector() & 1) != 0 && v17)
      {
        [v11 performSelector:sel__showTextFormattingOptions_ withObject:v17];
      }
    }

    goto LABEL_38;
  }

  if (a3 > 17)
  {
    switch(a3)
    {
      case 18:
        [v5 lookUpResponderChainForCustomInputView];
        goto LABEL_39;
      case 21:
        [v5 performReturn];
        goto LABEL_39;
      case 22:
        v7 = _getResponderForEditing();
        v8 = objc_opt_respondsToSelector();

        if (v8)
        {
          v9 = _getResponderForEditing();
          [v9 performSelector:sel__showTextFormattingAnimationOptions_ withObject:0];
        }

        goto LABEL_39;
    }

    goto LABEL_28;
  }

  if (a3 == 14)
  {
    if (![v5 isMinimized])
    {
      goto LABEL_39;
    }

    v21 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v21 setHideSystemInputAssistantView:1];

    v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v11 minimize];
    goto LABEL_38;
  }

  if (a3 != 15)
  {
LABEL_28:
    if (![(UISystemDefaultTextInputAssistantItem *)self canPerformSystemButtonActionForStyle:a3])
    {
      goto LABEL_39;
    }

    v22 = _getResponderForEditing();
    v11 = v22;
    if (a3 == 4)
    {
      v23 = [v22 undoManager];
      [v23 redo];
    }

    else
    {
      if (a3 != 3)
      {
        v34 = [(UISystemDefaultTextInputAssistantItem *)self _responderSelectorForSystemButtonStyle:a3];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __75__UISystemDefaultTextInputAssistantItem_performSystemButtonActionForStyle___block_invoke;
        v37[3] = &unk_1E70F36D0;
        v39 = self;
        v40 = v34;
        v38 = v11;
        [UIPasteboard _performAsDataOwnerForAction:v34 responder:v38 block:v37];
        v35 = UIKeyboardGetCurrentInputMode();
        v36 = TIStatisticGetKeyForInputMode();
        TIStatisticScalarIncrement();

        goto LABEL_51;
      }

      v23 = [v22 undoManager];
      [v23 undo];
    }

LABEL_51:
    [UIUndoGestureInteraction presentProductivityGestureTutorialInlineWithCompletion:0];
    goto LABEL_38;
  }

  v12 = [v5 delegateAsResponder];
  v13 = [v12 _suppressSoftwareKeyboard];

  if (v13)
  {
    v11 = [v6 delegateAsResponder];
    [v11 _setSuppressSoftwareKeyboard:0];
    goto LABEL_38;
  }

  if ([v6 isMinimized])
  {
    [v6 showKeyboardWithoutSuppressionPolicy];
  }

LABEL_39:
  if (+[UIKeyboard isKeyboardProcess])
  {
    if (+[UIKeyboard isInputSystemUI])
    {
      v26 = 1;
    }

    else
    {
      v26 = 12;
    }
  }

  else
  {
    v26 = 1;
  }

  v27 = +[UIKeyboardImpl activeInstance];
  v28 = [v27 feedbackGenerator];
  [v28 actionOccurred:v26];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v30 = WeakRetained;
    v31 = objc_loadWeakRetained(&self->_delegate);
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      v33 = objc_loadWeakRetained(&self->_delegate);
      [v33 didPerformSystemButtonActionForStyle:a3];
    }
  }

  [(UISystemDefaultTextInputAssistantItem *)self analyticsDispatchWithActionStyle:a3];
}

id __75__UISystemDefaultTextInputAssistantItem_performSystemButtonActionForStyle___block_invoke(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = a1[4];
  if (dyld_program_sdk_at_least())
  {
    v4 = v3;
    v5 = v1;
    v6 = v2;
  }

  else
  {
    v5 = sel_performSelector_withObject_;
    v4 = v3;
    v6 = v1;
  }

  return [v4 v5];
}

- (UISystemDefaultTextInputAssistantItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end