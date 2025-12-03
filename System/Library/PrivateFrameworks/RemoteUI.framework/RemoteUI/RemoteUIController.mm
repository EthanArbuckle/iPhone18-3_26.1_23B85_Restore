@interface RemoteUIController
- (BOOL)_objectModelPageWantsHSATokens:(id)tokens;
- (BOOL)objectModel:(id)model shouldDisplayNamedElement:(id)element page:(id)page;
- (NSArray)displayedPages;
- (RUILoader)loader;
- (RemoteUIController)init;
- (RemoteUIControllerDelegate)delegate;
- (RemoteUITelemetryDelegate)telemetryDelegate;
- (UINavigationController)navigationController;
- (UIViewController)currentPresentationContext;
- (UIViewController)hostViewController;
- (id)_handleDismissAndReplaceWithActionSignal:(id)signal objectModel:(id)model;
- (id)_handleDismissWithActionSignal:(id)signal objectModel:(id)model;
- (id)_objectModelStack;
- (id)dismissObjectModelsAnimated:(BOOL)animated completion:(id)completion;
- (id)hostingController;
- (id)parentViewControllerForObjectModel:(id)model;
- (id)parser:(id)parser createPageWithName:(id)name attributes:(id)attributes;
- (id)popObjectModelAnimated:(BOOL)animated stopListeningForHSATokens:(BOOL)tokens;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (id)setHandlerForElementsMatching:(id)matching handler:(id)handler;
- (id)viewControllerForAlertPresentation;
- (id)visibleElementWithIdentifier:(id)identifier;
- (void)_beginListeningForSMSAutoFill;
- (void)_didPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)_didRemoveObjectModel:(id)model;
- (void)_invalidateModalObjectModels;
- (void)_loadURL:(id)l fromObjectModel:(id)model postBody:(id)body;
- (void)_loadURL:(id)l postBody:(id)body fromObjectModel:(id)model completion:(id)completion;
- (void)_modalNavigationWasDismissed;
- (void)_modalViewControllerWasPopped:(id)popped;
- (void)_objectModel:(id)model receivedToken:(id)token;
- (void)_presentModalRUIController:(id)controller completion:(id)completion;
- (void)_removePreviousObjectModelsBackToIdentifier:(id)identifier;
- (void)_replaceModalRUIController:(id)controller byController:(id)byController completion:(id)completion;
- (void)_replaceObjectModelWithObjectModel:(id)model;
- (void)_replacePagesOfObjectModel:(id)model byObjectModel:(id)objectModel sourceArray:(id)array;
- (void)_setHandlerWithKey:(id)key forElementsMatching:(id)matching handler:(id)handler;
- (void)_showPartialScreenModal:(id)modal;
- (void)_stopListeningForSMSAutoFill;
- (void)_willPresentObjectModel:(id)model modally:(BOOL)modally;
- (void)dealloc;
- (void)handleCancel:(id)cancel;
- (void)loadData:(id)data baseURL:(id)l;
- (void)loadRequest:(id)request;
- (void)loadRequest:(id)request completion:(id)completion;
- (void)loader:(id)loader didFinishLoadWithError:(id)error forRequest:(id)request;
- (void)loader:(id)loader didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)loader:(id)loader didReceiveHTTPResponse:(id)response forRequest:(id)request;
- (void)loader:(id)loader loadResourcesForObjectModel:(id)model completion:(id)completion;
- (void)loader:(id)loader receivedObjectModel:(id)model topActionSignal:(id)signal completion:(id)completion;
- (void)loader:(id)loader willLoadRequest:(id)request redirectResponse:(id)response completionHandler:(id)handler;
- (void)modalNavigationWasDismissed;
- (void)objectModel:(id)model didNavigateBackFromController:(id)controller withGesture:(BOOL)gesture;
- (void)objectModel:(id)model elementDidChange:(id)change;
- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method completion:(id)completion;
- (void)objectModel:(id)model willLoadLinkURL:(id)l attributes:(id)attributes;
- (void)presentLoadingSheet:(id)sheet;
- (void)pushObjectModel:(id)model animated:(BOOL)animated completion:(id)completion;
- (void)refreshTopModelWithModel:(id)model;
- (void)setDelegate:(id)delegate;
- (void)setHandlerForButtonName:(id)name handler:(id)handler;
- (void)setHandlerForButtonsMatching:(id)matching handler:(id)handler;
- (void)setHandlerForElementName:(id)name handler:(id)handler;
- (void)setStyle:(id)style;
- (void)startListeningForHSATokenAutoFill;
- (void)stopListeningForHSATokenAutoFill;
@end

@implementation RemoteUIController

- (RemoteUIController)init
{
  v18 = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = RemoteUIController;
  v2 = [(RemoteUIController *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    objectModels = v2->_objectModels;
    v2->_objectModels = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    modalObjectModels = v2->_modalObjectModels;
    v2->_modalObjectModels = v5;

    [MEMORY[0x277D75780] _setUseCustomBackButtonAction:1];
    uUID = [MEMORY[0x277CCAD78] UUID];
    UUID = v2->_UUID;
    v2->_UUID = uUID;

    if (_isInternalInstall())
    {
      if (_isInternalInstall())
      {
        v9 = _RUILoggingFacility();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          uUID2 = [(RemoteUIController *)v2 UUID];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138412546;
          v15 = uUID2;
          v16 = 2112;
          v17 = callStackSymbols;
          _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "RemoteUIController init %@\n%@", buf, 0x16u);
        }
      }
    }
  }

  return v2;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  if (_isInternalInstall() && _isInternalInstall())
  {
    v3 = _RUILoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      uUID = [(RemoteUIController *)self UUID];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      *buf = 138412546;
      v8 = uUID;
      v9 = 2112;
      v10 = callStackSymbols;
      _os_log_impl(&dword_21B93D000, v3, OS_LOG_TYPE_DEFAULT, "RemoteUIController dealloc %@\n%@", buf, 0x16u);
    }
  }

  [(RemoteUIController *)self _stopListeningForSMSAutoFill];
  [(RUILoader *)self->_loader cancel];
  [(RUIHTTPRequest *)self->_loader setDelegate:0];
  v6.receiver = self;
  v6.super_class = RemoteUIController;
  [(RemoteUIController *)&v6 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v14 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_delegate, delegateCopy);
    if (_isInternalInstall())
    {
      v6 = _RUILoggingFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        uUID = [(RemoteUIController *)self UUID];
        uUIDString = [uUID UUIDString];
        v9 = objc_loadWeakRetained(&self->_delegate);
        v10 = 138412546;
        v11 = uUIDString;
        v12 = 2112;
        v13 = v9;
        _os_log_impl(&dword_21B93D000, v6, OS_LOG_TYPE_DEFAULT, "RUIController %@ got delegate %@", &v10, 0x16u);
      }
    }
  }
}

- (UIViewController)currentPresentationContext
{
  modalNavigationController = self->_modalNavigationController;
  if (modalNavigationController && ![(RUINavigationController *)modalNavigationController isDismissing])
  {
    hostViewController = self->_modalNavigationController;
  }

  else
  {
    hostViewController = [(RemoteUIController *)self hostViewController];
  }

  return hostViewController;
}

- (RemoteUITelemetryDelegate)telemetryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_telemetryDelegate);

  return WeakRetained;
}

- (void)setStyle:(id)style
{
  v26 = *MEMORY[0x277D85DE8];
  styleCopy = style;
  if (self->_style != styleCopy)
  {
    objc_storeStrong(&self->_style, style);
    [(RUILoader *)self->_loader setStyle:styleCopy];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = self->_objectModels;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v20 + 1) + 8 * i) setStyle:styleCopy];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->_modalObjectModels;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * j) setStyle:{styleCopy, v16}];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }
  }
}

- (void)modalNavigationWasDismissed
{
  spinner = self->_spinner;
  if (spinner)
  {
    [(UIActivityIndicatorView *)spinner stopAnimating];
  }

  [(RemoteUIController *)self _modalNavigationWasDismissed];
}

- (void)handleCancel:(id)cancel
{
  hostViewController = [(RemoteUIController *)self hostViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__RemoteUIController_handleCancel___block_invoke;
  v5[3] = &unk_2782E7F30;
  v5[4] = self;
  [hostViewController dismissViewControllerAnimated:1 completion:v5];
}

- (void)presentLoadingSheet:(id)sheet
{
  sheetCopy = sheet;
  v4 = objc_alloc_init(MEMORY[0x277D75D28]);
  objc_storeStrong(&self->_loadingViewController, v4);
  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_handleCancel_];
  navigationItem = [v4 navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  style = [(RemoteUIController *)self style];
  if ((!style || (v8 = style, -[RemoteUIController style](self, "style"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 showsImageInLoadingNavbar], v9, v8, v10)) && (objc_msgSend(sheetCopy, "navBarImage"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    navBarImageLabel2 = v11;
    style3 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
    navBarImageLabel = [sheetCopy navBarImageLabel];
    style2 = [(RemoteUIController *)self style];
    v16 = [RUIBarButtonItem titleItemWithLabel:navBarImageLabel imageView:style3 imageSize:style2 style:0 labelColor:25.0, 25.0];
    navigationItem2 = [v4 navigationItem];
    [navigationItem2 setLeftBarButtonItem:v16];
  }

  else
  {
    navBarImageLabel2 = [sheetCopy navBarImageLabel];
    style3 = [(RemoteUIController *)self style];
    navBarImageLabel = [RUIBarButtonItem titleItemWithLabel:navBarImageLabel2 imageView:0 imageSize:style3 style:0 labelColor:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    style2 = [v4 navigationItem];
    [style2 setLeftBarButtonItem:navBarImageLabel];
  }

  style4 = [(RemoteUIController *)self style];
  navigationItem3 = [v4 navigationItem];
  [style4 applyToNavigationItem:navigationItem3];

  v20 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v20;

  view = [v4 view];
  [view addSubview:self->_spinner];

  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  centerXAnchor = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  view2 = [v4 view];
  centerXAnchor2 = [view2 centerXAnchor];
  v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v26 setActive:1];

  centerYAnchor = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
  view3 = [v4 view];
  centerYAnchor2 = [view3 centerYAnchor];
  v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v30 setActive:1];

  spinnerLabel = [sheetCopy spinnerLabel];

  if (spinnerLabel)
  {
    v32 = objc_alloc_init(MEMORY[0x277D756B8]);
    spinnerLabel2 = [sheetCopy spinnerLabel];
    [v32 setText:spinnerLabel2];

    [v32 setTextAlignment:1];
    style5 = [(RemoteUIController *)self style];
    spinnerLabelFont = [style5 spinnerLabelFont];
    [v32 setFont:spinnerLabelFont];

    style6 = [(RemoteUIController *)self style];
    spinnerLabelColor = [style6 spinnerLabelColor];
    [v32 setTextColor:spinnerLabelColor];

    view4 = [v4 view];
    [view4 addSubview:v32];

    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    leadingAnchor = [v32 leadingAnchor];
    view5 = [v4 view];
    leadingAnchor2 = [view5 leadingAnchor];
    v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v42 setActive:1];

    trailingAnchor = [v32 trailingAnchor];
    view6 = [v4 view];
    trailingAnchor2 = [view6 trailingAnchor];
    v46 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v46 setActive:1];

    topAnchor = [v32 topAnchor];
    bottomAnchor = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
    v49 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:10.0];
    [v49 setActive:1];
  }

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  view7 = [v4 view];
  style7 = [(RemoteUIController *)self style];
  backgroundColor = [style7 backgroundColor];
  [view7 setBackgroundColor:backgroundColor];

  [(RemoteUIController *)self _showPartialScreenModal:v4];
}

