@interface RUIObjectModel
+ (id)objectModelForXMLNamed:(id)a3;
- (BOOL)_shouldDisplayNamedElement:(id)a3 page:(id)a4;
- (BOOL)goBack:(BOOL)a3;
- (BOOL)hasAttributeOrAttributeFunctionNamed:(id)a3 withAttributes:(id)a4;
- (BOOL)hasConfirmationAttributes:(id)a3;
- (BOOL)hasSecondConfirmationAttributes:(id)a3;
- (BOOL)prepareScriptContext;
- (BOOL)tableViewOM:(id)a3 deleteRowAtIndexPath:(id)a4;
- (BOOL)validateWithFunction:(id)a3;
- (BOOL)webViewOM:(id)a3 shouldStartLoadWithRequest:(id)a4 navigationType:(int64_t)a5;
- (Class)customFooterClassForSection:(id)a3;
- (Class)customHeaderClassForSection:(id)a3;
- (Class)customTableCellClassForTableViewRow:(id)a3;
- (NSArray)allPages;
- (NSArray)pages;
- (NSString)description;
- (OpaqueJSContext)jsContextRef;
- (RUIObjectModel)init;
- (RUIObjectModelDelegate)delegate;
- (RUIPage)visiblePage;
- (RemoteUITelemetryDelegate)telemetryDelegate;
- (UIPopoverPresentationControllerSourceItem)popoverSourceItem;
- (id)_firstPageForPresentation;
- (id)_pageContainingTableView:(id)a3;
- (id)_parentNavigationController;
- (id)_parentViewController;
- (id)_viewControllerFromNavigatingBackWithinDisplayedPagesAnimated:(BOOL)a3;
- (id)absoluteURLWithString:(id)a3;
- (id)alertController;
- (id)elementForActivityIndicatorAnchorId:(id)a3;
- (id)elementForActivityIndicatorWithActivatedElement:(id)a3;
- (id)elementForActivityIndicatorWithAttributes:(id)a3;
- (id)elementsWithName:(id)a3;
- (id)invokeScriptFunction:(id)a3 withArguments:(id)a4;
- (id)newNavigationControllerForPresentation;
- (id)objectForJSValue:(OpaqueJSValue *)a3;
- (id)postbackData;
- (id)postbackDictionary;
- (id)relativeURLWithString:(id)a3;
- (id)rowForFormField:(id)a3;
- (id)stringForAttributeName:(id)a3 withAttributes:(id)a4;
- (id)subElementWithID:(id)a3;
- (id)tableFooterViewForAttributes:(id)a3;
- (id)tableHeaderViewForAttributes:(id)a3;
- (id)textInRowWithIdentifier:(id)a3;
- (unint64_t)supportedInterfaceOrientationsForRUIPage:(id)a3;
- (void)RUIPage:(id)a3 pressedNavBarButton:(id)a4;
- (void)RUIPage:(id)a3 toggledEditing:(BOOL)a4;
- (void)_displayNamedPage:(id)a3 animated:(BOOL)a4;
- (void)_displaySupplementalPage:(id)a3;
- (void)_handleElementChange:(id)a3 completion:(id)a4;
- (void)_handleLinkPress:(id)a3 attributes:(id)a4 completion:(id)a5;
- (void)_navigateBackWithPop:(BOOL)a3 fromViewController:(id)a4;
- (void)_populatePageNavItem:(id)a3 withNextButton:(BOOL)a4;
- (void)_populateRequest:(id)a3;
- (void)_presentConfirmationWithAttributes:(id)a3 completion:(id)a4;
- (void)_presentSecondConfirmationWithAttributes:(id)a3 completion:(id)a4;
- (void)_startNavigationBarSpinnerIfNeededForAttributes:(id)a3;
- (void)_stopNavigationBarSpinnerIfNeededForAttributes:(id)a3;
- (void)_unsafe_setPages:(id)a3;
- (void)activateElement:(id)a3 completion:(id)a4;
- (void)activateElement:(id)a3 sender:(id)a4 completion:(id)a5;
- (void)addAlertElement:(id)a3;
- (void)alertView:(id)a3 pressedButton:(id)a4 completion:(id)a5;
- (void)cleanupRefreshTimer;
- (void)configureRow:(id)a3;
- (void)configureSection:(id)a3;
- (void)configureTableView:(id)a3;
- (void)dealloc;
- (void)handleAppleIDAuthenticationIfNeededForAttributes:(id)a3 completion:(id)a4;
- (void)handleElementChange:(id)a3 action:(int)a4 completion:(id)a5;
- (void)initializeSwift;
- (void)jsInterfaceForElementId:(id)a3;
- (void)navigateToNextPageAnimated:(BOOL)a3;
- (void)notifyXMLUIDataChange;
- (void)openLink:(id)a3 HTTPMethod:(id)a4 attributes:(id)a5 completion:(id)a6;
- (void)pageDidDisappear:(id)a3;
- (void)parseDidFinish;
- (void)populatePostbackDictionary:(id)a3;
- (void)presentConfirmationIfNeededForElement:(id)a3 completion:(id)a4;
- (void)presentInParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentPage:(id)a3 inViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)presentWithBlock:(id)a3;
- (void)refreshTimeout;
- (void)refreshWithObjectModel:(id)a3;
- (void)remoteUIWebViewController:(id)a3 dismissWithPayload:(id)a4;
- (void)remoteUIWebViewControllerDidDismiss:(id)a3;
- (void)runScript;
- (void)setActivityIndicatorStatus:(BOOL)a3 forElement:(id)a4;
- (void)setDecodingUserInfo:(id)a3;
- (void)setJSGlobalContext:(OpaqueJSContext *)a3;
- (void)setPages:(id)a3;
- (void)setPopoverSourceItem:(id)a3;
- (void)setStyle:(id)a3;
- (void)setUpdateInfo:(id)a3;
- (void)showModalWebViewWithLinkURL:(id)a3 dismissButtonLabel:(id)a4 dismissButtonAlignment:(id)a5 scaleToFit:(BOOL)a6 loadCompletion:(id)a7 dismissHandler:(id)a8;
- (void)startActivityIndicator;
- (void)startActivityIndicatorForElement:(id)a3;
- (void)startActivityIndicatorWithAttributes:(id)a3;
- (void)startNavigationBarSpinnerWithTitle:(id)a3;
- (void)stopActivityIndicator;
- (void)stopNavigationBarSpinner;
- (void)tableViewOM:(id)a3 elementDidChange:(id)a4 action:(int)a5 completion:(id)a6;
- (void)tableViewOMDidChange:(id)a3;
@end

@implementation RUIObjectModel

- (RUIObjectModel)init
{
  v16.receiver = self;
  v16.super_class = RUIObjectModel;
  v2 = [(RUIObjectModel *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_new();
    namedAlerts = v2->_namedAlerts;
    v2->_namedAlerts = v3;

    v5 = objc_opt_new();
    defaultPages = v2->_defaultPages;
    v2->_defaultPages = v5;

    v7 = objc_opt_new();
    displayedPages = v2->_displayedPages;
    v2->_displayedPages = v7;

    v9 = objc_opt_new();
    namedPages = v2->_namedPages;
    v2->_namedPages = v9;

    v11 = objc_opt_new();
    httpHeaders = v2->_httpHeaders;
    v2->_httpHeaders = v11;

    v13 = objc_opt_new();
    updateInfo = v2->_updateInfo;
    v2->_updateInfo = v13;

    [(RUIObjectModel *)v2 initializeSwift];
  }

  return v2;
}

- (void)cleanupRefreshTimer
{
  [(NSTimer *)self->_refreshTimer invalidate];
  refreshTimer = self->_refreshTimer;
  self->_refreshTimer = 0;
}

- (void)dealloc
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = self->_defaultPages;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 objectModel];

        if (v9 == self)
        {
          [v8 setObjectModel:0];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  v10 = [(NSMutableDictionary *)self->_namedPages allValues];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v18 + 1) + 8 * j);
        v16 = [v15 objectModel];

        if (v16 == self)
        {
          [v15 setObjectModel:0];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v12);
  }

  [(RUIObjectModel *)self setJSGlobalContext:0];
  [(RUIObjectModel *)self cleanupRefreshTimer];

  v17.receiver = self;
  v17.super_class = RUIObjectModel;
  [(RUIObjectModel *)&v17 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(RUIObjectModel *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p ID '%@', Source: %@\nDisplayed Pages: %@ Default Pages: %@ Named Pages: %@>", v4, self, v5, self->_sourceURL, self->_displayedPages, self->_defaultPages, self->_namedPages];

  return v6;
}

+ (id)objectModelForXMLNamed:(id)a3
{
  v3 = MEMORY[0x277CCA8D8];
  v4 = a3;
  v5 = [v3 mainBundle];
  v6 = [v5 URLForResource:v4 withExtension:@"xml"];

  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6];
  v8 = [[RUIParser alloc] initWithXML:v7 baseURL:v6 delegate:0];
  v9 = [(RUIParser *)v8 uiObjectModel];
  [v9 setName:v4];

  return v9;
}

- (void)parseDidFinish
{
  self->_parseFinished = 1;
  v3 = [(RUIObjectModel *)self style];
  [v3 applyToObjectModel:self];
}

- (void)_populatePageNavItem:(id)a3 withNextButton:(BOOL)a4
{
  v4 = a4;
  v23 = a3;
  v6 = [v23 navigationItem];
  v7 = v6;
  if (v4)
  {
    v8 = [v6 rightBarButtonItem];

    if (!v8)
    {
      v9 = objc_alloc(MEMORY[0x277D751E0]);
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"NEXT" value:&stru_282D68F58 table:@"Localizable"];
      v12 = [v9 initWithTitle:v11 style:self->_nextButtonStyle target:self action:sel__navigateToNextPageAnimated];

      [v7 setRightBarButtonItem:v12];
    }
  }

  if (!+[RUIPlatform isSolariumEnabled])
  {
    v13 = objc_alloc(MEMORY[0x277D751E0]);
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"BACK" value:&stru_282D68F58 table:@"Localizable"];
    v16 = [v13 initWithTitle:v15 style:0 target:self action:sel_back_];
    [v7 setBackBarButtonItem:v16];

    v17 = [v23 backButtonTitle];

    if (v17)
    {
      v18 = [v7 backBarButtonItem];
      v19 = [v23 backButtonTitle];
    }

    else
    {
      v20 = [v23 navTitle];
      v21 = [v20 length];

      if (!v21)
      {
        goto LABEL_10;
      }

      v18 = [v7 backBarButtonItem];
      v19 = [v23 navTitle];
    }

    v22 = v19;
    [v18 setTitle:v19];
  }

LABEL_10:
}

- (void)setPopoverSourceItem:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_popoverSourceItem, a3);
  v5 = [(RUIObjectModel *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(RUIObjectModel *)self delegate];
    [v7 setPopoverSourceItem:v8];
  }
}

- (UIPopoverPresentationControllerSourceItem)popoverSourceItem
{
  v3 = [(RUIObjectModel *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(RUIObjectModel *)self delegate];
    v6 = [v5 popoverSourceItem];
  }

  else
  {
    v6 = self->_popoverSourceItem;
  }

  return v6;
}

- (void)refreshTimeout
{
  if (_isInternalInstall())
  {
    v3 = _RUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_21B93D000, v3, OS_LOG_TYPE_DEFAULT, "Refresh page from timeout", v4, 2u);
    }
  }

  [(RUIObjectModel *)self _handleLinkPress:self->_refreshURL attributes:&unk_282D7AC70 completion:0];
  [(RUIObjectModel *)self cleanupRefreshTimer];
}

- (id)_firstPageForPresentation
{
  self->_currentPage = 0;
  v3 = [(NSMutableArray *)self->_defaultPages count];
  if (v3)
  {
    v4 = v3;
    v5 = [(NSMutableArray *)self->_defaultPages objectAtIndex:0];
    [(NSMutableArray *)self->_displayedPages addObject:v5];
    [(RUIObjectModel *)self _populatePageNavItem:v5 withNextButton:v4 != 1];
    refreshDelay = self->_refreshDelay;
    if (refreshDelay >= 1)
    {
      if (self->_refreshTimer)
      {
        [(RUIObjectModel *)self cleanupRefreshTimer];
        refreshDelay = self->_refreshDelay;
      }

      v7 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_refreshTimeout selector:0 userInfo:0 repeats:refreshDelay];
      refreshTimer = self->_refreshTimer;
      self->_refreshTimer = v7;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)presentWithBlock:(id)a3
{
  v10 = a3;
  if (!v10)
  {
    [(RUIObjectModel *)a2 presentWithBlock:?];
  }

  v5 = [(RUIObjectModel *)self _firstPageForPresentation];
  v6 = [(RUIObjectModel *)self defaultPages];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [(RUIObjectModel *)self defaultPages];
    v9 = [v8 firstObject];
    [v9 addDidAppearBlock:v10];
  }

  else
  {
    v10[2]();
  }
}

