@interface RemoteUIController
- (BOOL)_objectModelPageWantsHSATokens:(id)a3;
- (BOOL)objectModel:(id)a3 shouldDisplayNamedElement:(id)a4 page:(id)a5;
- (NSArray)displayedPages;
- (RUILoader)loader;
- (RemoteUIController)init;
- (RemoteUIControllerDelegate)delegate;
- (RemoteUITelemetryDelegate)telemetryDelegate;
- (UINavigationController)navigationController;
- (UIViewController)currentPresentationContext;
- (UIViewController)hostViewController;
- (id)_handleDismissAndReplaceWithActionSignal:(id)a3 objectModel:(id)a4;
- (id)_handleDismissWithActionSignal:(id)a3 objectModel:(id)a4;
- (id)_objectModelStack;
- (id)dismissObjectModelsAnimated:(BOOL)a3 completion:(id)a4;
- (id)hostingController;
- (id)parentViewControllerForObjectModel:(id)a3;
- (id)parser:(id)a3 createPageWithName:(id)a4 attributes:(id)a5;
- (id)popObjectModelAnimated:(BOOL)a3 stopListeningForHSATokens:(BOOL)a4;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (id)setHandlerForElementsMatching:(id)a3 handler:(id)a4;
- (id)viewControllerForAlertPresentation;
- (id)visibleElementWithIdentifier:(id)a3;
- (void)_beginListeningForSMSAutoFill;
- (void)_didPresentObjectModel:(id)a3 modally:(BOOL)a4;
- (void)_didRemoveObjectModel:(id)a3;
- (void)_invalidateModalObjectModels;
- (void)_loadURL:(id)a3 fromObjectModel:(id)a4 postBody:(id)a5;
- (void)_loadURL:(id)a3 postBody:(id)a4 fromObjectModel:(id)a5 completion:(id)a6;
- (void)_modalNavigationWasDismissed;
- (void)_modalViewControllerWasPopped:(id)a3;
- (void)_objectModel:(id)a3 receivedToken:(id)a4;
- (void)_presentModalRUIController:(id)a3 completion:(id)a4;
- (void)_removePreviousObjectModelsBackToIdentifier:(id)a3;
- (void)_replaceModalRUIController:(id)a3 byController:(id)a4 completion:(id)a5;
- (void)_replaceObjectModelWithObjectModel:(id)a3;
- (void)_replacePagesOfObjectModel:(id)a3 byObjectModel:(id)a4 sourceArray:(id)a5;
- (void)_setHandlerWithKey:(id)a3 forElementsMatching:(id)a4 handler:(id)a5;
- (void)_showPartialScreenModal:(id)a3;
- (void)_stopListeningForSMSAutoFill;
- (void)_willPresentObjectModel:(id)a3 modally:(BOOL)a4;
- (void)dealloc;
- (void)handleCancel:(id)a3;
- (void)loadData:(id)a3 baseURL:(id)a4;
- (void)loadRequest:(id)a3;
- (void)loadRequest:(id)a3 completion:(id)a4;
- (void)loader:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5;
- (void)loader:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)loader:(id)a3 didReceiveHTTPResponse:(id)a4 forRequest:(id)a5;
- (void)loader:(id)a3 loadResourcesForObjectModel:(id)a4 completion:(id)a5;
- (void)loader:(id)a3 receivedObjectModel:(id)a4 topActionSignal:(id)a5 completion:(id)a6;
- (void)loader:(id)a3 willLoadRequest:(id)a4 redirectResponse:(id)a5 completionHandler:(id)a6;
- (void)modalNavigationWasDismissed;
- (void)objectModel:(id)a3 didNavigateBackFromController:(id)a4 withGesture:(BOOL)a5;
- (void)objectModel:(id)a3 elementDidChange:(id)a4;
- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5 completion:(id)a6;
- (void)objectModel:(id)a3 willLoadLinkURL:(id)a4 attributes:(id)a5;
- (void)presentLoadingSheet:(id)a3;
- (void)pushObjectModel:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)refreshTopModelWithModel:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setHandlerForButtonName:(id)a3 handler:(id)a4;
- (void)setHandlerForButtonsMatching:(id)a3 handler:(id)a4;
- (void)setHandlerForElementName:(id)a3 handler:(id)a4;
- (void)setStyle:(id)a3;
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
    v7 = [MEMORY[0x277CCAD78] UUID];
    UUID = v2->_UUID;
    v2->_UUID = v7;

    if (_isInternalInstall())
    {
      if (_isInternalInstall())
      {
        v9 = _RUILoggingFacility();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(RemoteUIController *)v2 UUID];
          v11 = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138412546;
          v15 = v10;
          v16 = 2112;
          v17 = v11;
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
      v4 = [(RemoteUIController *)self UUID];
      v5 = [MEMORY[0x277CCACC8] callStackSymbols];
      *buf = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
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

- (void)setDelegate:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_delegate, v4);
    if (_isInternalInstall())
    {
      v6 = _RUILoggingFacility();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [(RemoteUIController *)self UUID];
        v8 = [v7 UUIDString];
        v9 = objc_loadWeakRetained(&self->_delegate);
        v10 = 138412546;
        v11 = v8;
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
    v4 = self->_modalNavigationController;
  }

  else
  {
    v4 = [(RemoteUIController *)self hostViewController];
  }

  return v4;
}

- (RemoteUITelemetryDelegate)telemetryDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_telemetryDelegate);

  return WeakRetained;
}