- (void)_showPartialScreenModal:(id)modal
{
  modalCopy = modal;
  obj = [[RUINavigationController alloc] initWithRootViewController:modalCopy];

  hostViewController = [(RemoteUIController *)self hostViewController];
  [(RUINavigationController *)obj setHostViewController:hostViewController];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  LODWORD(modalCopy) = [currentDevice userInterfaceIdiom] != 1;

  [(RUINavigationController *)obj setRuiModalPresentationStyle:2 * modalCopy];
  [(RUINavigationController *)obj setModalPresentationStyle:4];
  [(RUINavigationController *)obj setTransitioningDelegate:self];
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    [(RUINavigationController *)obj setSupportedInterfaceOrientations:2];
  }

  style = [(RemoteUIController *)self style];
  [style applyToNavigationController:obj];

  objc_storeStrong(&self->_modalNavigationController, obj);
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom2 = [currentDevice3 userInterfaceIdiom];

  if (userInterfaceIdiom2 == 1)
  {
    [(RUINavigationController *)self->_modalNavigationController setModalInPresentation:1];
  }

  hostViewController2 = [(RemoteUIController *)self hostViewController];
  [hostViewController2 presentViewController:obj animated:1 completion:0];
}

- (void)loadRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  [(RemoteUIController *)self setLoadCompletion:completion];
  v7 = [requestCopy mutableCopy];

  [(RemoteUIController *)self loadRequest:v7];
}

- (void)_loadURL:(id)l postBody:(id)body fromObjectModel:(id)model completion:(id)completion
{
  modelCopy = model;
  bodyCopy = body;
  lCopy = l;
  [(RemoteUIController *)self setLoadCompletion:completion];
  [(RemoteUIController *)self _loadURL:lCopy fromObjectModel:modelCopy postBody:bodyCopy];
}

- (void)loadRequest:(id)request
{
  v17 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  [requestCopy setValue:self->_userAgentString forHTTPHeaderField:@"User-Agent"];
  v5 = [requestCopy valueForHTTPHeaderField:@"Content-Type"];
  v6 = [v5 length];

  if (!v6)
  {
    [requestCopy setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_hostViewController);
    traitCollection = [v8 traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (_isInternalInstall())
    {
      v11 = _RUILoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:userInterfaceStyle];
        v15 = 138412290;
        v16 = v12;
        _os_log_impl(&dword_21B93D000, v11, OS_LOG_TYPE_DEFAULT, "Setting interface style based on _hostViewController %@", &v15, 0xCu);
      }
    }

    loader = [(RemoteUIController *)self loader];
    [loader setUserInterfaceStyle:userInterfaceStyle];
  }

  loader2 = [(RemoteUIController *)self loader];
  [loader2 loadXMLUIWithRequest:requestCopy];
}

- (void)_loadURL:(id)l fromObjectModel:(id)model postBody:(id)body
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  modelCopy = model;
  bodyCopy = body;
  if (lCopy && (-[RemoteUIController loader](self, "loader"), v11 = objc_claimAutoreleasedReturnValue(), [v11 URL], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "absoluteURL"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lCopy, "absoluteURL"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqual:", v14), v14, v13, v12, v11, v15))
  {
    if (_isInternalInstall())
    {
      v16 = _RUILoggingFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = lCopy;
        _os_log_impl(&dword_21B93D000, v16, OS_LOG_TYPE_DEFAULT, "Already loading %@", &v20, 0xCu);
      }
    }
  }

  else
  {
    loader = [(RemoteUIController *)self loader];
    [loader cancel];

    v18 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:lCopy cachePolicy:1 timeoutInterval:30.0];
    v19 = v18;
    if (bodyCopy)
    {
      [v18 setHTTPBody:bodyCopy];
      [v19 setHTTPMethod:@"POST"];
    }

    [modelCopy _populateRequest:v19];
    [(RemoteUIController *)self loadRequest:v19];
  }
}

- (void)loadData:(id)data baseURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  lCopy = l;
  if (!lCopy || (-[RemoteUIController loader](self, "loader"), v8 = objc_claimAutoreleasedReturnValue(), [v8 URL], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "absoluteURL"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(lCopy, "absoluteURL"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, v9, v8, !v12))
  {
    loader = [(RemoteUIController *)self loader];
    [loader cancel];

    loader2 = [(RemoteUIController *)self loader];
    [loader2 loadXMLUIWithData:dataCopy baseURL:lCopy];
LABEL_7:

    goto LABEL_8;
  }

  if (_isInternalInstall())
  {
    loader2 = _RUILoggingFacility();
    if (os_log_type_enabled(loader2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = lCopy;
      _os_log_impl(&dword_21B93D000, loader2, OS_LOG_TYPE_DEFAULT, "Already loading %@", &v15, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_willPresentObjectModel:(id)model modally:(BOOL)modally
{
  modallyCopy = modally;
  modelCopy = model;
  if (self->_SMSAutoFillToken)
  {
    [(RemoteUIController *)self _objectModel:modelCopy receivedToken:?];
  }

  delegate = [(RemoteUIController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(RemoteUIController *)self delegate];
    [delegate2 remoteUIController:self willPresentObjectModel:modelCopy modally:modallyCopy];
  }
}

- (void)_didPresentObjectModel:(id)model modally:(BOOL)modally
{
  modallyCopy = modally;
  modelCopy = model;
  delegate = [(RemoteUIController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(RemoteUIController *)self delegate];
    [delegate2 remoteUIController:self didPresentObjectModel:modelCopy modally:modallyCopy];
  }
}

- (void)_didRemoveObjectModel:(id)model
{
  modelCopy = model;
  delegate = [(RemoteUIController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(RemoteUIController *)self delegate];
    [delegate2 remoteUIController:self didRemoveObjectModel:modelCopy];
  }
}

- (void)_removePreviousObjectModelsBackToIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = 24;
  if (!self->_modalNavigationController)
  {
    v5 = 16;
  }

  v6 = *(&self->super.isa + v5);
  if ([v6 count] >= 2)
  {
    modalNavigationController = self->_modalNavigationController;
    if (modalNavigationController)
    {
      navigationController = modalNavigationController;
    }

    else
    {
      navigationController = [(RemoteUIController *)self navigationController];
      if (!navigationController)
      {
        [RemoteUIController _removePreviousObjectModelsBackToIdentifier:];
        navigationController = 0;
      }
    }

    p_super = &navigationController->super.super.super.super;
    array = [MEMORY[0x277CBEB18] array];
    v11 = objc_opt_new();
    v12 = [v6 count];
    if (v12 - 2 < 0)
    {
      goto LABEL_25;
    }

    v13 = v12 - 1;
    while (1)
    {
      v14 = [v6 objectAtIndexedSubscript:--v13];
      displayedPages = [v14 displayedPages];
      [array addObjectsFromArray:displayedPages];

      [v11 addObject:v14];
      identifier = [v14 identifier];
      v17 = [identifier isEqualToString:identifierCopy];

      if (v17)
      {
        break;
      }

      if (v13 < 1)
      {
        goto LABEL_25;
      }
    }

    if ([v11 count])
    {
      v9 = p_super;
      [p_super settingsCompatibleReplaceViewControllers:array byViewControllers:MEMORY[0x277CBEBF8] animated:0];
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v18 = v11;
      v19 = [v18 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v26;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v26 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v25 + 1) + 8 * i);
            [v23 setDelegate:0];
            [v6 removeObject:v23];
            [(RemoteUIController *)self _didRemoveObjectModel:v23];
          }

          v20 = [v18 countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v20);
        v9 = p_super;
      }
    }

    else
    {
LABEL_25:
      v9 = p_super;
      if (!_isInternalInstall())
      {
LABEL_29:

LABEL_30:
        goto LABEL_31;
      }

      v18 = _RUILoggingFacility();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v18, OS_LOG_TYPE_DEFAULT, "No object models removed by idOfOldestObjectModelToRemoveAfterPush", buf, 2u);
      }
    }

    goto LABEL_29;
  }

  if (_isInternalInstall())
  {
    v9 = _RUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = [v6 count];
      _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Not enough object models on the stack to use idOfOldestObjectModelToRemoveAfterPush! Need >=2, have %lu", buf, 0xCu);
    }

    goto LABEL_30;
  }

LABEL_31:
}

