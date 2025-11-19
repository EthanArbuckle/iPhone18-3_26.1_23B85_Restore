@interface SUStorePageViewController
+ (void)isLegacyWebViewForURL:(id)a3 bag:(id)a4 completion:(id)a5;
- (BOOL)_isInTransientViewController;
- (BOOL)_reloadWithURLRequestProperties:(id)a3 completionBlock:(id)a4;
- (BOOL)_reloadWithURLRequestProperties:(id)a3 preserveSectionControl:(BOOL)a4;
- (BOOL)_sectionIsNetworkConstrained;
- (BOOL)_shouldDisplayControlsInNavigationBar;
- (BOOL)_shouldReloadForAppearance;
- (BOOL)isSkLoaded;
- (BOOL)loadMoreWithURL:(id)a3;
- (BOOL)pushStorePage:(id)a3 withTarget:(int64_t)a4 animated:(BOOL)a5;
- (BOOL)reloadForSectionsWithGroup:(id)a3;
- (BOOL)reloadWithURLRequestProperties:(id)a3;
- (BOOL)shouldExcludeFromNavigationHistory;
- (BOOL)showPreviewOverlay:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (BOOL)viewIsReady;
- (CGRect)_frameForActiveViewController;
- (CGRect)documentBounds;
- (SSURLRequestProperties)URLRequestProperties;
- (SUStorePageViewController)init;
- (SUStorePageViewController)initWithTabBarItem:(id)a3;
- (double)_expirationTime;
- (id)URLRequest;
- (id)_activePageSection;
- (id)_newBarButtonItemsWithButtonItems:(id)a3 replacingItemWithTag:(int64_t)a4 withButtonItem:(id)a5;
- (id)_newSegmentedControlWithItems:(id)a3;
- (id)copyArchivableContext;
- (id)copyDefaultScriptProperties;
- (id)copyObjectForScriptFromPoolWithClass:(Class)a3;
- (id)copyScriptProperties;
- (id)copyScriptViewController;
- (id)displayedURL;
- (id)iTunesStoreUI_searchFieldController;
- (id)navigationItemForScriptInterface;
- (id)newFetchOperation;
- (id)newPlaceholderViewController;
- (id)newRotationController;
- (id)newViewControllerForPage:(id)a3 ofType:(int64_t)a4 returningError:(id *)a5;
- (id)setDisplayedSectionGroup:(id)a3;
- (id)storePageProtocol;
- (void)_applyPropertiesToViewController:(id)a3;
- (void)_dismissNavigationMenuViewController;
- (void)_displaySegmentedControl:(id)a3;
- (void)_documentBoundsChangeNotification:(id)a3;
- (void)_fetchPage:(BOOL)a3;
- (void)_finishHandlingFailure;
- (void)_finishSuccessfulLoad;
- (void)_finishWebViewLoadWithResult:(BOOL)a3 error:(id)a4;
- (void)_handleFailureWithError:(id)a3;
- (void)_handleViewControllerBecameReady:(id)a3;
- (void)_logInternalEventWithOperation:(id)a3;
- (void)_moveChildViewController:(id)a3 toOverlayForProtocol:(id)a4;
- (void)_moveToRootSectionForChildViewController:(id)a3 protocol:(id)a4;
- (void)_navigationButtonAction:(id)a3;
- (void)_navigationMenuButtonAction:(id)a3;
- (void)_performActionForProtocolButton:(id)a3;
- (void)_reloadBackgroundViewProperties;
- (void)_reloadForAppearance:(BOOL)a3;
- (void)_reloadForNetworkTypeChange:(id)a3;
- (void)_reloadNavigationBar;
- (void)_reloadNavigationButtons;
- (void)_reloadNavigationMenus;
- (void)_reloadPreviewOverlayVisibility;
- (void)_reloadSearchFieldWithSection:(id)a3;
- (void)_reloadSectionButtons;
- (void)_reloadSectionsControlWithGroup:(id)a3;
- (void)_renderStorePage:(id)a3 withType:(int64_t)a4 url:(id)a5 viewController:(id)a6 block:(id)a7;
- (void)_repositionForChildViewController:(id)a3;
- (void)_requestWebScriptReloadWithContext:(id)a3;
- (void)_scriptEventNotification:(id)a3;
- (void)_sectionControlAction:(id)a3;
- (void)_sendFailureAfterDialogsFinished:(id)a3;
- (void)_setActiveChildViewController:(id)a3 shouldTearDown:(BOOL)a4;
- (void)_setHeaderView:(id)a3;
- (void)_setLeftNavigationItem:(id)a3 forTag:(int64_t)a4;
- (void)_setPendingChildViewController:(id)a3;
- (void)_setRightNavigationItem:(id)a3 forTag:(int64_t)a4;
- (void)_setSegmentedControl:(id)a3;
- (void)_showPlaceholderViewControllerWithTearDown:(BOOL)a3;
- (void)_tabConfigurationChanged:(id)a3;
- (void)_tearDownNavigationMenu;
- (void)_verifyStorePageProtocol:(id)a3;
- (void)applicationDidEnterBackground;
- (void)applicationWillEnterForeground;
- (void)dealloc;
- (void)didMoveToParentViewController:(id)a3;
- (void)didRotateFromInterfaceOrientation:(int64_t)a3;
- (void)enqueueFetchOperation;
- (void)enqueueFetchOperationForPageSection:(id)a3;
- (void)handleApplicationURL:(id)a3 withSourceApplication:(id)a4 sourceURL:(id)a5;
- (void)handleFailureWithError:(id)a3;
- (void)hidePreviewOverlay:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5;
- (void)iTunesStoreUI_searchFieldControllerDidChange:(id)a3;
- (void)invalidate;
- (void)invalidateForMemoryPurge;
- (void)loadView;
- (void)menuViewController:(id)a3 didSelectItemAtIndex:(int64_t)a4;
- (void)menuViewController:(id)a3 didTapButton:(id)a4;
- (void)menuViewControllerDidCancel:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)operation:(id)a3 failedWithError:(id)a4;
- (void)operation:(id)a3 finishedWithOutput:(id)a4;
- (void)popoverControllerDidDismissPopover:(id)a3;
- (void)reload;
- (void)reloadWithStorePage:(id)a3 ofType:(int64_t)a4 forURL:(id)a5;
- (void)requestWebScriptReloadWithContext:(id)a3;
- (void)resetNavigationItem:(id)a3;
- (void)restoreArchivableContext:(id)a3;
- (void)setClientContext:(id)a3;
- (void)setParentViewController:(id)a3;
- (void)setScriptProperties:(id)a3;
- (void)setScriptUserInfo:(id)a3;
- (void)setSection:(id)a3;
- (void)setSkLoading:(BOOL)a3;
- (void)setURLRequestProperties:(id)a3;
- (void)showExternalURL:(id)a3;
- (void)storePageProtocolDidChange;
- (void)tabBarControllerDidLongPressTabBarItem:(id)a3;
- (void)tabBarControllerDidReselectTabBarItem:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
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
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v4 selector:sel__reloadForNetworkTypeChange_ name:@"SUNetworkTypeChangedNotification" object:0];
    [v6 addObserver:v4 selector:sel__reloadPreviewOverlayVisibility name:@"SUPreviewOverlayVisibilityDidChangeNotification" object:0];
    [v6 addObserver:v4 selector:sel__scriptEventNotification_ name:@"SUScriptInterfaceGlobalEventNotification" object:0];
    [v6 addObserver:v4 selector:sel__tabConfigurationChanged_ name:@"SUTabBarConfigurationChangedNotification" object:0];
    [v6 addObserver:v4 selector:sel__documentBoundsChangeNotification_ name:@"SUViewControllerDocumentBoundsDidChangeNotification" object:0];
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

- (SUStorePageViewController)initWithTabBarItem:(id)a3
{
  v4 = [(SUStorePageViewController *)self init];
  if (v4)
  {
    v5 = [a3 underlyingTabBarItem];
    [(SUStorePageViewController *)v4 setTabBarItem:v5];
    -[SUViewController setTitle:](v4, "setTitle:", [v5 _internalTitle]);
    -[SSMutableURLRequestProperties setURL:](v4->_urlRequestProperties, "setURL:", [a3 rootURL]);
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"SUDialogDidFinishNotification" object:0];
  [v3 removeObserver:self name:@"SUNetworkTypeChangedNotification" object:0];
  [v3 removeObserver:self name:@"SUPreviewOverlayVisibilityDidChangeNotification" object:0];
  [v3 removeObserver:self name:@"SUScriptInterfaceGlobalEventNotification" object:0];
  [v3 removeObserver:self name:@"SUTabBarConfigurationChangedNotification" object:0];
  [v3 removeObserver:self name:@"SUViewControllerDocumentBoundsDidChangeNotification" object:0];
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

- (void)_finishWebViewLoadWithResult:(BOOL)a3 error:(id)a4
{
  if (!a3)
  {
    if (ISErrorIsEqual())
    {
      self->_useWebViewFastPath = 0;

      [(SUStorePageViewController *)self _fetchPage:1];
    }

    else
    {

      [(SUStorePageViewController *)self _handleFailureWithError:a4];
    }
  }
}

- (void)enqueueFetchOperation
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(SUStorePageViewController *)self newFetchOperation];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __50__SUStorePageViewController_enqueueFetchOperation__block_invoke;
  v28[3] = &__block_descriptor_48_e5_v8__0ls32l8s40l8;
  v28[4] = self;
  v28[5] = v3;
  [v3 setCompletionBlock:v28];
  if (self->_useWebViewFastPath)
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
  v13 = [MEMORY[0x1E69D4938] sharedConfig];
  v14 = [v13 shouldLog];
  if ([v13 shouldLogToDisk])
  {
    v15 = v14 | 2;
  }

  else
  {
    v15 = v14;
  }

  if (!os_log_type_enabled([v13 OSLogObject], OS_LOG_TYPE_DEFAULT))
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
    v27[5] = v3;
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

    [(SUViewController *)self enqueueOperation:v3 cancelOnDealloc:1, v25];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SUStorePageViewController *)self _logInternalEventWithOperation:v3];
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

