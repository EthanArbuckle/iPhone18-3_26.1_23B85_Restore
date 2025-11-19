@interface SUViewController
- (BOOL)_canReloadView;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)isVisible;
- (BOOL)isVisibleAndFrontmost;
- (BOOL)presentDialog:(id)a3 pendUntilVisible:(BOOL)a4;
- (BOOL)presentDialogForError:(id)a3 pendUntilVisible:(BOOL)a4;
- (BOOL)shouldInvalidateForMemoryPurge;
- (BOOL)window:(id)a3 shouldAutorotateToInterfaceOrientation:(int64_t)a4;
- (NSString)defaultPNGName;
- (SUClientInterface)clientInterface;
- (SUNavigationItem)navigationItem;
- (SUViewController)init;
- (SUViewController)initWithSection:(id)a3;
- (double)defaultPNGExpirationTime;
- (id)_existingNavigationItem;
- (id)_rotationController;
- (id)copyArchivableContext;
- (id)copyChildViewControllersForReason:(int64_t)a3;
- (id)copyDefaultScriptProperties;
- (id)copyScriptProperties;
- (id)inputAccessoryView;
- (id)moreListImage;
- (id)moreListSelectedImage;
- (id)navigationController;
- (id)tabBarItem;
- (id)viewControllerFactory;
- (int64_t)ITunesStoreUIBarStyle;
- (int64_t)interfaceOrientation;
- (unint64_t)supportedInterfaceOrientations;
- (void)_applicationDidEnterBackgroundNotification:(id)a3;
- (void)_applicationWillEnterForegroundNotification:(id)a3;
- (void)_dismissFooterAnimationDidStop:(id)a3;
- (void)_exitStoreButtonAction:(id)a3;
- (void)_exitStoreButtonDidChangeNotification:(id)a3;
- (void)_invalidateForMemoryPurge;
- (void)_keyboardDidHideNotification:(id)a3;
- (void)_keyboardDidShowNotification:(id)a3;
- (void)_keyboardWillHideNotification:(id)a3;
- (void)_keyboardWillShowNotification:(id)a3;
- (void)_presentFooterAnimationDidStop;
- (void)_reloadExitStoreButtonWithParentViewController:(id)a3;
- (void)_reloadLibraryButton;
- (void)_setExistingNavigationItem:(id)a3;
- (void)cancelOperations;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)dismissFooterViewControllerAnimated:(BOOL)a3;
- (void)enqueueOperation:(id)a3 cancelOnDealloc:(BOOL)a4;
- (void)invalidate;
- (void)loadView;
- (void)operation:(id)a3 failedWithError:(id)a4;
- (void)operationFinished:(id)a3;
- (void)presentFooterViewController:(id)a3 animated:(BOOL)a4;
- (void)reloadContentSizeForViewInPopover;
- (void)remoteControlReceivedWithEvent:(id)a3;
- (void)resetRestoredContext;
- (void)restoreArchivableContext:(id)a3;
- (void)setInputAccessoryViewController:(id)a3;
- (void)setParentViewController:(id)a3;
- (void)setScriptProperties:(id)a3;
- (void)setSection:(id)a3;
- (void)setShowsLibraryButton:(BOOL)a3;
- (void)setSkLoading:(BOOL)a3;
- (void)setTitle:(id)a3;
- (void)setTitle:(id)a3 changeTabBarItem:(BOOL)a4;
- (void)storePageProtocolDidChange;
- (void)trackOperation:(id)a3 cancelOnDealloc:(BOOL)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willMoveToParentViewController:(id)a3;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation SUViewController

- (SUViewController)init
{
  v6.receiver = self;
  v6.super_class = SUViewController;
  v2 = [(SUViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SUNavigationItem);
    [(SUViewController *)v2 _setExistingNavigationItem:v3];
    v2->_shouldInvalidateForMemoryPurge = 1;
    v2->_showsLibraryButton = 1;
    [(SUViewController *)v2 setContainmentSupport:0];
    [(SUViewController *)v2 reloadContentSizeForViewInPopover];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel__applicationDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DDAC8] object:0];
    [v4 addObserver:v2 selector:sel__applicationWillEnterForegroundNotification_ name:*MEMORY[0x1E69DDBC0] object:0];
    [v4 addObserver:v2 selector:sel__keyboardDidHideNotification_ name:*MEMORY[0x1E69DDF70] object:0];
    [v4 addObserver:v2 selector:sel__keyboardDidShowNotification_ name:*MEMORY[0x1E69DDF78] object:0];
    [v4 addObserver:v2 selector:sel__keyboardWillHideNotification_ name:*MEMORY[0x1E69DE078] object:0];
    [v4 addObserver:v2 selector:sel__keyboardWillShowNotification_ name:*MEMORY[0x1E69DE080] object:0];
    [v4 addObserver:v2 selector:sel__exitStoreButtonDidChangeNotification_ name:@"SUClientExitStoreButtonDidChangeNotification" object:0];
  }

  return v2;
}

- (SUViewController)initWithSection:(id)a3
{
  v4 = a3;
  v5 = [(SUViewController *)self init];
  v6 = v5;
  if (v5)
  {
    [(SUViewController *)v5 setSection:v4];
  }

  return v6;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDF70] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE078] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE080] object:0];
  [v3 removeObserver:self name:@"SUClientExitStoreButtonDidChangeNotification" object:0];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_cancelOnDeallocOperations;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        [v9 setDelegate:0];
        [v9 cancel];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_operations makeObjectsPerformSelector:sel_setCompletionBlock_ withObject:0];
  [(NSMutableArray *)self->_operations makeObjectsPerformSelector:sel_setDelegate_ withObject:0];
  transitionSafetyCount = self->_transitionSafetyCount;
  if (transitionSafetyCount >= 1)
  {
    do
    {
      self->_transitionSafetyCount = transitionSafetyCount - 1;
      [objc_opt_class() endTransitionSafety];
      transitionSafetyCount = self->_transitionSafetyCount;
    }

    while (transitionSafetyCount > 0);
  }

  footerViewController = self->_footerViewController;
  if (footerViewController)
  {
    if ([(UIViewController *)footerViewController isViewLoaded])
    {
      v12 = [(UIViewController *)self->_footerViewController view];
      v13 = [v12 superviewOfClass:objc_opt_class()];
      [v13 removeHitTestTarget:v12];
    }

    [(SUViewController *)self removeChildViewController:self->_footerViewController];
    v14 = self->_footerViewController;
    self->_footerViewController = 0;
  }

  if (self->_inputAccessoryViewController)
  {
    [(SUViewController *)self removeChildViewController:?];
  }

  [(UIBarButtonItem *)self->_exitStoreButton setTarget:0];
  [(SURotationController *)self->_rotationController setViewController:0];

  v15.receiver = self;
  v15.super_class = SUViewController;
  [(SUViewController *)&v15 dealloc];
}