- (void)pushObjectModel:(id)model animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v53 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  completionCopy = completion;
  v10 = 24;
  if (!self->_modalNavigationController)
  {
    v10 = 16;
  }

  v11 = *(&self->super.isa + v10);
  modalNavigationController = self->_modalNavigationController;
  if (modalNavigationController)
  {
    hostingController = modalNavigationController;
  }

  else
  {
    hostingController = [(RemoteUIController *)self hostingController];
    if (!hostingController)
    {
      [RemoteUIController pushObjectModel:animated:completion:];
    }
  }

  [modelCopy setDelegate:self];
  telemetryDelegate = [(RemoteUIController *)self telemetryDelegate];
  [modelCopy setTelemetryDelegate:telemetryDelegate];

  [(RemoteUIController *)self _willPresentObjectModel:modelCopy modally:self->_modalNavigationController != 0];
  identifierMarkingStackRemovalAfterPush = [modelCopy identifierMarkingStackRemovalAfterPush];

  v16 = &off_21BA91000;
  if (identifierMarkingStackRemovalAfterPush)
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __58__RemoteUIController_pushObjectModel_animated_completion___block_invoke;
    v49[3] = &unk_2782E89F0;
    v17 = modelCopy;
    v50 = v17;
    v18 = [v11 indexOfObjectPassingTest:v49];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (_isInternalInstall())
      {
        v19 = _RUILoggingFacility();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          identifierMarkingStackRemovalAfterPush2 = [v17 identifierMarkingStackRemovalAfterPush];
          *buf = 138412290;
          v52 = identifierMarkingStackRemovalAfterPush2;
          _os_log_impl(&dword_21B93D000, v19, OS_LOG_TYPE_DEFAULT, "idOfOldestObjectModelToRemoveAfterPush '%@' not found", buf, 0xCu);

          v16 = &off_21BA91000;
        }
      }

      identifierMarkingStackRemovalAfterPush = 0;
      goto LABEL_25;
    }

    v21 = v18;
    if (v18 >= 2)
    {
      v42 = animatedCopy;
      v22 = [v11 objectAtIndexedSubscript:v18 - 1];
      displayedPages = [v22 displayedPages];
      lastObject = [displayedPages lastObject];

      backButtonTitle = [lastObject backButtonTitle];
      if (backButtonTitle)
      {
        navTitle = backButtonTitle;

        goto LABEL_22;
      }

      navTitle = [lastObject navTitle];

      animatedCopy = v42;
      if (navTitle)
      {
        goto LABEL_22;
      }
    }

    v27 = [v11 objectAtIndexedSubscript:v21];
    displayedPages2 = [v27 displayedPages];
    navTitle = [displayedPages2 firstObject];

    viewControllers = [(RUINavigationController *)hostingController viewControllers];
    v30 = [viewControllers indexOfObject:navTitle];

    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }

    v31 = v30 - 1;
    if (!v31)
    {
      goto LABEL_23;
    }

    viewControllers2 = [(RUINavigationController *)hostingController viewControllers];
    [viewControllers2 objectAtIndexedSubscript:v31];
    v32 = v42 = animatedCopy;
    navigationItem = [v32 navigationItem];
    title = [navigationItem title];

    animatedCopy = v42;
    v16 = &off_21BA91000;
    if (!title)
    {
LABEL_24:
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__RemoteUIController_pushObjectModel_animated_completion___block_invoke_2;
      aBlock[3] = &unk_2782E84F8;
      aBlock[4] = self;
      v48 = v17;
      identifierMarkingStackRemovalAfterPush = _Block_copy(aBlock);

LABEL_25:
      goto LABEL_26;
    }

    navTitle = title;
LABEL_22:
    lastObject2 = [v11 lastObject];
    displayedPages3 = [lastObject2 displayedPages];
    lastObject3 = [displayedPages3 lastObject];

    [lastObject3 setBackButtonTitle:navTitle];
    animatedCopy = v42;
LABEL_23:

    v16 = &off_21BA91000;
    goto LABEL_24;
  }

LABEL_26:
  [v11 addObject:modelCopy];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = *(v16 + 441);
  v43[2] = __58__RemoteUIController_pushObjectModel_animated_completion___block_invoke_63;
  v43[3] = &unk_2782E8A18;
  v43[4] = self;
  v44 = modelCopy;
  v45 = identifierMarkingStackRemovalAfterPush;
  v46 = completionCopy;
  v38 = completionCopy;
  v39 = identifierMarkingStackRemovalAfterPush;
  v40 = modelCopy;
  [v40 presentInParentViewController:hostingController animated:animatedCopy completion:v43];
}

uint64_t __58__RemoteUIController_pushObjectModel_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifierMarkingStackRemovalAfterPush];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

void __58__RemoteUIController_pushObjectModel_animated_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) identifierMarkingStackRemovalAfterPush];
  [v1 _removePreviousObjectModelsBackToIdentifier:v2];
}

uint64_t __58__RemoteUIController_pushObjectModel_animated_completion___block_invoke_63(uint64_t a1)
{
  [*(a1 + 32) _didPresentObjectModel:*(a1 + 40) modally:*(*(a1 + 32) + 8) != 0];
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))();
  }

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (id)_objectModelStack
{
  v2 = 24;
  if (!self->_modalNavigationController)
  {
    v2 = 16;
  }

  return *(&self->super.isa + v2);
}

- (id)popObjectModelAnimated:(BOOL)animated stopListeningForHSATokens:(BOOL)tokens
{
  animatedCopy = animated;
  if (tokens)
  {
    [(RemoteUIController *)self _stopListeningForSMSAutoFill];
  }

  modalNavigationController = self->_modalNavigationController;
  if (modalNavigationController)
  {
    navigationController = modalNavigationController;
  }

  else
  {
    navigationController = [(RemoteUIController *)self navigationController];
    if (!navigationController)
    {
      [RemoteUIController popObjectModelAnimated:stopListeningForHSATokens:];
    }
  }

  _objectModelStack = [(RemoteUIController *)self _objectModelStack];
  v9 = [_objectModelStack count];

  if (v9)
  {
    _objectModelStack2 = [(RemoteUIController *)self _objectModelStack];
    lastObject = [_objectModelStack2 lastObject];

    displayedPages = [lastObject displayedPages];
    [displayedPages count];
    [(UINavigationController *)navigationController settingsCompatibleReplaceViewControllers:displayedPages byViewControllers:MEMORY[0x277CBEBF8] animated:animatedCopy];
    [lastObject setDelegate:0];
    _objectModelStack3 = [(RemoteUIController *)self _objectModelStack];
    [_objectModelStack3 removeLastObject];

    [(RemoteUIController *)self _didRemoveObjectModel:lastObject];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

- (void)_replaceObjectModelWithObjectModel:(id)model
{
  v40[2] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  defaultPages = [modelCopy defaultPages];
  firstObject = [defaultPages firstObject];
  v7 = [(RemoteUIController *)self _objectModelPageWantsHSATokens:firstObject];

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = 24;
  if (!self->_modalNavigationController)
  {
    v8 = 16;
  }

  v9 = *(&self->super.isa + v8);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__1;
  v34 = __Block_byref_object_dispose__1;
  v10 = v9;
  v35 = v10;
  idOfObjectModelToReplace = [modelCopy idOfObjectModelToReplace];
  v12 = [idOfObjectModelToReplace length] == 0;

  if (v12)
  {
    if (![v10 count])
    {
      goto LABEL_8;
    }

    v15 = [v10 count];
    v37[3] = v15 - 1;
    v16 = v31;
    v17 = v10;
    v14 = v16[5];
    v16[5] = v17;
  }

  else
  {
    objectModels = self->_objectModels;
    v40[0] = self->_modalObjectModels;
    v40[1] = objectModels;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __57__RemoteUIController__replaceObjectModelWithObjectModel___block_invoke;
    v26[3] = &unk_2782E8A68;
    v27 = modelCopy;
    v28 = &v30;
    v29 = &v36;
    [v14 enumerateObjectsUsingBlock:v26];
  }

LABEL_8:
  v18 = v37[3];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 addObject:modelCopy];
    v19 = 0;
  }

  else
  {
    if (!v7)
    {
      [(RemoteUIController *)self stopListeningForHSATokenAutoFill];
      v18 = v37[3];
    }

    v19 = [v31[5] objectAtIndexedSubscript:v18];
    [v31[5] replaceObjectAtIndex:v37[3] withObject:modelCopy];
  }

  [modelCopy setDelegate:self];
  [(RemoteUIController *)self _replacePagesOfObjectModel:v19 byObjectModel:modelCopy sourceArray:v31[5]];
  if (v19)
  {
    [(RemoteUIController *)self _didRemoveObjectModel:v19];
    [v19 setDelegate:0];
  }

  v20 = v31[5];
  modalObjectModels = self->_modalObjectModels;
  [(RemoteUIController *)self _willPresentObjectModel:modelCopy modally:v20 == modalObjectModels];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__RemoteUIController__replaceObjectModelWithObjectModel___block_invoke_3;
  v23[3] = &unk_2782E8A90;
  v23[4] = self;
  v22 = modelCopy;
  v24 = v22;
  v25 = v20 == modalObjectModels;
  [v22 presentWithBlock:v23];

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);
}

void __57__RemoteUIController__replaceObjectModelWithObjectModel___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__RemoteUIController__replaceObjectModelWithObjectModel___block_invoke_2;
  v8[3] = &unk_2782E8A40;
  v9 = *(a1 + 32);
  v10 = v6;
  v11 = *(a1 + 40);
  v12 = a4;
  v7 = v6;
  [v7 enumerateObjectsUsingBlock:v8];
}

void __57__RemoteUIController__replaceObjectModelWithObjectModel___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 identifier];
  v8 = [*(a1 + 32) idOfObjectModelToReplace];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
    v10 = *(a1 + 64);
    *(*(*(a1 + 56) + 8) + 24) = a3;
    *v10 = 1;
    *a4 = 1;
  }
}

- (void)_replacePagesOfObjectModel:(id)model byObjectModel:(id)objectModel sourceArray:(id)array
{
  modelCopy = model;
  objectModelCopy = objectModel;
  arrayCopy = array;
  modalNavigationController = self->_modalNavigationController;
  if (modalNavigationController)
  {
    navigationController = modalNavigationController;
  }

  else
  {
    navigationController = [(RemoteUIController *)self navigationController];
  }

  v12 = navigationController;
  if ([(NSMutableArray *)arrayCopy count])
  {
    if (self->_modalObjectModels == arrayCopy)
    {
      navigationController2 = self->_modalNavigationController;
    }

    else
    {
      navigationController2 = [(RemoteUIController *)self navigationController];
    }

    v14 = navigationController2;

    v12 = v14;
  }

  [(UINavigationController *)v12 replacePagesOfObjectModel:modelCopy byObjectModel:objectModelCopy];
}

