@interface UITextServicesInteraction
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (void)_addShortcut:(id)shortcut;
- (void)_beginSessionWithType:(int64_t)type sender:(id)sender;
- (void)_define:(id)_define;
- (void)_share:(id)_share;
- (void)_translate:(id)_translate;
- (void)finishSetup;
@end

@implementation UITextServicesInteraction

- (void)finishSetup
{
  _textInput = [(UITextInteraction *)self _textInput];
  v4 = [_UITextServicesResponderProxy _proxyWithResponder:_textInput];
  [(UITextServicesInteraction *)self setResponderProxy:v4];

  responderProxy = [(UITextServicesInteraction *)self responderProxy];
  [responderProxy setDelegate:self];
}

- (void)_beginSessionWithType:(int64_t)type sender:(id)sender
{
  senderCopy = sender;
  if (type > 7)
  {
    if (type == 32)
    {
      v7 = senderCopy;
      [(UITextServicesInteraction *)self _translate:senderCopy];
      goto LABEL_11;
    }

    if (type != 16)
    {
      if (type != 8)
      {
        goto LABEL_12;
      }

      v7 = senderCopy;
      [(UITextServicesInteraction *)self _share:senderCopy];
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (type == 2)
  {
LABEL_9:
    v7 = senderCopy;
    [(UITextServicesInteraction *)self _define:senderCopy];
    goto LABEL_11;
  }

  if (type != 4)
  {
    goto LABEL_12;
  }

  v7 = senderCopy;
  [(UITextServicesInteraction *)self _addShortcut:senderCopy];
LABEL_11:
  senderCopy = v7;
LABEL_12:
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v5 = [(UITextInteraction *)self _textInput:action];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 isSecureTextEntry] & 1) == 0)
  {
    v7 = [_UITextServiceSessionContext selectedTextRangeForTextInput:v5];
    if (sel__share_ == action || sel_share_ == action)
    {
      if (qword_1ED49A3E0 != -1)
      {
        dispatch_once(&qword_1ED49A3E0, &__block_literal_global_604);
      }

      v9 = [v5 textInRange:v7];
      textInputView3 = [v9 stringByTrimmingCharactersInSet:_MergedGlobals_3_20];

      if (![textInputView3 length])
      {
        goto LABEL_34;
      }

      textInputView = [v5 textInputView];
      _shouldDisplayWritingToolsCalloutBarItem = [textInputView _canShowTextServiceForType:8];
    }

    else
    {
      if (sel__define_ == action)
      {
        textInputView2 = [v5 textInputView];
        textInputView3 = textInputView2;
        v13 = 2;
      }

      else
      {
        if (sel__translate_ != action && sel_translate_ != action)
        {
          if (sel__addShortcut_ != action && sel_addShortcut_ != action)
          {
            if (sel_showWritingTools_ == action)
            {
              textInputView3 = [v5 textInputView];
              _shouldDisplayWritingToolsCalloutBarItem = [textInputView3 _shouldDisplayWritingToolsCalloutBarItem];
LABEL_35:

              goto LABEL_36;
            }

LABEL_27:
            _shouldDisplayWritingToolsCalloutBarItem = 0;
LABEL_36:

            goto LABEL_37;
          }

          v14 = [_UITextServiceSession textServiceSessionForType:4];
          isDisplaying = [v14 isDisplaying];

          if (isDisplaying & 1) != 0 || ([v7 isEmpty])
          {
            goto LABEL_27;
          }

          textInputView3 = [v5 textInputView];
          if ([textInputView3 _canShowTextServiceForType:4] && TIEnabledInputModesAllowOneToManyShortcuts())
          {
            textInputView = [v5 textInRange:v7];
            if (![textInputView _containsCJScripts] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(textInputView3, "_inPopover") & 1) != 0)
            {
              _shouldDisplayWritingToolsCalloutBarItem = 0;
            }

            else
            {
              v17 = +[UIDevice currentDevice];
              userInterfaceIdiom = [v17 userInterfaceIdiom];

              if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
              {
                window = [textInputView3 window];
                _isTextEffectsWindow = [window _isTextEffectsWindow];

                _shouldDisplayWritingToolsCalloutBarItem = _isTextEffectsWindow ^ 1;
              }

              else
              {
                _shouldDisplayWritingToolsCalloutBarItem = 1;
              }
            }

            goto LABEL_24;
          }

LABEL_34:
          _shouldDisplayWritingToolsCalloutBarItem = 0;
          goto LABEL_35;
        }

        textInputView2 = [v5 textInputView];
        textInputView3 = textInputView2;
        v13 = 32;
      }

      if (![textInputView2 _canShowTextServiceForType:v13])
      {
        goto LABEL_34;
      }

      textInputView = [v5 textInRange:v7];
      _shouldDisplayWritingToolsCalloutBarItem = [textInputView length] != 0;
    }