- (id)copyChildViewControllersForReason:(int64_t)a3
{
  v4 = [(SUViewController *)self childViewControllers];
  v5 = [v4 mutableCopy];

  v6 = [(SUViewController *)self presentedViewController];
  if (v6)
  {
    [v5 removeObjectIdenticalTo:v6];
  }

  return v5;
}

- (void)cancelOperations
{
  v25 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_cancelOnDeallocOperations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        [v8 setCompletionBlock:0];
        [v8 setDelegate:0];
        [v8 cancel];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = self->_operations;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v15 + 1) + 8 * j);
        [v14 setCompletionBlock:{0, v15}];
        [v14 setDelegate:0];
        [v14 cancel];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_cancelOnDeallocOperations removeAllObjects];
  [(NSMutableArray *)self->_operations removeAllObjects];
}

- (SUClientInterface)clientInterface
{
  v2 = self->_clientInterface;
  if (!v2)
  {
    v2 = +[SUClientDispatch clientInterface];
  }

  return v2;
}

- (id)copyDefaultScriptProperties
{
  v3 = objc_alloc_init(SUViewControllerScriptProperties);
  [(SUViewControllerScriptProperties *)v3 setShowsHorizontalScrollIndicator:1];
  [(SUViewControllerScriptProperties *)v3 setShowsVerticalScrollIndicator:1];
  v4 = [MEMORY[0x1E69E47F8] sharedCache];
  v5 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v6 = [v4 URLBagForContext:v5];

  v7 = [v6 valueForKey:@"p2-client-options"];
  objc_opt_class();
  v8 = 0;
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 objectForKey:@"always-dispatch-scroll-events"];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    v10 = [MEMORY[0x1E69DC938] currentDevice];
    v11 = [v10 userInterfaceIdiom];

    v9 = (v11 & 0xFFFFFFFFFFFFFFFBLL) != 1;
  }

  [(SUViewControllerScriptProperties *)v3 setAlwaysDispatchesScrollEvents:v9];
  v12 = [(SUViewController *)self viewControllerFactory];
  v13 = [v12 newPlaceholderViewController];

  v14 = [(SUViewController *)self clientInterface];
  [v13 setClientInterface:v14];

  v15 = [v13 loadingView];
  -[SUViewControllerScriptProperties setLoadingIndicatorStyle:](v3, "setLoadingIndicatorStyle:", [v15 activityIndicatorStyle]);
  v16 = [v15 textColor];
  [(SUViewControllerScriptProperties *)v3 setLoadingTextColor:v16];

  v17 = [v15 textShadowColor];
  [(SUViewControllerScriptProperties *)v3 setLoadingTextShadowColor:v17];

  v18 = [v13 backgroundGradient];
  [(SUViewControllerScriptProperties *)v3 setPlaceholderBackgroundGradient:v18];

  v19 = [(UIViewController *)self section];
  v20 = [v19 loadingTextColor];
  if (v20)
  {
    [(SUViewControllerScriptProperties *)v3 setLoadingTextColor:v20];
  }

  v21 = [v19 loadingTextShadowColor];

  if (v21)
  {
    [(SUViewControllerScriptProperties *)v3 setLoadingTextShadowColor:v21];
  }

  return v3;
}

- (id)copyScriptProperties
{
  if (self->_cachedScriptProperties)
  {
    return [(SUViewControllerScriptProperties *)self->_cachedScriptProperties copy];
  }

  else
  {
    return [(SUViewController *)self copyDefaultScriptProperties];
  }
}

- (double)defaultPNGExpirationTime
{
  v2 = [MEMORY[0x1E695DF00] distantFuture];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (NSString)defaultPNGName
{
  v2 = [(UIViewController *)self section];
  v3 = [v2 defaultPNGStyle];

  if (v3 == 1)
  {
    return @"Default-Dark";
  }

  else
  {
    return 0;
  }
}

- (void)dismissFooterViewControllerAnimated:(BOOL)a3
{
  if (self->_footerViewController)
  {
    v3 = a3;
    v9 = [(SUViewController *)self view];
    if ([v9 tag] != 1718903668)
    {
      [(SUViewController *)a2 dismissFooterViewControllerAnimated:?];
    }

    v6 = [(UIViewController *)self->_footerViewController view];
    v7 = [v6 superviewOfClass:objc_opt_class()];
    [v7 removeHitTestTarget:v6];

    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    [v8 beginIgnoringInteractionEvents];

    [(UIViewController *)self->_footerViewController viewWillDisappear:v3];
    if (v3)
    {
      [MEMORY[0x1E69DD250] beginAnimations:@"dismiss" context:0];
      [MEMORY[0x1E69DD250] setAnimationDelegate:self];
      [MEMORY[0x1E69DD250] setAnimationDidStopSelector:sel__dismissFooterAnimationDidStop_];
      [v9 setFooterVisible:0];
      [MEMORY[0x1E69DD250] commitAnimations];
    }

    else
    {
      [(SUViewController *)self _dismissFooterAnimationDidStop:0];
    }
  }
}

- (void)enqueueOperation:(id)a3 cancelOnDealloc:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
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

  v10 = [v7 OSLogObject];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  *v15 = 138543874;
  *&v15[4] = objc_opt_class();
  *&v15[12] = 2112;
  *&v15[14] = v6;
  *&v15[22] = 1024;
  LODWORD(v16) = v4;
  v11 = *&v15[4];
  LODWORD(v14) = 28;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, v15, v14, *v15, *&v15[16], v16}];
    free(v12);
    SSFileLog();
