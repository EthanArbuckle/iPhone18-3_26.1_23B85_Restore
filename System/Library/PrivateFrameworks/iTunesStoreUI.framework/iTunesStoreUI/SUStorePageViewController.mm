@interface SUStorePageViewController
+ (void)isLegacyWebViewForURL:(id)l bag:(id)bag completion:(id)completion;
- (BOOL)_isInTransientViewController;
- (BOOL)_reloadWithURLRequestProperties:(id)properties completionBlock:(id)block;
- (BOOL)_reloadWithURLRequestProperties:(id)properties preserveSectionControl:(BOOL)control;
- (BOOL)_sectionIsNetworkConstrained;
- (BOOL)_shouldDisplayControlsInNavigationBar;
- (BOOL)_shouldReloadForAppearance;
- (BOOL)isSkLoaded;
- (BOOL)loadMoreWithURL:(id)l;
- (BOOL)pushStorePage:(id)page withTarget:(int64_t)target animated:(BOOL)animated;
- (BOOL)reloadForSectionsWithGroup:(id)group;
- (BOOL)reloadWithURLRequestProperties:(id)properties;
- (BOOL)shouldExcludeFromNavigationHistory;
- (BOOL)showPreviewOverlay:(id)overlay animated:(BOOL)animated completionBlock:(id)block;
- (BOOL)viewIsReady;
- (CGRect)_frameForActiveViewController;
- (CGRect)documentBounds;
- (SSURLRequestProperties)URLRequestProperties;
- (SUStorePageViewController)init;
- (SUStorePageViewController)initWithTabBarItem:(id)item;
- (double)_expirationTime;
- (id)URLRequest;
- (id)_activePageSection;
- (id)_newBarButtonItemsWithButtonItems:(id)items replacingItemWithTag:(int64_t)tag withButtonItem:(id)item;
- (id)_newSegmentedControlWithItems:(id)items;
- (id)copyArchivableContext;
- (id)copyDefaultScriptProperties;
- (id)copyObjectForScriptFromPoolWithClass:(Class)class;
- (id)copyScriptProperties;
- (id)copyScriptViewController;
- (id)displayedURL;
- (id)iTunesStoreUI_searchFieldController;
- (id)navigationItemForScriptInterface;
- (id)newFetchOperation;
- (id)newPlaceholderViewController;
- (id)newRotationController;
- (id)newViewControllerForPage:(id)page ofType:(int64_t)type returningError:(id *)error;
- (id)setDisplayedSectionGroup:(id)group;
- (id)storePageProtocol;
- (void)_applyPropertiesToViewController:(id)controller;
- (void)_dismissNavigationMenuViewController;
- (void)_displaySegmentedControl:(id)control;
- (void)_documentBoundsChangeNotification:(id)notification;
- (void)_fetchPage:(BOOL)page;
- (void)_finishHandlingFailure;
- (void)_finishSuccessfulLoad;
- (void)_finishWebViewLoadWithResult:(BOOL)result error:(id)error;
- (void)_handleFailureWithError:(id)error;
- (void)_handleViewControllerBecameReady:(id)ready;
- (void)_logInternalEventWithOperation:(id)operation;
- (void)_moveChildViewController:(id)controller toOverlayForProtocol:(id)protocol;
- (void)_moveToRootSectionForChildViewController:(id)controller protocol:(id)protocol;
- (void)_navigationButtonAction:(id)action;
- (void)_navigationMenuButtonAction:(id)action;
- (void)_performActionForProtocolButton:(id)button;
- (void)_reloadBackgroundViewProperties;
- (void)_reloadForAppearance:(BOOL)appearance;
- (void)_reloadForNetworkTypeChange:(id)change;
- (void)_reloadNavigationBar;
- (void)_reloadNavigationButtons;
- (void)_reloadNavigationMenus;
- (void)_reloadPreviewOverlayVisibility;
- (void)_reloadSearchFieldWithSection:(id)section;
- (void)_reloadSectionButtons;
- (void)_reloadSectionsControlWithGroup:(id)group;
- (void)_renderStorePage:(id)page withType:(int64_t)type url:(id)url viewController:(id)controller block:(id)block;
- (void)_repositionForChildViewController:(id)controller;
- (void)_requestWebScriptReloadWithContext:(id)context;
- (void)_scriptEventNotification:(id)notification;
- (void)_sectionControlAction:(id)action;
- (void)_sendFailureAfterDialogsFinished:(id)finished;
- (void)_setActiveChildViewController:(id)controller shouldTearDown:(BOOL)down;
- (void)_setHeaderView:(id)view;
- (void)_setLeftNavigationItem:(id)item forTag:(int64_t)tag;
- (void)_setPendingChildViewController:(id)controller;
- (void)_setRightNavigationItem:(id)item forTag:(int64_t)tag;
- (void)_setSegmentedControl:(id)control;
- (void)_showPlaceholderViewControllerWithTearDown:(BOOL)down;
- (void)_tabConfigurationChanged:(id)changed;
- (void)_tearDownNavigationMenu;
- (void)_verifyStorePageProtocol:(id)protocol;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)controller;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)enqueueFetchOperation;
- (void)enqueueFetchOperationForPageSection:(id)section;
- (void)handleApplicationURL:(id)l withSourceApplication:(id)application sourceURL:(id)rL;
- (void)handleFailureWithError:(id)error;
- (void)hidePreviewOverlay:(id)overlay animated:(BOOL)animated completionBlock:(id)block;
- (void)iTunesStoreUI_searchFieldControllerDidChange:(id)change;
- (void)invalidate;
- (void)invalidateForMemoryPurge;
- (void)loadView;
- (void)menuViewController:(id)controller didSelectItemAtIndex:(int64_t)index;
- (void)menuViewController:(id)controller didTapButton:(id)button;
- (void)menuViewControllerDidCancel:(id)cancel;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)operation:(id)operation failedWithError:(id)error;
- (void)operation:(id)operation finishedWithOutput:(id)output;
- (void)popoverControllerDidDismissPopover:(id)popover;
- (void)reload;
- (void)reloadWithStorePage:(id)page ofType:(int64_t)type forURL:(id)l;
- (void)requestWebScriptReloadWithContext:(id)context;
- (void)resetNavigationItem:(id)item;
- (void)restoreArchivableContext:(id)context;
- (void)setClientContext:(id)context;
- (void)setParentViewController:(id)controller;
- (void)setScriptProperties:(id)properties;
- (void)setScriptUserInfo:(id)info;
- (void)setSection:(id)section;
- (void)setSkLoading:(BOOL)loading;
- (void)setURLRequestProperties:(id)properties;
- (void)showExternalURL:(id)l;
- (void)storePageProtocolDidChange;
- (void)tabBarControllerDidLongPressTabBarItem:(id)item;
- (void)tabBarControllerDidReselectTabBarItem:(id)item;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation SUStorePageViewController

- (SUStorePageViewController)init
{
  if (init_sOnce != -1)
  {
    [SUStorePageViewController init];
  }

  v8.receiver = self;
  v8.super_class = SUStorePageViewController;
  v3 = [(SUViewController *)&v8 init];
  v4 = v3;
  if (v3)
  {
    v3->_canMoveToOverlay = 1;
    v3->_shouldAdjustContentOffsets = 1;
    [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
    v4->_expirationTime = v5;
    v4->_reloadsWhenCacheExpired = 0;
    v4->_urlRequestProperties = objc_alloc_init(MEMORY[0x1E69D4970]);
    v4->_useWebViewFastPath = (init_sUseWebViewFastPath & 1) == 0;
    v4->_isInBackground = 0;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__reloadForNetworkTypeChange_ name:@"SUNetworkTypeChangedNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel__reloadPreviewOverlayVisibility name:@"SUPreviewOverlayVisibilityDidChangeNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel__scriptEventNotification_ name:@"SUScriptInterfaceGlobalEventNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel__tabConfigurationChanged_ name:@"SUTabBarConfigurationChangedNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel__documentBoundsChangeNotification_ name:@"SUViewControllerDocumentBoundsDidChangeNotification" object:0];
  }

  return v4;
}

uint64_t __33__SUStorePageViewController_init__block_invoke()
{
  result = dyld_program_sdk_at_least();
  if ((result & 1) == 0)
  {
    v1 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
    result = [v1 isEqualToString:*MEMORY[0x1E69E46A8]];
    if (result)
    {
      init_sUseWebViewFastPath = 1;
    }
  }

  return result;
}

- (SUStorePageViewController)initWithTabBarItem:(id)item
{
  v4 = [(SUStorePageViewController *)self init];
  if (v4)
  {
    underlyingTabBarItem = [item underlyingTabBarItem];
    [(SUStorePageViewController *)v4 setTabBarItem:underlyingTabBarItem];
    -[SUViewController setTitle:](v4, "setTitle:", [underlyingTabBarItem _internalTitle]);
    -[SSMutableURLRequestProperties setURL:](v4->_urlRequestProperties, "setURL:", [item rootURL]);
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"SUDialogDidFinishNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUNetworkTypeChangedNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUPreviewOverlayVisibilityDidChangeNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUScriptInterfaceGlobalEventNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUTabBarConfigurationChangedNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUViewControllerDocumentBoundsDidChangeNotification" object:0];
  if (self->_activeChildViewController)
  {
    [(SUStorePageViewController *)self removeChildViewController:?];
    activeChildViewController = self->_activeChildViewController;
  }

  else
  {
    activeChildViewController = 0;
  }

  [(SUViewController *)self->_pendingChildViewController removeObserver:self forKeyPath:@"viewIsReady"];
  allowedInterfaceOrientations = self->_allowedInterfaceOrientations;
  if (allowedInterfaceOrientations)
  {
    CFRelease(allowedInterfaceOrientations);
  }

  [(SUMenuViewController *)self->_navigationMenuViewController setDelegate:0];

  [(UIPopoverController *)self->_navigationMenuPopover setDelegate:0];
  [(SUSegmentedControl *)self->_segmentedControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  v6.receiver = self;
  v6.super_class = SUStorePageViewController;
  [(SUViewController *)&v6 dealloc];
}

- (void)_finishWebViewLoadWithResult:(BOOL)result error:(id)error
{
  if (!result)
  {
    if (ISErrorIsEqual())
    {
      self->_useWebViewFastPath = 0;

      [(SUStorePageViewController *)self _fetchPage:1];
    }

    else
    {

      [(SUStorePageViewController *)self _handleFailureWithError:error];
    }
  }
}

- (void)enqueueFetchOperation
{
  v31 = *MEMORY[0x1E69E9840];
  newFetchOperation = [(SUStorePageViewController *)self newFetchOperation];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __50__SUStorePageViewController_enqueueFetchOperation__block_invoke;
  v28[3] = &__block_descriptor_48_e5_v8__0ls32l8s40l8;
  v28[4] = self;
  v28[5] = newFetchOperation;
  [newFetchOperation setCompletionBlock:v28];
  if (self->_useWebViewFastPath)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v6 = shouldLog | 2;
    }

    else
    {
      v6 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v6 &= 2u;
    }

    if (v6)
    {
      v7 = objc_opt_class();
      v29 = 138543362;
      v30 = v7;
      LODWORD(v26) = 12;
      v25 = &v29;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v29, v26}];
        free(v9);
        v25 = v10;
        SSFileLog();
      }
    }

    v11 = [(SUStorePageViewController *)self newViewControllerForPage:0 ofType:1 returningError:0, v25];
  }

  else
  {
    v11 = 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
  if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
  {
    v15 = shouldLog2 | 2;
  }

  else
  {
    v15 = shouldLog2;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v15 &= 2u;
  }

  if (isKindOfClass)
  {
    if (v15)
    {
      v16 = objc_opt_class();
      v29 = 138543362;
      v30 = v16;
      LODWORD(v26) = 12;
      v25 = &v29;
      v17 = _os_log_send_and_compose_impl();
      if (v17)
      {
        v18 = v17;
        v19 = [MEMORY[0x1E696AEC0] stringWithCString:v17 encoding:{4, &v29, v26}];
        free(v18);
        v25 = v19;
        SSFileLog();
      }
    }

    v20 = [(SSMutableURLRequestProperties *)self->_urlRequestProperties URL];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __50__SUStorePageViewController_enqueueFetchOperation__block_invoke_32;
    v27[3] = &unk_1E81649F8;
    v27[4] = v11;
    v27[5] = newFetchOperation;
    v27[6] = self;
    [(SUStorePageViewController *)self _renderStorePage:0 withType:1 url:v20 viewController:v11 block:v27];
  }

  else
  {
    if (v15)
    {
      v21 = objc_opt_class();
      v29 = 138543362;
      v30 = v21;
      LODWORD(v26) = 12;
      v25 = &v29;
      v22 = _os_log_send_and_compose_impl();
      if (v22)
      {
        v23 = v22;
        v24 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v29, v26}];
        free(v23);
        v25 = v24;
        SSFileLog();
      }
    }

    [(SUViewController *)self enqueueOperation:newFetchOperation cancelOnDealloc:1, v25];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUStorePageViewController *)self _logInternalEventWithOperation:newFetchOperation];
  }
}

uint64_t __50__SUStorePageViewController_enqueueFetchOperation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) success];

  return [v1 setDidPageViewLoad:v2];
}

uint64_t __50__SUStorePageViewController_enqueueFetchOperation__block_invoke_32(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SUStorePageViewController_enqueueFetchOperation__block_invoke_2;
  v4[3] = &__block_descriptor_40_e20_v20__0B8__NSError_12ls32l8;
  v4[4] = a1[6];
  return [v2 _loadWithURLOperation:v1 completionBlock:v4];
}

- (void)enqueueFetchOperationForPageSection:(id)section
{
  v19 = *MEMORY[0x1E69E9840];
  newFetchOperation = [(SUStorePageViewController *)self newFetchOperation];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v8 = shouldLog | 2;
  }

  else
  {
    v8 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v15 = 138543618;
    v16 = objc_opt_class();
    v17 = 2112;
    v18 = [objc_msgSend(newFetchOperation "requestProperties")];
    LODWORD(v14) = 22;
    v13 = &v15;
    v9 = _os_log_send_and_compose_impl();
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v15, v14}];
      free(v10);
      v13 = v11;
      SSFileLog();
    }
  }

  uRLRequestProperties = [section URLRequestProperties];
  [newFetchOperation setRequestProperties:uRLRequestProperties];
  [(SUStorePageViewController *)self setSkLoading:1];
  [(SUStorePageViewController *)self setURLRequestProperties:uRLRequestProperties];
  [(SUViewController *)self enqueueOperation:newFetchOperation cancelOnDealloc:1];
}