- (void)presentInParentViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(RUIObjectModel *)self _firstPageForPresentation];
  [(RUIObjectModel *)self presentPage:v10 inViewController:v9 animated:v5 completion:v8];
}

- (void)presentPage:(id)a3 inViewController:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v11 = a3;
  v9 = a4;
  v10 = a6;
  if (v11)
  {
    if (v10 && v7)
    {
      [v11 addDidAppearBlock:v10];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 settingsCompatiblePushViewController:v11];
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      [v9 pushViewController:v11 animated:v7];
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    if (!v7)
    {
      v10[2](v10);
    }
  }

LABEL_11:
}

- (id)newNavigationControllerForPresentation
{
  v3 = [(RUIObjectModel *)self _firstPageForPresentation];
  if (v3)
  {
    v4 = [[RUINavigationController alloc] initWithRootViewController:v3];
    v5 = [(RUIObjectModel *)self style];
    [(RUINavigationController *)v4 setStyle:v5];

    v6 = [(RUIObjectModel *)self style];
    [v6 applyToNavigationController:v4];

    if (+[RUIPlatform isAppleTV])
    {
      [(RUINavigationController *)v4 setModalTransitionStyle:2];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_parentViewController
{
  v3 = [(RUIObjectModel *)self primaryAlert];

  if (!v3 || (v4 = objc_loadWeakRetained(&self->_delegate), v5 = objc_opt_respondsToSelector(), v4, (v5 & 1) == 0) || (v6 = objc_loadWeakRetained(&self->_delegate), [v6 viewControllerForAlertPresentation], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = [WeakRetained parentViewControllerForObjectModel:self];
  }

  return v7;
}

- (id)_parentNavigationController
{
  v2 = [(RUIObjectModel *)self _parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_displaySupplementalPage:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = [WeakRetained parentViewControllerForObjectModel:self];
  [v5 settingsCompatiblePushViewController:v6];

  [(NSMutableArray *)self->_displayedPages addObject:v6];
}

- (void)_displayNamedPage:(id)a3 animated:(BOOL)a4
{
  displayedPages = self->_displayedPages;
  v6 = a3;
  [(NSMutableArray *)displayedPages addObject:v6];
  [(RUIObjectModel *)self _populatePageNavItem:v6 withNextButton:0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = [WeakRetained parentViewControllerForObjectModel:self];
  [v7 settingsCompatiblePushViewController:v6];
}

- (void)pageDidDisappear:(id)a3
{
  v9 = a3;
  v4 = [(RUIObjectModel *)self visiblePage];
  if (v4 == v9)
  {
    [(NSMutableArray *)self->_displayedPages removeLastObject];
    v5 = [v4 parentPage];

    if (v5)
    {
      [v4 _updateParentPage];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained(&self->_delegate);
        [v8 objectModel:self didNavigateBackFromController:v9 withGesture:1];
      }
    }
  }
}

- (void)_navigateBackWithPop:(BOOL)a3 fromViewController:(id)a4
{
  v4 = a3;
  v18 = a4;
  v6 = [(RUIObjectModel *)self visiblePage];
  v7 = [v6 parentPage];

  if (v7)
  {
    if (v4)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v9 = [WeakRetained parentViewControllerForObjectModel:self];
      [v9 settingsCompatiblePopViewController];
    }

    [(NSMutableArray *)self->_displayedPages removeLastObject];
    [v6 _updateParentPage];
  }

  else
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = v18;
      if (!v18 && v4)
      {
        v12 = [(RUIObjectModel *)self _viewControllerFromNavigatingBackWithinDisplayedPagesAnimated:(gAnimatedNavigationTransitions & 1) == 0];
      }

      v18 = v12;
      if (v4 && !v12)
      {
        v13 = objc_loadWeakRetained(&self->_delegate);
        v14 = [v13 parentViewControllerForObjectModel:self];

        v18 = [v14 topViewController];
        [v14 settingsCompatiblePopViewController];
      }

      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 objectModel:self didNavigateBackFromController:v18 withGesture:0];
    }

    else
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      v17 = objc_opt_respondsToSelector();

      if ((v17 & 1) == 0)
      {
        goto LABEL_16;
      }

      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 objectModelPressedBack:self];
    }
  }

LABEL_16:
}

- (id)_viewControllerFromNavigatingBackWithinDisplayedPagesAnimated:(BOOL)a3
{
  if ([(NSMutableArray *)self->_displayedPages count]< 2)
  {
    v6 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [WeakRetained parentViewControllerForObjectModel:self];

    v6 = [v5 topViewController];
    [v5 settingsCompatiblePopViewController];
    v7 = [(NSMutableArray *)self->_displayedPages lastObject];
    v8 = v7;
    if (v7 == v6)
    {
      v9 = [v7 pageID];
      v10 = [v9 length];

      if (!v10)
      {
        --self->_currentPage;
      }

      [(NSMutableArray *)self->_displayedPages removeLastObject];
    }
  }

  return v6;
}

- (BOOL)goBack:(BOOL)a3
{
  v3 = [(RUIObjectModel *)self _viewControllerFromNavigatingBackWithinDisplayedPagesAnimated:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)postbackData
{
  v2 = MEMORY[0x277CCAC58];
  v3 = [(RUIObjectModel *)self postbackDictionary];
  v4 = [v2 dataWithPropertyList:v3 format:100 options:0 error:0];

  return v4;
}

- (void)populatePostbackDictionary:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_displayedPages;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v16 + 1) + 8 * v9++) populatePostbackDictionary:{v4, v16}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if (self->_updateInfo)
  {
    [v4 addEntriesFromDictionary:?];
  }

  v10 = [(RUIObjectModel *)self authPasswordEquivalent];
  if (v10)
  {
    v11 = v10;
    v12 = [(RUIObjectModel *)self authPasswordFieldID];

    if (v12)
    {
      v13 = [(RUIObjectModel *)self authPasswordEquivalent];
      v14 = [(RUIObjectModel *)self authPasswordFieldID];
      [v4 setObject:v13 forKey:v14];
    }
  }

  serverInfo = self->_serverInfo;
  if (serverInfo)
  {
    [v4 setObject:serverInfo forKey:@"serverInfo"];
  }
}

- (void)setUpdateInfo:(id)a3
{
  objc_storeStrong(&self->_updateInfo, a3);

  [(RUIObjectModel *)self notifyXMLUIDataChange];
}

- (id)postbackDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(RUIObjectModel *)self populatePostbackDictionary:v3];

  return v3;
}

- (void)_populateRequest:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_httpHeaders;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [(NSMutableDictionary *)self->_httpHeaders objectForKeyedSubscript:v10, v12];
        [v4 setValue:v11 forHTTPHeaderField:v10];
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)refreshWithObjectModel:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(RUIObjectModel *)self identifier];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [v4 serverInfo];
    [(RUIObjectModel *)self setServerInfo:v8];

    v9 = [v4 clientInfo];
    [(RUIObjectModel *)self setClientInfo:v9];

    objc_storeStrong(&self->_namedAlerts, v4[19]);
    namedAlerts = self->_namedAlerts;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __41__RUIObjectModel_refreshWithObjectModel___block_invoke;
    v37[3] = &unk_2782E8780;
    v37[4] = self;
    [(NSMutableDictionary *)namedAlerts enumerateKeysAndObjectsUsingBlock:v37];
    v11 = [v4 primaryAlert];
    primaryAlert = self->_primaryAlert;
    self->_primaryAlert = v11;

    [(RUIAlertView *)self->_primaryAlert setObjectModel:self];
    v13 = [(RUIObjectModel *)self visiblePage];
    v14 = [v13 tableViewOM];
    v15 = [v14 tableView];
    [v15 contentOffset];
    v17 = v16;

    v18 = [(RUIObjectModel *)self displayedPages];
    v19 = [v18 copy];

    currentPage = self->_currentPage;
    self->_currentPage = -1;
    v21 = [(RUIObjectModel *)self _parentNavigationController];
    [v21 settingsCompatibleReplaceViewControllers:v19 byViewControllers:MEMORY[0x277CBEBF8] animated:0];
    v22 = [v4 allPages];
    [(RUIObjectModel *)self _unsafe_setPages:v22];

    v23 = [v4 defaultPages];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __41__RUIObjectModel_refreshWithObjectModel___block_invoke_2;
    v36[3] = &unk_2782E87A8;
    v36[4] = self;
    v36[5] = currentPage;
    [v23 enumerateObjectsUsingBlock:v36];

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __41__RUIObjectModel_refreshWithObjectModel___block_invoke_3;
    v33[3] = &unk_2782E87D0;
    v34 = v4;
    v35 = self;
    [v19 enumerateObjectsUsingBlock:v33];
    v24 = [(RUIObjectModel *)self _parentViewController];
    v25 = [v24 view];
    [v25 layoutBelowIfNeeded];

    v26 = [(RUIObjectModel *)self visiblePage];
    v27 = [v26 tableViewOM];
    v28 = [v27 tableView];

    [v28 contentSize];
    v30 = v29;
    [v28 bounds];
    v31 = v30 - CGRectGetHeight(v38);
    v32 = v17;
    [v28 setContentOffset:0 animated:{0.0, fminf(fmaxf(v31, 0.0), v32)}];
  }
}

uint64_t __41__RUIObjectModel_refreshWithObjectModel___block_invoke_2(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  if (*(result + 40) >= a3)
  {
    return [*(result + 32) navigateToNextPageAnimated:0];
  }

  *a4 = 1;
  return result;
}

void __41__RUIObjectModel_refreshWithObjectModel___block_invoke_3(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 pageID];

  if (v3)
  {
    v4 = [*(a1 + 32) namedPages];
    v5 = [v7 pageID];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      [*(a1 + 40) _displayNamedPage:v6 animated:0];
    }
  }
}

- (RUIPage)visiblePage
{
  v2 = [(RUIObjectModel *)self displayedPages];
  v3 = [v2 lastObject];

  return v3;
}

- (NSArray)pages
{
  NSLog(&cfstr_UiobjectmodelP.isa, a2);
  defaultPages = self->_defaultPages;

  return defaultPages;
}

- (NSArray)allPages
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(RUIObjectModel *)self defaultPages];
  v5 = [v3 initWithArray:v4];

  v6 = [(RUIObjectModel *)self namedPages];
  v7 = [v6 allValues];
  [v5 addObjectsFromArray:v7];

  return v5;
}

- (void)setPages:(id)a3
{
  v5 = a3;
  if ([(NSMutableArray *)self->_displayedPages count])
  {
    [(RUIObjectModel *)a2 setPages:?];
  }

  [(RUIObjectModel *)self _unsafe_setPages:v5];
}

- (void)_unsafe_setPages:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(NSMutableDictionary *)self->_namedPages removeAllObjects];
  [(NSMutableArray *)self->_defaultPages removeAllObjects];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        [v10 setObjectModel:{self, v19}];
        v11 = [v10 pageID];
        v12 = [v11 length];

        if (v12)
        {
          namedPages = self->_namedPages;
          v14 = [v10 pageID];
          [(NSMutableDictionary *)namedPages setObject:v10 forKey:v14];
        }

        v15 = [v10 pageID];
        if (![v15 length])
        {

LABEL_12:
          [(NSMutableArray *)self->_defaultPages addObject:v10];
          continue;
        }

        v16 = [v10 attributes];
        v17 = [v16 objectForKeyedSubscript:@"default"];
        v18 = [v17 BOOLValue];

        if (v18)
        {
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (void)setStyle:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_style != v5)
  {
    objc_storeStrong(&self->_style, a3);
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(RUIObjectModel *)self allPages];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * i) setStyle:v5];
        }

        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }

    if (self->_parseFinished)
    {
      [(RUIStyle *)v5 applyToObjectModel:self];
    }
  }
}

- (id)alertController
{
  v2 = [(RUIObjectModel *)self primaryAlert];
  v3 = [v2 alertController];

  return v3;
}