- (void)setStyle:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (self->_style != v5)
  {
    objc_storeStrong(&self->_style, a3);
    [(RUILoader *)self->_loader setStyle:v5];
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

          [*(*(&v20 + 1) + 8 * i) setStyle:v5];
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

          [*(*(&v16 + 1) + 8 * j) setStyle:{v5, v16}];
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

- (void)handleCancel:(id)a3
{
  v4 = [(RemoteUIController *)self hostViewController];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__RemoteUIController_handleCancel___block_invoke;
  v5[3] = &unk_2782E7F30;
  v5[4] = self;
  [v4 dismissViewControllerAnimated:1 completion:v5];
}

- (void)presentLoadingSheet:(id)a3
{
  v53 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D75D28]);
  objc_storeStrong(&self->_loadingViewController, v4);
  v5 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_handleCancel_];
  v6 = [v4 navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [(RemoteUIController *)self style];
  if ((!v7 || (v8 = v7, -[RemoteUIController style](self, "style"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 showsImageInLoadingNavbar], v9, v8, v10)) && (objc_msgSend(v53, "navBarImage"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
    v14 = [v53 navBarImageLabel];
    v15 = [(RemoteUIController *)self style];
    v16 = [RUIBarButtonItem titleItemWithLabel:v14 imageView:v13 imageSize:v15 style:0 labelColor:25.0, 25.0];
    v17 = [v4 navigationItem];
    [v17 setLeftBarButtonItem:v16];
  }

  else
  {
    v12 = [v53 navBarImageLabel];
    v13 = [(RemoteUIController *)self style];
    v14 = [RUIBarButtonItem titleItemWithLabel:v12 imageView:0 imageSize:v13 style:0 labelColor:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    v15 = [v4 navigationItem];
    [v15 setLeftBarButtonItem:v14];
  }

  v18 = [(RemoteUIController *)self style];
  v19 = [v4 navigationItem];
  [v18 applyToNavigationItem:v19];

  v20 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
  spinner = self->_spinner;
  self->_spinner = v20;

  v22 = [v4 view];
  [v22 addSubview:self->_spinner];

  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  v24 = [v4 view];
  v25 = [v24 centerXAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  [v26 setActive:1];

  v27 = [(UIActivityIndicatorView *)self->_spinner centerYAnchor];
  v28 = [v4 view];
  v29 = [v28 centerYAnchor];
  v30 = [v27 constraintEqualToAnchor:v29];
  [v30 setActive:1];

  v31 = [v53 spinnerLabel];

  if (v31)
  {
    v32 = objc_alloc_init(MEMORY[0x277D756B8]);
    v33 = [v53 spinnerLabel];
    [v32 setText:v33];

    [v32 setTextAlignment:1];
    v34 = [(RemoteUIController *)self style];
    v35 = [v34 spinnerLabelFont];
    [v32 setFont:v35];

    v36 = [(RemoteUIController *)self style];
    v37 = [v36 spinnerLabelColor];
    [v32 setTextColor:v37];

    v38 = [v4 view];
    [v38 addSubview:v32];

    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [v32 leadingAnchor];
    v40 = [v4 view];
    v41 = [v40 leadingAnchor];
    v42 = [v39 constraintEqualToAnchor:v41];
    [v42 setActive:1];

    v43 = [v32 trailingAnchor];
    v44 = [v4 view];
    v45 = [v44 trailingAnchor];
    v46 = [v43 constraintEqualToAnchor:v45];
    [v46 setActive:1];

    v47 = [v32 topAnchor];
    v48 = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
    v49 = [v47 constraintEqualToAnchor:v48 constant:10.0];
    [v49 setActive:1];
  }

  [(UIActivityIndicatorView *)self->_spinner startAnimating];
  v50 = [v4 view];
  v51 = [(RemoteUIController *)self style];
  v52 = [v51 backgroundColor];
  [v50 setBackgroundColor:v52];

  [(RemoteUIController *)self _showPartialScreenModal:v4];
}

- (void)_showPartialScreenModal:(id)a3
{
  v4 = a3;
  obj = [[RUINavigationController alloc] initWithRootViewController:v4];

  v5 = [(RemoteUIController *)self hostViewController];
  [(RUINavigationController *)obj setHostViewController:v5];

  v6 = [MEMORY[0x277D75418] currentDevice];
  LODWORD(v4) = [v6 userInterfaceIdiom] != 1;

  [(RUINavigationController *)obj setRuiModalPresentationStyle:2 * v4];
  [(RUINavigationController *)obj setModalPresentationStyle:4];
  [(RUINavigationController *)obj setTransitioningDelegate:self];
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (!v8)
  {
    [(RUINavigationController *)obj setSupportedInterfaceOrientations:2];
  }

  v9 = [(RemoteUIController *)self style];
  [v9 applyToNavigationController:obj];

  objc_storeStrong(&self->_modalNavigationController, obj);
  v10 = [MEMORY[0x277D75418] currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 1)
  {
    [(RUINavigationController *)self->_modalNavigationController setModalInPresentation:1];
  }

  v12 = [(RemoteUIController *)self hostViewController];
  [v12 presentViewController:obj animated:1 completion:0];
}

- (void)loadRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  [(RemoteUIController *)self setLoadCompletion:a4];
  v7 = [v6 mutableCopy];

  [(RemoteUIController *)self loadRequest:v7];
}

- (void)_loadURL:(id)a3 postBody:(id)a4 fromObjectModel:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  [(RemoteUIController *)self setLoadCompletion:a6];
  [(RemoteUIController *)self _loadURL:v12 fromObjectModel:v10 postBody:v11];
}

- (void)loadRequest:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 setValue:self->_userAgentString forHTTPHeaderField:@"User-Agent"];
  v5 = [v4 valueForHTTPHeaderField:@"Content-Type"];
  v6 = [v5 length];

  if (!v6)
  {
    [v4 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_hostViewController);
    v9 = [v8 traitCollection];
    v10 = [v9 userInterfaceStyle];

    if (_isInternalInstall())
    {
      v11 = _RUILoggingFacility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
        v15 = 138412290;
        v16 = v12;
        _os_log_impl(&dword_21B93D000, v11, OS_LOG_TYPE_DEFAULT, "Setting interface style based on _hostViewController %@", &v15, 0xCu);
      }
    }

    v13 = [(RemoteUIController *)self loader];
    [v13 setUserInterfaceStyle:v10];
  }

  v14 = [(RemoteUIController *)self loader];
  [v14 loadXMLUIWithRequest:v4];
}

- (void)_loadURL:(id)a3 fromObjectModel:(id)a4 postBody:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8 && (-[RemoteUIController loader](self, "loader"), v11 = objc_claimAutoreleasedReturnValue(), [v11 URL], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "absoluteURL"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "absoluteURL"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqual:", v14), v14, v13, v12, v11, v15))
  {
    if (_isInternalInstall())
    {
      v16 = _RUILoggingFacility();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v8;
        _os_log_impl(&dword_21B93D000, v16, OS_LOG_TYPE_DEFAULT, "Already loading %@", &v20, 0xCu);
      }
    }
  }

  else
  {
    v17 = [(RemoteUIController *)self loader];
    [v17 cancel];

    v18 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v8 cachePolicy:1 timeoutInterval:30.0];
    v19 = v18;
    if (v10)
    {
      [v18 setHTTPBody:v10];
      [v19 setHTTPMethod:@"POST"];
    }

    [v9 _populateRequest:v19];
    [(RemoteUIController *)self loadRequest:v19];
  }
}

