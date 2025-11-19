@interface SUScriptPopOver
+ (id)webScriptNameForKeyName:(id)a3;
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (BOOL)_isViewControllerVisible;
- (BOOL)isVisible;
- (BOOL)showFromElement:(id)a3;
- (BOOL)showFromNavigationItem:(id)a3;
- (SUScriptPopOver)init;
- (SUScriptViewController)presentingViewController;
- (SUScriptViewController)viewController;
- (UIPopoverController)nativePopoverController;
- (UIViewController)activeViewController;
- (double)contentHeight;
- (double)contentWidth;
- (id)_nativeViewController;
- (id)_popOverController;
- (id)_presentablePopoverController;
- (id)scriptAttributeKeys;
- (int64_t)backgroundStyle;
- (void)_dismissAnimated:(BOOL)a3;
- (void)_setNativeViewController:(id)a3;
- (void)_showAsModalViewController;
- (void)_viewControllerDidDismiss:(id)a3;
- (void)dealloc;
- (void)dismissAnimated:(id)a3;
- (void)setNativePopoverController:(id)a3;
- (void)setViewController:(id)a3;
- (void)tearDownUserInterface;
@end

@implementation SUScriptPopOver

- (SUScriptPopOver)init
{
  v5.receiver = self;
  v5.super_class = SUScriptPopOver;
  v2 = [(SUScriptObject *)&v5 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__overlayWillShowNotification_ name:@"SUOverlayWillShowNotification" object:0];
    [v3 addObserver:v2 selector:sel__viewControllerDidDismiss_ name:@"SUViewControllerDidDisappearNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"SUOverlayWillShowNotification" object:0];
  [v3 removeObserver:self name:@"SUViewControllerDidDisappearNotification" object:0];

  v4.receiver = self;
  v4.super_class = SUScriptPopOver;
  [(SUScriptObject *)&v4 dealloc];
}

- (UIViewController)activeViewController
{
  v2 = [(SUScriptNativeObject *)[(SUScriptObject *)self nativeObject] object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [(UIViewController *)v2 contentViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (UIPopoverController)nativePopoverController
{
  v2 = [(SUScriptNativeObject *)[(SUScriptObject *)self nativeObject] object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (void)setNativePopoverController:(id)a3
{
  v5 = [(SUScriptObject *)self parentViewController];
  v6 = v5;
  if (a3)
  {
    if (v5)
    {
      objc_setAssociatedObject(a3, "SUScriptPopOverPresentingViewController", [MEMORY[0x1E69D4A30] weakReferenceWithObject:v5], 1);
    }

    v7 = [(SUScriptNativeObject *)SUScriptPopOverNativeObject objectWithNativeObject:a3];
  }

  else
  {
    AssociatedObject = objc_getAssociatedObject([(SUScriptNativeObject *)[(SUScriptObject *)self nativeObject] object], "SUScriptPopOverPresentingViewController");
    if ([AssociatedObject object] == v6 || !objc_msgSend(AssociatedObject, "object"))
    {
      objc_setAssociatedObject(0, "SUScriptPopOverPresentingViewController", 0, 1);
    }

    v7 = 0;
  }

  [(SUScriptObject *)self setNativeObject:v7];
}

- (BOOL)isVisible
{
  v2 = [(SUScriptNativeObject *)[(SUScriptObject *)self nativeObject] object];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 isPopoverVisible];
}

- (void)tearDownUserInterface
{
  if ([(SUScriptPopOver *)self isVisible])
  {
    [(SUScriptPopOver *)self _dismissAnimated:0];
  }

  v3.receiver = self;
  v3.super_class = SUScriptPopOver;
  [(SUScriptObject *)&v3 tearDownUserInterface];
}

- (void)dismissAnimated:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 0;
    goto LABEL_3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = 0;
  if (!a3 || (isKindOfClass & 1) != 0 || (v5 = a3, (objc_opt_respondsToSelector() & 1) != 0))
  {
LABEL_3:
    v6 = [(SUScriptObject *)self webThreadMainThreadBatchProxy];
    v7 = [v5 BOOLValue];

    [v6 _dismissAnimated:v7];
    return;
  }

  v9 = MEMORY[0x1E69E2F88];

  [v9 throwException:@"Invalid argument"];
}

uint64_t __51__SUScriptPopOver_setContentWidth_height_animated___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _shouldDisplayAsPopover];
  if (result)
  {
    v3 = [*(a1 + 32) _popOverController];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);

    return [v3 setPopoverContentSize:v6 animated:{v4, v5}];
  }

  return result;
}

- (BOOL)showFromElement:(id)a3
{
  if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    WebThreadRunOnMainThread();
    return 1;
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid element"];
    return 0;
  }
}