- (void)addAlertElement:(id)a3
{
  v10 = a3;
  [v10 setObjectModel:self];
  v4 = [v10 identifier];
  v5 = [v4 length];

  if (v5)
  {
    namedAlerts = self->_namedAlerts;
    primaryAlert = [v10 attributes];
    v8 = [primaryAlert objectForKeyedSubscript:@"id"];
    [(NSMutableDictionary *)namedAlerts setObject:v10 forKey:v8];
  }

  else
  {
    v9 = v10;
    primaryAlert = self->_primaryAlert;
    self->_primaryAlert = v9;
  }
}

- (void)configureTableView:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [(RUIObjectModel *)self visiblePage];
    [v6 objectModel:self configureTableView:v8 page:v7];
  }
}

- (void)configureRow:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [(RUIObjectModel *)self visiblePage];
    [v6 objectModel:self configureTableRow:v8 page:v7];
  }
}

- (void)configureSection:(id)a3
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = [(RUIObjectModel *)self visiblePage];
    [v6 objectModel:self configureTableSection:v8 page:v7];
  }
}

- (Class)customHeaderClassForSection:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 objectModel:self customHeaderClassForSection:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (Class)customFooterClassForSection:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 objectModel:self customFooterClassForSection:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (Class)customTableCellClassForTableViewRow:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 objectModel:self customTableCellClassForTableViewRow:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)tableHeaderViewForAttributes:(id)a3
{
  v4 = a3;
  v5 = [(RUIObjectModel *)self style];
  v6 = [v5 tableHeaderViewWithAttributes:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_delegate);
      v11 = [(RUIObjectModel *)self visiblePage];
      v7 = [v10 objectModel:self tableHeaderViewForAttributes:v4 page:v11];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)tableFooterViewForAttributes:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [(RUIObjectModel *)self visiblePage];
    v9 = [v7 objectModel:self tableFooterViewForAttributes:v4 page:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)rowForFormField:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = self->_displayedPages;
  v26 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v26)
  {
    v6 = *v43;
    v33 = v4;
    v28 = v5;
    v25 = *v43;
    do
    {
      v7 = 0;
      do
      {
        if (*v43 != v6)
        {
          objc_enumerationMutation(v5);
        }

        v27 = v7;
        v8 = [*(*(&v42 + 1) + 8 * v7) tableViewOM];
        v9 = [v8 sections];

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        obj = v9;
        v31 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v31)
        {
          v30 = *v39;
          while (2)
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v39 != v30)
              {
                objc_enumerationMutation(obj);
              }

              v11 = [*(*(&v38 + 1) + 8 * i) rows];
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v12 = v11;
              v13 = [v12 countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v13)
              {
                v14 = v13;
                v15 = *v35;
                v32 = i;
LABEL_13:
                v16 = 0;
                while (1)
                {
                  if (*v35 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v34 + 1) + 8 * v16);
                  v18 = [v17 attributes];
                  v19 = [v18 objectForKey:@"postback"];
                  if ([v19 isEqualToString:v4])
                  {
                    break;
                  }

                  v20 = [v17 attributes];
                  v21 = [v20 objectForKey:@"id"];
                  v22 = [v21 isEqualToString:v4];

                  if (v22)
                  {
                    goto LABEL_22;
                  }

                  ++v16;
                  v4 = v33;
                  if (v14 == v16)
                  {
                    v14 = [v12 countByEnumeratingWithState:&v34 objects:v46 count:16];
                    i = v32;
                    if (v14)
                    {
                      goto LABEL_13;
                    }

                    goto LABEL_20;
                  }
                }

LABEL_22:
                v23 = v17;

                i = v32;
                v4 = v33;
                if (!v23)
                {
                  continue;
                }

                v5 = v28;
                goto LABEL_30;
              }

LABEL_20:
            }

            v31 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
            if (v31)
            {
              continue;
            }

            break;
          }
        }

        v7 = v27 + 1;
        v5 = v28;
        v6 = v25;
      }

      while (v27 + 1 != v26);
      v23 = 0;
      v26 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v26);
  }

  else
  {
    v23 = 0;
  }

LABEL_30:

  return v23;
}

- (id)absoluteURLWithString:(id)a3
{
  if (self->_sourceURL)
  {
    [MEMORY[0x277CBEBC0] URLWithString:a3 relativeToURL:?];
  }

  else
  {
    [MEMORY[0x277CBEBC0] URLWithString:a3];
  }
  v3 = ;

  return v3;
}

- (id)relativeURLWithString:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_isInternalInstall())
  {
    v5 = _RUILoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[RUIObjectModel relativeURLWithString:]";
      _os_log_impl(&dword_21B93D000, v5, OS_LOG_TYPE_DEFAULT, "Using deprecating method %s", &v8, 0xCu);
    }
  }

  v6 = [(RUIObjectModel *)self absoluteURLWithString:v4];

  return v6;
}

- (id)elementsWithName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(RUIObjectModel *)self allPages];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) elementsWithName:v4];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (void)startNavigationBarSpinnerWithTitle:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &stru_282D68F58;
  }

  v10 = @"titleLoadingMessage";
  v11[0] = v4;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v11 forKeys:&v10 count:1];

  [(RUIObjectModel *)self _startNavigationBarSpinnerIfNeededForAttributes:v7];
  v8 = [(RUIObjectModel *)self visiblePage];
  v9 = [v8 view];
  [v9 setUserInteractionEnabled:0];
}

- (void)stopNavigationBarSpinner
{
  [(RUIObjectModel *)self _stopNavigationBarSpinnerIfNeededForAttributes:&unk_282D7AC98];
  v4 = [(RUIObjectModel *)self visiblePage];
  v3 = [v4 view];
  [v3 setUserInteractionEnabled:1];
}

- (void)_startNavigationBarSpinnerIfNeededForAttributes:(id)a3
{
  v16 = a3;
  v4 = [v16 objectForKeyedSubscript:@"activityIndicatorAnchorId"];
  v5 = [(RUIObjectModel *)self elementForActivityIndicatorAnchorId:v4];

  if (!v5)
  {
    v5 = [(RUIObjectModel *)self elementForActivityIndicatorWithActivatedElement:self->_activeElement];
  }

  v6 = [v16 objectForKeyedSubscript:@"titleLoadingMessage"];
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8)
  {
    v9 = [(RUIObjectModel *)self _parentViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 topViewController];

      v9 = v10;
    }

    v11 = [v9 navigationItem];
    v12 = +[RUINavBarSpinnerManager sharedSpinnerManager];
    v13 = [(RUIObjectModel *)self style];
    [v12 setActivityIndicatorViewStyle:{objc_msgSend(v13, "navBarActivityIndicatorStyle")}];

    v14 = +[RUINavBarSpinnerManager sharedSpinnerManager];
    v15 = [(RUIObjectModel *)self visiblePage];
    [v14 startAnimatingInNavItem:v11 title:v7 forIdentifier:@"RemoteUI" hideBackButton:1 hideLeftItems:{objc_msgSend(v15, "navBarIndicatorHidesLeftButton")}];
  }
}

- (void)_stopNavigationBarSpinnerIfNeededForAttributes:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"titleLoadingMessage"];

  if (v3)
  {
    v4 = +[RUINavBarSpinnerManager sharedSpinnerManager];
    [v4 stopAnimatingForIdentifier:@"RemoteUI"];
  }
}

- (void)startActivityIndicator
{
  v2 = [(RUIObjectModel *)self visiblePage];
  [v2 setLoading:1];
}

- (void)stopActivityIndicator
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(RUIObjectModel *)self allPages];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isLoading])
        {
          [v8 setLoading:0];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(RUIElement *)self->_elementForActivityIndicator stopActivityIndicator];
  elementForActivityIndicator = self->_elementForActivityIndicator;
  self->_elementForActivityIndicator = 0;
}

- (BOOL)hasAttributeOrAttributeFunctionNamed:(id)a3 withAttributes:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 stringByAppendingString:@"Function"];
  v8 = [v5 objectForKeyedSubscript:v6];

  if ([v8 length])
  {
    v9 = 1;
  }

  else
  {
    v10 = [v5 objectForKeyedSubscript:v7];
    v9 = [v10 length] != 0;
  }

  return v9;
}

- (id)stringForAttributeName:(id)a3 withAttributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 stringByAppendingString:@"Function"];
  v9 = [(__CFString *)v7 objectForKeyedSubscript:v8];
  v10 = [v9 length];

  if (v10)
  {
    v11 = [(__CFString *)v7 objectForKeyedSubscript:v8];

    v7 = [(RUIObjectModel *)self invokeScriptFunction:v11 withArguments:0];

    objc_opt_class();
    v12 = &stru_282D68F58;
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(__CFString *)v7 length])
    {
      v12 = v7;
    }

    v13 = v12;
  }

  else
  {
    v13 = [(__CFString *)v7 objectForKeyedSubscript:v6];
  }

  v14 = v13;

  return v14;
}

- (BOOL)hasConfirmationAttributes:(id)a3
{
  v4 = a3;
  v5 = [(RUIObjectModel *)self hasAttributeOrAttributeFunctionNamed:@"confirmationTitle" withAttributes:v4]&& [(RUIObjectModel *)self hasAttributeOrAttributeFunctionNamed:@"confirmationBody" withAttributes:v4]&& [(RUIObjectModel *)self hasAttributeOrAttributeFunctionNamed:@"confirmationCancel" withAttributes:v4]&& [(RUIObjectModel *)self hasAttributeOrAttributeFunctionNamed:@"confirmationOK" withAttributes:v4];

  return v5;
}

- (BOOL)hasSecondConfirmationAttributes:(id)a3
{
  v4 = a3;
  v5 = [(RUIObjectModel *)self hasAttributeOrAttributeFunctionNamed:@"secondConfirmationTitle" withAttributes:v4]&& [(RUIObjectModel *)self hasAttributeOrAttributeFunctionNamed:@"secondConfirmationBody" withAttributes:v4]&& [(RUIObjectModel *)self hasAttributeOrAttributeFunctionNamed:@"secondConfirmationCancel" withAttributes:v4]&& [(RUIObjectModel *)self hasAttributeOrAttributeFunctionNamed:@"secondConfirmationOK" withAttributes:v4];

  return v5;
}

- (void)presentConfirmationIfNeededForElement:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 attributes];
  v9 = [(RUIObjectModel *)self hasConfirmationAttributes:v8];

  if (v9)
  {
    v10 = [v6 attributes];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __67__RUIObjectModel_presentConfirmationIfNeededForElement_completion___block_invoke;
    v11[3] = &unk_2782E8820;
    v11[4] = self;
    v12 = v6;
    v13 = v7;
    [(RUIObjectModel *)self _presentConfirmationWithAttributes:v10 completion:v11];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0, 1);
  }
}

void __67__RUIObjectModel_presentConfirmationIfNeededForElement_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2 && (v3 = *(a1 + 32), [*(a1 + 40) attributes], v4 = objc_claimAutoreleasedReturnValue(), LODWORD(v3) = objc_msgSend(v3, "hasSecondConfirmationAttributes:", v4), v4, v3))
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) attributes];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __67__RUIObjectModel_presentConfirmationIfNeededForElement_completion___block_invoke_2;
    v9[3] = &unk_2782E87F8;
    v10 = *(a1 + 48);
    [v5 _presentSecondConfirmationWithAttributes:v6 completion:v9];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }
}

uint64_t __67__RUIObjectModel_presentConfirmationIfNeededForElement_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, a2);
  }

  return result;
}

- (void)_presentConfirmationWithAttributes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RUIObjectModel *)self stringForAttributeName:@"confirmationTitle" withAttributes:v7];
  v9 = [(RUIObjectModel *)self stringForAttributeName:@"confirmationBody" withAttributes:v7];
  v10 = [(RUIObjectModel *)self stringForAttributeName:@"confirmationOK" withAttributes:v7];
  v11 = [(RUIObjectModel *)self stringForAttributeName:@"confirmationCancel" withAttributes:v7];
  v12 = [v7 objectForKey:@"confirmationOKIsDestructive"];
  v13 = [v12 BOOLValue];

  v14 = [(RUIObjectModel *)self _parentNavigationController];
  v15 = [v7 objectForKeyedSubscript:@"confirmationIsSheet"];

  LODWORD(v7) = [v15 BOOLValue];
  if (v7)
  {
    v16 = [MEMORY[0x277D75418] currentDevice];
    v17 = [v16 userInterfaceIdiom];

    v18 = (v17 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  else
  {
    v18 = 1;
  }

  v28 = v8;
  v19 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v9 preferredStyle:{v18, v9}];
  v20 = MEMORY[0x277D750F8];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __64__RUIObjectModel__presentConfirmationWithAttributes_completion___block_invoke;
  v31[3] = &unk_2782E8848;
  v21 = v6;
  v32 = v21;
  v22 = [v20 actionWithTitle:v11 style:1 handler:v31];
  if (v13)
  {
    v23 = 2;
  }

  else
  {
    [v19 addAction:v22];
    v23 = 0;
  }

  v24 = MEMORY[0x277D750F8];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __64__RUIObjectModel__presentConfirmationWithAttributes_completion___block_invoke_2;
  v29[3] = &unk_2782E8848;
  v30 = v21;
  v25 = v21;
  v26 = [v24 actionWithTitle:v10 style:v23 handler:v29];
  [v19 addAction:v26];

  if (v13)
  {
    [v19 addAction:v22];
  }

  [v14 presentViewController:v19 animated:1 completion:0];
}

