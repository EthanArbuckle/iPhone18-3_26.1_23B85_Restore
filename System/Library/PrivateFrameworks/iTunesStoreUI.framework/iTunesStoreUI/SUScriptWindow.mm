@interface SUScriptWindow
+ (id)webScriptNameForKeyName:(id)name;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)dismissWindowsWithOptions:(id)options;
+ (void)initialize;
- (CGSize)_overlaySize;
- (NSNumber)height;
- (NSNumber)shadowOpacity;
- (NSNumber)shadowRadius;
- (NSNumber)width;
- (SUScriptViewController)backViewController;
- (SUScriptViewController)frontViewController;
- (SUScriptViewController)windowParentViewController;
- (SUScriptWindow)init;
- (SUScriptWindow)initWithContext:(id)context;
- (SUScriptWindowContext)context;
- (WebScriptObject)maskFunction;
- (WebScriptObject)shouldDismissFunction;
- (id)_backgroundViewController:(BOOL)controller;
- (id)_newOverlayTransitionWithOptions:(id)options;
- (id)_overlayViewController:(BOOL)controller;
- (id)canSwipeToDismiss;
- (id)scriptAttributeKeys;
- (void)_overlayDidDismissNotification:(id)notification;
- (void)_overlayDidFlipNotification:(id)notification;
- (void)_overlayDidShowNotification:(id)notification;
- (void)_registerForOverlayNotifications;
- (void)dealloc;
- (void)dismiss:(id)dismiss;
- (void)flip:(id)flip;
- (void)setBackViewController:(id)controller;
- (void)setCanSwipeToDismiss:(id)dismiss;
- (void)setFrontViewController:(id)controller;
- (void)setHeight:(id)height;
- (void)setMaskFunction:(id)function;
- (void)setShadowOpacity:(id)opacity;
- (void)setShadowRadius:(id)radius;
- (void)setShouldDismissFunction:(id)function;
- (void)setWidth:(id)width;
- (void)show:(id)show;
@end

@implementation SUScriptWindow

- (SUScriptWindow)init
{
  v5.receiver = self;
  v5.super_class = SUScriptWindow;
  v2 = [(SUScriptObject *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_canSwipeToDismiss = 1;
    v2->_context = objc_alloc_init(SUScriptWindowContext);
    [(SUScriptWindow *)v3 _registerForOverlayNotifications];
  }

  return v3;
}

- (SUScriptWindow)initWithContext:(id)context
{
  v7.receiver = self;
  v7.super_class = SUScriptWindow;
  v4 = [(SUScriptObject *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_canSwipeToDismiss = 1;
    v4->_context = context;
    [(SUScriptWindow *)v5 _registerForOverlayNotifications];
  }

  return v5;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SUOverlayDidDismissNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUOverlayDidFlipNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUOverlayDidShowNotification" object:0];

  [(SUScriptFunction *)self->_shouldDismissFunction setScriptObject:0];
  [(SUScriptFunction *)self->_shouldDismissFunction setThisObject:0];

  v4.receiver = self;
  v4.super_class = SUScriptWindow;
  [(SUScriptObject *)&v4 dealloc];
}

+ (void)dismissWindowsWithOptions:(id)options
{
  v3 = [options safeValueForKey:@"animate"];
  if (objc_opt_respondsToSelector())
  {
    [v3 BOOLValue];
  }

  WebThreadRunOnMainThread();
}

uint64_t __44__SUScriptWindow_dismissWindowsWithOptions___block_invoke(uint64_t a1)
{
  v2 = [+[SUClientDispatch tabBarController](SUClientDispatch "tabBarController")];
  v3 = *(a1 + 32);

  return [v2 dismissAnimated:v3];
}

- (SUScriptWindowContext)context
{
  [(SUScriptObject *)self lock];
  v3 = self->_context;
  [(SUScriptObject *)self unlock];
  return v3;
}

- (void)dismiss:(id)dismiss
{
  v3 = [(SUScriptWindow *)self _copySafeTransitionOptionsFromOptions:dismiss];
  WebThreadRunOnMainThread();
}

uint64_t __26__SUScriptWindow_dismiss___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _backgroundViewController:0];
  v3 = [v2 viewControllerForScriptWindowContext:{objc_msgSend(*(a1 + 32), "context")}];
  if (v3)
  {
    v4 = v3;
    v5 = [*(a1 + 40) objectForKey:@"animate"];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 BOOLValue];
    }

    else
    {
      v6 = 0;
    }

    return [v2 dismissOverlay:v4 animated:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E69D4938] sharedConfig];
    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    result = os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v13 = 138412290;
      v14 = objc_opt_class();
      LODWORD(v12) = 12;
      result = _os_log_send_and_compose_impl();
      if (result)
      {
        v11 = result;
        [MEMORY[0x1E696AEC0] stringWithCString:result encoding:{4, &v13, v12}];
        free(v11);
        return SSFileLog();
      }
    }
  }

  return result;
}