LABEL_9:
  }

  [(SUViewController *)self trackOperation:v6 cancelOnDealloc:v4];
  v13 = [MEMORY[0x1E69E4798] mainQueue];
  [v13 addOperation:v6];
}

- (void)invalidate
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(SUViewController *)self copyChildViewControllersForReason:2];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 invalidate];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(SUViewController *)self resetRestoredContext];
}

- (BOOL)isVisible
{
  if ([(SUViewController *)self isViewLoaded])
  {
    v3 = [(SUViewController *)self view];
    v4 = [v3 window];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(SUViewController *)self presentedViewController];
  v7 = v6;
  v8 = v6 == 0 && v5;
  if (v6 && v5)
  {
    v8 = [v6 modalPresentationStyle] != 0;
  }

  v9 = [(UIViewController *)self overlayViewController];
  v10 = v9;
  if (v9)
  {
    if ([(SUViewController *)v9 isActiveOverlay])
    {
      if (v10 != self)
      {
        v8 = [(SUViewController *)v10 isVisible];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BOOL)isVisibleAndFrontmost
{
  v3 = [(SUViewController *)self isVisible];
  v4 = [(SUViewController *)self presentedViewController];

  if (v4 || (-[UIViewController iTunesStoreUI_searchFieldController](self, "iTunesStoreUI_searchFieldController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isActive], v5, (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    v9 = [(UIViewController *)self overlayViewController];
    if (v9)
    {
      v7 = 1;
    }

    else
    {
      v10 = [(UIViewController *)self overlayBackgroundViewController];
      v7 = v10 == 0;
    }
  }

  return v3 && v7;
}

- (BOOL)presentDialog:(id)a3 pendUntilVisible:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(SUViewController *)self isViewLoaded])
  {
    v7 = [(SUViewController *)self view];
    v8 = [v7 window];

    if (v8)
    {
      v9 = [(SUViewController *)self clientInterface];
      [v9 _presentDialog:v6];

LABEL_18:
      v10 = 1;
      goto LABEL_19;
    }
  }

  v10 = 0;
  if (v6 && v4)
  {
    v11 = [MEMORY[0x1E69D4938] sharedConfig];
    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v13 &= 2u;
    }

    if (v13)
    {
      LODWORD(v23) = 138543362;
      *(&v23 + 4) = objc_opt_class();
      v15 = *(&v23 + 4);
      LODWORD(v22) = 12;
      v21 = &v23;
      v16 = _os_log_send_and_compose_impl();

      if (!v16)
      {
LABEL_15:

        pendingDialogs = self->_pendingDialogs;
        if (!pendingDialogs)
        {
          v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v19 = self->_pendingDialogs;
          self->_pendingDialogs = v18;

          pendingDialogs = self->_pendingDialogs;
        }

        [(NSMutableArray *)pendingDialogs addObject:v6, v21];
        goto LABEL_18;
      }

      v14 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v23, v22, v23}];
      free(v16);
      v21 = v14;
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_19:

  return v10;
}

- (BOOL)presentDialogForError:(id)a3 pendUntilVisible:(BOOL)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = a4;
  v6 = MEMORY[0x1E69E4750];
  v7 = a3;
  v8 = [[v6 alloc] initWithError:v7];

  LOBYTE(v4) = [(SUViewController *)self presentDialog:v8 pendUntilVisible:v4];
  return v4;
}

- (void)presentFooterViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (self->_footerViewController)
  {
    v9 = [MEMORY[0x1E69D4938] sharedConfig];
    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = v10 | 2;
    }

    else
    {
      v11 = v10;
    }

    v12 = [v9 OSLogObject];
    if (!os_log_type_enabled(&v12->super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      v11 &= 2u;
    }

    if (v11)
    {
      LODWORD(v20) = 138412290;
      *(&v20 + 4) = objc_opt_class();
      v13 = *(&v20 + 4);
      LODWORD(v19) = 12;
      v14 = _os_log_send_and_compose_impl();

      if (!v14)
      {
LABEL_15:

        goto LABEL_16;
      }

      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v20, v19, v20}];
      free(v14);
      SSFileLog();
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v7)
  {
    objc_storeStrong(&self->_footerViewController, a3);
    [(SUViewController *)self addChildViewController:self->_footerViewController];
    [(UIViewController *)self->_footerViewController viewWillAppear:v4];
    v9 = [(SUViewController *)self view];
    v12 = objc_alloc_init(SUFooterContainerView);
    -[SUFooterContainerView setAutoresizingMask:](v12, "setAutoresizingMask:", [v9 autoresizingMask]);
    [(SUFooterContainerView *)v12 setTag:1718903668];
    [(SUViewController *)self setView:v12];
    [(SUFooterContainerView *)v12 setContentView:v9];
    v15 = [(UIViewController *)self->_footerViewController view];
    [(SUFooterContainerView *)v12 setFooterView:v15];

    v16 = [(UIView *)v12 superviewOfClass:objc_opt_class()];
    v17 = [(UIViewController *)self->_footerViewController view];
    [v16 addHitTestTarget:v17];

    if (v4)
    {
      [(SUFooterContainerView *)v12 layoutIfNeeded];
      v18 = [MEMORY[0x1E69DC668] sharedApplication];
      [v18 beginIgnoringInteractionEvents];

      [MEMORY[0x1E69DD250] beginAnimations:0 context:0];
      [MEMORY[0x1E69DD250] setAnimationDelegate:self];
      [MEMORY[0x1E69DD250] setAnimationDidStopSelector:sel__presentFooterAnimationDidStop];
      [(SUFooterContainerView *)v12 setFooterVisible:1];
      [MEMORY[0x1E69DD250] commitAnimations];
    }

    else
    {
      [(SUFooterContainerView *)v12 setFooterVisible:1];
      [(UIViewController *)self->_footerViewController viewDidAppear:0];
    }

    goto LABEL_14;
  }

