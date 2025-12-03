@interface SUViewController
- (BOOL)_canReloadView;
- (BOOL)becomeFirstResponder;
- (BOOL)canBecomeFirstResponder;
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)isVisible;
- (BOOL)isVisibleAndFrontmost;
- (BOOL)presentDialog:(id)dialog pendUntilVisible:(BOOL)visible;
- (BOOL)presentDialogForError:(id)error pendUntilVisible:(BOOL)visible;
- (BOOL)shouldInvalidateForMemoryPurge;
- (BOOL)window:(id)window shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (NSString)defaultPNGName;
- (SUClientInterface)clientInterface;
- (SUNavigationItem)navigationItem;
- (SUViewController)init;
- (SUViewController)initWithSection:(id)section;
- (double)defaultPNGExpirationTime;
- (id)_existingNavigationItem;
- (id)_rotationController;
- (id)copyArchivableContext;
- (id)copyChildViewControllersForReason:(int64_t)reason;
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
- (void)_applicationDidEnterBackgroundNotification:(id)notification;
- (void)_applicationWillEnterForegroundNotification:(id)notification;
- (void)_dismissFooterAnimationDidStop:(id)stop;
- (void)_exitStoreButtonAction:(id)action;
- (void)_exitStoreButtonDidChangeNotification:(id)notification;
- (void)_invalidateForMemoryPurge;
- (void)_keyboardDidHideNotification:(id)notification;
- (void)_keyboardDidShowNotification:(id)notification;
- (void)_keyboardWillHideNotification:(id)notification;
- (void)_keyboardWillShowNotification:(id)notification;
- (void)_presentFooterAnimationDidStop;
- (void)_reloadExitStoreButtonWithParentViewController:(id)controller;
- (void)_reloadLibraryButton;
- (void)_setExistingNavigationItem:(id)item;
- (void)cancelOperations;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)dismissFooterViewControllerAnimated:(BOOL)animated;
- (void)enqueueOperation:(id)operation cancelOnDealloc:(BOOL)dealloc;
- (void)invalidate;
- (void)loadView;
- (void)operation:(id)operation failedWithError:(id)error;
- (void)operationFinished:(id)finished;
- (void)presentFooterViewController:(id)controller animated:(BOOL)animated;
- (void)reloadContentSizeForViewInPopover;
- (void)remoteControlReceivedWithEvent:(id)event;
- (void)resetRestoredContext;
- (void)restoreArchivableContext:(id)context;
- (void)setInputAccessoryViewController:(id)controller;
- (void)setParentViewController:(id)controller;
- (void)setScriptProperties:(id)properties;
- (void)setSection:(id)section;
- (void)setShowsLibraryButton:(BOOL)button;
- (void)setSkLoading:(BOOL)loading;
- (void)setTitle:(id)title;
- (void)setTitle:(id)title changeTabBarItem:(BOOL)item;
- (void)storePageProtocolDidChange;
- (void)trackOperation:(id)operation cancelOnDealloc:(BOOL)dealloc;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willMoveToParentViewController:(id)controller;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__applicationDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DDAC8] object:0];
    [defaultCenter addObserver:v2 selector:sel__applicationWillEnterForegroundNotification_ name:*MEMORY[0x1E69DDBC0] object:0];
    [defaultCenter addObserver:v2 selector:sel__keyboardDidHideNotification_ name:*MEMORY[0x1E69DDF70] object:0];
    [defaultCenter addObserver:v2 selector:sel__keyboardDidShowNotification_ name:*MEMORY[0x1E69DDF78] object:0];
    [defaultCenter addObserver:v2 selector:sel__keyboardWillHideNotification_ name:*MEMORY[0x1E69DE078] object:0];
    [defaultCenter addObserver:v2 selector:sel__keyboardWillShowNotification_ name:*MEMORY[0x1E69DE080] object:0];
    [defaultCenter addObserver:v2 selector:sel__exitStoreButtonDidChangeNotification_ name:@"SUClientExitStoreButtonDidChangeNotification" object:0];
  }

  return v2;
}

- (SUViewController)initWithSection:(id)section
{
  sectionCopy = section;
  v5 = [(SUViewController *)self init];
  v6 = v5;
  if (v5)
  {
    [(SUViewController *)v5 setSection:sectionCopy];
  }

  return v6;
}

- (void)dealloc
{
  v21 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDBC0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDF70] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDF78] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE078] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DE080] object:0];
  [defaultCenter removeObserver:self name:@"SUClientExitStoreButtonDidChangeNotification" object:0];
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
      view = [(UIViewController *)self->_footerViewController view];
      v13 = [view superviewOfClass:objc_opt_class()];
      [v13 removeHitTestTarget:view];
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

