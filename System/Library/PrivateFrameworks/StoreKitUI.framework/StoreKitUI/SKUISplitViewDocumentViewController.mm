@interface SKUISplitViewDocumentViewController
- (BOOL)_isFullyPopulated;
- (SKUISplitViewDocumentViewController)initWithTemplateElement:(id)a3 clientContext:(id)a4;
- (id)_defaultBackgroundColor;
- (id)leftBarButtonItemsForDocument:(id)a3;
- (void)_reloadSplitViewControllers;
- (void)_skui_endDelayingPresentation;
- (void)dealloc;
- (void)delayPresentationIfNeededForParentViewController:(id)a3;
- (void)documentDidUpdate:(id)a3;
- (void)loadView;
- (void)navigationDocumentStackDidChange:(id)a3;
- (void)skui_viewWillAppear:(BOOL)a3;
@end

@implementation SKUISplitViewDocumentViewController

- (SKUISplitViewDocumentViewController)initWithTemplateElement:(id)a3 clientContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUISplitViewDocumentViewController initWithTemplateElement:clientContext:];
  }

  v14.receiver = self;
  v14.super_class = SKUISplitViewDocumentViewController;
  v9 = [(SKUISplitViewDocumentViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_templateElement, a3);
    [(SKUIViewController *)v10 setClientContext:v8];
    v11 = objc_alloc_init(_SKUISplitViewDocumentSplitViewController);
    splitViewController = v10->_splitViewController;
    v10->_splitViewController = &v11->super;

    [(SKUISplitViewDocumentViewController *)v10 _reloadSplitViewControllers];
    [(SKUISplitViewDocumentViewController *)v10 addChildViewController:v10->_splitViewController];
  }

  return v10;
}

- (void)dealloc
{
  [(SKUINavigationDocumentController *)self->_leftNavigationDocumentController setDelegate:0];
  [(SKUINavigationDocumentController *)self->_rightNavigationDocumentController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUISplitViewDocumentViewController;
  [(SKUIViewController *)&v3 dealloc];
}

- (void)delayPresentationIfNeededForParentViewController:(id)a3
{
  v5 = a3;
  delayingPresentationViewController = self->_delayingPresentationViewController;
  if (delayingPresentationViewController != v5)
  {
    [(UIViewController *)delayingPresentationViewController _endDelayingPresentation];
    if ([(SKUISplitViewTemplateElement *)self->_templateElement usesInlineSplitContent]|| [(SKUISplitViewDocumentViewController *)self _isFullyPopulated])
    {
      v7 = self->_delayingPresentationViewController;
      self->_delayingPresentationViewController = 0;
    }

    else
    {
      objc_storeStrong(&self->_delayingPresentationViewController, a3);
      objc_initWeak(&location, self);
      v8 = self->_delayingPresentationViewController;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __88__SKUISplitViewDocumentViewController_delayPresentationIfNeededForParentViewController___block_invoke;
      v9[3] = &unk_2781FC0D8;
      objc_copyWeak(&v10, &location);
      [(UIViewController *)v8 _beginDelayingPresentation:v9 cancellationHandler:3.0];
      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __88__SKUISplitViewDocumentViewController_delayPresentationIfNeededForParentViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _skui_endDelayingPresentation];

  return 1;
}

- (void)documentDidUpdate:(id)a3
{
  v4 = [a3 templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = v4;

  if (self->_splitViewController)
  {

    [(SKUISplitViewDocumentViewController *)self _reloadSplitViewControllers];
  }
}

- (id)leftBarButtonItemsForDocument:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(UISplitViewController *)self->_splitViewController displayModeButtonItem];
  v4 = v3;
  if (v3)
  {
    v7[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)skui_viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUINavigationDocumentController *)self->_leftNavigationDocumentController navigationController];
  v6 = [v5 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 skui_viewWillAppear:v3];
  }

  v7 = [(SKUINavigationDocumentController *)self->_rightNavigationDocumentController navigationController];
  v8 = [v7 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 skui_viewWillAppear:v3];
  }

  v9.receiver = self;
  v9.super_class = SKUISplitViewDocumentViewController;
  [(SKUIViewController *)&v9 skui_viewWillAppear:v3];
}

- (void)loadView
{
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [(SKUISplitViewDocumentViewController *)self _defaultBackgroundColor];
  [v5 setBackgroundColor:v3];

  v4 = [(UISplitViewController *)self->_splitViewController view];
  [v4 setAutoresizingMask:18];
  [v5 bounds];
  [v4 setFrame:?];
  [v5 addSubview:v4];
  [(SKUISplitViewDocumentViewController *)self setView:v5];
}

- (void)navigationDocumentStackDidChange:(id)a3
{
  v14 = a3;
  if ([(SKUISplitViewDocumentViewController *)self _isFullyPopulated])
  {
    [(SKUISplitViewDocumentViewController *)self _skui_endDelayingPresentation];
  }

  leftNavigationDocumentController = self->_leftNavigationDocumentController;
  v5 = v14;
  if (leftNavigationDocumentController == v14)
  {
    v6 = [(SKUINavigationDocumentController *)leftNavigationDocumentController documents];
    v7 = [v6 lastObject];

    v8 = [v7 navigationBarElement];
    if (!v8)
    {
      v9 = [v7 templateElement];
      if (objc_opt_respondsToSelector())
      {
        v8 = [v9 navigationBarElement];
      }

      else
      {
        v8 = 0;
      }
    }

    v10 = [v8 firstChildForElementType:138];
    splitViewController = self->_splitViewController;
    v12 = [v10 text];
    v13 = [v12 string];
    [(UISplitViewController *)splitViewController _setDisplayModeButtonItemTitle:v13];

    v5 = v14;
  }

  MEMORY[0x2821F96F8](leftNavigationDocumentController, v5);
}