LABEL_16:
}

- (void)reloadContentSizeForViewInPopover
{
  [(SUViewController *)self preferredContentSize];
  v4 = v3;
  [(UIViewController *)self maximumViewSize];
  if (v5 < 0.00000011920929)
  {
    v5 = 460.0;
  }

  [(SUViewController *)self setPreferredContentSize:v4, v5];
}

- (void)setInputAccessoryViewController:(id)a3
{
  v5 = a3;
  inputAccessoryViewController = self->_inputAccessoryViewController;
  if (inputAccessoryViewController != v5)
  {
    v7 = v5;
    if (inputAccessoryViewController)
    {
      [(SUViewController *)self removeChildViewController:?];
    }

    objc_storeStrong(&self->_inputAccessoryViewController, a3);
    if (self->_inputAccessoryViewController && ([(SUViewController *)self addChildViewController:?], self->_inputAccessoryViewController) && ![(SUViewController *)self isFirstResponder])
    {
      [(SUViewController *)self becomeFirstResponder];
    }

    else
    {
      [(SUViewController *)self reloadInputViews];
    }

    v5 = v7;
  }
}

- (void)setSkLoading:(BOOL)a3
{
  if (self->_skLoading != a3)
  {
    self->_skLoading = a3;
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 postNotificationName:@"SUViewControllerLoadingDidChangeNotification" object:self];
  }
}

- (void)setSection:(id)a3
{
  v11 = a3;
  v4 = [v11 image];
  v5 = [v4 _imageThatSuppressesAccessibilityHairlineThickening];

  v6 = [v11 selectedImage];
  v7 = [v6 _imageThatSuppressesAccessibilityHairlineThickening];

  v8 = [(SUViewController *)self tabBarItem];
  v9 = v8;
  if (v5)
  {
    if ([v11 isUsingLocalArtwork])
    {
      [v9 setImageInsets:{2.0, 0.0, -2.0, 0.0}];
    }
  }

  else
  {
    [v8 setImageInsets:{2.0, 0.0, -2.0, 0.0}];
    v10 = [MEMORY[0x1E69DCAB8] imageNamed:@"GenericTabItem.png"];
    v5 = [v10 _imageThatSuppressesAccessibilityHairlineThickening];
  }

  if (_UIApplicationUsesLegacyUI())
  {
    if (v7)
    {
      [v9 setImage:v7];
    }

    else
    {
      [v9 setFinishedSelectedImage:0 withFinishedUnselectedImage:v5];
    }
  }

  else
  {
    [v9 setImage:v5];
    [v9 setSelectedImage:v7];
  }
}

- (void)setScriptProperties:(id)a3
{
  v5 = a3;
  if (self->_cachedScriptProperties != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_cachedScriptProperties, a3);
    v5 = v6;
  }
}

- (void)setShowsLibraryButton:(BOOL)a3
{
  if (self->_showsLibraryButton != a3)
  {
    self->_showsLibraryButton = a3;
    v5 = [(SUViewController *)self parentViewController];
    [(SUViewController *)self _reloadExitStoreButtonWithParentViewController:v5];
  }
}

- (void)setTitle:(id)a3 changeTabBarItem:(BOOL)a4
{
  v7 = a3;
  v6 = [(SUViewController *)self _existingTabBarItem];
  if (a4)
  {
    [(SUViewController *)self setTitle:v7];
  }

  else
  {
    [(SUViewController *)self _setExistingTabBarItem:0];
    [(SUViewController *)self setTitle:v7];
    [(SUViewController *)self _setExistingTabBarItem:v6];
  }
}

- (BOOL)shouldInvalidateForMemoryPurge
{
  if (!self->_shouldInvalidateForMemoryPurge)
  {
    return 0;
  }

  v2 = [(SUViewController *)self parentViewController];
  v3 = [v2 shouldInvalidateForMemoryPurge];

  return v3;
}

- (void)trackOperation:(id)a3 cancelOnDealloc:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  [v11 setDelegate:self];
  [v11 setShouldMessageMainThread:1];
  if (v4)
  {
    v6 = 1008;
  }

  else
  {
    v6 = 1072;
  }

  v7 = (&self->super.super.super.isa + v6);
  v8 = *v7;
  if (!*v7)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10 = *v7;
    *v7 = v9;

    v8 = *v7;
  }

  [v8 addObject:v11];
}

- (BOOL)_canReloadView
{
  v5.receiver = self;
  v5.super_class = SUViewController;
  v3 = [(SUViewController *)&v5 _canReloadView];
  if (v3)
  {
    LOBYTE(v3) = [(SUViewController *)self shouldInvalidateForMemoryPurge];
  }

  return v3;
}

- (id)copyArchivableContext
{
  if (![(UIViewController *)self isRootViewController]&& [(SUViewController *)self shouldExcludeFromNavigationHistory])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SUViewController;
  v3 = [(UIViewController *)&v6 copyArchivableContext];
  if (self->_cachedScriptProperties)
  {
    v4 = [(SUViewController *)self copyScriptProperties];
    [v3 setValue:v4 forMetadataKey:@"scriptProperties"];
  }

  return v3;
}

- (void)didReceiveMemoryWarning
{
  [(SUViewController *)self _invalidateForMemoryPurge];
  v3.receiver = self;
  v3.super_class = SUViewController;
  [(SUViewController *)&v3 didReceiveMemoryWarning];
}

- (id)_existingNavigationItem
{
  v4.receiver = self;
  v4.super_class = SUViewController;
  v2 = [(SUViewController *)&v4 _existingNavigationItem];

  return v2;
}

