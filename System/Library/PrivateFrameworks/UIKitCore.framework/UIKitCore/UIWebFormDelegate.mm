@interface UIWebFormDelegate
- ($EB17FD479511CBE7DD20DA057CBA61A2)suggestionsForString:(id)a3 inputIndex:(unsigned int)a4;
- (BOOL)formWasEdited;
- (BOOL)hasCurrentSuggestions;
- (UIWebFormDelegate)initWithWebBrowserView:(id)a3;
- (void)_clearEditedFormsInFrame:(id)a3;
- (void)_didEditFormElement:(id)a3 inFrame:(id)a4;
- (void)acceptedAutoFillWord:(id)a3;
- (void)dealloc;
- (void)didFocusTextField:(id)a3 inFrame:(id)a4;
- (void)frame:(id)a3 sourceFrame:(id)a4 willSubmitForm:(id)a5 withValues:(id)a6 submissionListener:(id)a7;
- (void)textDidChangeInTextArea:(id)a3 inFrame:(id)a4;
- (void)textDidChangeInTextField:(id)a3 inFrame:(id)a4;
- (void)textFieldDidBeginEditing:(id)a3 inFrame:(id)a4;
- (void)textFieldDidEndEditing:(id)a3 inFrame:(id)a4;
- (void)willSendSubmitEventToForm:(id)a3 inFrame:(id)a4 withValues:(id)a5;
@end

@implementation UIWebFormDelegate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIWebFormDelegate;
  [(UIWebFormDelegate *)&v3 dealloc];
}

- (void)frame:(id)a3 sourceFrame:(id)a4 willSubmitForm:(id)a5 withValues:(id)a6 submissionListener:(id)a7
{
  if ([(UIWebBrowserView *)self->_webBrowserView autoFillDelegate])
  {
    v13 = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
    v14 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:a3];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__UIWebFormDelegate_frame_sourceFrame_willSubmitForm_withValues_submissionListener___block_invoke;
    v15[3] = &unk_1E70F5CA0;
    v15[4] = a7;
    [(UIWebAutoFillDelegate *)v13 webBrowserView:v14 willSubmitForm:a5 toFrame:a3 fromFrame:a4 withValues:a6 submissionHandler:v15];
  }

  else
  {

    [a7 continue];
  }
}

- (void)textDidChangeInTextArea:(id)a3 inFrame:(id)a4
{
  if (![(UIWebFormDelegate *)self _shouldIgnoreFormTextChangesInFrame:a4])
  {
    [(UIWebFormDelegate *)self _didEditFormElement:a3 inFrame:a4];
  }

  v7 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:a4];

  [v7 formDelegateTextDidChange];
}

- (void)textDidChangeInTextField:(id)a3 inFrame:(id)a4
{
  if (![(UIWebFormDelegate *)self _shouldIgnoreFormTextChangesInFrame:a4])
  {
    [(UIWebFormDelegate *)self _didEditFormElement:a3 inFrame:a4];
    v7 = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(UIWebAutoFillDelegate *)v7 webBrowserView:self->_webBrowserView textDidChangeInTextField:a3 inFrame:a4];
    }
  }

  v8 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:a4];

  [v8 formDelegateTextDidChange];
}

- (void)textFieldDidBeginEditing:(id)a3 inFrame:(id)a4
{
  v6 = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
  v7 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:a4];

  [(UIWebAutoFillDelegate *)v6 webBrowserView:v7 didBeginEditingTextField:a3 inFrame:a4];
}

- (void)textFieldDidEndEditing:(id)a3 inFrame:(id)a4
{
  v6 = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
  v7 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:a4];

  [(UIWebAutoFillDelegate *)v6 webBrowserView:v7 didEndEditingTextField:a3 inFrame:a4];
}

- (void)didFocusTextField:(id)a3 inFrame:(id)a4
{
  v7 = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
  webBrowserView = self->_webBrowserView;

  [(UIWebAutoFillDelegate *)v7 webBrowserView:webBrowserView didFocusTextField:a3 inFrame:a4];
}

- (void)willSendSubmitEventToForm:(id)a3 inFrame:(id)a4 withValues:(id)a5
{
  [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
    v10 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:a4];

    [(UIWebAutoFillDelegate *)v9 webBrowserView:v10 willSendSubmitEventToForm:a3 inFrame:a4 withValues:a5];
  }
}

