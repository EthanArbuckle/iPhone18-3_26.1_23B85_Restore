@interface VideosExtrasNavigationController
- (VideosExtrasContext)context;
- (VideosExtrasMainTemplateViewController)mainTemplateViewController;
- (VideosExtrasNavigationController)initWithContext:(id)a3;
- (id)_viewControllerForDocument:(id)a3 index:(int64_t *)a4;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)documents;
- (void)_dismissViewController:(id)a3;
- (void)_installBackButtonOnNavigationItem:(id)a3 withTitle:(id)a4;
- (void)_installDoneButtonOnNavigationItem:(id)a3;
- (void)_presentDialogTemplate:(id)a3;
- (void)insertDocument:(id)a3 beforeDocument:(id)a4 options:(id)a5;
- (void)loadingView:(id)a3 documentDidUpdate:(id)a4 options:(id)a5;
- (void)popToDocument:(id)a3;
- (void)popToRootDocument;
- (void)pushDocument:(id)a3 options:(id)a4;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
- (void)replaceDocument:(id)a3 withDocument:(id)a4 options:(id)a5;
- (void)setViewControllers:(id)a3 animated:(BOOL)a4;
- (void)viewDidLoad;
- (void)willShowViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation VideosExtrasNavigationController

- (VideosExtrasNavigationController)initWithContext:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DD258];
  v5 = a3;
  v6 = [[v4 alloc] initWithNibName:0 bundle:0];
  v7 = objc_opt_class();
  v13.receiver = self;
  v13.super_class = VideosExtrasNavigationController;
  v8 = [(VideosExtrasNavigationController *)&v13 initWithNavigationBarClass:v7 toolbarClass:0];
  v9 = [(UIViewController *)v6 navigationItem];
  [(VideosExtrasNavigationController *)v8 _installDoneButtonOnNavigationItem:v9];

  v14[0] = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [(VideosExtrasNavigationController *)v8 setViewControllers:v10];

  emptyViewController = v8->_emptyViewController;
  v8->_emptyViewController = v6;

  objc_storeWeak(&v8->_context, v5);
  v8->_showsBuiltInNavControls = 1;
  return v8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = VideosExtrasNavigationController;
  [(VideosExtrasNavigationController *)&v4 viewDidLoad];
  [(VideosExtrasNavigationController *)self setNavigationBarHidden:1 animated:0];
  v3 = [(VideosExtrasNavigationController *)self navigationBar];
  [v3 setUserInteractionEnabled:0];
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  v2 = [(VideosExtrasNavigationController *)self childViewControllers];
  v3 = [v2 lastObject];

  return v3;
}

- (VideosExtrasMainTemplateViewController)mainTemplateViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v3 = [WeakRetained extrasRootViewController];
  v4 = [v3 mainTemplateViewController];

  return v4;
}

- (void)pushDocument:(id)a3 options:(id)a4
{
  v21 = a3;
  v6 = a4;
  loadingView = self->_loadingView;
  if (loadingView)
  {
    [(VideosExtrasLoadingView *)loadingView cancelCountdownToVisibility];
    [(VideosExtrasLoadingView *)self->_loadingView removeFromSuperview];
    v8 = self->_loadingView;
    self->_loadingView = 0;
  }

  v9 = [v21 templateElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [[VideosExtrasLoadingView alloc] initWithDocument:v21 options:v6 delegate:self];
    v11 = self->_loadingView;
    self->_loadingView = v10;

    v12 = self->_loadingView;
    v13 = [(VideosExtrasNavigationController *)self topViewController];
    v14 = [v13 view];
    [v14 bounds];
    [(VideosExtrasLoadingView *)v12 setFrame:?];

    v15 = [(VideosExtrasNavigationController *)self topViewController];
    v16 = [v15 view];

    if (self->_loadingView)
    {
      if (v16)
      {
        v17 = [(VideosExtrasNavigationController *)self mainTemplateViewController];

        if (v17)
        {
          [v16 addSubview:self->_loadingView];
          [(VideosExtrasLoadingView *)self->_loadingView startCountdownToVisibilityWithInterval:0.33];
        }
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(VideosExtrasNavigationController *)self _presentDialogTemplate:v9];
    goto LABEL_16;
  }

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v16 = [VideosExtrasTemplateViewController templateViewControllerWithDocument:v21 options:v6 context:WeakRetained];

    if (v16)
    {
      emptyViewController = self->_emptyViewController;
      v20 = [(VideosExtrasNavigationController *)self topViewController];

      if (emptyViewController == v20)
      {
        [(UINavigationController *)self _VideosExtras_replaceViewController:self->_emptyViewController withViewController:v16 animated:0];
      }

      else
      {
        [(VideosExtrasNavigationController *)self pushViewController:v16 animated:1];
      }
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)popToDocument:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(VideosExtrasNavigationController *)self viewControllers];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 document];

          if (v11 == v4)
          {
            v12 = [(VideosExtrasNavigationController *)self popToViewController:v10 animated:1];
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

- (void)popToRootDocument
{
  v4 = [(VideosExtrasNavigationController *)self documents];
  v3 = [v4 firstObject];
  [(VideosExtrasNavigationController *)self popToDocument:v3];
}

- (void)insertDocument:(id)a3 beforeDocument:(id)a4 options:(id)a5
{
  v7 = a3;
  v8 = a5;
  v14 = 0;
  v9 = [(VideosExtrasNavigationController *)self _viewControllerForDocument:v7 index:&v14];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v11 = [VideosExtrasTemplateViewController templateViewControllerWithDocument:v7 options:v8 context:WeakRetained];

    v12 = [(VideosExtrasNavigationController *)self viewControllers];
    v13 = [v12 mutableCopy];

    [v13 insertObject:v11 atIndex:v14];
    [(VideosExtrasNavigationController *)self setViewControllers:v13];
  }
}