uint64_t __64__RUIObjectModel__presentConfirmationWithAttributes_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __64__RUIObjectModel__presentConfirmationWithAttributes_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (void)_presentSecondConfirmationWithAttributes:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RUIObjectModel *)self stringForAttributeName:@"secondConfirmationTitle" withAttributes:v7];
  v9 = [(RUIObjectModel *)self stringForAttributeName:@"secondConfirmationBody" withAttributes:v7];
  v10 = [(RUIObjectModel *)self stringForAttributeName:@"secondConfirmationOK" withAttributes:v7];
  v11 = [(RUIObjectModel *)self stringForAttributeName:@"secondConfirmationCancel" withAttributes:v7];
  v12 = [v7 objectForKey:@"secondConfirmationOKIsDestructive"];
  v13 = [v12 BOOLValue];

  v14 = [(RUIObjectModel *)self _parentNavigationController];
  v15 = [v7 objectForKeyedSubscript:@"secondConfirmationIsSheet"];

  LODWORD(v7) = [v15 BOOLValue];
  if (v7)
  {
    v16 = [MEMORY[0x277D75418] currentDevice];
    v17 = [v16 userInterfaceIdiom];

    v18 = (v17 & 0xFFFFFFFFFFFFFFFBLL) == 1;
  }

  else
  {
    v18 = 1;
  }

  v28 = v8;
  v19 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v9 preferredStyle:{v18, v9}];
  v20 = MEMORY[0x277D750F8];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __70__RUIObjectModel__presentSecondConfirmationWithAttributes_completion___block_invoke;
  v31[3] = &unk_2782E8848;
  v21 = v6;
  v32 = v21;
  v22 = [v20 actionWithTitle:v11 style:1 handler:v31];
  if (v13)
  {
    v23 = 2;
  }

  else
  {
    [v19 addAction:v22];
    v23 = 0;
  }

  v24 = MEMORY[0x277D750F8];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __70__RUIObjectModel__presentSecondConfirmationWithAttributes_completion___block_invoke_2;
  v29[3] = &unk_2782E8848;
  v30 = v21;
  v25 = v21;
  v26 = [v24 actionWithTitle:v10 style:v23 handler:v29];
  [v19 addAction:v26];

  if (v13)
  {
    [v19 addAction:v22];
  }

  [v14 presentViewController:v19 animated:1 completion:0];
}

uint64_t __70__RUIObjectModel__presentSecondConfirmationWithAttributes_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

uint64_t __70__RUIObjectModel__presentSecondConfirmationWithAttributes_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

- (id)textInRowWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(RUIObjectModel *)self visiblePage];
  v6 = [v5 tableViewOM];
  v7 = [v6 rowWithIdentifier:v4];

  v8 = [v7 attributes];
  v9 = [v8 objectForKeyedSubscript:@"class"];
  LODWORD(v6) = [v9 isEqualToString:@"editableText"];

  v10 = [v7 tableCell];
  v11 = v10;
  if (v6)
  {
    [v10 ruiEditableTextField];
  }

  else
  {
    [v10 ruiTextLabel];
  }
  v12 = ;
  v13 = [v12 text];

  return v13;
}

- (void)handleAppleIDAuthenticationIfNeededForAttributes:(id)a3 completion:(id)a4
{
  v78 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"authRequired"];
  if ([v8 BOOLValue])
  {

    goto LABEL_4;
  }

  v9 = [v6 objectForKeyedSubscript:@"authCredentialRecoveryRequired"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
LABEL_4:
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__0;
    v62 = __Block_byref_object_dispose__0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x2050000000;
    v11 = getAKAppleIDAuthenticationInAppContextClass_softClass;
    v67 = getAKAppleIDAuthenticationInAppContextClass_softClass;
    if (!getAKAppleIDAuthenticationInAppContextClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v74 = __getAKAppleIDAuthenticationInAppContextClass_block_invoke;
      v75 = &unk_2782E8258;
      v76 = &v64;
      __getAKAppleIDAuthenticationInAppContextClass_block_invoke(&buf);
      v11 = *(v65 + 24);
    }

    v12 = v11;
    _Block_object_dispose(&v64, 8);
    v63 = objc_opt_new();
    v13 = [v6 objectForKeyedSubscript:@"authAccountIsPrimary"];
    v14 = [v13 BOOLValue];

    if (v14)
    {
      v64 = 0;
      v65 = &v64;
      v66 = 0x2050000000;
      v15 = getACAccountStoreClass_softClass;
      v67 = getACAccountStoreClass_softClass;
      if (!getACAccountStoreClass_softClass)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v74 = __getACAccountStoreClass_block_invoke;
        v75 = &unk_2782E8258;
        v76 = &v64;
        __getACAccountStoreClass_block_invoke(&buf);
        v15 = *(v65 + 24);
      }

      v16 = v15;
      _Block_object_dispose(&v64, 8);
      v17 = objc_opt_new();
      v18 = [v17 aa_primaryAppleAccount];
      v19 = [v18 username];

      if ([v19 length])
      {
        [v59[5] setUsername:v19];
      }
    }

    v20 = [v59[5] username];
    if (![v20 length])
    {
      v21 = [v6 objectForKeyedSubscript:@"authUsername"];
      v22 = [v21 length] == 0;

      if (v22)
      {
        goto LABEL_16;
      }

      v23 = v59[5];
      v20 = [v6 objectForKeyedSubscript:@"authUsername"];
      [v23 setUsername:v20];
    }

LABEL_16:
    v24 = [v59[5] username];
    if (![v24 length])
    {
      v29 = [v6 objectForKeyedSubscript:@"authUsernameFieldID"];
      v30 = [v29 length] == 0;

      if (v30)
      {
        goto LABEL_18;
      }

      v31 = [v6 objectForKeyedSubscript:@"authUsernameFieldID"];
      v24 = [(RUIObjectModel *)self textInRowWithIdentifier:v31];

      if ([v24 length])
      {
        [v59[5] setUsername:v24];
      }

      else if (_isInternalInstall())
      {
        v51 = _RUILoggingFacility();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = [v6 objectForKeyedSubscript:@"authUsernameFieldID"];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v52;
          _os_log_impl(&dword_21B93D000, v51, OS_LOG_TYPE_DEFAULT, "Could not find a username in usernameFieldID %@", &buf, 0xCu);
        }
      }
    }

LABEL_18:
    v25 = [v6 objectForKeyedSubscript:@"authPasswordFieldID"];
    v26 = [v25 length] == 0;

    if (!v26)
    {
      v27 = [v6 objectForKeyedSubscript:@"authPasswordFieldID"];
      v28 = [(RUIObjectModel *)self textInRowWithIdentifier:v27];

      if ([v28 length])
      {
        [v59[5] _setPassword:v28];
      }

      else if (_isInternalInstall())
      {
        v32 = _RUILoggingFacility();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v6 objectForKeyedSubscript:@"authPasswordFieldID"];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v33;
          _os_log_impl(&dword_21B93D000, v32, OS_LOG_TYPE_DEFAULT, "Could not find a password in passwordFieldID %@", &buf, 0xCu);
        }
      }
    }

    v34 = v59[5];
    v35 = [v6 objectForKeyedSubscript:@"authReason"];
    [v34 setReason:v35];

    v36 = [(RUIObjectModel *)self _parentNavigationController];
    [v59[5] setPresentingViewController:v36];
    v37 = [v6 objectForKeyedSubscript:@"authIsEphemeral"];
    v38 = [v37 BOOLValue];

    [v59[5] setIsEphemeral:v38];
    v39 = [v6 objectForKeyedSubscript:@"authCredentialRecoveryRequired"];
    v40 = [v39 BOOLValue];

    [v59[5] setNeedsCredentialRecovery:v40];
    v41 = [v6 objectForKeyedSubscript:@"authIsTwoFactor"];
    if (v41)
    {
      v42 = [v6 objectForKeyedSubscript:@"authIsTwoFactor"];
      v43 = [v42 BOOLValue];

      v44 = v43 ^ 1u;
    }

    else
    {
      v44 = 0;
    }

    [v59[5] setShouldPromptForPasswordOnly:v44];
    v45 = [v59[5] username];
    v46 = [v45 length] == 0;

    if (!v46)
    {
      [v59[5] setIsUsernameEditable:0];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v74 = 0x3032000000;
    v75 = __Block_byref_object_copy__0;
    v76 = __Block_byref_object_dispose__0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2050000000;
    v47 = getAKAppleIDAuthenticationControllerClass_softClass;
    v72 = getAKAppleIDAuthenticationControllerClass_softClass;
    if (!getAKAppleIDAuthenticationControllerClass_softClass)
    {
      v64 = MEMORY[0x277D85DD0];
      v65 = 3221225472;
      v66 = __getAKAppleIDAuthenticationControllerClass_block_invoke;
      v67 = &unk_2782E8258;
      v68 = &v69;
      __getAKAppleIDAuthenticationControllerClass_block_invoke(&v64);
      v47 = v70[3];
    }

    v48 = v47;
    _Block_object_dispose(&v69, 8);
    v77 = objc_opt_new();
    v49 = *(*(&buf + 1) + 40);
    v50 = v59[5];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __78__RUIObjectModel_handleAppleIDAuthenticationIfNeededForAttributes_completion___block_invoke;
    v53[3] = &unk_2782E8898;
    v53[4] = self;
    v54 = v6;
    v55 = v7;
    p_buf = &buf;
    v57 = &v58;
    [v49 authenticateWithContext:v50 completion:v53];

    _Block_object_dispose(&buf, 8);
    _Block_object_dispose(&v58, 8);

    goto LABEL_39;
  }

  if (v7)
  {
    (*(v7 + 2))(v7, 1);
  }

LABEL_39:
}