- (id)_defaultBackgroundColor
{
  v2 = [(SKUISplitViewTemplateElement *)self->_templateElement style];
  v3 = [v2 ikBackgroundColor];
  v4 = [v3 color];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_isFullyPopulated
{
  v3 = [(SKUINavigationDocumentController *)self->_leftNavigationDocumentController documentStackItems];
  if ([v3 count])
  {
    v4 = [(SKUINavigationDocumentController *)self->_rightNavigationDocumentController documentStackItems];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_reloadSplitViewControllers
{
  v42[2] = *MEMORY[0x277D85DE8];
  v3 = [(SKUISplitViewTemplateElement *)self->_templateElement leftSplitElement];
  v4 = [v3 style];

  if (!self->_leftNavigationDocumentController)
  {
    v5 = objc_alloc_init(MEMORY[0x277D757A0]);
    v6 = [[SKUINavigationDocumentController alloc] initWithNavigationController:v5];
    leftNavigationDocumentController = self->_leftNavigationDocumentController;
    self->_leftNavigationDocumentController = v6;

    v8 = self->_leftNavigationDocumentController;
    v9 = [(SKUIViewController *)self clientContext];
    [(SKUINavigationDocumentController *)v8 setClientContext:v9];

    [(SKUINavigationDocumentController *)self->_leftNavigationDocumentController setDelegate:self];
    v10 = [v4 ikBackgroundColor];
    v11 = [v10 color];

    v12 = [v5 view];
    v13 = v12;
    if (v11)
    {
      [v12 setBackgroundColor:v11];
    }

    else
    {
      v14 = [(SKUISplitViewDocumentViewController *)self _defaultBackgroundColor];
      [v13 setBackgroundColor:v14];
    }
  }

  v15 = [(SKUISplitViewTemplateElement *)self->_templateElement leftNavigationDocument];
  [v15 setNavigationDocumentController:self->_leftNavigationDocumentController];

  if (!self->_rightNavigationDocumentController)
  {
    v16 = objc_alloc_init(MEMORY[0x277D757A0]);
    v17 = [[SKUINavigationDocumentController alloc] initWithNavigationController:v16];
    rightNavigationDocumentController = self->_rightNavigationDocumentController;
    self->_rightNavigationDocumentController = v17;

    v19 = self->_rightNavigationDocumentController;
    v20 = [(SKUIViewController *)self clientContext];
    [(SKUINavigationDocumentController *)v19 setClientContext:v20];

    [(SKUINavigationDocumentController *)self->_rightNavigationDocumentController setDelegate:self];
    v21 = [(SKUISplitViewTemplateElement *)self->_templateElement rightSplitElement];
    v22 = [v21 style];
    v23 = [v22 ikBackgroundColor];
    v24 = [v23 color];

    v25 = [v16 view];
    v26 = v25;
    if (v24)
    {
      [v25 setBackgroundColor:v24];
    }

    else
    {
      v27 = [(SKUISplitViewDocumentViewController *)self _defaultBackgroundColor];
      [v26 setBackgroundColor:v27];
    }
  }

  v28 = [(SKUISplitViewTemplateElement *)self->_templateElement rightNavigationDocument];
  [v28 setNavigationDocumentController:self->_rightNavigationDocumentController];

  splitViewController = self->_splitViewController;
  v30 = [(SKUINavigationDocumentController *)self->_leftNavigationDocumentController navigationController];
  v42[0] = v30;
  v31 = [(SKUINavigationDocumentController *)self->_rightNavigationDocumentController navigationController];
  v42[1] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
  [(UISplitViewController *)splitViewController setViewControllers:v32];

  [(UISplitViewController *)self->_splitViewController setPreferredDisplayMode:[(SKUISplitViewTemplateElement *)self->_templateElement preferredDisplayMode]];
  v33 = [v4 itemWidth];
  [v33 floatValue];
  v35 = v34;
  v36 = v34;

  if (v35 >= 1.0)
  {
    [(UISplitViewController *)self->_splitViewController setMaximumPrimaryColumnWidth:v36];
    [(UISplitViewController *)self->_splitViewController setMinimumPrimaryColumnWidth:v36];
    v40 = self->_splitViewController;
    v41 = *MEMORY[0x277D76EE0];
  }

  else
  {
    v37 = self->_splitViewController;
    if (v35 >= 0.00000011921)
    {
      [(UISplitViewController *)v37 setMaximumPrimaryColumnWidth:1.79769313e308];
      v38 = self->_splitViewController;
      v39 = *MEMORY[0x277D76EE0];
    }

    else
    {
      v36 = *MEMORY[0x277D76EE0];
      [(UISplitViewController *)v37 setMaximumPrimaryColumnWidth:*MEMORY[0x277D76EE0]];
      v38 = self->_splitViewController;
      v39 = v36;
    }

    [(UISplitViewController *)v38 setMinimumPrimaryColumnWidth:v39];
    v40 = self->_splitViewController;
    v41 = v36;
  }

  [(UISplitViewController *)v40 setPreferredPrimaryColumnWidthFraction:v41];
}

- (void)_skui_endDelayingPresentation
{
  delayingPresentationViewController = self->_delayingPresentationViewController;
  if (delayingPresentationViewController)
  {
    [(UIViewController *)delayingPresentationViewController _endDelayingPresentation];
    v4 = self->_delayingPresentationViewController;
    self->_delayingPresentationViewController = 0;
  }
}

- (void)initWithTemplateElement:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUISplitViewDocumentViewController initWithTemplateElement:clientContext:]";
}

@end