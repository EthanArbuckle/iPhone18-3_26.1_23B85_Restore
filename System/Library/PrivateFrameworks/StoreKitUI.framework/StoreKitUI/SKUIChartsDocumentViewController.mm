@interface SKUIChartsDocumentViewController
- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4;
- (SKUIChartsDocumentViewController)initWithTemplateElement:(id)a3;
- (UIEdgeInsets)_chartInsets;
- (id)_columnViewControllers;
- (id)_newColumnViewControllersWithReusableViewControllers:(id)a3;
- (id)_resourceLoader;
- (id)contentScrollView;
- (int64_t)_visibleColumnCountForWidth:(double)a3;
- (void)documentDidUpdate:(id)a3;
- (void)documentMediaQueriesDidUpdate:(id)a3;
- (void)loadView;
- (void)resourceLoader:(id)a3 didLoadAllForReason:(int64_t)a4;
- (void)resourceLoaderDidBeginLoading:(id)a3;
- (void)skui_viewWillAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SKUIChartsDocumentViewController

- (SKUIChartsDocumentViewController)initWithTemplateElement:(id)a3
{
  v5 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIChartsDocumentViewController initWithTemplateElement:];
  }

  v9.receiver = self;
  v9.super_class = SKUIChartsDocumentViewController;
  v6 = [(SKUIChartsDocumentViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateElement, a3);
  }

  return v7;
}

- (void)documentDidUpdate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = v4;

  v6 = self->_columnViewControllers;
  v7 = [(SKUIChartsDocumentViewController *)self _newColumnViewControllersWithReusableViewControllers:v6];
  columnViewControllers = self->_columnViewControllers;
  self->_columnViewControllers = v7;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v6;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_columnViewControllers containsObject:v14, v16]& 1) == 0)
        {
          [v14 removeFromParentViewController];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  chartsView = self->_chartsView;
  if (chartsView)
  {
    [(SKUIChartColumnsView *)chartsView setChartViewControllers:self->_columnViewControllers];
  }

  if ([(SKUIResourceLoader *)self->_resourceLoader isIdleForReason:1, v16])
  {
    [(SKUIChartsDocumentViewController *)self resourceLoader:self->_resourceLoader didLoadAllForReason:1];
  }
}

- (void)documentMediaQueriesDidUpdate:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_columnViewControllers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidateAndReload];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)skui_viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_columnViewControllers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) skui_viewWillAppear:v3];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SKUIChartsDocumentViewController;
  [(SKUIViewController *)&v10 skui_viewWillAppear:v3];
}

- (id)contentScrollView
{
  if (self->_chartsView)
  {
    v4 = 0;
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = SKUIChartsDocumentViewController;
    v4 = [(SKUIChartsDocumentViewController *)&v6 contentScrollView];
  }

  return v4;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = SKUIChartsDocumentViewController;
  [(SKUIChartsDocumentViewController *)&v5 loadView];
  v3 = [(SKUIChartsDocumentViewController *)self view];
  v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v3 setBackgroundColor:v4];
}

- (CGSize)sizeForChildContentContainer:(id)a3 withParentContainerSize:(CGSize)a4
{
  height = a4.height;
  v5 = a4.width / [(SKUIChartsDocumentViewController *)self _visibleColumnCountForWidth:a3];
  v6 = floorf(v5);
  v7 = height;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIChartColumnsView *)self->_chartsView effectView];
  v6 = [(SKUIChartsDocumentViewController *)self navigationController];
  v7 = [v6 navigationBar];
  v8 = [v7 _backdropViewLayerGroupName];
  [v5 _setGroupName:v8];

  v9.receiver = self;
  v9.super_class = SKUIChartsDocumentViewController;
  [(SKUIViewController *)&v9 viewWillAppear:v3];
}