- (id)newFetchOperation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  [v3 setAuthenticationContext:{-[SUStorePageViewController authenticationContext](self, "authenticationContext")}];
  [v3 setNeedsAuthentication:{-[SUStorePageViewController needsAuthentication](self, "needsAuthentication")}];
  [v3 setTracksPerformanceMetrics:SSDebugShouldTrackPerformance()];
  clientInterface = [(SUViewController *)self clientInterface];
  v5 = objc_alloc_init(SUStorePageDataProvider);
  [(SUStorePageDataProvider *)v5 setClientInterface:clientInterface];
  [v3 setDataProvider:v5];

  section = [(UIViewController *)self section];
  searchFieldConfiguration = [section searchFieldConfiguration];
  if ([(UIViewController *)self isRootViewController])
  {
    if ([section type] == 1)
    {
      if (searchFieldConfiguration)
      {
        v8 = [objc_msgSend(searchFieldConfiguration searchURLRequestPropertiesForNetworkType:{objc_msgSend(objc_msgSend(MEMORY[0x1E69E4778], "sharedInstance"), "networkType")), "requestParameters"}];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v8);
              }

              -[SSMutableURLRequestProperties setValue:forRequestParameter:](self->_urlRequestProperties, "setValue:forRequestParameter:", [v8 objectForKey:*(*(&v17 + 1) + 8 * i)], *(*(&v17 + 1) + 8 * i));
            }

            v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
          }

          while (v10);
        }
      }
    }
  }

  v13 = [(SSMutableURLRequestProperties *)self->_urlRequestProperties mutableCopy];
  userAgent = [(SUClientInterface *)clientInterface userAgent];
  if (userAgent)
  {
    [v13 setValue:userAgent forHTTPHeaderField:*MEMORY[0x1E69D4C40]];
  }

  clientIdentifier = [(SUClientInterface *)clientInterface clientIdentifier];
  if (clientIdentifier)
  {
    [v13 setClientIdentifier:clientIdentifier];
  }

  if (-[NSString isEqualToString:](-[SUClientInterface hostApplicationIdentifier](clientInterface, "hostApplicationIdentifier"), "isEqualToString:", @"com.apple.appstored") && [objc_msgSend(-[SSMutableURLRequestProperties URL](self->_urlRequestProperties "URL")])
  {
    [v13 setURLBagType:3];
  }

  [v3 setRequestProperties:v13];

  return v3;
}

- (id)newPlaceholderViewController
{
  v3 = [-[SUViewController viewControllerFactory](self "viewControllerFactory")];
  [v3 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
  copyScriptProperties = [(SUStorePageViewController *)self copyScriptProperties];
  section = [(UIViewController *)self section];
  if ([copyScriptProperties placeholderBackgroundGradient])
  {
    placeholderBackgroundGradient = [copyScriptProperties placeholderBackgroundGradient];
  }

  else
  {
    placeholderBackgroundGradient = [section backgroundGradient];
    if (!placeholderBackgroundGradient)
    {
      goto LABEL_5;
    }
  }

  [v3 setBackgroundGradient:placeholderBackgroundGradient];
LABEL_5:
  if ([copyScriptProperties backgroundColor])
  {
    backgroundColor = [copyScriptProperties backgroundColor];
  }

  else
  {
    backgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  [objc_msgSend(v3 "view")];
  loadingView = [v3 loadingView];
  [loadingView setActivityIndicatorStyle:{objc_msgSend(copyScriptProperties, "loadingIndicatorStyle")}];
  loadingIndicatorColor = [section loadingIndicatorColor];
  if (loadingIndicatorColor)
  {
    [loadingView setActivityIndicatorColor:loadingIndicatorColor];
  }

  loadingTextColor = [copyScriptProperties loadingTextColor];
  if (loadingTextColor || (loadingTextColor = [section loadingTextColor]) != 0)
  {
    [loadingView setTextColor:loadingTextColor];
  }

  loadingTextShadowColor = [copyScriptProperties loadingTextShadowColor];
  if (!loadingTextShadowColor)
  {
    loadingTextShadowColor = [section loadingTextShadowColor];
  }

  if ([copyScriptProperties loadingTextShadowColor])
  {
    [loadingView setTextShadowColor:loadingTextShadowColor];
  }

  return v3;
}

- (id)newViewControllerForPage:(id)page ofType:(int64_t)type returningError:(id *)error
{
  v7 = [-[SUViewController viewControllerFactory](self "viewControllerFactory")];
  [v7 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 _setPerformanceMetrics:self->_performanceMetrics];
  }

  if (error)
  {
    *error = 0;
  }

  return v7;
}

- (void)handleFailureWithError:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
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

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = [(SSMutableURLRequestProperties *)self->_urlRequestProperties URL];
    v16 = 138543874;
    v17 = v8;
    v18 = 2112;
    errorCopy = error;
    v20 = 2112;
    v21 = v9;
    LODWORD(v15) = 32;
    v14 = &v16;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v16, v15}];
      free(v11);
      v14 = v12;
      SSFileLog();
    }
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__sendFailureAfterDialogsFinished_ name:@"SUDialogDidFinishNotification" object:0];
  if (![(SUViewController *)self presentDialogForError:error pendUntilVisible:1])
  {
    [defaultCenter removeObserver:self name:@"SUDialogDidFinishNotification" object:0];
  }
}

- (BOOL)isSkLoaded
{
  if (self->_reloadOnAppear)
  {
    return 0;
  }

  if (![(SUStorePageViewController *)self isViewLoaded])
  {
    return 0;
  }

  if ([(SUViewController *)self isSkLoading])
  {
    return 0;
  }

  activeChildViewController = self->_activeChildViewController;
  if (!activeChildViewController || ![(SUViewController *)activeChildViewController isViewLoaded]|| [(UIViewController *)self->_activeChildViewController isSkLoaded])
  {
    return 0;
  }

  v5 = self->_activeChildViewController;

  return [(UIViewController *)v5 viewIsReady];
}

- (void)reloadWithStorePage:(id)page ofType:(int64_t)type forURL:(id)l
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v9 = [(SUStorePageViewController *)self newViewControllerForPage:page ofType:type returningError:&v30];
  if (v9)
  {
    v10 = v9;
    if ([(SSMutableURLRequestProperties *)self->_urlRequestProperties URL])
    {
      [(SSMutableURLRequestProperties *)self->_urlRequestProperties setURL:l];
    }

    canBeResolved = [(SUStorePageViewController *)self canBeResolved];
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v14 = shouldLog | 2;
    }

    else
    {
      v14 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (canBeResolved)
    {
      if (v14)
      {
LABEL_22:
        v22 = objc_opt_class();
        v23 = objc_opt_class();
        v31 = 138543874;
        v32 = v22;
        v33 = 2114;
        lCopy2 = v23;
        v35 = 2112;
        lCopy = l;
        LODWORD(v28) = 32;
        v27 = &v31;
        v24 = _os_log_send_and_compose_impl();
        if (v24)
        {
          v25 = v24;
          v26 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v31, v28}];
          free(v25);
          v27 = v26;
          SSFileLog();
        }
      }
    }

    else if (v14)
    {
      goto LABEL_22;
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __63__SUStorePageViewController_reloadWithStorePage_ofType_forURL___block_invoke;
    v29[3] = &unk_1E8164A20;
    v29[4] = v10;
    v29[5] = page;
    v29[6] = l;
    [(SUStorePageViewController *)self _renderStorePage:page withType:type url:l viewController:v10 block:v29, v27];

    return;
  }

  mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
  if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
  {
    v17 = shouldLog2 | 2;
  }

  else
  {
    v17 = shouldLog2;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v17 &= 2u;
  }

  if (v17)
  {
    v18 = objc_opt_class();
    v31 = 138543618;
    v32 = v18;
    v33 = 2112;
    lCopy2 = l;
    LODWORD(v28) = 22;
    v27 = &v31;
    v19 = _os_log_send_and_compose_impl();
    if (v19)
    {
      v20 = v19;
      v21 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v31, v28}];
      free(v20);
      v27 = v21;
      SSFileLog();
    }
  }

  [(SUStorePageViewController *)self _handleFailureWithError:v30, v27];
}

- (void)requestWebScriptReloadWithContext:(id)context
{
  if (!self->_reloadOnAppear && [(SUStorePageViewController *)self isViewLoaded]&& ![(SUViewController *)self isSkLoading]&& (activeChildViewController = self->_activeChildViewController) != 0 && [(SUViewController *)activeChildViewController isViewLoaded]&& ![(SUViewController *)self->_activeChildViewController isSkLoading]&& [(UIViewController *)self->_activeChildViewController viewIsReady])
  {

    [(SUStorePageViewController *)self _requestWebScriptReloadWithContext:context];
  }

  else
  {
    pendingWebScriptReloadContext = self->_pendingWebScriptReloadContext;
    if (pendingWebScriptReloadContext != context)
    {

      self->_pendingWebScriptReloadContext = [context copy];
    }
  }
}

- (void)resetNavigationItem:(id)item
{
  [item resetAllValues];
  [(SUStorePageViewController *)self _reloadSectionButtons];
  [(SUViewController *)self _reloadLibraryButton];
  section = [(UIViewController *)self section];

  [(SUStorePageViewController *)self _reloadSearchFieldWithSection:section];
}

- (void)setScriptUserInfo:(id)info
{
  scriptUserInfo = self->_scriptUserInfo;
  if (scriptUserInfo != info)
  {

    self->_scriptUserInfo = [info copy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter postNotificationName:@"SUStorePageViewControllerScriptUserInfoDidChangeNotification" object:self];
  }
}

- (void)setURLRequestProperties:(id)properties
{
  urlRequestProperties = self->_urlRequestProperties;
  if (urlRequestProperties != properties)
  {

    self->_urlRequestProperties = [properties mutableCopy];
  }
}

- (SSURLRequestProperties)URLRequestProperties
{
  v2 = [(SSMutableURLRequestProperties *)self->_urlRequestProperties copy];

  return v2;
}

- (id)URLRequest
{
  v2 = [objc_alloc(MEMORY[0x1E69E4818]) initWithRequestProperties:self->_urlRequestProperties];

  return v2;
}

- (void)applicationDidEnterBackground
{
  reloadOnAppear = self->_reloadOnAppear;
  isSkLoaded = 1;
  if (!reloadOnAppear)
  {
    isSkLoaded = [(SUStorePageViewController *)self isSkLoaded];
  }

  self->_reloadOnAppear = isSkLoaded;
  self->_isInBackground = 1;
  [(SUViewController *)self cancelOperations];
  [(SUStorePageViewController *)self setSkLoading:0];
  v5.receiver = self;
  v5.super_class = SUStorePageViewController;
  [(SUViewController *)&v5 applicationDidEnterBackground];
}

- (void)applicationWillEnterForeground
{
  self->_isInBackground = 0;
  if ([(SUStorePageViewController *)self _shouldReloadForAppearance])
  {
    [(SUStorePageViewController *)self _reloadForAppearance:0];
  }

  v3.receiver = self;
  v3.super_class = SUStorePageViewController;
  [(SUViewController *)&v3 applicationWillEnterForeground];
}

- (id)copyArchivableContext
{
  v7.receiver = self;
  v7.super_class = SUStorePageViewController;
  copyArchivableContext = [(SUViewController *)&v7 copyArchivableContext];
  if (copyArchivableContext)
  {
    copyArchivableContext2 = [(SUViewController *)self->_activeChildViewController copyArchivableContext];
    if (copyArchivableContext2)
    {
      v5 = copyArchivableContext2;

      copyArchivableContext = v5;
    }
  }

  [copyArchivableContext setType:1];
  if (![(SUStorePageViewController *)self shouldExcludeFromNavigationHistory])
  {
    [copyArchivableContext setValue:-[SUStorePageViewController displayedURL](self forMetadataKey:{"displayedURL"), @"url"}];
    [copyArchivableContext setValue:-[SUStorePageViewController scriptUserInfo](self forMetadataKey:{"scriptUserInfo"), @"scriptUserInfo"}];
    [copyArchivableContext setValue:-[SUStorePageViewController URLRequestProperties](self forMetadataKey:{"URLRequestProperties"), @"urlRequestProperties"}];
  }

  return copyArchivableContext;
}

- (id)copyDefaultScriptProperties
{
  pendingChildViewController = self->_pendingChildViewController;
  if (pendingChildViewController)
  {
LABEL_4:
    result = [(SUViewController *)pendingChildViewController copyDefaultScriptProperties];
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (![(SUStorePageViewController *)self isSkLoaded])
  {
    pendingChildViewController = self->_activeChildViewController;
    goto LABEL_4;
  }

LABEL_5:
  v5.receiver = self;
  v5.super_class = SUStorePageViewController;
  return [(SUViewController *)&v5 copyDefaultScriptProperties];
}

- (id)copyObjectForScriptFromPoolWithClass:(Class)class
{
  pendingChildViewController = self->_pendingChildViewController;
  if (pendingChildViewController)
  {
LABEL_4:
    result = [(UIViewController *)pendingChildViewController copyObjectForScriptFromPoolWithClass:class];
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (![(SUStorePageViewController *)self isSkLoaded])
  {
    pendingChildViewController = self->_activeChildViewController;
    goto LABEL_4;
  }

LABEL_5:
  v7.receiver = self;
  v7.super_class = SUStorePageViewController;
  return [(UIViewController *)&v7 copyObjectForScriptFromPoolWithClass:class];
}

- (id)copyScriptProperties
{
  pendingChildViewController = self->_pendingChildViewController;
  if (pendingChildViewController)
  {
LABEL_4:
    result = [(SUViewController *)pendingChildViewController copyScriptProperties];
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (![(SUStorePageViewController *)self isSkLoaded])
  {
    pendingChildViewController = self->_activeChildViewController;
    goto LABEL_4;
  }

LABEL_5:
  v5.receiver = self;
  v5.super_class = SUStorePageViewController;
  return [(SUViewController *)&v5 copyScriptProperties];
}

- (id)copyScriptViewController
{
  v3 = objc_alloc_init(SUScriptStorePageViewController);
  [(SUScriptStorePageViewController *)v3 setNativeViewController:self];
  return v3;
}

- (void)didMoveToParentViewController:(id)controller
{
  [(SUStorePageViewController *)self _reloadPreviewOverlayVisibility];
  v5.receiver = self;
  v5.super_class = SUStorePageViewController;
  [(SUStorePageViewController *)&v5 didMoveToParentViewController:controller];
}

- (id)displayedURL
{
  displayedURL = [(UIViewController *)self->_activeChildViewController displayedURL];
  sections = [(SUPageSectionGroup *)self->_sectionsGroup sections];
  if (displayedURL)
  {
    return displayedURL;
  }

  v6 = sections;
  if ([(NSArray *)sections count])
  {
    v7 = [objc_msgSend(-[NSArray objectAtIndex:](v6 objectAtIndex:{self->_activeSectionIndex), "URLRequestProperties"), "URL"}];
    if (v7)
    {
      return v7;
    }
  }

  urlRequestProperties = self->_urlRequestProperties;

  return [(SSMutableURLRequestProperties *)urlRequestProperties URL];
}

- (CGRect)documentBounds
{
  activeChildViewController = self->_activeChildViewController;
  if (activeChildViewController && [(UIViewController *)activeChildViewController viewIsReady])
  {
    [(UIViewController *)self->_activeChildViewController documentBounds];
  }

  else
  {
    v4 = *MEMORY[0x1E695F050];
    v5 = *(MEMORY[0x1E695F050] + 8);
    v6 = *(MEMORY[0x1E695F050] + 16);
    v7 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)handleApplicationURL:(id)l withSourceApplication:(id)application sourceURL:(id)rL
{
  if ([l storeURLType] == 1)
  {
    [(SUStorePageViewController *)self _reloadSearchFieldWithSection:[(UIViewController *)self section]];
    searchFieldController = self->_searchFieldController;

    [(SUSearchFieldController *)searchFieldController handleSearchURL:l withSourceApplication:application sourceURL:rL];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SUStorePageViewController;
    [(SUViewController *)&v10 handleApplicationURL:l withSourceApplication:application sourceURL:rL];
  }
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = SUStorePageViewController;
  [(SUViewController *)&v4 invalidate];
  title = [(SUNavigationItem *)[(SUViewController *)self navigationItem] title];
  [(SUViewController *)self cancelOperations];
  [(SUStorePageViewController *)self setSkLoading:0];
  [(SUStorePageViewController *)self _setPendingChildViewController:0];

  self->_sectionsGroup = 0;
  if (([(SUStorePageViewController *)self isViewLoaded]& 1) != 0)
  {
    [(SUStorePageViewController *)self showPlaceholderViewController];
    [(SUStorePageViewController *)self resetNavigationItem:[(SUStorePageViewController *)self navigationItemForScriptInterface]];
  }

  else
  {
    [(SUStorePageViewController *)self _setActiveChildViewController:0 shouldTearDown:1];
  }

  self->_reloadOnAppear = 1;
  [(SUNavigationItem *)[(SUViewController *)self navigationItem] setTitle:title];
}

- (void)invalidateForMemoryPurge
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(SUViewController *)self isVisible]|| [(SUStorePageViewController *)self presentedViewController]|| self->_isInBackground)
  {
    sections = [(SUPageSectionGroup *)self->_sectionsGroup sections];
    v4 = [(NSArray *)sections count];
    if (v4 >= 1)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        if (i != self->_activeSectionIndex)
        {
          [-[NSArray objectAtIndex:](sections objectAtIndex:{i), "setUserInfo:", 0}];
        }
      }
    }
  }

  else
  {
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

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v16 = 138412546;
      v17 = objc_opt_class();
      v18 = 2112;
      displayedURL = [(SUStorePageViewController *)self displayedURL];
      LODWORD(v14) = 22;
      v13 = &v16;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v16, v14}];
        free(v11);
        v13 = v12;
        SSFileLog();
      }
    }

    [(SUStorePageViewController *)self invalidate];
  }

  v15.receiver = self;
  v15.super_class = SUStorePageViewController;
  [(SUViewController *)&v15 invalidateForMemoryPurge];
}