- (void)loadData:(id)a3 baseURL:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7 || (-[RemoteUIController loader](self, "loader"), v8 = objc_claimAutoreleasedReturnValue(), [v8 URL], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "absoluteURL"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "absoluteURL"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, v9, v8, !v12))
  {
    v14 = [(RemoteUIController *)self loader];
    [v14 cancel];

    v13 = [(RemoteUIController *)self loader];
    [v13 loadXMLUIWithData:v6 baseURL:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (_isInternalInstall())
  {
    v13 = _RUILoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_21B93D000, v13, OS_LOG_TYPE_DEFAULT, "Already loading %@", &v15, 0xCu);
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (void)_willPresentObjectModel:(id)a3 modally:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  if (self->_SMSAutoFillToken)
  {
    [(RemoteUIController *)self _objectModel:v9 receivedToken:?];
  }

  v6 = [(RemoteUIController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(RemoteUIController *)self delegate];
    [v8 remoteUIController:self willPresentObjectModel:v9 modally:v4];
  }
}

- (void)_didPresentObjectModel:(id)a3 modally:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(RemoteUIController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(RemoteUIController *)self delegate];
    [v8 remoteUIController:self didPresentObjectModel:v9 modally:v4];
  }
}

- (void)_didRemoveObjectModel:(id)a3
{
  v7 = a3;
  v4 = [(RemoteUIController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(RemoteUIController *)self delegate];
    [v6 remoteUIController:self didRemoveObjectModel:v7];
  }
}

- (void)_removePreviousObjectModelsBackToIdentifier:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
      v8 = modalNavigationController;
    }

    else
    {
      v8 = [(RemoteUIController *)self navigationController];
      if (!v8)
      {
        [RemoteUIController _removePreviousObjectModelsBackToIdentifier:];
        v8 = 0;
      }
    }

    p_super = &v8->super.super.super.super;
    v10 = [MEMORY[0x277CBEB18] array];
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
      v15 = [v14 displayedPages];
      [v10 addObjectsFromArray:v15];

      [v11 addObject:v14];
      v16 = [v14 identifier];
      v17 = [v16 isEqualToString:v4];

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
      [p_super settingsCompatibleReplaceViewControllers:v10 byViewControllers:MEMORY[0x277CBEBF8] animated:0];
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

- (void)pushObjectModel:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v53 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = 24;
  if (!self->_modalNavigationController)
  {
    v10 = 16;
  }

  v11 = *(&self->super.isa + v10);
  modalNavigationController = self->_modalNavigationController;
  if (modalNavigationController)
  {
    v13 = modalNavigationController;
  }

  else
  {
    v13 = [(RemoteUIController *)self hostingController];
    if (!v13)
    {
      [RemoteUIController pushObjectModel:animated:completion:];
    }
  }

  [v8 setDelegate:self];
  v14 = [(RemoteUIController *)self telemetryDelegate];
  [v8 setTelemetryDelegate:v14];

  [(RemoteUIController *)self _willPresentObjectModel:v8 modally:self->_modalNavigationController != 0];
  v15 = [v8 identifierMarkingStackRemovalAfterPush];

  v16 = &off_21BA91000;
  if (v15)
  {
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __58__RemoteUIController_pushObjectModel_animated_completion___block_invoke;
    v49[3] = &unk_2782E89F0;
    v17 = v8;
    v50 = v17;
    v18 = [v11 indexOfObjectPassingTest:v49];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (_isInternalInstall())
      {
        v19 = _RUILoggingFacility();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = [v17 identifierMarkingStackRemovalAfterPush];
          *buf = 138412290;
          v52 = v20;
          _os_log_impl(&dword_21B93D000, v19, OS_LOG_TYPE_DEFAULT, "idOfOldestObjectModelToRemoveAfterPush '%@' not found", buf, 0xCu);

          v16 = &off_21BA91000;
        }
      }

      v15 = 0;
      goto LABEL_25;
    }

    v21 = v18;
    if (v18 >= 2)
    {
      v42 = v6;
      v22 = [v11 objectAtIndexedSubscript:v18 - 1];
      v23 = [v22 displayedPages];
      v24 = [v23 lastObject];

      v25 = [v24 backButtonTitle];
      if (v25)
      {
        v26 = v25;

        goto LABEL_22;
      }

      v26 = [v24 navTitle];

      v6 = v42;
      if (v26)
      {
        goto LABEL_22;
      }
    }

    v27 = [v11 objectAtIndexedSubscript:v21];
    v28 = [v27 displayedPages];
    v26 = [v28 firstObject];

    v29 = [(RUINavigationController *)v13 viewControllers];
    v30 = [v29 indexOfObject:v26];

    if (v30 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }

    v31 = v30 - 1;
    if (!v31)
    {
      goto LABEL_23;
    }

    v41 = [(RUINavigationController *)v13 viewControllers];
    [v41 objectAtIndexedSubscript:v31];
    v32 = v42 = v6;
    v33 = [v32 navigationItem];
    v34 = [v33 title];

    v6 = v42;
    v16 = &off_21BA91000;
    if (!v34)
    {
LABEL_24:
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__RemoteUIController_pushObjectModel_animated_completion___block_invoke_2;
      aBlock[3] = &unk_2782E84F8;
      aBlock[4] = self;
      v48 = v17;
      v15 = _Block_copy(aBlock);

LABEL_25:
      goto LABEL_26;
    }

    v26 = v34;
LABEL_22:
    v35 = [v11 lastObject];
    v36 = [v35 displayedPages];
    v37 = [v36 lastObject];

    [v37 setBackButtonTitle:v26];
    v6 = v42;
LABEL_23:

    v16 = &off_21BA91000;
    goto LABEL_24;
  }

LABEL_26:
  [v11 addObject:v8];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = *(v16 + 441);
  v43[2] = __58__RemoteUIController_pushObjectModel_animated_completion___block_invoke_63;
  v43[3] = &unk_2782E8A18;
  v43[4] = self;
  v44 = v8;
  v45 = v15;
  v46 = v9;
  v38 = v9;
  v39 = v15;
  v40 = v8;
  [v40 presentInParentViewController:v13 animated:v6 completion:v43];
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