- (void)flip:(id)flip
{
  v3 = [(SUScriptWindow *)self _copySafeTransitionOptionsFromOptions:flip];
  WebThreadRunOnMainThread();
}

void __23__SUScriptWindow_flip___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _overlayViewController:0];
  if (v2)
  {
    v3 = v2;
    v10 = [*(a1 + 32) _newOverlayTransitionWithOptions:*(a1 + 40)];
    [v3 flipWithTransition:?];
  }

  else
  {
    v4 = [MEMORY[0x1E69D4938] sharedConfig];
    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v11 = 138412290;
      v12 = objc_opt_class();
      LODWORD(v9) = 12;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v11, v9}];
        free(v8);
        SSFileLog();
      }
    }
  }
}

- (void)show:(id)show
{
  v3 = [(SUScriptWindow *)self _copySafeTransitionOptionsFromOptions:show];
  WebThreadRunOnMainThread();
}

void __23__SUScriptWindow_show___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) context];
  v3 = [*(a1 + 32) _backgroundViewController:1];
  if ([v3 viewControllerForScriptWindowContext:v2])
  {
    v4 = [MEMORY[0x1E69D4938] sharedConfig];
    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v6 &= 2u;
    }

    if (v6)
    {
LABEL_8:
      v36 = 138412290;
      v37 = objc_opt_class();
      LODWORD(v34) = 12;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v36, v34}];
        free(v8);
        SSFileLog();
      }
    }
  }

  else
  {
    v9 = *(a1 + 32);
    if (*(v9 + 72) || *(v9 + 96))
    {
      if (v3)
      {
        v10 = objc_alloc_init(SUOverlayViewController);
        [(SUOverlayViewController *)v10 setCanSwipeToDismiss:*(*(a1 + 32) + 80)];
        -[SUViewController setClientInterface:](v10, "setClientInterface:", [v3 clientInterface]);
        [(SUOverlayViewController *)v10 setScriptWindowContext:v2];
        -[SUOverlayViewController setBackViewController:](v10, "setBackViewController:", [*(*(a1 + 32) + 72) nativeViewController]);
        -[SUOverlayViewController setFrontViewController:](v10, "setFrontViewController:", [*(*(a1 + 32) + 96) nativeViewController]);
        [*(a1 + 32) lock];
        v11 = *(a1 + 32);
        if (*(v11 + 112))
        {
          v12 = [[SUCanvasMaskProvider alloc] initWithFunction:*(*(a1 + 32) + 112)];
          v11 = *(a1 + 32);
        }

        else
        {
          v12 = 0;
        }

        [(SUOverlayViewController *)v10 setShouldDismissFunction:*(v11 + 136)];
        [*(a1 + 32) unlock];
        [(SUOverlayViewController *)v10 setMaskProvider:v12];

        v13 = *(a1 + 32);
        v14 = *(v13 + 120);
        if (v14)
        {
          [v14 floatValue];
          [(SUOverlayViewController *)v10 setShadowOpacity:v15];
          v13 = *(a1 + 32);
        }

        v16 = *(v13 + 128);
        if (v16)
        {
          [v16 floatValue];
          [(SUOverlayViewController *)v10 setShadowRadius:v17];
        }

        [objc_opt_class() defaultOverlaySize];
        v20 = v19;
        v21 = *(a1 + 32);
        v22 = *(v21 + 104);
        if (v22)
        {
          [v22 floatValue];
          v24 = v23;
          v21 = *(a1 + 32);
        }

        else
        {
          v24 = v18;
        }

        v25 = *(v21 + 144);
        if (v25)
        {
          [v25 floatValue];
          v20 = v26;
        }

        [(SUOverlayViewController *)v10 setOverlaySize:v20, v24];
        v27 = [*(a1 + 32) _newOverlayTransitionWithOptions:*(a1 + 40)];
        v28 = [v27 sourceElement];
        if ([v28 webView])
        {
          v29 = objc_alloc_init(SUScrollViewScroller);
          v30 = [objc_msgSend(v28 "webView")];
          [(SUScrollViewScroller *)v29 attachToScrollView:v30];
          [v28 frame];
          [v30 convertRect:0 fromView:?];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __23__SUScriptWindow_show___block_invoke_16;
          v35[3] = &unk_1E8165198;
          v35[4] = v3;
          v35[5] = v10;
          v35[6] = v27;
          v35[7] = v29;
          [(SUScrollViewScroller *)v29 scrollFrameToVisible:1 animated:v35 completionBlock:?];
        }

        else
        {
          [v3 presentOverlay:v10 withTransition:v27];
        }
      }
    }

    else
    {
      v31 = [MEMORY[0x1E69D4938] sharedConfig];
      v32 = [v31 shouldLog];
      if ([v31 shouldLogToDisk])
      {
        v33 = v32 | 2;
      }

      else
      {
        v33 = v32;
      }

      if (!os_log_type_enabled([v31 OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v33 &= 2u;
      }

      if (v33)
      {
        goto LABEL_8;
      }
    }
  }
}

uint64_t __23__SUScriptWindow_show___block_invoke_16(uint64_t a1)
{
  [*(a1 + 32) presentOverlay:*(a1 + 40) withTransition:*(a1 + 48)];
  v2 = *(a1 + 56);

  return [v2 detachFromScrollView];
}

- (SUScriptViewController)backViewController
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __36__SUScriptWindow_backViewController__block_invoke;
  v10 = &unk_1E81650B0;
  selfCopy = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __36__SUScriptWindow_backViewController__block_invoke, &unk_1E81650B0, selfCopy, &v13], (v3 = v14[5]) != 0))
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;
  _Block_object_dispose(&v13, 8);
  return v5;
}