uint64_t __35__SUScriptPopOver_showFromElement___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _isViewControllerVisible])
  {
    v2 = [MEMORY[0x1E69D4938] sharedConfig];
    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    result = os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_INFO);
    if (!result)
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v24 = 138412290;
      v25 = objc_opt_class();
      LODWORD(v22) = 12;
      result = _os_log_send_and_compose_impl();
      if (result)
      {
        v6 = result;
        [MEMORY[0x1E696AEC0] stringWithCString:result encoding:{4, &v24, v22}];
        free(v6);
        return SSFileLog();
      }
    }
  }

  else
  {
    v7 = [*(a1 + 32) _shouldDisplayAsPopover];
    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = [v8 DOMElementWithElement:*(a1 + 40)];
      v10 = [*(a1 + 32) nativeObject];
      [v10 setSourceButtonItem:0];
      [v10 setSourceDOMElement:v9];
      v11 = objc_alloc_init(SUScrollViewScroller);
      v12 = [v9 webView];
      v13 = [v12 scrollView];
      [v9 frame];
      [v13 convertRect:0 fromView:?];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [(SUScrollViewScroller *)v11 attachToScrollView:v13];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __35__SUScriptPopOver_showFromElement___block_invoke_29;
      v23[3] = &unk_1E8165198;
      v23[4] = v12;
      v23[5] = v9;
      v23[6] = *(a1 + 32);
      v23[7] = v11;
      [(SUScrollViewScroller *)v11 scrollFrameToVisible:1 animated:v23 completionBlock:v15, v17, v19, v21];
    }

    else
    {
      [v8 _showAsModalViewController];
    }

    [*(a1 + 32) setVisible:1];
    return [*(a1 + 32) dispatchEvent:0 forName:@"show"];
  }

  return result;
}

uint64_t __35__SUScriptPopOver_showFromElement___block_invoke_29(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) frame];
  [v2 convertRect:0 fromView:?];
  [objc_msgSend(*(a1 + 48) "_presentablePopoverController")];
  v7 = *(a1 + 56);

  return [v7 detachFromScrollView];
}

- (BOOL)showFromNavigationItem:(id)a3
{
  if (a3 && ([a3 conformsToProtocol:&unk_1F422F898] & 1) != 0)
  {
    WebThreadRunOnMainThread();
    return 1;
  }

  else
  {
    [MEMORY[0x1E69E2F88] throwException:@"Invalid navigation item"];
    return 0;
  }
}

uint64_t __42__SUScriptPopOver_showFromNavigationItem___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) _isViewControllerVisible])
  {
    v2 = [MEMORY[0x1E69D4938] sharedConfig];
    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      v4 = v3 | 2;
    }

    else
    {
      v4 = v3;
    }

    result = os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_INFO);
    if (!result)
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v11 = 138412290;
      v12 = objc_opt_class();
      LODWORD(v10) = 12;
      result = _os_log_send_and_compose_impl();
      if (result)
      {
        v6 = result;
        [MEMORY[0x1E696AEC0] stringWithCString:result encoding:{4, &v11, v10}];
        free(v6);
        return SSFileLog();
      }
    }
  }

  else
  {
    result = [*(a1 + 32) parentViewController];
    if (result)
    {
      if ([*(a1 + 32) _shouldDisplayAsPopover])
      {
        v7 = [*(a1 + 40) buttonItem];
        [objc_msgSend(*(a1 + 32) "_presentablePopoverController")];
        v8 = [*(a1 + 32) nativeObject];
        [v8 setSourceButtonItem:v7];
        [v8 setSourceDOMElement:0];
      }

      else
      {
        [*(a1 + 32) _showAsModalViewController];
      }

      [*(a1 + 32) setVisible:1];
      v9 = *(a1 + 32);

      return [v9 dispatchEvent:0 forName:@"show"];
    }
  }

  return result;
}