- (id)popObjectModelAnimated:(BOOL)a3 stopListeningForHSATokens:(BOOL)a4
{
  v4 = a3;
  if (a4)
  {
    [(RemoteUIController *)self _stopListeningForSMSAutoFill];
  }

  modalNavigationController = self->_modalNavigationController;
  if (modalNavigationController)
  {
    v7 = modalNavigationController;
  }

  else
  {
    v7 = [(RemoteUIController *)self navigationController];
    if (!v7)
    {
      [RemoteUIController popObjectModelAnimated:stopListeningForHSATokens:];
    }
  }

  v8 = [(RemoteUIController *)self _objectModelStack];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(RemoteUIController *)self _objectModelStack];
    v11 = [v10 lastObject];

    v12 = [v11 displayedPages];
    [v12 count];
    [(UINavigationController *)v7 settingsCompatibleReplaceViewControllers:v12 byViewControllers:MEMORY[0x277CBEBF8] animated:v4];
    [v11 setDelegate:0];
    v13 = [(RemoteUIController *)self _objectModelStack];
    [v13 removeLastObject];

    [(RemoteUIController *)self _didRemoveObjectModel:v11];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_replaceObjectModelWithObjectModel:(id)a3
{
  v40[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 defaultPages];
  v6 = [v5 firstObject];
  v7 = [(RemoteUIController *)self _objectModelPageWantsHSATokens:v6];

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
  v11 = [v4 idOfObjectModelToReplace];
  v12 = [v11 length] == 0;

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
    v27 = v4;
    v28 = &v30;
    v29 = &v36;
    [v14 enumerateObjectsUsingBlock:v26];
  }

LABEL_8:
  v18 = v37[3];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 addObject:v4];
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
    [v31[5] replaceObjectAtIndex:v37[3] withObject:v4];
  }

  [v4 setDelegate:self];
  [(RemoteUIController *)self _replacePagesOfObjectModel:v19 byObjectModel:v4 sourceArray:v31[5]];
  if (v19)
  {
    [(RemoteUIController *)self _didRemoveObjectModel:v19];
    [v19 setDelegate:0];
  }

  v20 = v31[5];
  modalObjectModels = self->_modalObjectModels;
  [(RemoteUIController *)self _willPresentObjectModel:v4 modally:v20 == modalObjectModels];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __57__RemoteUIController__replaceObjectModelWithObjectModel___block_invoke_3;
  v23[3] = &unk_2782E8A90;
  v23[4] = self;
  v22 = v4;
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

- (void)_replacePagesOfObjectModel:(id)a3 byObjectModel:(id)a4 sourceArray:(id)a5
{
  v15 = a3;
  v8 = a4;
  v9 = a5;
  modalNavigationController = self->_modalNavigationController;
  if (modalNavigationController)
  {
    v11 = modalNavigationController;
  }

  else
  {
    v11 = [(RemoteUIController *)self navigationController];
  }

  v12 = v11;
  if ([(NSMutableArray *)v9 count])
  {
    if (self->_modalObjectModels == v9)
    {
      v13 = self->_modalNavigationController;
    }

    else
    {
      v13 = [(RemoteUIController *)self navigationController];
    }

    v14 = v13;

    v12 = v14;
  }

  [(UINavigationController *)v12 replacePagesOfObjectModel:v15 byObjectModel:v8];
}

- (id)dismissObjectModelsAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (self->_modalNavigationController && [(NSMutableArray *)self->_modalObjectModels count])
  {
    v7 = [(NSMutableArray *)self->_modalObjectModels copy];
    [(RUINavigationController *)self->_modalNavigationController dismissViewControllerAnimated:v4 completion:v6];
    [(RemoteUIController *)self _invalidateModalObjectModels];
  }

  else
  {
    if (v6)
    {
      v6[2](v6);
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
  v3 = [(RemoteUIController *)self loader];
  [v3 cancel];

  if (self->_modalNavigationController)
  {
    v4 = [(NSMutableArray *)self->_modalObjectModels copy];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(NSMutableArray *)self->_modalObjectModels reverseObjectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          [v10 setDelegate:0];
          [(RemoteUIController *)self _didRemoveObjectModel:v10];
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
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

- (void)_modalViewControllerWasPopped:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RemoteUIController *)self loader];
  [v5 cancel];

  if (_isInternalInstall())
  {
    v6 = _RUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(NSMutableArray *)self->_modalObjectModels lastObject];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_21B93D000, v6, OS_LOG_TYPE_DEFAULT, "A page from modal object model was popped: %@", &v9, 0xCu);
    }
  }

  v8 = [(NSMutableArray *)self->_modalObjectModels lastObject];
  [v8 didNavigateBackFromViewController:v4];
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

        v9 = [*(*(&v21 + 1) + 8 * i) displayedPages];
        [v3 addObjectsFromArray:v9];
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

        v15 = [*(*(&v17 + 1) + 8 * j) displayedPages];
        [v3 addObjectsFromArray:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  return v3;
}

- (void)_setHandlerWithKey:(id)a3 forElementsMatching:(id)a4 handler:(id)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v10)
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
  v13 = [v10 copy];
  v16[1] = @"ButtonComparison";
  v17[0] = v13;
  v14 = [v9 copy];
  v17[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [(NSMutableDictionary *)self->_elementChangeHandlers setObject:v15 forKeyedSubscript:v8];
}

- (void)setHandlerForElementName:(id)a3 handler:(id)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__RemoteUIController_setHandlerForElementName_handler___block_invoke;
  v8[3] = &unk_2782E7FF0;
  v9 = v6;
  v7 = v6;
  [(RemoteUIController *)self _setHandlerWithKey:v7 forElementsMatching:v8 handler:a4];
}

uint64_t __55__RemoteUIController_setHandlerForElementName_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)setHandlerForElementsMatching:(id)a3 handler:(id)a4
{
  v6 = MEMORY[0x277CCAD78];
  v7 = a4;
  v8 = a3;
  v9 = [v6 UUID];
  v10 = [v9 UUIDString];

  [(RemoteUIController *)self _setHandlerWithKey:v10 forElementsMatching:v8 handler:v7];

  return v10;
}

- (void)setHandlerForButtonsMatching:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__RemoteUIController_setHandlerForButtonsMatching_handler___block_invoke;
  v13[3] = &unk_2782E8AB8;
  v14 = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__RemoteUIController_setHandlerForButtonsMatching_handler___block_invoke_2;
  v11[3] = &unk_2782E8AE0;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)setHandlerForButtonName:(id)a3 handler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__RemoteUIController_setHandlerForButtonName_handler___block_invoke;
  v8[3] = &unk_2782E8AE0;
  v9 = v6;
  v7 = v6;
  [(RemoteUIController *)self setHandlerForElementName:a3 handler:v8];
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

- (void)loader:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = _RUILoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [RemoteUIController loader:didFinishLoadWithError:forRequest:];
    }
  }

  v12 = [(RemoteUIController *)self _objectModelStack];
  v13 = [v12 lastObject];
  [v13 stopActivityIndicator];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(v13) = objc_opt_respondsToSelector();

  v15 = objc_loadWeakRetained(&self->_delegate);
  v16 = v15;
  if (v13)
  {
    [v15 remoteUIController:self didFinishLoadWithError:v9 forRequest:v10];
  }

  else
  {
    v17 = objc_opt_respondsToSelector();

    if ((v17 & 1) == 0)
    {
      goto LABEL_10;
    }

    v16 = objc_loadWeakRetained(&self->_delegate);
    [v16 remoteUIController:self didFinishLoadWithError:v9];
  }