- (id)dismissObjectModelsAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  if (self->_modalNavigationController && [(NSMutableArray *)self->_modalObjectModels count])
  {
    v7 = [(NSMutableArray *)self->_modalObjectModels copy];
    [(RUINavigationController *)self->_modalNavigationController dismissViewControllerAnimated:animatedCopy completion:completionCopy];
    [(RemoteUIController *)self _invalidateModalObjectModels];
  }

  else
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }

    v7 = 0;
  }

  return v7;
}

- (void)_invalidateModalObjectModels
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_modalNavigationController && [(NSMutableArray *)self->_modalObjectModels count])
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_modalObjectModels;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

          [*(*(&v9 + 1) + 8 * v7++) setDelegate:{0, v9}];
        }

        while (v5 != v7);
        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    modalNavigationController = self->_modalNavigationController;
    self->_modalNavigationController = 0;

    [(NSMutableArray *)self->_modalObjectModels removeAllObjects];
  }
}

- (void)_modalNavigationWasDismissed
{
  v23 = *MEMORY[0x277D85DE8];
  loader = [(RemoteUIController *)self loader];
  [loader cancel];

  if (self->_modalNavigationController)
  {
    v4 = [(NSMutableArray *)self->_modalObjectModels copy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    reverseObjectEnumerator = [(NSMutableArray *)self->_modalObjectModels reverseObjectEnumerator];
    v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          [v10 setDelegate:0];
          [(RemoteUIController *)self _didRemoveObjectModel:v10];
        }

        v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v7);
    }

    [(NSMutableArray *)self->_modalObjectModels removeAllObjects];
    modalNavigationController = self->_modalNavigationController;
    self->_modalNavigationController = 0;

    if (_isInternalInstall())
    {
      v12 = _RUILoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v4;
        _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "Modal navigation was dismissed with objectModels still present: %@", buf, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_delegate);
      [v15 remoteUIController:self didDismissModalNavigationWithObjectModels:v4];
    }
  }
}

- (void)_modalViewControllerWasPopped:(id)popped
{
  v11 = *MEMORY[0x277D85DE8];
  poppedCopy = popped;
  loader = [(RemoteUIController *)self loader];
  [loader cancel];

  if (_isInternalInstall())
  {
    v6 = _RUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      lastObject = [(NSMutableArray *)self->_modalObjectModels lastObject];
      v9 = 138412290;
      v10 = lastObject;
      _os_log_impl(&dword_21B93D000, v6, OS_LOG_TYPE_DEFAULT, "A page from modal object model was popped: %@", &v9, 0xCu);
    }
  }

  lastObject2 = [(NSMutableArray *)self->_modalObjectModels lastObject];
  [lastObject2 didNavigateBackFromViewController:poppedCopy];
}

- (NSArray)displayedPages
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_objectModels;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        displayedPages = [*(*(&v21 + 1) + 8 * i) displayedPages];
        [v3 addObjectsFromArray:displayedPages];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_modalObjectModels;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        displayedPages2 = [*(*(&v17 + 1) + 8 * j) displayedPages];
        [v3 addObjectsFromArray:displayedPages2];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  return v3;
}

- (void)_setHandlerWithKey:(id)key forElementsMatching:(id)matching handler:(id)handler
{
  v17[2] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  matchingCopy = matching;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    [RemoteUIController _setHandlerWithKey:forElementsMatching:handler:];
  }

  if (!self->_elementChangeHandlers)
  {
    v11 = objc_opt_new();
    elementChangeHandlers = self->_elementChangeHandlers;
    self->_elementChangeHandlers = v11;
  }

  v16[0] = @"ButtonHandler";
  v13 = [handlerCopy copy];
  v16[1] = @"ButtonComparison";
  v17[0] = v13;
  v14 = [matchingCopy copy];
  v17[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [(NSMutableDictionary *)self->_elementChangeHandlers setObject:v15 forKeyedSubscript:keyCopy];
}

- (void)setHandlerForElementName:(id)name handler:(id)handler
{
  nameCopy = name;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__RemoteUIController_setHandlerForElementName_handler___block_invoke;
  v8[3] = &unk_2782E7FF0;
  v9 = nameCopy;
  v7 = nameCopy;
  [(RemoteUIController *)self _setHandlerWithKey:v7 forElementsMatching:v8 handler:handler];
}

uint64_t __55__RemoteUIController_setHandlerForElementName_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)setHandlerForElementsMatching:(id)matching handler:(id)handler
{
  v6 = MEMORY[0x277CCAD78];
  handlerCopy = handler;
  matchingCopy = matching;
  uUID = [v6 UUID];
  uUIDString = [uUID UUIDString];

  [(RemoteUIController *)self _setHandlerWithKey:uUIDString forElementsMatching:matchingCopy handler:handlerCopy];

  return uUIDString;
}

- (void)setHandlerForButtonsMatching:(id)matching handler:(id)handler
{
  matchingCopy = matching;
  handlerCopy = handler;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__RemoteUIController_setHandlerForButtonsMatching_handler___block_invoke;
  v13[3] = &unk_2782E8AB8;
  v14 = matchingCopy;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__RemoteUIController_setHandlerForButtonsMatching_handler___block_invoke_2;
  v11[3] = &unk_2782E8AE0;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = matchingCopy;
  v10 = [(RemoteUIController *)self setHandlerForElementsMatching:v13 handler:v11];
}

uint64_t __59__RemoteUIController_setHandlerForButtonsMatching_handler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

void __59__RemoteUIController_setHandlerForButtonsMatching_handler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  v9 = [a3 name];
  (*(v6 + 16))(v6, v8, v9, v7);
}

- (void)setHandlerForButtonName:(id)name handler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__RemoteUIController_setHandlerForButtonName_handler___block_invoke;
  v8[3] = &unk_2782E8AE0;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(RemoteUIController *)self setHandlerForElementName:name handler:v8];
}

void __54__RemoteUIController_setHandlerForButtonName_handler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v8 = a2;
  v9 = [a3 name];
  (*(v6 + 16))(v6, v8, v9, v7);
}

- (RUILoader)loader
{
  loader = self->_loader;
  if (!loader)
  {
    v4 = objc_alloc_init(RUILoader);
    v5 = self->_loader;
    self->_loader = v4;

    [(RUIHTTPRequest *)self->_loader setDelegate:self];
    [(RUILoader *)self->_loader setParserDelegate:self];
    [(RUILoader *)self->_loader setStyle:self->_style];
    loader = self->_loader;
  }

  return loader;
}

- (void)loader:(id)loader didFinishLoadWithError:(id)error forRequest:(id)request
{
  loaderCopy = loader;
  errorCopy = error;
  requestCopy = request;
  if (errorCopy)
  {
    v11 = _RUILoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [RemoteUIController loader:didFinishLoadWithError:forRequest:];
    }
  }

  _objectModelStack = [(RemoteUIController *)self _objectModelStack];
  lastObject = [_objectModelStack lastObject];
  [lastObject stopActivityIndicator];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(lastObject) = objc_opt_respondsToSelector();

  v15 = objc_loadWeakRetained(&self->_delegate);
  v16 = v15;
  if (lastObject)
  {
    [v15 remoteUIController:self didFinishLoadWithError:errorCopy forRequest:requestCopy];
  }

  else
  {
    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      goto LABEL_10;
    }

    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 remoteUIController:self didFinishLoadWithError:errorCopy];
  }

LABEL_10:
  v18 = objc_loadWeakRetained(&self->_telemetryDelegate);
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = objc_loadWeakRetained(&self->_telemetryDelegate);
    v21 = [RUITelemetryElement alloc];
    v22 = [[RUIXMLElement alloc] initWithName:&stru_282D68F58];
    v23 = [requestCopy URL];
    v24 = [(RUITelemetryElement *)v21 initWithXMLElement:v22 url:v23];
    [v20 didLoadURL:v24 error:errorCopy];
  }

  loadCompletion = [(RemoteUIController *)self loadCompletion];

  if (loadCompletion)
  {
    loadCompletion2 = [(RemoteUIController *)self loadCompletion];
    (loadCompletion2)[2](loadCompletion2, errorCopy == 0, errorCopy);
  }

  loadCompletion = self->_loadCompletion;
  self->_loadCompletion = 0;
}

- (void)loader:(id)loader didReceiveHTTPResponse:(id)response forRequest:(id)request
{
  responseCopy = response;
  requestCopy = request;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  v10 = objc_loadWeakRetained(&self->_delegate);
  v11 = v10;
  if (v9)
  {
    [v10 remoteUIController:self didReceiveHTTPResponse:responseCopy forRequest:requestCopy];
  }

  else
  {
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_6;
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 remoteUIController:self didReceiveHTTPResponse:responseCopy];
  }

LABEL_6:
}

- (void)loader:(id)loader didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 remoteUIController:self didReceiveChallenge:challengeCopy completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (void)loader:(id)loader loadResourcesForObjectModel:(id)model completion:(id)completion
{
  modelCopy = model;
  completionCopy = completion;
  delegate = [(RemoteUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate remoteUIController:self loadResourcesForObjectModel:modelCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (id)_handleDismissAndReplaceWithActionSignal:(id)signal objectModel:(id)model
{
  modelCopy = model;
  defaultPages = [modelCopy defaultPages];
  v8 = [defaultPages count];

  if (!v8)
  {
    v13 = &__block_literal_global_112;
    goto LABEL_9;
  }

  v9 = [(NSMutableArray *)self->_objectModels count];
  hostingController = [(RemoteUIController *)self hostingController];

  if (!hostingController)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"RemoteUIController.m" lineNumber:731 description:{@"%s: dismiss+replace requires a hosting controller", "-[RemoteUIController _handleDismissAndReplaceWithActionSignal:objectModel:]"}];

    if (v9)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v12 = __75__RemoteUIController__handleDismissAndReplaceWithActionSignal_objectModel___block_invoke_2;
    goto LABEL_8;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_4:
  v11 = v18;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v12 = __75__RemoteUIController__handleDismissAndReplaceWithActionSignal_objectModel___block_invoke;
LABEL_8:
  v11[2] = v12;
  v11[3] = &unk_2782E84F8;
  v11[4] = self;
  v11[5] = modelCopy;
  v13 = _Block_copy(v11);

LABEL_9:
  v15 = _Block_copy(v13);

  return v15;
}

void __75__RemoteUIController__handleDismissAndReplaceWithActionSignal_objectModel___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _willPresentObjectModel:*(a1 + 40) modally:0];
  [*(a1 + 40) setDelegate:*(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) telemetryDelegate];
  [v2 setTelemetryDelegate:v3];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) hostingController];
  v6 = [*(a1 + 32) _shouldAnimate];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __75__RemoteUIController__handleDismissAndReplaceWithActionSignal_objectModel___block_invoke_3;
  v11 = &unk_2782E84F8;
  v7 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v7;
  [v4 presentInParentViewController:v5 animated:v6 completion:&v8];

  [*(*(a1 + 32) + 16) addObject:{*(a1 + 40), v8, v9, v10, v11, v12}];
}