- (void)replaceDocument:(id)a3 withDocument:(id)a4 options:(id)a5
{
  v7 = a4;
  v8 = a5;
  v14 = 0;
  v9 = [(VideosExtrasNavigationController *)self _viewControllerForDocument:v7 index:&v14];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v11 = [VideosExtrasTemplateViewController templateViewControllerWithDocument:v7 options:v8 context:WeakRetained];

    v12 = [(VideosExtrasNavigationController *)self viewControllers];
    v13 = [v12 mutableCopy];

    [v13 replaceObjectAtIndex:v14 withObject:v11];
    [(VideosExtrasNavigationController *)self setViewControllers:v13];
  }
}

- (id)_viewControllerForDocument:(id)a3 index:(int64_t *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(VideosExtrasNavigationController *)self viewControllers];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v12 = [v11 document];

          if (v12 == v6)
          {
            v8 = v11;
            v13 = [v7 indexOfObject:v8];
            goto LABEL_12;
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:

  if (a4)
  {
    *a4 = v13;
  }

  return v8;
}

- (id)documents
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(VideosExtrasNavigationController *)self viewControllers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 document];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_dismissViewController:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained extrasDoneButtonPressed];
  }

  else
  {
    [WeakRetained extrasRequestsPlaybackStop];
    v4 = objc_loadWeakRetained(&self->_context);
    v5 = [v4 extrasRootViewController];
    v6 = [v5 presentingViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_presentDialogTemplate:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 title];
  v6 = [v5 text];
  v7 = [v6 string];

  v8 = [v4 descriptionText];
  v9 = [v8 text];
  v10 = [v9 string];

  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v7 message:v10 preferredStyle:0];
  [v11 setPreferredStyle:1];
  [v11 _setIgnoreAppSupportedOrientations:1];
  v12 = [v4 buttons];
  v13 = [v12 count];

  if (v13)
  {
    v28 = v10;
    v29 = self;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = [v4 buttons];
    v15 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v33;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v32 + 1) + 8 * i) text];
          v20 = [v19 text];
          v21 = [v20 string];

          v22 = [MEMORY[0x1E69DC648] actionWithTitle:v21 style:0 handler:0];
          [v11 addAction:v22];
        }

        v16 = [v14 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    self = v29;
    v10 = v28;
  }

  else
  {
    v23 = MEMORY[0x1E69DC648];
    v24 = +[VUILocalizationManager sharedInstance];
    v25 = [v24 localizedStringForKey:@"OK"];
    v26 = [v23 actionWithTitle:v25 style:0 handler:0];
    [v11 addAction:v26];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__VideosExtrasNavigationController__presentDialogTemplate___block_invoke;
  block[3] = &unk_1E872D990;
  block[4] = self;
  v31 = v11;
  v27 = v11;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)loadingView:(id)a3 documentDidUpdate:(id)a4 options:(id)a5
{
  loadingView = self->_loadingView;
  v8 = a5;
  v9 = a4;
  [(VideosExtrasLoadingView *)loadingView cancelCountdownToVisibility];
  [(VideosExtrasLoadingView *)self->_loadingView removeFromSuperview];
  [(VideosExtrasNavigationController *)self pushDocument:v9 options:v8];
}

