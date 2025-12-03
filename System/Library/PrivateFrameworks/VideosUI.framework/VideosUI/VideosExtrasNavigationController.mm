@interface VideosExtrasNavigationController
- (VideosExtrasContext)context;
- (VideosExtrasMainTemplateViewController)mainTemplateViewController;
- (VideosExtrasNavigationController)initWithContext:(id)context;
- (id)_viewControllerForDocument:(id)document index:(int64_t *)index;
- (id)childViewControllerForHomeIndicatorAutoHidden;
- (id)documents;
- (void)_dismissViewController:(id)controller;
- (void)_installBackButtonOnNavigationItem:(id)item withTitle:(id)title;
- (void)_installDoneButtonOnNavigationItem:(id)item;
- (void)_presentDialogTemplate:(id)template;
- (void)insertDocument:(id)document beforeDocument:(id)beforeDocument options:(id)options;
- (void)loadingView:(id)view documentDidUpdate:(id)update options:(id)options;
- (void)popToDocument:(id)document;
- (void)popToRootDocument;
- (void)pushDocument:(id)document options:(id)options;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)replaceDocument:(id)document withDocument:(id)withDocument options:(id)options;
- (void)setViewControllers:(id)controllers animated:(BOOL)animated;
- (void)viewDidLoad;
- (void)willShowViewController:(id)controller animated:(BOOL)animated;
@end

@implementation VideosExtrasNavigationController

- (VideosExtrasNavigationController)initWithContext:(id)context
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DD258];
  contextCopy = context;
  v6 = [[v4 alloc] initWithNibName:0 bundle:0];
  v7 = objc_opt_class();
  v13.receiver = self;
  v13.super_class = VideosExtrasNavigationController;
  v8 = [(VideosExtrasNavigationController *)&v13 initWithNavigationBarClass:v7 toolbarClass:0];
  navigationItem = [(UIViewController *)v6 navigationItem];
  [(VideosExtrasNavigationController *)v8 _installDoneButtonOnNavigationItem:navigationItem];

  v14[0] = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [(VideosExtrasNavigationController *)v8 setViewControllers:v10];

  emptyViewController = v8->_emptyViewController;
  v8->_emptyViewController = v6;

  objc_storeWeak(&v8->_context, contextCopy);
  v8->_showsBuiltInNavControls = 1;
  return v8;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = VideosExtrasNavigationController;
  [(VideosExtrasNavigationController *)&v4 viewDidLoad];
  [(VideosExtrasNavigationController *)self setNavigationBarHidden:1 animated:0];
  navigationBar = [(VideosExtrasNavigationController *)self navigationBar];
  [navigationBar setUserInteractionEnabled:0];
}

- (id)childViewControllerForHomeIndicatorAutoHidden
{
  childViewControllers = [(VideosExtrasNavigationController *)self childViewControllers];
  lastObject = [childViewControllers lastObject];

  return lastObject;
}

- (VideosExtrasMainTemplateViewController)mainTemplateViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_context);
  extrasRootViewController = [WeakRetained extrasRootViewController];
  mainTemplateViewController = [extrasRootViewController mainTemplateViewController];

  return mainTemplateViewController;
}

