@interface UIWebFormDelegate
- ($EB17FD479511CBE7DD20DA057CBA61A2)suggestionsForString:(id)string inputIndex:(unsigned int)index;
- (BOOL)formWasEdited;
- (BOOL)hasCurrentSuggestions;
- (UIWebFormDelegate)initWithWebBrowserView:(id)view;
- (void)_clearEditedFormsInFrame:(id)frame;
- (void)_didEditFormElement:(id)element inFrame:(id)frame;
- (void)acceptedAutoFillWord:(id)word;
- (void)dealloc;
- (void)didFocusTextField:(id)field inFrame:(id)frame;
- (void)frame:(id)frame sourceFrame:(id)sourceFrame willSubmitForm:(id)form withValues:(id)values submissionListener:(id)listener;
- (void)textDidChangeInTextArea:(id)area inFrame:(id)frame;
- (void)textDidChangeInTextField:(id)field inFrame:(id)frame;
- (void)textFieldDidBeginEditing:(id)editing inFrame:(id)frame;
- (void)textFieldDidEndEditing:(id)editing inFrame:(id)frame;
- (void)willSendSubmitEventToForm:(id)form inFrame:(id)frame withValues:(id)values;
@end

@implementation UIWebFormDelegate

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = UIWebFormDelegate;
  [(UIWebFormDelegate *)&v3 dealloc];
}

- (void)frame:(id)frame sourceFrame:(id)sourceFrame willSubmitForm:(id)form withValues:(id)values submissionListener:(id)listener
{
  if ([(UIWebBrowserView *)self->_webBrowserView autoFillDelegate])
  {
    autoFillDelegate = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
    v14 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:frame];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __84__UIWebFormDelegate_frame_sourceFrame_willSubmitForm_withValues_submissionListener___block_invoke;
    v15[3] = &unk_1E70F5CA0;
    v15[4] = listener;
    [(UIWebAutoFillDelegate *)autoFillDelegate webBrowserView:v14 willSubmitForm:form toFrame:frame fromFrame:sourceFrame withValues:values submissionHandler:v15];
  }

  else
  {

    [listener continue];
  }
}

- (void)textDidChangeInTextArea:(id)area inFrame:(id)frame
{
  if (![(UIWebFormDelegate *)self _shouldIgnoreFormTextChangesInFrame:frame])
  {
    [(UIWebFormDelegate *)self _didEditFormElement:area inFrame:frame];
  }

  v7 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:frame];

  [v7 formDelegateTextDidChange];
}

- (void)textDidChangeInTextField:(id)field inFrame:(id)frame
{
  if (![(UIWebFormDelegate *)self _shouldIgnoreFormTextChangesInFrame:frame])
  {
    [(UIWebFormDelegate *)self _didEditFormElement:field inFrame:frame];
    autoFillDelegate = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(UIWebAutoFillDelegate *)autoFillDelegate webBrowserView:self->_webBrowserView textDidChangeInTextField:field inFrame:frame];
    }
  }

  v8 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:frame];

  [v8 formDelegateTextDidChange];
}

- (void)textFieldDidBeginEditing:(id)editing inFrame:(id)frame
{
  autoFillDelegate = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
  v7 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:frame];

  [(UIWebAutoFillDelegate *)autoFillDelegate webBrowserView:v7 didBeginEditingTextField:editing inFrame:frame];
}

- (void)textFieldDidEndEditing:(id)editing inFrame:(id)frame
{
  autoFillDelegate = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
  v7 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:frame];

  [(UIWebAutoFillDelegate *)autoFillDelegate webBrowserView:v7 didEndEditingTextField:editing inFrame:frame];
}

- (void)didFocusTextField:(id)field inFrame:(id)frame
{
  autoFillDelegate = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
  webBrowserView = self->_webBrowserView;

  [(UIWebAutoFillDelegate *)autoFillDelegate webBrowserView:webBrowserView didFocusTextField:field inFrame:frame];
}