void __78__RUIObjectModel_handleAppleIDAuthenticationIfNeededForAttributes_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__RUIObjectModel_handleAppleIDAuthenticationIfNeededForAttributes_completion___block_invoke_2;
  block[3] = &unk_2782E8870;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v15 = v8;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __78__RUIObjectModel_handleAppleIDAuthenticationIfNeededForAttributes_completion___block_invoke_2(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    v12 = *(a1 + 48);
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v13 = getAKAuthenticationUsernameKeySymbolLoc_ptr;
    v42 = getAKAuthenticationUsernameKeySymbolLoc_ptr;
    if (!getAKAuthenticationUsernameKeySymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v44 = __getAKAuthenticationUsernameKeySymbolLoc_block_invoke;
      v45 = &unk_2782E8258;
      v46 = &v39;
      v14 = AuthKitLibrary();
      v15 = dlsym(v14, "AKAuthenticationUsernameKey");
      *(v46[1] + 24) = v15;
      getAKAuthenticationUsernameKeySymbolLoc_ptr = *(v46[1] + 24);
      v13 = v40[3];
    }

    _Block_object_dispose(&v39, 8);
    if (!v13)
    {
      __78__RUIObjectModel_handleAppleIDAuthenticationIfNeededForAttributes_completion___block_invoke_2_cold_1();
    }

    v4 = [v12 objectForKeyedSubscript:*v13];
    v16 = *(a1 + 48);
    v17 = getAKAuthenticationPasswordKey();
    v5 = [v16 objectForKeyedSubscript:v17];

    [*(a1 + 40) setAuthPasswordEquivalent:v5];
    v18 = [*(a1 + 56) objectForKeyedSubscript:@"authPasswordFieldID"];
    [*(a1 + 40) setAuthPasswordFieldID:v18];

    if ([v4 length] && objc_msgSend(v5, "length"))
    {
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v4, v5, v39];
      v20 = [v19 dataUsingEncoding:4];
      v21 = [v20 base64EncodedStringWithOptions:0];

      [*(*(a1 + 40) + 160) setObject:v21 forKeyedSubscript:@"Authorization"];
    }

    else
    {
      NSLog(&cfstr_AuthSucceededB.isa);
    }

    goto LABEL_24;
  }

  if (_isInternalInstall())
  {
    v2 = _RUILoggingFacility();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_21B93D000, v2, OS_LOG_TYPE_DEFAULT, "Auth failed with error %@", &buf, 0xCu);
    }
  }

  v4 = [*(a1 + 32) domain];
  v5 = getAKAppleIDAuthenticationErrorDomain();
  if ([v4 isEqualToString:v5])
  {
    v6 = [*(a1 + 32) code] == -7003;

    if (v6)
    {
      goto LABEL_25;
    }

    v7 = [*(a1 + 32) domain];
    v8 = getAKAppleIDAuthenticationErrorDomain();
    if ([v7 isEqualToString:v8])
    {
      v9 = [*(a1 + 32) code] == -7006;

      if (v9)
      {
        v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v11 = [v10 localizedStringForKey:@"AUTH_WRONG_PASSWORD_ALERT_MESSAGE_REBRAND" value:&stru_282D68F58 table:@"Localizable"];
LABEL_23:
        v4 = v11;

        v25 = MEMORY[0x277D75110];
        v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v27 = [v26 localizedStringForKey:@"AUTH_ERROR_ALERT_TITLE" value:&stru_282D68F58 table:@"Localizable"];
        v5 = [v25 alertControllerWithTitle:v27 message:v4 preferredStyle:1];

        v28 = MEMORY[0x277D750F8];
        v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v30 = [v29 localizedStringForKey:@"AUTH_ERROR_OK_BUTTON" value:&stru_282D68F58 table:@"Localizable"];
        v31 = [v28 actionWithTitle:v30 style:0 handler:0];
        [v5 addAction:v31];

        v32 = [*(a1 + 40) _parentViewController];
        [v32 presentViewController:v5 animated:1 completion:0];

        goto LABEL_24;
      }
    }

    else
    {
    }

    v22 = [*(a1 + 32) userInfo];
    v23 = *MEMORY[0x277CCA450];
    v24 = [v22 objectForKeyedSubscript:*MEMORY[0x277CCA450]];

    if (v24)
    {
      v10 = [*(a1 + 32) userInfo];
      [v10 objectForKeyedSubscript:v23];
    }

    else
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v10 localizedStringForKey:@"AUTH_OTHER_ERROR_ALERT_MESSAGE" value:&stru_282D68F58 table:@"Localizable"];
    }
    v11 = ;
    goto LABEL_23;
  }

LABEL_24:

LABEL_25:
  if (*(a1 + 64))
  {
    v33 = *(a1 + 48);
    v34 = getAKAuthenticationPasswordKey();
    [v33 objectForKeyedSubscript:v34];

    (*(*(a1 + 64) + 16))();
  }

  v35 = *(*(a1 + 72) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = 0;

  v37 = *(*(a1 + 80) + 8);
  v38 = *(v37 + 40);
  *(v37 + 40) = 0;
}

- (id)subElementWithID:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RUIObjectModel *)self primaryAlert];
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:v4];

  if (v7)
  {
    v8 = [(RUIObjectModel *)self primaryAlert];
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = self->_namedAlerts;
    v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v8 = [(NSMutableDictionary *)self->_namedAlerts objectForKeyedSubscript:*(*(&v32 + 1) + 8 * i)];
          v14 = [v8 identifier];
          v15 = [v14 isEqualToString:v4];

          if (v15)
          {
            goto LABEL_23;
          }

          v16 = [v8 subElementWithID:v4];

          if (v16)
          {
            v8 = v16;
LABEL_23:

            goto LABEL_26;
          }
        }

        v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = [(RUIObjectModel *)self allPages];
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v28 + 1) + 8 * j);
          v23 = [v22 pageElement];
          v24 = [v23 identifier];
          v25 = [v24 isEqualToString:v4];

          if (v25)
          {
            v26 = [v22 pageElement];
LABEL_25:
            v8 = v26;

            goto LABEL_26;
          }

          v26 = [v22 subElementWithID:v4];
          if (v26)
          {
            goto LABEL_25;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
  }

LABEL_26:

  return v8;
}

- (void)startActivityIndicatorWithAttributes:(id)a3
{
  v4 = [(RUIObjectModel *)self elementForActivityIndicatorWithAttributes:a3];
  [(RUIObjectModel *)self startActivityIndicatorForElement:v4];
}

- (void)startActivityIndicatorForElement:(id)a3
{
  v5 = a3;
  v4 = [(RUIObjectModel *)self elementForActivityIndicatorWithActivatedElement:v5];
  objc_storeStrong(&self->_elementForActivityIndicator, v4);
  [(RUIElement *)self->_elementForActivityIndicator startActivityIndicator];
  if (v5)
  {
    [(RUIObjectModel *)self setActivityIndicatorStatus:1 forElement:v5];
  }
}

- (void)activateElement:(id)a3 sender:(id)a4 completion:(id)a5
{
  v9 = a3;
  v8 = a5;
  if (a4)
  {
    [(RUIObjectModel *)self setPopoverSourceItem:a4];
  }

  [(RUIObjectModel *)self activateElement:v9 completion:v8];
}

- (void)activateElement:(id)a3 completion:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([(RUIElement *)self->_activeElement isEqual:v7])
  {
    if (_isInternalInstall())
    {
      v9 = _RUILoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v7;
        _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Already handling activation for element: %@", buf, 0xCu);
      }
    }

    if (v8)
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.RemoteUI" code:4 userInfo:0];
      v8[2](v8, 0, v10);
    }
  }

  else
  {
    objc_storeStrong(&self->_activeElement, a3);
    [(RUIObjectModel *)self startActivityIndicatorForElement:v7];
    v11 = [(RUIElement *)v7 sourceXMLElement];

    if (v11)
    {
      v12 = [(RUIObjectModel *)self telemetryDelegate];
      v13 = [RUITelemetryElement alloc];
      v14 = [(RUIElement *)v7 sourceXMLElement];
      v15 = [(RUIObjectModel *)self sourceURL];
      v16 = [(RUITelemetryElement *)v13 initWithXMLElement:v14 url:v15];
      [v12 willActivateElement:v16];
    }

    if (_isInternalInstall())
    {
      v17 = _RUILoggingFacility();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        activeElement = self->_activeElement;
        *buf = 138412290;
        v23 = activeElement;
        _os_log_impl(&dword_21B93D000, v17, OS_LOG_TYPE_DEFAULT, "Active element set %@", buf, 0xCu);
      }
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __45__RUIObjectModel_activateElement_completion___block_invoke;
    v19[3] = &unk_2782E88C0;
    v19[4] = self;
    v20 = v7;
    v21 = v8;
    [(RUIObjectModel *)self handleElementChange:v20 action:2 completion:v19];
  }
}

void __45__RUIObjectModel_activateElement_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [*(a1 + 32) telemetryDelegate];
    v7 = [RUITelemetryElement alloc];
    v8 = [*(a1 + 40) sourceXMLElement];
    v9 = [*(a1 + 32) sourceURL];
    v10 = [(RUITelemetryElement *)v7 initWithXMLElement:v8 url:v9];
    [v6 processedElementWithError:v5 forElement:v10];
  }

  if (_isInternalInstall())
  {
    v11 = _RUILoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(a1 + 32) + 216);
      v18 = 138412290;
      v19 = v12;
      _os_log_impl(&dword_21B93D000, v11, OS_LOG_TYPE_DEFAULT, "Removing active element %@", &v18, 0xCu);
    }
  }

  [*(*(a1 + 32) + 264) stopActivityIndicator];
  if (*(a1 + 40))
  {
    [*(a1 + 32) setActivityIndicatorStatus:0 forElement:?];
  }

  v13 = *(a1 + 32);
  v14 = *(v13 + 264);
  *(v13 + 264) = 0;

  v15 = *(a1 + 32);
  v16 = *(v15 + 216);
  *(v15 + 216) = 0;

  v17 = *(a1 + 48);
  if (v17)
  {
    (*(v17 + 16))(v17, a2, v5);
  }
}

- (id)elementForActivityIndicatorWithAttributes:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"activityIndicatorAnchorId"];
  v5 = [(RUIObjectModel *)self elementForActivityIndicatorAnchorId:v4];

  return v5;
}

- (id)elementForActivityIndicatorWithActivatedElement:(id)a3
{
  v4 = a3;
  v5 = [v4 attributes];
  v6 = [(RUIObjectModel *)self elementForActivityIndicatorWithAttributes:v5];

  if (v6)
  {
    v7 = v6;
    v8 = [v7 pageElement];
    v9 = [v8 page];
  }

  else
  {
    v7 = v4;
    v9 = [(RUIObjectModel *)self visiblePage];
  }

  v10 = [v9 activityIndicatorStyle];
  v11 = [v10 isEqualToString:@"activeElement"];

  if (v11)
  {
    v12 = v7;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)elementForActivityIndicatorAnchorId:(id)a3
{
  v4 = a3;
  v5 = [(RUIObjectModel *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(RUIObjectModel *)self delegate];
    v8 = [v7 visibleElementWithIdentifier:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)handleElementChange:(id)a3 action:(int)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__RUIObjectModel_handleElementChange_action_completion___block_invoke;
  v12[3] = &unk_2782E8938;
  v13 = v8;
  v14 = v9;
  v12[4] = self;
  v15 = a4;
  v10 = v8;
  v11 = v9;
  [(RUIObjectModel *)self presentConfirmationIfNeededForElement:v10 completion:v12];
}

void __56__RUIObjectModel_handleElementChange_action_completion___block_invoke(uint64_t a1, int a2, char a3)
{
  if (!a2 || (a3 & 1) != 0)
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) attributes];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__RUIObjectModel_handleElementChange_action_completion___block_invoke_2;
    v11[3] = &unk_2782E8910;
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v13 = v8;
    v11[4] = v9;
    v12 = v10;
    v14 = *(a1 + 56);
    [v6 handleAppleIDAuthenticationIfNeededForAttributes:v7 completion:v11];
  }

  else
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v5 = *(v4 + 16);

      v5();
    }
  }
}

void __56__RUIObjectModel_handleElementChange_action_completion___block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__RUIObjectModel_handleElementChange_action_completion___block_invoke_3;
    v9[3] = &unk_2782E88E8;
    v12 = *(a1 + 48);
    v5 = *(a1 + 40);
    v13 = *(a1 + 56);
    v6 = *(a1 + 32);
    v10 = v5;
    v11 = v6;
    [v3 _handleElementChange:v4 completion:v9];
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }
}

void __56__RUIObjectModel_handleElementChange_action_completion___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) attributes];
    v7 = [v6 objectForKeyedSubscript:@"url"];
    if (v7)
    {
      v8 = *(a1 + 56) == 2;
    }

    else
    {
      v8 = 0;
    }

    v11 = [*(a1 + 32) attributes];
    v12 = [v11 objectForKeyedSubscript:@"action"];
    if ([v12 isEqualToString:@"dismiss"])
    {
      v13 = *(a1 + 56);

      if (!v8)
      {
        if (v13 == 2)
        {
          v14 = [*(a1 + 40) visiblePage];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __56__RUIObjectModel_handleElementChange_action_completion___block_invoke_5;
          v23[3] = &unk_2782E8180;
          v24 = *(a1 + 48);
          [v14 dismissIfPresentedWithCompletion:v23];

          goto LABEL_18;
        }

LABEL_13:
        v20 = _RUILoggingFacility();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          __56__RUIObjectModel_handleElementChange_action_completion___block_invoke_3_cold_1(a1, v20);
        }

        v21 = *(a1 + 48);
        if (v21)
        {
          v10 = *(v21 + 16);
          goto LABEL_17;
        }

        goto LABEL_18;
      }
    }

    else
    {

      if (!v8)
      {
        goto LABEL_13;
      }
    }

    v15 = [*(a1 + 32) attributes];
    v16 = [v15 objectForKeyedSubscript:@"url"];

    v17 = *(a1 + 40);
    v18 = [*(a1 + 32) attributes];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__RUIObjectModel_handleElementChange_action_completion___block_invoke_4;
    v25[3] = &unk_2782E88C0;
    v22 = *(a1 + 32);
    v19 = v22.i64[0];
    v26 = vextq_s8(v22, v22, 8uLL);
    v27 = *(a1 + 48);
    [v17 _handleLinkPress:v16 attributes:v18 completion:v25];

    goto LABEL_18;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(v9 + 16);
LABEL_17:
    v10();
  }

LABEL_18:
}

