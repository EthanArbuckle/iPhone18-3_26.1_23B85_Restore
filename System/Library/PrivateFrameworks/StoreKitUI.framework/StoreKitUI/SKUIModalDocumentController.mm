@interface SKUIModalDocumentController
- (BOOL)_popoverController:(id)controller containsStackItem:(id)item;
- (BOOL)composeReviewViewController:(id)controller shouldSubmitReview:(id)review;
- (CGRect)_centerRect:(id)rect adjust:(BOOL)adjust;
- (NSArray)documents;
- (SKUIModalDocumentController)init;
- (SKUIModalDocumentDataSource)dataSource;
- (SKUIModalDocumentDelegate)delegate;
- (SKUIModalSourceViewProvider)modalSourceViewProvider;
- (UINavigationControllerDelegate)navigationControllerDelegate;
- (id)_imageForImageViewElement:(id)element;
- (id)_modalSourceViewProviderFromStackItems;
- (id)_overlayStackItems;
- (id)_presenterViewController;
- (id)_showOverlayContainerViewController;
- (id)navigationDocumentForDocument:(id)document;
- (id)navigationDocumentForNavigationController:(id)controller;
- (void)_composeReviewViewControllerDidFinish:(id)finish finished:(BOOL)finished;
- (void)_dismissOverlayControllerWithStackItem:(id)item animated:(BOOL)animated;
- (void)_garbageCollectActivityViewController:(id)controller;
- (void)_overlayControllerBackstopAction:(id)action;
- (void)_popDocument:(BOOL)document completion:(id)completion;
- (void)_popDocumentSkippingUserInterfaceUpdates;
- (void)_popOverlayStackItem:(id)item animated:(BOOL)animated completion:(id)completion;
- (void)_popPopoverStackItem:(id)item animated:(BOOL)animated completion:(id)completion;
- (void)_presentAlertForDialog:(id)dialog;
- (void)_presentOverlayViewControllersFromNavigationController:(id)controller;
- (void)_presetPopoverSheetDocument:(id)document viewController:(id)controller popoverPresentationController:(id)presentationController;
- (void)_promptForStarRating:(id)rating;
- (void)_pushCharityDocument:(id)document options:(id)options;
- (void)_pushDialogDocument:(id)document options:(id)options;
- (void)_pushFamilySetupDocument:(id)document options:(id)options;
- (void)_pushGiftDocument:(id)document options:(id)options;
- (void)_pushOverlayStackItem:(id)item;
- (void)_pushPlaylistDocument:(id)document options:(id)options;
- (void)_pushPopoverSheetDocument:(id)document viewController:(id)controller popoverPresentationController:(id)presentationController options:(id)options;
- (void)_pushPopoverStackItem:(id)item;
- (void)_pushRedeemDocument:(id)document options:(id)options;
- (void)_pushSheetDocument:(id)document viewController:(id)controller;
- (void)_pushSheetStackItem:(id)item;
- (void)_sendDidFinishIfApplicable;
- (void)_unloadDocumentForPopoverController:(id)controller;
- (void)_unloadDocumentForViewController:(id)controller;
- (void)composeReviewViewController:(id)controller didFailWithDialog:(id)dialog;
- (void)composeReviewViewController:(id)controller didSubmitWithEdit:(BOOL)edit;
- (void)dealloc;
- (void)ensureOverlayNavigationControllerStackConsistencyForNavigationController:(id)controller;
- (void)familySetupViewController:(id)controller didCompleteWithSuccess:(BOOL)success;
- (void)giftViewController:(id)controller didFinishWithResult:(BOOL)result;
- (void)init;
- (void)overlayContainerViewController:(id)controller willPopViewController:(id)viewController;
- (void)popAllDocuments;
- (void)popDocument;
- (void)popoverControllerDidDismissPopover:(id)popover;
- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view;
- (void)popoverPresentationControllerDidDismissPopover:(id)popover;
- (void)pushDocument:(id)document options:(id)options;
- (void)replaceDocument:(id)document withDocument:(id)withDocument options:(id)options;
- (void)setOverlayNavigationController:(id)controller withTransitionCoordinator:(id)coordinator;
- (void)unloadDocumentForViewController:(id)controller;
@end

@implementation SKUIModalDocumentController

- (SKUIModalDocumentController)init
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIModalDocumentController init];
  }

  v7.receiver = self;
  v7.super_class = SKUIModalDocumentController;
  v3 = [(SKUIModalDocumentController *)&v7 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stackItems = v3->_stackItems;
    v3->_stackItems = v4;
  }

  return v3;
}

- (void)dealloc
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_composeReviewViewControllers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      v7 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v19 + 1) + 8 * v7++) setDelegate:0];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v5);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_giftViewControllers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v15 + 1) + 8 * v12++) setDelegate:0];
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v10);
  }

  backstopControl = [(SKUIOverlayContainerViewController *)self->_overlayViewController backstopControl];
  [backstopControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  [(UIPopoverController *)self->_popoverController setDelegate:0];
  v14.receiver = self;
  v14.super_class = SKUIModalDocumentController;
  [(SKUIModalDocumentController *)&v14 dealloc];
}

- (NSArray)documents
{
  v16 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_stackItems;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        document = [*(*(&v11 + 1) + 8 * i) document];
        if (document)
        {
          [array addObject:document];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)navigationDocumentForDocument:(id)document
{
  documentCopy = document;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__83;
  v16 = __Block_byref_object_dispose__83;
  v17 = 0;
  stackItems = self->_stackItems;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SKUIModalDocumentController_navigationDocumentForDocument___block_invoke;
  v9[3] = &unk_2781FF790;
  v6 = documentCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)stackItems enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __61__SKUIModalDocumentController_navigationDocumentForDocument___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 document];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    v8 = [v11 navigationDocumentController];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (id)navigationDocumentForNavigationController:(id)controller
{
  controllerCopy = controller;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__83;
  v16 = __Block_byref_object_dispose__83;
  v17 = 0;
  stackItems = self->_stackItems;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SKUIModalDocumentController_navigationDocumentForNavigationController___block_invoke;
  v9[3] = &unk_2781FF790;
  v6 = controllerCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)stackItems enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __73__SKUIModalDocumentController_navigationDocumentForNavigationController___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  obj = [a2 navigationDocumentController];
  v6 = [obj navigationController];
  v7 = *(a1 + 32);

  if (v6 == v7)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
    *a4 = 1;
  }
}

- (void)popAllDocuments
{
  for (i = self->_stackItems; [(NSMutableArray *)i count]; i = self->_stackItems)
  {
    [(SKUIModalDocumentController *)self _popDocument:0 completion:0];
  }

  [(SKUIModalDocumentController *)self _sendDidFinishIfApplicable];
}

- (void)popDocument
{
  lastObject = [(NSMutableArray *)self->_stackItems lastObject];
  v4 = lastObject;
  if (lastObject)
  {
    isAnimated = [lastObject isAnimated];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__SKUIModalDocumentController_popDocument__block_invoke;
    v6[3] = &unk_2781F80F0;
    v6[4] = self;
    [(SKUIModalDocumentController *)self _popDocument:isAnimated completion:v6];
  }

  else
  {
    [(SKUIModalDocumentController *)self _sendDidFinishIfApplicable];
  }
}