- (id)_handleDismissWithActionSignal:(id)signal objectModel:(id)model
{
  v22 = *MEMORY[0x277D85DE8];
  signalCopy = signal;
  modelCopy = model;
  subActions = [signalCopy subActions];
  firstObject = [subActions firstObject];

  v10 = [RUIActionSignal signalWithString:firstObject];
  subActions2 = [signalCopy subActions];
  [v10 setSubActions:subActions2];

  if (v10)
  {
    subActions3 = [v10 subActions];
    [subActions3 removeObjectAtIndex:0];

    if (_isInternalInstall())
    {
      v13 = _RUILoggingFacility();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v10;
        _os_log_impl(&dword_21B93D000, v13, OS_LOG_TYPE_DEFAULT, "dismiss sub-action: %@", buf, 0xCu);
      }
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__RemoteUIController__handleDismissWithActionSignal_objectModel___block_invoke;
    aBlock[3] = &unk_2782E8B08;
    aBlock[4] = self;
    v18 = modelCopy;
    v19 = v10;
    v14 = _Block_copy(aBlock);
    v15 = _Block_copy(v14);
  }

  else
  {
    v15 = [(RemoteUIController *)self _handleDismissAndReplaceWithActionSignal:signalCopy objectModel:modelCopy];
  }

  return v15;
}

- (void)loader:(id)loader receivedObjectModel:(id)model topActionSignal:(id)signal completion:(id)completion
{
  v154 = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  modelCopy = model;
  signalCopy = signal;
  if (completion)
  {
    completionCopy = completion;
  }

  else
  {
    completionCopy = &__block_literal_global_115;
  }

  v14 = _Block_copy(completionCopy);
  [modelCopy setDelegate:self];
  telemetryDelegate = [(RemoteUIController *)self telemetryDelegate];
  [modelCopy setTelemetryDelegate:telemetryDelegate];

  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  if (!WeakRetained)
  {
    if (_isInternalInstall())
    {
      v22 = _RUILoggingFacility();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = signalCopy;
        _os_log_impl(&dword_21B93D000, v22, OS_LOG_TYPE_DEFAULT, "Warning: Received action signal %@ with no host controller", buf, 0xCu);
      }
    }

    goto LABEL_11;
  }

  pageOriginatingLoad = self->_pageOriginatingLoad;
  if (!pageOriginatingLoad)
  {
LABEL_18:
    self->_pageOriginatingLoad = 0;

    if (_isInternalInstall())
    {
      v23 = _RUILoggingFacility();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        uUID = [(RemoteUIController *)self UUID];
        uUIDString = [uUID UUIDString];
        *buf = 138412546;
        *&buf[4] = signalCopy;
        v152 = 2112;
        v153 = uUIDString;
        _os_log_impl(&dword_21B93D000, v23, OS_LOG_TYPE_DEFAULT, "Incoming action signal: %@ on RemoteUIController %@", buf, 0x16u);
      }
    }

    if (self->_modalNavigationController)
    {
      [signalCopy topSignal];
    }

    else
    {
      v26 = objc_loadWeakRetained(&self->_hostViewController);
      v27 = [v26 conformsToProtocol:&unk_282DAE228];

      if (!(([signalCopy topSignal] != 2) | v27 & 1))
      {
        if (_isInternalInstall())
        {
          v28 = _RUILoggingFacility();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_21B93D000, v28, OS_LOG_TYPE_INFO, "Coercing 'push' into 'showModal' for non-nav host controller", buf, 2u);
          }
        }

        [signalCopy setTopSignal:5];
      }
    }

    v29 = objc_loadWeakRetained(&self->_delegate);
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      *buf = [signalCopy topSignal];
      v31 = objc_loadWeakRetained(&self->_delegate);
      [v31 remoteUIController:self didReceiveObjectModel:modelCopy actionSignal:buf];

      if (*buf)
      {
        topSignal = [signalCopy topSignal];
        if (topSignal != *buf)
        {
          if (_isInternalInstall())
          {
            v33 = _RUILoggingFacility();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *v149 = 67109120;
              v150 = *buf;
              _os_log_impl(&dword_21B93D000, v33, OS_LOG_TYPE_DEFAULT, "Signal override provided: (%d)", v149, 8u);
            }
          }

          [signalCopy setTopSignal:*buf];
        }
      }
    }

    if ([signalCopy topSignal] == 2 || objc_msgSend(signalCopy, "topSignal") == 5)
    {
      defaultPages = [modelCopy defaultPages];
      v35 = [defaultPages count] == 0;

      if (v35)
      {
        if (_isInternalInstall())
        {
          v36 = _RUILoggingFacility();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B93D000, v36, OS_LOG_TYPE_DEFAULT, "Warning: received an object model with actionSignal push or showModal but no pages.", buf, 2u);
          }
        }

        primaryAlert = [modelCopy primaryAlert];
        v38 = primaryAlert == 0;

        if (v38)
        {
          v14[2](v14);
          goto LABEL_74;
        }

        if (_isInternalInstall())
        {
          v39 = _RUILoggingFacility();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21B93D000, v39, OS_LOG_TYPE_DEFAULT, "Changing action signal back to Alert (was it overridden mistakenly?)", buf, 2u);
          }
        }

        [signalCopy setTopSignal:7];
      }
    }

    modalNavigationController = self->_modalNavigationController;
    if (modalNavigationController)
    {
      topViewController = [(RUINavigationController *)modalNavigationController topViewController];
    }

    else
    {
      navigationController = [(RemoteUIController *)self navigationController];
      topViewController = [navigationController topViewController];
    }

    loadingViewController = self->_loadingViewController;
    if ([signalCopy topSignal] == 2 && loadingViewController != 0 && topViewController == loadingViewController)
    {
      [signalCopy setTopSignal:3];
    }

    if ([signalCopy topSignal] == 2)
    {
      v44 = self->_modalNavigationController;
      if (v44)
      {
        hostingController = v44;
      }

      else
      {
        hostingController = [(RemoteUIController *)self hostingController];
        if (!hostingController)
        {
          hostingController = _RUILoggingFacility();
          if (os_log_type_enabled(hostingController, OS_LOG_TYPE_ERROR))
          {
            [RemoteUIController loader:receivedObjectModel:topActionSignal:completion:];
          }

          goto LABEL_72;
        }
      }

      [(RemoteUIController *)self pushObjectModel:modelCopy animated:[(RemoteUIController *)self _shouldAnimate] completion:v14];
LABEL_72:

LABEL_73:
      objc_initWeak(buf, self);
      v122[0] = MEMORY[0x277D85DD0];
      v122[1] = 3221225472;
      v122[2] = __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_152;
      v122[3] = &unk_2782E8B80;
      objc_copyWeak(&v123, buf);
      [(RUINavigationController *)self->_modalNavigationController setViewDidDisappearHandler:v122];
      objc_destroyWeak(&v123);
      objc_destroyWeak(buf);

      goto LABEL_74;
    }

    if ([signalCopy topSignal] == 1)
    {
      loader = [(RemoteUIController *)self loader];
      [loader cancel];

      [(RUINavigationController *)self->_modalNavigationController setIsDismissing:1];
      subActions = [signalCopy subActions];
      firstObject = [subActions firstObject];
      v49 = [firstObject isEqualToString:@"refresh"];

      v50 = self->_modalNavigationController;
      if ((v50 != 0) | v49 & 1)
      {
        if (v49)
        {
          if (v50)
          {
            _shouldAnimate = [(RemoteUIController *)self _shouldAnimate];
            v143[0] = MEMORY[0x277D85DD0];
            v143[1] = 3221225472;
            v143[2] = __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_143;
            v143[3] = &unk_2782E8610;
            v143[4] = self;
            v144 = modelCopy;
            v145 = v14;
            [(RUINavigationController *)v50 dismissViewControllerAnimated:_shouldAnimate completion:v143];
            v52 = self->_modalNavigationController;
            self->_modalNavigationController = 0;
          }

          else
          {
            [(RemoteUIController *)self refreshTopModelWithModel:modelCopy];
          }

          v14[2](v14);
        }

        else
        {
          v63 = [(RemoteUIController *)self _handleDismissWithActionSignal:signalCopy objectModel:modelCopy];
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_2;
          aBlock[3] = &unk_2782E8B30;
          aBlock[4] = self;
          v64 = v63;
          v141 = v64;
          v142 = v14;
          v65 = _Block_copy(aBlock);
          v66 = self->_modalNavigationController;
          _shouldAnimate2 = [(RemoteUIController *)self _shouldAnimate];
          if ([(RemoteUIController *)self _shouldAnimate])
          {
            v68 = v65;
          }

          else
          {
            v68 = 0;
          }

          [(RUINavigationController *)v66 dismissViewControllerAnimated:_shouldAnimate2 completion:v68];
          if (![(RemoteUIController *)self _shouldAnimate])
          {
            v65[2](v65);
          }
        }
      }

      else
      {
        delegate = [(RemoteUIController *)self delegate];
        v61 = objc_opt_respondsToSelector();

        if (v61)
        {
          delegate2 = [(RemoteUIController *)self delegate];
          [delegate2 remoteUIControllerDidDismiss:self];

          v14[2](v14);
        }
      }

      goto LABEL_73;
    }

    if ([signalCopy topSignal] == 4)
    {
      defaultPages2 = [modelCopy defaultPages];
      v54 = [defaultPages2 count] == 0;

      if (v54)
      {
        v69 = [(RemoteUIController *)self popObjectModelAnimated:[(RemoteUIController *)self _shouldAnimate]];
        goto LABEL_73;
      }

      v55 = 24;
      if (!self->_modalNavigationController)
      {
        v55 = 16;
      }

      v120 = *(&self->super.isa + v55);
      v56 = self->_modalNavigationController;
      if (v56)
      {
        navigationController2 = v56;
      }

      else
      {
        navigationController2 = [(RemoteUIController *)self navigationController];
        if (!navigationController2)
        {
          v91 = _RUILoggingFacility();
          p_super = v91;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            [RemoteUIController loader:receivedObjectModel:topActionSignal:completion:];
            p_super = v91;
          }

          goto LABEL_124;
        }
      }

      v119 = navigationController2;
      if ([v120 count] > 1)
      {
        topViewController2 = [(RUINavigationController *)v119 topViewController];
        lastObject = [v120 lastObject];
        [lastObject setDelegate:0];
        [v120 removeLastObject];
        [(RemoteUIController *)self _didRemoveObjectModel:lastObject];
        lastObject2 = [v120 lastObject];
        [lastObject2 setDelegate:0];
        [v120 removeLastObject];
        [(RemoteUIController *)self _didRemoveObjectModel:lastObject2];
        [(RemoteUIController *)self _willPresentObjectModel:modelCopy modally:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          displayedPages = [lastObject2 displayedPages];
          displayedPages2 = [lastObject displayedPages];
          v75 = [displayedPages arrayByAddingObjectsFromArray:displayedPages2];

          _firstPageForPresentation = [modelCopy _firstPageForPresentation];
          v148[0] = _firstPageForPresentation;
          v148[1] = topViewController2;
          v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:2];

          [(UINavigationController *)v119 settingsCompatibleReplaceViewControllers:v75 byViewControllers:v77 animated:0];
        }

        else
        {
          viewControllers = [(RUINavigationController *)v119 viewControllers];
          v75 = [viewControllers mutableCopy];

          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          displayedPages3 = [lastObject displayedPages];
          reverseObjectEnumerator = [displayedPages3 reverseObjectEnumerator];

          v81 = [reverseObjectEnumerator countByEnumeratingWithState:&v136 objects:v147 count:16];
          if (v81)
          {
            v82 = *v137;
            while (1)
            {
              if (*v137 != v82)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              [v75 removeLastObject];
              if (!--v81)
              {
                v81 = [reverseObjectEnumerator countByEnumeratingWithState:&v136 objects:v147 count:16];
                if (!v81)
                {
                  break;
                }
              }
            }
          }

          v134 = 0u;
          v135 = 0u;
          v132 = 0u;
          v133 = 0u;
          displayedPages4 = [lastObject2 displayedPages];
          reverseObjectEnumerator2 = [displayedPages4 reverseObjectEnumerator];

          v85 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v132 objects:v146 count:16];
          if (v85)
          {
            v86 = *v133;
            while (1)
            {
              if (*v133 != v86)
              {
                objc_enumerationMutation(reverseObjectEnumerator2);
              }

              [v75 removeLastObject];
              if (!--v85)
              {
                v85 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v132 objects:v146 count:16];
                if (!v85)
                {
                  break;
                }
              }
            }
          }

          _firstPageForPresentation2 = [modelCopy _firstPageForPresentation];
          [v75 addObject:_firstPageForPresentation2];

          [v75 addObject:topViewController2];
          [(RUINavigationController *)v119 setViewControllers:v75 animated:0];
        }

        [v120 addObject:modelCopy];
        [modelCopy setDelegate:self];
        telemetryDelegate2 = [(RemoteUIController *)self telemetryDelegate];
        [modelCopy setTelemetryDelegate:telemetryDelegate2];

        [(UINavigationController *)v119 settingsCompatiblePopViewController];
        [(RemoteUIController *)self _didPresentObjectModel:modelCopy modally:0];
        v14[2](v14);
      }

      else
      {
        v72 = _RUILoggingFacility();
        if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
        {
          [RemoteUIController loader:receivedObjectModel:topActionSignal:completion:];
        }
      }

      p_super = &v119->super.super.super.super;
