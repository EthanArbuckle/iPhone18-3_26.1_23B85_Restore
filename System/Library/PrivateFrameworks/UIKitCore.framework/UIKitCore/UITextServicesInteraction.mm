@interface UITextServicesInteraction
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (void)_addShortcut:(id)a3;
- (void)_beginSessionWithType:(int64_t)a3 sender:(id)a4;
- (void)_define:(id)a3;
- (void)_share:(id)a3;
- (void)_translate:(id)a3;
- (void)finishSetup;
@end

@implementation UITextServicesInteraction

- (void)finishSetup
{
  v3 = [(UITextInteraction *)self _textInput];
  v4 = [_UITextServicesResponderProxy _proxyWithResponder:v3];
  [(UITextServicesInteraction *)self setResponderProxy:v4];

  v5 = [(UITextServicesInteraction *)self responderProxy];
  [v5 setDelegate:self];
}

- (void)_beginSessionWithType:(int64_t)a3 sender:(id)a4
{
  v6 = a4;
  if (a3 > 7)
  {
    if (a3 == 32)
    {
      v7 = v6;
      [(UITextServicesInteraction *)self _translate:v6];
      goto LABEL_11;
    }

    if (a3 != 16)
    {
      if (a3 != 8)
      {
        goto LABEL_12;
      }

      v7 = v6;
      [(UITextServicesInteraction *)self _share:v6];
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (a3 == 2)
  {
LABEL_9:
    v7 = v6;
    [(UITextServicesInteraction *)self _define:v6];
    goto LABEL_11;
  }

  if (a3 != 4)
  {
    goto LABEL_12;
  }

  v7 = v6;
  [(UITextServicesInteraction *)self _addShortcut:v6];
LABEL_11:
  v6 = v7;
LABEL_12:
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v5 = [(UITextInteraction *)self _textInput:a3];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v5 isSecureTextEntry] & 1) == 0)
  {
    v7 = [_UITextServiceSessionContext selectedTextRangeForTextInput:v5];
    if (sel__share_ == a3 || sel_share_ == a3)
    {
      if (qword_1ED49A3E0 != -1)
      {
        dispatch_once(&qword_1ED49A3E0, &__block_literal_global_604);
      }

      v9 = [v5 textInRange:v7];
      v10 = [v9 stringByTrimmingCharactersInSet:_MergedGlobals_3_20];

      if (![v10 length])
      {
        goto LABEL_34;
      }

      v11 = [v5 textInputView];
      v6 = [v11 _canShowTextServiceForType:8];
    }

    else
    {
      if (sel__define_ == a3)
      {
        v12 = [v5 textInputView];
        v10 = v12;
        v13 = 2;
      }

      else
      {
        if (sel__translate_ != a3 && sel_translate_ != a3)
        {
          if (sel__addShortcut_ != a3 && sel_addShortcut_ != a3)
          {
            if (sel_showWritingTools_ == a3)
            {
              v10 = [v5 textInputView];
              v6 = [v10 _shouldDisplayWritingToolsCalloutBarItem];
LABEL_35:

              goto LABEL_36;
            }

LABEL_27:
            v6 = 0;
LABEL_36:

            goto LABEL_37;
          }

          v14 = [_UITextServiceSession textServiceSessionForType:4];
          v15 = [v14 isDisplaying];

          if (v15 & 1) != 0 || ([v7 isEmpty])
          {
            goto LABEL_27;
          }

          v10 = [v5 textInputView];
          if ([v10 _canShowTextServiceForType:4] && TIEnabledInputModesAllowOneToManyShortcuts())
          {
            v11 = [v5 textInRange:v7];
            if (![v11 _containsCJScripts] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v10, "_inPopover") & 1) != 0)
            {
              v6 = 0;
            }

            else
            {
              v17 = +[UIDevice currentDevice];
              v18 = [v17 userInterfaceIdiom];

              if ((v18 & 0xFFFFFFFFFFFFFFFBLL) == 1)
              {
                v19 = [v10 window];
                v20 = [v19 _isTextEffectsWindow];

                v6 = v20 ^ 1;
              }

              else
              {
                v6 = 1;
              }
            }

            goto LABEL_24;
          }

LABEL_34:
          v6 = 0;
          goto LABEL_35;
        }

        v12 = [v5 textInputView];
        v10 = v12;
        v13 = 32;
      }

      if (![v12 _canShowTextServiceForType:v13])
      {
        goto LABEL_34;
      }

      v11 = [v5 textInRange:v7];
      v6 = [v11 length] != 0;
    }

LABEL_24:

    goto LABEL_35;
  }

  v6 = 0;
LABEL_37:

  return v6 & 1;
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

- (void)_share:(id)a3
{
  v4 = [(UITextInteraction *)self _textInput];
  v5 = +[UIDevice currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if ((v6 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(UITextServicesInteraction *)self _removeShareController];
  }

  v7 = [_UITextServiceSessionContext sessionContextForType:8 withTextInput:v4];
  v8 = [(UITextInteraction *)self view];
  v9 = [v8 _showServiceForType:8 withContext:v7];
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

- (void)_addShortcut:(id)a3
{
  v4 = a3;
  v5 = [(UITextInteraction *)self _textInput];
  v6 = [(UITextInteraction *)self assistantDelegate];
  v7 = +[UIDevice currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(UITextServicesInteraction *)self _removeShortcutController];
  }

  v9 = [_UITextServiceSessionContext sessionContextForType:4 withTextInput:v5];
  v10 = [(UITextInteraction *)self view];
  v11 = [v10 _showServiceForType:4 withContext:v9];
  learnSession = self->_learnSession;
  self->_learnSession = v11;

  [v5 resignFirstResponder];
  objc_initWeak(&location, self);
  v13 = self->_learnSession;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42__UITextServicesInteraction__addShortcut___block_invoke;
  v15[3] = &unk_1E7125400;
  objc_copyWeak(&v17, &location);
  v14 = v6;
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

- (void)_define:(id)a3
{
  v5 = [(UITextInteraction *)self _textInput];
  if (self->_lookupSession)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UITextServicesInteraction.m" lineNumber:274 description:@"Shouldn't have a lookup session"];
  }

  v6 = [_UITextServiceSessionContext sessionContextForType:16 withTextInput:v5];
  v7 = [(UITextInteraction *)self view];
  v8 = [v7 _showServiceForType:16 withContext:v6];
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

- (void)_translate:(id)a3
{
  v5 = [(UITextInteraction *)self _textInput];
  if (self->_translateSession)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"UITextServicesInteraction.m" lineNumber:286 description:@"Shouldn't have a translate session"];
  }

  v6 = [_UITextServiceSessionContext sessionContextForType:32 withTextInput:v5];
  v7 = [(UITextInteraction *)self view];
  v8 = [v7 _showServiceForType:32 withContext:v6];
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