- (id)copyChildViewControllersForReason:(int64_t)reason
{
  childViewControllers = [(SUViewController *)self childViewControllers];
  v5 = [childViewControllers mutableCopy];

  presentedViewController = [(SUViewController *)self presentedViewController];
  if (presentedViewController)
  {
    [v5 removeObjectIdenticalTo:presentedViewController];
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
  mEMORY[0x1E69E47F8] = [MEMORY[0x1E69E47F8] sharedCache];
  v5 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v6 = [mEMORY[0x1E69E47F8] URLBagForContext:v5];

  v7 = [v6 valueForKey:@"p2-client-options"];
  objc_opt_class();
  v8 = 0;
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 objectForKey:@"always-dispatch-scroll-events"];
  }

  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v8 BOOLValue];
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    bOOLValue = (userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1;
  }

  [(SUViewControllerScriptProperties *)v3 setAlwaysDispatchesScrollEvents:bOOLValue];
  viewControllerFactory = [(SUViewController *)self viewControllerFactory];
  newPlaceholderViewController = [viewControllerFactory newPlaceholderViewController];

  clientInterface = [(SUViewController *)self clientInterface];
  [newPlaceholderViewController setClientInterface:clientInterface];

  loadingView = [newPlaceholderViewController loadingView];
  -[SUViewControllerScriptProperties setLoadingIndicatorStyle:](v3, "setLoadingIndicatorStyle:", [loadingView activityIndicatorStyle]);
  textColor = [loadingView textColor];
  [(SUViewControllerScriptProperties *)v3 setLoadingTextColor:textColor];

  textShadowColor = [loadingView textShadowColor];
  [(SUViewControllerScriptProperties *)v3 setLoadingTextShadowColor:textShadowColor];

  backgroundGradient = [newPlaceholderViewController backgroundGradient];
  [(SUViewControllerScriptProperties *)v3 setPlaceholderBackgroundGradient:backgroundGradient];

  section = [(UIViewController *)self section];
  loadingTextColor = [section loadingTextColor];
  if (loadingTextColor)
  {
    [(SUViewControllerScriptProperties *)v3 setLoadingTextColor:loadingTextColor];
  }

  loadingTextShadowColor = [section loadingTextShadowColor];

  if (loadingTextShadowColor)
  {
    [(SUViewControllerScriptProperties *)v3 setLoadingTextShadowColor:loadingTextShadowColor];
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
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v4 = v3;

  return v4;
}

- (NSString)defaultPNGName
{
  section = [(UIViewController *)self section];
  defaultPNGStyle = [section defaultPNGStyle];

  if (defaultPNGStyle == 1)
  {
    return @"Default-Dark";
  }

  else
  {
    return 0;
  }
}

- (void)dismissFooterViewControllerAnimated:(BOOL)animated
{
  if (self->_footerViewController)
  {
    animatedCopy = animated;
    view = [(SUViewController *)self view];
    if ([view tag] != 1718903668)
    {
      [(SUViewController *)a2 dismissFooterViewControllerAnimated:?];
    }

    view2 = [(UIViewController *)self->_footerViewController view];
    v7 = [view2 superviewOfClass:objc_opt_class()];
    [v7 removeHitTestTarget:view2];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    [mEMORY[0x1E69DC668] beginIgnoringInteractionEvents];

    [(UIViewController *)self->_footerViewController viewWillDisappear:animatedCopy];
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] beginAnimations:@"dismiss" context:0];
      [MEMORY[0x1E69DD250] setAnimationDelegate:self];
      [MEMORY[0x1E69DD250] setAnimationDidStopSelector:sel__dismissFooterAnimationDidStop_];
      [view setFooterVisible:0];
      [MEMORY[0x1E69DD250] commitAnimations];
    }

    else
    {
      [(SUViewController *)self _dismissFooterAnimationDidStop:0];
    }
  }
}

- (void)enqueueOperation:(id)operation cancelOnDealloc:(BOOL)dealloc
{
  deallocCopy = dealloc;
  v17 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
  *&v15[14] = operationCopy;
  *&v15[22] = 1024;
  LODWORD(v16) = deallocCopy;
  v11 = *&v15[4];
  LODWORD(v14) = 28;
  v12 = _os_log_send_and_compose_impl();

  if (v12)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, v15, v14, *v15, *&v15[16], v16}];
    free(v12);
    SSFileLog();
LABEL_9:
  }

  [(SUViewController *)self trackOperation:operationCopy cancelOnDealloc:deallocCopy];
  mainQueue = [MEMORY[0x1E69E4798] mainQueue];
  [mainQueue addOperation:operationCopy];
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
    view = [(SUViewController *)self view];
    window = [view window];
    v5 = window != 0;
  }

  else
  {
    v5 = 0;
  }

  presentedViewController = [(SUViewController *)self presentedViewController];
  v7 = presentedViewController;
  isVisible = presentedViewController == 0 && v5;
  if (presentedViewController && v5)
  {
    isVisible = [presentedViewController modalPresentationStyle] != 0;
  }

  overlayViewController = [(UIViewController *)self overlayViewController];
  v10 = overlayViewController;
  if (overlayViewController)
  {
    if ([(SUViewController *)overlayViewController isActiveOverlay])
    {
      if (v10 != self)
      {
        isVisible = [(SUViewController *)v10 isVisible];
      }
    }

    else
    {
      isVisible = 0;
    }
  }

  return isVisible;
}