LABEL_124:

      goto LABEL_73;
    }

    if ([signalCopy topSignal] != 3)
    {
      if ([signalCopy topSignal] == 8)
      {
        [(RemoteUIController *)self refreshTopModelWithModel:modelCopy];
        v14[2](v14);
      }

      else if ([signalCopy topSignal] == 5 || objc_msgSend(signalCopy, "topSignal") == 6 || objc_msgSend(signalCopy, "topSignal") == 9)
      {
        [(RemoteUIController *)self _willPresentObjectModel:modelCopy modally:1];
        topSignal2 = [signalCopy topSignal];
        if (topSignal2 == 9)
        {
          v118 = 0;
          v71 = 2;
        }

        else
        {
          v71 = [signalCopy topSignal] == 6;
          v118 = v71;
        }

        v121 = self->_modalNavigationController;
        v90 = self->_modalNavigationController;
        if (v90 && [(RUINavigationController *)v90 ruiModalPresentationStyle]!= v71)
        {
          [(RUINavigationController *)self->_modalNavigationController setViewDidDisappearHandler:0];
          [(RemoteUIController *)self _invalidateModalObjectModels];
          v117 = 1;
        }

        else
        {
          v117 = 0;
        }

        [(NSMutableArray *)self->_modalObjectModels addObject:modelCopy];
        if (self->_modalNavigationController)
        {
          v129[0] = MEMORY[0x277D85DD0];
          v129[1] = 3221225472;
          v129[2] = __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_145;
          v129[3] = &unk_2782E8610;
          v129[4] = self;
          v93 = modelCopy;
          v130 = v93;
          v131 = v14;
          v94 = _Block_copy(v129);
          [v93 presentInParentViewController:self->_modalNavigationController animated:-[RemoteUIController _shouldAnimate](self completion:{"_shouldAnimate"), v94}];
        }

        else
        {
          newNavigationControllerForPresentation = [modelCopy newNavigationControllerForPresentation];
          v96 = self->_modalNavigationController;
          self->_modalNavigationController = newNavigationControllerForPresentation;

          [(RUINavigationController *)self->_modalNavigationController setRuiModalPresentationStyle:v71];
          if (objc_opt_respondsToSelector())
          {
            v97 = objc_loadWeakRetained(&self->_hostViewController);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              navigationController3 = [v97 navigationController];
              v99 = navigationController3;
              if (navigationController3)
              {
                v100 = navigationController3;
              }

              else
              {
                v100 = v97;
              }

              v101 = v100;

              v97 = v101;
            }

            -[RUINavigationController setSupportedInterfaceOrientations:](self->_modalNavigationController, "setSupportedInterfaceOrientations:", [v97 supportedInterfaceOrientations]);
          }

          objc_initWeak(buf, self);
          v102 = self->_modalNavigationController;
          v127[0] = MEMORY[0x277D85DD0];
          v127[1] = 3221225472;
          v127[2] = __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_2_148;
          v127[3] = &unk_2782E8B58;
          objc_copyWeak(&v128, buf);
          [(RUINavigationController *)v102 setMenuDismissalHandler:v127];
          v103 = v118 ^ 1;
          if (topSignal2 == 9)
          {
            v103 = 0;
          }

          if (v103)
          {
            currentDevice = [MEMORY[0x277D75418] currentDevice];
            v105 = [currentDevice userInterfaceIdiom] == 1;

            if (v105)
            {
              v106 = 2;
            }

            else
            {
              v106 = -2;
            }

            [(RUINavigationController *)self->_modalNavigationController setModalPresentationStyle:v106];
            [(RUINavigationController *)self->_modalNavigationController setModalInPresentation:1];
          }

          else
          {
            [(RUINavigationController *)self->_modalNavigationController setModalPresentationStyle:4];
            [(RUINavigationController *)self->_modalNavigationController setTransitioningDelegate:self];
          }

          delegate3 = [(RemoteUIController *)self delegate];
          v108 = objc_opt_respondsToSelector();

          if (v108)
          {
            delegate4 = [(RemoteUIController *)self delegate];
            [delegate4 remoteUIController:self willPresentModalNavigationController:self->_modalNavigationController];
          }

          v124[0] = MEMORY[0x277D85DD0];
          v124[1] = 3221225472;
          v124[2] = __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_3;
          v124[3] = &unk_2782E8610;
          v124[4] = self;
          v125 = modelCopy;
          v126 = v14;
          v110 = _Block_copy(v124);
          v111 = self->_modalNavigationController;
          if (v117)
          {
            [(RemoteUIController *)self _replaceModalRUIController:v121 byController:v111 completion:v110];
          }

          else
          {
            [(RemoteUIController *)self _presentModalRUIController:v111 completion:v110];
          }

          objc_destroyWeak(&v128);
          objc_destroyWeak(buf);
        }
      }

      else if ([signalCopy topSignal] == 7)
      {
        [modelCopy setDelegate:self];
        telemetryDelegate3 = [(RemoteUIController *)self telemetryDelegate];
        [modelCopy setTelemetryDelegate:telemetryDelegate3];

        v14[2](v14);
      }

      else
      {
        v113 = _RUILoggingFacility();
        if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
        {
          [RemoteUIController loader:receivedObjectModel:topActionSignal:completion:];
        }

        v14[2](v14);
      }

      goto LABEL_73;
    }

    v58 = self->_modalNavigationController;
    if (v58)
    {
      hostingController2 = v58;
    }

    else
    {
      hostingController2 = [(RemoteUIController *)self hostingController];
      if (!hostingController2)
      {
        v92 = _RUILoggingFacility();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          [RemoteUIController loader:receivedObjectModel:topActionSignal:completion:];
        }

        hostingController2 = 0;
        goto LABEL_106;
      }
    }

    [(RemoteUIController *)self _replaceObjectModelWithObjectModel:modelCopy];
