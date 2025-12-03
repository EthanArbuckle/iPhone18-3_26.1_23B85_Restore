@interface SUScriptDialog
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSNumber)cancelButtonIndex;
- (NSNumber)destructiveButtonIndex;
- (NSString)body;
- (NSString)title;
- (id)_nativeDialog;
- (id)buttons;
- (id)scriptAttributeKeys;
- (id)textFields;
- (void)_logSheetWarnings;
- (void)dealloc;
- (void)setBody:(id)body;
- (void)setButtons:(id)buttons;
- (void)setCancelButtonIndex:(id)index;
- (void)setDestructiveButtonIndex:(id)index;
- (void)setTextFields:(id)fields;
- (void)setTitle:(id)title;
- (void)showFromDOMElement:(id)element;
- (void)showSheetInPopOver:(id)over;
@end

@implementation SUScriptDialog

- (void)dealloc
{
  self->_body = 0;

  self->_buttons = 0;
  self->_cancelButtonIndex = 0;

  self->_destructiveButtonIndex = 0;
  self->_textFields = 0;

  self->_title = 0;
  v3.receiver = self;
  v3.super_class = SUScriptDialog;
  [(SUScriptObject *)&v3 dealloc];
}

uint64_t __25__SUScriptDialog_dismiss__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _nativeDialog];

  return [v1 dismiss];
}

uint64_t __22__SUScriptDialog_show__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _nativeDialog];

  return [v1 show];
}

uint64_t __27__SUScriptDialog_showSheet__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _nativeDialog];

  return [v1 showSheet];
}

- (void)showSheetInPopOver:(id)over
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptDialog *)self _logSheetWarnings];
    WebThreadRunOnMainThread();
  }

  else
  {
    v4 = MEMORY[0x1E69E2F88];

    [v4 throwException:@"Invalid argument"];
  }
}

uint64_t __37__SUScriptDialog_showSheetInPopOver___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) activeViewController];
  if (result)
  {
    v3 = result;
    v4 = [*(a1 + 40) _nativeDialog];

    return [v4 showSheetInViewController:v3];
  }

  return result;
}

- (void)showFromDOMElement:(id)element
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUScriptDialog *)self _logSheetWarnings];
    WebThreadRunOnMainThread();
  }

  else
  {
    v4 = MEMORY[0x1E69E2F88];

    [v4 throwException:@"Invalid argument"];
  }
}

uint64_t __37__SUScriptDialog_showFromDOMElement___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) DOMElementWithElement:*(a1 + 40)];
  v3 = [v2 webView];
  [v2 frame];
  [v3 convertRect:0 fromView:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [*(a1 + 32) _nativeDialog];
  v13 = [v2 webView];

  return [v12 showFromRect:v13 inView:{v5, v7, v9, v11}];
}

- (NSString)body
{
  [(SUScriptObject *)self lock];
  v3 = self->_body;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (id)buttons
{
  [(SUScriptObject *)self lock];
  v3 = self->_buttons;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (NSNumber)cancelButtonIndex
{
  [(SUScriptObject *)self lock];
  v3 = self->_cancelButtonIndex;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (NSNumber)destructiveButtonIndex
{
  [(SUScriptObject *)self lock];
  v3 = self->_destructiveButtonIndex;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (void)setBody:(id)body
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bodyCopy = 0;
LABEL_3:
    [(SUScriptObject *)self lock];
    body = self->_body;
    if (body != bodyCopy)
    {

      self->_body = bodyCopy;
    }

    [(SUScriptObject *)self unlock];
    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  bodyCopy = 0;
  if (!body)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  bodyCopy = body;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  v8 = MEMORY[0x1E69E2F88];

  [v8 throwException:@"Invalid argument"];
}

- (void)setButtons:(id)buttons
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = 0;
    if (!buttons || (isKindOfClass & 1) != 0)
    {
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [buttons copyArrayValueWithValidator:__SUButtonValidator context:0];
      if (v10)
      {
        goto LABEL_3;
      }

      v8 = MEMORY[0x1E69E2F88];
      v9 = @"Buttons array contains invalid iTunesButton objects";
    }

    else
    {
      v8 = MEMORY[0x1E69E2F88];
      v9 = @"Invalid argument";
    }

    [v8 throwException:v9];
    v6 = 0;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_3:
  [(SUScriptObject *)self lock];
  buttons = self->_buttons;
  if (buttons != v10)
  {

    self->_buttons = v10;
  }

  [(SUScriptObject *)self unlock];
  v6 = v10;
LABEL_6:
}

- (void)setCancelButtonIndex:(id)index
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    indexCopy2 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  indexCopy2 = 0;
  if (!index || (isKindOfClass & 1) != 0)
  {
LABEL_3:
    [(SUScriptObject *)self lock];

    self->_cancelButtonIndex = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(indexCopy2, "intValue")}];

    [(SUScriptObject *)self unlock];
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    indexCopy2 = index;
    goto LABEL_3;
  }

  indexCopy2 = index;
  if (objc_opt_respondsToSelector())
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setDestructiveButtonIndex:(id)index
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    indexCopy2 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  indexCopy2 = 0;
  if (!index || (isKindOfClass & 1) != 0)
  {
LABEL_3:
    [(SUScriptObject *)self lock];

    self->_destructiveButtonIndex = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(indexCopy2, "intValue")}];

    [(SUScriptObject *)self unlock];
    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    indexCopy2 = index;
    goto LABEL_3;
  }

  indexCopy2 = index;
  if (objc_opt_respondsToSelector())
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x1E69E2F88];

  [v7 throwException:@"Invalid argument"];
}