- (BOOL)isVisibleAndFrontmost
{
  isVisible = [(SUViewController *)self isVisible];
  presentedViewController = [(SUViewController *)self presentedViewController];

  if (presentedViewController || (-[UIViewController iTunesStoreUI_searchFieldController](self, "iTunesStoreUI_searchFieldController"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isActive], v5, (v6 & 1) != 0))
  {
    v7 = 0;
  }

  else
  {
    overlayViewController = [(UIViewController *)self overlayViewController];
    if (overlayViewController)
    {
      v7 = 1;
    }

    else
    {
      overlayBackgroundViewController = [(UIViewController *)self overlayBackgroundViewController];
      v7 = overlayBackgroundViewController == 0;
    }
  }

  return isVisible && v7;
}

- (BOOL)presentDialog:(id)dialog pendUntilVisible:(BOOL)visible
{
  visibleCopy = visible;
  v24 = *MEMORY[0x1E69E9840];
  dialogCopy = dialog;
  if ([(SUViewController *)self isViewLoaded])
  {
    view = [(SUViewController *)self view];
    window = [view window];

    if (window)
    {
      clientInterface = [(SUViewController *)self clientInterface];
      [clientInterface _presentDialog:dialogCopy];

LABEL_18:
      v10 = 1;
      goto LABEL_19;
    }
  }

  v10 = 0;
  if (dialogCopy && visibleCopy)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v13 = shouldLog | 2;
    }

    else
    {
      v13 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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

        [(NSMutableArray *)pendingDialogs addObject:dialogCopy, v21];
        goto LABEL_18;
      }

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v23, v22, v23}];
      free(v16);
      v21 = oSLogObject;
      SSFileLog();
    }

    goto LABEL_15;
  }

LABEL_19:

  return v10;
}

- (BOOL)presentDialogForError:(id)error pendUntilVisible:(BOOL)visible
{
  if (!error)
  {
    return 0;
  }

  visibleCopy = visible;
  v6 = MEMORY[0x1E69E4750];
  errorCopy = error;
  v8 = [[v6 alloc] initWithError:errorCopy];

  LOBYTE(visibleCopy) = [(SUViewController *)self presentDialog:v8 pendUntilVisible:visibleCopy];
  return visibleCopy;
}

- (void)presentFooterViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v8 = controllerCopy;
  if (self->_footerViewController)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
    if (!os_log_type_enabled(&oSLogObject->super.super.super, OS_LOG_TYPE_DEFAULT))
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

      oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v20, v19, v20}];
      free(v14);
      SSFileLog();
    }