- (int64_t)backgroundStyle
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __34__SUScriptPopOver_backgroundStyle__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "_popOverController")];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (double)contentHeight
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __32__SUScriptPopOver_contentHeight__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _shouldDisplayAsPopover])
  {
    result = [objc_msgSend(*(a1 + 32) "_popOverController")];
  }

  else
  {
    result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    v3 = v4;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (double)contentWidth
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  WebThreadRunOnMainThread();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

uint64_t __31__SUScriptPopOver_contentWidth__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _shouldDisplayAsPopover])
  {
    result = [objc_msgSend(*(a1 + 32) "_popOverController")];
  }

  else
  {
    result = [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    v3 = v4;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (SUScriptViewController)presentingViewController
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__4;
  v12 = __Block_byref_object_dispose__4;
  v13 = 0;
  v6 = MEMORY[0x1E69E9820];
  WebThreadRunOnMainThread();
  if (v9[5])
  {
    [(SUScriptObject *)self checkInScriptObject:v6, 3221225472, __43__SUScriptPopOver_presentingViewController__block_invoke, &unk_1E81650B0, self, &v8];
    v3 = v9[5];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t __43__SUScriptPopOver_presentingViewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _popOverController];
  if (v2)
  {
    v3 = [objc_getAssociatedObject(v2 "SUScriptPopOverPresentingViewController")];
  }

  else
  {
    v3 = [objc_msgSend(*(a1 + 32) "_nativeViewController")];
  }

  result = [v3 copyScriptViewController];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

uint64_t __38__SUScriptPopOver_setBackgroundStyle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _popOverController];
  v3 = *(a1 + 40);

  return [v2 _setPopoverBackgroundStyle:v3];
}

uint64_t __36__SUScriptPopOver_setContentHeight___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _shouldDisplayAsPopover];
  if (result)
  {
    v3 = [*(a1 + 32) _popOverController];
    [v3 popoverContentSize];

    return [v3 setPopoverContentSize:0 animated:?];
  }

  return result;
}

uint64_t __35__SUScriptPopOver_setContentWidth___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _shouldDisplayAsPopover];
  if (result)
  {
    v3 = [*(a1 + 32) _popOverController];
    [v3 popoverContentSize];
    v4 = *(a1 + 40);

    return [v3 setPopoverContentSize:0 animated:v4];
  }

  return result;
}

- (void)setViewController:(id)a3
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

uint64_t __37__SUScriptPopOver_setViewController___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _shouldDisplayAsPopover])
  {
    v2 = [*(a1 + 40) nativeViewController];
    v3 = *(a1 + 32);
    v4 = v3[9];
    if (v4 != v2)
    {

      *(*(a1 + 32) + 72) = v2;
      v3 = *(a1 + 32);
    }

    v5 = [v3 _popOverController];
    result = [v5 isPopoverVisible];
    if (result)
    {

      return [v5 setContentViewController:v2];
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) nativeViewController];

    return [v7 _setNativeViewController:v8];
  }

  return result;
}

- (SUScriptViewController)viewController
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __33__SUScriptPopOver_viewController__block_invoke;
  v10 = &unk_1E81650B0;
  v11 = self;
  v12 = &v13;
  WebThreadRunOnMainThread();
  if (v14[5] && ([(SUScriptObject *)self checkInScriptObject:v7, 3221225472, __33__SUScriptPopOver_viewController__block_invoke, &unk_1E81650B0, v11, &v13], (v3 = v14[5]) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v5 = v4;
  _Block_object_dispose(&v13, 8);
  return v5;
}

uint64_t __33__SUScriptPopOver_viewController__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _shouldDisplayAsPopover];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [objc_msgSend(v3 "_popOverController")];
  }

  else
  {
    v4 = [v3 _nativeViewController];
  }

  result = [v4 copyScriptViewController];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_viewControllerDidDismiss:(id)a3
{
  v4 = [a3 object];
  if (v4 == [(SUScriptPopOver *)self activeViewController])
  {
    if (!self->_ignoreDismiss)
    {
      [(SUScriptObject *)self dispatchEvent:0 forName:@"dismiss"];
      [(SUScriptObject *)self setNativeObject:0];

      [(SUScriptObject *)self setVisible:0];
    }
  }

  else if (-[SUScriptPopOver _shouldDisplayAsPopover](self, "_shouldDisplayAsPopover") && [-[SUScriptObject parentViewController](self "parentViewController")])
  {

    [(SUScriptPopOver *)self _dismissAnimated:0];
  }
}

- (void)_dismissAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(SUScriptPopOver *)self _shouldDisplayAsPopover])
  {
    [objc_msgSend(MEMORY[0x1E69DD258] transitionSafePerformer:{-[SUScriptPopOver _popOverController](self, "_popOverController")), "dismissPopoverAnimated:", v3}];
  }

  else
  {
    v5 = [(UIViewController *)[(SUScriptPopOver *)self activeViewController] parentViewController];
    [objc_msgSend(MEMORY[0x1E69DD258] transitionSafePerformer:{v5), "dismissViewControllerAnimated:completion:", v3, 0}];
  }

  [(SUScriptObject *)self setNativeObject:0];

  [(SUScriptObject *)self setVisible:0];
}

