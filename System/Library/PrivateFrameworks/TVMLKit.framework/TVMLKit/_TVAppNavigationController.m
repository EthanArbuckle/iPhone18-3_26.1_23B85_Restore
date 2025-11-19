@interface _TVAppNavigationController
- (BOOL)_hasBeenCleared;
- (BOOL)_shouldIgnoreModalDismissal:(id)a3;
- (BOOL)_shouldOverrideModalBehaviorForPlaybackDocument:(id)a3 andExistingPlaybackDocument:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (TVApplicationController)appController;
- (UIViewController)currentViewController;
- (_TVAppNavigationController)initWithApplicationController:(id)a3;
- (_TVAppNavigationController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TVAppNavigationController)initWithRootViewController:(id)a3;
- (_TVAppNavigationControllerDelegate)appNavigationControllerDelegate;
- (id)activeDocument;
- (id)documents;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)popToRootDocument:(BOOL)a3;
- (id)popToRootViewControllerAnimated:(BOOL)a3;
- (void)_doWillLoadAppDocumentWithController:(id)a3;
- (void)_handleMenuAction:(id)a3;
- (void)_presentModalDocumentController:(id)a3 options:(id)a4;
- (void)clear;
- (void)dealloc;
- (void)dismissAllModals:(id)a3;
- (void)dismissModal:(BOOL)a3;
- (void)dismissed;
- (void)insertDocument:(id)a3 beforeDocument:(id)a4 options:(id)a5;
- (void)loadView;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)popDocument;
- (void)popToDocument:(id)a3;
- (void)presentModal:(id)a3 options:(id)a4;
- (void)pushDocument:(id)a3 options:(id)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)removeDocument:(id)a3;
- (void)replaceDocument:(id)a3 withDocument:(id)a4 options:(id)a5;
- (void)setAppNavigationControllerDelegate:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDocuments:(id)a3 options:(id)a4;
- (void)setMaxNavControllerStackDepth:(unint64_t)a3;
- (void)setTitle:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation _TVAppNavigationController

- (_TVAppNavigationController)initWithRootViewController:(id)a3
{
  v7.receiver = self;
  v7.super_class = _TVAppNavigationController;
  v3 = [(_TVAppNavigationController *)&v7 initWithRootViewController:a3];
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

- (_TVAppNavigationController)initWithApplicationController:(id)a3
{
  v4 = a3;
  v5 = [(_TVAppNavigationController *)self initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_appController, v4);
    v6->_maxNavControllerStackDepth = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v6;
}

- (_TVAppNavigationController)initWithNibName:(id)a3 bundle:(id)a4
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

- (void)setMaxNavControllerStackDepth:(unint64_t)a3
{
  if (a3 < 3)
  {
    v3 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEBUG))
    {
      [_TVAppNavigationController setMaxNavControllerStackDepth:v3];
    }
  }

  else
  {
    self->_maxNavControllerStackDepth = a3;
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = _TVAppNavigationController;
  [(_TVAppNavigationController *)&v6 viewWillAppear:a3];
  v4 = [MEMORY[0x277D75418] currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 2)
  {
    [(_TVAppNavigationController *)self setNavigationBarHidden:1];
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _TVAppNavigationController;
  [(_TVAppNavigationController *)&v5 viewWillDisappear:a3];
  if ((*&self->_ancDelegateFlags & 0x10) != 0)
  {
    v4 = [(_TVAppNavigationController *)self appNavigationControllerDelegate];
    [v4 appNavigationControllerWillDisappear:self];
  }
}

- (void)setDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = _TVAppNavigationController;
  [(_TVAppNavigationController *)&v4 setDelegate:a3];
  v3 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_ERROR))
  {
    [_TVAppNavigationController setDelegate:v3];
  }
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(_TVAppNavigationController *)self title];
  if (v5)
  {
  }

  else
  {
    v6 = [(_TVAppNavigationController *)self title];

    if (v6 != v4)
    {
      v7.receiver = self;
      v7.super_class = _TVAppNavigationController;
      [(_TVAppNavigationController *)&v7 setTitle:v4];
    }
  }
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [v8 customAnimatorForNavigationControllerOperation:a4 toViewController:v9];
  if (!v10)
  {
    v10 = [v9 customAnimatorForNavigationControllerOperation:a4 fromViewController:v8];
  }

  return v10;
}

