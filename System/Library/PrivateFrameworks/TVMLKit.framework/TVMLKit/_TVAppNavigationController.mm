@interface _TVAppNavigationController
- (BOOL)_hasBeenCleared;
- (BOOL)_shouldIgnoreModalDismissal:(id)dismissal;
- (BOOL)_shouldOverrideModalBehaviorForPlaybackDocument:(id)document andExistingPlaybackDocument:(id)playbackDocument;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (TVApplicationController)appController;
- (UIViewController)currentViewController;
- (_TVAppNavigationController)initWithApplicationController:(id)controller;
- (_TVAppNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TVAppNavigationController)initWithRootViewController:(id)controller;
- (_TVAppNavigationControllerDelegate)appNavigationControllerDelegate;
- (id)activeDocument;
- (id)documents;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)popToRootDocument:(BOOL)document;
- (id)popToRootViewControllerAnimated:(BOOL)animated;
- (void)_doWillLoadAppDocumentWithController:(id)controller;
- (void)_handleMenuAction:(id)action;
- (void)_presentModalDocumentController:(id)controller options:(id)options;
- (void)clear;
- (void)dealloc;
- (void)dismissAllModals:(id)modals;
- (void)dismissModal:(BOOL)modal;
- (void)dismissed;
- (void)insertDocument:(id)document beforeDocument:(id)beforeDocument options:(id)options;
- (void)loadView;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated;
- (void)popDocument;
- (void)popToDocument:(id)document;
- (void)presentModal:(id)modal options:(id)options;
- (void)pushDocument:(id)document options:(id)options;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)removeDocument:(id)document;
- (void)replaceDocument:(id)document withDocument:(id)withDocument options:(id)options;
- (void)setAppNavigationControllerDelegate:(id)delegate;
- (void)setDelegate:(id)delegate;
- (void)setDocuments:(id)documents options:(id)options;
- (void)setMaxNavControllerStackDepth:(unint64_t)depth;
- (void)setTitle:(id)title;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _TVAppNavigationController