- (void)pushDocument:(id)document options:(id)options
{
  documentCopy = document;
  optionsCopy = options;
  delegate = [(SKUIModalDocumentController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) == 0 || (-[SKUIModalDocumentController delegate](self, "delegate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 modalDocumentController:self willPushDocument:documentCopy options:optionsCopy], v10, v11))
  {
    templateElement = [documentCopy templateElement];
    elementType = [templateElement elementType];
    if (elementType <= 86)
    {
      if (elementType > 38)
      {
        if (elementType == 39)
        {
          [(SKUIModalDocumentController *)self _pushFamilySetupDocument:documentCopy options:optionsCopy];
        }

        else
        {
          if (elementType != 44)
          {
            goto LABEL_28;
          }

          [(SKUIModalDocumentController *)self _pushGiftDocument:documentCopy options:optionsCopy];
        }
      }

      else if (elementType == 16)
      {
        [(SKUIModalDocumentController *)self _pushCharityDocument:documentCopy options:optionsCopy];
      }

      else
      {
        if (elementType != 31)
        {
          goto LABEL_28;
        }

        [(SKUIModalDocumentController *)self _pushDialogDocument:documentCopy options:optionsCopy];
      }
    }

    else
    {
      if (elementType > 100)
      {
        switch(elementType)
        {
          case 101:
            reviewMetadataURLString = [SKUIReportAConcernConfiguration configurationWithTemplateElement:templateElement];
            v16 = [[SKUIReportAConcernViewController alloc] initWithConfiguration:reviewMetadataURLString];
            reportAConcernViewController = self->_reportAConcernViewController;
            if (reportAConcernViewController)
            {
              [(SKUIReportAConcernViewController *)reportAConcernViewController dismissAnimated:0];
            }

            v18 = self->_reportAConcernViewController;
            self->_reportAConcernViewController = v16;
            v15 = v16;

            [(SKUIModalDocumentController *)self _pushSheetDocument:documentCopy viewController:v15];
            goto LABEL_50;
          case 117:
            reviewMetadataURLString = [[SKUIDocumentStackItem alloc] initWithDocument:documentCopy presentationOptions:optionsCopy];
            [(SKUIDocumentStackItem *)reviewMetadataURLString setUsesNavigationControllerForModalPresentation:0];
            v19 = [SKUIShareTemplateActivityViewController alloc];
            clientContext = [(SKUIModalDocumentController *)self clientContext];
            v15 = [(SKUIShareTemplateActivityViewController *)v19 initWithTemplateElement:templateElement clientContext:clientContext];

            [(SKUIDocumentStackItem *)reviewMetadataURLString setViewController:v15];
            objc_initWeak(&location, templateElement);
            objc_initWeak(&v42, self);
            objc_initWeak(&from, v15);
            v37[0] = MEMORY[0x277D85DD0];
            v37[1] = 3221225472;
            v37[2] = __52__SKUIModalDocumentController_pushDocument_options___block_invoke;
            v37[3] = &unk_2781FF7E0;
            objc_copyWeak(&v38, &location);
            objc_copyWeak(&v39, &from);
            objc_copyWeak(&v40, &v42);
            [(SKUIDocumentStackItem *)v15 setCompletionWithItemsHandler:v37];
            presentationType = [(SKUIDocumentStackItem *)reviewMetadataURLString presentationType];
            v22 = [presentationType isEqualToString:0x28280B068];

            if (v22)
            {
              [(SKUIModalDocumentController *)self _pushPopoverStackItem:reviewMetadataURLString];
            }

            else
            {
              currentDevice = [MEMORY[0x277D75418] currentDevice];
              userInterfaceIdiom = [currentDevice userInterfaceIdiom];

              if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
              {
                popoverPresentationController = [(SKUIDocumentStackItem *)v15 popoverPresentationController];
                [(SKUIModalDocumentController *)self _pushPopoverSheetDocument:documentCopy viewController:v15 popoverPresentationController:popoverPresentationController options:optionsCopy];
              }

              else
              {
                [(SKUIModalDocumentController *)self _pushSheetStackItem:reviewMetadataURLString];
              }
            }

            [(NSMutableArray *)self->_stackItems addObject:reviewMetadataURLString];
            objc_destroyWeak(&v40);
            objc_destroyWeak(&v39);
            objc_destroyWeak(&v38);
            objc_destroyWeak(&from);
            objc_destroyWeak(&v42);
            objc_destroyWeak(&location);
            goto LABEL_50;
          case 153:
            reviewMetadataURLString = [templateElement reviewMetadataURLString];
            if (reviewMetadataURLString)
            {
              v15 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:reviewMetadataURLString];
            }

            else
            {
              v15 = 0;
            }

            v28 = objc_alloc_init(SKUIComposeReviewViewController);
            [(SKUIComposeReviewViewController *)v28 setDelegate:self];
            [(SKUIComposeReviewViewController *)v28 setTemplateViewElement:templateElement];
            composeReviewViewControllers = self->_composeReviewViewControllers;
            if (!composeReviewViewControllers)
            {
              v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v31 = self->_composeReviewViewControllers;
              self->_composeReviewViewControllers = v30;

              composeReviewViewControllers = self->_composeReviewViewControllers;
            }

            [(NSMutableArray *)composeReviewViewControllers addObject:v28];
            objc_initWeak(&location, self);
            v34[0] = MEMORY[0x277D85DD0];
            v34[1] = 3221225472;
            v34[2] = __52__SKUIModalDocumentController_pushDocument_options___block_invoke_3;
            v34[3] = &unk_2781F8168;
            objc_copyWeak(&v36, &location);
            v32 = v28;
            v35 = v32;
            [(SKUIComposeReviewViewController *)v32 loadReviewWithURL:v15 completionBlock:v34];
            [(SKUIModalDocumentController *)self _pushSheetDocument:documentCopy viewController:v32];

            objc_destroyWeak(&v36);
            objc_destroyWeak(&location);

            goto LABEL_50;
        }

LABEL_28:
        reviewMetadataURLString = [(SKUIModalDocumentController *)self clientContext];
        v15 = [[SKUIDocumentStackItem alloc] initWithDocument:documentCopy presentationOptions:optionsCopy];
        v23 = [(SKUIDocumentStackItem *)reviewMetadataURLString modalDocumentViewControllerForDocument:documentCopy options:optionsCopy];
        if (v23)
        {
          if (objc_opt_respondsToSelector())
          {
            [v23 setModalDocumentController:self];
          }

          [v23 setClientContext:reviewMetadataURLString];
          if (objc_opt_respondsToSelector())
          {
            -[SKUIDocumentStackItem setUsesNavigationControllerForModalPresentation:](v15, "setUsesNavigationControllerForModalPresentation:", [v23 needsNavigationDocument]);
          }

          v24 = v23;
        }

        else
        {
          v24 = [[SKUIDocumentContainerViewController alloc] initWithDocument:documentCopy options:optionsCopy clientContext:reviewMetadataURLString];
          if (!v24)
          {
            NSLog(&cfstr_NoViewControll_0.isa, documentCopy, templateElement, optionsCopy);
LABEL_49:

LABEL_50:
            goto LABEL_51;
          }
        }

        [(SKUIDocumentStackItem *)v15 setViewController:v24];
        presentationType2 = [(SKUIDocumentStackItem *)v15 presentationType];
        if ([presentationType2 isEqualToString:0x2828080A8])
        {
          [(SKUIModalDocumentController *)self _pushOverlayStackItem:v15];
        }

        else if ([presentationType2 isEqualToString:0x28280B068])
        {
          [(SKUIModalDocumentController *)self _pushPopoverStackItem:v15];
        }

        else
        {
          [(SKUIModalDocumentController *)self _pushSheetStackItem:v15];
        }

        [(NSMutableArray *)self->_stackItems addObject:v15];

        goto LABEL_49;
      }

      if (elementType == 87)
      {
        [(SKUIModalDocumentController *)self _pushPlaylistDocument:documentCopy options:optionsCopy];
      }

      else
      {
        if (elementType != 98)
        {
          goto LABEL_28;
        }

        [(SKUIModalDocumentController *)self _pushRedeemDocument:documentCopy options:optionsCopy];
      }
    }

LABEL_51:
  }
}

void __52__SKUIModalDocumentController_pushDocument_options___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__SKUIModalDocumentController_pushDocument_options___block_invoke_2;
  v5[3] = &unk_2781FF7B8;
  objc_copyWeak(&v7, a1 + 4);
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v8, a1 + 5);
  objc_copyWeak(&v9, a1 + 6);
  dispatch_async(MEMORY[0x277D85CD0], v5);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&v7);
}

void __52__SKUIModalDocumentController_pushDocument_options___block_invoke_2(void **a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v2 = SKUIShareSheetActivityTypeForUIActivityType(a1[4]);
    if (v2)
    {
      v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v2, @"activityType", 0}];
    }

    else
    {
      v3 = 0;
    }

    [WeakRetained dispatchEventOfType:14 canBubble:1 isCancelable:1 extraInfo:v3 completionBlock:0];
  }

  v4 = objc_loadWeakRetained(a1 + 6);
  if (v4)
  {
    v5 = objc_loadWeakRetained(a1 + 7);
    [v5 _garbageCollectActivityViewController:v4];

    [v4 setCompletionWithItemsHandler:0];
  }
}

void __52__SKUIModalDocumentController_pushDocument_options___block_invoke_3(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _composeReviewViewControllerDidFinish:*(a1 + 32) finished:0];
  }
}