- (id)iTunesStoreUI_searchFieldController
{
  v2 = self->_searchFieldController;

  return v2;
}

- (void)iTunesStoreUI_searchFieldControllerDidChange:(id)change
{
  if ([objc_msgSend(MEMORY[0x1E69DC938] currentDevice] != 1)
  {
    view = [(SUViewController *)self->_activeChildViewController view];

    [view setHidden:1];
  }
}

- (BOOL)loadMoreWithURL:(id)l
{
  pageType = self->_pageType;
  if (pageType == 1)
  {
    -[SSMutableURLRequestProperties setURLs:](self->_urlRequestProperties, "setURLs:", [MEMORY[0x1E695DEC8] arrayWithObjects:{l, 0}]);
    [(SUStorePageViewController *)self reloadWithURLRequestProperties:self->_urlRequestProperties];
  }

  return pageType == 1;
}

- (void)loadView
{
  v5 = [[SUStorePageView alloc] initWithFrame:0.0, 0.0, 0.0, 1.0];
  [(SUStorePageView *)v5 setAutoresizingMask:18];
  [(SUStorePageViewController *)self setView:v5];
  [(SUStorePageViewController *)self _reloadBackgroundViewProperties];
  activeChildViewController = self->_activeChildViewController;
  if (activeChildViewController)
  {
    view = [(SUViewController *)activeChildViewController view];
    [(SUStorePageViewController *)self _frameForActiveViewController];
    [view setFrame:?];
    [(SUStorePageView *)v5 setContentView:[(SUViewController *)self->_activeChildViewController view]];
    goto LABEL_7;
  }

  if ([(SUStorePageViewController *)self canBeResolved])
  {
    self->_reloadOnAppear = 1;
  }

  else if (![(SUStorePageViewController *)self _shouldShowPlaceholderForEmptyPage])
  {
    goto LABEL_7;
  }

  [(SUStorePageViewController *)self showPlaceholderViewController];
LABEL_7:
  [(SUStorePageViewController *)self _reloadSectionButtons];
  [(SUStorePageViewController *)self _reloadSearchFieldWithSection:[(UIViewController *)self section]];
}

- (id)navigationItemForScriptInterface
{
  pendingChildViewController = self->_pendingChildViewController;
  if (pendingChildViewController)
  {
LABEL_4:
    result = [(UIViewController *)pendingChildViewController navigationItemForScriptInterface];
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (![(SUStorePageViewController *)self isSkLoaded])
  {
    pendingChildViewController = self->_activeChildViewController;
    goto LABEL_4;
  }

LABEL_5:
  v5.receiver = self;
  v5.super_class = SUStorePageViewController;
  return [(UIViewController *)&v5 navigationItemForScriptInterface];
}

- (id)newRotationController
{
  v3 = [SUStorePageRotationController alloc];

  return [(SURotationController *)v3 initWithViewController:self];
}

- (BOOL)pushStorePage:(id)page withTarget:(int64_t)target animated:(BOOL)animated
{
  animatedCopy = animated;
  overlayViewController = [(UIViewController *)self overlayViewController];
  tabBarController = [(SUStorePageViewController *)self tabBarController];
  if (!tabBarController)
  {
    tabBarController = [(SUClientInterface *)[(SUViewController *)self clientInterface] tabBarController];
  }

  [(SUTabBarController *)tabBarController dismissOverlayBackgroundViewController];
  if (target != 2)
  {
    goto LABEL_18;
  }

  if (!self)
  {
    goto LABEL_9;
  }

  selfCopy = self;
  do
  {
    _popoverController = [(SUStorePageViewController *)selfCopy _popoverController];
    popoverPresentationController = [(SUStorePageViewController *)selfCopy popoverPresentationController];
    parentViewController = [(SUStorePageViewController *)selfCopy parentViewController];
    if (_popoverController | popoverPresentationController)
    {
      break;
    }

    selfCopy = parentViewController;
  }

  while (parentViewController);
  if (!(_popoverController | popoverPresentationController))
  {
LABEL_9:
    if (!overlayViewController)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (_popoverController)
  {
    [_popoverController dismissPopoverAnimated:animatedCopy];
  }

  else if (popoverPresentationController)
  {
    [(SUStorePageViewController *)self dismissViewControllerAnimated:animatedCopy completion:0];
  }

  transientViewController = [(SUTabBarController *)tabBarController transientViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_16:
    transientViewController = [(UITabBarController *)tabBarController selectedNavigationController];
  }

  if (!transientViewController)
  {
LABEL_18:
    transientViewController = [(SUViewController *)self navigationController];
  }

  [transientViewController pushViewController:page animated:animatedCopy];
  return 1;
}

- (BOOL)reloadForSectionsWithGroup:(id)group
{
  groupCopy = group;
  if (!group && self->_loadingForSectionChange)
  {
    groupCopy = [(SUPageSectionGroup *)self->_sectionsGroup copy];
    [groupCopy setDefaultSectionIndex:self->_activeSectionIndex];
  }

  if (![(SUPageSectionGroup *)self->_sectionsGroup isEqual:groupCopy])
  {

    self->_sectionsGroup = groupCopy;
    self->_activeSectionIndex = [groupCopy defaultSectionIndex];
  }

  [objc_msgSend(MEMORY[0x1E69DD258] transitionSafePerformer:{self), "_reloadSectionsControlWithGroup:", groupCopy}];
  [-[SUStorePageViewController _activePageSection](self "_activePageSection")];
  return 1;
}

- (void)reload
{
  section = [(UIViewController *)self section];
  if (section)
  {
    v4 = section;
    -[SSMutableURLRequestProperties setURLs:](self->_urlRequestProperties, "setURLs:", [MEMORY[0x1E695DEC8] arrayWithObjects:{objc_msgSend(section, "url"), 0}]);
    -[SSMutableURLRequestProperties setURLBagKey:](self->_urlRequestProperties, "setURLBagKey:", [v4 urlBagKey]);
  }

  [(SUStorePageViewController *)self reloadWithURLRequestProperties:self->_urlRequestProperties];
  v5.receiver = self;
  v5.super_class = SUStorePageViewController;
  [(SUViewController *)&v5 reload];
}

- (BOOL)reloadWithURLRequestProperties:(id)properties
{
  v16 = *MEMORY[0x1E69E9840];
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

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v14 = 138543362;
    v15 = objc_opt_class();
    LODWORD(v13) = 12;
    v12 = &v14;
    v8 = _os_log_send_and_compose_impl();
    if (v8)
    {
      v9 = v8;
      v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v14, v13}];
      free(v9);
      v12 = v10;
      SSFileLog();
    }
  }

  return [(SUStorePageViewController *)self _reloadWithURLRequestProperties:properties completionBlock:0, v12];
}