- (void)willSendSubmitEventToForm:(id)form inFrame:(id)frame withValues:(id)values
{
  [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
  if (objc_opt_respondsToSelector())
  {
    autoFillDelegate = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
    v10 = [UIWebBrowserView getUIWebBrowserViewForWebFrame:frame];

    [(UIWebAutoFillDelegate *)autoFillDelegate webBrowserView:v10 willSendSubmitEventToForm:form inFrame:frame withValues:values];
  }
}

- (UIWebFormDelegate)initWithWebBrowserView:(id)view
{
  v7.receiver = self;
  v7.super_class = UIWebFormDelegate;
  v4 = [(UIWebFormDelegate *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(_UIWebFormDelegateEditedFormsMap);
    v4->_webBrowserView = view;
    v4->_editedForms = v5;
  }

  return v4;
}

- (BOOL)formWasEdited
{
  v2 = [-[_UIWebFormDelegateEditedFormsMap allValues](self->_editedForms "allValues")];
  nextObject = [v2 nextObject];
  if (nextObject)
  {
    while (1)
    {
      objectEnumerator = [nextObject objectEnumerator];
      nextObject2 = [objectEnumerator nextObject];
      if (nextObject2)
      {
        break;
      }

LABEL_12:
      nextObject = [v2 nextObject];
      if (!nextObject)
      {
        return nextObject;
      }
    }

    nextObject3 = nextObject2;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (([nextObject3 _isEdited] & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ![nextObject3 _isEdited])
        {
          goto LABEL_11;
        }
      }

      if ([nextObject3 inDocument] && !objc_msgSend(nextObject3, "isHidden"))
      {
        LOBYTE(nextObject) = 1;
        return nextObject;
      }

LABEL_11:
      nextObject3 = [objectEnumerator nextObject];
      if (!nextObject3)
      {
        goto LABEL_12;
      }
    }
  }

  return nextObject;
}

- ($EB17FD479511CBE7DD20DA057CBA61A2)suggestionsForString:(id)string inputIndex:(unsigned int)index
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [(UIWebAutoFillDelegate *)[(UIWebBrowserView *)self->_webBrowserView autoFillDelegate] webBrowserView:self->_webBrowserView suggestionsForString:string];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count") + 1}];
  [v7 addObject:string];
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

        [v7 addObject:{objc_msgSend(MEMORY[0x1E69D95F0], "candidateWithCandidate:forInput:", *(*(&v14 + 1) + 8 * v11++), string)}];
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  indexCopy = index;
  v13 = v7;
  result.var1 = indexCopy;
  result.var0 = v13;
  return result;
}

- (BOOL)hasCurrentSuggestions
{
  autoFillDelegate = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
  webBrowserView = self->_webBrowserView;

  return [(UIWebAutoFillDelegate *)autoFillDelegate hasCurrentSuggestionsForWebBrowserView:webBrowserView];
}

- (void)acceptedAutoFillWord:(id)word
{
  autoFillDelegate = [(UIWebBrowserView *)self->_webBrowserView autoFillDelegate];
  webBrowserView = self->_webBrowserView;

  [(UIWebAutoFillDelegate *)autoFillDelegate webBrowserView:webBrowserView acceptedAutoFillWord:word];
}

- (void)_didEditFormElement:(id)element inFrame:(id)frame
{
  formWasEdited = [(UIWebFormDelegate *)self formWasEdited];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    form = [element form];
    if (form)
    {
      v9 = form;
      if ([objc_msgSend(form "action")] || objc_msgSend(objc_msgSend(v9, "method"), "length"))
      {
        v10 = [(_UIWebFormDelegateEditedFormsMap *)self->_editedForms objectForKey:frame];
        if (!v10)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          [(_UIWebFormDelegateEditedFormsMap *)self->_editedForms setObject:v10 forKey:frame];
        }

        if (([v10 containsObject:element] & 1) == 0)
        {
          [v10 addObject:element];
        }
      }
    }
  }

  if (formWasEdited != -[UIWebFormDelegate formWasEdited](self, "formWasEdited") && [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
  {
    webBrowserView = self->_webBrowserView;
    webView = [frame webView];

    [(UIWebBrowserView *)webBrowserView _webViewFormEditedStatusHasChanged:webView];
  }
}

- (void)_clearEditedFormsInFrame:(id)frame
{
  formWasEdited = [(UIWebFormDelegate *)self formWasEdited];
  v6 = [(_UIWebFormDelegateEditedFormsMap *)self->_editedForms objectForKey:frame];
  editedForms = self->_editedForms;
  if (v6)
  {
    [(_UIWebFormDelegateEditedFormsMap *)editedForms removeObjectForKey:frame];
  }

  else
  {
    [(_UIWebFormDelegateEditedFormsMap *)editedForms removeAllObjects];
  }

  if (formWasEdited != -[UIWebFormDelegate formWasEdited](self, "formWasEdited") && [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
  {
    webBrowserView = self->_webBrowserView;
    webView = [frame webView];

    [(UIWebBrowserView *)webBrowserView _webViewFormEditedStatusHasChanged:webView];
  }
}

@end