LABEL_10:
  v18 = objc_loadWeakRetained(&self->_telemetryDelegate);
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = objc_loadWeakRetained(&self->_telemetryDelegate);
    v21 = [RUITelemetryElement alloc];
    v22 = [[RUIXMLElement alloc] initWithName:&stru_282D68F58];
    v23 = [v10 URL];
    v24 = [(RUITelemetryElement *)v21 initWithXMLElement:v22 url:v23];
    [v20 didLoadURL:v24 error:v9];
  }

  v25 = [(RemoteUIController *)self loadCompletion];

  if (v25)
  {
    v26 = [(RemoteUIController *)self loadCompletion];
    (v26)[2](v26, v9 == 0, v9);
  }

  loadCompletion = self->_loadCompletion;
  self->_loadCompletion = 0;
}

- (void)loader:(id)a3 didReceiveHTTPResponse:(id)a4 forRequest:(id)a5
{
  v13 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  v10 = objc_loadWeakRetained(&self->_delegate);
  v11 = v10;
  if (v9)
  {
    [v10 remoteUIController:self didReceiveHTTPResponse:v13 forRequest:v7];
  }

  else
  {
    v12 = objc_opt_respondsToSelector();

    if ((v12 & 1) == 0)
    {
      goto LABEL_6;
    }

    v11 = objc_loadWeakRetained(&self->_delegate);
    [v11 remoteUIController:self didReceiveHTTPResponse:v13];
  }

LABEL_6:
}

- (void)loader:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v11 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 remoteUIController:self didReceiveChallenge:v11 completionHandler:v7];
  }

  else if (v7)
  {
    v7[2](v7, 1, 0);
  }
}

- (void)loader:(id)a3 loadResourcesForObjectModel:(id)a4 completion:(id)a5
{
  v9 = a4;
  v7 = a5;
  v8 = [(RemoteUIController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v8 remoteUIController:self loadResourcesForObjectModel:v9 completion:v7];
  }

  else
  {
    v7[2](v7, 1, 0);
  }
}

- (id)_handleDismissAndReplaceWithActionSignal:(id)a3 objectModel:(id)a4
{
  v6 = a4;
  v7 = [v6 defaultPages];
  v8 = [v7 count];

  if (!v8)
  {
    v13 = &__block_literal_global_112;
    goto LABEL_9;
  }

  v9 = [(NSMutableArray *)self->_objectModels count];
  v10 = [(RemoteUIController *)self hostingController];

  if (!v10)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"RemoteUIController.m" lineNumber:731 description:{@"%s: dismiss+replace requires a hosting controller", "-[RemoteUIController _handleDismissAndReplaceWithActionSignal:objectModel:]"}];

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
  v11[5] = v6;
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

- (id)_handleDismissWithActionSignal:(id)a3 objectModel:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 subActions];
  v9 = [v8 firstObject];

  v10 = [RUIActionSignal signalWithString:v9];
  v11 = [v6 subActions];
  [v10 setSubActions:v11];

  if (v10)
  {
    v12 = [v10 subActions];
    [v12 removeObjectAtIndex:0];

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
    v18 = v7;
    v19 = v10;
    v14 = _Block_copy(aBlock);
    v15 = _Block_copy(v14);
  }

  else
  {
    v15 = [(RemoteUIController *)self _handleDismissAndReplaceWithActionSignal:v6 objectModel:v7];
  }

  return v15;
}

