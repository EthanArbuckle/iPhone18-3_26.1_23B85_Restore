@interface UISystemDefaultTextInputAssistantItem
- (BOOL)canPerformSystemButtonActionForStyle:(int64_t)style;
- (SEL)_responderSelectorForSystemButtonStyle:(int64_t)style;
- (UISystemDefaultTextInputAssistantItem)init;
- (UISystemDefaultTextInputAssistantItemDelegate)delegate;
- (void)_updateIsSystemItem;
- (void)analyticsDispatchWithActionStyle:(int64_t)style;
- (void)assistantPaste:(id)paste forEvent:(id)event;
- (void)performSystemButtonActionForStyle:(int64_t)style;
- (void)setLeadingBarButtonGroups:(id)groups;
- (void)setTrailingBarButtonGroups:(id)groups;
@end

@implementation UISystemDefaultTextInputAssistantItem

- (void)_updateIsSystemItem
{
  defaultSystemLeadingBarButtonGroups = [(UISystemDefaultTextInputAssistantItem *)self defaultSystemLeadingBarButtonGroups];
  leadingBarButtonGroups = [(UITextInputAssistantItem *)self leadingBarButtonGroups];
  if (_areBarButtonGroupsBasicallyEqualToSystemDefaults(defaultSystemLeadingBarButtonGroups, leadingBarButtonGroups))
  {
    defaultSystemTrailingBarButtonGroups = [(UISystemDefaultTextInputAssistantItem *)self defaultSystemTrailingBarButtonGroups];
    trailingBarButtonGroups = [(UITextInputAssistantItem *)self trailingBarButtonGroups];
    self->_systemItem = _areBarButtonGroupsBasicallyEqualToSystemDefaults(defaultSystemTrailingBarButtonGroups, trailingBarButtonGroups);
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

- (void)setLeadingBarButtonGroups:(id)groups
{
  v4.receiver = self;
  v4.super_class = UISystemDefaultTextInputAssistantItem;
  [(UITextInputAssistantItem *)&v4 setLeadingBarButtonGroups:groups];
  [(UISystemDefaultTextInputAssistantItem *)self _updateIsSystemItem];
}

- (void)setTrailingBarButtonGroups:(id)groups
{
  v4.receiver = self;
  v4.super_class = UISystemDefaultTextInputAssistantItem;
  [(UITextInputAssistantItem *)&v4 setTrailingBarButtonGroups:groups];
  [(UISystemDefaultTextInputAssistantItem *)self _updateIsSystemItem];
}

- (void)assistantPaste:(id)paste forEvent:(id)event
{
  _authenticationMessage = [event _authenticationMessage];
  [UIPasteboard _attemptAuthenticationWithMessage:_authenticationMessage];

  [(UISystemDefaultTextInputAssistantItem *)self performSystemButtonActionForStyle:2];
}

- (SEL)_responderSelectorForSystemButtonStyle:(int64_t)style
{
  result = 0;
  if (style > 4)
  {
    switch(style)
    {
      case 5:
        return sel_toggleBoldface_;
      case 6:
        return sel_toggleItalics_;
      case 7:
        return sel_toggleUnderline_;
    }
  }

  else if (style)
  {
    if (style == 1)
    {
      return sel_copy_;
    }

    else if (style == 2)
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

- (BOOL)canPerformSystemButtonActionForStyle:(int64_t)style
{
  v5 = +[UIKeyboardImpl activeInstance];
  delegateAsResponder = [v5 delegateAsResponder];
  _responderForEditing = [delegateAsResponder _responderForEditing];

  v8 = [(UISystemDefaultTextInputAssistantItem *)self _responderSelectorForSystemButtonStyle:style];
  if (v8)
  {
    v9 = [_responderForEditing canPerformAction:v8 withSender:0];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (void)analyticsDispatchWithActionStyle:(int64_t)style
{
  if (style <= 4)
  {
    [UIKBAnalyticsDispatcher analyticsDispatchEventTextEditingOperation:*off_1E71255F0[style] trigger:@"UCB"];
  }
}

- (void)performSystemButtonActionForStyle:(int64_t)style
{
  v5 = +[UIKeyboardImpl activeInstance];
  v6 = v5;
  if (style <= 13)
  {
    if (style > 11)
    {
      if (style != 12)
      {
        v10 = +[UIDictationController sharedInstance];
        [v10 setReasonType:12];

        _dictationReplacementAction = +[UIDictationController sharedInstance];
        [_dictationReplacementAction stopDictation];
LABEL_38:

        goto LABEL_39;
      }

      v18 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
      responder = [v18 responder];
      inputAssistantItem = [responder inputAssistantItem];
      _dictationReplacementAction = [inputAssistantItem _dictationReplacementAction];

      if (_dictationReplacementAction)
      {
        sender = [_dictationReplacementAction sender];
        [_dictationReplacementAction performWithSender:sender target:0];
      }

      else if (+[UIDictationController isRunning])
      {
        v24 = +[UIDictationController sharedInstance];
        [v24 setReasonType:12];

        sender = +[UIDictationController sharedInstance];
        [sender stopDictation];
      }

      else
      {
        sender = +[UIKeyboardInputModeController sharedInputModeController];
        v25 = [UIDictationInputModeOptions dictationInputModeOptionsWithInvocationSource:@"UIDictationInputModeInvocationSourceUCBBar"];
        [sender switchToDictationInputModeWithOptions:v25];
      }
    }

    else
    {
      if (style != 9)
      {
        if (style == 11)
        {
          [v5 presentEmojiPopoverViaTrigger:@"ucb" completion:0];
          goto LABEL_39;
        }

        goto LABEL_28;
      }

      _dictationReplacementAction = _getResponderForEditing();
      trailingBarButtonGroups = [(UITextInputAssistantItem *)self trailingBarButtonGroups];
      lastObject = [trailingBarButtonGroups lastObject];
      _items = [lastObject _items];
      sender = [_items firstObject];

      if (_dictationReplacementAction && (objc_opt_respondsToSelector() & 1) != 0 && sender)
      {
        [_dictationReplacementAction performSelector:sel__showTextFormattingOptions_ withObject:sender];
      }
    }

    goto LABEL_38;
  }

  if (style > 17)
  {
    switch(style)
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

  if (style == 14)
  {
    if (![v5 isMinimized])
    {
      goto LABEL_39;
    }

    v21 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [v21 setHideSystemInputAssistantView:1];

    _dictationReplacementAction = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    [_dictationReplacementAction minimize];
    goto LABEL_38;
  }

  if (style != 15)
  {
LABEL_28:
    if (![(UISystemDefaultTextInputAssistantItem *)self canPerformSystemButtonActionForStyle:style])
    {
      goto LABEL_39;
    }

    v22 = _getResponderForEditing();
    _dictationReplacementAction = v22;
    if (style == 4)
    {
      undoManager = [v22 undoManager];
      [undoManager redo];
    }

    else
    {
      if (style != 3)
      {
        v34 = [(UISystemDefaultTextInputAssistantItem *)self _responderSelectorForSystemButtonStyle:style];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __75__UISystemDefaultTextInputAssistantItem_performSystemButtonActionForStyle___block_invoke;
        v37[3] = &unk_1E70F36D0;
        selfCopy = self;
        v40 = v34;
        v38 = _dictationReplacementAction;
        [UIPasteboard _performAsDataOwnerForAction:v34 responder:v38 block:v37];
        v35 = UIKeyboardGetCurrentInputMode();
        v36 = TIStatisticGetKeyForInputMode();
        TIStatisticScalarIncrement();

        goto LABEL_51;
      }

      undoManager = [v22 undoManager];
      [undoManager undo];
    }

LABEL_51:
    [UIUndoGestureInteraction presentProductivityGestureTutorialInlineWithCompletion:0];
    goto LABEL_38;
  }

  delegateAsResponder = [v5 delegateAsResponder];
  _suppressSoftwareKeyboard = [delegateAsResponder _suppressSoftwareKeyboard];

  if (_suppressSoftwareKeyboard)
  {
    _dictationReplacementAction = [v6 delegateAsResponder];
    [_dictationReplacementAction _setSuppressSoftwareKeyboard:0];
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
  feedbackGenerator = [v27 feedbackGenerator];
  [feedbackGenerator actionOccurred:v26];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v30 = WeakRetained;
    v31 = objc_loadWeakRetained(&self->_delegate);
    v32 = objc_opt_respondsToSelector();

    if (v32)
    {
      v33 = objc_loadWeakRetained(&self->_delegate);
      [v33 didPerformSystemButtonActionForStyle:style];
    }
  }

  [(UISystemDefaultTextInputAssistantItem *)self analyticsDispatchWithActionStyle:style];
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