void __56__RUIObjectModel_handleElementChange_action_completion___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  if (v11)
  {
    v5 = [*(a1 + 32) telemetryDelegate];
    v6 = [RUITelemetryElement alloc];
    v7 = [*(a1 + 40) sourceXMLElement];
    v8 = [*(a1 + 32) sourceURL];
    v9 = [(RUITelemetryElement *)v6 initWithXMLElement:v7 url:v8];
    [v5 processedElementWithError:v11 forElement:v9];
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v11);
  }
}

uint64_t __56__RUIObjectModel_handleElementChange_action_completion___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

- (void)openLink:(id)a3 HTTPMethod:(id)a4 attributes:(id)a5 completion:(id)a6
{
  v9 = MEMORY[0x277CBEB38];
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = a6;
  v12 = a4;
  v13 = a3;
  v15 = [v9 dictionaryWithDictionary:v10];
  [v15 setObject:v12 forKeyedSubscript:@"httpMethod"];

  v14 = [v15 copy];
  [(RUIObjectModel *)self _handleLinkPress:v13 attributes:v14 completion:v11];
}

- (BOOL)_shouldDisplayNamedElement:(id)a3 page:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(RUIObjectModel *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = [(RUIObjectModel *)self delegate];
    v11 = [v10 objectModel:self shouldDisplayNamedElement:v6 page:v7];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)_handleLinkPress:(id)a3 attributes:(id)a4 completion:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(RUIElement *)v8 hasPrefix:@"#"])
  {
    v11 = [(RUIElement *)v8 substringFromIndex:1];
    v12 = [(NSMutableDictionary *)self->_namedPages objectForKey:v11];
    if (v12)
    {
      if ([(RUIObjectModel *)self _shouldDisplayNamedElement:0 page:v12])
      {
        v13 = 1;
        [(RUIObjectModel *)self _displayNamedPage:v12 animated:(gAnimatedNavigationTransitions & 1) == 0];
        v14 = 0;
        if (!v10)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v14 = 0;
        v13 = 0;
        if (!v10)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v22 = [(NSMutableDictionary *)self->_namedAlerts objectForKey:v11];
      if (v22 && [(RUIObjectModel *)self _shouldDisplayNamedElement:0 page:0])
      {
        v23 = [(RUIObjectModel *)self _parentViewController];
        v13 = v23 != 0;
        if (v23)
        {
          [v22 runAlertInController:v23 completion:0];
        }

        v14 = 0;
      }

      else
      {
        if (_isInternalInstall())
        {
          v24 = _RUILoggingFacility();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v53 = v8;
            _os_log_impl(&dword_21B93D000, v24, OS_LOG_TYPE_DEFAULT, "Link press for named element %@ did not find an element", buf, 0xCu);
          }
        }

        v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.RemoteUI" code:3 userInfo:0];
        v13 = 0;
      }

      if (!v10)
      {
        goto LABEL_38;
      }
    }

    v10[2](v10, v13, v14);
LABEL_38:

LABEL_39:
    goto LABEL_40;
  }

  v11 = [(RUIObjectModel *)self absoluteURLWithString:v8];
  v15 = [v9 objectForKeyedSubscript:@"openInSafari"];
  if ([v15 BOOLValue])
  {
    v16 = [v11 rui_isSupportedSafariURL];
  }

  else
  {
    v16 = 0;
  }

  if (([v11 rui_isSupportedNativeURL] & 1) != 0 || v16)
  {
    if (_isInternalInstall())
    {
      v18 = _RUILoggingFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v18, OS_LOG_TYPE_DEFAULT, "RUIObjectModel - url provided is native", buf, 2u);
      }
    }

    v19 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v51 = 0;
    [v19 openSensitiveURL:v11 withOptions:0 error:&v51];
    v20 = v51;

    if (v20)
    {
      v21 = _RUILoggingFacility();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [RUIObjectModel _handleLinkPress:v11 attributes:v20 completion:v21];
      }
    }

    if (v10)
    {
      v10[2](v10, v20 == 0, v20);
    }

    goto LABEL_40;
  }

  v17 = [v9 objectForKeyedSubscript:@"fetchLinksInModalWebView"];
  if ([v17 BOOLValue])
  {
  }

  else
  {
    v25 = [v9 objectForKeyedSubscript:@"isModalHTMLView"];
    v26 = [v25 BOOLValue];

    if (!v26)
    {
      if (v11)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v34 = objc_opt_respondsToSelector();

        if (v34)
        {
          [(RUIObjectModel *)self _startNavigationBarSpinnerIfNeededForAttributes:v9];
          v35 = objc_loadWeakRetained(&self->_delegate);
          v36 = objc_opt_respondsToSelector();

          if (v36)
          {
            v37 = objc_loadWeakRetained(&self->_delegate);
            [v37 objectModel:self willLoadLinkURL:v11 attributes:v9];
          }

          v38 = objc_loadWeakRetained(&self->_delegate);
          v39 = [v9 objectForKeyedSubscript:@"httpMethod"];
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __57__RUIObjectModel__handleLinkPress_attributes_completion___block_invoke;
          v48[3] = &unk_2782E88C0;
          v48[4] = self;
          v49 = v9;
          v50 = v10;
          [v38 objectModel:self pressedLink:v11 httpMethod:v39 completion:v48];

          v40 = v49;
        }

        else
        {
          v41 = objc_loadWeakRetained(&self->_delegate);
          v42 = objc_opt_respondsToSelector();

          if ((v42 & 1) == 0)
          {
            goto LABEL_40;
          }

          v43 = objc_loadWeakRetained(&self->_delegate);
          v44 = [v9 objectForKeyedSubscript:@"httpMethod"];
          [v43 objectModel:self pressedLink:v11 httpMethod:v44];

          if (_isInternalInstall())
          {
            v45 = _RUILoggingFacility();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_21B93D000, v45, OS_LOG_TYPE_DEFAULT, "DEPRECATED - Please use objectModel:pressedLink:httpMethod:completion:", buf, 2u);
            }
          }

          if (_isInternalInstall())
          {
            v46 = _RUILoggingFacility();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              activeElement = self->_activeElement;
              *buf = 138412290;
              v53 = activeElement;
              _os_log_impl(&dword_21B93D000, v46, OS_LOG_TYPE_DEFAULT, "Removing active element %@", buf, 0xCu);
            }
          }

          v40 = self->_activeElement;
          self->_activeElement = 0;
        }

        goto LABEL_40;
      }

      NSLog(&cfstr_WarningInvalid.isa, v8);
      goto LABEL_40;
    }
  }

  if (v11)
  {
    v27 = objc_loadWeakRetained(&self->_delegate);
    v28 = objc_opt_respondsToSelector();

    if ((v28 & 1) == 0 || (v29 = objc_loadWeakRetained(&self->_delegate), v30 = [v29 objectModel:self shouldShowModalHTMLViewWithURL:v11], v29, v30))
    {
      v12 = [v9 objectForKeyedSubscript:@"dismissButtonLabel"];
      v31 = [v9 objectForKeyedSubscript:@"dismissButtonAlignment"];
      v32 = [v9 objectForKeyedSubscript:@"shouldScaleHTMLPageToFit"];
      -[RUIObjectModel showModalWebViewWithLinkURL:dismissButtonLabel:dismissButtonAlignment:scaleToFit:loadCompletion:dismissHandler:](self, "showModalWebViewWithLinkURL:dismissButtonLabel:dismissButtonAlignment:scaleToFit:loadCompletion:dismissHandler:", v11, v12, v31, [v32 BOOLValue], v10, 0);

      goto LABEL_39;
    }
  }

LABEL_40:
}

void __57__RUIObjectModel__handleLinkPress_attributes_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  [*(a1 + 32) _stopNavigationBarSpinnerIfNeededForAttributes:*(a1 + 40)];
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, v6);
  }
}

- (void)_handleElementChange:(id)a3 completion:(id)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 attributes];
  v9 = [v8 objectForKeyedSubscript:@"validationFunction"];

  if (![v9 length] || (objc_msgSend(MEMORY[0x277D75658], "activeKeyboard"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "acceptAutocorrection"), v10, -[RUIObjectModel validateWithFunction:](self, "validateWithFunction:", v9)))
  {
    v11 = [v6 attributes];
    v12 = [v11 objectForKeyedSubscript:@"activationFunction"];

    if ([v12 length])
    {
      v13 = [MEMORY[0x277D75658] activeKeyboard];
      [v13 acceptAutocorrection];

      if (v6)
      {
        v29[0] = v6;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
        v15 = [(RUIObjectModel *)self invokeScriptFunction:v12 withArguments:v14];
      }

      else
      {
        v21 = [(RUIObjectModel *)self invokeScriptFunction:v12 withArguments:0];
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v23 = objc_opt_respondsToSelector();

    v24 = objc_loadWeakRetained(&self->_delegate);
    v25 = v24;
    if (v23)
    {
      [v24 objectModel:self elementDidChange:v6];
    }

    else
    {
      v26 = objc_opt_respondsToSelector();

      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }

      v25 = objc_loadWeakRetained(&self->_delegate);
      v27 = [v6 name];
      v28 = [v6 attributes];
      [v25 objectModel:self pressedButton:v27 attributes:v28];
    }

LABEL_14:
    if (v7)
    {
      v7[2](v7, 1, 0);
    }

    goto LABEL_16;
  }

  if (v7)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.RemoteUI" code:1 userInfo:0];
    v16 = [(RUIObjectModel *)self telemetryDelegate];
    v17 = [RUITelemetryElement alloc];
    v18 = [v6 sourceXMLElement];
    v19 = [(RUIObjectModel *)self sourceURL];
    v20 = [(RUITelemetryElement *)v17 initWithXMLElement:v18 url:v19];
    [v16 processedElementWithError:v12 forElement:v20];

    (v7)[2](v7, 0, v12);
LABEL_16:
  }
}

- (id)_pageContainingTableView:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(RUIObjectModel *)self allPages];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 tableViewOM];

        if (v10 == v4)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)showModalWebViewWithLinkURL:(id)a3 dismissButtonLabel:(id)a4 dismissButtonAlignment:(id)a5 scaleToFit:(BOOL)a6 loadCompletion:(id)a7 dismissHandler:(id)a8
{
  v10 = a6;
  v30 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  webViewDismissHandler = self->_webViewDismissHandler;
  isInternalInstall = _isInternalInstall();
  if (!webViewDismissHandler)
  {
    if (isInternalInstall)
    {
      v22 = _RUILoggingFacility();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v14 host];
        v28 = 138412290;
        v29 = v23;
        _os_log_impl(&dword_21B93D000, v22, OS_LOG_TYPE_DEFAULT, "Showing modal web view with domain '%@'", &v28, 0xCu);
      }
    }

    v24 = _Block_copy(v18);
    v25 = self->_webViewDismissHandler;
    self->_webViewDismissHandler = v24;

    v21 = [[RemoteUIWebViewController alloc] initWithNibName:0 bundle:0];
    v26 = [(RUIObjectModel *)self style];
    [(RemoteUIWebViewController *)v21 setStyle:v26];

    [(RemoteUIWebViewController *)v21 setDismissButtonAlignment:v16];
    [(RemoteUIWebViewController *)v21 setDismissButtonLabel:v15];
    [(RemoteUIWebViewController *)v21 setScalesPageToFit:v10];
    [(RemoteUIWebViewController *)v21 setDelegate:self];
    v27 = [(RUIObjectModel *)self _parentViewController];
    [v27 presentViewController:v21 animated:1 completion:0];

    [(RemoteUIWebViewController *)v21 loadURL:v14 completion:v17];
    goto LABEL_10;
  }

  if (isInternalInstall)
  {
    v21 = _RUILoggingFacility();
    if (os_log_type_enabled(&v21->super.super.super, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_21B93D000, &v21->super.super.super, OS_LOG_TYPE_DEFAULT, "Error: Can't show a modal web view, already showing one!", &v28, 2u);
    }

LABEL_10:
  }
}

- (void)remoteUIWebViewController:(id)a3 dismissWithPayload:(id)a4
{
  v10 = a4;
  webViewDismissHandler = self->_webViewDismissHandler;
  v7 = a3;
  v8 = _Block_copy(webViewDismissHandler);
  v9 = self->_webViewDismissHandler;
  self->_webViewDismissHandler = 0;

  [v7 dismissViewControllerAnimated:1 completion:0];
  if (v8)
  {
    v8[2](v8, v10);
  }
}

- (void)remoteUIWebViewControllerDidDismiss:(id)a3
{
  webViewDismissHandler = self->_webViewDismissHandler;
  if (webViewDismissHandler)
  {
    webViewDismissHandler[2](webViewDismissHandler, 0, a3);
    v5 = self->_webViewDismissHandler;
    self->_webViewDismissHandler = 0;
  }
}