LABEL_14:

    goto LABEL_15;
  }

  if (controllerCopy)
  {
    objc_storeStrong(&self->_footerViewController, controller);
    [(SUViewController *)self addChildViewController:self->_footerViewController];
    [(UIViewController *)self->_footerViewController viewWillAppear:animatedCopy];
    mEMORY[0x1E69D4938] = [(SUViewController *)self view];
    oSLogObject = objc_alloc_init(SUFooterContainerView);
    -[SUFooterContainerView setAutoresizingMask:](oSLogObject, "setAutoresizingMask:", [mEMORY[0x1E69D4938] autoresizingMask]);
    [(SUFooterContainerView *)oSLogObject setTag:1718903668];
    [(SUViewController *)self setView:oSLogObject];
    [(SUFooterContainerView *)oSLogObject setContentView:mEMORY[0x1E69D4938]];
    view = [(UIViewController *)self->_footerViewController view];
    [(SUFooterContainerView *)oSLogObject setFooterView:view];

    v16 = [(UIView *)oSLogObject superviewOfClass:objc_opt_class()];
    view2 = [(UIViewController *)self->_footerViewController view];
    [v16 addHitTestTarget:view2];

    if (animatedCopy)
    {
      [(SUFooterContainerView *)oSLogObject layoutIfNeeded];
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      [mEMORY[0x1E69DC668] beginIgnoringInteractionEvents];

      [MEMORY[0x1E69DD250] beginAnimations:0 context:0];
      [MEMORY[0x1E69DD250] setAnimationDelegate:self];
      [MEMORY[0x1E69DD250] setAnimationDidStopSelector:sel__presentFooterAnimationDidStop];
      [(SUFooterContainerView *)oSLogObject setFooterVisible:1];
      [MEMORY[0x1E69DD250] commitAnimations];
    }

    else
    {
      [(SUFooterContainerView *)oSLogObject setFooterVisible:1];
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

- (void)setInputAccessoryViewController:(id)controller
{
  controllerCopy = controller;
  inputAccessoryViewController = self->_inputAccessoryViewController;
  if (inputAccessoryViewController != controllerCopy)
  {
    v7 = controllerCopy;
    if (inputAccessoryViewController)
    {
      [(SUViewController *)self removeChildViewController:?];
    }

    objc_storeStrong(&self->_inputAccessoryViewController, controller);
    if (self->_inputAccessoryViewController && ([(SUViewController *)self addChildViewController:?], self->_inputAccessoryViewController) && ![(SUViewController *)self isFirstResponder])
    {
      [(SUViewController *)self becomeFirstResponder];
    }

    else
    {
      [(SUViewController *)self reloadInputViews];
    }

    controllerCopy = v7;
  }
}

- (void)setSkLoading:(BOOL)loading
{
  if (self->_skLoading != loading)
  {
    self->_skLoading = loading;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SUViewControllerLoadingDidChangeNotification" object:self];
  }
}

- (void)setSection:(id)section
{
  sectionCopy = section;
  image = [sectionCopy image];
  _imageThatSuppressesAccessibilityHairlineThickening = [image _imageThatSuppressesAccessibilityHairlineThickening];

  selectedImage = [sectionCopy selectedImage];
  _imageThatSuppressesAccessibilityHairlineThickening2 = [selectedImage _imageThatSuppressesAccessibilityHairlineThickening];

  tabBarItem = [(SUViewController *)self tabBarItem];
  v9 = tabBarItem;
  if (_imageThatSuppressesAccessibilityHairlineThickening)
  {
    if ([sectionCopy isUsingLocalArtwork])
    {
      [v9 setImageInsets:{2.0, 0.0, -2.0, 0.0}];
    }
  }

  else
  {
    [tabBarItem setImageInsets:{2.0, 0.0, -2.0, 0.0}];
    v10 = [MEMORY[0x1E69DCAB8] imageNamed:@"GenericTabItem.png"];
    _imageThatSuppressesAccessibilityHairlineThickening = [v10 _imageThatSuppressesAccessibilityHairlineThickening];
  }

  if (_UIApplicationUsesLegacyUI())
  {
    if (_imageThatSuppressesAccessibilityHairlineThickening2)
    {
      [v9 setImage:_imageThatSuppressesAccessibilityHairlineThickening2];
    }

    else
    {
      [v9 setFinishedSelectedImage:0 withFinishedUnselectedImage:_imageThatSuppressesAccessibilityHairlineThickening];
    }
  }

  else
  {
    [v9 setImage:_imageThatSuppressesAccessibilityHairlineThickening];
    [v9 setSelectedImage:_imageThatSuppressesAccessibilityHairlineThickening2];
  }
}

- (void)setScriptProperties:(id)properties
{
  propertiesCopy = properties;
  if (self->_cachedScriptProperties != propertiesCopy)
  {
    v6 = propertiesCopy;
    objc_storeStrong(&self->_cachedScriptProperties, properties);
    propertiesCopy = v6;
  }
}

- (void)setShowsLibraryButton:(BOOL)button
{
  if (self->_showsLibraryButton != button)
  {
    self->_showsLibraryButton = button;
    parentViewController = [(SUViewController *)self parentViewController];
    [(SUViewController *)self _reloadExitStoreButtonWithParentViewController:parentViewController];
  }
}

- (void)setTitle:(id)title changeTabBarItem:(BOOL)item
{
  titleCopy = title;
  _existingTabBarItem = [(SUViewController *)self _existingTabBarItem];
  if (item)
  {
    [(SUViewController *)self setTitle:titleCopy];
  }

  else
  {
    [(SUViewController *)self _setExistingTabBarItem:0];
    [(SUViewController *)self setTitle:titleCopy];
    [(SUViewController *)self _setExistingTabBarItem:_existingTabBarItem];
  }
}

- (BOOL)shouldInvalidateForMemoryPurge
{
  if (!self->_shouldInvalidateForMemoryPurge)
  {
    return 0;
  }

  parentViewController = [(SUViewController *)self parentViewController];
  shouldInvalidateForMemoryPurge = [parentViewController shouldInvalidateForMemoryPurge];

  return shouldInvalidateForMemoryPurge;
}

- (void)trackOperation:(id)operation cancelOnDealloc:(BOOL)dealloc
{
  deallocCopy = dealloc;
  operationCopy = operation;
  [operationCopy setDelegate:self];
  [operationCopy setShouldMessageMainThread:1];
  if (deallocCopy)
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

  [v8 addObject:operationCopy];
}

- (BOOL)_canReloadView
{
  v5.receiver = self;
  v5.super_class = SUViewController;
  _canReloadView = [(SUViewController *)&v5 _canReloadView];
  if (_canReloadView)
  {
    LOBYTE(_canReloadView) = [(SUViewController *)self shouldInvalidateForMemoryPurge];
  }

  return _canReloadView;
}

- (id)copyArchivableContext
{
  if (![(UIViewController *)self isRootViewController]&& [(SUViewController *)self shouldExcludeFromNavigationHistory])
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = SUViewController;
  copyArchivableContext = [(UIViewController *)&v6 copyArchivableContext];
  if (self->_cachedScriptProperties)
  {
    copyScriptProperties = [(SUViewController *)self copyScriptProperties];
    [copyArchivableContext setValue:copyScriptProperties forMetadataKey:@"scriptProperties"];
  }

  return copyArchivableContext;
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
  _existingNavigationItem = [(SUViewController *)&v4 _existingNavigationItem];

  return _existingNavigationItem;
}

- (int64_t)interfaceOrientation
{
  _popoverController = [(SUViewController *)self _popoverController];
  if (_popoverController && (v4 = _popoverController, v5 = +[SUClientDispatch isTabBarControllerLoaded], v4, v5))
  {
    v6 = +[SUClientDispatch tabBarController];
    interfaceOrientation = [v6 interfaceOrientation];

    return interfaceOrientation;
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
  section = [(UIViewController *)self section];
  v3 = section;
  if (section && [section defaultPNGStyle] == 1)
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
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v4 setBackgroundColor:systemBackgroundColor];

  [(SUViewController *)self setView:v4];
  if (self->_cachedScriptProperties)
  {
    [(SUViewController *)self setScriptProperties:?];
  }
}

- (id)moreListImage
{
  section = [(UIViewController *)self section];
  moreListImage = [section moreListImage];

  return moreListImage;
}

- (id)moreListSelectedImage
{
  section = [(UIViewController *)self section];
  selectedMoreListImage = [section selectedMoreListImage];

  return selectedMoreListImage;
}

- (SUNavigationItem)navigationItem
{
  parentViewController = [(SUViewController *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
    parentViewController2 = [(SUViewController *)self parentViewController];
    navigationItem = [parentViewController2 navigationItem];

    goto LABEL_8;
  }

  parentViewController3 = [(SUViewController *)self parentViewController];
  navigationItem2 = [parentViewController3 navigationItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  _existingNavigationItem = [(SUViewController *)self _existingNavigationItem];

  if (!_existingNavigationItem)
  {
    v10 = objc_alloc_init(SUNavigationItem);
    [(SUViewController *)self _setExistingNavigationItem:v10];
  }

  v12.receiver = self;
  v12.super_class = SUViewController;
  navigationItem = [(SUViewController *)&v12 navigationItem];
LABEL_8:

  return navigationItem;
}

- (id)navigationController
{
  parentViewController = [(SUViewController *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
    parentViewController2 = [(SUViewController *)self parentViewController];
    navigationController = [parentViewController2 navigationController];

    goto LABEL_6;
  }

  parentViewController3 = [(SUViewController *)self parentViewController];
  navigationController2 = [parentViewController3 navigationController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  v10.receiver = self;
  v10.super_class = SUViewController;
  navigationController = [(SUViewController *)&v10 navigationController];
LABEL_6:

  return navigationController;
}

- (void)resetRestoredContext
{
  restoredContext = self->_restoredContext;
  self->_restoredContext = 0;

  v4.receiver = self;
  v4.super_class = SUViewController;
  [(UIViewController *)&v4 resetRestoredContext];
}

- (void)restoreArchivableContext:(id)context
{
  contextCopy = context;
  if (self->_restoredContext != contextCopy)
  {
    v7 = contextCopy;
    objc_storeStrong(&self->_restoredContext, context);
    v6 = [(SUViewControllerContext *)self->_restoredContext valueForMetadataKey:@"scriptProperties"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUViewController *)self setScriptProperties:v6];
    }

    contextCopy = v7;
  }
}

- (void)_setExistingNavigationItem:(id)item
{
  v3.receiver = self;
  v3.super_class = SUViewController;
  [(SUViewController *)&v3 _setExistingNavigationItem:item];
}

- (void)setParentViewController:(id)controller
{
  controllerCopy = controller;
  parentViewController = [(SUViewController *)self parentViewController];
  v8.receiver = self;
  v8.super_class = SUViewController;
  [(SUViewController *)&v8 setParentViewController:controllerCopy];

  parentViewController2 = [(SUViewController *)self parentViewController];

  if (parentViewController != parentViewController2)
  {
    [(UIViewController *)self parentViewControllerHierarchyDidChange];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SUViewControllerParentViewControllerDidChangeNotification" object:self];
  }

  if (controllerCopy && !self->_canBeWeakScriptReference)
  {
    self->_canBeWeakScriptReference = 1;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(SUViewController *)self title];
  v6 = [title isEqualToString:titleCopy];

  if ((v6 & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = SUViewController;
    [(SUViewController *)&v9 setTitle:titleCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    navigationItem = [(SUViewController *)self navigationItem];
    [defaultCenter postNotificationName:@"SUViewControllerNavigationItemDidChangeNotification" object:navigationItem];
  }
}

- (void)storePageProtocolDidChange
{
  storePageProtocol = [(UIViewController *)self storePageProtocol];
  v4 = storePageProtocol;
  if (storePageProtocol)
  {
    -[SUViewController setShouldExcludeFromNavigationHistory:](self, "setShouldExcludeFromNavigationHistory:", [storePageProtocol shouldExcludeFromNavigationHistory]);
  }

  v5.receiver = self;
  v5.super_class = SUViewController;
  [(UIViewController *)&v5 storePageProtocolDidChange];
}

- (id)tabBarItem
{
  v7.receiver = self;
  v7.super_class = SUViewController;
  tabBarItem = [(SUViewController *)&v7 tabBarItem];
  clientInterface = [(SUViewController *)self clientInterface];
  appearance = [clientInterface appearance];
  [appearance styleTabBarItem:tabBarItem];

  return tabBarItem;
}

- (id)viewControllerFactory
{
  clientInterface = [(SUViewController *)self clientInterface];
  viewControllerFactory = [clientInterface viewControllerFactory];

  if (viewControllerFactory)
  {
    viewControllerFactory2 = viewControllerFactory;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUViewController;
    viewControllerFactory2 = [(UIViewController *)&v8 viewControllerFactory];
  }

  v6 = viewControllerFactory2;

  return v6;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
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

          [*(*(&v27 + 1) + 8 * i) viewDidAppear:appearCopy];
        }

        v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }
  }

  clientInterface = [(SUViewController *)self clientInterface];
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

        [clientInterface _presentDialog:*(*(&v23 + 1) + 8 * j)];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v13);
  }

  pendingDialogs = self->_pendingDialogs;
  self->_pendingDialogs = 0;

  v22.receiver = self;
  v22.super_class = SUViewController;
  [(SUViewController *)&v22 viewDidAppear:appearCopy];
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

  parentViewController = [(SUViewController *)self parentViewController];

  if (!parentViewController)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"SUViewControllerParentViewControllerDidChangeNotification" object:self];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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

          [*(*(&v17 + 1) + 8 * i) viewDidDisappear:disappearCopy];
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"SUViewControllerDidDisappearNotification" object:self];

  v16.receiver = self;
  v16.super_class = SUViewController;
  [(SUViewController *)&v16 viewDidDisappear:disappearCopy];
  transitionSafetyCount = self->_transitionSafetyCount;
  v12 = transitionSafetyCount < 1;
  v13 = transitionSafetyCount - 1;
  if (!v12)
  {
    self->_transitionSafetyCount = v13;
    [objc_opt_class() endTransitionSafety];
  }

  parentViewController = [(SUViewController *)self parentViewController];

  if (!parentViewController)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 postNotificationName:@"SUViewControllerParentViewControllerDidChangeNotification" object:self];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
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

          [*(*(&v14 + 1) + 8 * v11++) viewWillAppear:appearCopy];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  if (appearCopy)
  {
    ++self->_transitionSafetyCount;
    [objc_opt_class() beginTransitionSafety];
  }

  parentViewController = [(SUViewController *)self parentViewController];
  [(SUViewController *)self _reloadExitStoreButtonWithParentViewController:parentViewController];

  v13.receiver = self;
  v13.super_class = SUViewController;
  [(SUViewController *)&v13 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
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

          [*(*(&v12 + 1) + 8 * v9++) viewWillDisappear:disappearCopy];
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

  if (disappearCopy)
  {
    self->_transitionSafetyCount = transitionSafetyCount + 1;
    [objc_opt_class() beginTransitionSafety];
  }

  v11.receiver = self;
  v11.super_class = SUViewController;
  [(SUViewController *)&v11 viewWillDisappear:disappearCopy];
}