- (void)setAppNavigationControllerDelegate:(id)a3
{
  v14 = a3;
  v4 = objc_storeWeak(&self->_appNavigationControllerDelegate, v14);
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

- (void)_handleMenuAction:(id)a3
{
  v4 = [(_TVAppNavigationController *)self presentingViewController];

  if (!v4)
  {

    [(_TVAppNavigationController *)self popDocument];
  }
}

- (void)loadView
{
  v7.receiver = self;
  v7.super_class = _TVAppNavigationController;
  [(_TVAppNavigationController *)&v7 loadView];
  v3 = [(_TVAppNavigationController *)self view];
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__handleMenuAction_];
  menuRecognizer = self->_menuRecognizer;
  self->_menuRecognizer = v4;

  [(UITapGestureRecognizer *)self->_menuRecognizer setAllowedPressTypes:&unk_287E487E0];
  [(UITapGestureRecognizer *)self->_menuRecognizer setDelegate:self];
  [v3 addGestureRecognizer:self->_menuRecognizer];
  v6 = [(_TVAppNavigationController *)self navigationBar];
  [v6 _setHidesShadow:1];
}

- (void)dealloc
{
  v3 = [(_TVAppNavigationController *)self modalPresenterObserverToken];

  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = [(_TVAppNavigationController *)self modalPresenterObserverToken];
    [v4 removeObserver:v5];
  }

  v6.receiver = self;
  v6.super_class = _TVAppNavigationController;
  [(_TVAppNavigationController *)&v6 dealloc];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  if (self->_menuRecognizer != a3)
  {
    return 1;
  }

  v5 = [(_TVAppNavigationController *)self documents];
  if ([v5 count] > 1)
  {
    v3 = 1;
  }

  else
  {
    v6 = [(_TVAppNavigationController *)self viewControllers];
    v3 = [v6 count] > 1;
  }

  return v3;
}

- (UIViewController)currentViewController
{
  v3 = [(_TVAppNavigationController *)self presentedModalViewController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(_TVAppNavigationController *)self viewControllers];
    v5 = [v6 lastObject];
  }

  return v5;
}

- (void)clear
{
  v5[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v5[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [(_TVAppNavigationController *)self setViewControllers:v4 animated:1];
}

- (void)setDocuments:(id)a3 options:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [a4 objectForKey:@"animated"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 BOOLValue];
  }

  else
  {
    v9 = 1;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v6;
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

  [(_TVAppNavigationController *)self setViewControllers:v10 animated:v9];
}

- (id)documents
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [(_TVAppNavigationController *)self viewControllers];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
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
          v10 = [v9 appDocument];

          if (v10)
          {
            v11 = [v9 appDocument];
            [v3 addObject:v11];
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

- (void)insertDocument:(id)a3 beforeDocument:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_TVAppNavigationController *)self viewControllers];
  v12 = [v11 copy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68___TVAppNavigationController_insertDocument_beforeDocument_options___block_invoke;
  v16[3] = &unk_279D6EB30;
  v17 = v9;
  v18 = self;
  v19 = v8;
  v20 = v10;
  v13 = v10;
  v14 = v8;
  v15 = v9;
  [v12 enumerateObjectsUsingBlock:v16];
}

- (void)pushDocument:(id)a3 options:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_26CD9A000, v8, OS_LOG_TYPE_DEFAULT, "Nav controller pushing app document: %@, options: %@", &v18, 0x16u);
  }

  v9 = [[_TVAppDocumentRequestController alloc] initWithAppDocument:v6];
  [(_TVAppDocumentController *)v9 setPresentedModal:0];
  v10 = [v7 objectForKey:*MEMORY[0x277D1AF68]];
  v11 = [v10 BOOLValue];

  [(_TVAppDocumentController *)v9 setAdoptsContext:v11];
  [(_TVAppNavigationController *)self _doWillLoadAppDocumentWithController:v9];
  v12 = +[TVStorePlaybackLaunchShroud sharedShroud];
  v13 = [v12 isHidden];

  v14 = [(_TVAppNavigationController *)self viewControllers];
  if ([v14 count])
  {
    v15 = [v7 objectForKey:@"hidesBottomBarWhenPushed"];
    v16 = [v15 BOOLValue];
  }

  else
  {
    v16 = 0;
  }

  [(_TVAppDocumentRequestController *)v9 setHidesBottomBarWhenPushed:v16];
  v17 = [(_TVAppNavigationController *)self viewControllers];
  -[_TVAppNavigationController pushViewController:animated:](self, "pushViewController:animated:", v9, ([v17 count] | v13) != 0);
}