- (void)restoreArchivableContext:(id)context
{
  v5 = [context valueForMetadataKey:@"scriptUserInfo"];
  if (v5)
  {
    [(SUStorePageViewController *)self setScriptUserInfo:v5];
  }

  v6 = [context valueForMetadataKey:@"urlRequestProperties"];
  if (v6 || (v6 = [context valueForMetadataKey:@"urlRequest"]) != 0)
  {
    v7 = v6;

    self->_urlRequestProperties = [v7 mutableCopy];
  }

  v8 = [context valueForMetadataKey:@"url"];
  if (v8)
  {
    -[SSMutableURLRequestProperties setURLs:](self->_urlRequestProperties, "setURLs:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v8, 0}]);
  }

  v9 = [context valueForMetadataKey:@"urlBagKey"];
  if (v9)
  {
    [(SSMutableURLRequestProperties *)self->_urlRequestProperties setURLBagKey:v9];
  }

  v10.receiver = self;
  v10.super_class = SUStorePageViewController;
  [(SUViewController *)&v10 restoreArchivableContext:context];
}

- (id)setDisplayedSectionGroup:(id)group
{
  sections = [group sections];
  if ([sections count])
  {
    v6 = -[SUStorePageViewController _newSegmentedControlWithItems:](self, "_newSegmentedControlWithItems:", [sections valueForKey:@"segmentedControlItem"]);
    if (![group style] && _UIApplicationUsesLegacyUI())
    {
      [v6 setSegmentedControlStyle:2];
    }

    [v6 setTintColor:{objc_msgSend(group, "tintColor")}];
    [v6 setTintStyle:{objc_msgSend(group, "tintStyle")}];
    [(SUStorePageViewController *)self _displaySegmentedControl:v6];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setSkLoading:(BOOL)loading
{
  loadingCopy = loading;
  self->_lastLoadDidFail = 0;
  self->_loadingForSectionChange &= loading;
  [(SUViewController *)self->_activeChildViewController setSkLoading:?];
  v5.receiver = self;
  v5.super_class = SUStorePageViewController;
  [(SUViewController *)&v5 setSkLoading:loadingCopy];
}

- (void)setParentViewController:(id)controller
{
  section = [(UIViewController *)self section];
  v6.receiver = self;
  v6.super_class = SUStorePageViewController;
  [(SUViewController *)&v6 setParentViewController:controller];
  if (controller && section != [(UIViewController *)self section]&& [(SUStorePageViewController *)self isViewLoaded])
  {
    [(SUStorePageViewController *)self _reloadSearchFieldWithSection:[(UIViewController *)self section]];
  }
}

- (void)setSection:(id)section
{
  if (![(SSMutableURLRequestProperties *)self->_urlRequestProperties URL])
  {
    -[SSMutableURLRequestProperties setURLs:](self->_urlRequestProperties, "setURLs:", [MEMORY[0x1E695DEC8] arrayWithObjects:{objc_msgSend(section, "url"), 0}]);
  }

  if (![(SSMutableURLRequestProperties *)self->_urlRequestProperties URLBagKey])
  {
    -[SSMutableURLRequestProperties setURLBagKey:](self->_urlRequestProperties, "setURLBagKey:", [section urlBagKey]);
  }

  if ([(SUStorePageViewController *)self isViewLoaded])
  {
    [(SUStorePageViewController *)self _reloadSearchFieldWithSection:section];
  }

  v5.receiver = self;
  v5.super_class = SUStorePageViewController;
  [(SUViewController *)&v5 setSection:section];
}

- (void)setScriptProperties:(id)properties
{
  v4.receiver = self;
  v4.super_class = SUStorePageViewController;
  [(SUViewController *)&v4 setScriptProperties:properties];
  if ([(SUStorePageViewController *)self isViewLoaded])
  {
    [(SUStorePageViewController *)self _reloadBackgroundViewProperties];
  }

  [(SUStorePageViewController *)self _applyPropertiesToViewController:self->_pendingChildViewController];
  [(SUStorePageViewController *)self _applyPropertiesToViewController:self->_activeChildViewController];
}

- (BOOL)shouldExcludeFromNavigationHistory
{
  v16 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SUStorePageViewController;
  if ([(SUViewController *)&v14 shouldExcludeFromNavigationHistory]|| [(SUViewController *)self->_activeChildViewController shouldExcludeFromNavigationHistory])
  {
    goto LABEL_3;
  }

  v4 = [-[SUStorePageViewController storePageProtocol](self "storePageProtocol")];
  v3 = [v4 count];
  if (!v3)
  {
    return v3;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (!v5)
  {
LABEL_3:
    LOBYTE(v3) = 1;
  }

  else
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([SUClientDispatch matchesClientApplication:*(*(&v10 + 1) + 8 * i)])
        {
          LOBYTE(v3) = 0;
          return v3;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
      LOBYTE(v3) = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (id)storePageProtocol
{
  result = [(UIViewController *)self->_activeChildViewController storePageProtocol];
  if (!result)
  {
    result = self->_lastValidProtocol;
    if (!result)
    {
      v4.receiver = self;
      v4.super_class = SUStorePageViewController;
      return [(UIViewController *)&v4 storePageProtocol];
    }
  }

  return result;
}

- (void)storePageProtocolDidChange
{
  storePageProtocol = [(SUStorePageViewController *)self storePageProtocol];
  v4 = storePageProtocol;
  if (storePageProtocol)
  {
    lastValidProtocol = self->_lastValidProtocol;
    if (lastValidProtocol != storePageProtocol)
    {

      self->_lastValidProtocol = v4;
    }
  }

  [(SUStorePageViewController *)self _verifyStorePageProtocol:v4];
  [objc_msgSend(MEMORY[0x1E69DD258] transitionSafePerformer:{self), "_reloadNavigationBar"}];
  if ([(SUStorePageViewController *)self isSkLoaded])
  {
    if ([(SUStorePageProtocol *)v4 shouldDisplayInOverlay]&& ![(UIViewController *)self overlayViewController]&& [(SUStorePageViewController *)self canMoveToOverlay])
    {
      [(SUStorePageViewController *)self _moveChildViewController:self->_activeChildViewController toOverlayForProtocol:v4];
    }

    else
    {
      [objc_msgSend(MEMORY[0x1E69DD258] transitionSafePerformer:{self), "_repositionForChildViewController:", self->_activeChildViewController}];
    }
  }

  v6.receiver = self;
  v6.super_class = SUStorePageViewController;
  [(SUViewController *)&v6 storePageProtocolDidChange];
}

- (void)tabBarControllerDidLongPressTabBarItem:(id)item
{
  if (![(SUStorePageViewController *)self isSkLoaded]&& [(SUViewController *)self isVisibleAndFrontmost])
  {
    uRLRequestProperties = [(SUStorePageViewController *)self URLRequestProperties];
    if ([(SSURLRequestProperties *)uRLRequestProperties URL])
    {
      copyURLRequest = [(SSURLRequestProperties *)uRLRequestProperties copyURLRequest];
      [objc_msgSend(MEMORY[0x1E695AC38] "sharedURLCache")];
    }

    [(SUStorePageViewController *)self reloadWithURLRequestProperties:uRLRequestProperties];
  }
}

- (void)tabBarControllerDidReselectTabBarItem:(id)item
{
  if (self->_lastLoadDidFail && ![(SUStorePageViewController *)self isSkLoaded]&& [(SUViewController *)self isVisibleAndFrontmost])
  {
    uRLRequestProperties = [(SUStorePageViewController *)self URLRequestProperties];

    [(SUStorePageViewController *)self reloadWithURLRequestProperties:uRLRequestProperties];
  }
}

- (BOOL)viewIsReady
{
  activeChildViewController = self->_activeChildViewController;
  if (activeChildViewController)
  {
    LOBYTE(activeChildViewController) = [(UIViewController *)activeChildViewController viewIsReady];
  }

  return activeChildViewController;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  if (self->_reloadOnAppear && [(SUStorePageViewController *)self _shouldFetchAutomatically])
  {
    [(SUStorePageViewController *)self _reloadForAppearance:appearCopy];
    self->_reloadOnAppear = [(SUStorePageViewController *)self _sectionIsNetworkConstrained];
  }

  v5.receiver = self;
  v5.super_class = SUStorePageViewController;
  [(SUViewController *)&v5 viewDidAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SUStorePageViewController;
  [(SUViewController *)&v4 viewDidDisappear:disappear];
  if ([(SUViewController *)self isSkLoading])
  {
    self->_reloadOnAppear = 1;
    [(SUStorePageViewController *)self showPlaceholderViewController];
    [(SUStorePageViewController *)self setSkLoading:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (!+[SUScriptNavigationSimulator transitioning])
  {
    section = [(UIViewController *)self section];
    [(SUStorePageViewController *)self _reloadSearchFieldWithSection:section];
    if ([section type] == 1)
    {
      if ([(UIViewController *)self isRootViewController])
      {
        if (![(SUStorePageViewController *)self _shouldFetchAutomatically])
        {
          text = [(UISearchBar *)[(SUSearchFieldController *)self->_searchFieldController searchBar] text];
          if ([(NSString *)text length])
          {
            v7 = [(SUSearchFieldController *)self->_searchFieldController newRequestPropertiesWithSearchTerm:text];
            if ([v7 URL])
            {
              -[SSMutableURLRequestProperties setURL:](self->_urlRequestProperties, "setURL:", [v7 URL]);
            }

            if ([v7 URLBagKey])
            {
              -[SSMutableURLRequestProperties setURLBagKey:](self->_urlRequestProperties, "setURLBagKey:", [v7 URLBagKey]);
            }

            if ([v7 requestParameters])
            {
              -[SSMutableURLRequestProperties setRequestParameters:](self->_urlRequestProperties, "setRequestParameters:", [v7 requestParameters]);
            }
          }
        }
      }
    }

    [(SUStorePageViewController *)self _reloadForAppearance:appearCopy];
    [(SUStorePageViewController *)self _reloadPreviewOverlayVisibility];
    v8.receiver = self;
    v8.super_class = SUStorePageViewController;
    [(SUViewController *)&v8 viewWillAppear:appearCopy];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (!+[SUScriptNavigationSimulator transitioning])
  {
    if (self->_navigationMenuPopover)
    {
      [(SUStorePageViewController *)self _dismissNavigationMenuViewController];
    }

    SUButtonActionDeactivateNavigationItem([(SUViewController *)self navigationItem]);
    [(SUViewController *)self cancelOperations];
    v5.receiver = self;
    v5.super_class = SUStorePageViewController;
    [(SUViewController *)&v5 viewWillDisappear:disappearCopy];
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  if (self->_navigationMenuPopover)
  {
    navigationItemForScriptInterface = [(SUStorePageViewController *)self navigationItemForScriptInterface];
    navigationMenu = [(SUNavigationMenuViewController *)self->_navigationMenuViewController navigationMenu];
    if ([(SUNavigationMenu *)navigationMenu location])
    {
      if ([(SUNavigationMenu *)navigationMenu location]!= 1)
      {
        goto LABEL_8;
      }

      rightBarButtonItem = [navigationItemForScriptInterface rightBarButtonItem];
    }

    else
    {
      rightBarButtonItem = [navigationItemForScriptInterface leftBarButtonItem];
    }

    v7 = rightBarButtonItem;
    if (rightBarButtonItem)
    {
      [(UIPopoverController *)self->_navigationMenuPopover presentPopoverFromBarButtonItem:rightBarButtonItem permittedArrowDirections:15 animated:1];
      goto LABEL_9;
    }

LABEL_8:
    [(SUStorePageViewController *)self _tearDownNavigationMenu];
  }

LABEL_9:
  v9.receiver = self;
  v9.super_class = SUStorePageViewController;
  [(SUViewController *)&v9 didRotateFromInterfaceOrientation:orientation];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  v4.receiver = self;
  v4.super_class = SUStorePageViewController;
  [(SUViewController *)&v4 willAnimateRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)willRotateToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  [(UIPopoverController *)self->_navigationMenuPopover dismissPopoverAnimated:0];
  [(SUSearchFieldController *)self->_searchFieldController willRotateToInterfaceOrientation:orientation];
  v7.receiver = self;
  v7.super_class = SUStorePageViewController;
  [(SUViewController *)&v7 willRotateToInterfaceOrientation:orientation duration:duration];
}

- (void)operation:(id)operation failedWithError:(id)error
{
  v22 = *MEMORY[0x1E69E9840];
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

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v16 = 138543874;
    v17 = objc_opt_class();
    v18 = 2112;
    errorCopy = error;
    v20 = 2112;
    displayedURL = [(SUStorePageViewController *)self displayedURL];
    LODWORD(v14) = 32;
    v13 = &v16;
    v10 = _os_log_send_and_compose_impl();
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v16, v14}];
      free(v11);
      v13 = v12;
      SSFileLog();
    }
  }

  [(SUStorePageViewController *)self _handleFailureWithError:error, v13];
  v15.receiver = self;
  v15.super_class = SUStorePageViewController;
  [(SUViewController *)&v15 operation:operation failedWithError:error];
}

- (void)operation:(id)operation finishedWithOutput:(id)output
{
  v33 = *MEMORY[0x1E69E9840];
  response = [operation response];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([response itunes_expirationInterval], v8 >= 0.0))
  {
    v9 = v8 + CFAbsoluteTimeGetCurrent();
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
  }

  self->_expirationTime = v9;

  self->_performanceMetrics = [operation performanceMetrics];
  dataProvider = [operation dataProvider];
  outputType = [dataProvider outputType];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v14 = shouldLog | 2;
  }

  else
  {
    v14 = shouldLog;
  }

  if (os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 & 2;
  }

  if (v15)
  {
    v24 = objc_opt_class();
    v25[0] = @"statusCode";
    v26[0] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(response, "statusCode")}];
    v25[1] = @"correlationId";
    v16 = [objc_msgSend(response "allHeaderFields")];
    v17 = v16 ? v16 : @"<unknown>";
    v26[1] = v17;
    v25[2] = @"pageType";
    v26[2] = [MEMORY[0x1E696AD98] numberWithInteger:outputType];
    v25[3] = @"URL";
    v18 = [objc_msgSend(response "URL")];
    v19 = v18 ? v18 : @"<unknown>";
    v26[3] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
    v27 = 138543874;
    v28 = v24;
    v29 = 2114;
    operationCopy = operation;
    v31 = 2112;
    v32 = v20;
    LODWORD(v23) = 32;
    v21 = _os_log_send_and_compose_impl();
    if (v21)
    {
      v22 = v21;
      [MEMORY[0x1E696AEC0] stringWithCString:v21 encoding:{4, &v27, v23}];
      free(v22);
      SSFileLog();
    }
  }

  if (outputType == 5)
  {
    [(SUClientInterface *)[(SUViewController *)self clientInterface] _dispatchOnPageResponseWithData:output response:response];
  }

  else
  {
    -[SUStorePageViewController reloadWithStorePage:ofType:forURL:](self, "reloadWithStorePage:ofType:forURL:", output, [dataProvider outputType], objc_msgSend(response, "URL"));
  }
}

- (void)setClientContext:(id)context
{
  clientInterface = [context clientInterface];

  [(SUViewController *)self setClientInterface:clientInterface];
}

- (void)showExternalURL:(id)l
{
  underlyingURL = [l underlyingURL];
  referrerApplicationName = [l referrerApplicationName];
  referrerURLString = [l referrerURLString];

  [(SUStorePageViewController *)self handleApplicationURL:underlyingURL withSourceApplication:referrerApplicationName sourceURL:referrerURLString];
}

- (void)menuViewController:(id)controller didSelectItemAtIndex:(int64_t)index
{
  navigationMenuViewController = self->_navigationMenuViewController;
  if (navigationMenuViewController == controller)
  {
    v6 = [(NSArray *)[[(SUNavigationMenuViewController *)navigationMenuViewController navigationMenu] menuItems] objectAtIndex:index];
    v7 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:{objc_msgSend(v6, "URL")}];
    [(SUStorePageViewController *)self _dismissNavigationMenuViewController];
    [(SUStorePageViewController *)self _reloadWithURLRequestProperties:v7 preserveSectionControl:1];
  }
}

- (void)menuViewController:(id)controller didTapButton:(id)button
{
  if (self->_navigationMenuViewController == controller)
  {
    [(SUStorePageViewController *)self _dismissNavigationMenuViewController];
    v7 = [MEMORY[0x1E69DD258] transitionSafePerformer:self];

    [v7 _performActionForProtocolButton:button];
  }
}

- (void)menuViewControllerDidCancel:(id)cancel
{
  if (self->_navigationMenuViewController == cancel)
  {
    [(SUStorePageViewController *)self _dismissNavigationMenuViewController];
  }
}

- (void)hidePreviewOverlay:(id)overlay animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  view = [(SUStorePageViewController *)self view];
  view2 = [overlay view];
  [view setPreviewOverlayView:view2];
  [view layoutIfNeeded];
  [view setPreviewOverlayView:0];
  [view addSubview:view2];
  v11 = 0.0;
  if (animatedCopy)
  {
    +[SUPreviewOverlayViewController defaultAnimationDuration];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__SUStorePageViewController_hidePreviewOverlay_animated_completionBlock___block_invoke;
  v13[3] = &unk_1E8164370;
  v13[4] = view2;
  v13[5] = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__SUStorePageViewController_hidePreviewOverlay_animated_completionBlock___block_invoke_2;
  v12[3] = &unk_1E8164A48;
  v12[4] = block;
  [MEMORY[0x1E69DD250] animateWithDuration:v13 animations:v12 completion:v11];
}

uint64_t __73__SUStorePageViewController_hidePreviewOverlay_animated_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) frame];
  [*(a1 + 32) setFrame:?];
  v2 = [*(a1 + 40) view];

  return [v2 layoutSubviews];
}

uint64_t __73__SUStorePageViewController_hidePreviewOverlay_animated_completionBlock___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)showPreviewOverlay:(id)overlay animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  view = [(SUStorePageViewController *)self view];
  headerView = [view headerView];
  if (headerView)
  {
    view2 = [overlay view];
    [view setPreviewOverlayView:view2];
    [view bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [view2 frame];
    v20 = v19;
    v21 = *MEMORY[0x1E695EFF8];
    v22 = -v19;
    v28.origin.x = v12;
    v28.origin.y = v14;
    v28.size.width = v16;
    v28.size.height = v18;
    Width = CGRectGetWidth(v28);
    [view2 setFrame:{v21, v22, Width, v20}];
    v24 = 0.0;
    if (animatedCopy)
    {
      [objc_opt_class() defaultAnimationDuration];
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __73__SUStorePageViewController_showPreviewOverlay_animated_completionBlock___block_invoke;
    v27[3] = &unk_1E8164348;
    v27[4] = view;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __73__SUStorePageViewController_showPreviewOverlay_animated_completionBlock___block_invoke_2;
    v26[3] = &unk_1E8164A70;
    *&v26[6] = v21;
    *&v26[7] = v22;
    *&v26[8] = Width;
    *&v26[9] = v20;
    v26[4] = view;
    v26[5] = block;
    [MEMORY[0x1E69DD250] animateWithDuration:v27 animations:v26 completion:v24];
  }

  return headerView != 0;
}

void __73__SUStorePageViewController_showPreviewOverlay_animated_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  [v3 setBackgroundColor:{objc_msgSend(*(a1 + 32), "backgroundColor")}];
  [*(a1 + 32) setPreviewOverlayView:v3];
}

- (void)popoverControllerDidDismissPopover:(id)popover
{
  if (self->_navigationMenuPopover == popover)
  {
    [(SUStorePageViewController *)self _tearDownNavigationMenu];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pendingChildViewController = self->_pendingChildViewController;
  if (pendingChildViewController && [(UIViewController *)pendingChildViewController viewIsReady:path])
  {
    v8 = self->_pendingChildViewController;

    [(SUStorePageViewController *)self _handleViewControllerBecameReady:v8];
  }
}

- (void)_documentBoundsChangeNotification:(id)notification
{
  object = [notification object];
  if (object != self && [(UIViewController *)object isDescendantOfViewController:self])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter postNotificationName:@"SUViewControllerDocumentBoundsDidChangeNotification" object:self];
  }
}

- (void)_reloadForNetworkTypeChange:(id)change
{
  if ([objc_msgSend(MEMORY[0x1E69E4778] sharedInstance] >= 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SUStorePageViewController__reloadForNetworkTypeChange___block_invoke;
    block[3] = &unk_1E8164348;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __57__SUStorePageViewController__reloadForNetworkTypeChange___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isVisible];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _reloadForAppearance:0];
  }

  return result;
}

