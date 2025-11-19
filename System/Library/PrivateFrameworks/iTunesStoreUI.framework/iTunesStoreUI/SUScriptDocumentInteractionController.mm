@interface SUScriptDocumentInteractionController
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (NSString)UTI;
- (WebScriptObject)cancelFunction;
- (WebScriptObject)openWithFunction;
- (id)_cancelFunction;
- (id)_nativeDocumentInteractionController;
- (id)_nativeObject;
- (id)_openWithFunction;
- (id)scriptAttributeKeys;
- (void)dealloc;
- (void)dismissMenuAnimated:(id)a3;
- (void)setCancelFunction:(id)a3;
- (void)setOpenWithFunction:(id)a3;
- (void)setUTI:(id)a3;
- (void)showOpenWithMenuFromDOMElement:(id)a3;
- (void)showOpenWithMenuFromNavigationItem:(id)a3;
@end

@implementation SUScriptDocumentInteractionController

- (void)dealloc
{
  [(SUScriptFunction *)self->_cancelFunction setThisObject:0];

  [(SUScriptFunction *)self->_openWithFunction setThisObject:0];
  v3.receiver = self;
  v3.super_class = SUScriptDocumentInteractionController;
  [(SUScriptObject *)&v3 dealloc];
}

- (void)dismissMenuAnimated:(id)a3
{
  if (objc_opt_respondsToSelector())
  {
    [a3 BOOLValue];
  }

  WebThreadRunOnMainThread();
}

uint64_t __61__SUScriptDocumentInteractionController_dismissMenuAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nativeDocumentInteractionController];
  v3 = *(a1 + 40);

  return [v2 dismissMenuAnimated:v3];
}

- (void)showOpenWithMenuFromDOMElement:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a3 = 0;
  }

  [MEMORY[0x1E69DC938] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
LABEL_10:
      WebThreadRunOnMainThread();
      return;
    }
  }

  else
  {
    if (!a3)
    {
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_10;
    }
  }

  v4 = MEMORY[0x1E69E2F88];

  [v4 throwException:@"Invalid argument"];
}

uint64_t __72__SUScriptDocumentInteractionController_showOpenWithMenuFromDOMElement___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) DOMElementWithElement:?];
  }

  else
  {
    v2 = 0;
  }

  v3 = [*(a1 + 40) _nativeDocumentInteractionController];
  v4 = [*(a1 + 40) _nativeObject];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__SUScriptDocumentInteractionController_showOpenWithMenuFromDOMElement___block_invoke_2;
  v6[3] = &unk_1E8165578;
  v7 = *(a1 + 48);
  v6[4] = v2;
  v6[5] = v3;
  return [v4 presentUsingBlock:v6];
}

void __72__SUScriptDocumentInteractionController_showOpenWithMenuFromDOMElement___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) webView];
  v3 = v2;
  if (*(a1 + 32) && (*(a1 + 48) & 1) != 0)
  {
    v4 = objc_alloc_init(SUScrollViewScroller);
    v5 = [v3 scrollView];
    [*(a1 + 32) frame];
    [v5 convertRect:0 fromView:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(SUScrollViewScroller *)v4 attachToScrollView:v5];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72__SUScriptDocumentInteractionController_showOpenWithMenuFromDOMElement___block_invoke_3;
    v15[3] = &unk_1E8165198;
    v15[4] = v3;
    v16 = *(a1 + 32);
    v17 = v4;
    [(SUScrollViewScroller *)v4 scrollFrameToVisible:1 animated:v15 completionBlock:v7, v9, v11, v13];
  }

  else
  {
    v14 = *(a1 + 40);
    [v2 bounds];

    [v14 presentOpenInMenuFromRect:v3 inView:1 animated:?];
  }
}

uint64_t __72__SUScriptDocumentInteractionController_showOpenWithMenuFromDOMElement___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) frame];
  [v2 convertRect:0 fromView:?];
  [*(a1 + 48) presentOpenInMenuFromRect:*(a1 + 32) inView:1 animated:?];
  v3 = *(a1 + 56);

  return [v3 detachFromScrollView];
}

- (void)showOpenWithMenuFromNavigationItem:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    a3 = 0;
  }

  [MEMORY[0x1E69DC938] currentDevice];
  if (((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1 || a3) && (objc_msgSend(a3, "conformsToProtocol:", &unk_1F422F898) & 1) == 0)
  {
    v4 = MEMORY[0x1E69E2F88];

    [v4 throwException:@"Invalid argument"];
  }

  else
  {
    WebThreadRunOnMainThread();
  }
}