- (void)willMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  [(SUViewController *)self _reloadExitStoreButtonWithParentViewController:controllerCopy];
  v5.receiver = self;
  v5.super_class = SUViewController;
  [(SUViewController *)&v5 willMoveToParentViewController:controllerCopy];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  v19 = *MEMORY[0x1E69E9840];
  _rotationController = [(SUViewController *)self _rotationController];
  v6 = _rotationController;
  if (_rotationController)
  {
    [_rotationController finishRotationFromInterfaceOrientation:orientation];
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

          [*(*(&v14 + 1) + 8 * i) didRotateFromInterfaceOrientation:orientation];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  self->_rotationState = 0;
  v13.receiver = self;
  v13.super_class = SUViewController;
  [(SUViewController *)&v13 didRotateFromInterfaceOrientation:orientation];
}

- (id)_rotationController
{
  rotationController = self->_rotationController;
  if (!rotationController)
  {
    newRotationController = [(SUViewController *)self newRotationController];
    v5 = self->_rotationController;
    self->_rotationController = newRotationController;

    rotationController = self->_rotationController;
  }

  return rotationController;
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  if (SUAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v20 = *MEMORY[0x1E69E9840];
  self->_rotationState = 2;
  _rotationController = [(SUViewController *)self _rotationController];
  v8 = _rotationController;
  if (_rotationController)
  {
    [_rotationController animateRotationToInterfaceOrientation:orientation duration:duration];
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

          [*(*(&v15 + 1) + 8 * i) willAnimateRotationToInterfaceOrientation:orientation duration:duration];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14.receiver = self;
  v14.super_class = SUViewController;
  [(SUViewController *)&v14 willAnimateRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v20 = *MEMORY[0x1E69E9840];
  _rotationController = [(SUViewController *)self _rotationController];
  v8 = _rotationController;
  if (_rotationController)
  {
    [_rotationController prepareToRotateToInterfaceOrientation:orientation];
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

          [*(*(&v15 + 1) + 8 * i) willRotateToInterfaceOrientation:orientation duration:duration];
        }

        v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v11);
    }
  }

  v14.receiver = self;
  v14.super_class = SUViewController;
  [(SUViewController *)&v14 willRotateToInterfaceOrientation:orientation duration:duration];
}