id __36__SUScriptWindow_backViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _overlayViewController:0];
  if (v2)
  {
    result = [objc_msgSend(v2 "backViewController")];
  }

  else
  {
    result = *(*(a1 + 32) + 72);
  }

  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)canSwipeToDismiss
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  WebThreadRunOnMainThread();
  if (*(v6 + 24))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  _Block_object_dispose(&v5, 8);
  return v3;
}

void *__35__SUScriptWindow_canSwipeToDismiss__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _overlayViewController:0];
  if (result)
  {
    result = [result canSwipeToDismiss];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 80);
  }

  return result;
}

- (SUScriptViewController)frontViewController
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __37__SUScriptWindow_frontViewController__block_invoke;
  v10 = &unk_1E81650B0;
  selfCopy = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __37__SUScriptWindow_frontViewController__block_invoke, &unk_1E81650B0, selfCopy, &v13], (v3 = v14[5]) != 0))
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;
  _Block_object_dispose(&v13, 8);
  return v5;
}

id __37__SUScriptWindow_frontViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _overlayViewController:0];
  if (v2)
  {
    result = [objc_msgSend(v2 "frontViewController")];
  }

  else
  {
    result = *(*(a1 + 32) + 96);
  }

  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSNumber)height
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = &unk_1C23567C9;
  v11 = *MEMORY[0x1E695F060];
  v5 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v8[5];
  *&v2 = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:{v2, v5, 3221225472, __24__SUScriptWindow_height__block_invoke, &unk_1E81650D8, self, &v7}];
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __24__SUScriptWindow_height__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _overlaySize];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (WebScriptObject)maskFunction
{
  [(SUScriptObject *)self lock];
  scriptObject = [(SUScriptFunction *)self->_maskFunction scriptObject];
  [(SUScriptObject *)self unlock];
  return scriptObject;
}

- (void)setBackViewController:(id)controller
{
  if (controller && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }

  else
  {
    WebThreadRunOnMainThread();
  }
}

id __40__SUScriptWindow_setBackViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _overlayViewController:0];
  if (v2)
  {
    v3 = v2;
    result = [*(a1 + 40) nativeViewController];
    if (*(a1 + 40))
    {
      v5 = result == 0;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {

      return [v3 setBackViewController:result];
    }
  }

  else
  {

    result = *(a1 + 40);
    *(*(a1 + 32) + 72) = result;
  }

  return result;
}

- (void)setCanSwipeToDismiss:(id)dismiss
{
  if (objc_opt_respondsToSelector())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

uint64_t __39__SUScriptWindow_setCanSwipeToDismiss___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _overlayViewController:0];
  *(*(a1 + 32) + 80) = [*(a1 + 40) BOOLValue];
  v3 = *(*(a1 + 32) + 80);

  return [v2 setCanSwipeToDismiss:v3];
}