- (void)alertView:(id)a3 pressedButton:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(RUIObjectModel *)self _parentNavigationController];
  v12 = [v11 topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v11 viewControllers];
    v14 = [v13 lastObject];
  }

  else
  {
    v14 = 0;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53__RUIObjectModel_alertView_pressedButton_completion___block_invoke;
  v19[3] = &unk_2782E8960;
  v20 = v14;
  v21 = v11;
  v22 = v8;
  v23 = v9;
  v15 = v9;
  v16 = v8;
  v17 = v11;
  v18 = v14;
  [(RUIObjectModel *)self activateElement:v10 completion:v19];
}

void __53__RUIObjectModel_alertView_pressedButton_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v14 = v5;
  if (v6)
  {
    v7 = [*(a1 + 40) topViewController];
    if (v6 != v7)
    {
LABEL_6:

      v5 = v14;
      goto LABEL_7;
    }

    v8 = [*(a1 + 48) attributes];
    v9 = [v8 objectForKeyedSubscript:@"activationFunction"];
    if (v9)
    {

LABEL_5:
      goto LABEL_6;
    }

    v11 = [*(a1 + 48) attributes];
    v12 = [v11 objectForKeyedSubscript:@"url"];

    v5 = v14;
    if (!v12)
    {
      v13 = [*(a1 + 32) hasPasscodeView];
      v5 = v14;
      if (v13)
      {
        v7 = [*(a1 + 32) passcodeViewOM];
        v8 = [v7 passcodeField];
        [v8 becomeFirstResponder];
        goto LABEL_5;
      }
    }
  }

LABEL_7:
  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, a2, v14);
    v5 = v14;
  }
}

- (BOOL)tableViewOM:(id)a3 deleteRowAtIndexPath:(id)a4
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [v7 objectModelRowForIndexPath:v6];
  v9 = [(RUIObjectModel *)self _pageContainingTableView:v7];

  v10 = [v8 deleteAction];
  v11 = [v8 attributes];
  v12 = [v11 objectForKeyedSubscript:@"deletionFunction"];

  v13 = 0;
  if (!v9 || !v8)
  {
    goto LABEL_15;
  }

  if (!(v10 | v12))
  {
    goto LABEL_14;
  }

  if (![v12 length])
  {
    v16 = [v10 objectForKey:@"type"];
    v17 = [v16 isEqualToString:@"linkDeleteAction"];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (v17)
    {
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        v20 = [v10 objectForKey:@"url"];
        v21 = [v10 objectForKey:@"httpMethod"];
        v22 = [(RUIObjectModel *)self absoluteURLWithString:v20];
        if (v22)
        {
          v28 = v20;
          v23 = objc_loadWeakRetained(&self->_delegate);
          v13 = [v23 objectModel:self page:v9 deletedTableRow:v8 atIndexPath:v6 withURL:v22 httpMethod:v21];

          v20 = v28;
        }

        else
        {
          NSLog(&cfstr_DeleteActionHa.isa, v20);
          v13 = 0;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        v25 = [v10 objectForKey:@"name"];
        v26 = objc_loadWeakRetained(&self->_delegate);
        v13 = [v26 objectModel:self page:v9 deletedTableRow:v8 atIndexPath:v6 withName:v25];

        goto LABEL_15;
      }
    }

LABEL_14:
    v13 = 0;
    goto LABEL_15;
  }

  v29[0] = v8;
  v13 = 1;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v15 = [(RUIObjectModel *)self invokeScriptFunction:v12 withArguments:v14];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v15 BOOLValue];
  }

LABEL_15:
  return v13;
}

- (void)tableViewOMDidChange:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RUIObjectModel *)self visiblePage];
  v6 = [(RUIObjectModel *)self updateInfo];
  v7 = [v6 mutableCopy];

  v47 = v4;
  [v4 populatePostbackDictionary:v7];
  v46 = v7;
  [(RUIObjectModel *)self setUpdateInfo:v7];
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = [v5 buttonItems];
  v48 = v5;
  v54 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v54)
  {
    v8 = *v69;
    v49 = *v69;
    do
    {
      v9 = 0;
      do
      {
        if (*v69 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v68 + 1) + 8 * v9);
        v11 = [v10 attributes];
        v12 = [v11 objectForKey:@"enabledFunction"];

        v13 = [v12 length];
        v14 = [v10 attributes];
        v15 = [v14 objectForKeyedSubscript:@"authRequired"];
        v16 = [v15 BOOLValue];

        if (v13)
        {
          v17 = [(RUIObjectModel *)self validateWithFunction:v12];
          if (!v16)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if ((v16 & 1) == 0)
          {
            goto LABEL_22;
          }

          LODWORD(v17) = 1;
        }

        v18 = [v10 attributes];
        v19 = [v18 objectForKeyedSubscript:@"authUsernameFieldID"];

        v20 = [v10 attributes];
        v21 = [v20 objectForKeyedSubscript:@"authPasswordFieldID"];

        v22 = [v19 length];
        if (!v22)
        {
          if (![v21 length])
          {
            v23 = 0;
            goto LABEL_20;
          }

LABEL_16:
          v24 = [(RUIObjectModel *)self textInRowWithIdentifier:v21];
          v23 = [v24 length] == 0;

          v5 = v48;
          if (!v22)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        v52 = [(RUIObjectModel *)self textInRowWithIdentifier:v19];
        if ([v52 length])
        {
          if ([v21 length])
          {
            goto LABEL_16;
          }

          v23 = 0;
        }

        else
        {
          v23 = 1;
        }

LABEL_19:

LABEL_20:
        v17 = !v23 & v17;

        v8 = v49;
LABEL_21:
        v25 = [v10 attributes];
        [v5 setButton:v25 enabled:v17];

LABEL_22:
        ++v9;
      }

      while (v54 != v9);
      v26 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
      v54 = v26;
    }

    while (v26);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v27 = [v5 accessoryViews];
  v28 = [v27 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v65;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v65 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v64 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v32 objectModelDidChange:self];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v29);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obja = [v47 sections];
  v55 = [obja countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (v55)
  {
    v53 = *v61;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v61 != v53)
        {
          objc_enumerationMutation(obja);
        }

        v34 = *(*(&v60 + 1) + 8 * j);
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v35 = [v34 rows];
        v36 = [v35 countByEnumeratingWithState:&v56 objects:v72 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v57;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v57 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v56 + 1) + 8 * k);
              v41 = [v40 attributes];
              v42 = [v41 objectForKey:@"enabledFunction"];

              if ([v42 length])
              {
                [v40 setEnabled:{-[RUIObjectModel validateWithFunction:](self, "validateWithFunction:", v42)}];
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v56 objects:v72 count:16];
          }

          while (v37);
        }
      }

      v55 = [obja countByEnumeratingWithState:&v60 objects:v73 count:16];
    }

    while (v55);
  }

  [v48 notifyPageDidChangePublisher];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v44 = objc_opt_respondsToSelector();

  if (v44)
  {
    v45 = objc_loadWeakRetained(&self->_delegate);
    [v45 objectModelDidChange:self];
  }
}

- (void)tableViewOM:(id)a3 elementDidChange:(id)a4 action:(int)a5 completion:(id)a6
{
  v7 = *&a5;
  v10 = a4;
  v11 = a6;
  objc_storeStrong(&self->_activeElement, a4);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__RUIObjectModel_tableViewOM_elementDidChange_action_completion___block_invoke;
  v14[3] = &unk_2782E88C0;
  v14[4] = self;
  v15 = v10;
  v16 = v11;
  v12 = v11;
  v13 = v10;
  [(RUIObjectModel *)self handleElementChange:v13 action:v7 completion:v14];
}

void __65__RUIObjectModel_tableViewOM_elementDidChange_action_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  if (v13)
  {
    v5 = [*(a1 + 32) telemetryDelegate];
    v6 = [RUITelemetryElement alloc];
    v7 = [*(a1 + 40) sourceXMLElement];
    v8 = [*(a1 + 32) sourceURL];
    v9 = [(RUITelemetryElement *)v6 initWithXMLElement:v7 url:v8];
    [v5 processedElementWithError:v13 forElement:v9];
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 216);
  *(v10 + 216) = 0;

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, a2, v13);
  }
}

- (BOOL)webViewOM:(id)a3 shouldStartLoadWithRequest:(id)a4 navigationType:(int64_t)a5
{
  v8 = a3;
  if (a5)
  {
    goto LABEL_11;
  }

  v9 = a4;
  v10 = [v9 URL];
  v11 = [v10 fragment];
  v12 = [v10 scheme];
  if (![v12 isEqualToString:@"xmlui"])
  {

    goto LABEL_6;
  }

  v13 = [v11 length];

  if (!v13)
  {
LABEL_6:
    v14 = [v10 relativeString];
    goto LABEL_7;
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"#%@", v11];
LABEL_7:
  v15 = v14;
  v16 = [v8 attributes];
  v17 = [v16 mutableCopy];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;

  [v20 setObject:v15 forKeyedSubscript:@"url"];
  v21 = [v9 HTTPMethod];

  [v20 setObject:v21 forKeyedSubscript:@"httpMethod"];
  v22 = [[RUIElement alloc] initWithAttributes:v20 parent:v8];
  [(RUIObjectModel *)self handleElementChange:v22 action:2 completion:0];

LABEL_11:
  return a5 != 0;
}

- (void)navigateToNextPageAnimated:(BOOL)a3
{
  v4 = [(NSMutableArray *)self->_defaultPages count];
  currentPage = self->_currentPage;
  if (v4 <= currentPage + 1)
  {
    NSLog(&cfstr_WarningNextBut.isa);
  }

  else
  {
    v6 = v4 > currentPage + 2;
    self->_currentPage = currentPage + 1;
    v9 = [(NSMutableArray *)self->_defaultPages objectAtIndex:?];
    [(NSMutableArray *)self->_displayedPages addObject:v9];
    [(RUIObjectModel *)self _populatePageNavItem:v9 withNextButton:v6];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v8 = [WeakRetained parentViewControllerForObjectModel:self];
    [v8 settingsCompatiblePushViewController:v9];
  }
}

- (void)RUIPage:(id)a3 pressedNavBarButton:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(RUIElement *)v6 attributes];
  v8 = [v7 objectForKey:@"validationFunction"];
  if (![v8 length] || (objc_msgSend(MEMORY[0x277D75658], "activeKeyboard"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "acceptAutocorrection"), v9, -[RUIObjectModel validateWithFunction:](self, "validateWithFunction:", v8)))
  {
    v10 = [v7 objectForKey:@"type"];
    if ([v10 isEqualToString:@"nextBarItem"])
    {
      [(RUIObjectModel *)self _navigateToNextPageAnimated];
    }

    if ([(RUIElement *)self->_activeElement isEqual:v6])
    {
      if (_isInternalInstall())
      {
        v11 = _RUILoggingFacility();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v6;
          _os_log_impl(&dword_21B93D000, v11, OS_LOG_TYPE_DEFAULT, "Already handling activation for barButtonItem: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      objc_storeStrong(&self->_activeElement, a4);
      v12 = [(RUIElement *)v6 barButtonItem];
      [(RUIObjectModel *)self setPopoverSourceItem:v12];

      if (_isInternalInstall())
      {
        v13 = _RUILoggingFacility();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          activeElement = self->_activeElement;
          *buf = 138412290;
          v17 = activeElement;
          _os_log_impl(&dword_21B93D000, v13, OS_LOG_TYPE_DEFAULT, "Active barButtonItem set %@", buf, 0xCu);
        }
      }

      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __46__RUIObjectModel_RUIPage_pressedNavBarButton___block_invoke;
      v15[3] = &unk_2782E8018;
      v15[4] = self;
      [(RUIObjectModel *)self handleElementChange:v6 action:2 completion:v15];
    }
  }
}

void __46__RUIObjectModel_RUIPage_pressedNavBarButton___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [*(a1 + 32) telemetryDelegate];
    v6 = [RUITelemetryElement alloc];
    v7 = [*(*(a1 + 32) + 216) sourceXMLElement];
    v8 = [*(a1 + 32) sourceURL];
    v9 = [(RUITelemetryElement *)v6 initWithXMLElement:v7 url:v8];
    [v5 processedElementWithError:v4 forElement:v9];
  }

  if (_isInternalInstall())
  {
    v10 = _RUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 32) + 216);
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_21B93D000, v10, OS_LOG_TYPE_DEFAULT, "Removing active barButtonItem %@", &v14, 0xCu);
    }
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 216);
  *(v12 + 216) = 0;
}