- (void)viewWillLayoutSubviews
{
  chartsView = self->_chartsView;
  if (chartsView)
  {
    [(SKUIChartColumnsView *)self->_chartsView frame];
    [(SKUIChartColumnsView *)chartsView setNumberOfVisibleColumns:[(SKUIChartsDocumentViewController *)self _visibleColumnCountForWidth:v4]];
  }

  else
  {
    v5 = [(SKUIChartsDocumentViewController *)self view];
    v6 = [SKUIChartColumnsView alloc];
    [v5 bounds];
    v7 = [(SKUIChartColumnsView *)v6 initWithFrame:?];
    v8 = self->_chartsView;
    self->_chartsView = v7;

    [(SKUIChartColumnsView *)self->_chartsView setAutoresizingMask:18];
    v9 = self->_chartsView;
    v10 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(SKUIChartColumnsView *)v9 setBackgroundColor:v10];

    v11 = self->_chartsView;
    [(SKUIChartsDocumentViewController *)self _chartInsets];
    [(SKUIChartColumnsView *)v11 setContentInset:?];
    v12 = self->_chartsView;
    [(SKUIChartColumnsView *)v12 frame];
    [(SKUIChartColumnsView *)v12 setNumberOfVisibleColumns:[(SKUIChartsDocumentViewController *)self _visibleColumnCountForWidth:v13]];
    v14 = self->_chartsView;
    v15 = [(SKUIChartsDocumentViewController *)self _columnViewControllers];
    [(SKUIChartColumnsView *)v14 setChartViewControllers:v15];

    v16 = [(SKUIChartColumnsView *)self->_chartsView effectView];
    v17 = [(SKUIChartsDocumentViewController *)self navigationController];
    v18 = [v17 navigationBar];
    v19 = [v18 _backdropViewLayerGroupName];
    [v16 _setGroupName:v19];

    [v5 addSubview:self->_chartsView];
  }

  v20.receiver = self;
  v20.super_class = SKUIChartsDocumentViewController;
  [(SKUIChartsDocumentViewController *)&v20 viewWillLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v24 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(SKUIChartsDocumentViewController *)self _visibleColumnCountForWidth:width];
  [(SKUIChartColumnsView *)self->_chartsView beginColumnChangeAnimationToNumberOfVisibleColumns:v8];
  [(SKUIChartColumnsView *)self->_chartsView setNumberOfVisibleColumns:v8];
  v21[4] = self;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __87__SKUIChartsDocumentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v22[3] = &unk_2781F8348;
  v22[4] = self;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __87__SKUIChartsDocumentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v21[3] = &unk_2781F8348;
  [v7 animateAlongsideTransition:v22 completion:v21];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_columnViewControllers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = width / v8;
    v13 = floorf(v12);
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v17 + 1) + 8 * v15++) setPreferredContentSize:{v13, height}];
      }

      while (v11 != v15);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v11);
  }

  v16.receiver = self;
  v16.super_class = SKUIChartsDocumentViewController;
  [(SKUIChartsDocumentViewController *)&v16 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

uint64_t __87__SKUIChartsDocumentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[133];
  [v1 _chartInsets];

  return [v2 setContentInset:?];
}

void __87__SKUIChartsDocumentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1064) endColumnChangeAnimation];
  v2 = [*(a1 + 32) view];
  [v2 setNeedsLayout];
}

- (void)resourceLoaderDidBeginLoading:(id)a3
{
  v5 = a3;
  v4 = [(SKUIChartsDocumentViewController *)self parentViewController];
  if ([v4 conformsToProtocol:&unk_28291FC00] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v4 resourceLoaderDidBeginLoading:v5];
  }
}

- (void)resourceLoader:(id)a3 didLoadAllForReason:(int64_t)a4
{
  v7 = a3;
  if (a4 == 1)
  {
    [(SKUIChartsTemplateViewElement *)self->_templateElement dispatchEvent:@"visibleimagesloaded" eventAttribute:@"onvisibleimagesloaded" canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }

  v6 = [(SKUIChartsDocumentViewController *)self parentViewController];
  if ([v6 conformsToProtocol:&unk_28291FC00] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 resourceLoader:v7 didLoadAllForReason:a4];
  }
}

- (UIEdgeInsets)_chartInsets
{
  v3 = [(SKUIChartsDocumentViewController *)self topLayoutGuide];
  [v3 length];
  v5 = v4;
  v6 = [(SKUIChartsDocumentViewController *)self bottomLayoutGuide];
  [v6 length];
  v8 = v7;

  v9 = 0.0;
  v10 = 0.0;
  v11 = v5;
  v12 = v8;
  result.right = v10;
  result.bottom = v12;
  result.left = v9;
  result.top = v11;
  return result;
}