- (void)replaceDocument:(id)document withDocument:(id)withDocument options:(id)options
{
  v32 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  withDocumentCopy = withDocument;
  optionsCopy = options;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = self->_stackItems;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = *v28;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        document = [v15 document];

        if (document == documentCopy)
        {
          v12 = v15;
          goto LABEL_11;
        }
      }

      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  presentationType = [v12 presentationType];
  v18 = [presentationType isEqualToString:0x2828080A8];

  if (v18)
  {
    v19 = [SKUIDocumentContainerViewController alloc];
    clientContext = [(SKUIModalDocumentController *)self clientContext];
    v21 = [(SKUIDocumentContainerViewController *)v19 initWithDocument:withDocumentCopy options:optionsCopy clientContext:clientContext];

    if (v21)
    {
      viewController = [v12 viewController];
      navigationController = [viewController navigationController];
      v24 = navigationController;
      if (navigationController)
      {
        viewControllers = [navigationController viewControllers];
        v26 = [viewControllers mutableCopy];

        [v26 replaceObjectAtIndex:objc_msgSend(v26 withObject:{"indexOfObjectIdenticalTo:", viewController), v21}];
        [v24 setViewControllers:v26 animated:0];
      }

      else
      {
        [(SKUIOverlayContainerViewController *)self->_overlayViewController replaceViewController:viewController withViewController:v21];
      }

      [v12 setViewController:v21];
      [documentCopy onUnload];
      [v12 _setDocument:withDocumentCopy];
    }

    else
    {
      viewController = [withDocumentCopy templateElement];
      NSLog(&cfstr_NoViewControll_0.isa, withDocumentCopy, viewController, optionsCopy);
    }
  }

  else
  {
    NSLog(&cfstr_InvalidReplace.isa);
  }
}

- (void)setOverlayNavigationController:(id)controller withTransitionCoordinator:(id)coordinator
{
  v21 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  coordinatorCopy = coordinator;
  p_overlayNavigationController = &self->_overlayNavigationController;
  if (self->_overlayNavigationController != controllerCopy)
  {
    if (controllerCopy)
    {
      viewControllers = [(SKUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
      [(SKUIModalDocumentController *)self _dismissOverlayControllerWithStackItem:0 animated:0];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v11 = viewControllers;
      v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v17;
        do
        {
          v15 = 0;
          do
          {
            if (*v17 != v14)
            {
              objc_enumerationMutation(v11);
            }

            [(UINavigationController *)controllerCopy pushViewController:*(*(&v16 + 1) + 8 * v15++) animated:0, v16];
          }

          while (v13 != v15);
          v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v13);
      }
    }

    else
    {
      [(SKUIModalDocumentController *)self _presentOverlayViewControllersFromNavigationController:?];
    }

    objc_storeStrong(p_overlayNavigationController, controller);
  }
}

- (void)ensureOverlayNavigationControllerStackConsistencyForNavigationController:(id)controller
{
  controllerCopy = controller;
  v5 = controllerCopy;
  if (controllerCopy && self->_overlayNavigationController == controllerCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__83;
    v15 = __Block_byref_object_dispose__83;
    array = [MEMORY[0x277CBEB18] array];
    stackItems = self->_stackItems;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __104__SKUIModalDocumentController_ensureOverlayNavigationControllerStackConsistencyForNavigationController___block_invoke;
    v7[3] = &unk_2781FF808;
    v8 = v5;
    selfCopy = self;
    v10 = &v11;
    [(NSMutableArray *)stackItems enumerateObjectsUsingBlock:v7];
    objc_storeStrong(&self->_stackItems, v12[5]);

    _Block_object_dispose(&v11, 8);
  }
}

void __104__SKUIModalDocumentController_ensureOverlayNavigationControllerStackConsistencyForNavigationController___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 presentationType];
  [v3 isEqualToString:0x2828080A8];

  v4 = [*(a1 + 32) viewControllers];
  v5 = [v10 viewController];
  if ([v4 containsObject:v5])
  {

LABEL_4:
    [*(*(*(a1 + 48) + 8) + 40) addObject:v10];
    goto LABEL_6;
  }

  v6 = [*(*(a1 + 40) + 72) viewControllers];
  v7 = [v10 viewController];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    goto LABEL_4;
  }

  v9 = [v10 document];
  [v9 onUnload];

LABEL_6:
}

- (void)_popDocumentSkippingUserInterfaceUpdates
{
  lastObject = [(NSMutableArray *)self->_stackItems lastObject];
  if (lastObject)
  {
    document = [lastObject document];
    [document onUnload];

    [(NSMutableArray *)self->_stackItems removeLastObject];
  }

  [(SKUIModalDocumentController *)self _sendDidFinishIfApplicable];
}

- (void)familySetupViewController:(id)controller didCompleteWithSuccess:(BOOL)success
{
  controllerCopy = controller;
  [controllerCopy setDelegate:0];
  [controllerCopy dismissViewControllerAnimated:1 completion:0];
}

- (void)composeReviewViewController:(id)controller didFailWithDialog:(id)dialog
{
  dialogCopy = dialog;
  [(SKUIModalDocumentController *)self _composeReviewViewControllerDidFinish:controller finished:0];
  [(SKUIModalDocumentController *)self _presentAlertForDialog:dialogCopy];
}

- (BOOL)composeReviewViewController:(id)controller shouldSubmitReview:(id)review
{
  controllerCopy = controller;
  [review rating];
  v8 = v7;
  if (v7 < 0.00000011921)
  {
    [(SKUIModalDocumentController *)self _promptForStarRating:controllerCopy];
  }

  return v8 >= 0.00000011921;
}

- (void)composeReviewViewController:(id)controller didSubmitWithEdit:(BOOL)edit
{
  editCopy = edit;
  v12[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  templateViewElement = [controllerCopy templateViewElement];

  if (templateViewElement)
  {
    templateViewElement2 = [controllerCopy templateViewElement];
    v11 = @"edited";
    v9 = [MEMORY[0x277CCABB0] numberWithBool:editCopy];
    v12[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [templateViewElement2 dispatchEventOfType:14 canBubble:1 isCancelable:1 extraInfo:v10 completionBlock:0];
  }

  [(SKUIModalDocumentController *)self _composeReviewViewControllerDidFinish:controllerCopy finished:1];
}

- (void)_composeReviewViewControllerDidFinish:(id)finish finished:(BOOL)finished
{
  finishCopy = finish;
  [(SKUIModalDocumentController *)self _unloadDocumentForViewController:finishCopy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__SKUIModalDocumentController__composeReviewViewControllerDidFinish_finished___block_invoke;
  v7[3] = &__block_descriptor_33_e5_v8__0l;
  finishedCopy = finished;
  [finishCopy dismissViewControllerAnimated:1 completion:v7];
  [finishCopy setDelegate:0];
  [(NSMutableArray *)self->_composeReviewViewControllers removeObjectIdenticalTo:finishCopy];

  [(SKUIModalDocumentController *)self _sendDidFinishIfApplicable];
}

void __78__SKUIModalDocumentController__composeReviewViewControllerDidFinish_finished___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v2 = MEMORY[0x277D755B8];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v2 imageNamed:@"toast-review" inBundle:v3];

    v4 = [SKUIToastViewController alloc];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"TOAST_REVIEW_FINISHED_PRIMARY" value:&stru_2827FFAC8 table:0];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"TOAST_REVIEW_FINISHED_SECONDARY" value:&stru_2827FFAC8 table:0];
    v9 = [(SKUIToastViewController *)v4 initWithTitle:v6 description:v8 image:v10];

    [(SKUIToastViewController *)v9 present];
  }
}

- (void)giftViewController:(id)controller didFinishWithResult:(BOOL)result
{
  controllerCopy = controller;
  [(SKUIModalDocumentController *)self _unloadDocumentForViewController:controllerCopy];
  [controllerCopy dismissViewControllerAnimated:1 completion:0];
  [controllerCopy setDelegate:0];
  [(NSMutableArray *)self->_giftViewControllers removeObjectIdenticalTo:controllerCopy];

  [(SKUIModalDocumentController *)self _sendDidFinishIfApplicable];
}

- (void)unloadDocumentForViewController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    [controllerCopy setModalDocumentController:0];
  }

  [(SKUIModalDocumentController *)self _unloadDocumentForViewController:controllerCopy];
}