- (UIWebFormDelegate)initWithWebBrowserView:(id)a3
{
  v7.receiver = self;
  v7.super_class = UIWebFormDelegate;
  v4 = [(UIWebFormDelegate *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(_UIWebFormDelegateEditedFormsMap);
    v4->_webBrowserView = a3;
    v4->_editedForms = v5;
  }

  return v4;
}

- (BOOL)formWasEdited
{
  v2 = [-[_UIWebFormDelegateEditedFormsMap allValues](self->_editedForms "allValues")];
  v3 = [v2 nextObject];
  if (v3)
  {
    while (1)
    {
      v4 = [v3 objectEnumerator];
      v5 = [v4 nextObject];
      if (v5)
      {
        break;
      }

LABEL_12:
      v3 = [v2 nextObject];
      if (!v3)
      {
        return v3;
      }
    }

    v6 = v5;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (([v6 _isEdited] & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![v6 _isEdited])
        {
          goto LABEL_11;
        }
      }

      if ([v6 inDocument] && !objc_msgSend(v6, "isHidden"))
      {
        LOBYTE(v3) = 1;
        return v3;
      }

LABEL_11:
      v6 = [v4 nextObject];
      if (!v6)
      {
        goto LABEL_12;
      }
    }
  }

  return v3;
}

- ($EB17FD479511CBE7DD20DA057CBA61A2)suggestionsForString:(id)a3 inputIndex:(unsigned int)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [(UIWebAutoFillDelegate *)[(UIWebBrowserView *)self->_webBrowserView autoFillDelegate] webBrowserView:self->_webBrowserView suggestionsForString:a3];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count") + 1}];
  [v7 addObject:a3];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [v7 addObject:{objc_msgSend(MEMORY[0x1E69D95F0], "candidateWithCandidate:forInput:", *(*(&v14 + 1) + 8 * v11++), a3)}];
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = a4;
  v13 = v7;
  result.var1 = v12;
  result.var0 = v13;
  return result;
}

- (BOOL)hasCurrentSuggestions
{
  v3 = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
  webBrowserView = self->_webBrowserView;

  return [(UIWebAutoFillDelegate *)v3 hasCurrentSuggestionsForWebBrowserView:webBrowserView];
}

- (void)acceptedAutoFillWord:(id)a3
{
  v5 = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
  webBrowserView = self->_webBrowserView;

  [(UIWebAutoFillDelegate *)v5 webBrowserView:webBrowserView acceptedAutoFillWord:a3];
}

- (void)_didEditFormElement:(id)a3 inFrame:(id)a4
{
  v7 = [(UIWebFormDelegate *)self formWasEdited];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v8 = [a3 form];
    if (v8)
    {
      v9 = v8;
      if ([objc_msgSend(v8 "action")] || objc_msgSend(objc_msgSend(v9, "method"), "length"))
      {
        v10 = [(_UIWebFormDelegateEditedFormsMap *)self->_editedForms objectForKey:a4];
        if (!v10)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [(_UIWebFormDelegateEditedFormsMap *)self->_editedForms setObject:v10 forKey:a4];
        }

        if (([v10 containsObject:a3] & 1) == 0)
        {
          [v10 addObject:a3];
        }
      }
    }
  }

  if (v7 != -[UIWebFormDelegate formWasEdited](self, "formWasEdited") && [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
  {
    webBrowserView = self->_webBrowserView;
    v12 = [a4 webView];

    [(UIWebBrowserView *)webBrowserView _webViewFormEditedStatusHasChanged:v12];
  }
}

- (void)_clearEditedFormsInFrame:(id)a3
{
  v5 = [(UIWebFormDelegate *)self formWasEdited];
  v6 = [(_UIWebFormDelegateEditedFormsMap *)self->_editedForms objectForKey:a3];
  editedForms = self->_editedForms;
  if (v6)
  {
    [(_UIWebFormDelegateEditedFormsMap *)editedForms removeObjectForKey:a3];
  }

  else
  {
    [(_UIWebFormDelegateEditedFormsMap *)editedForms removeAllObjects];
  }

  if (v5 != -[UIWebFormDelegate formWasEdited](self, "formWasEdited") && [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
  {
    webBrowserView = self->_webBrowserView;
    v9 = [a3 webView];

    [(UIWebBrowserView *)webBrowserView _webViewFormEditedStatusHasChanged:v9];
  }
}

@end