- (void)pushDocument:(id)document options:(id)options
{
  documentCopy = document;
  optionsCopy = options;
  loadingView = self->_loadingView;
  if (loadingView)
  {
    [(VideosExtrasLoadingView *)loadingView cancelCountdownToVisibility];
    [(VideosExtrasLoadingView *)self->_loadingView removeFromSuperview];
    v8 = self->_loadingView;
    self->_loadingView = 0;
  }

  templateElement = [documentCopy templateElement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [[VideosExtrasLoadingView alloc] initWithDocument:documentCopy options:optionsCopy delegate:self];
    v11 = self->_loadingView;
    self->_loadingView = v10;

    v12 = self->_loadingView;
    topViewController = [(VideosExtrasNavigationController *)self topViewController];
    view = [topViewController view];
    [view bounds];
    [(VideosExtrasLoadingView *)v12 setFrame:?];

    topViewController2 = [(VideosExtrasNavigationController *)self topViewController];
    view2 = [topViewController2 view];

    if (self->_loadingView)
    {
      if (view2)
      {
        mainTemplateViewController = [(VideosExtrasNavigationController *)self mainTemplateViewController];

        if (mainTemplateViewController)
        {
          [view2 addSubview:self->_loadingView];
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
    [(VideosExtrasNavigationController *)self _presentDialogTemplate:templateElement];
    goto LABEL_16;
  }

  if (templateElement)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    view2 = [VideosExtrasTemplateViewController templateViewControllerWithDocument:documentCopy options:optionsCopy context:WeakRetained];

    if (view2)
    {
      emptyViewController = self->_emptyViewController;
      topViewController3 = [(VideosExtrasNavigationController *)self topViewController];

      if (emptyViewController == topViewController3)
      {
        [(UINavigationController *)self _VideosExtras_replaceViewController:self->_emptyViewController withViewController:view2 animated:0];
      }

      else
      {
        [(VideosExtrasNavigationController *)self pushViewController:view2 animated:1];
      }
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)popToDocument:(id)document
{
  v18 = *MEMORY[0x1E69E9840];
  documentCopy = document;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  viewControllers = [(VideosExtrasNavigationController *)self viewControllers];
  v6 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          document = [v10 document];

          if (document == documentCopy)
          {
            v12 = [(VideosExtrasNavigationController *)self popToViewController:v10 animated:1];
            goto LABEL_12;
          }
        }
      }

      v7 = [viewControllers countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  documents = [(VideosExtrasNavigationController *)self documents];
  firstObject = [documents firstObject];
  [(VideosExtrasNavigationController *)self popToDocument:firstObject];
}

- (void)insertDocument:(id)document beforeDocument:(id)beforeDocument options:(id)options
{
  documentCopy = document;
  optionsCopy = options;
  v14 = 0;
  v9 = [(VideosExtrasNavigationController *)self _viewControllerForDocument:documentCopy index:&v14];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v11 = [VideosExtrasTemplateViewController templateViewControllerWithDocument:documentCopy options:optionsCopy context:WeakRetained];

    viewControllers = [(VideosExtrasNavigationController *)self viewControllers];
    v13 = [viewControllers mutableCopy];

    [v13 insertObject:v11 atIndex:v14];
    [(VideosExtrasNavigationController *)self setViewControllers:v13];
  }
}

- (void)replaceDocument:(id)document withDocument:(id)withDocument options:(id)options
{
  withDocumentCopy = withDocument;
  optionsCopy = options;
  v14 = 0;
  v9 = [(VideosExtrasNavigationController *)self _viewControllerForDocument:withDocumentCopy index:&v14];
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v11 = [VideosExtrasTemplateViewController templateViewControllerWithDocument:withDocumentCopy options:optionsCopy context:WeakRetained];

    viewControllers = [(VideosExtrasNavigationController *)self viewControllers];
    v13 = [viewControllers mutableCopy];

    [v13 replaceObjectAtIndex:v14 withObject:v11];
    [(VideosExtrasNavigationController *)self setViewControllers:v13];
  }
}

- (id)_viewControllerForDocument:(id)document index:(int64_t *)index
{
  v20 = *MEMORY[0x1E69E9840];
  documentCopy = document;
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
          document = [v11 document];

          if (document == documentCopy)
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

  if (index)
  {
    *index = v13;
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
  viewControllers = [(VideosExtrasNavigationController *)self viewControllers];
  v5 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(viewControllers);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          document = [v9 document];
          [v3 addObject:document];
        }
      }

      v6 = [viewControllers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_dismissViewController:(id)controller
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
    extrasRootViewController = [v4 extrasRootViewController];
    presentingViewController = [extrasRootViewController presentingViewController];
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_presentDialogTemplate:(id)template
{
  v37 = *MEMORY[0x1E69E9840];
  templateCopy = template;
  title = [templateCopy title];
  text = [title text];
  string = [text string];

  descriptionText = [templateCopy descriptionText];
  text2 = [descriptionText text];
  string2 = [text2 string];

  v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:string message:string2 preferredStyle:0];
  [v11 setPreferredStyle:1];
  [v11 _setIgnoreAppSupportedOrientations:1];
  buttons = [templateCopy buttons];
  v13 = [buttons count];

  if (v13)
  {
    v28 = string2;
    selfCopy = self;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    buttons2 = [templateCopy buttons];
    v15 = [buttons2 countByEnumeratingWithState:&v32 objects:v36 count:16];
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
            objc_enumerationMutation(buttons2);
          }

          text3 = [*(*(&v32 + 1) + 8 * i) text];
          v19Text = [text3 text];
          string3 = [v19Text string];

          v22 = [MEMORY[0x1E69DC648] actionWithTitle:string3 style:0 handler:0];
          [v11 addAction:v22];
        }

        v16 = [buttons2 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v16);
    }

    self = selfCopy;
    string2 = v28;
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

- (void)loadingView:(id)view documentDidUpdate:(id)update options:(id)options
{
  loadingView = self->_loadingView;
  optionsCopy = options;
  updateCopy = update;
  [(VideosExtrasLoadingView *)loadingView cancelCountdownToVisibility];
  [(VideosExtrasLoadingView *)self->_loadingView removeFromSuperview];
  [(VideosExtrasNavigationController *)self pushDocument:updateCopy options:optionsCopy];
}