LABEL_106:
    v14[2](v14);

    goto LABEL_73;
  }

  lastObject3 = [(NSMutableArray *)self->_objectModels lastObject];
  visiblePage = [lastObject3 visiblePage];
  v20 = self->_pageOriginatingLoad;

  if (visiblePage == v20)
  {
    pageOriginatingLoad = self->_pageOriginatingLoad;
    goto LABEL_18;
  }

  if (_isInternalInstall())
  {
    v21 = _RUILoggingFacility();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, v21, OS_LOG_TYPE_DEFAULT, "Finished loading object model for page no longer being displayed. Ignoring.", buf, 2u);
    }
  }

LABEL_11:
  v14[2](v14);
LABEL_74:
}

uint64_t __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_143(uint64_t a1)
{
  [*(a1 + 32) refreshTopModelWithModel:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _modalNavigationWasDismissed];
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_145(uint64_t a1)
{
  [*(a1 + 32) _didPresentObjectModel:*(a1 + 40) modally:1];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_2_148(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && v4 && WeakRetained[3])
  {
    [WeakRetained _modalViewControllerWasPopped:v4];
  }
}

uint64_t __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _didPresentObjectModel:*(a1 + 40) modally:1];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_152(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v6 parentViewController];
  if (v4 || ([v6 navigationController], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v5 = [v6 presentingViewController];

    if (!v5)
    {
      [WeakRetained _modalNavigationWasDismissed];
    }
  }
}

- (void)_replaceModalRUIController:(id)controller byController:(id)byController completion:(id)completion
{
  byControllerCopy = byController;
  completionCopy = completion;
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [byControllerCopy setHostViewController:WeakRetained];

  v11 = objc_loadWeakRetained(&self->_hostViewController);
  v12 = [v11 conformsToProtocol:&unk_282DBDDE8];

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_hostViewController);
    [v13 replaceModalRUIController:controllerCopy byController:byControllerCopy completion:completionCopy];

    completionCopy = v13;
  }

  else
  {
    [controllerCopy dismissViewControllerAnimated:-[RemoteUIController _shouldAnimate](self completion:{"_shouldAnimate"), 0}];

    [(RemoteUIController *)self _presentModalRUIController:self->_modalNavigationController completion:completionCopy];
  }
}

- (void)_presentModalRUIController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [controllerCopy setHostViewController:WeakRetained];

  v8 = objc_loadWeakRetained(&self->_hostViewController);
  v9 = [v8 conformsToProtocol:&unk_282DBDDE8];

  v10 = objc_loadWeakRetained(&self->_hostViewController);
  v11 = v10;
  if (v9)
  {
    [v10 presentModalRUIController:controllerCopy completion:completionCopy];
  }

  else
  {
    [v10 presentViewController:controllerCopy animated:-[RemoteUIController _shouldAnimate](self completion:{"_shouldAnimate"), completionCopy}];
  }
}

- (void)refreshTopModelWithModel:(id)model
{
  v20 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  _objectModelStack = [(RemoteUIController *)self _objectModelStack];
  lastObject = [_objectModelStack lastObject];

  identifier = [modelCopy identifier];
  identifier2 = [lastObject identifier];
  v9 = [identifier isEqualToString:identifier2];

  if (v9)
  {
    [lastObject refreshWithObjectModel:modelCopy];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 remoteUIController:self didRefreshObjectModel:lastObject];
    }
  }

  else if (_isInternalInstall())
  {
    v13 = _RUILoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [modelCopy identifier];
      identifier4 = [lastObject identifier];
      v16 = 138412546;
      v17 = identifier3;
      v18 = 2112;
      v19 = identifier4;
      _os_log_impl(&dword_21B93D000, v13, OS_LOG_TYPE_DEFAULT, "Refresh action detected, but identifiers did not match; New: <%@> Old: <%@>", &v16, 0x16u);
    }
  }
}

- (void)loader:(id)loader willLoadRequest:(id)request redirectResponse:(id)response completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  responseCopy = response;
  handlerCopy = handler;
  _objectModelStack = [(RemoteUIController *)self _objectModelStack];
  lastObject = [_objectModelStack lastObject];

  [lastObject startActivityIndicator];
  if (!handlerCopy)
  {
    [RemoteUIController loader:willLoadRequest:redirectResponse:completionHandler:];
  }

  if (_isInternalInstall())
  {
    v14 = _RUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [requestCopy URL];
      *buf = 138412290;
      v31 = v15;
      _os_log_impl(&dword_21B93D000, v14, OS_LOG_TYPE_DEFAULT, "RUIController sending delegate redirect call for URL %@", buf, 0xCu);
    }
  }

  v16 = [requestCopy mutableCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v18 = objc_opt_respondsToSelector();

  v19 = objc_loadWeakRetained(&self->_delegate);
  if ((v18 & 1) == 0)
  {
    v20 = objc_opt_respondsToSelector();

    v21 = objc_loadWeakRetained(&self->_delegate);
    v22 = v21;
    if (v20)
    {
      v23 = [v21 remoteUIController:self shouldLoadRequest:v16 redirectResponse:responseCopy];

      if (!v23)
      {
        [lastObject stopActivityIndicator];
        (*(handlerCopy + 2))(handlerCopy, 0, 0);
        goto LABEL_15;
      }
    }

    else
    {
      v24 = objc_opt_respondsToSelector();

      if (v24)
      {
        v25 = objc_loadWeakRetained(&self->_delegate);
        [v25 remoteUIController:self willLoadRequest:v16];
      }
    }

    (*(handlerCopy + 2))(handlerCopy, v16, 0);
    goto LABEL_15;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __80__RemoteUIController_loader_willLoadRequest_redirectResponse_completionHandler___block_invoke;
  v26[3] = &unk_2782E8570;
  v29 = handlerCopy;
  v27 = v16;
  v28 = lastObject;
  [v19 remoteUIController:self shouldLoadRequest:v27 redirectResponse:responseCopy withCompletionHandler:v26];

LABEL_15:
}

void __80__RemoteUIController_loader_willLoadRequest_redirectResponse_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    [*(a1 + 40) stopActivityIndicator];
  }

  (*(*(a1 + 48) + 16))();
}

- (id)parser:(id)parser createPageWithName:(id)name attributes:(id)attributes
{
  nameCopy = name;
  attributesCopy = attributes;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = [v11 remoteUIController:self createPageWithName:nameCopy attributes:attributesCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)parentViewControllerForObjectModel:(id)model
{
  modelCopy = model;
  if ([(NSMutableArray *)self->_objectModels containsObject:modelCopy])
  {
    navigationController = [(RemoteUIController *)self navigationController];
LABEL_5:
    v6 = navigationController;
    goto LABEL_7;
  }

  if ([(NSMutableArray *)self->_modalObjectModels containsObject:modelCopy])
  {
    navigationController = self->_modalNavigationController;
    goto LABEL_5;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)viewControllerForAlertPresentation
{
  modalNavigationController = self->_modalNavigationController;
  if (modalNavigationController)
  {
    WeakRetained = modalNavigationController;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  }

  return WeakRetained;
}

- (id)visibleElementWithIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = self->_objectModels;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        visiblePage = [*(*(&v22 + 1) + 8 * v9) visiblePage];
        v11 = [visiblePage subElementWithID:identifierCopy];

        if (v11)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v5 = self->_modalObjectModels;
      v12 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
LABEL_12:
        v15 = 0;
        while (1)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v5);
          }

          visiblePage2 = [*(*(&v18 + 1) + 8 * v15) visiblePage];
          v11 = [visiblePage2 subElementWithID:identifierCopy];

          if (v11)
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
            if (v13)
            {
              goto LABEL_12;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)objectModel:(id)model didNavigateBackFromController:(id)controller withGesture:(BOOL)gesture
{
  v22 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (_isInternalInstall())
  {
    v9 = _RUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = controllerCopy;
      _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Object model navigated back from %@", &v20, 0xCu);
    }
  }

  v10 = 24;
  if (!self->_modalNavigationController)
  {
    v10 = 16;
  }

  v11 = *(&self->super.isa + v10);
  loader = [(RemoteUIController *)self loader];
  [loader cancel];

  lastObject = [v11 lastObject];
  displayedPages = [lastObject displayedPages];
  v15 = [displayedPages count];
  if (v15 == 1)
  {
    displayedPages2 = [lastObject displayedPages];
    lastObject2 = [displayedPages2 lastObject];
    v6 = lastObject2;
    if (lastObject2 == controllerCopy)
    {

LABEL_14:
      if (_isInternalInstall())
      {
        v19 = _RUILoggingFacility();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412290;
          v21 = lastObject;
          _os_log_impl(&dword_21B93D000, v19, OS_LOG_TYPE_DEFAULT, "Object model has no more pages, popping: %@", &v20, 0xCu);
        }
      }

      [v11 removeLastObject];
      [(RemoteUIController *)self _didRemoveObjectModel:lastObject];
      goto LABEL_19;
    }
  }

  displayedPages3 = [lastObject displayedPages];
  v18 = [displayedPages3 count];

  if (v15 == 1)
  {
  }

  if (!v18)
  {
    goto LABEL_14;
  }

LABEL_19:
}

- (void)objectModel:(id)model elementDidChange:(id)change
{
  v39 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  changeCopy = change;
  loader = [(RemoteUIController *)self loader];
  [loader cancel];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = self->_objectModels;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    do
    {
      v13 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * v13);
        v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v14 populatePostbackDictionary:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v11);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = self->_modalObjectModels;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      v20 = 0;
      do
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v29 + 1) + 8 * v20);
        v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v21 populatePostbackDictionary:v22];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v18);
  }

  elementChangeHandlers = self->_elementChangeHandlers;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __51__RemoteUIController_objectModel_elementDidChange___block_invoke;
  v26[3] = &unk_2782E8BA8;
  v27 = changeCopy;
  v28 = modelCopy;
  v24 = modelCopy;
  v25 = changeCopy;
  [(NSMutableDictionary *)elementChangeHandlers enumerateKeysAndObjectsUsingBlock:v26];
}