- (int64_t)interfaceOrientation
{
  v3 = [(SUViewController *)self _popoverController];
  if (v3 && (v4 = v3, v5 = +[SUClientDispatch isTabBarControllerLoaded], v4, v5))
  {
    v6 = +[SUClientDispatch tabBarController];
    v7 = [v6 interfaceOrientation];

    return v7;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SUViewController;
    return [(SUViewController *)&v9 interfaceOrientation];
  }
}

- (int64_t)ITunesStoreUIBarStyle
{
  v2 = [(UIViewController *)self section];
  v3 = v2;
  if (v2 && [v2 defaultPNGStyle] == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)loadView
{
  v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v4 setAutoresizingMask:18];
  v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:v3];

  [(SUViewController *)self setView:v4];
  if (self->_cachedScriptProperties)
  {
    [(SUViewController *)self setScriptProperties:?];
  }
}

- (id)moreListImage
{
  v2 = [(UIViewController *)self section];
  v3 = [v2 moreListImage];

  return v3;
}

- (id)moreListSelectedImage
{
  v2 = [(UIViewController *)self section];
  v3 = [v2 selectedMoreListImage];

  return v3;
}

- (SUNavigationItem)navigationItem
{
  v3 = [(SUViewController *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
    v7 = [(SUViewController *)self parentViewController];
    v8 = [v7 navigationItem];

    goto LABEL_8;
  }

  v4 = [(SUViewController *)self parentViewController];
  v5 = [v4 navigationItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  v9 = [(SUViewController *)self _existingNavigationItem];

  if (!v9)
  {
    v10 = objc_alloc_init(SUNavigationItem);
    [(SUViewController *)self _setExistingNavigationItem:v10];
  }

  v12.receiver = self;
  v12.super_class = SUViewController;
  v8 = [(SUViewController *)&v12 navigationItem];
LABEL_8:

  return v8;
}

- (id)navigationController
{
  v3 = [(SUViewController *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
    v7 = [(SUViewController *)self parentViewController];
    v8 = [v7 navigationController];

    goto LABEL_6;
  }

  v4 = [(SUViewController *)self parentViewController];
  v5 = [v4 navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  v10.receiver = self;
  v10.super_class = SUViewController;
  v8 = [(SUViewController *)&v10 navigationController];
LABEL_6:

  return v8;
}

- (void)resetRestoredContext
{
  restoredContext = self->_restoredContext;
  self->_restoredContext = 0;

  v4.receiver = self;
  v4.super_class = SUViewController;
  [(UIViewController *)&v4 resetRestoredContext];
}

- (void)restoreArchivableContext:(id)a3
{
  v5 = a3;
  if (self->_restoredContext != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_restoredContext, a3);
    v6 = [(SUViewControllerContext *)self->_restoredContext valueForMetadataKey:@"scriptProperties"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUViewController *)self setScriptProperties:v6];
    }

    v5 = v7;
  }
}

- (void)_setExistingNavigationItem:(id)a3
{
  v3.receiver = self;
  v3.super_class = SUViewController;
  [(SUViewController *)&v3 _setExistingNavigationItem:a3];
}

- (void)setParentViewController:(id)a3
{
  v4 = a3;
  v5 = [(SUViewController *)self parentViewController];
  v8.receiver = self;
  v8.super_class = SUViewController;
  [(SUViewController *)&v8 setParentViewController:v4];

  v6 = [(SUViewController *)self parentViewController];

  if (v5 != v6)
  {
    [(UIViewController *)self parentViewControllerHierarchyDidChange];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"SUViewControllerParentViewControllerDidChangeNotification" object:self];
  }

  if (v4 && !self->_canBeWeakScriptReference)
  {
    self->_canBeWeakScriptReference = 1;
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(SUViewController *)self title];
  v6 = [v5 isEqualToString:v4];

  if ((v6 & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = SUViewController;
    [(SUViewController *)&v9 setTitle:v4];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = [(SUViewController *)self navigationItem];
    [v7 postNotificationName:@"SUViewControllerNavigationItemDidChangeNotification" object:v8];
  }
}

- (void)storePageProtocolDidChange
{
  v3 = [(UIViewController *)self storePageProtocol];
  v4 = v3;
  if (v3)
  {
    -[SUViewController setShouldExcludeFromNavigationHistory:](self, "setShouldExcludeFromNavigationHistory:", [v3 shouldExcludeFromNavigationHistory]);
  }

  v5.receiver = self;
  v5.super_class = SUViewController;
  [(UIViewController *)&v5 storePageProtocolDidChange];
}

- (id)tabBarItem
{
  v7.receiver = self;
  v7.super_class = SUViewController;
  v3 = [(SUViewController *)&v7 tabBarItem];
  v4 = [(SUViewController *)self clientInterface];
  v5 = [v4 appearance];
  [v5 styleTabBarItem:v3];

  return v3;
}

- (id)viewControllerFactory
{
  v3 = [(SUViewController *)self clientInterface];
  v4 = [v3 viewControllerFactory];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUViewController;
    v5 = [(UIViewController *)&v8 viewControllerFactory];
  }

  v6 = v5;

  return v6;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v33 = *MEMORY[0x1E69E9840];
  if (([(SUViewController *)self containmentSupport]& 1) == 0)
  {
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = [(SUViewController *)self copyChildViewControllersForReason:0];
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v27 + 1) + 8 * i) viewDidAppear:v3];
        }

        v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }
  }

  v10 = [(SUViewController *)self clientInterface];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = self->_pendingDialogs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [v10 _presentDialog:*(*(&v23 + 1) + 8 * j)];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v13);
  }

  pendingDialogs = self->_pendingDialogs;
  self->_pendingDialogs = 0;

  v22.receiver = self;
  v22.super_class = SUViewController;
  [(SUViewController *)&v22 viewDidAppear:v3];
  if (self->_inputAccessoryViewController)
  {
    [(SUViewController *)self reloadInputViews];
  }

  if ([(SUViewController *)self isVisible])
  {
    SUSetStatusBarStyleWithBarStyle([(SUViewController *)self ITunesStoreUIBarStyle], 0);
  }

  transitionSafetyCount = self->_transitionSafetyCount;
  v18 = transitionSafetyCount < 1;
  v19 = transitionSafetyCount - 1;
  if (!v18)
  {
    self->_transitionSafetyCount = v19;
    [objc_opt_class() endTransitionSafety];
  }

  v20 = [(SUViewController *)self parentViewController];

  if (!v20)
  {
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 postNotificationName:@"SUViewControllerParentViewControllerDidChangeNotification" object:self];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v22 = *MEMORY[0x1E69E9840];
  if (([(SUViewController *)self containmentSupport]& 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(SUViewController *)self copyChildViewControllersForReason:0];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v17 + 1) + 8 * i) viewDidDisappear:v3];
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  [v10 postNotificationName:@"SUViewControllerDidDisappearNotification" object:self];

  v16.receiver = self;
  v16.super_class = SUViewController;
  [(SUViewController *)&v16 viewDidDisappear:v3];
  transitionSafetyCount = self->_transitionSafetyCount;
  v12 = transitionSafetyCount < 1;
  v13 = transitionSafetyCount - 1;
  if (!v12)
  {
    self->_transitionSafetyCount = v13;
    [objc_opt_class() endTransitionSafety];
  }

  v14 = [(SUViewController *)self parentViewController];

  if (!v14)
  {
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 postNotificationName:@"SUViewControllerParentViewControllerDidChangeNotification" object:self];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v19 = *MEMORY[0x1E69E9840];
  memoryPurgeContext = self->_memoryPurgeContext;
  if (memoryPurgeContext)
  {
    self->_memoryPurgeContext = 0;
    v6 = memoryPurgeContext;

    [(SUViewController *)self restoreArchivableContext:v6];
  }

  if (([(SUViewController *)self containmentSupport]& 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(SUViewController *)self copyChildViewControllersForReason:0];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v7);
          }

          [*(*(&v14 + 1) + 8 * v11++) viewWillAppear:v3];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  if (v3)
  {
    ++self->_transitionSafetyCount;
    [objc_opt_class() beginTransitionSafety];
  }

  v12 = [(SUViewController *)self parentViewController];
  [(SUViewController *)self _reloadExitStoreButtonWithParentViewController:v12];

  v13.receiver = self;
  v13.super_class = SUViewController;
  [(SUViewController *)&v13 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x1E69E9840];
  if (([(SUViewController *)self containmentSupport]& 1) == 0)
  {
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [(SUViewController *)self copyChildViewControllersForReason:0];
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * v9++) viewWillDisappear:v3];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  transitionSafetyCount = self->_transitionSafetyCount;
  if (transitionSafetyCount >= 1)
  {
    do
    {
      self->_transitionSafetyCount = transitionSafetyCount - 1;
      [objc_opt_class() endTransitionSafety];
      transitionSafetyCount = self->_transitionSafetyCount;
    }

    while (transitionSafetyCount > 0);
  }

  if (v3)
  {
    self->_transitionSafetyCount = transitionSafetyCount + 1;
    [objc_opt_class() beginTransitionSafety];
  }

  v11.receiver = self;
  v11.super_class = SUViewController;
  [(SUViewController *)&v11 viewWillDisappear:v3];
}