- (void)overlayContainerViewController:(id)controller willPopViewController:(id)viewController
{
  controllerCopy = controller;
  viewControllerCopy = viewController;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__83;
  v17 = __Block_byref_object_dispose__83;
  array = [MEMORY[0x277CBEB18] array];
  stackItems = self->_stackItems;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __84__SKUIModalDocumentController_overlayContainerViewController_willPopViewController___block_invoke;
  v10[3] = &unk_2781FF790;
  v9 = viewControllerCopy;
  v11 = v9;
  v12 = &v13;
  [(NSMutableArray *)stackItems enumerateObjectsUsingBlock:v10];
  objc_storeStrong(&self->_stackItems, v14[5]);

  _Block_object_dispose(&v13, 8);
}

void __84__SKUIModalDocumentController_overlayContainerViewController_willPopViewController___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 viewController];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    v5 = [v6 document];

    [v5 onUnload];
    v6 = v5;
  }

  else
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }
}

- (void)popoverControllerDidDismissPopover:(id)popover
{
  popoverCopy = popover;
  [(SKUIModalDocumentController *)self _unloadDocumentForPopoverController:popoverCopy];
  [(UIPopoverController *)popoverCopy setDelegate:0];
  popoverController = self->_popoverController;

  if (popoverController == popoverCopy)
  {
    self->_popoverController = 0;
  }

  [(SKUIModalDocumentController *)self _sendDidFinishIfApplicable];
}

- (void)popoverPresentationControllerDidDismissPopover:(id)popover
{
  popoverCopy = popover;
  stackItems = self->_stackItems;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __78__SKUIModalDocumentController_popoverPresentationControllerDidDismissPopover___block_invoke;
  v11[3] = &unk_2781FD120;
  v6 = popoverCopy;
  v12 = v6;
  v7 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v11];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [(NSMutableArray *)self->_stackItems objectAtIndex:v7];
    document = [v9 document];
    [document onUnload];

    [(NSMutableArray *)self->_stackItems removeObjectAtIndex:v8];
  }

  [(SKUIModalDocumentController *)self _sendDidFinishIfApplicable];
}

BOOL __78__SKUIModalDocumentController_popoverPresentationControllerDidDismissPopover___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 popoverPresentationController];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)popoverPresentationController:(id)controller willRepositionPopoverToRect:(CGRect *)rect inView:(id *)view
{
  controllerCopy = controller;
  presentedViewController = [controllerCopy presentedViewController];
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentingViewController = [controllerCopy presentingViewController];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __96__SKUIModalDocumentController_popoverPresentationController_willRepositionPopoverToRect_inView___block_invoke;
    v9[3] = &unk_2781F80C8;
    v9[4] = self;
    v10 = presentedViewController;
    [presentingViewController dismissViewControllerAnimated:0 completion:v9];
  }
}

- (void)_overlayControllerBackstopAction:(id)action
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  viewControllers = [(SKUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [viewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        stackItems = self->_stackItems;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __64__SKUIModalDocumentController__overlayControllerBackstopAction___block_invoke;
        v14[3] = &unk_2781FF850;
        v14[4] = v10;
        v15 = v4;
        [(NSMutableArray *)stackItems enumerateObjectsUsingBlock:v14];

        ++v9;
      }

      while (v7 != v9);
      v7 = [viewControllers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__SKUIModalDocumentController__overlayControllerBackstopAction___block_invoke_2;
  v13[3] = &unk_2781FC790;
  v13[4] = self;
  [v4 enumerateIndexesUsingBlock:v13];
  if ([v4 count])
  {
    v12 = -[NSMutableArray objectAtIndex:](self->_stackItems, "objectAtIndex:", [v4 firstIndex]);
    [(NSMutableArray *)self->_stackItems removeObjectsAtIndexes:v4];
  }

  else
  {
    v12 = 0;
  }

  -[SKUIModalDocumentController _dismissOverlayControllerWithStackItem:animated:](self, "_dismissOverlayControllerWithStackItem:animated:", v12, [v12 isAnimated]);
  [(SKUIModalDocumentController *)self _sendDidFinishIfApplicable];
}

void __64__SKUIModalDocumentController__overlayControllerBackstopAction___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 viewController];
  IsDescendent = SKUIViewControllerIsDescendent(v7, *(a1 + 32));

  if (IsDescendent)
  {
    [*(a1 + 40) addIndex:a3];
    *a4 = 1;
  }
}

void __64__SKUIModalDocumentController__overlayControllerBackstopAction___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 104) objectAtIndex:a2];
  v2 = [v4 document];
  [v2 onDisappear];

  v3 = [v4 document];
  [v3 onUnload];
}

- (CGRect)_centerRect:(id)rect adjust:(BOOL)adjust
{
  adjustCopy = adjust;
  rectCopy = rect;
  [rectCopy bounds];
  v6 = CGRectGetMidX(v21) + -2.0;
  v7 = floorf(v6);
  [rectCopy bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v22.origin.x = v9;
  v22.origin.y = v11;
  v22.size.width = v13;
  v22.size.height = v15;
  v16 = CGRectGetMidY(v22) + -2.0;
  v17 = floorf(v16);
  if (adjustCopy)
  {
    v18 = v7;
  }

  else
  {
    v18 = 1.0;
  }

  if (adjustCopy)
  {
    v19 = v17;
  }

  else
  {
    v19 = 1.0;
  }

  v20 = v7;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v20;
  return result;
}

- (void)_dismissOverlayControllerWithStackItem:(id)item animated:(BOOL)animated
{
  v6 = self->_overlayViewController;
  backstopControl = [(SKUIOverlayContainerViewController *)self->_overlayViewController backstopControl];
  [backstopControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  overlayViewController = self->_overlayViewController;
  self->_overlayViewController = 0;

  if (animated)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __79__SKUIModalDocumentController__dismissOverlayControllerWithStackItem_animated___block_invoke;
    v10[3] = &unk_2781F80F0;
    v11 = v6;
    [(SKUIOverlayContainerViewController *)v11 dismissWithFadeTransitionCompletionBlock:v10];
  }

  else
  {
    view = [(SKUIOverlayContainerViewController *)v6 view];
    [view removeFromSuperview];

    [(SKUIOverlayContainerViewController *)v6 removeFromParentViewController];
  }
}

uint64_t __79__SKUIModalDocumentController__dismissOverlayControllerWithStackItem_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 removeFromParentViewController];
}

- (void)_garbageCollectActivityViewController:(id)controller
{
  controllerCopy = controller;
  contentViewController = [(UIPopoverController *)self->_popoverController contentViewController];
  IsDescendent = SKUIViewControllerIsDescendent(controllerCopy, contentViewController);

  if (IsDescendent)
  {
    [(UIPopoverController *)self->_popoverController setDelegate:0];
    popoverController = self->_popoverController;
    self->_popoverController = 0;
  }

  [(SKUIModalDocumentController *)self _unloadDocumentForViewController:controllerCopy];
  [(SKUIModalDocumentController *)self _sendDidFinishIfApplicable];
}

- (id)_imageForImageViewElement:(id)element
{
  resourceName = [element resourceName];
  v4 = resourceName;
  if (resourceName)
  {
    v5 = SKUIImageWithResourceName(resourceName);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_overlayStackItems
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_stackItems;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        presentationType = [v9 presentationType];
        v11 = [presentationType isEqualToString:0x2828080A8];

        if (v11)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];

  return v12;
}

- (void)_popDocument:(BOOL)document completion:(id)completion
{
  documentCopy = document;
  completionCopy = completion;
  lastObject = [(NSMutableArray *)self->_stackItems lastObject];
  v7 = lastObject;
  if (lastObject)
  {
    presentationType = [lastObject presentationType];
    if ([presentationType isEqualToString:0x2828080A8])
    {
      [(SKUIModalDocumentController *)self _popOverlayStackItem:v7 animated:documentCopy completion:completionCopy];
    }

    else if ([presentationType isEqualToString:0x28280B068])
    {
      [(SKUIModalDocumentController *)self _popPopoverStackItem:v7 animated:documentCopy completion:completionCopy];
    }

    else
    {
      navigationDocumentController = [v7 navigationDocumentController];
      navigationController = [navigationDocumentController navigationController];

      if (!navigationController)
      {
        navigationController = [v7 viewController];
      }

      [navigationController dismissViewControllerAnimated:documentCopy completion:completionCopy];
    }

    document = [v7 document];
    [document onUnload];

    [(NSMutableArray *)self->_stackItems removeLastObject];
  }
}