- (void)_scriptEventNotification:(id)notification
{
  userInfo = [notification userInfo];
  if ([objc_msgSend(userInfo objectForKey:{@"viewController", "isDescendantOfViewController:", self}] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [objc_msgSend(userInfo objectForKey:{@"payload", "dataUsingEncoding:", 4}];
    if (v5)
    {
      v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:0];
    }

    else
    {
      v6 = 0;
    }

    selfCopy = self;
    delegate = self->_delegate;
    v9 = [userInfo objectForKey:@"name"];

    [(SUStorePageViewControllerDelegate *)delegate storePageViewController:self didReceiveScriptEvent:v9 payload:v6];
  }
}

- (void)_sendFailureAfterDialogsFinished:(id)finished
{
  if (![+[SUDialogManager numberOfPendingDialogs] sharedInstance]
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

    [(SUStorePageViewController *)self _finishHandlingFailure];
  }
}

- (void)_tabConfigurationChanged:(id)changed
{
  [(SUStorePageViewController *)self _reloadNavigationBar];
  section = [(UIViewController *)self section];

  [(SUStorePageViewController *)self _reloadSearchFieldWithSection:section];
}

- (void)_navigationButtonAction:(id)action
{
  v4 = [action tag];
  if (v4 == 1851944034)
  {
    v5 = SUProtocolButtonLocationLeft;
  }

  else
  {
    if (v4 != 1851945570)
    {
      return;
    }

    v5 = SUProtocolButtonLocationRight;
  }

  v6 = [-[SUStorePageViewController storePageProtocol](self "storePageProtocol")];
  if (v6)
  {

    [(SUStorePageViewController *)self _performActionForProtocolButton:v6];
  }
}

- (void)_navigationMenuButtonAction:(id)action
{
  if (self->_navigationMenuViewController)
  {

    [(SUStorePageViewController *)self _dismissNavigationMenuViewController];
  }

  else
  {
    v5 = [action tag];
    if (v5 == 1852664930)
    {
      v6 = 0;
    }

    else
    {
      if (v5 != 1852666466)
      {
        return;
      }

      v6 = 1;
    }

    v7 = [-[SUStorePageViewController storePageProtocol](self "storePageProtocol")];
    if (v7)
    {
      v8 = [[SUNavigationMenuViewController alloc] initWithNavigationMenu:v7];
      self->_navigationMenuViewController = v8;
      [(SUViewController *)v8 setClientInterface:[(SUViewController *)self clientInterface]];
      [(SUMenuViewController *)self->_navigationMenuViewController setDelegate:self];
      v10 = [[SUNavigationController alloc] initWithRootViewController:self->_navigationMenuViewController];
      [(SUNavigationController *)v10 setClientInterface:[(SUViewController *)self clientInterface]];
      if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
      {
        v9 = [objc_alloc(MEMORY[0x1E69DCDD8]) initWithContentViewController:v10];
        self->_navigationMenuPopover = v9;
        [(UIPopoverController *)v9 _setPopoverBackgroundStyle:3];
        [(UIPopoverController *)self->_navigationMenuPopover setDelegate:self];
        [(UIPopoverController *)self->_navigationMenuPopover presentPopoverFromBarButtonItem:action permittedArrowDirections:15 animated:1];
      }

      else
      {
        [(SUStorePageViewController *)self presentViewController:v10 animated:1 completion:0];
      }

      [(UISearchBar *)[(SUSearchFieldController *)self->_searchFieldController searchBar] resignFirstResponder];
    }
  }
}

- (void)_sectionControlAction:(id)action
{
  selectedItemIndex = [action selectedItemIndex];
  if (self->_activeSectionIndex != selectedItemIndex)
  {
    v5 = selectedItemIndex;
    sections = [(SUPageSectionGroup *)self->_sectionsGroup sections];
    if ([(SUStorePageViewController *)self isSkLoaded])
    {
      [(SUStorePageViewController *)self _setPendingChildViewController:0];
      [(SUViewController *)self cancelOperations];
    }

    else
    {
      [-[NSArray objectAtIndex:](sections objectAtIndex:{self->_activeSectionIndex), "setUserInfo:", self->_activeChildViewController}];
    }

    [(SUStorePageViewController *)self _dismissNavigationMenuViewController];
    self->_activeSectionIndex = v5;
    [(SUSegmentedControl *)self->_segmentedControl setSelectedItemIndex:v5];
    v7 = [(NSArray *)sections objectAtIndex:self->_activeSectionIndex];
    if ([v7 userInfo] && (-[SUStorePageViewController _expirationTime](self, "_expirationTime"), v8 > CFAbsoluteTimeGetCurrent()))
    {
      userInfo = [v7 userInfo];
      [userInfo _setExistingNavigationItem:{-[SUViewController navigationItem](self, "navigationItem")}];
      [userInfo _setExistingTabBarItem:{-[SUStorePageViewController _existingTabBarItem](self, "_existingTabBarItem")}];
      [(SUStorePageViewController *)self _setActiveChildViewController:userInfo shouldTearDown:0];
      [(SUStorePageViewController *)self storePageProtocolDidChange];

      [(SUStorePageViewController *)self setSkLoading:0];
    }

    else
    {
      if (![(UIViewController *)self->_activeChildViewController canDisplaySectionGroup:self->_sectionsGroup])
      {
        [(SUStorePageViewController *)self _setPendingChildViewController:0];
        [(SUStorePageViewController *)self _showPlaceholderViewControllerWithTearDown:0];
      }

      self->_loadingForSectionChange = 1;

      [(SUStorePageViewController *)self enqueueFetchOperationForPageSection:v7];
    }
  }
}

- (BOOL)_reloadWithURLRequestProperties:(id)properties completionBlock:(id)block
{
  loadBlock = self->_loadBlock;
  if (loadBlock != block)
  {

    self->_loadBlock = [block copy];
  }

  [(SUStorePageViewController *)self setURLRequestProperties:properties];
  self->_reloadOnAppear = 1;
  if ([(SUStorePageViewController *)self _sectionIsNetworkConstrained])
  {
    return 0;
  }

  return [(SUStorePageViewController *)self _reloadWithURLRequestProperties:properties preserveSectionControl:0];
}

- (void)_setHeaderView:(id)view
{
  view = [(SUStorePageViewController *)self view];
  if ([view headerView] != view)
  {
    [view setHeaderView:view];

    [(SUStorePageViewController *)self _reloadPreviewOverlayVisibility];
  }
}

- (void)_setSegmentedControl:(id)control
{
  if (self->_segmentedControl != control)
  {
    navigationItemForScriptInterface = [(SUStorePageViewController *)self navigationItemForScriptInterface];
    titleView = [navigationItemForScriptInterface titleView];
    segmentedControl = self->_segmentedControl;
    if (titleView == segmentedControl)
    {
      v8 = self->_segmentedControl;
    }

    else
    {
      if (-[SUSegmentedControl isDescendantOfView:](segmentedControl, "isDescendantOfView:", [-[SUStorePageViewController view](self "view")]))
      {
        [(SUStorePageViewController *)self _setHeaderView:0];
      }

      [(SUSegmentedControl *)self->_segmentedControl removeFromSuperview];
      v8 = self->_segmentedControl;
    }

    [(SUSegmentedControl *)v8 removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

    self->_segmentedControl = control;
    section = [(UIViewController *)self section];
    if (section)
    {
      -[SUSegmentedControl setTintStyle:](self->_segmentedControl, "setTintStyle:", [section defaultPNGStyle] == 1);
    }

    if (self->_segmentedControl)
    {
      [(SUStorePageViewController *)self _displaySegmentedControl:?];
    }

    if (titleView == segmentedControl)
    {
      v10 = self->_segmentedControl;
      if (!v10 || [(SUSegmentedControl *)v10 isDescendantOfView:[(SUStorePageViewController *)self view]])
      {
        [navigationItemForScriptInterface setTitleView:0];
      }
    }

    pendingChildViewController = self->_pendingChildViewController;
    if (!pendingChildViewController)
    {
      pendingChildViewController = self->_activeChildViewController;
    }

    if ([(SUViewController *)pendingChildViewController isViewLoaded])
    {
      view = [(SUViewController *)pendingChildViewController view];
      [(SUStorePageViewController *)self _frameForActiveViewController];

      [view setFrame:?];
    }
  }
}

- (id)_activePageSection
{
  sections = [(SUPageSectionGroup *)self->_sectionsGroup sections];
  activeSectionIndex = self->_activeSectionIndex;
  if (activeSectionIndex >= [(NSArray *)sections count])
  {
    return 0;
  }

  v5 = self->_activeSectionIndex;

  return [(NSArray *)sections objectAtIndex:v5];
}

- (void)_applyPropertiesToViewController:(id)controller
{
  _cachedScriptProperties = [(SUViewController *)self _cachedScriptProperties];

  [controller setScriptProperties:_cachedScriptProperties];
}

- (void)_dismissNavigationMenuViewController
{
  [(UIViewController *)self->_navigationMenuViewController dismissAnimated:1];

  [(SUStorePageViewController *)self _tearDownNavigationMenu];
}

- (void)_displaySegmentedControl:(id)control
{
  if ([(SUStorePageViewController *)self _shouldDisplaySegmentedControlInNavigationBar:?])
  {
    if (_UIApplicationUsesLegacyUI())
    {
      [control setSegmentedControlStyle:2];
    }

    [control sizeToFitUserInterfaceIdiom];
    navigationItemForScriptInterface = [(SUStorePageViewController *)self navigationItemForScriptInterface];

    [navigationItemForScriptInterface setTitleView:control];
  }

  else
  {
    view = [(SUStorePageViewController *)self view];
    if ([control conformsToProtocol:&unk_1F423BE40])
    {
      [control setDeferringInterfaceUpdates:0];
    }

    [control setSegmentedControlStyle:7];
    v7 = [[SUSegmentedControlBar alloc] initWithSegmentedControl:control];
    [(SUSegmentedControlBar *)v7 sizeToFit];
    [(SUSegmentedControlBar *)v7 frame];
    [view bounds];
    [(SUSegmentedControlBar *)v7 setFrame:0.0, 0.0];
    [(SUStorePageViewController *)self _setHeaderView:v7];
  }
}

- (double)_expirationTime
{
  _activePageSection = [(SUStorePageViewController *)self _activePageSection];
  if (!_activePageSection)
  {
    return self->_expirationTime;
  }

  [_activePageSection expirationTime];
  return result;
}

- (void)_fetchPage:(BOOL)page
{
  pageCopy = page;
  if (![(SUStorePageViewController *)self isSkLoaded]|| pageCopy)
  {
    [(SUStorePageViewController *)self setSkLoading:1];

    [(SUStorePageViewController *)self enqueueFetchOperation];
  }
}

- (void)_finishHandlingFailure
{
  v16 = *MEMORY[0x1E69E9840];
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

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v14 = 138543362;
    v15 = objc_opt_class();
    LODWORD(v13) = 12;
    v12 = &v14;
    v6 = _os_log_send_and_compose_impl();
    if (v6)
    {
      v7 = v6;
      v8 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:{4, &v14, v13}];
      free(v7);
      v12 = v8;
      SSFileLog();
    }
  }

  presentingViewController = [(SUStorePageViewController *)self presentingViewController];
  _popoverController = [(SUStorePageViewController *)self _popoverController];
  if (_popoverController)
  {
    [_popoverController dismissPopoverAnimated:1];
  }

  else if (presentingViewController)
  {
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }

  [-[NSObject responderChainProxy:](self responderChainProxy:{&unk_1F427EE60), "storePage:finishedWithSuccess:", self, 0}];
  loadBlock = self->_loadBlock;
  if (loadBlock)
  {
    loadBlock[2](loadBlock, 0);

    self->_loadBlock = 0;
  }

  self->_pendingWebScriptReloadContext = 0;
}

- (void)_finishSuccessfulLoad
{
  v17 = *MEMORY[0x1E69E9840];
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

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_INFO))
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v15 = 138543362;
    v16 = objc_opt_class();
    LODWORD(v14) = 12;
    v13 = &v15;
    v6 = _os_log_send_and_compose_impl();
    if (v6)
    {
      v7 = v6;
      v8 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:{4, &v15, v14}];
      free(v7);
      v13 = v8;
      SSFileLog();
    }
  }

  [(SUStorePageViewController *)self _setPendingChildViewController:0, v13];
  [(SUStorePageViewController *)self setSkLoading:0];
  self->_reloadOnAppear = 0;
  [(SUStorePageViewController *)self _applyPropertiesToViewController:self->_activeChildViewController];
  if ((_finishSuccessfulLoad_sDidFinishOnce & 1) == 0)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    if ([mEMORY[0x1E69DC668] shouldRecordExtendedLaunchTime])
    {
      [mEMORY[0x1E69DC668] finishedTest:objc_msgSend(mEMORY[0x1E69DC668] extraResults:{"_launchTestName"), 0}];
    }

    _finishSuccessfulLoad_sDidFinishOnce = 1;
  }

  [-[NSObject responderChainProxy:](self responderChainProxy:{&unk_1F427EE60), "storePage:finishedWithSuccess:", self, 1}];
  loadBlock = self->_loadBlock;
  if (loadBlock)
  {
    loadBlock[2](loadBlock, 1);

    self->_loadBlock = 0;
  }

  pendingWebScriptReloadContext = self->_pendingWebScriptReloadContext;
  if (pendingWebScriptReloadContext)
  {
    v12 = pendingWebScriptReloadContext;

    self->_pendingWebScriptReloadContext = 0;
    [(SUStorePageViewController *)self _requestWebScriptReloadWithContext:v12];
  }
}