- (void)setViewControllers:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v8 = [WeakRetained extrasRootViewController];
  v9 = [v8 detectMainDocument:v6];

  v10.receiver = self;
  v10.super_class = VideosExtrasNavigationController;
  [(VideosExtrasNavigationController *)&v10 setViewControllers:v9 animated:v4];
}

- (void)willShowViewController:(id)a3 animated:(BOOL)a4
{
  v14 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  v6 = [WeakRetained extrasRootViewController];
  v7 = [v6 mainTemplateViewController];
  if (v7 == v14)
  {

LABEL_6:
    v11 = 0;
    v12 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v14 videoPlaybackViewController];
    v9 = objc_loadWeakRetained(&self->_context);
    v10 = [v9 featurePlaybackViewController];

    if (v8 == v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = 0;
  v11 = 1;
LABEL_9:
  [(VideosExtrasNavigationController *)self setNavigationBarHidden:v12 animated:0];
  v13 = [(VideosExtrasNavigationController *)self navigationBar];
  [v13 setUserInteractionEnabled:v11];
}

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(VideosExtrasNavigationController *)self viewControllers];
  v8 = [v7 arrayByAddingObject:v6];

  WeakRetained = objc_loadWeakRetained(&self->_context);
  v10 = [WeakRetained extrasRootViewController];
  v11 = [v10 detectMainDocument:v8];

  if ([v11 containsObject:v6])
  {
    if (self->_clearStackOnPush)
    {
      self->_clearStackOnPush = 0;
      v12 = [v6 navigationItem];
      [(VideosExtrasNavigationController *)self _installDoneButtonOnNavigationItem:v12];
      v18[0] = v6;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [(VideosExtrasNavigationController *)self setViewControllers:v13 animated:0];
    }

    else
    {
      v12 = [v6 navigationItem];
      v14 = [(VideosExtrasNavigationController *)self topViewController];
      v13 = [v14 title];

      if (![v13 length])
      {
        v15 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
        v16 = [v15 localizedStringForKey:@"BACK" value:0 table:@"VideosExtras"];

        v13 = v16;
      }

      [(VideosExtrasNavigationController *)self _installBackButtonOnNavigationItem:v12 withTitle:v13];
      v17.receiver = self;
      v17.super_class = VideosExtrasNavigationController;
      [(VideosExtrasNavigationController *)&v17 pushViewController:v6 animated:v4];
    }
  }
}

- (void)_installDoneButtonOnNavigationItem:(id)a3
{
  if (self->_showsBuiltInNavControls)
  {
    v5 = a3;
    v6 = [(VideosExtrasNavigationController *)self navigationBar];
    v10 = +[VideosExtrasNavigationBarButton extrasNavigationButton:](VideosExtrasNavigationBarButton, "extrasNavigationButton:", [v6 _activeBarMetrics]);

    v7 = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v8 = [v7 localizedStringForKey:@"DONE" value:0 table:@"VideosExtras"];
    [v10 setTitle:v8 forState:0];

    [v10 addTarget:self action:sel__dismissViewController_ forControlEvents:64];
    [v10 sizeToFit];
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v10];
    [v5 setLeftBarButtonItem:v9];
  }
}

- (void)_installBackButtonOnNavigationItem:(id)a3 withTitle:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(VideosExtrasNavigationController *)self navigationBar];
  v10 = +[VideosExtrasNavigationBarButton extrasBackButton:](VideosExtrasNavigationBarButton, "extrasBackButton:", [v8 _activeBarMetrics]);

  [v10 setTitle:v6 forState:0];
  [v10 addTarget:self action:sel__popViewControllerFromBackButton forControlEvents:64];
  [v10 sizeToFit];
  if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v10, "semanticContentAttribute")}] == 1)
  {
    [v10 imageEdgeInsets];
    [v10 setImageEdgeInsets:?];
  }

  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v10];
  [v7 setLeftBarButtonItem:v9];
}

- (VideosExtrasContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end