- (void)presentModal:(id)a3 options:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(_TVAppNavigationController *)self presentedModalViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 appDocument];
  }

  else
  {
    v8 = 0;
  }

  if (![(_TVAppNavigationController *)self _shouldOverrideModalBehaviorForPlaybackDocument:v12 andExistingPlaybackDocument:v8])
  {
    v9 = [[_TVAppDocumentRequestController alloc] initWithAppDocument:v12];
    v10 = [v6 objectForKey:*MEMORY[0x277D1AF68]];
    v11 = [v10 BOOLValue];

    [(_TVAppDocumentController *)v9 setAdoptsContext:v11];
    [(_TVAppNavigationController *)self _presentModalDocumentController:v9 options:v6];
  }
}

- (void)_presentModalDocumentController:(id)a3 options:(id)a4
{
  v6 = a3;
  v37 = a4;
  objc_initWeak(location, self);
  [v6 setPresentedModal:1];
  v7 = [(_TVAppNavigationController *)self modalPresenterObserverToken];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = [MEMORY[0x277CCABD8] mainQueue];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __70___TVAppNavigationController__presentModalDocumentController_options___block_invoke;
    v47[3] = &unk_279D6F3D8;
    objc_copyWeak(&v48, location);
    v10 = [v8 addObserverForName:@"TVModalPresenterDismissedNotification" object:0 queue:v9 usingBlock:v47];

    [(_TVAppNavigationController *)self setModalPresenterObserverToken:v10];
    objc_destroyWeak(&v48);
  }

  v11 = [(_TVAppNavigationController *)self presentedModalViewController];
  v12 = [[TVModalPresenterConfiguration alloc] initWithDictionary:v37];
  [(_TVAppNavigationController *)self _doWillLoadAppDocumentWithController:v6];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __70___TVAppNavigationController__presentModalDocumentController_options___block_invoke_2;
  v42[3] = &unk_279D710B8;
  v42[4] = self;
  objc_copyWeak(&v46, location);
  v33 = v12;
  v43 = v33;
  v34 = v11;
  v44 = v34;
  v35 = v6;
  v45 = v35;
  v36 = MEMORY[0x26D6AFBB0](v42);
  v13 = [(_TVAppNavigationController *)self presentedViewController];
  if (v13)
  {
    v14 = [(_TVAppNavigationController *)self presentedViewController];
    v15 = +[_TVModalPresenter presenter];
    v16 = [v15 modalRootViewController];
    v17 = [v14 isEqual:v16];

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
  v18 = [v32 modalRootViewController];
  v19 = [v18 presentingViewController];
  if (v19)
  {
    v31 = [(_TVAppNavigationController *)self presentedViewController];
    v30 = +[_TVModalPresenter presenter];
    v13 = [v30 modalRootViewController];
    if (![v31 isEqual:v13])
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
  v22 = [v21 modalRootViewController];
  v23 = [v22 viewControllers];
  if ([v23 count] < 2)
  {
    v27 = 0;
  }

  else
  {
    v24 = +[_TVModalPresenter presenter];
    v25 = [v24 modalRootViewController];
    v26 = [v25 visibleViewController];
    v27 = v26 != v34 && [(TVModalPresenterConfiguration *)v33 navigationBarHidden];
  }

  if (v19)
  {
  }

  if (v27)
  {
    goto LABEL_18;
  }

  v29 = [v35 parentViewController];

  if (!v29)
  {
    v36[2]();
  }

LABEL_20:

  objc_destroyWeak(&v46);
  objc_destroyWeak(location);
}

- (void)dismissed
{
  v3 = [(_TVAppNavigationController *)self presentedModalViewController];
  v4 = [(_TVAppNavigationController *)self _shouldIgnoreModalDismissal:v3];

  if (!v4)
  {

    [(_TVAppNavigationController *)self setPresentedModalViewController:0];
  }
}

- (void)dismissModal:(BOOL)a3
{
  v3 = a3;
  v5 = [(_TVAppNavigationController *)self presentedModalViewController];
  v6 = [(_TVAppNavigationController *)self _shouldIgnoreModalDismissal:v5];

  if (!v6)
  {
    v7 = [(_TVAppNavigationController *)self presentedModalViewController];

    if (v7)
    {
      v8 = +[_TVModalPresenter presenter];
      v9 = [(_TVAppNavigationController *)self presentedModalViewController];
      [v8 hideController:v9 animated:v3 withCompletion:0];

      [(_TVAppNavigationController *)self setPresentedModalViewController:0];
    }
  }
}

- (void)dismissAllModals:(id)a3
{
  v4 = a3;
  v5 = [(_TVAppNavigationController *)self presentedViewController];
  if (v5 && (v6 = v5, -[_TVAppNavigationController presentedViewController](self, "presentedViewController"), v7 = objc_claimAutoreleasedReturnValue(), +[_TVModalPresenter presenter](_TVModalPresenter, "presenter"), v8 = objc_claimAutoreleasedReturnValue(), [v8 modalRootViewController], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v7, "isEqual:", v9), v9, v8, v7, v6, (v10 & 1) == 0))
  {
    v16 = [(_TVAppNavigationController *)self presentedViewController];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v18 = [(_TVAppNavigationController *)self presentedViewController];
      v19 = [v18 popToRootViewControllerAnimated:0];
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __47___TVAppNavigationController_dismissAllModals___block_invoke;
    v27[3] = &unk_279D6E6F8;
    v28 = v4;
    [(_TVAppNavigationController *)self dismissViewControllerAnimated:0 completion:v27];
    v15 = v28;
  }

  else
  {
    v11 = +[_TVModalPresenter presenter];
    v12 = [v11 modalRootViewController];
    v13 = [v12 presentingViewController];

    if (v13)
    {
      v14 = +[_TVModalPresenter presenter];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __47___TVAppNavigationController_dismissAllModals___block_invoke_2;
      v25[3] = &unk_279D6E6F8;
      v26 = v4;
      [v14 hideAllAnimated:0 withCompletion:v25];

      v15 = v26;
    }

    else
    {
      v20 = [(_TVAppNavigationController *)self presentedModalViewController];

      if (!v20)
      {
        v4[2](v4);
        goto LABEL_11;
      }

      v21 = +[_TVModalPresenter presenter];
      v22 = [(_TVAppNavigationController *)self presentedModalViewController];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __47___TVAppNavigationController_dismissAllModals___block_invoke_3;
      v23[3] = &unk_279D6E6F8;
      v24 = v4;
      [v21 hideController:v22 animated:0 withCompletion:v23];

      [(_TVAppNavigationController *)self setPresentedModalViewController:0];
      v15 = v24;
    }
  }

LABEL_11:
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(_TVAppNavigationController *)self _hasBeenCleared])
  {
    v15[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [(_TVAppNavigationController *)self setViewControllers:v7 animated:v4];
  }

  else
  {
    v7 = [(_TVAppNavigationController *)self viewControllers];
    v8 = [v7 count];
    if (v7)
    {
      v9 = v8;
      if (v8 >= 4 && v8 >= self->_maxNavControllerStackDepth)
      {
        v10 = objc_alloc(MEMORY[0x277CBEB18]);
        v11 = [v7 firstObject];
        v12 = [v10 initWithObjects:{v11, 0}];

        v13 = [v7 subarrayWithRange:{2, v9 - 2}];
        [v12 addObjectsFromArray:v13];

        [(_TVAppNavigationController *)self setViewControllers:v12];
      }
    }

    v14.receiver = self;
    v14.super_class = _TVAppNavigationController;
    [(_TVAppNavigationController *)&v14 pushViewController:v6 animated:v4];
  }
}