- (void)setHeight:(id)height
{
  if (objc_opt_respondsToSelector())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

uint64_t __28__SUScriptWindow_setHeight___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _overlayViewController:0];
  if (v2)
  {
    v3 = v2;
    [v2 overlaySize];
    v5 = v4;
    [*(a1 + 40) floatValue];

    return [v3 setOverlaySize:{v5, v6}];
  }

  else
  {

    v8 = objc_alloc(MEMORY[0x1E696AD98]);
    [*(a1 + 40) floatValue];
    result = [v8 initWithFloat:?];
    *(*(a1 + 32) + 104) = result;
  }

  return result;
}

- (void)setMaskFunction:(id)function
{
  functionCopy = function;
  if (function && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = MEMORY[0x1E69E2F88];

    [v6 throwException:@"Invalid argument"];
  }

  else
  {
    [(SUScriptObject *)self lock];

    if (functionCopy)
    {
      functionCopy = [(SUScriptFunction *)[SUScriptCanvasFunction alloc] initWithScriptObject:functionCopy];
    }

    self->_maskFunction = functionCopy;
    +[SUOverlayViewController defaultOverlaySize];

    v5 = self->_maskFunction;
    [(SUScriptObject *)self unlock];
    WebThreadRunOnMainThread();
  }
}

void __34__SUScriptWindow_setMaskFunction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _overlayViewController:0];
  if (v2)
  {
    v3 = v2;
    v4 = [[SUCanvasMaskProvider alloc] initWithFunction:*(a1 + 40)];
    [v3 setMaskProvider:v4];
  }
}

- (void)setFrontViewController:(id)controller
{
  if (controller && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }

  else
  {
    WebThreadRunOnMainThread();
  }
}

id __41__SUScriptWindow_setFrontViewController___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _overlayViewController:0];
  if (v2)
  {
    v3 = v2;
    result = [*(a1 + 40) nativeViewController];
    if (*(a1 + 40))
    {
      v5 = result == 0;
    }

    else
    {
      v5 = 0;
    }

    if (!v5)
    {

      return [v3 setFrontViewController:result];
    }
  }

  else
  {

    result = *(a1 + 40);
    *(*(a1 + 32) + 96) = result;
  }

  return result;
}

- (void)setShadowOpacity:(id)opacity
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [opacity floatValue];
    WebThreadRunOnMainThread();
  }

  else
  {
    v4 = MEMORY[0x1E69E2F88];

    [v4 throwException:@"Invalid argument"];
  }
}

uint64_t __35__SUScriptWindow_setShadowOpacity___block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) _overlayViewController:{0), "setShadowOpacity:", *(a1 + 40)}];

  v2 = objc_alloc(MEMORY[0x1E696AD98]);
  v3 = *(a1 + 40);
  *&v3 = v3;
  result = [v2 initWithFloat:v3];
  *(*(a1 + 32) + 120) = result;
  return result;
}

- (void)setShadowRadius:(id)radius
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [radius floatValue];
    WebThreadRunOnMainThread();
  }

  else
  {
    v4 = MEMORY[0x1E69E2F88];

    [v4 throwException:@"Invalid argument"];
  }
}

uint64_t __34__SUScriptWindow_setShadowRadius___block_invoke(uint64_t a1)
{
  [objc_msgSend(*(a1 + 32) _overlayViewController:{0), "setShadowRadius:", *(a1 + 40)}];

  v2 = objc_alloc(MEMORY[0x1E696AD98]);
  v3 = *(a1 + 40);
  *&v3 = v3;
  result = [v2 initWithFloat:v3];
  *(*(a1 + 32) + 128) = result;
  return result;
}

- (void)setShouldDismissFunction:(id)function
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), !function) || (isKindOfClass & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v5 = MEMORY[0x1E69E2F88];

    [v5 throwException:@"Invalid argument"];
  }
}

uint64_t __43__SUScriptWindow_setShouldDismissFunction___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 136);
  if (!v2)
  {
    *(*(a1 + 32) + 136) = objc_alloc_init(SUScriptFunction);
    [*(*(a1 + 32) + 136) setThisObject:?];
    v2 = *(*(a1 + 32) + 136);
  }

  [v2 setScriptObject:*(a1 + 40)];
  v3 = [*(a1 + 32) _overlayViewController:0];
  v4 = *(*(a1 + 32) + 136);

  return [v3 setShouldDismissFunction:v4];
}