- (BOOL)_popoverController:(id)controller containsStackItem:(id)item
{
  itemCopy = item;
  contentViewController = [controller contentViewController];
  navigationDocumentController = [itemCopy navigationDocumentController];
  navigationController = [navigationDocumentController navigationController];

  viewController = [itemCopy viewController];
  v11 = SKUIViewControllerIsDescendent(viewController, contentViewController) || ([viewController navigationController], v10 = ;
  return v11;
}

- (void)_popOverlayStackItem:(id)item animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  itemCopy = item;
  completionCopy = completion;
  viewControllers = [(SKUIOverlayContainerViewController *)self->_overlayViewController viewControllers];
  v10 = [viewControllers count];

  if (v10 < 2)
  {
    [(SKUIModalDocumentController *)self _dismissOverlayControllerWithStackItem:itemCopy animated:animatedCopy];
  }

  else
  {
    [(SKUIOverlayContainerViewController *)self->_overlayViewController popViewControllerAnimated:animatedCopy completion:completionCopy];
  }
}

- (void)_popPopoverStackItem:(id)item animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(UIPopoverController *)self->_popoverController setDelegate:0];
  contentViewController = [(UIPopoverController *)self->_popoverController contentViewController];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SKUIModalDocumentController__popPopoverStackItem_animated_completion___block_invoke;
  v10[3] = &unk_2781F9B48;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [contentViewController dismissViewControllerAnimated:animatedCopy completion:v10];
}

void __72__SKUIModalDocumentController__popPopoverStackItem_animated_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = 0;
  }
}

- (id)_presenterViewController
{
  rootViewController = [(SKUIModalDocumentController *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];
  if (presentedViewController)
  {
    v7PresentedViewController = presentedViewController;
    while (1)
    {
      presentedViewController2 = [rootViewController presentedViewController];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        break;
      }

      presentedViewController3 = [rootViewController presentedViewController];

      v7PresentedViewController = [presentedViewController3 presentedViewController];
      rootViewController = presentedViewController3;
      if (!v7PresentedViewController)
      {
        goto LABEL_7;
      }
    }
  }

  presentedViewController3 = rootViewController;
LABEL_7:

  return presentedViewController3;
}

- (void)_presentOverlayViewControllersFromNavigationController:(id)controller
{
  v26 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  viewControllers = [controllerCopy viewControllers];
  v5 = [viewControllers mutableCopy];

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  _overlayStackItems = [(SKUIModalDocumentController *)self _overlayStackItems];
  v8 = [v5 count] - 1;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = _overlayStackItems;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        viewController = [*(*(&v21 + 1) + 8 * i) viewController];
        v15 = [v5 indexOfObjectIdenticalTo:viewController];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = v15;
          [v6 addObject:viewController];
          [v5 removeObjectAtIndex:v16];
          if (v8 >= v16)
          {
            v8 = v16;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  if (v8 < [v5 count])
  {
    [v5 removeObjectsInRange:{v8, objc_msgSend(v5, "count") - v8}];
  }

  if ([v6 count])
  {
    _showOverlayContainerViewController = [(SKUIModalDocumentController *)selfCopy _showOverlayContainerViewController];
    [_showOverlayContainerViewController showViewControllers:v6];
    [controllerCopy setViewControllers:v5 animated:0];
    view = [controllerCopy view];
    [view layoutIfNeeded];
  }
}

- (void)_pushCharityDocument:(id)document options:(id)options
{
  documentCopy = document;
  templateElement = [documentCopy templateElement];
  campaignIdentifier = [templateElement campaignIdentifier];
  if (campaignIdentifier)
  {
    v7 = [[SKUIDonationViewController alloc] initWithCharityIdentifier:campaignIdentifier];
  }

  else
  {
    charityMetadataURLString = [templateElement charityMetadataURLString];
    if (charityMetadataURLString)
    {
      v9 = [SKUIURL alloc];
      v10 = [MEMORY[0x277CBEBC0] URLWithString:charityMetadataURLString];
      v11 = [(SKUIURL *)v9 initWithURL:v10];
    }

    else
    {
      v11 = 0;
    }

    v7 = [[SKUIDonationViewController alloc] initWithURL:v11];
  }

  clientContext = [(SKUIModalDocumentController *)self clientContext];
  [(SKUIDonationViewController *)v7 setClientContext:clientContext];

  [(SKUIModalDocumentController *)self _pushSheetDocument:documentCopy viewController:v7];
}

- (void)_presentAlertForDialog:(id)dialog
{
  dialogCopy = dialog;
  if (dialogCopy)
  {
    v9 = dialogCopy;
    dialogController = self->_dialogController;
    if (!dialogController)
    {
      v6 = objc_alloc_init(SKUIStoreDialogController);
      v7 = self->_dialogController;
      self->_dialogController = v6;

      dialogController = self->_dialogController;
    }

    _presenterViewController = [(SKUIModalDocumentController *)self _presenterViewController];
    [(SKUIStoreDialogController *)dialogController presentDialog:v9 fromViewController:_presenterViewController];

    dialogCopy = v9;
  }
}

- (void)_presetPopoverSheetDocument:(id)document viewController:(id)controller popoverPresentationController:(id)presentationController
{
  presentationControllerCopy = presentationController;
  controllerCopy = controller;
  documentCopy = document;
  v12 = [[SKUIDocumentStackItem alloc] initWithDocument:documentCopy presentationOptions:0];

  [(SKUIDocumentStackItem *)v12 setViewController:controllerCopy];
  [(SKUIDocumentStackItem *)v12 setPopoverPresentationController:presentationControllerCopy];

  [(NSMutableArray *)self->_stackItems addObject:v12];
  _presenterViewController = [(SKUIModalDocumentController *)self _presenterViewController];
  [_presenterViewController presentViewController:controllerCopy animated:1 completion:0];
}

- (void)_promptForStarRating:(id)rating
{
  ratingCopy = rating;
  objc_initWeak(&location, ratingCopy);
  starRatingAlertController = [MEMORY[0x277CDD390] starRatingAlertController];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __52__SKUIModalDocumentController__promptForStarRating___block_invoke;
  v8 = &unk_2781FE700;
  objc_copyWeak(&v9, &location);
  [starRatingAlertController setCompletion:&v5];
  [ratingCopy presentViewController:starRatingAlertController animated:1 completion:{0, v5, v6, v7, v8}];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

void __52__SKUIModalDocumentController__promptForStarRating___block_invoke(uint64_t a1, int a2, float a3)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    *&v4 = a3;
    [WeakRetained setRating:v4];
    [WeakRetained submitReview];
  }
}