- (BOOL)window:(id)window shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  v21 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  v19.receiver = self;
  v19.super_class = SUViewController;
  v7 = [(SUViewController *)&v19 window:windowCopy shouldAutorotateToInterfaceOrientation:orientation];
  _rotationController = [(SUViewController *)self _rotationController];
  if (_rotationController)
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
            LOBYTE(v7) = [*(*(&v15 + 1) + 8 * i) window:windowCopy shouldAutorotateToInterfaceOrientation:{orientation, v15}];
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
  becomeFirstResponder = [(SUViewController *)&v5 becomeFirstResponder];
  if (becomeFirstResponder)
  {
    [(SUViewController *)self reloadInputViews];
  }

  return becomeFirstResponder;
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  if (!sel_isEqual(action, sel_remoteControlReceivedWithEvent_))
  {
    return 1;
  }

  v5 = +[SUAudioPlayerSessionManager sessionManager];
  allSessionURLs = [v5 allSessionURLs];
  v7 = [allSessionURLs count] != 0;

  return v7;
}

- (id)inputAccessoryView
{
  if ([(SUViewController *)self isVisibleAndFrontmost])
  {
    view = [(UIViewController *)self->_inputAccessoryViewController view];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SUViewController;
    view = [(SUViewController *)&v5 inputAccessoryView];
  }

  return view;
}