- (void)loader:(id)a3 receivedObjectModel:(id)a4 topActionSignal:(id)a5 completion:(id)a6
{
  v154 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6)
  {
    v13 = a6;
  }

  else
  {
    v13 = &__block_literal_global_115;
  }

  v14 = _Block_copy(v13);
  [v11 setDelegate:self];
  v15 = [(RemoteUIController *)self telemetryDelegate];
  [v11 setTelemetryDelegate:v15];

  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  if (!WeakRetained)
  {
    if (_isInternalInstall())
    {
      v22 = _RUILoggingFacility();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v12;
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
        v24 = [(RemoteUIController *)self UUID];
        v25 = [v24 UUIDString];
        *buf = 138412546;
        *&buf[4] = v12;
        v152 = 2112;
        v153 = v25;
        _os_log_impl(&dword_21B93D000, v23, OS_LOG_TYPE_DEFAULT, "Incoming action signal: %@ on RemoteUIController %@", buf, 0x16u);
      }
    }

    if (self->_modalNavigationController)
    {
      [v12 topSignal];
    }

    else
    {
      v26 = objc_loadWeakRetained(&self->_hostViewController);
      v27 = [v26 conformsToProtocol:&unk_282DAE228];

      if (!(([v12 topSignal] != 2) | v27 & 1))
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

        [v12 setTopSignal:5];
      }
    }

    v29 = objc_loadWeakRetained(&self->_delegate);
    v30 = objc_opt_respondsToSelector();

    if (v30)
    {
      *buf = [v12 topSignal];
      v31 = objc_loadWeakRetained(&self->_delegate);
      [v31 remoteUIController:self didReceiveObjectModel:v11 actionSignal:buf];

      if (*buf)
      {
        v32 = [v12 topSignal];
        if (v32 != *buf)
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

          [v12 setTopSignal:*buf];
        }
      }
    }

    if ([v12 topSignal] == 2 || objc_msgSend(v12, "topSignal") == 5)
    {
      v34 = [v11 defaultPages];
      v35 = [v34 count] == 0;

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

        v37 = [v11 primaryAlert];
        v38 = v37 == 0;

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

        [v12 setTopSignal:7];
      }
    }

    modalNavigationController = self->_modalNavigationController;
    if (modalNavigationController)
    {
      v41 = [(RUINavigationController *)modalNavigationController topViewController];
    }

    else
    {
      v42 = [(RemoteUIController *)self navigationController];
      v41 = [v42 topViewController];
    }

    loadingViewController = self->_loadingViewController;
    if ([v12 topSignal] == 2 && loadingViewController != 0 && v41 == loadingViewController)
    {
      [v12 setTopSignal:3];
    }

    if ([v12 topSignal] == 2)
    {
      v44 = self->_modalNavigationController;
      if (v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = [(RemoteUIController *)self hostingController];
        if (!v45)
        {
          v45 = _RUILoggingFacility();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            [RemoteUIController loader:receivedObjectModel:topActionSignal:completion:];
          }

          goto LABEL_72;
        }
      }

      [(RemoteUIController *)self pushObjectModel:v11 animated:[(RemoteUIController *)self _shouldAnimate] completion:v14];
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

    if ([v12 topSignal] == 1)
    {
      v46 = [(RemoteUIController *)self loader];
      [v46 cancel];

      [(RUINavigationController *)self->_modalNavigationController setIsDismissing:1];
      v47 = [v12 subActions];
      v48 = [v47 firstObject];
      v49 = [v48 isEqualToString:@"refresh"];

      v50 = self->_modalNavigationController;
      if ((v50 != 0) | v49 & 1)
      {
        if (v49)
        {
          if (v50)
          {
            v51 = [(RemoteUIController *)self _shouldAnimate];
            v143[0] = MEMORY[0x277D85DD0];
            v143[1] = 3221225472;
            v143[2] = __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_143;
            v143[3] = &unk_2782E8610;
            v143[4] = self;
            v144 = v11;
            v145 = v14;
            [(RUINavigationController *)v50 dismissViewControllerAnimated:v51 completion:v143];
            v52 = self->_modalNavigationController;
            self->_modalNavigationController = 0;
          }

          else
          {
            [(RemoteUIController *)self refreshTopModelWithModel:v11];
          }

          v14[2](v14);
        }

        else
        {
          v63 = [(RemoteUIController *)self _handleDismissWithActionSignal:v12 objectModel:v11];
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
          v67 = [(RemoteUIController *)self _shouldAnimate];
          if ([(RemoteUIController *)self _shouldAnimate])
          {
            v68 = v65;
          }

          else
          {
            v68 = 0;
          }

          [(RUINavigationController *)v66 dismissViewControllerAnimated:v67 completion:v68];
          if (![(RemoteUIController *)self _shouldAnimate])
          {
            v65[2](v65);
          }
        }
      }

      else
      {
        v60 = [(RemoteUIController *)self delegate];
        v61 = objc_opt_respondsToSelector();

        if (v61)
        {
          v62 = [(RemoteUIController *)self delegate];
          [v62 remoteUIControllerDidDismiss:self];

          v14[2](v14);
        }
      }

      goto LABEL_73;
    }

    if ([v12 topSignal] == 4)
    {
      v53 = [v11 defaultPages];
      v54 = [v53 count] == 0;

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
        v57 = v56;
      }

      else
      {
        v57 = [(RemoteUIController *)self navigationController];
        if (!v57)
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

      v119 = v57;
      if ([v120 count] > 1)
      {
        v114 = [(RUINavigationController *)v119 topViewController];
        v116 = [v120 lastObject];
        [v116 setDelegate:0];
        [v120 removeLastObject];
        [(RemoteUIController *)self _didRemoveObjectModel:v116];
        v115 = [v120 lastObject];
        [v115 setDelegate:0];
        [v120 removeLastObject];
        [(RemoteUIController *)self _didRemoveObjectModel:v115];
        [(RemoteUIController *)self _willPresentObjectModel:v11 modally:0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v73 = [v115 displayedPages];
          v74 = [v116 displayedPages];
          v75 = [v73 arrayByAddingObjectsFromArray:v74];

          v76 = [v11 _firstPageForPresentation];
          v148[0] = v76;
          v148[1] = v114;
          v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:2];

          [(UINavigationController *)v119 settingsCompatibleReplaceViewControllers:v75 byViewControllers:v77 animated:0];
        }

        else
        {
          v78 = [(RUINavigationController *)v119 viewControllers];
          v75 = [v78 mutableCopy];

          v138 = 0u;
          v139 = 0u;
          v136 = 0u;
          v137 = 0u;
          v79 = [v116 displayedPages];
          v80 = [v79 reverseObjectEnumerator];

          v81 = [v80 countByEnumeratingWithState:&v136 objects:v147 count:16];
          if (v81)
          {
            v82 = *v137;
            while (1)
            {
              if (*v137 != v82)
              {
                objc_enumerationMutation(v80);
              }

              [v75 removeLastObject];
              if (!--v81)
              {
                v81 = [v80 countByEnumeratingWithState:&v136 objects:v147 count:16];
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
          v83 = [v115 displayedPages];
          v84 = [v83 reverseObjectEnumerator];

          v85 = [v84 countByEnumeratingWithState:&v132 objects:v146 count:16];
          if (v85)
          {
            v86 = *v133;
            while (1)
            {
              if (*v133 != v86)
              {
                objc_enumerationMutation(v84);
              }

              [v75 removeLastObject];
              if (!--v85)
              {
                v85 = [v84 countByEnumeratingWithState:&v132 objects:v146 count:16];
                if (!v85)
                {
                  break;
                }
              }
            }
          }

          v87 = [v11 _firstPageForPresentation];
          [v75 addObject:v87];

          [v75 addObject:v114];
          [(RUINavigationController *)v119 setViewControllers:v75 animated:0];
        }

        [v120 addObject:v11];
        [v11 setDelegate:self];
        v88 = [(RemoteUIController *)self telemetryDelegate];
        [v11 setTelemetryDelegate:v88];

        [(UINavigationController *)v119 settingsCompatiblePopViewController];
        [(RemoteUIController *)self _didPresentObjectModel:v11 modally:0];
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

    if ([v12 topSignal] != 3)
    {
      if ([v12 topSignal] == 8)
      {
        [(RemoteUIController *)self refreshTopModelWithModel:v11];
        v14[2](v14);
      }

      else if ([v12 topSignal] == 5 || objc_msgSend(v12, "topSignal") == 6 || objc_msgSend(v12, "topSignal") == 9)
      {
        [(RemoteUIController *)self _willPresentObjectModel:v11 modally:1];
        v70 = [v12 topSignal];
        if (v70 == 9)
        {
          v118 = 0;
          v71 = 2;
        }

        else
        {
          v71 = [v12 topSignal] == 6;
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

        [(NSMutableArray *)self->_modalObjectModels addObject:v11];
        if (self->_modalNavigationController)
        {
          v129[0] = MEMORY[0x277D85DD0];
          v129[1] = 3221225472;
          v129[2] = __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_145;
          v129[3] = &unk_2782E8610;
          v129[4] = self;
          v93 = v11;
          v130 = v93;
          v131 = v14;
          v94 = _Block_copy(v129);
          [v93 presentInParentViewController:self->_modalNavigationController animated:-[RemoteUIController _shouldAnimate](self completion:{"_shouldAnimate"), v94}];
        }

        else
        {
          v95 = [v11 newNavigationControllerForPresentation];
          v96 = self->_modalNavigationController;
          self->_modalNavigationController = v95;

          [(RUINavigationController *)self->_modalNavigationController setRuiModalPresentationStyle:v71];
          if (objc_opt_respondsToSelector())
          {
            v97 = objc_loadWeakRetained(&self->_hostViewController);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v98 = [v97 navigationController];
              v99 = v98;
              if (v98)
              {
                v100 = v98;
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
          if (v70 == 9)
          {
            v103 = 0;
          }

          if (v103)
          {
            v104 = [MEMORY[0x277D75418] currentDevice];
            v105 = [v104 userInterfaceIdiom] == 1;

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

          v107 = [(RemoteUIController *)self delegate];
          v108 = objc_opt_respondsToSelector();

          if (v108)
          {
            v109 = [(RemoteUIController *)self delegate];
            [v109 remoteUIController:self willPresentModalNavigationController:self->_modalNavigationController];
          }

          v124[0] = MEMORY[0x277D85DD0];
          v124[1] = 3221225472;
          v124[2] = __76__RemoteUIController_loader_receivedObjectModel_topActionSignal_completion___block_invoke_3;
          v124[3] = &unk_2782E8610;
          v124[4] = self;
          v125 = v11;
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

      else if ([v12 topSignal] == 7)
      {
        [v11 setDelegate:self];
        v112 = [(RemoteUIController *)self telemetryDelegate];
        [v11 setTelemetryDelegate:v112];

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
      v59 = v58;
    }

    else
    {
      v59 = [(RemoteUIController *)self hostingController];
      if (!v59)
      {
        v92 = _RUILoggingFacility();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
        {
          [RemoteUIController loader:receivedObjectModel:topActionSignal:completion:];
        }

        v59 = 0;
        goto LABEL_106;
      }
    }

    [(RemoteUIController *)self _replaceObjectModelWithObjectModel:v11];
LABEL_106:
    v14[2](v14);

    goto LABEL_73;
  }

  v18 = [(NSMutableArray *)self->_objectModels lastObject];
  v19 = [v18 visiblePage];
  v20 = self->_pageOriginatingLoad;

  if (v19 == v20)
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

- (void)_replaceModalRUIController:(id)a3 byController:(id)a4 completion:(id)a5
{
  v14 = a4;
  v8 = a5;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [v14 setHostViewController:WeakRetained];

  v11 = objc_loadWeakRetained(&self->_hostViewController);
  v12 = [v11 conformsToProtocol:&unk_282DBDDE8];

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_hostViewController);
    [v13 replaceModalRUIController:v9 byController:v14 completion:v8];

    v8 = v13;
  }

  else
  {
    [v9 dismissViewControllerAnimated:-[RemoteUIController _shouldAnimate](self completion:{"_shouldAnimate"), 0}];

    [(RemoteUIController *)self _presentModalRUIController:self->_modalNavigationController completion:v8];
  }
}

- (void)_presentModalRUIController:(id)a3 completion:(id)a4
{
  v12 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_hostViewController);
  [v12 setHostViewController:WeakRetained];

  v8 = objc_loadWeakRetained(&self->_hostViewController);
  v9 = [v8 conformsToProtocol:&unk_282DBDDE8];

  v10 = objc_loadWeakRetained(&self->_hostViewController);
  v11 = v10;
  if (v9)
  {
    [v10 presentModalRUIController:v12 completion:v6];
  }

  else
  {
    [v10 presentViewController:v12 animated:-[RemoteUIController _shouldAnimate](self completion:{"_shouldAnimate"), v6}];
  }
}

- (void)refreshTopModelWithModel:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(RemoteUIController *)self _objectModelStack];
  v6 = [v5 lastObject];

  v7 = [v4 identifier];
  v8 = [v6 identifier];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    [v6 refreshWithObjectModel:v4];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 remoteUIController:self didRefreshObjectModel:v6];
    }
  }

  else if (_isInternalInstall())
  {
    v13 = _RUILoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v4 identifier];
      v15 = [v6 identifier];
      v16 = 138412546;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_21B93D000, v13, OS_LOG_TYPE_DEFAULT, "Refresh action detected, but identifiers did not match; New: <%@> Old: <%@>", &v16, 0x16u);
    }
  }
}