- (void)_pushDialogDocument:(id)document options:(id)options
{
  v61 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  optionsCopy = options;
  v40 = documentCopy;
  templateElement = [documentCopy templateElement];
  message = [templateElement message];
  text = [message text];
  string = [text string];

  title = [templateElement title];
  text2 = [title text];
  string2 = [text2 string];

  dialogType = [templateElement dialogType];
  v11 = 0;
  if (dialogType <= 1)
  {
    if (dialogType)
    {
      v47 = 0;
      if (dialogType != 1)
      {
        goto LABEL_53;
      }

      v47 = [MEMORY[0x277D75110] alertControllerWithTitle:string2 message:string preferredStyle:0];
      popoverPresentationController = [v47 popoverPresentationController];
      [popoverPresentationController setDelegate:self];
LABEL_11:
      if (v47)
      {
        objc_initWeak(&location, self);
        objc_initWeak(&from, v47);
        [templateElement buttons];
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        obj = v53 = 0u;
        v14 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v14)
        {
          v46 = *v53;
          do
          {
            v48 = v14;
            for (i = 0; i != v48; ++i)
            {
              if (*v53 != v46)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v52 + 1) + 8 * i);
              buttonViewType = [v16 buttonViewType];
              v18 = 2;
              if (buttonViewType != 11)
              {
                v18 = 0;
              }

              v19 = buttonViewType != 10 && buttonViewType != 11;
              if (buttonViewType == 10)
              {
                v20 = 1;
              }

              else
              {
                v20 = v18;
              }

              buttonImage = [v16 buttonImage];
              if (buttonImage)
              {
                v22 = [(SKUIModalDocumentController *)self _imageForImageViewElement:buttonImage];
              }

              else
              {
                v22 = 0;
              }

              v23 = MEMORY[0x277D750F8];
              buttonText = [v16 buttonText];
              string3 = [buttonText string];
              v49[0] = MEMORY[0x277D85DD0];
              v49[1] = 3221225472;
              v49[2] = __59__SKUIModalDocumentController__pushDialogDocument_options___block_invoke_2;
              v49[3] = &unk_2781FF8A0;
              objc_copyWeak(&v50, &location);
              objc_copyWeak(&v51, &from);
              v49[4] = v16;
              v26 = [v23 _actionWithTitle:string3 image:v22 style:v20 handler:v49 shouldDismissHandler:&__block_literal_global_49];

              if (v19)
              {
                buttonTitleStyle = [v16 buttonTitleStyle];
                v28 = SKUIViewElementAlignmentForStyle(buttonTitleStyle);
                if (v28)
                {
                  [v26 _setTitleTextAlignment:SKUIViewElementNSTextAlignmentForIKElementAlignment(v28)];
                }

                style = buttonTitleStyle;
                if (!buttonTitleStyle)
                {
                  style = [v16 style];
                  v44 = style;
                }

                v30 = SKUIViewElementPlainColorWithStyle(style, 0);
                if (!buttonTitleStyle)
                {
                }

                if (v30)
                {
                  [v26 _setTitleTextColor:v30];
                }

                style2 = [buttonImage style];
                v32 = style2;
                if (!style2)
                {
                  style2 = [v16 style];
                  v43 = style2;
                }

                v33 = SKUIViewElementPlainColorWithStyle(style2, 0);
                if (!v32)
                {
                }

                if (v33)
                {
                  [v26 _setImageTintColor:v33];
                }

                [v26 _setChecked:{objc_msgSend(v16, "isSelected")}];
              }

              [v47 addAction:v26];

              objc_destroyWeak(&v51);
              objc_destroyWeak(&v50);
            }

            v14 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
          }

          while (v14);
        }

        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
        goto LABEL_48;
      }

LABEL_47:
      if (!v47)
      {
        v47 = 0;
LABEL_52:
        v11 = popoverPresentationController;
        goto LABEL_53;
      }

LABEL_48:
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        [(SKUIModalDocumentController *)self _pushPopoverSheetDocument:v40 viewController:v47 popoverPresentationController:popoverPresentationController options:optionsCopy];
      }

      else
      {
        [(SKUIModalDocumentController *)self _pushSheetDocument:v40 viewController:v47];
      }

      goto LABEL_52;
    }

LABEL_9:
    v47 = [MEMORY[0x277D75110] alertControllerWithTitle:string2 message:string preferredStyle:1];
    popoverPresentationController = 0;
    goto LABEL_11;
  }

  if (dialogType == 2)
  {
    objc_initWeak(&location, self);
    dataSource = [(SKUIModalDocumentController *)self dataSource];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __59__SKUIModalDocumentController__pushDialogDocument_options___block_invoke;
    v57[3] = &unk_2781FF878;
    objc_copyWeak(&v58, &location);
    v47 = [dataSource modalDocumentController:self alertControllerForDocument:v40 withDismissObserverBlock:v57 options:optionsCopy];

    objc_destroyWeak(&v58);
    objc_destroyWeak(&location);
    popoverPresentationController = 0;
    if (v47)
    {
      goto LABEL_47;
    }

    goto LABEL_11;
  }

  if (dialogType == 3)
  {
    goto LABEL_9;
  }

  v47 = 0;
  if (dialogType == 4)
  {
    v12 = [[SKUIToastViewController alloc] initWithDialogTemplate:templateElement];
    [(SKUIToastViewController *)v12 present];

    v11 = 0;
    v47 = 0;
  }

LABEL_53:
}

void __59__SKUIModalDocumentController__pushDialogDocument_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _unloadDocumentForViewController:v3];
}

uint64_t __59__SKUIModalDocumentController__pushDialogDocument_options___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _unloadDocumentForViewController:v3];

  v4 = *(a1 + 32);

  return [v4 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)_pushFamilySetupDocument:(id)document options:(id)options
{
  documentCopy = document;
  v6 = SKUIAccountsFramework();
  v11 = objc_alloc_init(SKUIWeakLinkedClassForString(&cfstr_Acaccountstore.isa, v6));
  v7 = SKUIAppleAccountUIFramework();
  v8 = objc_alloc(SKUIWeakLinkedClassForString(&cfstr_Aauifamilysetu.isa, v7));
  aa_primaryAppleAccount = [v11 aa_primaryAppleAccount];
  v10 = [v8 initWithAccount:aa_primaryAppleAccount store:v11];

  [v10 setDelegate:self];
  [(SKUIModalDocumentController *)self _pushSheetDocument:documentCopy viewController:v10];
}

- (void)_pushGiftDocument:(id)document options:(id)options
{
  documentCopy = document;
  templateElement = [documentCopy templateElement];
  giftType = [templateElement giftType];
  v7 = [SKUIGift alloc];
  v8 = v7;
  if (giftType)
  {
    productItem = [templateElement productItem];
    v10 = [(SKUIGift *)v8 initWithItem:productItem];
  }

  else
  {
    v10 = [(SKUIGift *)v7 initWithGiftCategory:0];
  }

  v11 = [[SKUIGiftViewController alloc] initWithGift:v10];
  clientContext = [(SKUIModalDocumentController *)self clientContext];
  [(SKUIGiftViewController *)v11 setClientContext:clientContext];

  [(SKUIGiftViewController *)v11 setGiftDelegate:self];
  giftViewControllers = self->_giftViewControllers;
  if (!giftViewControllers)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15 = self->_giftViewControllers;
    self->_giftViewControllers = v14;

    giftViewControllers = self->_giftViewControllers;
  }

  [(NSMutableArray *)giftViewControllers addObject:v11];
  [(SKUIModalDocumentController *)self _pushSheetDocument:documentCopy viewController:v11];
}

- (void)_pushOverlayStackItem:(id)item
{
  v20[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v5 = itemCopy;
  overlayNavigationController = self->_overlayNavigationController;
  if (overlayNavigationController)
  {
    viewController = [itemCopy viewController];
    -[UINavigationController pushViewController:animated:](overlayNavigationController, "pushViewController:animated:", viewController, [v5 isAnimated]);
  }

  else
  {
    overlayType = [itemCopy overlayType];
    viewController2 = [v5 viewController];
    if ([overlayType isEqualToString:0x282808268] && objc_msgSend(v5, "usesNavigationControllerForModalPresentation"))
    {
      v10 = objc_alloc_init(_SKUIModalSheetNavigationController);
      WeakRetained = objc_loadWeakRetained(&self->_navigationControllerDelegate);
      [(_SKUIModalSheetNavigationController *)v10 setDelegate:WeakRetained];

      v12 = v10;
      v13 = [[SKUINavigationDocumentController alloc] initWithNavigationController:v12];
      clientContext = [(SKUIModalDocumentController *)self clientContext];
      [(SKUINavigationDocumentController *)v13 setClientContext:clientContext];

      [v5 setNavigationDocumentController:v13];
      v20[0] = v5;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      [(SKUINavigationDocumentController *)v13 setStackItems:v15 animated:0];

      delegate = [(SKUIModalDocumentController *)self delegate];
      if (objc_opt_respondsToSelector())
      {
        v17 = [delegate modalDocumentController:self barStyleForStackItem:v5];
        navigationBar = [(_SKUIModalSheetNavigationController *)v12 navigationBar];
        [navigationBar setBarStyle:v17];
      }
    }

    else
    {
      v12 = viewController2;
    }

    _showOverlayContainerViewController = [(SKUIModalDocumentController *)self _showOverlayContainerViewController];
    if (![_showOverlayContainerViewController _appearState])
    {
      [_showOverlayContainerViewController beginAppearanceTransition:1 animated:0];
      [_showOverlayContainerViewController endAppearanceTransition];
    }

    [_showOverlayContainerViewController showViewController:v12 withCompletionBlock:0];
  }
}

- (void)_pushPlaylistDocument:(id)document options:(id)options
{
  templateElement = [document templateElement];
  v6 = [templateElement firstChildForElementType:152];
  assets = [v6 assets];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__SKUIModalDocumentController__pushPlaylistDocument_options___block_invoke;
  v9[3] = &unk_2781FB538;
  v10 = v6;
  selfCopy = self;
  v8 = v6;
  [assets enumerateObjectsUsingBlock:v9];
}

void __61__SKUIModalDocumentController__pushPlaylistDocument_options___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v10 = [[SKUIPlayableAsset alloc] initWithVideoViewElement:*(a1 + 32) assetViewElement:v6];

  v7 = [*(a1 + 40) clientContext];
  v8 = SKUIVideoPreviewPlayPlayableAsset(v10, v7);

  if (v8)
  {
    v9 = [*(a1 + 40) _presenterViewController];
    [v9 presentViewController:v8 animated:1 completion:0];

    SKUIVideoPreviewDismissOnEnterBackground(v8);
    *a4 = 1;
  }
}