uint64_t __76__SUScriptDocumentInteractionController_showOpenWithMenuFromNavigationItem___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nativeDocumentInteractionController];
  v3 = [*(a1 + 32) _nativeObject];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__SUScriptDocumentInteractionController_showOpenWithMenuFromNavigationItem___block_invoke_2;
  v6[3] = &unk_1E8164370;
  v4 = *(a1 + 40);
  v6[4] = v2;
  v6[5] = v4;
  return [v3 presentUsingBlock:v6];
}

uint64_t __76__SUScriptDocumentInteractionController_showOpenWithMenuFromNavigationItem___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) buttonItem];

  return [v1 presentOpenInMenuFromBarButtonItem:v2 animated:1];
}

- (WebScriptObject)cancelFunction
{
  [(SUScriptObject *)self lock];
  v3 = [(SUScriptFunction *)self->_cancelFunction scriptObject];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (WebScriptObject)openWithFunction
{
  [(SUScriptObject *)self lock];
  v3 = [(SUScriptFunction *)self->_openWithFunction scriptObject];
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)setCancelFunction:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
LABEL_3:
    [(SUScriptObject *)self lock];
    cancelFunction = self->_cancelFunction;
    if (!cancelFunction)
    {
      v7 = objc_alloc_init(SUScriptFunction);
      self->_cancelFunction = v7;
      [(SUScriptFunction *)v7 setThisObject:self];
      cancelFunction = self->_cancelFunction;
    }

    [(SUScriptFunction *)cancelFunction setScriptObject:v5];

    [(SUScriptObject *)self unlock];
    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!a3)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  v5 = a3;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  v9 = MEMORY[0x1E69E2F88];

  [v9 throwException:@"Invalid argument"];
}

- (void)setOpenWithFunction:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
LABEL_3:
    [(SUScriptObject *)self lock];
    openWithFunction = self->_openWithFunction;
    if (!openWithFunction)
    {
      v7 = objc_alloc_init(SUScriptFunction);
      self->_openWithFunction = v7;
      [(SUScriptFunction *)v7 setThisObject:self];
      openWithFunction = self->_openWithFunction;
    }

    [(SUScriptFunction *)openWithFunction setScriptObject:v5];

    [(SUScriptObject *)self unlock];
    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!a3)
  {
    goto LABEL_3;
  }

  if (isKindOfClass)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  v5 = a3;
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  v9 = MEMORY[0x1E69E2F88];

  [v9 throwException:@"Invalid argument"];
}

- (void)setUTI:(id)a3
{
  if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }

  else
  {
    WebThreadRunOnMainThread();
  }
}

uint64_t __48__SUScriptDocumentInteractionController_setUTI___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nativeDocumentInteractionController];
  v3 = *(a1 + 40);

  return [v2 setUTI:v3];
}

- (NSString)UTI
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3052000000;
  v7 = __Block_byref_object_copy__43;
  v8 = __Block_byref_object_dispose__43;
  v9 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);
  return v2;
}

id __44__SUScriptDocumentInteractionController_UTI__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_nativeDocumentInteractionController")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_cancelFunction
{
  [(SUScriptObject *)self lock];
  v3 = self->_cancelFunction;
  [(SUScriptObject *)self unlock];
  return v3;
}

- (id)_nativeDocumentInteractionController
{
  v2 = [(SUScriptDocumentInteractionController *)self _nativeObject];

  return [v2 object];
}

- (id)_nativeObject
{
  v3 = [(SUScriptObject *)self nativeObject];
  if (![(SUScriptNativeObject *)v3 object])
  {
    v4 = objc_alloc_init(MEMORY[0x1E69CDA18]);
    [v4 setName:&stru_1F41B3660];
    v3 = [(SUScriptNativeObject *)SUScriptDocumentInteractionControllerNativeObject objectWithNativeObject:v4];
    [(SUScriptObject *)self setNativeObject:v3];
    v5 = v4;
  }

  return v3;
}

- (id)_openWithFunction
{
  [(SUScriptObject *)self lock];
  v3 = self->_openWithFunction;
  [(SUScriptObject *)self unlock];
  return v3;
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_56 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptDocumentInteractionController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_41, 3);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptDocumentInteractionController;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptDocumentInteractionController;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_56 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_41 = sel_dismissMenuAnimated_;
    unk_1EBF3B4F0 = @"dismissMenu";
    qword_1EBF3B4F8 = sel_showOpenWithMenuFromDOMElement_;
    unk_1EBF3B500 = @"showOpenWithMenuFromDOMElement";
    qword_1EBF3B508 = sel_showOpenWithMenuFromNavigationItem_;
    unk_1EBF3B510 = @"showOpenWithMenuFromNavigationItem";
    __KeyMapping_56 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"cancelFunction", @"openWithFunction", @"openWithFunction", @"UTI", @"UTI", 0}];
  }
}

@end