- (void)remoteControlReceivedWithEvent:(id)event
{
  v19 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([eventCopy type] == 2)
  {
    v4 = +[SUAudioPlayerSessionManager sessionManager];
    allSessionURLs = [v4 allSessionURLs];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [allSessionURLs countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(allSessionURLs);
        }

        v10 = [v4 audioPlayerForURL:*(*(&v14 + 1) + 8 * i)];
        subtype = [eventCopy subtype];
        if (subtype > 103)
        {
          if (subtype != 105)
          {
            if (subtype != 104)
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
          if (subtype == 102)
          {
            goto LABEL_14;
          }

          if (subtype == 103)
          {
            playerStatus = [v10 playerStatus];
            playerState = [playerStatus playerState];

            if (playerState == 2)
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

      v7 = [allSessionURLs countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v7)
      {
LABEL_19:

        break;
      }
    }
  }
}

- (void)_exitStoreButtonAction:(id)action
{
  clientInterface = [(SUViewController *)self clientInterface];
  [clientInterface _exitStoreWithReason:3];
}

- (void)_dismissFooterAnimationDidStop:(id)stop
{
  view = [(SUViewController *)self view];
  contentView = [view contentView];
  [view setContentView:0];
  [(SUViewController *)self setView:contentView];
  [(UIViewController *)self->_footerViewController viewDidDisappear:stop != 0];
  [(SUViewController *)self removeChildViewController:self->_footerViewController];
  footerViewController = self->_footerViewController;
  self->_footerViewController = 0;

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] endIgnoringInteractionEvents];
}

- (void)_presentFooterAnimationDidStop
{
  [(UIViewController *)self->_footerViewController viewDidAppear:1];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  [mEMORY[0x1E69DC668] endIgnoringInteractionEvents];
}

- (void)operation:(id)operation failedWithError:(id)error
{
  v26 = *MEMORY[0x1E69E9840];
  operationCopy = operation;
  errorCopy = error;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v11 = shouldLog | 2;
  }

  else
  {
    v11 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v11 &= 2u;
  }

  if (isKindOfClass)
  {
    if (v11)
    {
      v13 = objc_opt_class();
      v14 = v13;
      requestProperties = [operationCopy requestProperties];
      [requestProperties URL];
      v18 = 138544130;
      v19 = v13;
      v20 = 2114;
      v21 = operationCopy;
      v22 = 2112;
      v23 = errorCopy;
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
  v21 = operationCopy;
  v22 = 2112;
  v23 = errorCopy;
  v14 = v19;
  LODWORD(v17) = 32;
  v16 = _os_log_send_and_compose_impl();
LABEL_11:

  if (v16)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v16 encoding:{4, &v18, v17}];
    free(v16);
    SSFileLog();
    goto LABEL_13;
  }