- (void)setViewControllers:(id)controllers animated:(BOOL)animated
{
  animatedCopy = animated;
  controllersCopy = controllers;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  extrasRootViewController = [WeakRetained extrasRootViewController];
  v9 = [extrasRootViewController detectMainDocument:controllersCopy];

  v10.receiver = self;
  v10.super_class = VideosExtrasNavigationController;
  [(VideosExtrasNavigationController *)&v10 setViewControllers:v9 animated:animatedCopy];
}

- (void)willShowViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  extrasRootViewController = [WeakRetained extrasRootViewController];
  mainTemplateViewController = [extrasRootViewController mainTemplateViewController];
  if (mainTemplateViewController == controllerCopy)
  {

LABEL_6:
    v11 = 0;
    v12 = 1;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    videoPlaybackViewController = [controllerCopy videoPlaybackViewController];
    v9 = objc_loadWeakRetained(&self->_context);
    featurePlaybackViewController = [v9 featurePlaybackViewController];

    if (videoPlaybackViewController == featurePlaybackViewController)
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
  navigationBar = [(VideosExtrasNavigationController *)self navigationBar];
  [navigationBar setUserInteractionEnabled:v11];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v18[1] = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  viewControllers = [(VideosExtrasNavigationController *)self viewControllers];
  v8 = [viewControllers arrayByAddingObject:controllerCopy];

  WeakRetained = objc_loadWeakRetained(&self->_context);
  extrasRootViewController = [WeakRetained extrasRootViewController];
  v11 = [extrasRootViewController detectMainDocument:v8];

  if ([v11 containsObject:controllerCopy])
  {
    if (self->_clearStackOnPush)
    {
      self->_clearStackOnPush = 0;
      navigationItem = [controllerCopy navigationItem];
      [(VideosExtrasNavigationController *)self _installDoneButtonOnNavigationItem:navigationItem];
      v18[0] = controllerCopy;
      title = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      [(VideosExtrasNavigationController *)self setViewControllers:title animated:0];
    }

    else
    {
      navigationItem = [controllerCopy navigationItem];
      topViewController = [(VideosExtrasNavigationController *)self topViewController];
      title = [topViewController title];

      if (![title length])
      {
        vui_videosUIBundle = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
        v16 = [vui_videosUIBundle localizedStringForKey:@"BACK" value:0 table:@"VideosExtras"];

        title = v16;
      }

      [(VideosExtrasNavigationController *)self _installBackButtonOnNavigationItem:navigationItem withTitle:title];
      v17.receiver = self;
      v17.super_class = VideosExtrasNavigationController;
      [(VideosExtrasNavigationController *)&v17 pushViewController:controllerCopy animated:animatedCopy];
    }
  }
}

- (void)_installDoneButtonOnNavigationItem:(id)item
{
  if (self->_showsBuiltInNavControls)
  {
    itemCopy = item;
    navigationBar = [(VideosExtrasNavigationController *)self navigationBar];
    v10 = +[VideosExtrasNavigationBarButton extrasNavigationButton:](VideosExtrasNavigationBarButton, "extrasNavigationButton:", [navigationBar _activeBarMetrics]);

    vui_videosUIBundle = [MEMORY[0x1E696AAE8] vui_videosUIBundle];
    v8 = [vui_videosUIBundle localizedStringForKey:@"DONE" value:0 table:@"VideosExtras"];
    [v10 setTitle:v8 forState:0];

    [v10 addTarget:self action:sel__dismissViewController_ forControlEvents:64];
    [v10 sizeToFit];
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v10];
    [itemCopy setLeftBarButtonItem:v9];
  }
}

- (void)_installBackButtonOnNavigationItem:(id)item withTitle:(id)title
{
  titleCopy = title;
  itemCopy = item;
  navigationBar = [(VideosExtrasNavigationController *)self navigationBar];
  v10 = +[VideosExtrasNavigationBarButton extrasBackButton:](VideosExtrasNavigationBarButton, "extrasBackButton:", [navigationBar _activeBarMetrics]);

  [v10 setTitle:titleCopy forState:0];
  [v10 addTarget:self action:sel__popViewControllerFromBackButton forControlEvents:64];
  [v10 sizeToFit];
  if ([MEMORY[0x1E69DD250] userInterfaceLayoutDirectionForSemanticContentAttribute:{objc_msgSend(v10, "semanticContentAttribute")}] == 1)
  {
    [v10 imageEdgeInsets];
    [v10 setImageEdgeInsets:?];
  }

  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v10];
  [itemCopy setLeftBarButtonItem:v9];
}

- (VideosExtrasContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end