- (CGRect)_frameForActiveViewController
{
  view = [(SUStorePageViewController *)self view];
  if (view)
  {
    v4 = view;
    [-[SUStorePageViewController view](self "view")];
    v6 = v5;
    MaxY = v7;
    v10 = v9;
    v12 = v11;
    if (![(UIViewController *)self->_activeChildViewController canDisplaySectionGroup:self->_sectionsGroup]&& [(SUSegmentedControl *)self->_segmentedControl isDescendantOfView:v4])
    {
      [(SUSegmentedControl *)self->_segmentedControl frame];
      MaxY = CGRectGetMaxY(v17);
      [v4 bounds];
      v12 = CGRectGetHeight(v18) - MaxY;
    }
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    MaxY = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
  }

  v13 = v6;
  v14 = MaxY;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_handleFailureWithError:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  self->_lastLoadDidFail = 1;
  self->_reloadOnAppear = 1;
  [(SUStorePageViewController *)self setSkLoading:0];
  [(SUStorePageViewController *)self handleFailureWithError:error];
  if ([(NSArray *)[(SUViewController *)self _pendingDialogs] count]|| [+[SUDialogManager numberOfPendingDialogs] sharedInstance]
  {
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

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v17 = 138543874;
      v18 = objc_opt_class();
      v19 = 2048;
      v20 = [(NSArray *)[(SUViewController *)self _pendingDialogs] count];
      v21 = 2048;
      numberOfPendingDialogs = [+[SUDialogManager sharedInstance](SUDialogManager numberOfPendingDialogs];
      LODWORD(v15) = 32;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v17, v15}];
        free(v9);
        SSFileLog();
      }
    }
  }

  else
  {
    showDialogOnError = [(SUClientInterface *)[(SUViewController *)self clientInterface] showDialogOnError];
    if (error && showDialogOnError)
    {
      v11 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:objc_msgSend(v11 message:"localizedStringForKey:value:table:" preferredStyle:{@"GENERIC_ERROR", &stru_1F41B3660, 0), 0, 1}];
      v13 = MEMORY[0x1E69DC648];
      v14 = [v11 localizedStringForKey:@"OK" value:&stru_1F41B3660 table:0];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __53__SUStorePageViewController__handleFailureWithError___block_invoke;
      v16[3] = &unk_1E8164A98;
      v16[4] = self;
      [v12 addAction:{objc_msgSend(v13, "actionWithTitle:style:handler:", v14, 0, v16)}];
      [(SUStorePageViewController *)self presentViewController:v12 animated:1 completion:0];
    }

    else
    {

      [(SUStorePageViewController *)self _finishHandlingFailure];
    }
  }
}

- (void)_handleViewControllerBecameReady:(id)ready
{
  storePageProtocol = [ready storePageProtocol];
  if ([storePageProtocol shouldDisplayInOverlay] && !-[UIViewController overlayViewController](self, "overlayViewController") && -[SUStorePageViewController canMoveToOverlay](self, "canMoveToOverlay"))
  {
    [(SUStorePageViewController *)self _verifyStorePageProtocol:storePageProtocol];
    [(SUStorePageViewController *)self _moveToRootSectionForChildViewController:ready protocol:storePageProtocol];
    [(SUStorePageViewController *)self _moveChildViewController:ready toOverlayForProtocol:storePageProtocol];
  }

  else
  {
    [(SUStorePageViewController *)self _setActiveChildViewController:ready shouldTearDown:1];
    [(SUStorePageViewController *)self _finishSuccessfulLoad];
    [(SUStorePageViewController *)self storePageProtocolDidChange];
  }

  [(SUStorePageViewController *)self _reloadPreviewOverlayVisibility];
}

- (BOOL)_isInTransientViewController
{
  v3 = [-[SUStorePageViewController tabBarController](self "tabBarController")];
  if (v3)
  {

    LOBYTE(v3) = [(UIViewController *)self isDescendantOfViewController:v3];
  }

  return v3;
}

- (void)_logInternalEventWithOperation:(id)operation
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_didRecordLoggingEvent)
  {
    self->_didRecordLoggingEvent = 1;
    mEMORY[0x1E69E47F8] = [MEMORY[0x1E69E47F8] sharedCache];
    v6 = [mEMORY[0x1E69E47F8] URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)}];
    v7 = SSIsInternalBuild();
    v8 = [v6 valueForKey:@"samplePercentWebInternalLogging"];
    if (objc_opt_respondsToSelector())
    {
      [v8 doubleValue];
      v10 = v9;
    }

    else
    {
      v10 = v7 ? 1.0 : 0.1;
    }

    v11 = drand48();
    if (v11 >= 0.0 && v11 <= 1.0 && v11 <= v10)
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v14 = shouldLog | 2;
      }

      else
      {
        v14 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v22 = 138412290;
        v23 = objc_opt_class();
        LODWORD(v21) = 12;
        v15 = _os_log_send_and_compose_impl();
        if (v15)
        {
          v16 = v15;
          [MEMORY[0x1E696AEC0] stringWithCString:v15 encoding:{4, &v22, v21}];
          free(v16);
          SSFileLog();
        }
      }

      v17 = [objc_alloc(MEMORY[0x1E698CA38]) initWithSubsystem:@"iTunesStoreUI" category:objc_msgSend(MEMORY[0x1E696AEC0] error:{"stringWithFormat:", @"%@:%@", objc_opt_class(), -[SUClientInterface hostApplicationIdentifier](-[SUViewController clientInterface](self, "clientInterface"), "hostApplicationIdentifier")), 0}];
      v18 = MEMORY[0x1E696AEC0];
      v19 = [objc_msgSend(operation "requestProperties")];
      [v17 setErrorMessage:{objc_msgSend(v18, "stringWithFormat:", @"%@", objc_msgSend(v19, "ams_URLByReplaceingQueryParameters:", MEMORY[0x1E695E0F8]))}];
      v20 = [objc_alloc(MEMORY[0x1E69E4720]) initWithURLBag:v6];
      [objc_msgSend(MEMORY[0x1E698CA00] internalInstanceUsingBag:{v20), "enqueueEvent:", v17}];
    }
  }
}

- (void)_moveChildViewController:(id)controller toOverlayForProtocol:(id)protocol
{
  activeChildViewController = self->_activeChildViewController;
  if (activeChildViewController == controller)
  {
    [(UIViewController *)activeChildViewController storePageCleanupBeforeTearDown];
    [(SUViewController *)self->_activeChildViewController _setExistingNavigationItem:0];
    [(SUViewController *)self->_activeChildViewController _setExistingTabBarItem:0];
    v8 = self->_activeChildViewController;
    self->_activeChildViewController = 0;
  }

  if ([controller isViewLoaded])
  {
    [objc_msgSend(controller "view")];
  }

  [(SUStorePageViewController *)self removeChildViewController:controller];
  v16 = objc_alloc_init(objc_opt_class());
  [v16 _setActiveChildViewController:controller shouldTearDown:1];
  [v16 setAuthenticationContext:{-[SUStorePageViewController authenticationContext](self, "authenticationContext")}];
  [v16 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
  [v16 setNeedsAuthentication:{-[SUStorePageViewController needsAuthentication](self, "needsAuthentication")}];
  [v16 setURLRequestProperties:self->_urlRequestProperties];
  [objc_msgSend(v16 "navigationItem")];
  [controller _setExistingNavigationItem:{objc_msgSend(v16, "navigationItem")}];
  [controller _setExistingTabBarItem:{objc_msgSend(v16, "_existingTabBarItem")}];
  v9 = [SUClientDispatch overlayConfigurationForStorePage:v16];
  if (v9)
  {
    v10 = v9;
    v11 = [[SUNavigationController alloc] initWithRootViewController:v16];
    [(SUNavigationController *)v11 setClientInterface:[(SUViewController *)self clientInterface]];
    [(UIViewController *)self presentViewController:v11 inOverlayWithConfiguration:v10];
  }

  else
  {
    v11 = objc_alloc_init(SUOverlayViewController);
    [(SUNavigationController *)v11 setClientInterface:[(SUViewController *)self clientInterface]];
    if ([(SUViewController *)self navigationController])
    {
      v12 = [[SUNavigationController alloc] initWithRootViewController:v16];
      [(SUNavigationController *)v12 setClientInterface:[(SUViewController *)self clientInterface]];
      [(SUNavigationController *)v12 setNavigationBarHidden:1];
      [(SUNavigationController *)v11 setBackViewController:v12];
    }

    else
    {
      [(SUNavigationController *)v11 setBackViewController:v16];
    }

    [(UIViewController *)self presentOverlayViewController:v11 withTransition:0];
  }

  [-[UIViewController overlayBackgroundViewController](self "overlayBackgroundViewController")];
  overlayBackgroundURLRequestProperties = [protocol overlayBackgroundURLRequestProperties];
  [(SUStorePageViewController *)self _finishSuccessfulLoad];
  [(SUStorePageViewController *)self showPlaceholderViewController];
  if (overlayBackgroundURLRequestProperties)
  {

    self->_urlRequestProperties = [overlayBackgroundURLRequestProperties mutableCopy];
    [(SUStorePageViewController *)self _fetchPage:0];
  }

  else
  {
    tabBarController = [(SUStorePageViewController *)self tabBarController];
    if (-[UIViewController isDescendantOfViewController:](self, "isDescendantOfViewController:", [tabBarController transientViewController]))
    {
      selfCopy = self;
      [tabBarController setTransientViewController:0 animated:0];
    }

    else if ([(SUStorePageViewController *)self _popoverController])
    {
      [-[SUStorePageViewController _popoverController](self "_popoverController")];
    }

    else
    {
      [(SUStorePageViewController *)self setURLRequestProperties:0];
    }
  }
}

- (void)_moveToRootSectionForChildViewController:(id)controller protocol:(id)protocol
{
  if ([(SUStorePageViewController *)self isExternalRequest])
  {
    if (+[SUClientDispatch isTabBarControllerLoaded])
    {
      v7 = +[SUClientDispatch tabBarController];
      if ([(UIViewController *)self isDescendantOfViewController:v7])
      {
        hasDisplayableContent = [controller hasDisplayableContent];
        rootSectionIdentifier = [protocol rootSectionIdentifier];
        if (rootSectionIdentifier)
        {
          v10 = rootSectionIdentifier;
          if (hasDisplayableContent)
          {
            if ([protocol shouldReplaceRootViewController])
            {

              [v7 setTransientViewController:self onSectionWithIdentifier:v10];
            }

            else
            {

              [v7 pushTransientViewController:self onSectionWithIdentifier:v10];
            }
          }

          else
          {

            [v7 setSelectedIdentifier:rootSectionIdentifier];
          }
        }

        else if ((hasDisplayableContent & 1) == 0)
        {

          [v7 selectDefaultSection];
        }
      }
    }
  }
}

- (id)_newBarButtonItemsWithButtonItems:(id)items replacingItemWithTag:(int64_t)tag withButtonItem:(id)item
{
  v7 = [items mutableCopy];
  v8 = v7;
  if (item)
  {
    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    if (![v8 count])
    {
      goto LABEL_15;
    }

    v9 = 0;
    while ([objc_msgSend(v8 objectAtIndex:{v9), "tag"}] != tag)
    {
      if (++v9 >= [v8 count])
      {
        goto LABEL_15;
      }
    }

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v8 replaceObjectAtIndex:v9 withObject:item];
    }

    else
    {
LABEL_15:
      [v8 addObject:item];
    }
  }

  else if ([v7 count])
  {
    v10 = 0;
    while ([objc_msgSend(v8 objectAtIndex:{v10), "tag"}] != tag)
    {
      if (++v10 >= [v8 count])
      {
        return v8;
      }
    }

    [v8 removeObjectAtIndex:v10];
  }

  return v8;
}