LABEL_14:

  [operationCopy setDelegate:0];
  [(NSMutableArray *)self->_cancelOnDeallocOperations removeObject:operationCopy];
  [(NSMutableArray *)self->_operations removeObject:operationCopy];
}

- (void)operationFinished:(id)finished
{
  v19 = *MEMORY[0x1E69E9840];
  finishedCopy = finished;
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v7 = shouldLog | 2;
  }

  else
  {
    v7 = shouldLog;
  }

  oSLogObject = [mEMORY[0x1E69D4938] OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
  v16 = finishedCopy;
  v17 = 1024;
  success = [finishedCopy success];
  LODWORD(v12) = 28;
  v11 = _os_log_send_and_compose_impl();

  if (v11)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v11 encoding:{4, &v13, v12}];
    free(v11);
    SSFileLog();
LABEL_9:
  }

  [finishedCopy setDelegate:0];
  [(NSMutableArray *)self->_cancelOnDeallocOperations removeObject:finishedCopy];
  [(NSMutableArray *)self->_operations removeObject:finishedCopy];
}

- (void)_applicationDidEnterBackgroundNotification:(id)notification
{
  self->_isEnteringForeground = 0;
  [(SUViewController *)self _invalidateForMemoryPurge];

  [(SUViewController *)self applicationDidEnterBackground];
}

- (void)_applicationWillEnterForegroundNotification:(id)notification
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

- (void)_exitStoreButtonDidChangeNotification:(id)notification
{
  parentViewController = [(SUViewController *)self parentViewController];
  [(SUViewController *)self _reloadExitStoreButtonWithParentViewController:parentViewController];
}

- (void)_keyboardDidHideNotification:(id)notification
{
  notificationCopy = notification;
  parentViewController = [(SUViewController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    userInfo = [notificationCopy userInfo];
    [(UIViewController *)self keyboardDidHideWithInfo:userInfo];
  }
}

- (void)_keyboardDidShowNotification:(id)notification
{
  notificationCopy = notification;
  parentViewController = [(SUViewController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    userInfo = [notificationCopy userInfo];
    [(UIViewController *)self keyboardDidShowWithInfo:userInfo];
  }
}

- (void)_keyboardWillHideNotification:(id)notification
{
  notificationCopy = notification;
  parentViewController = [(SUViewController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    userInfo = [notificationCopy userInfo];
    [(UIViewController *)self keyboardWillHideWithInfo:userInfo];
  }
}

- (void)_keyboardWillShowNotification:(id)notification
{
  notificationCopy = notification;
  parentViewController = [(SUViewController *)self parentViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    userInfo = [notificationCopy userInfo];
    [(UIViewController *)self keyboardWillShowWithInfo:userInfo];
  }
}

- (void)_reloadLibraryButton
{
  parentViewController = [(SUViewController *)self parentViewController];
  [(SUViewController *)self _reloadExitStoreButtonWithParentViewController:parentViewController];
}

- (void)_invalidateForMemoryPurge
{
  if ([(SUViewController *)self shouldInvalidateForMemoryPurge])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = *MEMORY[0x1E69DDBE8];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__SUViewController__invalidateForMemoryPurge__block_invoke;
    v6[3] = &unk_1E8164320;
    v6[4] = &v7;
    v4 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithExpirationHandler:v6];
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

- (void)_reloadExitStoreButtonWithParentViewController:(id)controller
{
  controllerCopy = controller;
  if (!controllerCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || ([(UIViewController *)self overlayViewController], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    if (!self->_exitStoreButton)
    {
      goto LABEL_7;
    }

    navigationItemForScriptInterface = [(UIViewController *)self navigationItemForScriptInterface];
    SUNavigationItemRemoveButton(navigationItemForScriptInterface, self->_exitStoreButton);
    [(UIBarButtonItem *)self->_exitStoreButton setTarget:0];
    exitStoreButton = self->_exitStoreButton;
    self->_exitStoreButton = 0;
  }

  else
  {
    navigationItemForScriptInterface = self->_exitStoreButton;
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
    navigationItemForScriptInterface2 = [(UIViewController *)self navigationItemForScriptInterface];
    v12 = navigationItemForScriptInterface2;
    if (self->_exitStoreButton)
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      clientInterface = [(SUViewController *)self clientInterface];
      appearance = [clientInterface appearance];
      v17 = appearance;
      v18 = self->_exitStoreButton;
      if (userInterfaceIdiom == 1)
      {
        [appearance styleExitStoreButtonItem:v18];

        [v12 setLeftBarButtonItem:self->_exitStoreButton];
        [v12 setLeftItemsSupplementBackButton:1];
      }

      else
      {
        [appearance styleBarButtonItem:v18];

        [v12 setRightBarButtonItem:self->_exitStoreButton];
      }
    }

    else if (navigationItemForScriptInterface)
    {
      SUNavigationItemRemoveButton(navigationItemForScriptInterface2, navigationItemForScriptInterface);
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