- (void)enqueueFetchOperationForPageSection:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(SUStorePageViewController *)self newFetchOperation];
  v6 = [MEMORY[0x1E69D4938] sharedConfig];
  v7 = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    v8 = v7 | 2;
  }

  else
  {
    v8 = v7;
  }

  if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEFAULT))
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v15 = 138543618;
    v16 = objc_opt_class();
    v17 = 2112;
    v18 = [objc_msgSend(v5 "requestProperties")];
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

  v12 = [a3 URLRequestProperties];
  [v5 setRequestProperties:v12];
  [(SUStorePageViewController *)self setSkLoading:1];
  [(SUStorePageViewController *)self setURLRequestProperties:v12];
  [(SUViewController *)self enqueueOperation:v5 cancelOnDealloc:1];
}

- (id)newFetchOperation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69E47E0]);
  [v3 setAuthenticationContext:{-[SUStorePageViewController authenticationContext](self, "authenticationContext")}];
  [v3 setNeedsAuthentication:{-[SUStorePageViewController needsAuthentication](self, "needsAuthentication")}];
  [v3 setTracksPerformanceMetrics:SSDebugShouldTrackPerformance()];
  v4 = [(SUViewController *)self clientInterface];
  v5 = objc_alloc_init(SUStorePageDataProvider);
  [(SUStorePageDataProvider *)v5 setClientInterface:v4];
  [v3 setDataProvider:v5];

  v6 = [(UIViewController *)self section];
  v7 = [v6 searchFieldConfiguration];
  if ([(UIViewController *)self isRootViewController])
  {
    if ([v6 type] == 1)
    {
      if (v7)
      {
        v8 = [objc_msgSend(v7 searchURLRequestPropertiesForNetworkType:{objc_msgSend(objc_msgSend(MEMORY[0x1E69E4778], "sharedInstance"), "networkType")), "requestParameters"}];
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
  v14 = [(SUClientInterface *)v4 userAgent];
  if (v14)
  {
    [v13 setValue:v14 forHTTPHeaderField:*MEMORY[0x1E69D4C40]];
  }

  v15 = [(SUClientInterface *)v4 clientIdentifier];
  if (v15)
  {
    [v13 setClientIdentifier:v15];
  }

  if (-[NSString isEqualToString:](-[SUClientInterface hostApplicationIdentifier](v4, "hostApplicationIdentifier"), "isEqualToString:", @"com.apple.appstored") && [objc_msgSend(-[SSMutableURLRequestProperties URL](self->_urlRequestProperties "URL")])
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
  v4 = [(SUStorePageViewController *)self copyScriptProperties];
  v5 = [(UIViewController *)self section];
  if ([v4 placeholderBackgroundGradient])
  {
    v6 = [v4 placeholderBackgroundGradient];
  }

  else
  {
    v6 = [v5 backgroundGradient];
    if (!v6)
    {
      goto LABEL_5;
    }
  }

  [v3 setBackgroundGradient:v6];
LABEL_5:
  if ([v4 backgroundColor])
  {
    v7 = [v4 backgroundColor];
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  }

  [objc_msgSend(v3 "view")];
  v8 = [v3 loadingView];
  [v8 setActivityIndicatorStyle:{objc_msgSend(v4, "loadingIndicatorStyle")}];
  v9 = [v5 loadingIndicatorColor];
  if (v9)
  {
    [v8 setActivityIndicatorColor:v9];
  }

  v10 = [v4 loadingTextColor];
  if (v10 || (v10 = [v5 loadingTextColor]) != 0)
  {
    [v8 setTextColor:v10];
  }

  v11 = [v4 loadingTextShadowColor];
  if (!v11)
  {
    v11 = [v5 loadingTextShadowColor];
  }

  if ([v4 loadingTextShadowColor])
  {
    [v8 setTextShadowColor:v11];
  }

  return v3;
}

- (id)newViewControllerForPage:(id)a3 ofType:(int64_t)a4 returningError:(id *)a5
{
  v7 = [-[SUViewController viewControllerFactory](self "viewControllerFactory")];
  [v7 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 _setPerformanceMetrics:self->_performanceMetrics];
  }

  if (a5)
  {
    *a5 = 0;
  }

  return v7;
}

- (void)handleFailureWithError:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
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

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_ERROR))
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
    v19 = a3;
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

  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  [v13 addObserver:self selector:sel__sendFailureAfterDialogsFinished_ name:@"SUDialogDidFinishNotification" object:0];
  if (![(SUViewController *)self presentDialogForError:a3 pendUntilVisible:1])
  {
    [v13 removeObserver:self name:@"SUDialogDidFinishNotification" object:0];
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

- (void)reloadWithStorePage:(id)a3 ofType:(int64_t)a4 forURL:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v9 = [(SUStorePageViewController *)self newViewControllerForPage:a3 ofType:a4 returningError:&v30];
  if (v9)
  {
    v10 = v9;
    if ([(SSMutableURLRequestProperties *)self->_urlRequestProperties URL])
    {
      [(SSMutableURLRequestProperties *)self->_urlRequestProperties setURL:a5];
    }

    v11 = [(SUStorePageViewController *)self canBeResolved];
    v12 = [MEMORY[0x1E69D4938] sharedConfig];
    v13 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = v13 | 2;
    }

    else
    {
      v14 = v13;
    }

    if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v14 &= 2u;
    }

    if (v11)
    {
      if (v14)
      {
LABEL_22:
        v22 = objc_opt_class();
        v23 = objc_opt_class();
        v31 = 138543874;
        v32 = v22;
        v33 = 2114;
        v34 = v23;
        v35 = 2112;
        v36 = a5;
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
    v29[5] = a3;
    v29[6] = a5;
    [(SUStorePageViewController *)self _renderStorePage:a3 withType:a4 url:a5 viewController:v10 block:v29, v27];

    return;
  }

  v15 = [MEMORY[0x1E69D4938] sharedConfig];
  v16 = [v15 shouldLog];
  if ([v15 shouldLogToDisk])
  {
    v17 = v16 | 2;
  }

  else
  {
    v17 = v16;
  }

  if (!os_log_type_enabled([v15 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v17 &= 2u;
  }

  if (v17)
  {
    v18 = objc_opt_class();
    v31 = 138543618;
    v32 = v18;
    v33 = 2112;
    v34 = a5;
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

- (void)requestWebScriptReloadWithContext:(id)a3
{
  if (!self->_reloadOnAppear && [(SUStorePageViewController *)self isViewLoaded]&& ![(SUViewController *)self isSkLoading]&& (activeChildViewController = self->_activeChildViewController) != 0 && [(SUViewController *)activeChildViewController isViewLoaded]&& ![(SUViewController *)self->_activeChildViewController isSkLoading]&& [(UIViewController *)self->_activeChildViewController viewIsReady])
  {

    [(SUStorePageViewController *)self _requestWebScriptReloadWithContext:a3];
  }

  else
  {
    pendingWebScriptReloadContext = self->_pendingWebScriptReloadContext;
    if (pendingWebScriptReloadContext != a3)
    {

      self->_pendingWebScriptReloadContext = [a3 copy];
    }
  }
}

- (void)resetNavigationItem:(id)a3
{
  [a3 resetAllValues];
  [(SUStorePageViewController *)self _reloadSectionButtons];
  [(SUViewController *)self _reloadLibraryButton];
  v4 = [(UIViewController *)self section];

  [(SUStorePageViewController *)self _reloadSearchFieldWithSection:v4];
}

- (void)setScriptUserInfo:(id)a3
{
  scriptUserInfo = self->_scriptUserInfo;
  if (scriptUserInfo != a3)
  {

    self->_scriptUserInfo = [a3 copy];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];

    [v6 postNotificationName:@"SUStorePageViewControllerScriptUserInfoDidChangeNotification" object:self];
  }
}

- (void)setURLRequestProperties:(id)a3
{
  urlRequestProperties = self->_urlRequestProperties;
  if (urlRequestProperties != a3)
  {

    self->_urlRequestProperties = [a3 mutableCopy];
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
  v4 = 1;
  if (!reloadOnAppear)
  {
    v4 = [(SUStorePageViewController *)self isSkLoaded];
  }

  self->_reloadOnAppear = v4;
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
  v3 = [(SUViewController *)&v7 copyArchivableContext];
  if (v3)
  {
    v4 = [(SUViewController *)self->_activeChildViewController copyArchivableContext];
    if (v4)
    {
      v5 = v4;

      v3 = v5;
    }
  }

  [v3 setType:1];
  if (![(SUStorePageViewController *)self shouldExcludeFromNavigationHistory])
  {
    [v3 setValue:-[SUStorePageViewController displayedURL](self forMetadataKey:{"displayedURL"), @"url"}];
    [v3 setValue:-[SUStorePageViewController scriptUserInfo](self forMetadataKey:{"scriptUserInfo"), @"scriptUserInfo"}];
    [v3 setValue:-[SUStorePageViewController URLRequestProperties](self forMetadataKey:{"URLRequestProperties"), @"urlRequestProperties"}];
  }

  return v3;
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

- (id)copyObjectForScriptFromPoolWithClass:(Class)a3
{
  pendingChildViewController = self->_pendingChildViewController;
  if (pendingChildViewController)
  {
LABEL_4:
    result = [(UIViewController *)pendingChildViewController copyObjectForScriptFromPoolWithClass:a3];
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
  return [(UIViewController *)&v7 copyObjectForScriptFromPoolWithClass:a3];
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

- (void)didMoveToParentViewController:(id)a3
{
  [(SUStorePageViewController *)self _reloadPreviewOverlayVisibility];
  v5.receiver = self;
  v5.super_class = SUStorePageViewController;
  [(SUStorePageViewController *)&v5 didMoveToParentViewController:a3];
}

- (id)displayedURL
{
  v3 = [(UIViewController *)self->_activeChildViewController displayedURL];
  v4 = [(SUPageSectionGroup *)self->_sectionsGroup sections];
  if (v3)
  {
    return v3;
  }

  v6 = v4;
  if ([(NSArray *)v4 count])
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

- (void)handleApplicationURL:(id)a3 withSourceApplication:(id)a4 sourceURL:(id)a5
{
  if ([a3 storeURLType] == 1)
  {
    [(SUStorePageViewController *)self _reloadSearchFieldWithSection:[(UIViewController *)self section]];
    searchFieldController = self->_searchFieldController;

    [(SUSearchFieldController *)searchFieldController handleSearchURL:a3 withSourceApplication:a4 sourceURL:a5];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SUStorePageViewController;
    [(SUViewController *)&v10 handleApplicationURL:a3 withSourceApplication:a4 sourceURL:a5];
  }
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = SUStorePageViewController;
  [(SUViewController *)&v4 invalidate];
  v3 = [(SUNavigationItem *)[(SUViewController *)self navigationItem] title];
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
  [(SUNavigationItem *)[(SUViewController *)self navigationItem] setTitle:v3];
}

- (void)invalidateForMemoryPurge
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(SUViewController *)self isVisible]|| [(SUStorePageViewController *)self presentedViewController]|| self->_isInBackground)
  {
    v3 = [(SUPageSectionGroup *)self->_sectionsGroup sections];
    v4 = [(NSArray *)v3 count];
    if (v4 >= 1)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        if (i != self->_activeSectionIndex)
        {
          [-[NSArray objectAtIndex:](v3 objectAtIndex:{i), "setUserInfo:", 0}];
        }
      }
    }
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

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v16 = 138412546;
      v17 = objc_opt_class();
      v18 = 2112;
      v19 = [(SUStorePageViewController *)self displayedURL];
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

- (void)iTunesStoreUI_searchFieldControllerDidChange:(id)a3
{
  if ([objc_msgSend(MEMORY[0x1E69DC938] currentDevice] != 1)
  {
    v4 = [(SUViewController *)self->_activeChildViewController view];

    [v4 setHidden:1];
  }
}

- (BOOL)loadMoreWithURL:(id)a3
{
  pageType = self->_pageType;
  if (pageType == 1)
  {
    -[SSMutableURLRequestProperties setURLs:](self->_urlRequestProperties, "setURLs:", [MEMORY[0x1E695DEC8] arrayWithObjects:{a3, 0}]);
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
    v4 = [(SUViewController *)activeChildViewController view];
    [(SUStorePageViewController *)self _frameForActiveViewController];
    [v4 setFrame:?];
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

- (BOOL)pushStorePage:(id)a3 withTarget:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v9 = [(UIViewController *)self overlayViewController];
  v10 = [(SUStorePageViewController *)self tabBarController];
  if (!v10)
  {
    v10 = [(SUClientInterface *)[(SUViewController *)self clientInterface] tabBarController];
  }

  [(SUTabBarController *)v10 dismissOverlayBackgroundViewController];
  if (a4 != 2)
  {
    goto LABEL_18;
  }

  if (!self)
  {
    goto LABEL_9;
  }

  v11 = self;
  do
  {
    v12 = [(SUStorePageViewController *)v11 _popoverController];
    v13 = [(SUStorePageViewController *)v11 popoverPresentationController];
    v14 = [(SUStorePageViewController *)v11 parentViewController];
    if (v12 | v13)
    {
      break;
    }

    v11 = v14;
  }

  while (v14);
  if (!(v12 | v13))
  {
LABEL_9:
    if (!v9)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v12)
  {
    [v12 dismissPopoverAnimated:v5];
  }

  else if (v13)
  {
    [(SUStorePageViewController *)self dismissViewControllerAnimated:v5 completion:0];
  }

  v15 = [(SUTabBarController *)v10 transientViewController];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_16:
    v15 = [(UITabBarController *)v10 selectedNavigationController];
  }

  if (!v15)
  {
LABEL_18:
    v15 = [(SUViewController *)self navigationController];
  }

  [v15 pushViewController:a3 animated:v5];
  return 1;
}

- (BOOL)reloadForSectionsWithGroup:(id)a3
{
  v3 = a3;
  if (!a3 && self->_loadingForSectionChange)
  {
    v3 = [(SUPageSectionGroup *)self->_sectionsGroup copy];
    [v3 setDefaultSectionIndex:self->_activeSectionIndex];
  }

  if (![(SUPageSectionGroup *)self->_sectionsGroup isEqual:v3])
  {

    self->_sectionsGroup = v3;
    self->_activeSectionIndex = [v3 defaultSectionIndex];
  }

  [objc_msgSend(MEMORY[0x1E69DD258] transitionSafePerformer:{self), "_reloadSectionsControlWithGroup:", v3}];
  [-[SUStorePageViewController _activePageSection](self "_activePageSection")];
  return 1;
}

- (void)reload
{
  v3 = [(UIViewController *)self section];
  if (v3)
  {
    v4 = v3;
    -[SSMutableURLRequestProperties setURLs:](self->_urlRequestProperties, "setURLs:", [MEMORY[0x1E695DEC8] arrayWithObjects:{objc_msgSend(v3, "url"), 0}]);
    -[SSMutableURLRequestProperties setURLBagKey:](self->_urlRequestProperties, "setURLBagKey:", [v4 urlBagKey]);
  }

  [(SUStorePageViewController *)self reloadWithURLRequestProperties:self->_urlRequestProperties];
  v5.receiver = self;
  v5.super_class = SUStorePageViewController;
  [(SUViewController *)&v5 reload];
}

- (BOOL)reloadWithURLRequestProperties:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
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

  if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
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

  return [(SUStorePageViewController *)self _reloadWithURLRequestProperties:a3 completionBlock:0, v12];
}

- (void)restoreArchivableContext:(id)a3
{
  v5 = [a3 valueForMetadataKey:@"scriptUserInfo"];
  if (v5)
  {
    [(SUStorePageViewController *)self setScriptUserInfo:v5];
  }

  v6 = [a3 valueForMetadataKey:@"urlRequestProperties"];
  if (v6 || (v6 = [a3 valueForMetadataKey:@"urlRequest"]) != 0)
  {
    v7 = v6;

    self->_urlRequestProperties = [v7 mutableCopy];
  }

  v8 = [a3 valueForMetadataKey:@"url"];
  if (v8)
  {
    -[SSMutableURLRequestProperties setURLs:](self->_urlRequestProperties, "setURLs:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v8, 0}]);
  }

  v9 = [a3 valueForMetadataKey:@"urlBagKey"];
  if (v9)
  {
    [(SSMutableURLRequestProperties *)self->_urlRequestProperties setURLBagKey:v9];
  }

  v10.receiver = self;
  v10.super_class = SUStorePageViewController;
  [(SUViewController *)&v10 restoreArchivableContext:a3];
}

- (id)setDisplayedSectionGroup:(id)a3
{
  v5 = [a3 sections];
  if ([v5 count])
  {
    v6 = -[SUStorePageViewController _newSegmentedControlWithItems:](self, "_newSegmentedControlWithItems:", [v5 valueForKey:@"segmentedControlItem"]);
    if (![a3 style] && _UIApplicationUsesLegacyUI())
    {
      [v6 setSegmentedControlStyle:2];
    }

    [v6 setTintColor:{objc_msgSend(a3, "tintColor")}];
    [v6 setTintStyle:{objc_msgSend(a3, "tintStyle")}];
    [(SUStorePageViewController *)self _displaySegmentedControl:v6];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setSkLoading:(BOOL)a3
{
  v3 = a3;
  self->_lastLoadDidFail = 0;
  self->_loadingForSectionChange &= a3;
  [(SUViewController *)self->_activeChildViewController setSkLoading:?];
  v5.receiver = self;
  v5.super_class = SUStorePageViewController;
  [(SUViewController *)&v5 setSkLoading:v3];
}

- (void)setParentViewController:(id)a3
{
  v5 = [(UIViewController *)self section];
  v6.receiver = self;
  v6.super_class = SUStorePageViewController;
  [(SUViewController *)&v6 setParentViewController:a3];
  if (a3 && v5 != [(UIViewController *)self section]&& [(SUStorePageViewController *)self isViewLoaded])
  {
    [(SUStorePageViewController *)self _reloadSearchFieldWithSection:[(UIViewController *)self section]];
  }
}

- (void)setSection:(id)a3
{
  if (![(SSMutableURLRequestProperties *)self->_urlRequestProperties URL])
  {
    -[SSMutableURLRequestProperties setURLs:](self->_urlRequestProperties, "setURLs:", [MEMORY[0x1E695DEC8] arrayWithObjects:{objc_msgSend(a3, "url"), 0}]);
  }

  if (![(SSMutableURLRequestProperties *)self->_urlRequestProperties URLBagKey])
  {
    -[SSMutableURLRequestProperties setURLBagKey:](self->_urlRequestProperties, "setURLBagKey:", [a3 urlBagKey]);
  }

  if ([(SUStorePageViewController *)self isViewLoaded])
  {
    [(SUStorePageViewController *)self _reloadSearchFieldWithSection:a3];
  }

  v5.receiver = self;
  v5.super_class = SUStorePageViewController;
  [(SUViewController *)&v5 setSection:a3];
}

- (void)setScriptProperties:(id)a3
{
  v4.receiver = self;
  v4.super_class = SUStorePageViewController;
  [(SUViewController *)&v4 setScriptProperties:a3];
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
  v3 = [(SUStorePageViewController *)self storePageProtocol];
  v4 = v3;
  if (v3)
  {
    lastValidProtocol = self->_lastValidProtocol;
    if (lastValidProtocol != v3)
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

- (void)tabBarControllerDidLongPressTabBarItem:(id)a3
{
  if (![(SUStorePageViewController *)self isSkLoaded]&& [(SUViewController *)self isVisibleAndFrontmost])
  {
    v4 = [(SUStorePageViewController *)self URLRequestProperties];
    if ([(SSURLRequestProperties *)v4 URL])
    {
      v5 = [(SSURLRequestProperties *)v4 copyURLRequest];
      [objc_msgSend(MEMORY[0x1E695AC38] "sharedURLCache")];
    }

    [(SUStorePageViewController *)self reloadWithURLRequestProperties:v4];
  }
}

- (void)tabBarControllerDidReselectTabBarItem:(id)a3
{
  if (self->_lastLoadDidFail && ![(SUStorePageViewController *)self isSkLoaded]&& [(SUViewController *)self isVisibleAndFrontmost])
  {
    v4 = [(SUStorePageViewController *)self URLRequestProperties];

    [(SUStorePageViewController *)self reloadWithURLRequestProperties:v4];
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

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  if (self->_reloadOnAppear && [(SUStorePageViewController *)self _shouldFetchAutomatically])
  {
    [(SUStorePageViewController *)self _reloadForAppearance:v3];
    self->_reloadOnAppear = [(SUStorePageViewController *)self _sectionIsNetworkConstrained];
  }

  v5.receiver = self;
  v5.super_class = SUStorePageViewController;
  [(SUViewController *)&v5 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUStorePageViewController;
  [(SUViewController *)&v4 viewDidDisappear:a3];
  if ([(SUViewController *)self isSkLoading])
  {
    self->_reloadOnAppear = 1;
    [(SUStorePageViewController *)self showPlaceholderViewController];
    [(SUStorePageViewController *)self setSkLoading:0];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (!+[SUScriptNavigationSimulator transitioning])
  {
    v5 = [(UIViewController *)self section];
    [(SUStorePageViewController *)self _reloadSearchFieldWithSection:v5];
    if ([v5 type] == 1)
    {
      if ([(UIViewController *)self isRootViewController])
      {
        if (![(SUStorePageViewController *)self _shouldFetchAutomatically])
        {
          v6 = [(UISearchBar *)[(SUSearchFieldController *)self->_searchFieldController searchBar] text];
          if ([(NSString *)v6 length])
          {
            v7 = [(SUSearchFieldController *)self->_searchFieldController newRequestPropertiesWithSearchTerm:v6];
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

    [(SUStorePageViewController *)self _reloadForAppearance:v3];
    [(SUStorePageViewController *)self _reloadPreviewOverlayVisibility];
    v8.receiver = self;
    v8.super_class = SUStorePageViewController;
    [(SUViewController *)&v8 viewWillAppear:v3];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
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
    [(SUViewController *)&v5 viewWillDisappear:v3];
  }
}

- (void)didRotateFromInterfaceOrientation:(int64_t)a3
{
  if (self->_navigationMenuPopover)
  {
    v5 = [(SUStorePageViewController *)self navigationItemForScriptInterface];
    v6 = [(SUNavigationMenuViewController *)self->_navigationMenuViewController navigationMenu];
    if ([(SUNavigationMenu *)v6 location])
    {
      if ([(SUNavigationMenu *)v6 location]!= 1)
      {
        goto LABEL_8;
      }

      v8 = [v5 rightBarButtonItem];
    }

    else
    {
      v8 = [v5 leftBarButtonItem];
    }

    v7 = v8;
    if (v8)
    {
      [(UIPopoverController *)self->_navigationMenuPopover presentPopoverFromBarButtonItem:v8 permittedArrowDirections:15 animated:1];
      goto LABEL_9;
    }

LABEL_8:
    [(SUStorePageViewController *)self _tearDownNavigationMenu];
  }

LABEL_9:
  v9.receiver = self;
  v9.super_class = SUStorePageViewController;
  [(SUViewController *)&v9 didRotateFromInterfaceOrientation:a3];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v4.receiver = self;
  v4.super_class = SUStorePageViewController;
  [(SUViewController *)&v4 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
}

- (void)willRotateToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  [(UIPopoverController *)self->_navigationMenuPopover dismissPopoverAnimated:0];
  [(SUSearchFieldController *)self->_searchFieldController willRotateToInterfaceOrientation:a3];
  v7.receiver = self;
  v7.super_class = SUStorePageViewController;
  [(SUViewController *)&v7 willRotateToInterfaceOrientation:a3 duration:a4];
}

- (void)operation:(id)a3 failedWithError:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
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

  if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_ERROR))
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v16 = 138543874;
    v17 = objc_opt_class();
    v18 = 2112;
    v19 = a4;
    v20 = 2112;
    v21 = [(SUStorePageViewController *)self displayedURL];
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

  [(SUStorePageViewController *)self _handleFailureWithError:a4, v13];
  v15.receiver = self;
  v15.super_class = SUStorePageViewController;
  [(SUViewController *)&v15 operation:a3 failedWithError:a4];
}

- (void)operation:(id)a3 finishedWithOutput:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = [a3 response];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v7 itunes_expirationInterval], v8 >= 0.0))
  {
    v9 = v8 + CFAbsoluteTimeGetCurrent();
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
  }

  self->_expirationTime = v9;

  self->_performanceMetrics = [a3 performanceMetrics];
  v10 = [a3 dataProvider];
  v11 = [v10 outputType];
  v12 = [MEMORY[0x1E69D4938] sharedConfig];
  v13 = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = v13 | 2;
  }

  else
  {
    v14 = v13;
  }

  if (os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEFAULT))
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
    v26[0] = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "statusCode")}];
    v25[1] = @"correlationId";
    v16 = [objc_msgSend(v7 "allHeaderFields")];
    v17 = v16 ? v16 : @"<unknown>";
    v26[1] = v17;
    v25[2] = @"pageType";
    v26[2] = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    v25[3] = @"URL";
    v18 = [objc_msgSend(v7 "URL")];
    v19 = v18 ? v18 : @"<unknown>";
    v26[3] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
    v27 = 138543874;
    v28 = v24;
    v29 = 2114;
    v30 = a3;
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

  if (v11 == 5)
  {
    [(SUClientInterface *)[(SUViewController *)self clientInterface] _dispatchOnPageResponseWithData:a4 response:v7];
  }

  else
  {
    -[SUStorePageViewController reloadWithStorePage:ofType:forURL:](self, "reloadWithStorePage:ofType:forURL:", a4, [v10 outputType], objc_msgSend(v7, "URL"));
  }
}

- (void)setClientContext:(id)a3
{
  v4 = [a3 clientInterface];

  [(SUViewController *)self setClientInterface:v4];
}

- (void)showExternalURL:(id)a3
{
  v5 = [a3 underlyingURL];
  v6 = [a3 referrerApplicationName];
  v7 = [a3 referrerURLString];

  [(SUStorePageViewController *)self handleApplicationURL:v5 withSourceApplication:v6 sourceURL:v7];
}

- (void)menuViewController:(id)a3 didSelectItemAtIndex:(int64_t)a4
{
  navigationMenuViewController = self->_navigationMenuViewController;
  if (navigationMenuViewController == a3)
  {
    v6 = [(NSArray *)[[(SUNavigationMenuViewController *)navigationMenuViewController navigationMenu] menuItems] objectAtIndex:a4];
    v7 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:{objc_msgSend(v6, "URL")}];
    [(SUStorePageViewController *)self _dismissNavigationMenuViewController];
    [(SUStorePageViewController *)self _reloadWithURLRequestProperties:v7 preserveSectionControl:1];
  }
}

- (void)menuViewController:(id)a3 didTapButton:(id)a4
{
  if (self->_navigationMenuViewController == a3)
  {
    [(SUStorePageViewController *)self _dismissNavigationMenuViewController];
    v7 = [MEMORY[0x1E69DD258] transitionSafePerformer:self];

    [v7 _performActionForProtocolButton:a4];
  }
}

- (void)menuViewControllerDidCancel:(id)a3
{
  if (self->_navigationMenuViewController == a3)
  {
    [(SUStorePageViewController *)self _dismissNavigationMenuViewController];
  }
}

- (void)hidePreviewOverlay:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v6 = a4;
  v9 = [(SUStorePageViewController *)self view];
  v10 = [a3 view];
  [v9 setPreviewOverlayView:v10];
  [v9 layoutIfNeeded];
  [v9 setPreviewOverlayView:0];
  [v9 addSubview:v10];
  v11 = 0.0;
  if (v6)
  {
    +[SUPreviewOverlayViewController defaultAnimationDuration];
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__SUStorePageViewController_hidePreviewOverlay_animated_completionBlock___block_invoke;
  v13[3] = &unk_1E8164370;
  v13[4] = v10;
  v13[5] = self;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__SUStorePageViewController_hidePreviewOverlay_animated_completionBlock___block_invoke_2;
  v12[3] = &unk_1E8164A48;
  v12[4] = a5;
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

- (BOOL)showPreviewOverlay:(id)a3 animated:(BOOL)a4 completionBlock:(id)a5
{
  v6 = a4;
  v8 = [(SUStorePageViewController *)self view];
  v9 = [v8 headerView];
  if (v9)
  {
    v10 = [a3 view];
    [v8 setPreviewOverlayView:v10];
    [v8 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v10 frame];
    v20 = v19;
    v21 = *MEMORY[0x1E695EFF8];
    v22 = -v19;
    v28.origin.x = v12;
    v28.origin.y = v14;
    v28.size.width = v16;
    v28.size.height = v18;
    Width = CGRectGetWidth(v28);
    [v10 setFrame:{v21, v22, Width, v20}];
    v24 = 0.0;
    if (v6)
    {
      [objc_opt_class() defaultAnimationDuration];
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __73__SUStorePageViewController_showPreviewOverlay_animated_completionBlock___block_invoke;
    v27[3] = &unk_1E8164348;
    v27[4] = v8;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __73__SUStorePageViewController_showPreviewOverlay_animated_completionBlock___block_invoke_2;
    v26[3] = &unk_1E8164A70;
    *&v26[6] = v21;
    *&v26[7] = v22;
    *&v26[8] = Width;
    *&v26[9] = v20;
    v26[4] = v8;
    v26[5] = a5;
    [MEMORY[0x1E69DD250] animateWithDuration:v27 animations:v26 completion:v24];
  }

  return v9 != 0;
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

- (void)popoverControllerDidDismissPopover:(id)a3
{
  if (self->_navigationMenuPopover == a3)
  {
    [(SUStorePageViewController *)self _tearDownNavigationMenu];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  pendingChildViewController = self->_pendingChildViewController;
  if (pendingChildViewController && [(UIViewController *)pendingChildViewController viewIsReady:a3])
  {
    v8 = self->_pendingChildViewController;

    [(SUStorePageViewController *)self _handleViewControllerBecameReady:v8];
  }
}

- (void)_documentBoundsChangeNotification:(id)a3
{
  v4 = [a3 object];
  if (v4 != self && [(UIViewController *)v4 isDescendantOfViewController:self])
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];

    [v5 postNotificationName:@"SUViewControllerDocumentBoundsDidChangeNotification" object:self];
  }
}

- (void)_reloadForNetworkTypeChange:(id)a3
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

- (void)_scriptEventNotification:(id)a3
{
  v4 = [a3 userInfo];
  if ([objc_msgSend(v4 objectForKey:{@"viewController", "isDescendantOfViewController:", self}] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v5 = [objc_msgSend(v4 objectForKey:{@"payload", "dataUsingEncoding:", 4}];
    if (v5)
    {
      v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:0];
    }

    else
    {
      v6 = 0;
    }

    v7 = self;
    delegate = self->_delegate;
    v9 = [v4 objectForKey:@"name"];

    [(SUStorePageViewControllerDelegate *)delegate storePageViewController:self didReceiveScriptEvent:v9 payload:v6];
  }
}

- (void)_sendFailureAfterDialogsFinished:(id)a3
{
  if (![+[SUDialogManager numberOfPendingDialogs] sharedInstance]
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];

    [(SUStorePageViewController *)self _finishHandlingFailure];
  }
}

- (void)_tabConfigurationChanged:(id)a3
{
  [(SUStorePageViewController *)self _reloadNavigationBar];
  v4 = [(UIViewController *)self section];

  [(SUStorePageViewController *)self _reloadSearchFieldWithSection:v4];
}

- (void)_navigationButtonAction:(id)a3
{
  v4 = [a3 tag];
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

- (void)_navigationMenuButtonAction:(id)a3
{
  if (self->_navigationMenuViewController)
  {

    [(SUStorePageViewController *)self _dismissNavigationMenuViewController];
  }

  else
  {
    v5 = [a3 tag];
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
        [(UIPopoverController *)self->_navigationMenuPopover presentPopoverFromBarButtonItem:a3 permittedArrowDirections:15 animated:1];
      }

      else
      {
        [(SUStorePageViewController *)self presentViewController:v10 animated:1 completion:0];
      }

      [(UISearchBar *)[(SUSearchFieldController *)self->_searchFieldController searchBar] resignFirstResponder];
    }
  }
}

- (void)_sectionControlAction:(id)a3
{
  v4 = [a3 selectedItemIndex];
  if (self->_activeSectionIndex != v4)
  {
    v5 = v4;
    v6 = [(SUPageSectionGroup *)self->_sectionsGroup sections];
    if ([(SUStorePageViewController *)self isSkLoaded])
    {
      [(SUStorePageViewController *)self _setPendingChildViewController:0];
      [(SUViewController *)self cancelOperations];
    }

    else
    {
      [-[NSArray objectAtIndex:](v6 objectAtIndex:{self->_activeSectionIndex), "setUserInfo:", self->_activeChildViewController}];
    }

    [(SUStorePageViewController *)self _dismissNavigationMenuViewController];
    self->_activeSectionIndex = v5;
    [(SUSegmentedControl *)self->_segmentedControl setSelectedItemIndex:v5];
    v7 = [(NSArray *)v6 objectAtIndex:self->_activeSectionIndex];
    if ([v7 userInfo] && (-[SUStorePageViewController _expirationTime](self, "_expirationTime"), v8 > CFAbsoluteTimeGetCurrent()))
    {
      v9 = [v7 userInfo];
      [v9 _setExistingNavigationItem:{-[SUViewController navigationItem](self, "navigationItem")}];
      [v9 _setExistingTabBarItem:{-[SUStorePageViewController _existingTabBarItem](self, "_existingTabBarItem")}];
      [(SUStorePageViewController *)self _setActiveChildViewController:v9 shouldTearDown:0];
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

- (BOOL)_reloadWithURLRequestProperties:(id)a3 completionBlock:(id)a4
{
  loadBlock = self->_loadBlock;
  if (loadBlock != a4)
  {

    self->_loadBlock = [a4 copy];
  }

  [(SUStorePageViewController *)self setURLRequestProperties:a3];
  self->_reloadOnAppear = 1;
  if ([(SUStorePageViewController *)self _sectionIsNetworkConstrained])
  {
    return 0;
  }

  return [(SUStorePageViewController *)self _reloadWithURLRequestProperties:a3 preserveSectionControl:0];
}

- (void)_setHeaderView:(id)a3
{
  v5 = [(SUStorePageViewController *)self view];
  if ([v5 headerView] != a3)
  {
    [v5 setHeaderView:a3];

    [(SUStorePageViewController *)self _reloadPreviewOverlayVisibility];
  }
}

- (void)_setSegmentedControl:(id)a3
{
  if (self->_segmentedControl != a3)
  {
    v5 = [(SUStorePageViewController *)self navigationItemForScriptInterface];
    v6 = [v5 titleView];
    segmentedControl = self->_segmentedControl;
    if (v6 == segmentedControl)
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

    self->_segmentedControl = a3;
    v9 = [(UIViewController *)self section];
    if (v9)
    {
      -[SUSegmentedControl setTintStyle:](self->_segmentedControl, "setTintStyle:", [v9 defaultPNGStyle] == 1);
    }

    if (self->_segmentedControl)
    {
      [(SUStorePageViewController *)self _displaySegmentedControl:?];
    }

    if (v6 == segmentedControl)
    {
      v10 = self->_segmentedControl;
      if (!v10 || [(SUSegmentedControl *)v10 isDescendantOfView:[(SUStorePageViewController *)self view]])
      {
        [v5 setTitleView:0];
      }
    }

    pendingChildViewController = self->_pendingChildViewController;
    if (!pendingChildViewController)
    {
      pendingChildViewController = self->_activeChildViewController;
    }

    if ([(SUViewController *)pendingChildViewController isViewLoaded])
    {
      v12 = [(SUViewController *)pendingChildViewController view];
      [(SUStorePageViewController *)self _frameForActiveViewController];

      [v12 setFrame:?];
    }
  }
}

- (id)_activePageSection
{
  v3 = [(SUPageSectionGroup *)self->_sectionsGroup sections];
  activeSectionIndex = self->_activeSectionIndex;
  if (activeSectionIndex >= [(NSArray *)v3 count])
  {
    return 0;
  }

  v5 = self->_activeSectionIndex;

  return [(NSArray *)v3 objectAtIndex:v5];
}

- (void)_applyPropertiesToViewController:(id)a3
{
  v4 = [(SUViewController *)self _cachedScriptProperties];

  [a3 setScriptProperties:v4];
}

- (void)_dismissNavigationMenuViewController
{
  [(UIViewController *)self->_navigationMenuViewController dismissAnimated:1];

  [(SUStorePageViewController *)self _tearDownNavigationMenu];
}

- (void)_displaySegmentedControl:(id)a3
{
  if ([(SUStorePageViewController *)self _shouldDisplaySegmentedControlInNavigationBar:?])
  {
    if (_UIApplicationUsesLegacyUI())
    {
      [a3 setSegmentedControlStyle:2];
    }

    [a3 sizeToFitUserInterfaceIdiom];
    v5 = [(SUStorePageViewController *)self navigationItemForScriptInterface];

    [v5 setTitleView:a3];
  }

  else
  {
    v6 = [(SUStorePageViewController *)self view];
    if ([a3 conformsToProtocol:&unk_1F423BE40])
    {
      [a3 setDeferringInterfaceUpdates:0];
    }

    [a3 setSegmentedControlStyle:7];
    v7 = [[SUSegmentedControlBar alloc] initWithSegmentedControl:a3];
    [(SUSegmentedControlBar *)v7 sizeToFit];
    [(SUSegmentedControlBar *)v7 frame];
    [v6 bounds];
    [(SUSegmentedControlBar *)v7 setFrame:0.0, 0.0];
    [(SUStorePageViewController *)self _setHeaderView:v7];
  }
}

- (double)_expirationTime
{
  v3 = [(SUStorePageViewController *)self _activePageSection];
  if (!v3)
  {
    return self->_expirationTime;
  }

  [v3 expirationTime];
  return result;
}

- (void)_fetchPage:(BOOL)a3
{
  v3 = a3;
  if (![(SUStorePageViewController *)self isSkLoaded]|| v3)
  {
    [(SUStorePageViewController *)self setSkLoading:1];

    [(SUStorePageViewController *)self enqueueFetchOperation];
  }
}

- (void)_finishHandlingFailure
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69D4938] sharedConfig];
  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
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

  v9 = [(SUStorePageViewController *)self presentingViewController];
  v10 = [(SUStorePageViewController *)self _popoverController];
  if (v10)
  {
    [v10 dismissPopoverAnimated:1];
  }

  else if (v9)
  {
    [v9 dismissViewControllerAnimated:1 completion:0];
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
  v3 = [MEMORY[0x1E69D4938] sharedConfig];
  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_INFO))
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
    v9 = [MEMORY[0x1E69DC668] sharedApplication];
    if ([v9 shouldRecordExtendedLaunchTime])
    {
      [v9 finishedTest:objc_msgSend(v9 extraResults:{"_launchTestName"), 0}];
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
  v3 = [(SUStorePageViewController *)self view];
  if (v3)
  {
    v4 = v3;
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

- (void)_handleFailureWithError:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  self->_lastLoadDidFail = 1;
  self->_reloadOnAppear = 1;
  [(SUStorePageViewController *)self setSkLoading:0];
  [(SUStorePageViewController *)self handleFailureWithError:a3];
  if ([(NSArray *)[(SUViewController *)self _pendingDialogs] count]|| [+[SUDialogManager numberOfPendingDialogs] sharedInstance]
  {
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

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
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
      v22 = [+[SUDialogManager sharedInstance](SUDialogManager numberOfPendingDialogs];
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
    v10 = [(SUClientInterface *)[(SUViewController *)self clientInterface] showDialogOnError];
    if (a3 && v10)
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

- (void)_handleViewControllerBecameReady:(id)a3
{
  v5 = [a3 storePageProtocol];
  if ([v5 shouldDisplayInOverlay] && !-[UIViewController overlayViewController](self, "overlayViewController") && -[SUStorePageViewController canMoveToOverlay](self, "canMoveToOverlay"))
  {
    [(SUStorePageViewController *)self _verifyStorePageProtocol:v5];
    [(SUStorePageViewController *)self _moveToRootSectionForChildViewController:a3 protocol:v5];
    [(SUStorePageViewController *)self _moveChildViewController:a3 toOverlayForProtocol:v5];
  }

  else
  {
    [(SUStorePageViewController *)self _setActiveChildViewController:a3 shouldTearDown:1];
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

- (void)_logInternalEventWithOperation:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if (!self->_didRecordLoggingEvent)
  {
    self->_didRecordLoggingEvent = 1;
    v5 = [MEMORY[0x1E69E47F8] sharedCache];
    v6 = [v5 URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)}];
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
      v12 = [MEMORY[0x1E69D4938] sharedConfig];
      v13 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v14 = v13 | 2;
      }

      else
      {
        v14 = v13;
      }

      if (!os_log_type_enabled([v12 OSLogObject], OS_LOG_TYPE_DEFAULT))
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
      v19 = [objc_msgSend(a3 "requestProperties")];
      [v17 setErrorMessage:{objc_msgSend(v18, "stringWithFormat:", @"%@", objc_msgSend(v19, "ams_URLByReplaceingQueryParameters:", MEMORY[0x1E695E0F8]))}];
      v20 = [objc_alloc(MEMORY[0x1E69E4720]) initWithURLBag:v6];
      [objc_msgSend(MEMORY[0x1E698CA00] internalInstanceUsingBag:{v20), "enqueueEvent:", v17}];
    }
  }
}

- (void)_moveChildViewController:(id)a3 toOverlayForProtocol:(id)a4
{
  activeChildViewController = self->_activeChildViewController;
  if (activeChildViewController == a3)
  {
    [(UIViewController *)activeChildViewController storePageCleanupBeforeTearDown];
    [(SUViewController *)self->_activeChildViewController _setExistingNavigationItem:0];
    [(SUViewController *)self->_activeChildViewController _setExistingTabBarItem:0];
    v8 = self->_activeChildViewController;
    self->_activeChildViewController = 0;
  }

  if ([a3 isViewLoaded])
  {
    [objc_msgSend(a3 "view")];
  }

  [(SUStorePageViewController *)self removeChildViewController:a3];
  v16 = objc_alloc_init(objc_opt_class());
  [v16 _setActiveChildViewController:a3 shouldTearDown:1];
  [v16 setAuthenticationContext:{-[SUStorePageViewController authenticationContext](self, "authenticationContext")}];
  [v16 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
  [v16 setNeedsAuthentication:{-[SUStorePageViewController needsAuthentication](self, "needsAuthentication")}];
  [v16 setURLRequestProperties:self->_urlRequestProperties];
  [objc_msgSend(v16 "navigationItem")];
  [a3 _setExistingNavigationItem:{objc_msgSend(v16, "navigationItem")}];
  [a3 _setExistingTabBarItem:{objc_msgSend(v16, "_existingTabBarItem")}];
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
  v13 = [a4 overlayBackgroundURLRequestProperties];
  [(SUStorePageViewController *)self _finishSuccessfulLoad];
  [(SUStorePageViewController *)self showPlaceholderViewController];
  if (v13)
  {

    self->_urlRequestProperties = [v13 mutableCopy];
    [(SUStorePageViewController *)self _fetchPage:0];
  }

  else
  {
    v14 = [(SUStorePageViewController *)self tabBarController];
    if (-[UIViewController isDescendantOfViewController:](self, "isDescendantOfViewController:", [v14 transientViewController]))
    {
      v15 = self;
      [v14 setTransientViewController:0 animated:0];
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

- (void)_moveToRootSectionForChildViewController:(id)a3 protocol:(id)a4
{
  if ([(SUStorePageViewController *)self isExternalRequest])
  {
    if (+[SUClientDispatch isTabBarControllerLoaded])
    {
      v7 = +[SUClientDispatch tabBarController];
      if ([(UIViewController *)self isDescendantOfViewController:v7])
      {
        v8 = [a3 hasDisplayableContent];
        v9 = [a4 rootSectionIdentifier];
        if (v9)
        {
          v10 = v9;
          if (v8)
          {
            if ([a4 shouldReplaceRootViewController])
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

            [v7 setSelectedIdentifier:v9];
          }
        }

        else if ((v8 & 1) == 0)
        {

          [v7 selectDefaultSection];
        }
      }
    }
  }
}

- (id)_newBarButtonItemsWithButtonItems:(id)a3 replacingItemWithTag:(int64_t)a4 withButtonItem:(id)a5
{
  v7 = [a3 mutableCopy];
  v8 = v7;
  if (a5)
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
    while ([objc_msgSend(v8 objectAtIndex:{v9), "tag"}] != a4)
    {
      if (++v9 >= [v8 count])
      {
        goto LABEL_15;
      }
    }

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v8 replaceObjectAtIndex:v9 withObject:a5];
    }

    else
    {
LABEL_15:
      [v8 addObject:a5];
    }
  }

  else if ([v7 count])
  {
    v10 = 0;
    while ([objc_msgSend(v8 objectAtIndex:{v10), "tag"}] != a4)
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

- (id)_newSegmentedControlWithItems:(id)a3
{
  v5 = [(SUStorePageViewController *)self copyObjectForScriptFromPoolWithClass:objc_opt_class()];
  [v5 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
  [v5 setItems:a3];
  return v5;
}

- (void)_performActionForProtocolButton:(id)a3
{
  v5 = [a3 buttonTarget];
  if ([v5 isEqualToString:@"external"])
  {
    v6 = [a3 URL];
    v7 = [(SUViewController *)self clientInterface];

    SUOpenExternalURL(v6, v7);
  }

  else
  {
    if ([v5 isEqualToString:@"self"])
    {
      v10 = [(SSMutableURLRequestProperties *)self->_urlRequestProperties mutableCopy];
      [v10 setURLs:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", objc_msgSend(a3, "URL"), 0)}];
      [(SUStorePageViewController *)self reloadWithURLRequestProperties:v10];
    }

    else
    {
      v8 = [v5 isEqualToString:@"account"];
      v10 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:{objc_msgSend(a3, "URL")}];
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
  v3 = [(SUStorePageViewController *)self view];
  v7 = [(SUStorePageViewController *)self copyScriptProperties];
  if ([v7 usesBlurredBackground])
  {
    backdropView = self->_backdropView;
    if (!backdropView)
    {
      backdropView = [objc_alloc(MEMORY[0x1E69DD370]) initWithPrivateStyle:2020];
      self->_backdropView = backdropView;
    }

    [v3 setBackdropView:backdropView];
    [v3 setBackgroundColor:{objc_msgSend(MEMORY[0x1E69DC888], "clearColor")}];
    [v3 setOpaque:0];
  }

  else
  {
    v5 = [v7 backgroundColor];
    if (!v5)
    {
      v5 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    }

    [v3 setBackgroundColor:v5];
    [v5 alphaComponent];
    [v3 setOpaque:v6 == 1.0];
    [v3 setBackdropView:0];

    self->_backdropView = 0;
  }
}

- (void)_reloadForAppearance:(BOOL)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [(SUStorePageViewController *)self _reloadsWhenCacheExpired];
  if ([(SUStorePageViewController *)self presentedViewController])
  {
    v4 = 0;
  }

  else if (![(UIViewController *)self overlayViewController])
  {
    v4 = ([(UIViewController *)self overlayBackgroundViewController]== 0) & v4;
  }

  v5 = [(SUStorePageViewController *)self _sectionIsNetworkConstrained];
  v6 = v5;
  if (v5)
  {
    v7 = [-[SUViewController viewControllerFactory](self "viewControllerFactory")];
    [v7 setClientInterface:{-[SUViewController clientInterface](self, "clientInterface")}];
    [v7 _setExistingNavigationItem:{-[SUViewController navigationItem](self, "navigationItem")}];
    [(SUStorePageViewController *)self _setActiveChildViewController:v7 shouldTearDown:1];

    goto LABEL_27;
  }

  if ([(UIViewController *)self->_activeChildViewController viewIsReady]&& !self->_reloadOnAppear)
  {
    if (v4 && [(SUStorePageViewController *)self _isCacheExpired])
    {
      v10 = [MEMORY[0x1E69D4938] sharedConfig];
      v11 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v12 = v11 | 2;
      }

      else
      {
        v12 = v11;
      }

      if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v19 = 138412546;
        v20 = objc_opt_class();
        v21 = 2112;
        v22 = [(SUStorePageViewController *)self displayedURL];
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
        v8 = self;
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
      v8 = self;
      v9 = 1;
LABEL_12:
      [(SUStorePageViewController *)v8 _fetchPage:v9];
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
  v3 = [(SUStorePageViewController *)self storePageProtocol];
  v4 = [v3 navigationButtonForLocation:@"left"];
  if (v4)
  {
    v4 = [[SUBarButtonItem alloc] initWithTitle:[(SUBarButtonItem *)v4 buttonTitle] style:0 target:self action:sel__navigationButtonAction_];
  }

  v5 = [v3 navigationButtonForLocation:@"right"];
  if (v5)
  {
    v7 = -[SUBarButtonItem initWithTitle:style:target:action:]([SUBarButtonItem alloc], "initWithTitle:style:target:action:", [v5 buttonTitle], 0, self, sel__navigationButtonAction_);
  }

  else
  {
    v7 = 0;
  }

  v6 = [(SUClientInterface *)[(SUViewController *)self clientInterface] appearance];
  [(SUUIAppearance *)v6 styleBarButtonItem:v4];
  [(SUUIAppearance *)v6 styleBarButtonItem:v7];
  [(SUStorePageViewController *)self _setLeftNavigationItem:v4 forTag:1851944034];
  [(SUStorePageViewController *)self _setRightNavigationItem:v7 forTag:1851945570];
}

- (void)_reloadNavigationMenus
{
  v3 = [(SUStorePageViewController *)self storePageProtocol];
  v4 = [v3 navigationMenuForLocation:0];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 closedTitle];
    if (!v6)
    {
      v6 = [v5 openTitle];
    }

    v7 = [[SUBarButtonItem alloc] initWithTitle:v6 style:0 target:self action:sel__navigationMenuButtonAction_];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 navigationMenuForLocation:1];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 closedTitle];
    if (!v10)
    {
      v10 = [v9 openTitle];
    }

    v12 = [[SUBarButtonItem alloc] initWithTitle:v10 style:0 target:self action:sel__navigationMenuButtonAction_];
  }

  else
  {
    v12 = 0;
  }

  v11 = [(SUClientInterface *)[(SUViewController *)self clientInterface] appearance];
  [(SUUIAppearance *)v11 styleBarButtonItem:v7];
  [(SUUIAppearance *)v11 styleBarButtonItem:v12];
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

- (void)_reloadSearchFieldWithSection:(id)a3
{
  v24 = [(SUViewController *)self navigationItem];
  v5 = [a3 searchFieldConfiguration];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 location];
    v8 = [(SUStorePageViewController *)self _shouldDisplayControlsInNavigationBar];
    v9 = v7 != 2 && (-[UIViewController isRootViewController](self, "isRootViewController") || ([v6 isRootViewOnly] & 1) == 0) && (objc_msgSend(objc_msgSend(MEMORY[0x1E69DC938], "currentDevice"), "userInterfaceIdiom") || !-[UIViewController isDescendantOfViewController:](self, "isDescendantOfViewController:", objc_msgSend(-[SUStorePageViewController tabBarController](self, "tabBarController"), "transientViewController"))) && -[UIViewController overlayViewController](self, "overlayViewController") == 0;
  }

  else
  {
    v8 = [(SUStorePageViewController *)self _shouldDisplayControlsInNavigationBar];
    v9 = 0;
    v7 = 2;
  }

  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")])
  {
    v10 = v8;
  }

  else
  {
    v10 = v9 && v8;
  }

  v11 = v10 ^ 1u;
  v12 = [(SUSearchFieldController *)self->_searchFieldController searchBar];
  v13 = [(SUStorePageViewController *)self navigationItemForScriptInterface];
  v14 = v13;
  if (!v9 || !v8 || v7 != 1)
  {
    if (-[UISearchBar isDescendantOfView:](v12, "isDescendantOfView:", [objc_msgSend(v13 "leftBarButtonItem")]))
    {
      [v14 setLeftBarButtonItem:0];
    }

    if (!v7 && v9 && v8)
    {
      goto LABEL_63;
    }
  }

  if (-[UISearchBar isDescendantOfView:](v12, "isDescendantOfView:", [v14 titleView]))
  {
    [v14 setTitleView:0];
  }

  if (v7 != 3 || !v9 || !v8)
  {
LABEL_63:
    if (-[UISearchBar isDescendantOfView:](v12, "isDescendantOfView:", [objc_msgSend(v14 "rightBarButtonItem")]))
    {
      [v14 setRightBarButtonItem:0];
    }
  }

  if ((v8 || !v9) && -[SUStorePageViewController isViewLoaded](self, "isViewLoaded") && v12 == [-[SUStorePageViewController view](self "view")])
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

  v21 = [(SUSearchFieldController *)v20 searchBar];
  [(UISearchBar *)v21 setAlpha:1.0];
  v22 = !v9;
  if (!v21)
  {
    v22 = 1;
  }

  if ((v22 & 1) == 0)
  {
    if (v8)
    {
      if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
      {
        if ((_UIApplicationUsesLegacyUI() & 1) == 0)
        {
          [(UISearchBar *)v21 setBarStyle:[(SUViewController *)self ITunesStoreUIBarStyle]== 2];
        }

        v23 = [[SUBarButtonItem alloc] initWithCustomView:v21];
        [(SUUIAppearance *)[(SUClientInterface *)[(SUViewController *)self clientInterface] appearance] styleBarButtonItem:v23];
        switch(v7)
        {
          case 3:
            [v14 setRightBarButtonItem:v23];
            break;
          case 1:
            [v14 setLeftBarButtonItem:v23];
            break;
          case 0:
            [v14 setTitleView:v21];
            break;
        }
      }
    }

    else if ([(SUStorePageViewController *)self isViewLoaded])
    {
      [(SUStorePageViewController *)self _setHeaderView:v21];
    }
  }

  if (v24 != [(SUViewController *)self navigationItem])
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
  v3 = [(UIViewController *)self section];
  if (v3)
  {
    v4 = v3;
    if ([(UIViewController *)self isRootViewController])
    {
      if (![(SUStorePageViewController *)self _isInTransientViewController])
      {
        v5 = [(SUStorePageViewController *)self navigationItemForScriptInterface];
        v6 = [(SUClientInterface *)[(SUViewController *)self clientInterface] appearance];
        v7 = [v4 leftSectionButtons];
        if ([v7 count])
        {
          v23 = v5;
          v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
                  objc_enumerationMutation(v7);
                }

                v13 = *(*(&v28 + 1) + 8 * v12);
                v14 = objc_alloc_init(SUBarButtonItem);
                [v13 applyToBarButtonItem:v14];
                [(SUUIAppearance *)v6 styleBarButtonItem:v14];
                SUButtonActionAttachToBarButtonItem(v14);
                [v8 addObject:v14];

                ++v12;
              }

              while (v10 != v12);
              v10 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
            }

            while (v10);
          }

          v5 = v23;
          [v23 setLeftBarButtonItems:v8];
        }

        v15 = [v4 rightSectionButtons];
        if ([v15 count])
        {
          v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v17 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
                  objc_enumerationMutation(v15);
                }

                v21 = *(*(&v24 + 1) + 8 * v20);
                v22 = objc_alloc_init(SUBarButtonItem);
                [v21 applyToBarButtonItem:v22];
                [(SUUIAppearance *)v6 styleBarButtonItem:v22];
                SUButtonActionAttachToBarButtonItem(v22);
                [v16 addObject:v22];

                ++v20;
              }

              while (v18 != v20);
              v18 = [v15 countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v18);
          }

          [v5 setRightBarButtonItems:v16];
        }
      }
    }
  }
}

- (void)_reloadSectionsControlWithGroup:(id)a3
{
  pendingChildViewController = self->_pendingChildViewController;
  if (!pendingChildViewController)
  {
    pendingChildViewController = self->_activeChildViewController;
  }

  if ([(UIViewController *)pendingChildViewController canDisplaySectionGroup:a3])
  {
    v6 = pendingChildViewController;
  }

  else
  {
    [(UIViewController *)pendingChildViewController setDisplayedSectionGroup:0];
    v6 = self;
  }

  v7 = [(SUStorePageViewController *)v6 setDisplayedSectionGroup:a3];
  [v7 addTarget:self action:sel__sectionControlAction_ forControlEvents:4096];
  [v7 setSelectedItemIndex:self->_activeSectionIndex];

  [(SUStorePageViewController *)self _setSegmentedControl:v7];
}

- (BOOL)_reloadWithURLRequestProperties:(id)a3 preserveSectionControl:(BOOL)a4
{
  v4 = a4;
  [(SUViewController *)self cancelOperations];
  [(SUStorePageViewController *)self setSkLoading:0];
  [(SUStorePageViewController *)self setURLRequestProperties:a3];
  if (v4)
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

- (void)_renderStorePage:(id)a3 withType:(int64_t)a4 url:(id)a5 viewController:(id)a6 block:(id)a7
{
  [(SUStorePageViewController *)self addChildViewController:a6];
  [(SUStorePageViewController *)self _applyPropertiesToViewController:a6];
  v12 = [(SUViewController *)self navigationItem];
  -[UINavigationItem mergeValuesFromItem:](v12, "mergeValuesFromItem:", [a6 navigationItem]);
  [a6 _setExistingNavigationItem:v12];
  [a6 _setExistingTabBarItem:{-[SUStorePageViewController _existingTabBarItem](self, "_existingTabBarItem")}];
  v13 = [a6 view];
  [-[SUStorePageViewController view](self "view")];
  [v13 setFrame:?];
  if ([(SUViewController *)self _restoredContext])
  {
    [a6 restoreArchivableContext:{-[SUViewController _restoredContext](self, "_restoredContext")}];
    [(SUViewController *)self resetRestoredContext];
  }

  [(SUStorePageViewController *)self setSkLoading:1];
  if (a4 == 1)
  {
    v14 = [MEMORY[0x1E698C7D8] bagForProfile:@"AppStore" profileVersion:@"1"];
    v15 = objc_opt_class();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __80__SUStorePageViewController__renderStorePage_withType_url_viewController_block___block_invoke;
    v17[3] = &unk_1E8164AC0;
    v17[5] = a5;
    v17[6] = a7;
    v17[4] = self;
    [v15 isLegacyWebViewForURL:a5 bag:v14 completion:v17];
  }

  else
  {
    (*(a7 + 2))(a7);
  }

  v16 = [a6 viewIsReady];
  self->_pageType = a4;
  if (v16)
  {
    [(SUStorePageViewController *)self _handleViewControllerBecameReady:a6];
  }

  else
  {
    [(SUStorePageViewController *)self _setPendingChildViewController:a6];
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

+ (void)isLegacyWebViewForURL:(id)a3 bag:(id)a4 completion:(id)a5
{
  v19 = *MEMORY[0x1E69E9840];
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

  if (v11)
  {
    v17 = 138412290;
    v18 = a3;
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

  if (!a3)
  {
    (*(a5 + 2))(a5, 0);
  }

  v14 = [objc_msgSend(objc_alloc(MEMORY[0x1E698CB70]) initWithBag:{a4), "typeForURL:", a3}];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__SUStorePageViewController_isLegacyWebViewForURL_bag_completion___block_invoke;
  v16[3] = &unk_1E8164AE8;
  v16[4] = a5;
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

- (void)_repositionForChildViewController:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(SUStorePageViewController *)self isExternalRequest])
  {
    v5 = [a3 storePageProtocol];
    [(SUStorePageViewController *)self _moveToRootSectionForChildViewController:a3 protocol:v5];
    if ([a3 hasDisplayableContent])
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = [(SUViewController *)self clientInterface];
      v8 = [(SUViewController *)self viewControllerFactory];
      v18 = self;
      v9 = [(UIViewController *)self section];
      v10 = [v5 navigationHistoryItems];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * v14);
            v16 = [v8 newStorePageViewControllerWithSection:v9];
            [v16 setClientInterface:v7];
            [v16 setTitle:{objc_msgSend(v15, "title")}];
            [v16 setURLRequestProperties:{objc_msgSend(v15, "URLRequestProperties")}];
            [v6 addObject:v16];

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v12);
      }

      if ([v6 count])
      {
        v17 = [(SUViewController *)v18 navigationController];
        [v6 addObject:{objc_msgSend(v17, "topViewController")}];
        [v17 setViewControllers:v6 animated:0];
      }
    }
  }
}