- (void)popDocument
{
  v23 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v3 = [(_TVAppNavigationController *)self viewControllers];
  v4 = [v3 copy];
  v5 = [v4 reverseObjectEnumerator];

  if ([v5 countByEnumeratingWithState:v19 objects:v22 count:16])
  {
    v6 = **(&v19[0] + 1);
    if (objc_opt_respondsToSelector())
    {
      v7 = TVMLKitLogObject;
      if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v7;
        v9 = [v6 appDocument];
        *buf = 138412290;
        v21 = v9;
        _os_log_impl(&dword_26CD9A000, v8, OS_LOG_TYPE_DEFAULT, "Nav controller popping top app document: %@", buf, 0xCu);
      }
    }

    v10 = [(_TVAppNavigationController *)self viewControllers];
    if ([v10 count] == 1 && (-[_TVAppNavigationController presentingViewController](self, "presentingViewController"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      v12 = [(_TVAppNavigationController *)self presentingViewController];
      [v12 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      v13 = [v10 lastObject];

      if (v13 == v6)
      {
        v17 = [(_TVAppNavigationController *)self popViewControllerAnimated:1];
      }

      else
      {
        v14 = [v10 firstObject];

        if (v14 == v6)
        {
          v18 = [(_TVAppNavigationController *)self popToRootViewControllerAnimated:1];
        }

        else
        {
          v15 = [v10 objectAtIndex:{objc_msgSend(v10, "indexOfObjectIdenticalTo:", v6) - 1}];
          v16 = [(_TVAppNavigationController *)self popToViewController:v15 animated:1];
        }
      }
    }
  }
}

- (void)popToDocument:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&dword_26CD9A000, v5, OS_LOG_TYPE_DEFAULT, "Nav controller popping to app document: %@", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(_TVAppNavigationController *)self viewControllers];
  v7 = [v6 copy];

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
          v13 = [v12 appDocument];
          v14 = [v13 isEqual:v4];

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

- (id)popToRootDocument:(BOOL)a3
{
  v3 = a3;
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
  v6 = [(_TVAppNavigationController *)self viewControllers];
  v7 = [v6 copy];

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
          v13 = [v12 appDocument];

          if (v13)
          {
            v14 = [(_TVAppNavigationController *)self popToViewController:v12 animated:v3];
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

- (void)removeDocument:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(_TVAppNavigationController *)self viewControllers];
  v6 = [v5 copy];

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
          v12 = [v11 appDocument];
          v13 = [v12 isEqual:v4];

          if (v13)
          {
            v14 = [(_TVAppNavigationController *)self viewControllers];
            v15 = [v14 mutableCopy];

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

- (void)replaceDocument:(id)a3 withDocument:(id)a4 options:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_26CD9A000, v11, OS_LOG_TYPE_DEFAULT, "Nav controller replacing document %@ with document %@.", buf, 0x16u);
  }

  v12 = [v8 tv_isPresentedModal];
  v13 = [(_TVAppNavigationController *)self viewControllers];
  v14 = [v13 copy];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67___TVAppNavigationController_replaceDocument_withDocument_options___block_invoke;
  v18[3] = &unk_279D710E0;
  v19 = v8;
  v20 = v9;
  v23 = v12;
  v21 = v10;
  v22 = self;
  v15 = v10;
  v16 = v9;
  v17 = v8;
  [v14 enumerateObjectsUsingBlock:v18];
}