void __51__RemoteUIController_objectModel_elementDidChange___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"ButtonComparison"];
  v6 = v5;
  if (v5 && (*(v5 + 16))(v5, *(a1 + 32)))
  {
    v7 = [v4 objectForKey:@"ButtonHandler"];
    if (v7)
    {
      if (_isInternalInstall())
      {
        v8 = _RUILoggingFacility();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(a1 + 32) name];
          v14 = 138412290;
          v15 = v9;
          _os_log_impl(&dword_21B93D000, v8, OS_LOG_TYPE_DEFAULT, "Calling handler for element named '%@'", &v14, 0xCu);
        }
      }

      v12 = a1 + 32;
      v10 = *(a1 + 32);
      v11 = *(v12 + 8);
      v13 = [v10 attributes];
      (v7)[2](v7, v11, v10, v13);
    }
  }
}

- (void)objectModel:(id)model willLoadLinkURL:(id)l attributes:(id)attributes
{
  attributesCopy = attributes;
  v6 = [attributesCopy objectForKeyedSubscript:@"url"];
  if (v6)
  {
    v7 = v6;
    v8 = [attributesCopy objectForKeyedSubscript:@"startSMSAutoFill"];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      [(RemoteUIController *)self _beginListeningForSMSAutoFill];
    }
  }
}

- (void)objectModel:(id)model pressedLink:(id)link httpMethod:(id)method completion:(id)completion
{
  modelCopy = model;
  completionCopy = completion;
  linkCopy = link;
  lowercaseString = [method lowercaseString];
  LODWORD(link) = [lowercaseString isEqualToString:@"post"];

  if (link)
  {
    postbackData = [modelCopy postbackData];
  }

  else
  {
    postbackData = 0;
  }

  lastObject = [(NSMutableArray *)self->_objectModels lastObject];
  visiblePage = [lastObject visiblePage];
  pageOriginatingLoad = self->_pageOriginatingLoad;
  self->_pageOriginatingLoad = visiblePage;

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__RemoteUIController_objectModel_pressedLink_httpMethod_completion___block_invoke;
  v19[3] = &unk_2782E7F08;
  v19[4] = self;
  v20 = completionCopy;
  v18 = completionCopy;
  [(RemoteUIController *)self _loadURL:linkCopy postBody:postbackData fromObjectModel:modelCopy completion:v19];
}

void __68__RemoteUIController_objectModel_pressedLink_httpMethod_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if ((a2 & 1) == 0)
  {
    [*(a1 + 32) _stopListeningForSMSAutoFill];
    v5 = v7;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v7);
    v5 = v7;
  }
}

- (BOOL)objectModel:(id)model shouldDisplayNamedElement:(id)element page:(id)page
{
  modelCopy = model;
  elementCopy = element;
  pageCopy = page;
  delegate = [(RemoteUIController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    delegate2 = [(RemoteUIController *)self delegate];
    v14 = [delegate2 remoteUIController:self objectModel:modelCopy shouldDisplayNamedElement:elementCopy page:pageCopy];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)_objectModelPageWantsHSATokens:(id)tokens
{
  tokensCopy = tokens;
  attributes = [tokensCopy attributes];
  v5 = [attributes objectForKeyedSubscript:@"tokenReceivedFunction"];
  if ([v5 length])
  {
    bOOLValue = 1;
  }

  else if ([tokensCopy hasPasscodeView])
  {
    passcodeViewOM = [tokensCopy passcodeViewOM];
    attributes2 = [passcodeViewOM attributes];
    v9 = [attributes2 objectForKeyedSubscript:@"SMSAutoFill"];
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)_objectModel:(id)model receivedToken:(id)token
{
  v34 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  tokenCopy = token;
  if (_isInternalInstall())
  {
    v8 = _RUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = tokenCopy;
      _os_log_impl(&dword_21B93D000, v8, OS_LOG_TYPE_DEFAULT, "Got an autofill token: %@", buf, 0xCu);
    }
  }

  if (tokenCopy)
  {
    visiblePage = [modelCopy visiblePage];
    [visiblePage publishSMSToken:tokenCopy];
  }

  v10 = [(RemoteUIController *)self parentViewControllerForObjectModel:modelCopy];
  presentedViewController = [v10 presentedViewController];

  if (presentedViewController)
  {
    if (_isInternalInstall())
    {
      v12 = _RUILoggingFacility();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v12, OS_LOG_TYPE_DEFAULT, "Skipping autofill as an alert or other modal is currently presented", buf, 2u);
      }
    }

    goto LABEL_32;
  }

  visiblePage2 = [modelCopy visiblePage];
  attributes = [visiblePage2 attributes];
  v15 = [attributes objectForKeyedSubscript:@"tokenReceivedFunction"];
  v16 = [v15 length];

  if (v16)
  {
    if (_isInternalInstall())
    {
      v17 = _RUILoggingFacility();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21B93D000, v17, OS_LOG_TYPE_DEFAULT, "Calling token received function", buf, 2u);
      }
    }

    visiblePage3 = [modelCopy visiblePage];
    attributes2 = [visiblePage3 attributes];
    v20 = [attributes2 objectForKeyedSubscript:@"tokenReceivedFunction"];
    v31 = tokenCopy;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    v22 = [modelCopy invokeScriptFunction:v20 withArguments:v21];

LABEL_18:
    [(RemoteUIController *)self _stopListeningForSMSAutoFill];
    goto LABEL_32;
  }

  visiblePage4 = [modelCopy visiblePage];
  if ([visiblePage4 hasPasscodeView])
  {
    visiblePage5 = [modelCopy visiblePage];
    passcodeViewOM = [visiblePage5 passcodeViewOM];
    attributes3 = [passcodeViewOM attributes];
    v27 = [attributes3 objectForKeyedSubscript:@"SMSAutoFill"];
    bOOLValue = [v27 BOOLValue];

    if (bOOLValue)
    {
      if (_isInternalInstall())
      {
        v28 = _RUILoggingFacility();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21B93D000, v28, OS_LOG_TYPE_DEFAULT, "Autofilling passcodeview", buf, 2u);
        }
      }

      visiblePage3 = [modelCopy visiblePage];
      attributes2 = [visiblePage3 passcodeViewOM];
      [attributes2 autofillWithToken:tokenCopy];
      goto LABEL_18;
    }
  }

  else
  {
  }

  if (_isInternalInstall())
  {
    v29 = _RUILoggingFacility();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B93D000, v29, OS_LOG_TYPE_DEFAULT, "Saving autofill token for later", buf, 2u);
    }
  }

  objc_storeStrong(&self->_SMSAutoFillToken, token);
LABEL_32:
}

- (void)_beginListeningForSMSAutoFill
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void RUIHSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifier(__strong HSAAuthenticationClientIncomingAuthenticationTokenBlock, CFStringRef)"}];
  [currentHandler handleFailureInFunction:v1 file:@"RemoteUIController.m" lineNumber:46 description:{@"%s", dlerror()}];

  __break(1u);
}

uint64_t __51__RemoteUIController__beginListeningForSMSAutoFill__block_invoke()
{
  result = MGGetBoolAnswer();
  _beginListeningForSMSAutoFill_hasTelephony = result;
  return result;
}

void __51__RemoteUIController__beginListeningForSMSAutoFill__block_invoke_244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__RemoteUIController__beginListeningForSMSAutoFill__block_invoke_2;
  v8[3] = &unk_2782E84F8;
  v8[4] = *(a1 + 32);
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __51__RemoteUIController__beginListeningForSMSAutoFill__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 24;
  if (!*(v2 + 8))
  {
    v3 = 16;
  }

  v4 = [*(v2 + v3) lastObject];
  [*(a1 + 32) _objectModel:v4 receivedToken:*(a1 + 40)];
}

- (void)_stopListeningForSMSAutoFill
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void RUIHSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifier(CFStringRef)"];
  [currentHandler handleFailureInFunction:v1 file:@"RemoteUIController.m" lineNumber:47 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)startListeningForHSATokenAutoFill
{
  if (!self->_listeningForSMSIdentifier)
  {
    v7 = v2;
    v8 = v3;
    if (_isInternalInstall())
    {
      v5 = _RUILoggingFacility();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_21B93D000, v5, OS_LOG_TYPE_DEFAULT, "Manually starting to listen for HSA tokens...", v6, 2u);
      }
    }

    [(RemoteUIController *)self _beginListeningForSMSAutoFill];
  }
}

- (void)stopListeningForHSATokenAutoFill
{
  if (self->_listeningForSMSIdentifier)
  {
    [(RemoteUIController *)self _stopListeningForSMSAutoFill];
    if (_isInternalInstall())
    {
      v2 = _RUILoggingFacility();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v3 = 0;
        _os_log_impl(&dword_21B93D000, v2, OS_LOG_TYPE_DEFAULT, "Manually stopped listening for HSA tokens", v3, 2u);
      }
    }
  }
}

- (UINavigationController)navigationController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained(&self->_hostViewController);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)hostingController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  v4 = [WeakRetained conformsToProtocol:&unk_282DAE228];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_hostViewController);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ruiModalPresentationStyle = [controllerCopy ruiModalPresentationStyle];
  }

  else
  {
    ruiModalPresentationStyle = 1;
  }

  v10 = [RUIModalPresentationController alloc];
  style = [(RemoteUIController *)self style];
  v12 = [(RUIModalPresentationController *)v10 initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy modalPresentationStyle:ruiModalPresentationStyle style:style];

  [(RUIModalPresentationController *)v12 setDelegate:self];

  return v12;
}

- (UIViewController)hostViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  return WeakRetained;
}

- (RemoteUIControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_removePreviousObjectModelsBackToIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:"-[RemoteUIController _removePreviousObjectModelsBackToIdentifier:]" object:? file:? lineNumber:? description:?];
}

- (void)pushObjectModel:animated:completion:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:"-[RemoteUIController pushObjectModel:animated:completion:]" object:? file:? lineNumber:? description:?];
}

- (void)popObjectModelAnimated:stopListeningForHSATokens:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:"-[RemoteUIController popObjectModelAnimated:stopListeningForHSATokens:]" object:? file:? lineNumber:? description:?];
}

- (void)_setHandlerWithKey:forElementsMatching:handler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"handler != nil" object:? file:? lineNumber:? description:?];
}

- (void)loader:receivedObjectModel:topActionSignal:completion:.cold.2()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loader:receivedObjectModel:topActionSignal:completion:.cold.3()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loader:receivedObjectModel:topActionSignal:completion:.cold.4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loader:receivedObjectModel:topActionSignal:completion:.cold.5()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loader:willLoadRequest:redirectResponse:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

@end