- (void)setWidth:(id)width
{
  if (objc_opt_respondsToSelector())
  {
    WebThreadRunOnMainThread();
  }

  else
  {
    v3 = MEMORY[0x1E69E2F88];

    [v3 throwException:@"Invalid argument"];
  }
}

uint64_t __27__SUScriptWindow_setWidth___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _overlayViewController:0];
  if (v2)
  {
    v3 = v2;
    [v2 overlaySize];
    v5 = v4;
    [*(a1 + 40) floatValue];
    v7 = v6;

    return [v3 setOverlaySize:{v7, v5}];
  }

  else
  {

    v9 = objc_alloc(MEMORY[0x1E696AD98]);
    [*(a1 + 40) floatValue];
    result = [v9 initWithFloat:?];
    *(*(a1 + 32) + 144) = result;
  }

  return result;
}

- (NSNumber)shadowOpacity
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x3FE570A3E0000000;
  v5 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v8[3];
  *&v2 = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:{v2, v5, 3221225472, __31__SUScriptWindow_shadowOpacity__block_invoke, &unk_1E81650B0, self, &v7}];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void *__31__SUScriptWindow_shadowOpacity__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _overlayViewController:0];
  if (v2)
  {
    result = [v2 shadowOpacity];
  }

  else
  {
    result = *(*(a1 + 32) + 120);
    if (!result)
    {
      return result;
    }

    result = [result floatValue];
    v4 = v5;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (NSNumber)shadowRadius
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x402E000000000000;
  v5 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v8[3];
  *&v2 = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:{v2, v5, 3221225472, __30__SUScriptWindow_shadowRadius__block_invoke, &unk_1E81650B0, self, &v7}];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void *__30__SUScriptWindow_shadowRadius__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _overlayViewController:0];
  if (v2)
  {
    result = [v2 shadowRadius];
  }

  else
  {
    result = *(*(a1 + 32) + 128);
    if (!result)
    {
      return result;
    }

    result = [result floatValue];
    v4 = v5;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  return result;
}

- (WebScriptObject)shouldDismissFunction
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__11;
  v12 = __Block_byref_object_dispose__11;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v9[5];
  if (v2)
  {
    null = v2;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v4 = null;
  _Block_object_dispose(&v8, 8);
  return v4;
}