- (void)_pushPopoverStackItem:(id)item
{
  itemCopy = item;
  _modalSourceViewProviderFromStackItems = [(SKUIModalDocumentController *)self _modalSourceViewProviderFromStackItems];
  if (self->_popoverController)
  {
    [(SKUIModalDocumentController *)self _unloadDocumentForPopoverController:?];
    [(UIPopoverController *)self->_popoverController setDelegate:0];
    [(UIPopoverController *)self->_popoverController dismissPopoverAnimated:0];
    contentViewController = [(UIPopoverController *)self->_popoverController contentViewController];
    transitionCoordinator = [contentViewController transitionCoordinator];

    popoverController = self->_popoverController;
    self->_popoverController = 0;
  }

  else
  {
    transitionCoordinator = 0;
  }

  sourceElementIdentifier = [itemCopy sourceElementIdentifier];
  if (sourceElementIdentifier && _modalSourceViewProviderFromStackItems)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] beginIgnoringInteractionEvents];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__SKUIModalDocumentController__pushPopoverStackItem___block_invoke;
    v11[3] = &unk_2781FF910;
    v12 = sourceElementIdentifier;
    v13 = itemCopy;
    selfCopy = self;
    v15 = transitionCoordinator;
    [_modalSourceViewProviderFromStackItems getModalSourceViewForElementIdentifier:v12 completionBlock:v11];
  }

  else
  {
    [(SKUIModalDocumentController *)self _pushSheetStackItem:itemCopy];
  }
}

void __53__SKUIModalDocumentController__pushPopoverStackItem___block_invoke(uint64_t a1, void *a2)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sourceButtonBarItem];
  v5 = [v3 originalSourceView];

  if (v4 | v5)
  {
    v6 = [*(a1 + 40) viewController];
    if ([*(a1 + 40) usesNavigationControllerForModalPresentation])
    {
      v40 = v6;
      v7 = objc_alloc_init(MEMORY[0x277D757A0]);
      WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 80));
      [v7 setDelegate:WeakRetained];

      [v7 setModalPresentationStyle:7];
      v9 = [[SKUINavigationDocumentController alloc] initWithNavigationController:v7];
      v10 = [*(a1 + 48) clientContext];
      [(SKUINavigationDocumentController *)v9 setClientContext:v10];

      [*(a1 + 40) setNavigationDocumentController:v9];
      v11 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:v7];
      v12 = *(a1 + 48);
      v13 = *(v12 + 88);
      *(v12 + 88) = v11;

      [*(*(a1 + 48) + 88) setDelegate:?];
      v14 = [*(a1 + 40) document];
      v15 = [v14 templateElement];
      v16 = [v15 style];
      v17 = [v16 ikBackgroundColor];
      v18 = [v17 color];

      if ((SKUIColorSchemeStyleForColor(v18) | 2) == 3)
      {
        v19 = [v7 navigationBar];
        [v19 setBarStyle:1];

        [*(*(a1 + 48) + 88) _setPopoverBackgroundStyle:7];
        v20 = [*(*(a1 + 48) + 88) contentViewController];
        v21 = [v20 popoverPresentationController];

        if (objc_opt_respondsToSelector())
        {
          [v21 _setPopoverBackgroundStyle:7];
        }
      }

      v22 = [v7 navigationBar];
      [v22 bounds];
      v24 = 480.0 - v23;

      v6 = v40;
    }

    else
    {
      v27 = [objc_alloc(MEMORY[0x277D758A0]) initWithContentViewController:v6];
      v28 = *(a1 + 48);
      v29 = *(v28 + 88);
      *(v28 + 88) = v27;

      [*(*(a1 + 48) + 88) setDelegate:?];
      v9 = 0;
      v24 = 480.0;
    }

    [v6 preferredContentSize];
    v31 = *MEMORY[0x277CBF3A8];
    v32 = *(MEMORY[0x277CBF3A8] + 8);
    if (*MEMORY[0x277CBF3A8] == v33 && v32 == v30)
    {
      [v6 setPreferredContentSize:{320.0, v24, v31, v32}];
    }

    [*(*(a1 + 48) + 88) setPopoverContentSize:{320.0, v24, v31, v32}];
    if (v9)
    {
      v46[0] = *(a1 + 40);
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
      [(SKUINavigationDocumentController *)v9 setStackItems:v35 animated:0];
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__SKUIModalDocumentController__pushPopoverStackItem___block_invoke_2;
    aBlock[3] = &unk_2781FF8E8;
    v43 = v5;
    v41 = *(a1 + 40);
    v36 = v41.i64[0];
    v44 = vextq_s8(v41, v41, 8uLL);
    v45 = v4;
    v37 = _Block_copy(aBlock);
    v38 = *(a1 + 56);
    if (v38)
    {
      [v38 animateAlongsideTransition:0 completion:v37];
    }

    else
    {
      v37[2](v37, 0);
    }
  }

  else
  {
    v25 = *(a1 + 32);
    v26 = [*(a1 + 40) document];
    NSLog(&cfstr_CouldNotFindSo.isa, v25, v26);
  }

  v39 = [MEMORY[0x277D75128] sharedApplication];
  [v39 endIgnoringInteractionEvents];
}

uint64_t __53__SKUIModalDocumentController__pushPopoverStackItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(*(a1 + 40) + 88);
    v12 = v3;
    [v4 bounds];
    v4 = [v5 presentPopoverFromRect:*(a1 + 32) inView:15 permittedArrowDirections:objc_msgSend(*(a1 + 48) animated:{"isAnimated"), v6, v7, v8, v9}];
  }

  else
  {
    v10 = *(a1 + 56);
    if (!v10)
    {
      goto LABEL_6;
    }

    v12 = v3;
    v4 = [*(*(a1 + 40) + 88) presentPopoverFromBarButtonItem:v10 permittedArrowDirections:15 animated:{objc_msgSend(*(a1 + 48), "isAnimated")}];
  }

  v3 = v12;
LABEL_6:

  return MEMORY[0x2821F96F8](v4, v3);
}

- (id)_modalSourceViewProviderFromStackItems
{
  if ([(NSMutableArray *)self->_stackItems count])
  {
    lastObject = [(NSMutableArray *)self->_stackItems lastObject];
    viewController = [lastObject viewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      topViewController = [viewController topViewController];

      viewController = topViewController;
    }

    if ([viewController conformsToProtocol:&unk_28291F928])
    {
      WeakRetained = viewController;
    }

    else
    {
      WeakRetained = 0;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_modalSourceViewProvider);
  }

  return WeakRetained;
}

- (void)_pushRedeemDocument:(id)document options:(id)options
{
  documentCopy = document;
  v9 = [[SKUIRedeemViewController alloc] initWithRedeemCategory:0];
  clientContext = [(SKUIModalDocumentController *)self clientContext];
  [(SKUIRedeemViewController *)v9 setClientContext:clientContext];

  templateElement = [documentCopy templateElement];
  initialCode = [templateElement initialCode];
  [(SKUIRedeemViewController *)v9 setInitialCode:initialCode];

  [(SKUIModalDocumentController *)self _pushSheetDocument:documentCopy viewController:v9];
}

- (void)_pushSheetDocument:(id)document viewController:(id)controller
{
  controllerCopy = controller;
  documentCopy = document;
  v9 = [[SKUIDocumentStackItem alloc] initWithDocument:documentCopy presentationOptions:0];

  [(SKUIDocumentStackItem *)v9 setViewController:controllerCopy];
  [(NSMutableArray *)self->_stackItems addObject:v9];
  _presenterViewController = [(SKUIModalDocumentController *)self _presenterViewController];
  [_presenterViewController presentViewController:controllerCopy animated:1 completion:0];
}