- (void)setTextFields:(id)fields
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = 0;
    if (!fields || (isKindOfClass & 1) != 0)
    {
      goto LABEL_3;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [fields copyArrayValueWithValidator:SUISAValidator context:objc_opt_class()];
      if (v10)
      {
        goto LABEL_3;
      }

      v8 = MEMORY[0x1E69E2F88];
      v9 = @"Text fields array contains non-iTunesTextField objects";
    }

    else
    {
      v8 = MEMORY[0x1E69E2F88];
      v9 = @"Invalid argument";
    }

    [v8 throwException:v9];
    v6 = 0;
    goto LABEL_6;
  }

  v10 = 0;
LABEL_3:
  [(SUScriptObject *)self lock];
  textFields = self->_textFields;
  if (textFields != v10)
  {

    self->_textFields = v10;
  }

  [(SUScriptObject *)self unlock];
  v6 = v10;
LABEL_6:
}

- (void)setTitle:(id)title
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    titleCopy = 0;
LABEL_3:
    [(SUScriptObject *)self lock];
    title = self->_title;
    if (title != titleCopy)
    {

      self->_title = titleCopy;
    }

    [(SUScriptObject *)self unlock];
    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  titleCopy = 0;
  if (!title)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  titleCopy = title;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  v8 = MEMORY[0x1E69E2F88];

  [v8 throwException:@"Invalid argument"];
}

- (id)textFields
{
  [(SUScriptObject *)self lock];
  v3 = self->_textFields;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (NSString)title
{
  [(SUScriptObject *)self lock];
  v3 = self->_title;
  [(SUScriptObject *)self unlock];

  return v3;
}

- (void)_logSheetWarnings
{
  v21 = *MEMORY[0x1E69E9840];
  [(SUScriptObject *)self lock];
  if ([self->_textFields count])
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v19 = 138412290;
      v20 = objc_opt_class();
      LODWORD(v18) = 12;
      v16 = &v19;
      v6 = _os_log_send_and_compose_impl();
      if (v6)
      {
        v7 = v6;
        v8 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:{4, &v19, v18}];
        free(v7);
        v16 = v8;
        SSFileLog();
      }
    }
  }

  if ([(NSString *)self->_body length])
  {
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      v11 = shouldLog2 | 2;
    }

    else
    {
      v11 = shouldLog2;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      v12 = objc_opt_class();
      v19 = 138412290;
      v20 = v12;
      LODWORD(v18) = 12;
      v17 = &v19;
      v13 = _os_log_send_and_compose_impl();
      if (v13)
      {
        v14 = v13;
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v19, v18}];
        free(v14);
        v17 = v15;
        SSFileLog();
      }
    }
  }

  [(SUScriptObject *)self unlock];
}

- (id)_nativeDialog
{
  nativeObject = [(SUScriptObject *)self nativeObject];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    nativeObject = objc_alloc_init(SUScriptDialogNativeObject);
    [(SUScriptObject *)self setNativeObject:nativeObject];
  }

  return nativeObject;
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_13 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptDialog;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_10, 5);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptDialog;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptDialog;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_13 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_10 = sel_dismiss;
    unk_1EBF3A9D0 = @"dismiss";
    qword_1EBF3A9D8 = sel_show;
    unk_1EBF3A9E0 = @"show";
    qword_1EBF3A9E8 = sel_showFromDOMElement_;
    unk_1EBF3A9F0 = @"showFromElement";
    qword_1EBF3A9F8 = sel_showSheet;
    unk_1EBF3AA00 = @"showSheet";
    qword_1EBF3AA08 = sel_showSheetInPopOver_;
    unk_1EBF3AA10 = @"showSheetInPopOver";
    __KeyMapping_13 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"body", @"buttons", @"buttons", @"cancelButtonIndex", @"cancelButtonIndex", @"destructiveButtonIndex", @"destructiveButtonIndex", @"textFields", @"textFields", @"title", @"title", 0}];
  }
}

@end