- (void)loader:(id)a3 willLoadRequest:(id)a4 redirectResponse:(id)a5 completionHandler:(id)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [(RemoteUIController *)self _objectModelStack];
  v13 = [v12 lastObject];

  [v13 startActivityIndicator];
  if (!v11)
  {
    [RemoteUIController loader:willLoadRequest:redirectResponse:completionHandler:];
  }

  if (_isInternalInstall())
  {
    v14 = _RUILoggingFacility();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v9 URL];
      *buf = 138412290;
      v31 = v15;
      _os_log_impl(&dword_21B93D000, v14, OS_LOG_TYPE_DEFAULT, "RUIController sending delegate redirect call for URL %@", buf, 0xCu);
    }
  }

  v16 = [v9 mutableCopy];
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
      v23 = [v21 remoteUIController:self shouldLoadRequest:v16 redirectResponse:v10];

      if (!v23)
      {
        [v13 stopActivityIndicator];
        (*(v11 + 2))(v11, 0, 0);
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

    (*(v11 + 2))(v11, v16, 0);
    goto LABEL_15;
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __80__RemoteUIController_loader_willLoadRequest_redirectResponse_completionHandler___block_invoke;
  v26[3] = &unk_2782E8570;
  v29 = v11;
  v27 = v16;
  v28 = v13;
  [v19 remoteUIController:self shouldLoadRequest:v27 redirectResponse:v10 withCompletionHandler:v26];

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

- (id)parser:(id)a3 createPageWithName:(id)a4 attributes:(id)a5
{
  v7 = a4;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained(&self->_delegate);
    v12 = [v11 remoteUIController:self createPageWithName:v7 attributes:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)parentViewControllerForObjectModel:(id)a3
{
  v4 = a3;
  if ([(NSMutableArray *)self->_objectModels containsObject:v4])
  {
    v5 = [(RemoteUIController *)self navigationController];
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([(NSMutableArray *)self->_modalObjectModels containsObject:v4])
  {
    v5 = self->_modalNavigationController;
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

- (id)visibleElementWithIdentifier:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
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

        v10 = [*(*(&v22 + 1) + 8 * v9) visiblePage];
        v11 = [v10 subElementWithID:v4];

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

          v16 = [*(*(&v18 + 1) + 8 * v15) visiblePage];
          v11 = [v16 subElementWithID:v4];

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

- (void)objectModel:(id)a3 didNavigateBackFromController:(id)a4 withGesture:(BOOL)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a4;
  if (_isInternalInstall())
  {
    v9 = _RUILoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = v8;
      _os_log_impl(&dword_21B93D000, v9, OS_LOG_TYPE_DEFAULT, "Object model navigated back from %@", &v20, 0xCu);
    }
  }

  v10 = 24;
  if (!self->_modalNavigationController)
  {
    v10 = 16;
  }

  v11 = *(&self->super.isa + v10);
  v12 = [(RemoteUIController *)self loader];
  [v12 cancel];

  v13 = [v11 lastObject];
  v14 = [v13 displayedPages];
  v15 = [v14 count];
  if (v15 == 1)
  {
    v5 = [v13 displayedPages];
    v16 = [v5 lastObject];
    v6 = v16;
    if (v16 == v8)
    {

LABEL_14:
      if (_isInternalInstall())
      {
        v19 = _RUILoggingFacility();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412290;
          v21 = v13;
          _os_log_impl(&dword_21B93D000, v19, OS_LOG_TYPE_DEFAULT, "Object model has no more pages, popping: %@", &v20, 0xCu);
        }
      }

      [v11 removeLastObject];
      [(RemoteUIController *)self _didRemoveObjectModel:v13];
      goto LABEL_19;
    }
  }

  v17 = [v13 displayedPages];
  v18 = [v17 count];

  if (v15 == 1)
  {
  }

  if (!v18)
  {
    goto LABEL_14;
  }

LABEL_19:
}

- (void)objectModel:(id)a3 elementDidChange:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(RemoteUIController *)self loader];
  [v8 cancel];

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
  v27 = v7;
  v28 = v6;
  v24 = v6;
  v25 = v7;
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

- (void)objectModel:(id)a3 willLoadLinkURL:(id)a4 attributes:(id)a5
{
  v10 = a5;
  v6 = [v10 objectForKeyedSubscript:@"url"];
  if (v6)
  {
    v7 = v6;
    v8 = [v10 objectForKeyedSubscript:@"startSMSAutoFill"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      [(RemoteUIController *)self _beginListeningForSMSAutoFill];
    }
  }
}

- (void)objectModel:(id)a3 pressedLink:(id)a4 httpMethod:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = a4;
  v13 = [a5 lowercaseString];
  LODWORD(a4) = [v13 isEqualToString:@"post"];

  if (a4)
  {
    v14 = [v10 postbackData];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSMutableArray *)self->_objectModels lastObject];
  v16 = [v15 visiblePage];
  pageOriginatingLoad = self->_pageOriginatingLoad;
  self->_pageOriginatingLoad = v16;

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __68__RemoteUIController_objectModel_pressedLink_httpMethod_completion___block_invoke;
  v19[3] = &unk_2782E7F08;
  v19[4] = self;
  v20 = v11;
  v18 = v11;
  [(RemoteUIController *)self _loadURL:v12 postBody:v14 fromObjectModel:v10 completion:v19];
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