- (id)_nativeViewController
{
  v2 = [(SUScriptNativeObject *)[(SUScriptObject *)self nativeObject] object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isViewControllerVisible
{
  if ([(SUScriptPopOver *)self nativePopoverController])
  {
    v3 = [(SUScriptPopOver *)self nativePopoverController];

    LOBYTE(v4) = [(UIPopoverController *)v3 isPopoverVisible];
  }

  else
  {
    v4 = [(SUScriptPopOver *)self _nativeViewController];
    if (v4)
    {
      LOBYTE(v4) = [-[SUScriptPopOver _nativeViewController](self "_nativeViewController")] != 0;
    }
  }

  return v4;
}

- (id)_popOverController
{
  v3 = [(SUScriptPopOver *)self nativePopoverController];
  if (!v3)
  {
    if ([(SUScriptPopOver *)self _shouldDisplayAsPopover])
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DD258]);
      [v4 setPreferredContentSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      v3 = [objc_alloc(MEMORY[0x1E69DCDD8]) initWithContentViewController:v4];
      [(UIPopoverController *)v3 _setPopoverBackgroundStyle:3];
      [(SUScriptPopOver *)self setNativePopoverController:v3];
      v5 = v3;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

- (id)_presentablePopoverController
{
  v3 = [(SUScriptPopOver *)self _popOverController];
  v4 = v3;
  if (!self->_contentViewController || [v3 contentViewController] == self->_contentViewController)
  {
    return v4;
  }

  v5 = [objc_alloc(MEMORY[0x1E69DCDD8]) initWithContentViewController:self->_contentViewController];
  [v5 _setPopoverBackgroundStyle:{objc_msgSend(v4, "_popoverBackgroundStyle")}];
  [v4 popoverContentSize];
  [v5 setPopoverContentSize:0 animated:?];
  [(SUScriptPopOver *)self setNativePopoverController:v5];

  return v5;
}

- (void)_setNativeViewController:(id)a3
{
  if (a3)
  {
    a3 = [(SUScriptNativeObject *)SUScriptViewControllerNativeObject objectWithNativeObject:?];
  }

  [(SUScriptObject *)self setNativeObject:a3];
}

- (void)_showAsModalViewController
{
  v3 = [(SUScriptObject *)self parentViewController];
  v4 = [(SUScriptPopOver *)self _nativeViewController];
  if (v3)
  {
    v5 = v4;
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        [v3 presentViewController:v5 animated:1 completion:0];
      }

      else
      {
        v6 = [[SUNavigationController alloc] initWithRootViewController:v5];
        [(SUNavigationController *)v6 setClientInterface:[(SUScriptObject *)self clientInterface]];
        [v3 presentViewController:v6 animated:1 completion:0];
      }
    }
  }
}

+ (id)webScriptNameForKeyName:(id)a3
{
  result = [__KeyMapping_7 objectForKey:?];
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptPopOver;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForKeyName_, a3);
  }

  return result;
}

+ (id)webScriptNameForSelector:(SEL)a3
{
  result = SUWebScriptNameForSelector2(a3, &__SelectorMapping_5, 4);
  if (!result)
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___SUScriptPopOver;
    return objc_msgSendSuper2(&v6, sel_webScriptNameForSelector_, a3);
  }

  return result;
}

- (id)scriptAttributeKeys
{
  v4.receiver = self;
  v4.super_class = SUScriptPopOver;
  v2 = [(SUScriptObject *)&v4 scriptAttributeKeys];
  -[NSMutableArray addObjectsFromArray:](v2, "addObjectsFromArray:", [__KeyMapping_7 allKeys]);
  return v2;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping_5 = sel_dismissAnimated_;
    *algn_1EBF3A858 = @"dismiss";
    qword_1EBF3A860 = sel_setContentWidth_height_animated_;
    unk_1EBF3A868 = @"setContentSize";
    qword_1EBF3A870 = sel_showFromElement_;
    unk_1EBF3A878 = @"showFromElement";
    qword_1EBF3A880 = sel_showFromNavigationItem_;
    unk_1EBF3A888 = @"showFromNavigationItem";
    __KeyMapping_7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"backgroundStyle", @"contentHeight", @"contentHeight", @"contentWidth", @"contentWidth", @"parentViewController", @"presentingViewController", @"viewController", @"viewController", @"BACKGROUND_STYLE_BLACK", @"backgroundStyleBlack", @"BACKGROUND_STYLE_CLEAR", @"backgroundStyleClear", @"BACKGROUND_STYLE_CREAM", @"backgroundStyleCream", @"BACKGROUND_STYLE_DEFAULT", @"backgroundStyleDefault", @"BACKGROUND_STYLE_SHARE", @"backgroundStyleShare", 0}];
  }
}

@end