- (id)_newSegmentedControlWithItems:(id)items
{
  v5 = [(SUStorePageViewController *)self copyObjectForScriptFromPoolWithClass:objc_opt_class()];
  [v5 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
  [v5 setItems:items];
  return v5;
}

- (void)_performActionForProtocolButton:(id)button
{
  buttonTarget = [button buttonTarget];
  if ([buttonTarget isEqualToString:@"external"])
  {
    v6 = [button URL];
    clientInterface = [(SUViewController *)self clientInterface];

    SUOpenExternalURL(v6, clientInterface);
  }

  else
  {
    if ([buttonTarget isEqualToString:@"self"])
    {
      v10 = [(SSMutableURLRequestProperties *)self->_urlRequestProperties mutableCopy];
      [v10 setURLs:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", objc_msgSend(button, "URL"), 0)}];
      [(SUStorePageViewController *)self reloadWithURLRequestProperties:v10];
    }

    else
    {
      v8 = [buttonTarget isEqualToString:@"account"];
      v10 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:{objc_msgSend(button, "URL")}];
      if (v8)
      {
        v9 = objc_alloc_init(SUAccountViewController);
        [(SUViewController *)v9 setClientInterface:[(SUViewController *)self clientInterface]];
        [(SUStorePageViewController *)v9 setURLRequestProperties:v10];
        [SUClientDispatch enterAccountFlowWithViewController:v9 animated:1];
      }

      else
      {
        v9 = [-[SUViewController viewControllerFactory](self "viewControllerFactory")];
        [(SUViewController *)v9 setClientInterface:[(SUViewController *)self clientInterface]];
        [(SUStorePageViewController *)v9 setURLRequestProperties:v10];
        [(SUStorePageViewController *)self pushStorePage:v9 withTarget:0 animated:1];
      }
    }
  }
}

- (void)_reloadBackgroundViewProperties
{
  view = [(SUStorePageViewController *)self view];
  copyScriptProperties = [(SUStorePageViewController *)self copyScriptProperties];
  if ([copyScriptProperties usesBlurredBackground])
  {
    backdropView = self->_backdropView;
    if (!backdropView)
    {
      backdropView = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:2020];
      self->_backdropView = backdropView;
    }

    [view setBackdropView:backdropView];
    [view setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
    [view setOpaque:0];
  }

  else
  {
    backgroundColor = [copyScriptProperties backgroundColor];
    if (!backgroundColor)
    {
      backgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    }

    [view setBackgroundColor:backgroundColor];
    [backgroundColor alphaComponent];
    [view setOpaque:v6 == 1.0];
    [view setBackdropView:0];

    self->_backdropView = 0;
  }
}

- (void)_reloadForAppearance:(BOOL)appearance
{
  v23 = *MEMORY[0x1E69E9840];
  _reloadsWhenCacheExpired = [(SUStorePageViewController *)self _reloadsWhenCacheExpired];
  if ([(SUStorePageViewController *)self presentedViewController])
  {
    _reloadsWhenCacheExpired = 0;
  }

  else if (![(UIViewController *)self overlayViewController])
  {
    _reloadsWhenCacheExpired = ([(UIViewController *)self overlayBackgroundViewController]== 0) & _reloadsWhenCacheExpired;
  }

  _sectionIsNetworkConstrained = [(SUStorePageViewController *)self _sectionIsNetworkConstrained];
  v6 = _sectionIsNetworkConstrained;
  if (_sectionIsNetworkConstrained)
  {
    v7 = [-[SUViewController viewControllerFactory](self "viewControllerFactory")];
    [v7 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
    [v7 _setExistingNavigationItem:{-[SUViewController navigationItem](self, "navigationItem")}];
    [(SUStorePageViewController *)self _setActiveChildViewController:v7 shouldTearDown:1];

    goto LABEL_27;
  }

  if ([(UIViewController *)self->_activeChildViewController viewIsReady]&& !self->_reloadOnAppear)
  {
    if (_reloadsWhenCacheExpired && [(SUStorePageViewController *)self _isCacheExpired])
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v12 = shouldLog | 2;
      }

      else
      {
        v12 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v19 = 138412546;
        v20 = objc_opt_class();
        v21 = 2112;
        displayedURL = [(SUStorePageViewController *)self displayedURL];
        LODWORD(v18) = 22;
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

      [objc_msgSend(MEMORY[0x1E695DF00] distantFuture];
      self->_expirationTime = v16;
      [-[SUStorePageViewController _activePageSection](self "_activePageSection")];
      -[SSMutableURLRequestProperties setURLs:](self->_urlRequestProperties, "setURLs:", [MEMORY[0x1E695DEC8] arrayWithObjects:{-[SUStorePageViewController displayedURL](self, "displayedURL"), 0}]);
      [(SUStorePageViewController *)self _reloadWithURLRequestProperties:self->_urlRequestProperties preserveSectionControl:1];
      if (self->_reloadOnAppear)
      {
        selfCopy2 = self;
        v9 = 0;
        goto LABEL_12;
      }
    }
  }

  else
  {
    if ([(SUStorePageViewController *)self _shouldFetchAutomatically]&& [(SUStorePageViewController *)self canBeResolved])
    {
      [(SUStorePageViewController *)self setSkLoading:1];
      selfCopy2 = self;
      v9 = 1;
LABEL_12:
      [(SUStorePageViewController *)selfCopy2 _fetchPage:v9];
      goto LABEL_27;
    }

    if ([(SUStorePageViewController *)self _shouldShowPlaceholderForEmptyPage])
    {
      [(SUStorePageViewController *)self showPlaceholderViewController];
    }
  }

LABEL_27:
  self->_reloadOnAppear = v6;
}

- (void)_reloadNavigationBar
{
  [(SUStorePageViewController *)self _reloadNavigationButtons];
  [(SUStorePageViewController *)self _reloadNavigationMenus];
  if (self->_sectionsGroup)
  {

    [(SUStorePageViewController *)self _reloadSectionsControlWithGroup:?];
  }

  else
  {
    segmentedControl = self->_segmentedControl;
    if (segmentedControl)
    {
      v4 = segmentedControl;
      [(SUStorePageViewController *)self _setSegmentedControl:0];
      [(SUStorePageViewController *)self _setSegmentedControl:v4];
    }
  }
}

- (void)_reloadNavigationButtons
{
  storePageProtocol = [(SUStorePageViewController *)self storePageProtocol];
  v4 = [storePageProtocol navigationButtonForLocation:@"left"];
  if (v4)
  {
    v4 = [[SUBarButtonItem alloc] initWithTitle:[(SUBarButtonItem *)v4 buttonTitle] style:0 target:self action:sel__navigationButtonAction_];
  }

  v5 = [storePageProtocol navigationButtonForLocation:@"right"];
  if (v5)
  {
    v7 = -[SUBarButtonItem initWithTitle:style:target:action:]([SUBarButtonItem alloc], "initWithTitle:style:target:action:", [v5 buttonTitle], 0, self, sel__navigationButtonAction_);
  }

  else
  {
    v7 = 0;
  }

  appearance = [(SUClientInterface *)[(SUViewController *)self clientInterface] appearance];
  [(SUUIAppearance *)appearance styleBarButtonItem:v4];
  [(SUUIAppearance *)appearance styleBarButtonItem:v7];
  [(SUStorePageViewController *)self _setLeftNavigationItem:v4 forTag:1851944034];
  [(SUStorePageViewController *)self _setRightNavigationItem:v7 forTag:1851945570];
}

- (void)_reloadNavigationMenus
{
  storePageProtocol = [(SUStorePageViewController *)self storePageProtocol];
  v4 = [storePageProtocol navigationMenuForLocation:0];
  if (v4)
  {
    v5 = v4;
    closedTitle = [v4 closedTitle];
    if (!closedTitle)
    {
      closedTitle = [v5 openTitle];
    }

    v7 = [[SUBarButtonItem alloc] initWithTitle:closedTitle style:0 target:self action:sel__navigationMenuButtonAction_];
  }

  else
  {
    v7 = 0;
  }

  v8 = [storePageProtocol navigationMenuForLocation:1];
  if (v8)
  {
    v9 = v8;
    closedTitle2 = [v8 closedTitle];
    if (!closedTitle2)
    {
      closedTitle2 = [v9 openTitle];
    }

    v12 = [[SUBarButtonItem alloc] initWithTitle:closedTitle2 style:0 target:self action:sel__navigationMenuButtonAction_];
  }

  else
  {
    v12 = 0;
  }

  appearance = [(SUClientInterface *)[(SUViewController *)self clientInterface] appearance];
  [(SUUIAppearance *)appearance styleBarButtonItem:v7];
  [(SUUIAppearance *)appearance styleBarButtonItem:v12];
  [(SUStorePageViewController *)self _setLeftNavigationItem:v7 forTag:1852664930];
  [(SUStorePageViewController *)self _setRightNavigationItem:v12 forTag:1852666466];
}

- (void)_reloadPreviewOverlayVisibility
{
  if (![objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")])
  {
    UIScrollView = SUViewFirstUIScrollView([(SUViewController *)self->_activeChildViewController view]);
    activeChildViewController = self->_activeChildViewController;

    [SUPreviewOverlayViewController offsetScrollView:UIScrollView forViewController:activeChildViewController];
  }
}

- (void)_reloadSearchFieldWithSection:(id)section
{
  navigationItem = [(SUViewController *)self navigationItem];
  searchFieldConfiguration = [section searchFieldConfiguration];
  v6 = searchFieldConfiguration;
  if (searchFieldConfiguration)
  {
    location = [searchFieldConfiguration location];
    _shouldDisplayControlsInNavigationBar = [(SUStorePageViewController *)self _shouldDisplayControlsInNavigationBar];
    v9 = location != 2 && (-[UIViewController isRootViewController](self, "isRootViewController") || ([v6 isRootViewOnly] & 1) == 0) && (objc_msgSend(objc_msgSend(MEMORY[0x1E69DC938], "currentDevice"), "userInterfaceIdiom") || !-[UIViewController isDescendantOfViewController:](self, "isDescendantOfViewController:", objc_msgSend(-[SUStorePageViewController tabBarController](self, "tabBarController"), "transientViewController"))) && -[UIViewController overlayViewController](self, "overlayViewController") == 0;
  }

  else
  {
    _shouldDisplayControlsInNavigationBar = [(SUStorePageViewController *)self _shouldDisplayControlsInNavigationBar];
    v9 = 0;
    location = 2;
  }

  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")])
  {
    v10 = _shouldDisplayControlsInNavigationBar;
  }

  else
  {
    v10 = v9 && _shouldDisplayControlsInNavigationBar;
  }

  v11 = v10 ^ 1u;
  searchBar = [(SUSearchFieldController *)self->_searchFieldController searchBar];
  navigationItemForScriptInterface = [(SUStorePageViewController *)self navigationItemForScriptInterface];
  v14 = navigationItemForScriptInterface;
  if (!v9 || !_shouldDisplayControlsInNavigationBar || location != 1)
  {
    if (-[UISearchBar isDescendantOfView:](searchBar, "isDescendantOfView:", [objc_msgSend(navigationItemForScriptInterface "leftBarButtonItem")]))
    {
      [v14 setLeftBarButtonItem:0];
    }

    if (!location && v9 && _shouldDisplayControlsInNavigationBar)
    {
      goto LABEL_63;
    }
  }

  if (-[UISearchBar isDescendantOfView:](searchBar, "isDescendantOfView:", [v14 titleView]))
  {
    [v14 setTitleView:0];
  }

  if (location != 3 || !v9 || !_shouldDisplayControlsInNavigationBar)
  {
LABEL_63:
    if (-[UISearchBar isDescendantOfView:](searchBar, "isDescendantOfView:", [objc_msgSend(v14 "rightBarButtonItem")]))
    {
      [v14 setRightBarButtonItem:0];
    }
  }

  if ((_shouldDisplayControlsInNavigationBar || !v9) && -[SUStorePageViewController isViewLoaded](self, "isViewLoaded") && searchBar == [-[SUStorePageViewController view](self "view")])
  {
    [(SUStorePageViewController *)self _setHeaderView:0];
  }

  searchFieldController = self->_searchFieldController;
  if (searchFieldController && [(SUSearchFieldController *)searchFieldController searchFieldStyle]!= v11)
  {
    v18 = [-[SUStorePageViewController view](self "view")];
    if (v18 == [(SUSearchFieldController *)self->_searchFieldController searchBar])
    {
      [(SUStorePageViewController *)self _setHeaderView:0];
    }

    self->_searchFieldController = 0;
  }

  v19 = self->_searchFieldController;
  if (v6)
  {
    if (!v19)
    {
      v19 = [[SUSearchFieldController alloc] initWithContentsController:self clientInterface:[(SUViewController *)self clientInterface] style:v11];
      self->_searchFieldController = v19;
    }

    [(SUSearchFieldController *)v19 setSearchFieldConfiguration:v6];
    v20 = self->_searchFieldController;
  }

  else
  {

    v20 = 0;
    self->_searchFieldController = 0;
  }

  searchBar2 = [(SUSearchFieldController *)v20 searchBar];
  [(UISearchBar *)searchBar2 setAlpha:1.0];
  v22 = !v9;
  if (!searchBar2)
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    if (_shouldDisplayControlsInNavigationBar)
    {
      if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
      {
        if ((_UIApplicationUsesLegacyUI() & 1) == 0)
        {
          [(UISearchBar *)searchBar2 setBarStyle:[(SUViewController *)self ITunesStoreUIBarStyle]== 2];
        }

        v23 = [[SUBarButtonItem alloc] initWithCustomView:searchBar2];
        [(SUUIAppearance *)[(SUClientInterface *)[(SUViewController *)self clientInterface] appearance] styleBarButtonItem:v23];
        switch(location)
        {
          case 3:
            [v14 setRightBarButtonItem:v23];
            break;
          case 1:
            [v14 setLeftBarButtonItem:v23];
            break;
          case 0:
            [v14 setTitleView:searchBar2];
            break;
        }
      }
    }

    else if ([(SUStorePageViewController *)self isViewLoaded])
    {
      [(SUStorePageViewController *)self _setHeaderView:searchBar2];
    }
  }

  if (navigationItem != [(SUViewController *)self navigationItem])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__SUStorePageViewController__reloadSearchFieldWithSection___block_invoke;
    block[3] = &unk_1E8164348;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __59__SUStorePageViewController__reloadSearchFieldWithSection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) navigationController];
  v3 = [objc_msgSend(*(a1 + 32) "navigationController")];

  return [v2 setViewControllers:v3 animated:0];
}

- (void)_reloadSectionButtons
{
  v34 = *MEMORY[0x1E69E9840];
  section = [(UIViewController *)self section];
  if (section)
  {
    v4 = section;
    if ([(UIViewController *)self isRootViewController])
    {
      if (![(SUStorePageViewController *)self _isInTransientViewController])
      {
        navigationItemForScriptInterface = [(SUStorePageViewController *)self navigationItemForScriptInterface];
        appearance = [(SUClientInterface *)[(SUViewController *)self clientInterface] appearance];
        leftSectionButtons = [v4 leftSectionButtons];
        if ([leftSectionButtons count])
        {
          v23 = navigationItemForScriptInterface;
          v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v9 = [leftSectionButtons countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v29;
            do
            {
              v12 = 0;
              do
              {
                if (*v29 != v11)
                {
                  objc_enumerationMutation(leftSectionButtons);
                }

                v13 = *(*(&v28 + 1) + 8 * v12);
                v14 = objc_alloc_init(SUBarButtonItem);
                [v13 applyToBarButtonItem:v14];
                [(SUUIAppearance *)appearance styleBarButtonItem:v14];
                SUButtonActionAttachToBarButtonItem(v14);
                [v8 addObject:v14];

                ++v12;
              }

              while (v10 != v12);
              v10 = [leftSectionButtons countByEnumeratingWithState:&v28 objects:v33 count:16];
            }

            while (v10);
          }

          navigationItemForScriptInterface = v23;
          [v23 setLeftBarButtonItems:v8];
        }

        rightSectionButtons = [v4 rightSectionButtons];
        if ([rightSectionButtons count])
        {
          v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v17 = [rightSectionButtons countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v25;
            do
            {
              v20 = 0;
              do
              {
                if (*v25 != v19)
                {
                  objc_enumerationMutation(rightSectionButtons);
                }

                v21 = *(*(&v24 + 1) + 8 * v20);
                v22 = objc_alloc_init(SUBarButtonItem);
                [v21 applyToBarButtonItem:v22];
                [(SUUIAppearance *)appearance styleBarButtonItem:v22];
                SUButtonActionAttachToBarButtonItem(v22);
                [v16 addObject:v22];

                ++v20;
              }

              while (v18 != v20);
              v18 = [rightSectionButtons countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v18);
          }

          [navigationItemForScriptInterface setRightBarButtonItems:v16];
        }
      }
    }
  }
}

- (void)_reloadSectionsControlWithGroup:(id)group
{
  pendingChildViewController = self->_pendingChildViewController;
  if (!pendingChildViewController)
  {
    pendingChildViewController = self->_activeChildViewController;
  }

  if ([(UIViewController *)pendingChildViewController canDisplaySectionGroup:group])
  {
    selfCopy = pendingChildViewController;
  }

  else
  {
    [(UIViewController *)pendingChildViewController setDisplayedSectionGroup:0];
    selfCopy = self;
  }

  v7 = [(SUStorePageViewController *)selfCopy setDisplayedSectionGroup:group];
  [v7 addTarget:self action:sel__sectionControlAction_ forControlEvents:4096];
  [v7 setSelectedItemIndex:self->_activeSectionIndex];

  [(SUStorePageViewController *)self _setSegmentedControl:v7];
}

- (BOOL)_reloadWithURLRequestProperties:(id)properties preserveSectionControl:(BOOL)control
{
  controlCopy = control;
  [(SUViewController *)self cancelOperations];
  [(SUStorePageViewController *)self setSkLoading:0];
  [(SUStorePageViewController *)self setURLRequestProperties:properties];
  if (controlCopy)
  {
    [objc_msgSend(MEMORY[0x1E69DD258] transitionSafePerformer:{self), "_reloadSectionsControlWithGroup:", self->_sectionsGroup}];
  }

  else
  {
    [(SUStorePageViewController *)self reloadForSectionsWithGroup:0];
  }

  [(SUStorePageViewController *)self showPlaceholderViewController];
  [(SUStorePageViewController *)self resetNavigationItem:[(SUStorePageViewController *)self navigationItemForScriptInterface]];
  [(SUViewController *)self resetRestoredContext];
  if ([(SUStorePageViewController *)self _shouldReloadForAppearance])
  {
    [(SUStorePageViewController *)self _fetchPage:0];
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  self->_reloadOnAppear = v7;
  return 1;
}

- (void)_renderStorePage:(id)page withType:(int64_t)type url:(id)url viewController:(id)controller block:(id)block
{
  [(SUStorePageViewController *)self addChildViewController:controller];
  [(SUStorePageViewController *)self _applyPropertiesToViewController:controller];
  navigationItem = [(SUViewController *)self navigationItem];
  -[UINavigationItem mergeValuesFromItem:](navigationItem, "mergeValuesFromItem:", [controller navigationItem]);
  [controller _setExistingNavigationItem:navigationItem];
  [controller _setExistingTabBarItem:{-[SUStorePageViewController _existingTabBarItem](self, "_existingTabBarItem")}];
  view = [controller view];
  [-[SUStorePageViewController view](self "view")];
  [view setFrame:?];
  if ([(SUViewController *)self _restoredContext])
  {
    [controller restoreArchivableContext:{-[SUViewController _restoredContext](self, "_restoredContext")}];
    [(SUViewController *)self resetRestoredContext];
  }

  [(SUStorePageViewController *)self setSkLoading:1];
  if (type == 1)
  {
    v14 = [MEMORY[0x1E698C7D8] bagForProfile:@"AppStore" profileVersion:@"1"];
    v15 = objc_opt_class();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __80__SUStorePageViewController__renderStorePage_withType_url_viewController_block___block_invoke;
    v17[3] = &unk_1E8164AC0;
    v17[5] = url;
    v17[6] = block;
    v17[4] = self;
    [v15 isLegacyWebViewForURL:url bag:v14 completion:v17];
  }

  else
  {
    (*(block + 2))(block);
  }

  viewIsReady = [controller viewIsReady];
  self->_pageType = type;
  if (viewIsReady)
  {
    [(SUStorePageViewController *)self _handleViewControllerBecameReady:controller];
  }

  else
  {
    [(SUStorePageViewController *)self _setPendingChildViewController:controller];
  }
}

uint64_t __80__SUStorePageViewController__renderStorePage_withType_url_viewController_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __80__SUStorePageViewController__renderStorePage_withType_url_viewController_block___block_invoke_2;
    block[3] = &unk_1E8164348;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  result = SSIsInternalBuild();
  if (result)
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
      v7 = AMSLogableURL();
      v12 = 138412546;
      v13 = v7;
      v14 = 1024;
      v15 = a2;
      LODWORD(v10) = 18;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v12, v10}];
        free(v9);
        SSFileLog();
      }
    }

    return [SUBugCapture captureLegacyWebViewReportWithUrl:AMSLogableURL() isLegacyAllowed:a2];
  }

  return result;
}