- (void)_requestWebScriptReloadWithContext:(id)a3
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  activeChildViewController = self->_activeChildViewController;
  if (isKindOfClass)
  {

    [(SUViewController *)activeChildViewController _requestWebScriptReloadWithContext:a3];
  }

  else
  {
    NSLog(&cfstr_RequestingAWeb.isa, self->_activeChildViewController);
  }
}

- (BOOL)_sectionIsNetworkConstrained
{
  v2 = [(UIViewController *)self section];
  if (v2)
  {
    v3 = [v2 minimumNetworkType];
    LOBYTE(v2) = v3 > [objc_msgSend(MEMORY[0x1E69E4778] "sharedInstance")];
  }

  return v2;
}

- (void)_setActiveChildViewController:(id)a3 shouldTearDown:(BOOL)a4
{
  if (self->_activeChildViewController != a3)
  {
    v4 = a4;
    v7 = [(SUStorePageViewController *)self isViewLoaded];
    activeChildViewController = self->_activeChildViewController;
    if (!activeChildViewController)
    {
      goto LABEL_9;
    }

    if (v7)
    {
      [(SUViewController *)activeChildViewController viewWillDisappear:0];
      activeChildViewController = self->_activeChildViewController;
    }

    if (v4)
    {
      [(UIViewController *)activeChildViewController storePageCleanupBeforeTearDown];
      activeChildViewController = self->_activeChildViewController;
    }

    [(SUViewController *)activeChildViewController _setExistingNavigationItem:0];
    [(SUViewController *)self->_activeChildViewController _setExistingTabBarItem:0];
    [(SUStorePageViewController *)self removeChildViewController:self->_activeChildViewController];
    activeChildViewController = self->_activeChildViewController;
    if (v7)
    {
      v12 = [(SUViewController *)activeChildViewController contentScrollView];
      [-[SUStorePageViewController view](self "view")];
      [-[SUViewController view](self->_activeChildViewController "view")];
      [(SUViewController *)self->_activeChildViewController viewDidDisappear:0];
      activeChildViewController = self->_activeChildViewController;
    }

    else
    {
LABEL_9:
      v12 = 0;
    }

    self->_activeChildViewController = a3;
    v9 = [(SUStorePageViewController *)self navigationItemForScriptInterface];
    if (self->_activeChildViewController)
    {
      [(SUStorePageViewController *)self addChildViewController:?];
      if (v7)
      {
        v10 = [(SUViewController *)self->_activeChildViewController view];
        [(SUStorePageViewController *)self _frameForActiveViewController];
        [v10 setFrame:?];
        [(SUViewController *)self->_activeChildViewController viewWillAppear:0];
        [-[SUStorePageViewController view](self "view")];
        [(SUViewController *)self->_activeChildViewController viewDidAppear:0];
      }

      [(SUViewController *)self->_activeChildViewController setSkLoading:[(SUStorePageViewController *)self isSkLoaded]];
      v11 = [(SUViewController *)self->_activeChildViewController title];
      if (v11)
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
      [(SUStorePageViewController *)self resetNavigationItem:v9];
    }
  }
}