- (void)RUIPage:(id)a3 toggledEditing:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 objectModel:self page:v9 toggledEditing:v4];
  }
}

- (unint64_t)supportedInterfaceOrientationsForRUIPage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    v8 = [v7 supportedInterfaceOrientationsForObjectModel:self page:v4];
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

- (RUIObjectModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (RemoteUITelemetryDelegate)telemetryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_telemetryDelegate);

  return WeakRetained;
}

- (BOOL)prepareScriptContext
{
  v3 = [(NSString *)self->_inlineScript length];
  if (v3 && !self->_didInitializeScript)
  {
    [(RUIObjectModel *)self runScript];
    self->_didInitializeScript = 1;
  }

  return v3 != 0;
}

- (BOOL)validateWithFunction:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(RUIObjectModel *)self prepareScriptContext])
  {
    if (!_isInternalInstall())
    {
      goto LABEL_21;
    }

    v11 = _RUILoggingFacility();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v16 = v4;
    v12 = "Validation with '%@': No script context!";
LABEL_19:
    _os_log_impl(&dword_21B93D000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
    goto LABEL_20;
  }

  if (![(__CFString *)v4 length])
  {
    if (!_isInternalInstall())
    {
      goto LABEL_21;
    }

    v11 = _RUILoggingFacility();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    *buf = 138412290;
    v16 = v4;
    v12 = "Validation with '%@': Empty function!";
    goto LABEL_19;
  }

  GlobalObject = JSContextGetGlobalObject(self->_ctx);
  ObjectProperty = getObjectProperty(self->_ctx, GlobalObject, v4);
  if (!ObjectProperty)
  {
    if (_isInternalInstall())
    {
      v11 = _RUILoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v4;
        v12 = "Validation with '%@': Invalid script!";
        goto LABEL_19;
      }

LABEL_20:
    }

LABEL_21:
    LOBYTE(v8) = 1;
    goto LABEL_22;
  }

  exception = 0;
  v7 = JSObjectCallAsFunction(self->_ctx, ObjectProperty, 0, 0, 0, &exception);
  [(RUIObjectModel *)self _logException:exception];
  if (!JSValueIsBoolean(self->_ctx, v7))
  {
    if (_isInternalInstall())
    {
      v9 = _RUILoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Validation with '%@': Didn't return a BOOL!", buf, 0xCu);
      }

      LOBYTE(v8) = 1;
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v8 = JSValueToBoolean(self->_ctx, v7);
  if (_isInternalInstall())
  {
    v9 = _RUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"false";
      if (v8)
      {
        v10 = @"true";
      }

      *buf = 138412546;
      v16 = v4;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Validation with '%@': %@", buf, 0x16u);
    }

LABEL_27:
  }

LABEL_22:

  return v8;
}

- (id)objectForJSValue:(OpaqueJSValue *)a3
{
  IsString = JSValueIsString(self->_ctx, a3);
  ctx = self->_ctx;
  if (!IsString)
  {
    IsBoolean = JSValueIsBoolean(ctx, a3);
    v13 = self->_ctx;
    if (IsBoolean)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithBool:{JSValueToBoolean(v13, a3)}];
    }

    else
    {
      IsNumber = JSValueIsNumber(v13, a3);
      v16 = self->_ctx;
      if (!IsNumber)
      {
        IsObject = JSValueIsObject(v16, a3);
        v19 = self->_ctx;
        if (IsObject)
        {
          GlobalObject = JSContextGetGlobalObject(v19);
          v21 = JSStringCreateWithUTF8CString("Array");
          Property = JSObjectGetProperty(self->_ctx, GlobalObject, v21, 0);
          v10 = 0;
          if (JSValueIsInstanceOfConstructor(self->_ctx, a3, Property, 0))
          {
            v23 = JSStringCreateWithUTF8CString("length");
            v24 = JSObjectGetProperty(self->_ctx, a3, v23, 0);
            if (JSValueIsNumber(self->_ctx, v24) && (v25 = JSValueToNumber(self->_ctx, v24, 0), v25 >= 1))
            {
              v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v25];
              v26 = 0;
              do
              {
                v27 = [(RUIObjectModel *)self objectForJSValue:JSObjectGetPropertyAtIndex(self->_ctx, a3, v26, 0)];
                if (v27)
                {
                  [(__CFString *)v10 addObject:v27];
                }

                ++v26;
              }

              while (v25 != v26);
            }

            else
            {
              v10 = 0;
            }

            JSStringRelease(v23);
          }

          v11 = v21;
          goto LABEL_4;
        }

        if (!JSValueIsUndefined(v19, a3))
        {
          NSLog(&cfstr_XmluiObjectfor.isa);
        }

        goto LABEL_21;
      }

      v17 = JSValueToNumber(v16, a3, 0);
      *&v17 = v17;
      v14 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
    }

    v10 = v14;
    goto LABEL_22;
  }

  v7 = JSValueToStringCopy(ctx, a3, 0);
  if (v7)
  {
    v8 = v7;
    Default = CFAllocatorGetDefault();
    v10 = JSStringCopyCFString(Default, v8);
    v11 = v8;
LABEL_4:
    JSStringRelease(v11);
    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
LABEL_22:

  return v10;
}

- (id)invokeScriptFunction:(id)a3 withArguments:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(RUIObjectModel *)self prepareScriptContext])
  {
    if (_isInternalInstall())
    {
      v29 = _RUILoggingFacility();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
LABEL_41:

        goto LABEL_42;
      }

      *buf = 138412290;
      *&buf[4] = v6;
      v30 = "Script invocation for '%@': No script context!";
LABEL_40:
      _os_log_impl(&dword_21B93D000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 0xCu);
      goto LABEL_41;
    }

LABEL_42:
    v31 = 0;
    goto LABEL_43;
  }

  if (![(__CFString *)v6 length])
  {
    goto LABEL_42;
  }

  GlobalObject = JSContextGetGlobalObject(self->_ctx);
  ObjectProperty = getObjectProperty(self->_ctx, GlobalObject, v6);
  if (!ObjectProperty)
  {
    if (!_isInternalInstall())
    {
      goto LABEL_42;
    }

    v29 = _RUILoggingFacility();
    if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 138412290;
    *&buf[4] = v6;
    v30 = "Script invocation for '%@': Invalid script!";
    goto LABEL_40;
  }

  v10 = ObjectProperty;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = v7;
  v12 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v12)
  {
    v41 = self;
    v34 = v6;
    v13 = 0;
    v14 = *v47;
    do
    {
      for (i = 0; i != v12; i = (i + 1))
      {
        if (*v47 != v14)
        {
          objc_enumerationMutation(v11);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                continue;
              }
            }
          }
        }

        ++v13;
      }

      v12 = [v11 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v12);

    if (v13 >= 1)
    {
      v12 = malloc_type_calloc(v13, 8uLL, 0x6004044C4A2DFuLL);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      obj = v11;
      self = v41;
      v40 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (!v40)
      {
        goto LABEL_51;
      }

      v16 = 0;
      v38 = v12;
      v39 = *v43;
LABEL_19:
      v17 = 0;
      while (1)
      {
        if (*v43 != v39)
        {
          objc_enumerationMutation(obj);
        }

        if (v16 == v13)
        {
LABEL_36:
          v6 = v34;
          v12 = v38;
          goto LABEL_51;
        }

        v18 = *(*(&v42 + 1) + 8 * v17);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = JSStringCreateWithCFString(v18);
          String = JSValueMakeString(self->_ctx, v19);
          JSStringRelease(v19);
          v38[v16] = String;
          self = v41;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            ctx = v41->_ctx;
            [(__CFString *)v18 floatValue];
            v23 = ctx;
            self = v41;
            Number = JSValueMakeNumber(v23, v22);
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [MEMORY[0x277CD4640] contextWithJSGlobalContextRef:self->_ctx];
              v35 = MEMORY[0x277CD4658];
              v36 = v25;
              v26 = [(__CFString *)v18 copy];
              v27 = [v35 valueWithObject:v26 inContext:v25];

              v38[v16++] = [v27 JSValueRef];
              self = v41;

              goto LABEL_29;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_29;
            }

            Number = [(__CFString *)v18 JSValueForContext:self->_ctx];
          }

          v38[v16] = Number;
        }

        ++v16;
LABEL_29:
        if (v40 == ++v17)
        {
          v28 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
          v40 = v28;
          if (v28)
          {
            goto LABEL_19;
          }

          goto LABEL_36;
        }
      }
    }

    v12 = 0;
    self = v41;
  }

  else
  {
    v13 = 0;
LABEL_51:
  }

  *buf = 0;
  v33 = JSObjectCallAsFunction(self->_ctx, v10, 0, v13, v12, buf);
  [(RUIObjectModel *)self _logException:*buf];
  if (v12)
  {
    free(v12);
  }

  v31 = [(RUIObjectModel *)self objectForJSValue:v33];
LABEL_43:

  return v31;
}

- (OpaqueJSContext)jsContextRef
{
  result = self->_ctx;
  if (!result)
  {
    v4 = JSGlobalContextCreate(0);
    [(RUIObjectModel *)self setJSGlobalContext:v4];
    JSGlobalContextRelease(v4);
    return self->_ctx;
  }

  return result;
}

- (void)runScript
{
  v3 = self->_inlineScript;
  v4 = [(RUIObjectModel *)self jsContextRef];
  GlobalObject = JSContextGetGlobalObject(v4);
  v6 = RUIJSObjectModel_class();
  v7 = JSObjectMake(v4, v6, self);
  v8 = JSStringCreateWithCFString(@"xmlui");
  exception = 0;
  JSObjectSetProperty(v4, GlobalObject, v8, v7, 0xAu, &exception);
  [(RUIObjectModel *)self _logException:exception];
  JSStringRelease(v8);
  v10 = 0;
  v9 = JSStringCreateWithCFString(v3);
  JSEvaluateScript(v4, v9, 0, 0, 0, &v10);
  [(RUIObjectModel *)self _logException:v10];

  JSStringRelease(v9);
}

- (void)setJSGlobalContext:(OpaqueJSContext *)a3
{
  ctx = self->_ctx;
  if (ctx != a3)
  {
    if (ctx)
    {
      JSGlobalContextRelease(ctx);
    }

    if (a3)
    {
      JSGlobalContextRetain(a3);
    }

    self->_ctx = a3;
  }
}

- (void)initializeSwift
{
  v2 = self;
  RUIObjectModel.initializeSwift()();
}

- (void)setDecodingUserInfo:(id)a3
{
  v6 = a3;
  v4 = a3;
  v5 = self;
  sub_21B9C095C(&v6, &type metadata for DecodingUserInfoAssociatedKey, &type metadata for DecodingUserInfoAssociatedKey, &off_28172C550);
}

- (void)jsInterfaceForElementId:(id)a3
{
  if (a3)
  {
    v4 = sub_21BA87CBC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  RUIObjectModel.jsInterface(for:)(v4, v6);
  v9 = v8;

  return v9;
}

- (void)notifyXMLUIDataChange
{
  v2 = self;
  sub_21B9C07A0(&type metadata for XMLUIDataAssociatedKey, &off_28172B2C0, &v3);
  type metadata accessor for XMLUIData();
  sub_21B9AFCD8();
  sub_21BA8690C();

  sub_21BA8692C();
}

- (void)setActivityIndicatorStatus:(BOOL)a3 forElement:(id)a4
{
  v6 = a4;
  v7 = self;
  RUIObjectModel.setActivityIndicatorStatus(_:forElement:)(a3, v6);
}

- (void)presentWithBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RUIObjectModel.m" lineNumber:237 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
}

- (void)setPages:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RUIObjectModel.m" lineNumber:561 description:@"Cannot change RUIObjectModel pages once they are displayed"];
}

void __78__RUIObjectModel_handleAppleIDAuthenticationIfNeededForAttributes_completion___block_invoke_2_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getAKAuthenticationUsernameKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"RUIObjectModel.m" lineNumber:57 description:{@"%s", dlerror()}];

  __break(1u);
}

void __56__RUIObjectModel_handleElementChange_action_completion___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&dword_21B93D000, a2, OS_LOG_TYPE_ERROR, "No url/action attribute specified or action (%u) not activated.", v3, 8u);
}

- (void)_handleLinkPress:(uint64_t)a1 attributes:(uint64_t)a2 completion:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_21B93D000, log, OS_LOG_TYPE_ERROR, "Error opening sensitive url %@ - %@", &v3, 0x16u);
}

@end