- (id)activeDocument
{
  v2 = [(_TVAppNavigationController *)self currentViewController];
  if ([v2 conformsToProtocol:&unk_287E96310])
  {
    v3 = [v2 currentViewController];

    v2 = v3;
  }

  if ([v2 conformsToProtocol:&unk_287E7C190])
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 activeDocument];

  return v5;
}

- (id)popToRootViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(_TVAppNavigationController *)self viewControllers];
  v6 = [v5 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(_TVAppNavigationController *)self popToRootDocument:v3];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = _TVAppNavigationController;
    v7 = [(_TVAppNavigationController *)&v10 popToRootViewControllerAnimated:v3];
  }

  v8 = v7;

  return v8;
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = MEMORY[0x277CCAB98];
  v6 = a3;
  v7 = [v5 defaultCenter];
  [v7 postNotificationName:@"TVAppNavigationDidDisplayViewControllerNotification" object:v6];
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = MEMORY[0x277CCAB98];
  v6 = a3;
  v7 = [v5 defaultCenter];
  [v7 postNotificationName:@"TVAppNavigationWillDisplayViewControllerNotification" object:v6];
}

- (BOOL)_hasBeenCleared
{
  v2 = [(_TVAppNavigationController *)self topViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)_doWillLoadAppDocumentWithController:(id)a3
{
  if ((*&self->_ancDelegateFlags & 8) != 0)
  {
    v5 = a3;
    v6 = [(_TVAppNavigationController *)self appNavigationControllerDelegate];
    [v6 appNavigationController:self willLoadAppDocumentWithController:v5];
  }
}

- (BOOL)_shouldIgnoreModalDismissal:(id)a3
{
  if ((*&self->_ancDelegateFlags & 2) == 0)
  {
    return 0;
  }

  v4 = self;
  v5 = a3;
  v6 = [(_TVAppNavigationController *)v4 appNavigationControllerDelegate];
  LOBYTE(v4) = [v6 appNavigationController:v4 shouldIgnoreDismissalForViewController:v5];

  return v4;
}

- (BOOL)_shouldOverrideModalBehaviorForPlaybackDocument:(id)a3 andExistingPlaybackDocument:(id)a4
{
  if ((*&self->_ancDelegateFlags & 1) == 0)
  {
    return 0;
  }

  v5 = self;
  v6 = a4;
  v7 = a3;
  v8 = [(_TVAppNavigationController *)v5 appNavigationControllerDelegate];
  LOBYTE(v5) = [v8 appNavigationController:v5 shouldOverrideModalBehaviorForDocument:v7 andExistingDocument:v6];

  return v5;
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