- (void)_setLeftNavigationItem:(id)a3 forTag:(int64_t)a4
{
  v7 = [(SUStorePageViewController *)self navigationItemForScriptInterface];
  v8 = -[SUStorePageViewController _newBarButtonItemsWithButtonItems:replacingItemWithTag:withButtonItem:](self, "_newBarButtonItemsWithButtonItems:replacingItemWithTag:withButtonItem:", [v7 leftBarButtonItems], a4, a3);
  [a3 setTag:a4];
  [v7 setLeftBarButtonItems:v8];
}

- (void)_setPendingChildViewController:(id)a3
{
  pendingChildViewController = self->_pendingChildViewController;
  if (pendingChildViewController != a3)
  {
    if (pendingChildViewController && pendingChildViewController != self->_activeChildViewController)
    {
      [(SUStorePageViewController *)self removeChildViewController:?];
      pendingChildViewController = self->_pendingChildViewController;
    }

    [(SUViewController *)pendingChildViewController removeObserver:self forKeyPath:@"viewIsReady"];

    v6 = a3;
    self->_pendingChildViewController = v6;

    [(SUViewController *)v6 addObserver:self forKeyPath:@"viewIsReady" options:0 context:0];
  }
}

- (void)_setRightNavigationItem:(id)a3 forTag:(int64_t)a4
{
  v7 = [(SUStorePageViewController *)self navigationItemForScriptInterface];
  v8 = -[SUStorePageViewController _newBarButtonItemsWithButtonItems:replacingItemWithTag:withButtonItem:](self, "_newBarButtonItemsWithButtonItems:replacingItemWithTag:withButtonItem:", [v7 rightBarButtonItems], a4, a3);
  [a3 setTag:a4];
  [v7 setRightBarButtonItems:v8];
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

- (void)_showPlaceholderViewControllerWithTearDown:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUStorePageViewController *)self newPlaceholderViewController];
  [v5 _setExistingNavigationItem:{-[SUViewController navigationItem](self, "navigationItem")}];
  [(SUStorePageViewController *)self _setActiveChildViewController:v5 shouldTearDown:v3];
}