- (BOOL)objectModel:(id)a3 shouldDisplayNamedElement:(id)a4 page:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(RemoteUIController *)self delegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(RemoteUIController *)self delegate];
    v14 = [v13 remoteUIController:self objectModel:v8 shouldDisplayNamedElement:v9 page:v10];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

- (BOOL)_objectModelPageWantsHSATokens:(id)a3
{
  v3 = a3;
  v4 = [v3 attributes];
  v5 = [v4 objectForKeyedSubscript:@"tokenReceivedFunction"];
  if ([v5 length])
  {
    v6 = 1;
  }

  else if ([v3 hasPasscodeView])
  {
    v7 = [v3 passcodeViewOM];
    v8 = [v7 attributes];
    v9 = [v8 objectForKeyedSubscript:@"SMSAutoFill"];
    v6 = [v9 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_objectModel:(id)a3 receivedToken:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (_isInternalInstall())
  {
    v8 = _RUILoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v7;
      _os_log_impl(&dword_21B93D000, v8, OS_LOG_TYPE_DEFAULT, "Got an autofill token: %@", buf, 0xCu);
    }
  }

  if (v7)
  {
    v9 = [v6 visiblePage];
    [v9 publishSMSToken:v7];
  }

  v10 = [(RemoteUIController *)self parentViewControllerForObjectModel:v6];
  v11 = [v10 presentedViewController];

  if (v11)
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

  v13 = [v6 visiblePage];
  v14 = [v13 attributes];
  v15 = [v14 objectForKeyedSubscript:@"tokenReceivedFunction"];
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

    v18 = [v6 visiblePage];
    v19 = [v18 attributes];
    v20 = [v19 objectForKeyedSubscript:@"tokenReceivedFunction"];
    v31 = v7;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    v22 = [v6 invokeScriptFunction:v20 withArguments:v21];

LABEL_18:
    [(RemoteUIController *)self _stopListeningForSMSAutoFill];
    goto LABEL_32;
  }

  v23 = [v6 visiblePage];
  if ([v23 hasPasscodeView])
  {
    v24 = [v6 visiblePage];
    v25 = [v24 passcodeViewOM];
    v26 = [v25 attributes];
    v27 = [v26 objectForKeyedSubscript:@"SMSAutoFill"];
    v30 = [v27 BOOLValue];

    if (v30)
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

      v18 = [v6 visiblePage];
      v19 = [v18 passcodeViewOM];
      [v19 autofillWithToken:v7];
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

  objc_storeStrong(&self->_SMSAutoFillToken, a4);
LABEL_32:
}

- (void)_beginListeningForSMSAutoFill
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void RUIHSAAuthenticationRegisterIncomingAuthenticationTokenBlockWithIdentifier(__strong HSAAuthenticationClientIncomingAuthenticationTokenBlock, CFStringRef)"}];
  [v0 handleFailureInFunction:v1 file:@"RemoteUIController.m" lineNumber:46 description:{@"%s", dlerror()}];

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
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void RUIHSAAuthenticationUnregisterIncomingAuthenticationTokenBlockWithIdentifier(CFStringRef)"];
  [v0 handleFailureInFunction:v1 file:@"RemoteUIController.m" lineNumber:47 description:{@"%s", dlerror()}];

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

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 ruiModalPresentationStyle];
  }

  else
  {
    v9 = 1;
  }

  v10 = [RUIModalPresentationController alloc];
  v11 = [(RemoteUIController *)self style];
  v12 = [(RUIModalPresentationController *)v10 initWithPresentedViewController:v7 presentingViewController:v8 modalPresentationStyle:v9 style:v11];

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