- (void)_pushPopoverSheetDocument:(id)document viewController:(id)controller popoverPresentationController:(id)presentationController options:(id)options
{
  documentCopy = document;
  controllerCopy = controller;
  presentationControllerCopy = presentationController;
  optionsCopy = options;
  WeakRetained = objc_loadWeakRetained(&self->_modalSourceViewProvider);
  v15 = [optionsCopy objectForKey:@"sourceElement"];

  if (v15)
  {
    v16 = WeakRetained == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = v16;
  if (controllerCopy && v17)
  {
    popoverPresentationController = [controllerCopy popoverPresentationController];
    _presenterViewController = [(SKUIModalDocumentController *)self _presenterViewController];
    view = [_presenterViewController view];
    [(SKUIModalDocumentController *)self _centerRect:view adjust:0];
    [popoverPresentationController setSourceRect:?];

    popoverPresentationController2 = [controllerCopy popoverPresentationController];
    _presenterViewController2 = [(SKUIModalDocumentController *)self _presenterViewController];
    view2 = [_presenterViewController2 view];
    [popoverPresentationController2 setSourceView:view2];

    [(SKUIModalDocumentController *)self _presetPopoverSheetDocument:documentCopy viewController:controllerCopy popoverPresentationController:presentationControllerCopy];
  }

  else if (controllerCopy)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __110__SKUIModalDocumentController__pushPopoverSheetDocument_viewController_popoverPresentationController_options___block_invoke;
    v24[3] = &unk_2781FF910;
    v25 = controllerCopy;
    selfCopy = self;
    v27 = documentCopy;
    v28 = presentationControllerCopy;
    [WeakRetained getModalSourceViewForElementIdentifier:v15 completionBlock:v24];
  }
}

void __110__SKUIModalDocumentController__pushPopoverSheetDocument_viewController_popoverPresentationController_options___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [*(a1 + 32) popoverPresentationController];
  v4 = [v10 originalSourceView];
  [v3 setSourceView:v4];

  v5 = [v10 originalSourceView];

  if (v5)
  {
    v6 = [*(a1 + 32) popoverPresentationController];
    v7 = *(a1 + 40);
    v8 = [v10 originalSourceView];
    [v7 _centerRect:v8 adjust:1];
    [v6 setSourceRect:?];

    v9 = [*(a1 + 32) popoverPresentationController];
    [v9 setDelegate:*(a1 + 40)];
  }

  [*(a1 + 40) _presetPopoverSheetDocument:*(a1 + 48) viewController:*(a1 + 32) popoverPresentationController:*(a1 + 56)];
}

- (void)_pushSheetStackItem:(id)item
{
  v27[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  document = [itemCopy document];
  templateElement = [document templateElement];
  style = [templateElement style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (color)
  {
    v26 = 1.0;
    v11 = [color getRed:0 green:0 blue:0 alpha:&v26];
    v10 = v26;
    if (v26 < 0.00000011920929)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  viewController = [itemCopy viewController];
  _presenterViewController = [(SKUIModalDocumentController *)self _presenterViewController];
  if ([itemCopy usesNavigationControllerForModalPresentation])
  {
    v15 = objc_alloc_init(_SKUIModalSheetNavigationController);
    if ([_presenterViewController preferredUserInterfaceStyle])
    {
      -[_SKUIModalSheetNavigationController setForcedUserInterfaceStyle:](v15, "setForcedUserInterfaceStyle:", [_presenterViewController preferredUserInterfaceStyle]);
    }

    WeakRetained = objc_loadWeakRetained(&self->_navigationControllerDelegate);
    [(_SKUIModalSheetNavigationController *)v15 setDelegate:WeakRetained];

    [(_SKUIModalSheetNavigationController *)v15 _setClipUnderlapWhileTransitioning:v12];
    v17 = v15;

    v18 = [[SKUINavigationDocumentController alloc] initWithNavigationController:v17];
    clientContext = [(SKUIModalDocumentController *)self clientContext];
    [(SKUINavigationDocumentController *)v18 setClientContext:clientContext];

    [itemCopy setNavigationDocumentController:v18];
    v27[0] = itemCopy;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    [(SKUINavigationDocumentController *)v18 setStackItems:v20 animated:0];

    delegate = [(SKUIModalDocumentController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v22 = [delegate modalDocumentController:self barStyleForStackItem:itemCopy];
      navigationBar = [(_SKUIModalSheetNavigationController *)v17 navigationBar];
      [navigationBar setBarStyle:v22];
    }
  }

  else
  {
    v17 = viewController;
  }

  sheetType = [itemCopy sheetType];
  if ([sheetType isEqualToString:0x28280B0C8])
  {
    [(_SKUIModalSheetNavigationController *)v17 setModalPresentationStyle:2];
  }

  if (v12)
  {
    v25 = [[SKUIBackdropContentViewController alloc] initWithContentViewController:v17];
    [_presenterViewController presentViewController:v25 animated:objc_msgSend(itemCopy completion:{"isAnimated"), 0}];
  }

  else
  {
    [_presenterViewController presentViewController:v17 animated:objc_msgSend(itemCopy completion:{"isAnimated"), 0}];
  }
}

- (void)_sendDidFinishIfApplicable
{
  delegate = [(SKUIModalDocumentController *)self delegate];
  if (![(NSMutableArray *)self->_stackItems count]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate modalDocumentControllerDidFinish:self];
  }
}

- (id)_showOverlayContainerViewController
{
  overlayViewController = self->_overlayViewController;
  if (!overlayViewController)
  {
    v4 = objc_alloc_init(SKUIOverlayContainerViewController);
    v5 = self->_overlayViewController;
    self->_overlayViewController = v4;

    backstopControl = [(SKUIOverlayContainerViewController *)self->_overlayViewController backstopControl];
    [backstopControl addTarget:self action:sel__overlayControllerBackstopAction_ forControlEvents:64];

    [(SKUIOverlayContainerViewController *)self->_overlayViewController setDelegate:self];
    [(UIViewController *)self->_rootViewController addChildViewController:self->_overlayViewController];
    view = [(UIViewController *)self->_rootViewController view];
    [view bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    view2 = [(SKUIOverlayContainerViewController *)self->_overlayViewController view];
    [view2 setAutoresizingMask:18];
    [view2 setFrame:{v9, v11, v13, v15}];
    [view addSubview:view2];
    [(SKUIOverlayContainerViewController *)self->_overlayViewController didMoveToParentViewController:self->_rootViewController];
    v17 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceLevel:1];
    [(UIViewController *)self->_rootViewController setOverrideTraitCollection:v17 forChildViewController:self->_overlayViewController];

    overlayViewController = self->_overlayViewController;
  }

  return overlayViewController;
}

- (void)_unloadDocumentForPopoverController:(id)controller
{
  controllerCopy = controller;
  stackItems = self->_stackItems;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __67__SKUIModalDocumentController__unloadDocumentForPopoverController___block_invoke;
  v14 = &unk_2781FF938;
  selfCopy = self;
  v6 = controllerCopy;
  v16 = v6;
  v7 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:&v11];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    selfCopy = [(NSMutableArray *)self->_stackItems objectAtIndex:v7, v11, v12, v13, v14, selfCopy];
    document = [selfCopy document];
    [document onUnload];

    [(NSMutableArray *)self->_stackItems removeObjectAtIndex:v8];
  }
}

- (void)_unloadDocumentForViewController:(id)controller
{
  controllerCopy = controller;
  stackItems = self->_stackItems;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__SKUIModalDocumentController__unloadDocumentForViewController___block_invoke;
  v11[3] = &unk_2781FD120;
  v6 = controllerCopy;
  v12 = v6;
  v7 = [(NSMutableArray *)stackItems indexOfObjectPassingTest:v11];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v7;
    v9 = [(NSMutableArray *)self->_stackItems objectAtIndex:v7];
    document = [v9 document];
    [document onUnload];

    [(NSMutableArray *)self->_stackItems removeObjectAtIndex:v8];
  }
}

BOOL __64__SKUIModalDocumentController__unloadDocumentForViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 viewController];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (SKUIModalDocumentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (SKUIModalSourceViewProvider)modalSourceViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_modalSourceViewProvider);

  return WeakRetained;
}

- (UINavigationControllerDelegate)navigationControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationControllerDelegate);

  return WeakRetained;
}

- (SKUIModalDocumentDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)init
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIModalDocumentController init]";
}

@end