- (void)willMoveToParentViewController:(id)a3
{
  v4 = a3;
  [(SUViewController *)self _reloadExitStoreButtonWithParentViewController:v4];
  v5.receiver = self;
  v5.super_class = SUViewController;
  [(SUViewController *)&v5 willMoveToParentViewController:v4];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(SUViewController *)self _rotationController];
  v6 = v5;
  if (v5)
  {
    [v5 finishRotationFromInterfaceOrientation:a3];
    [(SURotationController *)self->_rotationController setViewController:0];
    rotationController = self->_rotationController;
    self->_rotationController = 0;
  }

  else if (([(SUViewController *)self containmentSupport]& 1) == 0)
  {
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [(SUViewController *)self copyChildViewControllersForReason:1];
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v14 + 1) + 8 * i) didRotateFromInterfaceOrientation:a3];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  self->_rotationState = 0;
  v13.receiver = self;
  v13.super_class = SUViewController;
  [(SUViewController *)&v13 didRotateFromInterfaceOrientation:a3];
}

- (id)_rotationController
{
  rotationController = self->_rotationController;
  if (!rotationController)
  {
    v4 = [(SUViewController *)self newRotationController];
    v5 = self->_rotationController;
    self->_rotationController = v4;

    rotationController = self->_rotationController;
  }

  return rotationController;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  if (SUAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v20 = *MEMORY[0x1E69E9840];
  self->_rotationState = 2;
  v7 = [(SUViewController *)self _rotationController];
  v8 = v7;
  if (v7)
  {
    [v7 animateRotationToInterfaceOrientation:a3 duration:a4];
  }

  else if (([(SUViewController *)self containmentSupport]& 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [(SUViewController *)self copyChildViewControllersForReason:1];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * i) willAnimateRotationToInterfaceOrientation:a3 duration:a4];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14.receiver = self;
  v14.super_class = SUViewController;
  [(SUViewController *)&v14 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = [(SUViewController *)self _rotationController];
  v8 = v7;
  if (v7)
  {
    [v7 prepareToRotateToInterfaceOrientation:a3];
  }

  else if (([(SUViewController *)self containmentSupport]& 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [(SUViewController *)self copyChildViewControllersForReason:1];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v15 + 1) + 8 * i) willRotateToInterfaceOrientation:a3 duration:a4];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14.receiver = self;
  v14.super_class = SUViewController;
  [(SUViewController *)&v14 willRotateToInterfaceOrientation:a3 duration:a4];
}

- (BOOL)window:(id)a3 shouldAutorotateToInterfaceOrientation:(int64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19.receiver = self;
  v19.super_class = SUViewController;
  v7 = [(SUViewController *)&v19 window:v6 shouldAutorotateToInterfaceOrientation:a4];
  v8 = [(SUViewController *)self _rotationController];
  if (v8)
  {
    if (v7)
    {
      LOBYTE(v7) = self->_rotationState != 1;
    }
  }

  else if (([(SUViewController *)self containmentSupport]& 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [(SUViewController *)self copyChildViewControllersForReason:1];
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if (v7)
          {
            LOBYTE(v7) = [*(*(&v15 + 1) + 8 * i) window:v6 shouldAutorotateToInterfaceOrientation:{a4, v15}];
          }

          else
          {
            LOBYTE(v7) = 0;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v11);
    }
  }

  return v7;
}

- (BOOL)becomeFirstResponder
{
  v5.receiver = self;
  v5.super_class = SUViewController;
  v3 = [(SUViewController *)&v5 becomeFirstResponder];
  if (v3)
  {
    [(SUViewController *)self reloadInputViews];
  }

  return v3;
}

- (BOOL)canBecomeFirstResponder
{
  if (self->_inputAccessoryViewController)
  {
    return 1;
  }

  v6 = v2;
  v7 = v3;
  v5.receiver = self;
  v5.super_class = SUViewController;
  return [(SUViewController *)&v5 canBecomeFirstResponder];
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  if (!sel_isEqual(a3, sel_remoteControlReceivedWithEvent_))
  {
    return 1;
  }

  v5 = +[SUAudioPlayerSessionManager sessionManager];
  v6 = [v5 allSessionURLs];
  v7 = [v6 count] != 0;

  return v7;
}

- (id)inputAccessoryView
{
  if ([(SUViewController *)self isVisibleAndFrontmost])
  {
    v3 = [(UIViewController *)self->_inputAccessoryViewController view];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUViewController;
    v3 = [(SUViewController *)&v5 inputAccessoryView];
  }

  return v3;
}

- (void)remoteControlReceivedWithEvent:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 type] == 2)
  {
    v4 = +[SUAudioPlayerSessionManager sessionManager];
    v5 = [v4 allSessionURLs];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v6)
    {
      goto LABEL_19;
    }

    v7 = v6;
    v8 = *v15;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v4 audioPlayerForURL:*(*(&v14 + 1) + 8 * i)];
        v11 = [v3 subtype];
        if (v11 > 103)
        {
          if (v11 != 105)
          {
            if (v11 != 104)
            {
              goto LABEL_17;
            }

LABEL_14:
            [v10 stop];
            goto LABEL_17;
          }

          [v10 seekToTime:0.0];
        }

        else
        {
          if (v11 == 102)
          {
            goto LABEL_14;
          }

          if (v11 == 103)
          {
            v12 = [v10 playerStatus];
            v13 = [v12 playerState];

            if (v13 == 2)
            {
              [v10 pause];
            }

            else
            {
              [v10 play];
            }
          }
        }