- (id)_columnViewControllers
{
  columnViewControllers = self->_columnViewControllers;
  if (!columnViewControllers)
  {
    v4 = [(SKUIChartsDocumentViewController *)self _newColumnViewControllersWithReusableViewControllers:0];
    v5 = self->_columnViewControllers;
    self->_columnViewControllers = v4;

    columnViewControllers = self->_columnViewControllers;
  }

  return columnViewControllers;
}

- (id)_newColumnViewControllersWithReusableViewControllers:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v38 = a3;
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = [(SKUIViewController *)self clientContext];
  [(SKUIChartColumnsView *)self->_chartsView bounds];
  v5 = v4;
  v7 = v6;
  v8 = [(SKUIChartsDocumentViewController *)self _visibleColumnCountForWidth:v4];
  [(SKUIChartsTemplateViewElement *)self->_templateElement columns];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v41 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v41)
  {
    v9 = v5 / v8;
    v10 = floorf(v9);
    v40 = *v48;
    v37 = self;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v48 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        v13 = [objc_alloc(SKUIPageComponentClassForComponentType(objc_msgSend(v12 "pageComponentType")))];
        if (v13)
        {
          v14 = [v12 headerElement];
          v15 = [v14 titleLabels];
          v16 = [v15 firstObject];

          v42 = v16;
          v17 = [v16 text];
          v18 = [v17 string];

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v19 = v38;
          v20 = [v19 countByEnumeratingWithState:&v43 objects:v52 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v44;
LABEL_9:
            v23 = 0;
            while (1)
            {
              if (*v44 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v43 + 1) + 8 * v23);
              v25 = [v24 title];
              v26 = [v25 isEqualToString:v18];

              if (v26)
              {
                break;
              }

              if (v21 == ++v23)
              {
                v21 = [v19 countByEnumeratingWithState:&v43 objects:v52 count:16];
                if (v21)
                {
                  goto LABEL_9;
                }

                goto LABEL_15;
              }
            }

            v28 = v24;

            v27 = v37;
            if (v28)
            {
              goto LABEL_21;
            }
          }

          else
          {
LABEL_15:

            v27 = v37;
          }

          v28 = [[SKUIStorePageSectionsViewController alloc] initWithLayoutStyle:0];
          [(SKUIViewController *)v28 setClientContext:v35];
          v29 = [(SKUIViewController *)v27 operationQueue];
          [(SKUIViewController *)v28 setOperationQueue:v29];

          v30 = [(SKUIChartsDocumentViewController *)v27 _resourceLoader];
          [(SKUIStorePageSectionsViewController *)v28 setResourceLoader:v30];

          if (v18)
          {
            v31 = v18;
          }

          else
          {
            v31 = &stru_2827FFAC8;
          }

          [(SKUIStorePageSectionsViewController *)v28 setTitle:v31];
          v32 = objc_alloc_init(SKUIMetricsImpressionSession);
          [(SKUIStorePageSectionsViewController *)v28 setActiveMetricsImpressionSession:v32];

LABEL_21:
          [(SKUIStorePageSectionsViewController *)v28 setPreferredContentSize:v10, v7];
          v51 = v13;
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
          [(SKUIStorePageSectionsViewController *)v28 setSectionsWithPageComponents:v33];

          [(SKUIChartsDocumentViewController *)v27 addChildViewController:v28];
          [v39 addObject:v28];
        }
      }

      v41 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v41);
  }

  return v39;
}

- (int64_t)_visibleColumnCountForWidth:(double)a3
{
  v3 = 3;
  if (a3 < 1023.0)
  {
    v3 = 2;
  }

  if (a3 < 682.0)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (id)_resourceLoader
{
  resourceLoader = self->_resourceLoader;
  if (!resourceLoader)
  {
    v4 = [SKUIResourceLoader alloc];
    v5 = [(SKUIViewController *)self clientContext];
    v6 = [(SKUIResourceLoader *)v4 initWithClientContext:v5];
    v7 = self->_resourceLoader;
    self->_resourceLoader = v6;

    v8 = self->_resourceLoader;
    v9 = SKUIResourceLoaderGetNameForObject(self);
    [(SKUIResourceLoader *)v8 setName:v9];

    [(SKUIResourceLoader *)self->_resourceLoader setDelegate:self];
    resourceLoader = self->_resourceLoader;
  }

  return resourceLoader;
}

- (void)initWithTemplateElement:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIChartsDocumentViewController initWithTemplateElement:]";
}

@end