- (_TVAppNavigationController)initWithRootViewController:(id)controller
{
  v7.receiver = self;
  v7.super_class = _TVAppNavigationController;
  v3 = [(_TVAppNavigationController *)&v7 initWithRootViewController:controller];
  v4 = v3;
  if (v3)
  {
    v6.receiver = v3;
    v6.super_class = _TVAppNavigationController;
    [(_TVAppNavigationController *)&v6 setDelegate:v3];
    v4->_maxNavControllerStackDepth = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (_TVAppNavigationController)initWithApplicationController:(id)controller
{
  controllerCopy = controller;
  v5 = [(_TVAppNavigationController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_appController, controllerCopy);
    v6->_maxNavControllerStackDepth = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (_TVAppNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = _TVAppNavigationController;
  v4 = [(_TVAppNavigationController *)&v8 initWithNibName:0 bundle:0];
  v5 = v4;
  if (v4)
  {
    v7.receiver = v4;
    v7.super_class = _TVAppNavigationController;
    [(_TVAppNavigationController *)&v7 setDelegate:v4];
    v5->_maxNavControllerStackDepth = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (void)setMaxNavControllerStackDepth:(unint64_t)depth
{
  if (depth < 3)
  {
    v3 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      [_TVAppNavigationController setMaxNavControllerStackDepth:v3];
    }
  }

  else
  {
    self->_maxNavControllerStackDepth = depth;
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = _TVAppNavigationController;
  [(_TVAppNavigationController *)&v6 viewWillAppear:appear];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 2)
  {
    [(_TVAppNavigationController *)self setNavigationBarHidden:1];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = _TVAppNavigationController;
  [(_TVAppNavigationController *)&v5 viewWillDisappear:disappear];
  if ((*&self->_ancDelegateFlags & 0x10) != 0)
  {
    appNavigationControllerDelegate = [(_TVAppNavigationController *)self appNavigationControllerDelegate];
    [appNavigationControllerDelegate appNavigationControllerWillDisappear:self];
  }
}

- (void)setDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = _TVAppNavigationController;
  [(_TVAppNavigationController *)&v4 setDelegate:delegate];
  v3 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_ERROR))
  {
    [_TVAppNavigationController setDelegate:v3];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(_TVAppNavigationController *)self title];
  if (title)
  {
  }

  else
  {
    title2 = [(_TVAppNavigationController *)self title];

    if (title2 != titleCopy)
    {
      v7.receiver = self;
      v7.super_class = _TVAppNavigationController;
      [(_TVAppNavigationController *)&v7 setTitle:titleCopy];
    }
  }
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  v10 = [viewControllerCopy customAnimatorForNavigationControllerOperation:operation toViewController:toViewControllerCopy];
  if (!v10)
  {
    v10 = [toViewControllerCopy customAnimatorForNavigationControllerOperation:operation fromViewController:viewControllerCopy];
  }

  return v10;
}

- (void)setAppNavigationControllerDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = objc_storeWeak(&self->_appNavigationControllerDelegate, delegateCopy);
  v5 = objc_opt_respondsToSelector();

  *&self->_ancDelegateFlags = *&self->_ancDelegateFlags & 0xFE | v5 & 1;
  WeakRetained = objc_loadWeakRetained(&self->_appNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  *&self->_ancDelegateFlags = *&self->_ancDelegateFlags & 0xFD | v7;

  v8 = objc_loadWeakRetained(&self->_appNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  *&self->_ancDelegateFlags = *&self->_ancDelegateFlags & 0xFB | v9;

  v10 = objc_loadWeakRetained(&self->_appNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    v11 = 8;
  }

  else
  {
    v11 = 0;
  }

  *&self->_ancDelegateFlags = *&self->_ancDelegateFlags & 0xF7 | v11;

  v12 = objc_loadWeakRetained(&self->_appNavigationControllerDelegate);
  if (objc_opt_respondsToSelector())
  {
    v13 = 16;
  }

  else
  {
    v13 = 0;
  }

  *&self->_ancDelegateFlags = *&self->_ancDelegateFlags & 0xEF | v13;
}

- (void)_handleMenuAction:(id)action
{
  presentingViewController = [(_TVAppNavigationController *)self presentingViewController];

  if (!presentingViewController)
  {

    [(_TVAppNavigationController *)self popDocument];
  }
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = _TVAppNavigationController;
  [(_TVAppNavigationController *)&v7 loadView];
  view = [(_TVAppNavigationController *)self view];
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleMenuAction_];
  menuRecognizer = self->_menuRecognizer;
  self->_menuRecognizer = v4;

  [(UITapGestureRecognizer *)self->_menuRecognizer setAllowedPressTypes:&unk_287E487E0];
  [(UITapGestureRecognizer *)self->_menuRecognizer setDelegate:self];
  [view addGestureRecognizer:self->_menuRecognizer];
  navigationBar = [(_TVAppNavigationController *)self navigationBar];
  [navigationBar _setHidesShadow:1];
}

- (void)dealloc
{
  modalPresenterObserverToken = [(_TVAppNavigationController *)self modalPresenterObserverToken];

  if (modalPresenterObserverToken)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    modalPresenterObserverToken2 = [(_TVAppNavigationController *)self modalPresenterObserverToken];
    [defaultCenter removeObserver:modalPresenterObserverToken2];
  }

  v6.receiver = self;
  v6.super_class = _TVAppNavigationController;
  [(_TVAppNavigationController *)&v6 dealloc];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  if (self->_menuRecognizer != begin)
  {
    return 1;
  }

  documents = [(_TVAppNavigationController *)self documents];
  if ([documents count] > 1)
  {
    v3 = 1;
  }

  else
  {
    viewControllers = [(_TVAppNavigationController *)self viewControllers];
    v3 = [viewControllers count] > 1;
  }

  return v3;
}

- (UIViewController)currentViewController
{
  presentedModalViewController = [(_TVAppNavigationController *)self presentedModalViewController];
  v4 = presentedModalViewController;
  if (presentedModalViewController)
  {
    lastObject = presentedModalViewController;
  }

  else
  {
    viewControllers = [(_TVAppNavigationController *)self viewControllers];
    lastObject = [viewControllers lastObject];
  }

  return lastObject;
}

- (void)clear
{
  v5[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v5[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [(_TVAppNavigationController *)self setViewControllers:v4 animated:1];
}

- (void)setDocuments:(id)documents options:(id)options
{
  v24 = *MEMORY[0x277D85DE8];
  documentsCopy = documents;
  v7 = [options objectForKey:@"animated"];
  v8 = v7;
  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = documentsCopy;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [_TVAppDocumentRequestController alloc];
        v18 = [(_TVAppDocumentRequestController *)v17 initWithAppDocument:v16, v19];
        [(_TVAppNavigationController *)self _doWillLoadAppDocumentWithController:v18];
        [v10 addObject:v18];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  [(_TVAppNavigationController *)self setViewControllers:v10 animated:bOOLValue];
}

- (id)documents
{
  v22 = *MEMORY[0x277D85DE8];
  viewControllers = [(_TVAppNavigationController *)self viewControllers];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(viewControllers, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = viewControllers;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
        {
          appDocument = [v9 appDocument];

          if (appDocument)
          {
            appDocument2 = [v9 appDocument];
            [v3 addObject:appDocument2];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v12 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_26CD9A000, v12, OS_LOG_TYPE_DEFAULT, "Nav controller returning app documents: %@", buf, 0xCu);
  }

  v13 = [v3 copy];

  return v13;
}

- (void)insertDocument:(id)document beforeDocument:(id)beforeDocument options:(id)options
{
  documentCopy = document;
  beforeDocumentCopy = beforeDocument;
  optionsCopy = options;
  viewControllers = [(_TVAppNavigationController *)self viewControllers];
  v12 = [viewControllers copy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68___TVAppNavigationController_insertDocument_beforeDocument_options___block_invoke;
  v16[3] = &unk_279D6EB30;
  v17 = beforeDocumentCopy;
  selfCopy = self;
  v19 = documentCopy;
  v20 = optionsCopy;
  v13 = optionsCopy;
  v14 = documentCopy;
  v15 = beforeDocumentCopy;
  [v12 enumerateObjectsUsingBlock:v16];
}

- (void)pushDocument:(id)document options:(id)options
{
  v22 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  optionsCopy = options;
  v8 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = documentCopy;
    v20 = 2112;
    v21 = optionsCopy;
    _os_log_impl(&dword_26CD9A000, v8, OS_LOG_TYPE_DEFAULT, "Nav controller pushing app document: %@, options: %@", &v18, 0x16u);
  }

  v9 = [[_TVAppDocumentRequestController alloc] initWithAppDocument:documentCopy];
  [(_TVAppDocumentController *)v9 setPresentedModal:0];
  v10 = [optionsCopy objectForKey:*MEMORY[0x277D1AF68]];
  bOOLValue = [v10 BOOLValue];

  [(_TVAppDocumentController *)v9 setAdoptsContext:bOOLValue];
  [(_TVAppNavigationController *)self _doWillLoadAppDocumentWithController:v9];
  v12 = +[TVStorePlaybackLaunchShroud sharedShroud];
  isHidden = [v12 isHidden];

  viewControllers = [(_TVAppNavigationController *)self viewControllers];
  if ([viewControllers count])
  {
    v15 = [optionsCopy objectForKey:@"hidesBottomBarWhenPushed"];
    bOOLValue2 = [v15 BOOLValue];
  }

  else
  {
    bOOLValue2 = 0;
  }

  [(_TVAppDocumentRequestController *)v9 setHidesBottomBarWhenPushed:bOOLValue2];
  viewControllers2 = [(_TVAppNavigationController *)self viewControllers];
  -[_TVAppNavigationController pushViewController:animated:](self, "pushViewController:animated:", v9, ([viewControllers2 count] | isHidden) != 0);
}

- (void)presentModal:(id)modal options:(id)options
{
  modalCopy = modal;
  optionsCopy = options;
  presentedModalViewController = [(_TVAppNavigationController *)self presentedModalViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    appDocument = [presentedModalViewController appDocument];
  }

  else
  {
    appDocument = 0;
  }

  if (![(_TVAppNavigationController *)self _shouldOverrideModalBehaviorForPlaybackDocument:modalCopy andExistingPlaybackDocument:appDocument])
  {
    v9 = [[_TVAppDocumentRequestController alloc] initWithAppDocument:modalCopy];
    v10 = [optionsCopy objectForKey:*MEMORY[0x277D1AF68]];
    bOOLValue = [v10 BOOLValue];

    [(_TVAppDocumentController *)v9 setAdoptsContext:bOOLValue];
    [(_TVAppNavigationController *)self _presentModalDocumentController:v9 options:optionsCopy];
  }
}

- (void)_presentModalDocumentController:(id)controller options:(id)options
{
  controllerCopy = controller;
  optionsCopy = options;
  objc_initWeak(location, self);
  [controllerCopy setPresentedModal:1];
  modalPresenterObserverToken = [(_TVAppNavigationController *)self modalPresenterObserverToken];

  if (!modalPresenterObserverToken)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __70___TVAppNavigationController__presentModalDocumentController_options___block_invoke;
    v47[3] = &unk_279D6F3D8;
    objc_copyWeak(&v48, location);
    v10 = [defaultCenter addObserverForName:@"TVModalPresenterDismissedNotification" object:0 queue:mainQueue usingBlock:v47];

    [(_TVAppNavigationController *)self setModalPresenterObserverToken:v10];
    objc_destroyWeak(&v48);
  }

  presentedModalViewController = [(_TVAppNavigationController *)self presentedModalViewController];
  v12 = [[TVModalPresenterConfiguration alloc] initWithDictionary:optionsCopy];
  [(_TVAppNavigationController *)self _doWillLoadAppDocumentWithController:controllerCopy];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __70___TVAppNavigationController__presentModalDocumentController_options___block_invoke_2;
  v42[3] = &unk_279D710B8;
  v42[4] = self;
  objc_copyWeak(&v46, location);
  v33 = v12;
  v43 = v33;
  v34 = presentedModalViewController;
  v44 = v34;
  v35 = controllerCopy;
  v45 = v35;
  v36 = MEMORY[0x26D6AFBB0](v42);
  presentedViewController = [(_TVAppNavigationController *)self presentedViewController];
  if (presentedViewController)
  {
    presentedViewController2 = [(_TVAppNavigationController *)self presentedViewController];
    v15 = +[_TVModalPresenter presenter];
    modalRootViewController = [v15 modalRootViewController];
    v17 = [presentedViewController2 isEqual:modalRootViewController];

    if ((v17 & 1) == 0)
    {
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __70___TVAppNavigationController__presentModalDocumentController_options___block_invoke_2_60;
      v40[3] = &unk_279D6E6F8;
      v41 = v36;
      [(_TVAppNavigationController *)self dismissViewControllerAnimated:1 completion:v40];
      v20 = &v41;
LABEL_19:

      goto LABEL_20;
    }
  }

  v32 = +[_TVModalPresenter presenter];
  modalRootViewController2 = [v32 modalRootViewController];
  presentingViewController = [modalRootViewController2 presentingViewController];
  if (presentingViewController)
  {
    presentedViewController3 = [(_TVAppNavigationController *)self presentedViewController];
    v30 = +[_TVModalPresenter presenter];
    presentedViewController = [v30 modalRootViewController];
    if (![presentedViewController3 isEqual:presentedViewController])
    {

LABEL_18:
      v28 = +[_TVModalPresenter presenter];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __70___TVAppNavigationController__presentModalDocumentController_options___block_invoke_3_61;
      v38[3] = &unk_279D6E6F8;
      v39 = v36;
      [v28 hideAllAnimated:0 withCompletion:v38];
      v20 = &v39;

      goto LABEL_19;
    }
  }

  v21 = +[_TVModalPresenter presenter];
  modalRootViewController3 = [v21 modalRootViewController];
  viewControllers = [modalRootViewController3 viewControllers];
  if ([viewControllers count] < 2)
  {
    v27 = 0;
  }

  else
  {
    v24 = +[_TVModalPresenter presenter];
    modalRootViewController4 = [v24 modalRootViewController];
    visibleViewController = [modalRootViewController4 visibleViewController];
    v27 = visibleViewController != v34 && [(TVModalPresenterConfiguration *)v33 navigationBarHidden];
  }

  if (presentingViewController)
  {
  }

  if (v27)
  {
    goto LABEL_18;
  }

  parentViewController = [v35 parentViewController];

  if (!parentViewController)
  {
    v36[2]();
  }

LABEL_20:

  objc_destroyWeak(&v46);
  objc_destroyWeak(location);
}

- (void)dismissed
{
  presentedModalViewController = [(_TVAppNavigationController *)self presentedModalViewController];
  v4 = [(_TVAppNavigationController *)self _shouldIgnoreModalDismissal:presentedModalViewController];

  if (!v4)
  {

    [(_TVAppNavigationController *)self setPresentedModalViewController:0];
  }
}

- (void)dismissModal:(BOOL)modal
{
  modalCopy = modal;
  presentedModalViewController = [(_TVAppNavigationController *)self presentedModalViewController];
  v6 = [(_TVAppNavigationController *)self _shouldIgnoreModalDismissal:presentedModalViewController];

  if (!v6)
  {
    presentedModalViewController2 = [(_TVAppNavigationController *)self presentedModalViewController];

    if (presentedModalViewController2)
    {
      v8 = +[_TVModalPresenter presenter];
      presentedModalViewController3 = [(_TVAppNavigationController *)self presentedModalViewController];
      [v8 hideController:presentedModalViewController3 animated:modalCopy withCompletion:0];

      [(_TVAppNavigationController *)self setPresentedModalViewController:0];
    }
  }
}

- (void)dismissAllModals:(id)modals
{
  modalsCopy = modals;
  presentedViewController = [(_TVAppNavigationController *)self presentedViewController];
  if (presentedViewController && (v6 = presentedViewController, -[_TVAppNavigationController presentedViewController](self, "presentedViewController"), v7 = objc_claimAutoreleasedReturnValue(), +[_TVModalPresenter presenter](_TVModalPresenter, "presenter"), v8 = objc_claimAutoreleasedReturnValue(), [v8 modalRootViewController], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "isEqual:", v9), v9, v8, v7, v6, (v10 & 1) == 0))
  {
    presentedViewController2 = [(_TVAppNavigationController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      presentedViewController3 = [(_TVAppNavigationController *)self presentedViewController];
      v19 = [presentedViewController3 popToRootViewControllerAnimated:0];
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __47___TVAppNavigationController_dismissAllModals___block_invoke;
    v27[3] = &unk_279D6E6F8;
    v28 = modalsCopy;
    [(_TVAppNavigationController *)self dismissViewControllerAnimated:0 completion:v27];
    v15 = v28;
  }

  else
  {
    v11 = +[_TVModalPresenter presenter];
    modalRootViewController = [v11 modalRootViewController];
    presentingViewController = [modalRootViewController presentingViewController];

    if (presentingViewController)
    {
      v14 = +[_TVModalPresenter presenter];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __47___TVAppNavigationController_dismissAllModals___block_invoke_2;
      v25[3] = &unk_279D6E6F8;
      v26 = modalsCopy;
      [v14 hideAllAnimated:0 withCompletion:v25];

      v15 = v26;
    }

    else
    {
      presentedModalViewController = [(_TVAppNavigationController *)self presentedModalViewController];

      if (!presentedModalViewController)
      {
        modalsCopy[2](modalsCopy);
        goto LABEL_11;
      }

      v21 = +[_TVModalPresenter presenter];
      presentedModalViewController2 = [(_TVAppNavigationController *)self presentedModalViewController];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __47___TVAppNavigationController_dismissAllModals___block_invoke_3;
      v23[3] = &unk_279D6E6F8;
      v24 = modalsCopy;
      [v21 hideController:presentedModalViewController2 animated:0 withCompletion:v23];

      [(_TVAppNavigationController *)self setPresentedModalViewController:0];
      v15 = v24;
    }
  }

LABEL_11:
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v15[1] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if ([(_TVAppNavigationController *)self _hasBeenCleared])
  {
    v15[0] = controllerCopy;
    viewControllers = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [(_TVAppNavigationController *)self setViewControllers:viewControllers animated:animatedCopy];
  }

  else
  {
    viewControllers = [(_TVAppNavigationController *)self viewControllers];
    v8 = [viewControllers count];
    if (viewControllers)
    {
      v9 = v8;
      if (v8 >= 4 && v8 >= self->_maxNavControllerStackDepth)
      {
        v10 = objc_alloc(MEMORY[0x277CBEB18]);
        firstObject = [viewControllers firstObject];
        v12 = [v10 initWithObjects:{firstObject, 0}];

        v13 = [viewControllers subarrayWithRange:{2, v9 - 2}];
        [v12 addObjectsFromArray:v13];

        [(_TVAppNavigationController *)self setViewControllers:v12];
      }
    }

    v14.receiver = self;
    v14.super_class = _TVAppNavigationController;
    [(_TVAppNavigationController *)&v14 pushViewController:controllerCopy animated:animatedCopy];
  }
}

- (void)popDocument
{
  v23 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  viewControllers = [(_TVAppNavigationController *)self viewControllers];
  v4 = [viewControllers copy];
  reverseObjectEnumerator = [v4 reverseObjectEnumerator];

  if ([reverseObjectEnumerator countByEnumeratingWithState:v19 objects:v22 count:16])
  {
    v6 = **(&v19[0] + 1);
    if (objc_opt_respondsToSelector())
    {
      v7 = TVMLKitLogObject;
      if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        appDocument = [v6 appDocument];
        *buf = 138412290;
        v21 = appDocument;
        _os_log_impl(&dword_26CD9A000, v8, OS_LOG_TYPE_DEFAULT, "Nav controller popping top app document: %@", buf, 0xCu);
      }
    }

    viewControllers2 = [(_TVAppNavigationController *)self viewControllers];
    if ([viewControllers2 count] == 1 && (-[_TVAppNavigationController presentingViewController](self, "presentingViewController"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      presentingViewController = [(_TVAppNavigationController *)self presentingViewController];
      [presentingViewController dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      lastObject = [viewControllers2 lastObject];

      if (lastObject == v6)
      {
        v17 = [(_TVAppNavigationController *)self popViewControllerAnimated:1];
      }

      else
      {
        firstObject = [viewControllers2 firstObject];

        if (firstObject == v6)
        {
          v18 = [(_TVAppNavigationController *)self popToRootViewControllerAnimated:1];
        }

        else
        {
          v15 = [viewControllers2 objectAtIndex:{objc_msgSend(viewControllers2, "indexOfObjectIdenticalTo:", v6) - 1}];
          v16 = [(_TVAppNavigationController *)self popToViewController:v15 animated:1];
        }
      }
    }
  }
}

- (void)popToDocument:(id)document
{
  v23 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  v5 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = documentCopy;
    _os_log_impl(&dword_26CD9A000, v5, OS_LOG_TYPE_DEFAULT, "Nav controller popping to app document: %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  viewControllers = [(_TVAppNavigationController *)self viewControllers];
  v7 = [viewControllers copy];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          appDocument = [v12 appDocument];
          v14 = [appDocument isEqual:documentCopy];

          if (v14)
          {
            v15 = [(_TVAppNavigationController *)self popToViewController:v12 animated:1];
            goto LABEL_14;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (id)popToRootDocument:(BOOL)document
{
  documentCopy = document;
  v22 = *MEMORY[0x277D85DE8];
  v5 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CD9A000, v5, OS_LOG_TYPE_DEFAULT, "Nav controller popping to root app document.", buf, 2u);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  viewControllers = [(_TVAppNavigationController *)self viewControllers];
  v7 = [viewControllers copy];

  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          appDocument = [v12 appDocument];

          if (appDocument)
          {
            v14 = [(_TVAppNavigationController *)self popToViewController:v12 animated:documentCopy];
            goto LABEL_14;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (void)removeDocument:(id)document
{
  v21 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  viewControllers = [(_TVAppNavigationController *)self viewControllers];
  v6 = [viewControllers copy];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          appDocument = [v11 appDocument];
          v13 = [appDocument isEqual:documentCopy];

          if (v13)
          {
            viewControllers2 = [(_TVAppNavigationController *)self viewControllers];
            v15 = [viewControllers2 mutableCopy];

            [v15 removeObject:v11];
            [(_TVAppNavigationController *)self setViewControllers:v15 animated:1];

            goto LABEL_12;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)replaceDocument:(id)document withDocument:(id)withDocument options:(id)options
{
  v28 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  withDocumentCopy = withDocument;
  optionsCopy = options;
  v11 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = documentCopy;
    v26 = 2112;
    v27 = withDocumentCopy;
    _os_log_impl(&dword_26CD9A000, v11, OS_LOG_TYPE_DEFAULT, "Nav controller replacing document %@ with document %@.", buf, 0x16u);
  }

  tv_isPresentedModal = [documentCopy tv_isPresentedModal];
  viewControllers = [(_TVAppNavigationController *)self viewControllers];
  v14 = [viewControllers copy];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67___TVAppNavigationController_replaceDocument_withDocument_options___block_invoke;
  v18[3] = &unk_279D710E0;
  v19 = documentCopy;
  v20 = withDocumentCopy;
  v23 = tv_isPresentedModal;
  v21 = optionsCopy;
  selfCopy = self;
  v15 = optionsCopy;
  v16 = withDocumentCopy;
  v17 = documentCopy;
  [v14 enumerateObjectsUsingBlock:v18];
}

- (id)activeDocument
{
  currentViewController = [(_TVAppNavigationController *)self currentViewController];
  if ([currentViewController conformsToProtocol:&unk_287E96310])
  {
    v2CurrentViewController = [currentViewController currentViewController];

    currentViewController = v2CurrentViewController;
  }

  if ([currentViewController conformsToProtocol:&unk_287E7C190])
  {
    v4 = currentViewController;
  }

  else
  {
    v4 = 0;
  }

  activeDocument = [v4 activeDocument];

  return activeDocument;
}

- (id)popToRootViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  viewControllers = [(_TVAppNavigationController *)self viewControllers];
  firstObject = [viewControllers firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(_TVAppNavigationController *)self popToRootDocument:animatedCopy];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _TVAppNavigationController;
    v7 = [(_TVAppNavigationController *)&v10 popToRootViewControllerAnimated:animatedCopy];
  }

  v8 = v7;

  return v8;
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  v5 = MEMORY[0x277CCAB98];
  controllerCopy = controller;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter postNotificationName:@"TVAppNavigationDidDisplayViewControllerNotification" object:controllerCopy];
}

- (void)navigationController:(id)controller willShowViewController:(id)viewController animated:(BOOL)animated
{
  v5 = MEMORY[0x277CCAB98];
  controllerCopy = controller;
  defaultCenter = [v5 defaultCenter];
  [defaultCenter postNotificationName:@"TVAppNavigationWillDisplayViewControllerNotification" object:controllerCopy];
}

- (BOOL)_hasBeenCleared
{
  topViewController = [(_TVAppNavigationController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_doWillLoadAppDocumentWithController:(id)controller
{
  if ((*&self->_ancDelegateFlags & 8) != 0)
  {
    controllerCopy = controller;
    appNavigationControllerDelegate = [(_TVAppNavigationController *)self appNavigationControllerDelegate];
    [appNavigationControllerDelegate appNavigationController:self willLoadAppDocumentWithController:controllerCopy];
  }
}

- (BOOL)_shouldIgnoreModalDismissal:(id)dismissal
{
  if ((*&self->_ancDelegateFlags & 2) == 0)
  {
    return 0;
  }

  selfCopy = self;
  dismissalCopy = dismissal;
  appNavigationControllerDelegate = [(_TVAppNavigationController *)selfCopy appNavigationControllerDelegate];
  LOBYTE(selfCopy) = [appNavigationControllerDelegate appNavigationController:selfCopy shouldIgnoreDismissalForViewController:dismissalCopy];

  return selfCopy;
}

- (BOOL)_shouldOverrideModalBehaviorForPlaybackDocument:(id)document andExistingPlaybackDocument:(id)playbackDocument
{
  if ((*&self->_ancDelegateFlags & 1) == 0)
  {
    return 0;
  }

  selfCopy = self;
  playbackDocumentCopy = playbackDocument;
  documentCopy = document;
  appNavigationControllerDelegate = [(_TVAppNavigationController *)selfCopy appNavigationControllerDelegate];
  LOBYTE(selfCopy) = [appNavigationControllerDelegate appNavigationController:selfCopy shouldOverrideModalBehaviorForDocument:documentCopy andExistingDocument:playbackDocumentCopy];

  return selfCopy;
}

- (TVApplicationController)appController
{
  WeakRetained = objc_loadWeakRetained(&self->_appController);

  return WeakRetained;
}

- (_TVAppNavigationControllerDelegate)appNavigationControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appNavigationControllerDelegate);

  return WeakRetained;
}

@end