LABEL_17:
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v7)
      {
LABEL_19:

        break;
      }
    }
  }
}

- (void)_exitStoreButtonAction:(id)a3
{
  v3 = [(SUViewController *)self clientInterface];
  [v3 _exitStoreWithReason:3];
}

- (void)_dismissFooterAnimationDidStop:(id)a3
{
  v8 = [(SUViewController *)self view];
  v5 = [v8 contentView];
  [v8 setContentView:0];
  [(SUViewController *)self setView:v5];
  [(UIViewController *)self->_footerViewController viewDidDisappear:a3 != 0];
  [(SUViewController *)self removeChildViewController:self->_footerViewController];
  footerViewController = self->_footerViewController;
  self->_footerViewController = 0;

  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  [v7 endIgnoringInteractionEvents];
}

- (void)_presentFooterAnimationDidStop
{
  [(UIViewController *)self->_footerViewController viewDidAppear:1];
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  [v2 endIgnoringInteractionEvents];
}

- (void)operation:(id)a3 failedWithError:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v9 = [MEMORY[0x1E69D4938] sharedConfig];
  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v11 &= 2u;
  }

  if (isKindOfClass)
  {
    if (v11)
    {
      v13 = objc_opt_class();
      v14 = v13;
      v15 = [v6 requestProperties];
      [v15 URL];
      v18 = 138544130;
      v19 = v13;
      v20 = 2114;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      v25 = v24 = 2112;
      LODWORD(v17) = 42;
      v16 = _os_log_send_and_compose_impl();

      goto LABEL_11;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (!v11)
  {
    goto LABEL_13;
  }

  v18 = 138543874;
  v19 = objc_opt_class();
  v20 = 2114;
  v21 = v6;
  v22 = 2112;
  v23 = v7;
  v14 = v19;
  LODWORD(v17) = 32;
  v16 = _os_log_send_and_compose_impl();
LABEL_11:

  if (v16)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v18, v17}];
    free(v16);
    SSFileLog();
    goto LABEL_13;
  }

LABEL_14:

  [v6 setDelegate:0];
  [(NSMutableArray *)self->_cancelOnDeallocOperations removeObject:v6];
  [(NSMutableArray *)self->_operations removeObject:v6];
}

- (void)operationFinished:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69D4938] sharedConfig];
  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    v7 = v6 | 2;
  }

  else
  {
    v7 = v6;
  }

  v8 = [v5 OSLogObject];
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (!v7)
  {
    goto LABEL_9;
  }

  v9 = objc_opt_class();
  v10 = v9;
  v13 = 138543874;
  v14 = v9;
  v15 = 2114;
  v16 = v4;
  v17 = 1024;
  v18 = [v4 success];
  LODWORD(v12) = 28;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v13, v12}];
    free(v11);
    SSFileLog();
LABEL_9:
  }

  [v4 setDelegate:0];
  [(NSMutableArray *)self->_cancelOnDeallocOperations removeObject:v4];
  [(NSMutableArray *)self->_operations removeObject:v4];
}

- (void)_applicationDidEnterBackgroundNotification:(id)a3
{
  self->_isEnteringForeground = 0;
  [(SUViewController *)self _invalidateForMemoryPurge];

  [(SUViewController *)self applicationDidEnterBackground];
}