- (void)_tearDownNavigationMenu
{
  [(SUMenuViewController *)self->_navigationMenuViewController setDelegate:0];

  self->_navigationMenuViewController = 0;
  [(UIPopoverController *)self->_navigationMenuPopover setDelegate:0];

  self->_navigationMenuPopover = 0;
}

- (void)_verifyStorePageProtocol:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = [a3 expectedClientIdentifiers];
  if ([v4 count] && !-[SUClientInterface _ignoresExpectedClientsProtocol](-[SUViewController clientInterface](self, "clientInterface"), "_ignoresExpectedClientsProtocol"))
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v34 objects:v43 count:16];
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
          objc_enumerationMutation(v4);
        }

        if ([SUClientDispatch matchesClientApplication:*(*(&v34 + 1) + 8 * v8)])
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v34 objects:v43 count:16];
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

      if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v12 = objc_opt_class();
        v39 = 138412546;
        v40 = v12;
        v41 = 2112;
        v42 = v4;
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
      v16 = [(SUStorePageViewController *)self displayedURL];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v17 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
              objc_enumerationMutation(v4);
            }

            v21 = *(*(&v30 + 1) + 8 * i);
            if (SUOpenURLInClient(v16, v21, [(SUViewController *)self clientInterface]))
            {
              v22 = [MEMORY[0x1E69D4938] sharedConfig];
              v23 = [v22 shouldLog];
              if ([v22 shouldLogToDisk])
              {
                v24 = v23 | 2;
              }

              else
              {
                v24 = v23;
              }

              if (os_log_type_enabled([v22 OSLogObject], OS_LOG_TYPE_DEBUG))
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
                v42 = v16;
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

          v18 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
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