id __39__SUScriptWindow_shouldDismissFunction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _overlayViewController:0];
  if (v2)
  {
    v3 = [v2 shouldDismissFunction];
  }

  else
  {
    v3 = *(*(a1 + 32) + 136);
  }

  result = [v3 scriptObject];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSNumber)width
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3010000000;
  v10 = &unk_1C23567C9;
  v11 = *MEMORY[0x1E695F060];
  v5 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  v2 = v8[4];
  *&v2 = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithFloat:{v2, v5, 3221225472, __23__SUScriptWindow_width__block_invoke, &unk_1E81650D8, self, &v7}];
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t __23__SUScriptWindow_width__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _overlaySize];
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (SUScriptViewController)windowParentViewController
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __44__SUScriptWindow_windowParentViewController__block_invoke;
  v10 = &unk_1E81650B0;
  selfCopy = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __44__SUScriptWindow_windowParentViewController__block_invoke, &unk_1E81650B0, selfCopy, &v13], (v3 = v14[5]) != 0))
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v5 = null;
  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __44__SUScriptWindow_windowParentViewController__block_invoke(uint64_t a1)
{
  v2 = [objc_msgSend(*(a1 + 32) _backgroundViewController:{0), "parentViewController"}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 transientViewController];
    if (!v3)
    {
      v3 = [v2 selectedNavigationController];
    }
  }

  else
  {
    v3 = v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v3 topViewController];
  }

  result = [v3 copyScriptViewController];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_overlayDidDismissNotification:(id)notification
{
  v4 = [objc_msgSend(objc_msgSend(notification "object")];
  if (v4 == [(SUScriptWindowContext *)[(SUScriptWindow *)self context] tag])
  {
    [(SUScriptObject *)self dispatchEvent:0 forName:@"dismiss"];

    [(SUScriptObject *)self setVisible:0];
  }
}

- (void)_overlayDidFlipNotification:(id)notification
{
  v4 = [objc_msgSend(objc_msgSend(notification "object")];
  if (v4 == [(SUScriptWindowContext *)[(SUScriptWindow *)self context] tag])
  {

    [(SUScriptObject *)self dispatchEvent:0 forName:@"flip"];
  }
}

- (void)_overlayDidShowNotification:(id)notification
{
  v4 = [objc_msgSend(objc_msgSend(notification "object")];
  if (v4 == [(SUScriptWindowContext *)[(SUScriptWindow *)self context] tag])
  {
    [(SUScriptObject *)self dispatchEvent:0 forName:@"show"];

    [(SUScriptObject *)self setVisible:1];
  }
}

- (CGSize)_overlaySize
{
  +[SUOverlayViewController defaultOverlaySize];
  v4 = v3;
  v6 = v5;
  v7 = [(SUScriptWindow *)self _overlayViewController:0];
  if (v7)
  {
    [v7 overlaySize];
    v4 = v8;
    v6 = v9;
  }

  else
  {
    height = self->_height;
    if (height)
    {
      [height floatValue];
      v6 = v11;
    }

    width = self->_width;
    if (width)
    {
      [width floatValue];
      v4 = v13;
    }
  }

  v14 = v4;
  v15 = v6;
  result.height = v15;
  result.width = v14;
  return result;
}

- (id)_backgroundViewController:(BOOL)controller
{
  controllerCopy = controller;
  v5 = +[SUClientDispatch overlayBackgroundViewController];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = !controllerCopy;
  }

  if (!v6)
  {
    v7 = objc_alloc_init(SUOverlayBackgroundViewController);
    [(SUViewController *)v7 setClientInterface:[(SUScriptObject *)self clientInterface]];
    if ([SUClientDispatch presentOverlayBackgroundViewController:v7])
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    v8 = v7;
  }

  return v5;
}

- (id)_newOverlayTransitionWithOptions:(id)options
{
  v5 = objc_alloc_init(SUOverlayTransition);
  v6 = [options objectForKey:@"duration"];
  if (objc_opt_respondsToSelector())
  {
    [v6 doubleValue];
    [(SUOverlayTransition *)v5 setDuration:?];
  }

  v7 = [options objectForKey:@"srcElement"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUOverlayTransition *)v5 setSourceElement:[(SUScriptObject *)self DOMElementWithElement:v7]];
  }

  v8 = [options objectForKey:@"transition"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    -[SUOverlayTransition setType:](v5, "setType:", [objc_opt_class() transitionTypeFromString:v8]);
  }

  return v5;
}

- (id)_overlayViewController:(BOOL)controller
{
  v4 = [(SUScriptWindow *)self _backgroundViewController:controller];
  context = [(SUScriptWindow *)self context];

  return [v4 viewControllerForScriptWindowContext:context];
}

- (void)_registerForOverlayNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__overlayDidDismissNotification_ name:@"SUOverlayDidDismissNotification" object:0];
  [defaultCenter addObserver:self selector:sel__overlayDidFlipNotification_ name:@"SUOverlayDidFlipNotification" object:0];

  [defaultCenter addObserver:self selector:sel__overlayDidShowNotification_ name:@"SUOverlayDidShowNotification" object:0];
}

+ (id)webScriptNameForKeyName:(id)name
{
  result = [__KeyMapping_18 objectForKey:?];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptWindow;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, name);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  result = SUWebScriptNameForSelector2(selector, &__SelectorMapping_13, 3);
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___SUScriptWindow;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, selector);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptWindow;
  scriptAttributeKeys = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](scriptAttributeKeys, "addObjectsFromArray:", [__KeyMapping_18 allKeys]);
  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    __SelectorMapping_13 = sel_dismiss_;
    unk_1EBF3AAC0 = @"dismiss";
    qword_1EBF3AAC8 = sel_flip_;
    unk_1EBF3AAD0 = @"flip";
    qword_1EBF3AAD8 = sel_show_;
    unk_1EBF3AAE0 = @"show";
    __KeyMapping_18 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"backViewController", @"canSwipeToDismiss", @"canSwipeToDismiss", @"frontViewController", @"frontViewController", @"height", @"height", @"maskFunction", @"maskFunction", @"parentViewController", @"windowParentViewController", @"shadowOpacity", @"shadowOpacity", @"shadowRadius", @"shadowRadius", @"shouldDismissFunction", @"shouldDismissFunction", @"style", @"style", @"width", @"width", 0}];
  }
}

@end