- (void)_applicationWillEnterForegroundNotification:(id)a3
{
  self->_isEnteringForeground = 1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SUViewController__applicationWillEnterForegroundNotification___block_invoke;
  block[3] = &unk_1E81645E8;
  block[4] = self;
  dispatch_after(0, MEMORY[0x1E69E96A0], block);
  [(SUViewController *)self applicationWillEnterForeground];
}

- (void)_exitStoreButtonDidChangeNotification:(id)a3
{
  v4 = [(SUViewController *)self parentViewController];
  [(SUViewController *)self _reloadExitStoreButtonWithParentViewController:v4];
}

- (void)_keyboardDidHideNotification:(id)a3
{
  v7 = a3;
  v4 = [(SUViewController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = [v7 userInfo];
    [(UIViewController *)self keyboardDidHideWithInfo:v6];
  }
}

- (void)_keyboardDidShowNotification:(id)a3
{
  v7 = a3;
  v4 = [(SUViewController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = [v7 userInfo];
    [(UIViewController *)self keyboardDidShowWithInfo:v6];
  }
}

- (void)_keyboardWillHideNotification:(id)a3
{
  v7 = a3;
  v4 = [(SUViewController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = [v7 userInfo];
    [(UIViewController *)self keyboardWillHideWithInfo:v6];
  }
}

- (void)_keyboardWillShowNotification:(id)a3
{
  v7 = a3;
  v4 = [(SUViewController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v6 = [v7 userInfo];
    [(UIViewController *)self keyboardWillShowWithInfo:v6];
  }
}

- (void)_reloadLibraryButton
{
  v3 = [(SUViewController *)self parentViewController];
  [(SUViewController *)self _reloadExitStoreButtonWithParentViewController:v3];
}

- (void)_invalidateForMemoryPurge
{
  if ([(SUViewController *)self shouldInvalidateForMemoryPurge])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = *MEMORY[0x1E69DDBE8];
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__SUViewController__invalidateForMemoryPurge__block_invoke;
    v6[3] = &unk_1E8164320;
    v6[4] = &v7;
    v4 = [v3 beginBackgroundTaskWithExpirationHandler:v6];
    v8[3] = v4;

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__SUViewController__invalidateForMemoryPurge__block_invoke_2;
    block[3] = &unk_1E81647F0;
    block[4] = self;
    block[5] = &v7;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    _Block_object_dispose(&v7, 8);
  }
}

void __45__SUViewController__invalidateForMemoryPurge__block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 32) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];

    *(*(*(a1 + 32) + 8) + 24) = v1;
  }
}

void __45__SUViewController__invalidateForMemoryPurge__block_invoke_2(uint64_t a1)
{
  if (([*(a1 + 32) isSkLoaded] & 1) == 0)
  {
    v2 = [*(a1 + 32) copyArchivableJetsamContext];
    v3 = *(a1 + 32);
    v4 = *(v3 + 1064);
    *(v3 + 1064) = v2;
  }

  [*(a1 + 32) invalidateForMemoryPurge];
  v5 = *MEMORY[0x1E69DDBE8];
  if (*(*(*(a1 + 40) + 8) + 24) != *MEMORY[0x1E69DDBE8])
  {
    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    [v6 endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];

    *(*(*(a1 + 40) + 8) + 24) = v5;
  }
}

- (void)_reloadExitStoreButtonWithParentViewController:(id)a3
{
  v19 = a3;
  if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || ([(UIViewController *)self overlayViewController], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    if (!self->_exitStoreButton)
    {
      goto LABEL_7;
    }

    v5 = [(UIViewController *)self navigationItemForScriptInterface];
    SUNavigationItemRemoveButton(v5, self->_exitStoreButton);
    [(UIBarButtonItem *)self->_exitStoreButton setTarget:0];
    exitStoreButton = self->_exitStoreButton;
    self->_exitStoreButton = 0;
  }

  else
  {
    v5 = self->_exitStoreButton;
    v7 = +[SUClientDispatch exitStoreButtonTitle];
    exitStoreButton = v7;
    if (self->_showsLibraryButton && [(UIBarButtonItem *)v7 length])
    {
      if (!self->_exitStoreButton)
      {
        v8 = objc_alloc_init(SUBarButtonItem);
        v9 = self->_exitStoreButton;
        self->_exitStoreButton = &v8->super;

        [(UIBarButtonItem *)self->_exitStoreButton setAction:sel__exitStoreButtonAction_];
        [(UIBarButtonItem *)self->_exitStoreButton setTarget:self];
      }
    }

    else
    {
      [(UIBarButtonItem *)self->_exitStoreButton setTarget:0];
      v10 = self->_exitStoreButton;
      self->_exitStoreButton = 0;
    }

    [(UIBarButtonItem *)self->_exitStoreButton setTitle:exitStoreButton];
    v11 = [(UIViewController *)self navigationItemForScriptInterface];
    v12 = v11;
    if (self->_exitStoreButton)
    {
      v13 = [MEMORY[0x1E69DC938] currentDevice];
      v14 = [v13 userInterfaceIdiom];

      v15 = [(SUViewController *)self clientInterface];
      v16 = [v15 appearance];
      v17 = v16;
      v18 = self->_exitStoreButton;
      if (v14 == 1)
      {
        [v16 styleExitStoreButtonItem:v18];

        [v12 setLeftBarButtonItem:self->_exitStoreButton];
        [v12 setLeftItemsSupplementBackButton:1];
      }

      else
      {
        [v16 styleBarButtonItem:v18];

        [v12 setRightBarButtonItem:self->_exitStoreButton];
      }
    }

    else if (v5)
    {
      SUNavigationItemRemoveButton(v11, v5);
    }
  }

LABEL_7:
}

- (void)dismissFooterViewControllerAnimated:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SUViewController.m" lineNumber:302 description:@"Incorrect view hierarchy"];
}

@end