uint64_t __80__SUStorePageViewController__renderStorePage_withType_url_viewController_block___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = SSError();

  return [v1 _handleFailureWithError:v2];
}

+ (void)isLegacyWebViewForURL:(id)l bag:(id)bag completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v10 = shouldLog | 2;
  }

  else
  {
    v10 = shouldLog;
  }

  if (os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 & 2;
  }

  if (v11)
  {
    v17 = 138412290;
    lCopy = l;
    LODWORD(v15) = 12;
    v12 = _os_log_send_and_compose_impl();
    if (v12)
    {
      v13 = v12;
      [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, &v17, v15}];
      free(v13);
      SSFileLog();
    }
  }

  if (!l)
  {
    (*(completion + 2))(completion, 0);
  }

  v14 = [objc_msgSend(objc_alloc(MEMORY[0x1E698CB70]) initWithBag:{bag), "typeForURL:", l}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__SUStorePageViewController_isLegacyWebViewForURL_bag_completion___block_invoke;
  v16[3] = &unk_1E8164AE8;
  v16[4] = completion;
  [v14 addFinishBlock:v16];
}

uint64_t __66__SUStorePageViewController_isLegacyWebViewForURL_bag_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 integerValue];
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 1;
  }

  v7 = v6;
  v8 = [MEMORY[0x1E69D4938] sharedConfig];
  v9 = [v8 shouldLog];
  if ([v8 shouldLogToDisk])
  {
    v10 = v9 | 2;
  }

  else
  {
    v10 = v9;
  }

  if (os_log_type_enabled([v8 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 & 2;
  }

  if (v7 == 1)
  {
    if (!v11)
    {
      return (*(*(a1 + 32) + 16))();
    }

    v18 = 0;
    LODWORD(v16) = 2;
    v15 = &v18;
    v12 = _os_log_send_and_compose_impl();
    if (!v12)
    {
      return (*(*(a1 + 32) + 16))();
    }

LABEL_19:
    v13 = v12;
    [MEMORY[0x1E696AEC0] stringWithCString:v12 encoding:{4, v15, v16}];
    free(v13);
    SSFileLog();
    return (*(*(a1 + 32) + 16))();
  }

  if (v11)
  {
    v17 = 0;
    LODWORD(v16) = 2;
    v15 = &v17;
    v12 = _os_log_send_and_compose_impl();
    if (v12)
    {
      goto LABEL_19;
    }
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)_repositionForChildViewController:(id)controller
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(SUStorePageViewController *)self isExternalRequest])
  {
    storePageProtocol = [controller storePageProtocol];
    [(SUStorePageViewController *)self _moveToRootSectionForChildViewController:controller protocol:storePageProtocol];
    if ([controller hasDisplayableContent])
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      clientInterface = [(SUViewController *)self clientInterface];
      viewControllerFactory = [(SUViewController *)self viewControllerFactory];
      selfCopy = self;
      section = [(UIViewController *)self section];
      navigationHistoryItems = [storePageProtocol navigationHistoryItems];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = [navigationHistoryItems countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        do
        {
          v14 = 0;
          do
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(navigationHistoryItems);
            }

            v15 = *(*(&v19 + 1) + 8 * v14);
            v16 = [viewControllerFactory newStorePageViewControllerWithSection:section];
            [v16 setClientInterface:clientInterface];
            [v16 setTitle:{objc_msgSend(v15, "title")}];
            [v16 setURLRequestProperties:{objc_msgSend(v15, "URLRequestProperties")}];
            [v6 addObject:v16];

            ++v14;
          }

          while (v12 != v14);
          v12 = [navigationHistoryItems countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      if ([v6 count])
      {
        navigationController = [(SUViewController *)selfCopy navigationController];
        [v6 addObject:{objc_msgSend(navigationController, "topViewController")}];
        [navigationController setViewControllers:v6 animated:0];
      }
    }
  }
}

- (void)_requestWebScriptReloadWithContext:(id)context
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  activeChildViewController = self->_activeChildViewController;
  if (isKindOfClass)
  {

    [(SUViewController *)activeChildViewController _requestWebScriptReloadWithContext:context];
  }

  else
  {
    NSLog(&cfstr_RequestingAWeb.isa, self->_activeChildViewController);
  }
}

- (BOOL)_sectionIsNetworkConstrained
{
  section = [(UIViewController *)self section];
  if (section)
  {
    minimumNetworkType = [section minimumNetworkType];
    LOBYTE(section) = minimumNetworkType > [objc_msgSend(MEMORY[0x1E69E4778] "sharedInstance")];
  }

  return section;
}

- (void)_setActiveChildViewController:(id)controller shouldTearDown:(BOOL)down
{
  if (self->_activeChildViewController != controller)
  {
    downCopy = down;
    isViewLoaded = [(SUStorePageViewController *)self isViewLoaded];
    activeChildViewController = self->_activeChildViewController;
    if (!activeChildViewController)
    {
      goto LABEL_9;
    }

    if (isViewLoaded)
    {
      [(SUViewController *)activeChildViewController viewWillDisappear:0];
      activeChildViewController = self->_activeChildViewController;
    }

    if (downCopy)
    {
      [(UIViewController *)activeChildViewController storePageCleanupBeforeTearDown];
      activeChildViewController = self->_activeChildViewController;
    }

    [(SUViewController *)activeChildViewController _setExistingNavigationItem:0];
    [(SUViewController *)self->_activeChildViewController _setExistingTabBarItem:0];
    [(SUStorePageViewController *)self removeChildViewController:self->_activeChildViewController];
    activeChildViewController = self->_activeChildViewController;
    if (isViewLoaded)
    {
      contentScrollView = [(SUViewController *)activeChildViewController contentScrollView];
      [-[SUStorePageViewController view](self "view")];
      [-[SUViewController view](self->_activeChildViewController "view")];
      [(SUViewController *)self->_activeChildViewController viewDidDisappear:0];
      activeChildViewController = self->_activeChildViewController;
    }

    else
    {
LABEL_9:
      contentScrollView = 0;
    }

    self->_activeChildViewController = controller;
    navigationItemForScriptInterface = [(SUStorePageViewController *)self navigationItemForScriptInterface];
    if (self->_activeChildViewController)
    {
      [(SUStorePageViewController *)self addChildViewController:?];
      if (isViewLoaded)
      {
        view = [(SUViewController *)self->_activeChildViewController view];
        [(SUStorePageViewController *)self _frameForActiveViewController];
        [view setFrame:?];
        [(SUViewController *)self->_activeChildViewController viewWillAppear:0];
        [-[SUStorePageViewController view](self "view")];
        [(SUViewController *)self->_activeChildViewController viewDidAppear:0];
      }

      [(SUViewController *)self->_activeChildViewController setSkLoading:[(SUStorePageViewController *)self isSkLoaded]];
      title = [(SUViewController *)self->_activeChildViewController title];
      if (title)
      {
        [-[SUStorePageViewController navigationItemForScriptInterface](self "navigationItemForScriptInterface")];
      }

      if ([(SUViewController *)self _cachedScriptProperties])
      {
        [(SUViewController *)self->_activeChildViewController setScriptProperties:[(SUViewController *)self _cachedScriptProperties]];
      }
    }

    else
    {
      [(SUStorePageViewController *)self resetNavigationItem:navigationItemForScriptInterface];
    }
  }
}

- (void)_setLeftNavigationItem:(id)item forTag:(int64_t)tag
{
  navigationItemForScriptInterface = [(SUStorePageViewController *)self navigationItemForScriptInterface];
  v8 = -[SUStorePageViewController _newBarButtonItemsWithButtonItems:replacingItemWithTag:withButtonItem:](self, "_newBarButtonItemsWithButtonItems:replacingItemWithTag:withButtonItem:", [navigationItemForScriptInterface leftBarButtonItems], tag, item);
  [item setTag:tag];
  [navigationItemForScriptInterface setLeftBarButtonItems:v8];
}

- (void)_setPendingChildViewController:(id)controller
{
  pendingChildViewController = self->_pendingChildViewController;
  if (pendingChildViewController != controller)
  {
    if (pendingChildViewController && pendingChildViewController != self->_activeChildViewController)
    {
      [(SUStorePageViewController *)self removeChildViewController:?];
      pendingChildViewController = self->_pendingChildViewController;
    }

    [(SUViewController *)pendingChildViewController removeObserver:self forKeyPath:@"viewIsReady"];

    controllerCopy = controller;
    self->_pendingChildViewController = controllerCopy;

    [(SUViewController *)controllerCopy addObserver:self forKeyPath:@"viewIsReady" options:0 context:0];
  }
}

- (void)_setRightNavigationItem:(id)item forTag:(int64_t)tag
{
  navigationItemForScriptInterface = [(SUStorePageViewController *)self navigationItemForScriptInterface];
  v8 = -[SUStorePageViewController _newBarButtonItemsWithButtonItems:replacingItemWithTag:withButtonItem:](self, "_newBarButtonItemsWithButtonItems:replacingItemWithTag:withButtonItem:", [navigationItemForScriptInterface rightBarButtonItems], tag, item);
  [item setTag:tag];
  [navigationItemForScriptInterface setRightBarButtonItems:v8];
}

- (BOOL)_shouldDisplayControlsInNavigationBar
{
  v3 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  if (v3 != 1)
  {
    LOBYTE(v3) = !-[UIViewController isInMoreList](self, "isInMoreList") && ((v4 = -[SUViewController navigationController](self, "navigationController")) == 0 || (v5 = [v4 indexOfViewController:self], v5 == 0x7FFFFFFFFFFFFFFFLL) || !v5) && (v6 = -[SUStorePageViewController navigationItemForScriptInterface](self, "navigationItemForScriptInterface"), !objc_msgSend(v6, "leftBarButtonItem")) && objc_msgSend(v6, "rightBarButtonItem") == 0;
  }

  return v3;
}

- (BOOL)_shouldReloadForAppearance
{
  if ([(SUStorePageViewController *)self loadsWhenHidden])
  {
    return 1;
  }

  return [(SUViewController *)self isVisible];
}

- (void)_showPlaceholderViewControllerWithTearDown:(BOOL)down
{
  downCopy = down;
  newPlaceholderViewController = [(SUStorePageViewController *)self newPlaceholderViewController];
  [newPlaceholderViewController _setExistingNavigationItem:{-[SUViewController navigationItem](self, "navigationItem")}];
  [(SUStorePageViewController *)self _setActiveChildViewController:newPlaceholderViewController shouldTearDown:downCopy];
}

- (void)_tearDownNavigationMenu
{
  [(SUMenuViewController *)self->_navigationMenuViewController setDelegate:0];

  self->_navigationMenuViewController = 0;
  [(UIPopoverController *)self->_navigationMenuPopover setDelegate:0];

  self->_navigationMenuPopover = 0;
}

- (void)_verifyStorePageProtocol:(id)protocol
{
  v44 = *MEMORY[0x1E69E9840];
  expectedClientIdentifiers = [protocol expectedClientIdentifiers];
  if ([expectedClientIdentifiers count] && !-[SUClientInterface _ignoresExpectedClientsProtocol](-[SUViewController clientInterface](self, "clientInterface"), "_ignoresExpectedClientsProtocol"))
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = [expectedClientIdentifiers countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v35;
LABEL_6:
      v8 = 0;
      while (1)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(expectedClientIdentifiers);
        }

        if ([SUClientDispatch matchesClientApplication:*(*(&v34 + 1) + 8 * v8)])
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [expectedClientIdentifiers countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v6)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
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

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v12 = objc_opt_class();
        v39 = 138412546;
        v40 = v12;
        v41 = 2112;
        v42 = expectedClientIdentifiers;
        LODWORD(v29) = 22;
        v28 = &v39;
        v13 = _os_log_send_and_compose_impl();
        if (v13)
        {
          v14 = v13;
          v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v39, v29}];
          free(v14);
          v28 = v15;
          SSFileLog();
        }
      }

      [(UIViewController *)self dismissAnimated:0, v28];
      displayedURL = [(SUStorePageViewController *)self displayedURL];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v17 = [expectedClientIdentifiers countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v31;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v31 != v19)
            {
              objc_enumerationMutation(expectedClientIdentifiers);
            }

            v21 = *(*(&v30 + 1) + 8 * i);
            if (SUOpenURLInClient(displayedURL, v21, [(SUViewController *)self clientInterface]))
            {
              mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
              shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
              if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
              {
                v24 = shouldLog2 | 2;
              }

              else
              {
                v24 = shouldLog2;
              }

              if (os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEBUG))
              {
                v25 = v24;
              }

              else
              {
                v25 = v24 & 2;
              }

              if (v25)
              {
                v39 = 138412546;
                v40 = v21;
                v41 = 2112;
                v42 = displayedURL;
                LODWORD(v29) = 22;
                v26 = _os_log_send_and_compose_impl();
                if (v26)
                {
                  v27 = v26;
                  [MEMORY[0x1E696AEC0] stringWithCString:v26 encoding:{4, &v39, v29}];
                  free(v27);
                  SSFileLog();
                }
              }

              return;
            }
          }

          v18 = [expectedClientIdentifiers countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }
    }
  }
}

@end