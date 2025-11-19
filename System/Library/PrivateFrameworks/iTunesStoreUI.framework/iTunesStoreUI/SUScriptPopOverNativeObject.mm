@interface SUScriptPopOverNativeObject
- (BOOL)_isAffectedByWindowNotification:(id)a3;
- (void)_windowDidRotateNotification:(id)a3;
- (void)_windowWillRotateNotification:(id)a3;
- (void)dealloc;
- (void)destroyNativeObject;
- (void)setupNativeObject;
@end

@implementation SUScriptPopOverNativeObject

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUScriptPopOverNativeObject;
  [(SUScriptPopOverNativeObject *)&v3 dealloc];
}

- (void)destroyNativeObject
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE7D0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE828] object:0];
  v4 = [(SUScriptNativeObject *)self object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 isPopoverVisible])
  {
    [v4 dismissPopoverAnimated:0];
  }

  v5.receiver = self;
  v5.super_class = SUScriptPopOverNativeObject;
  [(SUScriptNativeObject *)&v5 destroyNativeObject];
}

- (void)setupNativeObject
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__windowDidRotateNotification_ name:*MEMORY[0x1E69DE7D0] object:0];
  [v3 addObserver:self selector:sel__windowWillRotateNotification_ name:*MEMORY[0x1E69DE828] object:0];
  v4.receiver = self;
  v4.super_class = SUScriptPopOverNativeObject;
  [(SUScriptNativeObject *)&v4 setupNativeObject];
}

- (void)_windowDidRotateNotification:(id)a3
{
  if (self->_redisplayAfterRotation)
  {
    if (self->_sourceDOMElement)
    {
      v4 = objc_alloc_init(SUScrollViewScroller);
      v5 = [(UIWebView *)[(SUDOMElement *)self->_sourceDOMElement webView] scrollView];
      [(SUDOMElement *)self->_sourceDOMElement frame];
      [(UIScrollView *)v5 convertRect:0 fromView:?];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [(SUScrollViewScroller *)v4 attachToScrollView:v5];
      v14 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __60__SUScriptPopOverNativeObject__windowDidRotateNotification___block_invoke;
      v15[3] = &unk_1E8164370;
      v15[4] = v14;
      v15[5] = v4;
      [(SUScrollViewScroller *)v4 scrollFrameToVisible:1 animated:v15 completionBlock:v7, v9, v11, v13];
    }

    [(SUScriptObject *)[(SUScriptNativeObject *)self scriptObject] _setIgnoresDismiss:0];
    self->_redisplayAfterRotation = 0;
  }
}

uint64_t __60__SUScriptPopOverNativeObject__windowDidRotateNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [v2 object];
  v4 = [v2 sourceDOMElement];
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = v4;
    v7 = [v4 webView];
    [v6 frame];
    [v7 convertRect:0 fromView:?];
    [v3 presentPopoverFromRect:v7 inView:15 permittedArrowDirections:1 animated:?];
  }

  v8 = *(a1 + 40);

  return [v8 detachFromScrollView];
}

- (void)_windowWillRotateNotification:(id)a3
{
  if ([(SUScriptPopOverNativeObject *)self _isAffectedByWindowNotification:a3])
  {
    v4 = [(SUScriptNativeObject *)self object];
    if (self->_sourceDOMElement)
    {
      v5 = v4;
      if ([v4 isPopoverVisible])
      {
        if (![objc_msgSend(v5 "contentViewController")])
        {
          self->_redisplayAfterRotation = 1;
          [(SUScriptObject *)[(SUScriptNativeObject *)self scriptObject] _setIgnoresDismiss:1];

          [v5 dismissPopoverAnimated:0];
        }
      }
    }
  }
}

- (BOOL)_isAffectedByWindowNotification:(id)a3
{
  v4 = [-[SUScriptNativeObject object](self "object")];
  v5 = [v4 isViewLoaded];
  if (v5)
  {
    v6 = [v4 view];
    v7 = [a3 object];

    LOBYTE(v5) = [v6 isDescendantOfView:v7];
  }

  return v5;
}

@end