LABEL_24:

    goto LABEL_35;
  }

  _shouldDisplayWritingToolsCalloutBarItem = 0;
LABEL_37:

  return _shouldDisplayWritingToolsCalloutBarItem & 1;
}

void __57__UITextServicesInteraction_canPerformAction_withSender___block_invoke()
{
  v0 = [MEMORY[0x1E696AD48] whitespaceAndNewlineCharacterSet];
  v1 = [MEMORY[0x1E696AB08] controlCharacterSet];
  [v0 formUnionWithCharacterSet:v1];

  v5 = -4;
  v2 = [MEMORY[0x1E696AEC0] stringWithCharacters:&v5 length:1];
  [v0 addCharactersInString:v2];
  v3 = [v0 copy];
  v4 = _MergedGlobals_3_20;
  _MergedGlobals_3_20 = v3;
}

- (void)_share:(id)_share
{
  _textInput = [(UITextInteraction *)self _textInput];
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(UITextServicesInteraction *)self _removeShareController];
  }

  v7 = [_UITextServiceSessionContext sessionContextForType:8 withTextInput:_textInput];
  view = [(UITextInteraction *)self view];
  v9 = [view _showServiceForType:8 withContext:v7];
  shareSession = self->_shareSession;
  self->_shareSession = v9;

  v11 = self->_shareSession;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__UITextServicesInteraction__share___block_invoke;
  v12[3] = &unk_1E71253D8;
  v12[4] = self;
  [(_UITextServiceSession *)v11 setDismissedHandler:v12];
}

void __36__UITextServicesInteraction__share___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 128);
  *(v1 + 128) = 0;
}

- (void)_addShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  _textInput = [(UITextInteraction *)self _textInput];
  assistantDelegate = [(UITextInteraction *)self assistantDelegate];
  v7 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v7 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(UITextServicesInteraction *)self _removeShortcutController];
  }

  v9 = [_UITextServiceSessionContext sessionContextForType:4 withTextInput:_textInput];
  view = [(UITextInteraction *)self view];
  v11 = [view _showServiceForType:4 withContext:v9];
  learnSession = self->_learnSession;
  self->_learnSession = v11;

  [_textInput resignFirstResponder];
  objc_initWeak(&location, self);
  v13 = self->_learnSession;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__UITextServicesInteraction__addShortcut___block_invoke;
  v15[3] = &unk_1E7125400;
  objc_copyWeak(&v17, &location);
  v14 = assistantDelegate;
  v16 = v14;
  [(_UITextServiceSession *)v13 setDismissedHandler:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __42__UITextServicesInteraction__addShortcut___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[15];
    WeakRetained[15] = 0;
    v7 = WeakRetained;

    v4 = +[UIDevice currentDevice];
    v5 = [v4 userInterfaceIdiom];

    WeakRetained = v7;
    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      v6 = [*(a1 + 32) activeSelection];
      [v6 clearSelection];

      [*(a1 + 32) setNeedsSelectionDisplayUpdate];
      WeakRetained = v7;
    }
  }
}

- (void)_define:(id)_define
{
  _textInput = [(UITextInteraction *)self _textInput];
  if (self->_lookupSession)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextServicesInteraction.m" lineNumber:274 description:@"Shouldn't have a lookup session"];
  }

  v6 = [_UITextServiceSessionContext sessionContextForType:16 withTextInput:_textInput];
  view = [(UITextInteraction *)self view];
  v8 = [view _showServiceForType:16 withContext:v6];
  lookupSession = self->_lookupSession;
  self->_lookupSession = v8;

  v10 = self->_lookupSession;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__UITextServicesInteraction__define___block_invoke;
  v12[3] = &unk_1E71253D8;
  v12[4] = self;
  [(_UITextServiceSession *)v10 setDismissedHandler:v12];
}

void __37__UITextServicesInteraction__define___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 136);
  *(v1 + 136) = 0;
}

- (void)_translate:(id)_translate
{
  _textInput = [(UITextInteraction *)self _textInput];
  if (self->_translateSession)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UITextServicesInteraction.m" lineNumber:286 description:@"Shouldn't have a translate session"];
  }

  v6 = [_UITextServiceSessionContext sessionContextForType:32 withTextInput:_textInput];
  view = [(UITextInteraction *)self view];
  v8 = [view _showServiceForType:32 withContext:v6];
  translateSession = self->_translateSession;
  self->_translateSession = v8;

  v10 = self->_translateSession;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__UITextServicesInteraction__translate___block_invoke;
  v12[3] = &unk_1E71253D8;
  v12[4] = self;
  [(_UITextServiceSession *)v10 setDismissedHandler:v12];
}

void __40__UITextServicesInteraction__translate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 144);
  *(v1 + 144) = 0;
}

@end