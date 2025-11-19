@interface SKUIStackDocumentViewController
- (BOOL)_shouldShowIndexBar;
- (BOOL)_tryToScrollToSectionAtIndexPath:(id)a3;
- (BOOL)performTestWithName:(id)a3 options:(id)a4;
- (SKUIStackDocumentViewController)initWithTemplateElement:(id)a3 layoutStyle:(int64_t)a4;
- (id)_colorScheme;
- (id)_indexBarControlController;
- (id)_indexPathFromGlobalIndex:(int64_t)a3;
- (id)_pageComponentsWithViewElements:(id)a3;
- (id)_pageSplitsDescription;
- (id)_resourceLoader;
- (id)indexBarControlController:(id)a3 entryDescriptorAtIndexPath:(id)a4;
- (int64_t)_globalIndexFromIndexPath:(id)a3;
- (int64_t)_maxGlobalIndex;
- (int64_t)_pinningTransitionStyle;
- (int64_t)indexBarControlController:(id)a3 numberOfEntryDescriptorsInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInIndexBarControlController:(id)a3;
- (void)_configureIndexBarControl:(id)a3;
- (void)_resetStateForDocumentNotification:(id)a3;
- (void)_updateEntryListControllersWithReload:(BOOL)a3;
- (void)_updateIndexBarVisibility;
- (void)dealloc;
- (void)documentDidUpdate:(id)a3;
- (void)documentDidUpdate:(id)a3 withTemplate:(id)a4;
- (void)getModalSourceViewForElementIdentifier:(id)a3 completionBlock:(id)a4;
- (void)indexBarControlController:(id)a3 didSelectEntryDescriptorAtIndexPath:(id)a4;
- (void)indexBarControlControllerDidSelectBeyondBottom:(id)a3;
- (void)indexBarControlControllerDidSelectBeyondTop:(id)a3;
- (void)indexBarEntryListControllerDidInvalidate:(id)a3;
- (void)loadView;
- (void)refresh:(id)a3 refreshControl:(id)a4;
- (void)resourceLoader:(id)a3 didLoadAllForReason:(int64_t)a4;
- (void)resourceLoaderDidBeginLoading:(id)a3;
- (void)sectionsViewController:(id)a3 willScrollToOffset:(CGPoint)a4 visibleRange:(SKUIIndexPathRange *)a5;
- (void)setPreferredContentSize:(CGSize)a3;
- (void)skui_viewWillAppear:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation SKUIStackDocumentViewController

- (SKUIStackDocumentViewController)initWithTemplateElement:(id)a3 layoutStyle:(int64_t)a4
{
  v7 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIStackDocumentViewController initWithTemplateElement:layoutStyle:];
  }

  v12.receiver = self;
  v12.super_class = SKUIStackDocumentViewController;
  v8 = [(SKUIStackDocumentViewController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_layoutStyle = a4;
    objc_storeStrong(&v8->_templateElement, a3);
    [(SKUIStackDocumentViewController *)v9 _updateEntryListControllersWithReload:0];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v9 selector:sel__resetStateForDocumentNotification_ name:@"SKUIStoreDialogControllerPurchaseRequestDidSucceedNotification" object:0];
  }

  return v9;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  [(SKUIIndexBarControlController *)self->_indexBarControlController setDataSource:0];
  [(SKUIIndexBarControlController *)self->_indexBarControlController setDelegate:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMapTable *)self->_viewElementToEntryListController objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v10 + 1) + 8 * v7++) setDelegate:0];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self name:@"SKUIStoreDialogControllerPurchaseRequestDidSucceedNotification" object:0];

  v9.receiver = self;
  v9.super_class = SKUIStackDocumentViewController;
  [(SKUIViewController *)&v9 dealloc];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUIStackDocumentViewController;
  [(SKUIStackDocumentViewController *)&v4 viewDidAppear:a3];
  [(SKUIResourceLoader *)self->_resourceLoader enterForeground];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SKUIStackDocumentViewController;
  [(SKUIStackDocumentViewController *)&v4 viewDidDisappear:a3];
  [(SKUIResourceLoader *)self->_resourceLoader enterBackground];
}

- (void)documentDidUpdate:(id)a3 withTemplate:(id)a4
{
  v49 = a3;
  v7 = a4;
  objc_storeStrong(&self->_document, a3);
  templateElement = self->_templateElement;
  v9 = [(SKUIStackTemplateElement *)v7 needsStateReset];
  if (templateElement == v7)
  {
    if (v9)
    {
      if (!self->_hasResetState)
      {
        goto LABEL_3;
      }
    }

    else
    {
      self->_hasResetState = 0;
    }
  }

  else
  {
    if (v9)
    {
LABEL_3:
      [(SKUIStackDocumentViewController *)self _resetState];
      self->_hasResetState = 1;
      goto LABEL_9;
    }

    self->_hasResetState = 0;
  }

LABEL_9:
  objc_storeStrong(&self->_templateElement, a4);
  v10 = [(SKUIStackDocumentViewController *)self view];
  v11 = [(SKUIStackDocumentViewController *)self _colorScheme];
  v12 = [v11 backgroundColor];
  if (v12)
  {
    [v10 setBackgroundColor:v12];
  }

  else
  {
    v13 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v10 setBackgroundColor:v13];
  }

  v14 = [(SKUIStackDocumentViewController *)self _indexBarViewElement];

  if (v14)
  {
    v16 = *MEMORY[0x277CBF3A8];
    v15 = *(MEMORY[0x277CBF3A8] + 8);
    v17 = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController collectionView];
    [v17 bounds];
    v47 = v19;
    v48 = v18;
    v20 = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController collectionView];
    [v20 contentInset];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v29 = [(SKUIIndexBarControlController *)self->_indexBarControlController indexBarControl];

    v30 = v15;
    v31 = v16;
    if (v29)
    {
      v32 = [(SKUIIndexBarControlController *)self->_indexBarControlController indexBarControl];
      [v32 frame];
      v31 = v33;
      v30 = v34;
    }

    v35 = [(SKUIIndexBarControlController *)self->_indexBarControlController indexBarControl];
    [(SKUIStackDocumentViewController *)self _configureIndexBarControl:v35];

    v36 = [(SKUIIndexBarControlController *)self->_indexBarControlController indexBarControl];

    if (v36)
    {
      v37 = [(SKUIIndexBarControlController *)self->_indexBarControlController indexBarControl];
      [v37 sizeThatFits:{v48 - (v24 + v28), v47 - (v22 + v26)}];
      v16 = v38;
      v15 = v39;
    }

    v40 = v30 != v15 || v31 != v16;
  }

  else
  {
    v40 = 0;
  }

  [(SKUIStackDocumentViewController *)self _updateEntryListControllersWithReload:1];
  [(SKUIStackDocumentViewController *)self _updateIndexBarVisibility];
  [(SKUIStorePageSectionsViewController *)self->_sectionsViewController setColorScheme:v11];
  [(SKUIStorePageSectionsViewController *)self->_sectionsViewController setPinningTransitionStyle:[(SKUIStackDocumentViewController *)self _pinningTransitionStyle]];
  [(SKUIStorePageSectionsViewController *)self->_sectionsViewController _setRendersWithPerspective:[(SKUIViewElement *)self->_templateElement rendersWithPerspective]];
  [(SKUIStorePageSectionsViewController *)self->_sectionsViewController _setRendersWithParallax:[(SKUIViewElement *)self->_templateElement rendersWithParallax]];
  sectionsViewController = self->_sectionsViewController;
  v42 = [(SKUIStackDocumentViewController *)self _pageSplitsDescription];
  [(SKUIStorePageSectionsViewController *)sectionsViewController setSectionsWithSplitsDescription:v42];

  if (v40)
  {
    v43 = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController collectionView];
    v44 = [v43 collectionViewLayout];
    [v44 invalidateLayout];
  }

  v45 = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController sections];
  v46 = [v45 count];

  if (self->_lastNeedsMoreCount >= v46)
  {
    self->_lastNeedsMoreCount = 0;
  }
}

- (void)skui_viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(SKUIStorePageSectionsViewController *)self->_sectionsViewController skui_viewWillAppear:?];
  v5.receiver = self;
  v5.super_class = SKUIStackDocumentViewController;
  [(SKUIViewController *)&v5 skui_viewWillAppear:v3];
}

- (void)loadView
{
  v23 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [(SKUIStackDocumentViewController *)self _colorScheme];
  v4 = [v3 backgroundColor];
  if (v4)
  {
    [v23 setBackgroundColor:v4];
  }

  else
  {
    v5 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v23 setBackgroundColor:v5];
  }

  if (!self->_sectionsViewController)
  {
    v6 = [[SKUIStorePageSectionsViewController alloc] initWithLayoutStyle:self->_layoutStyle];
    sectionsViewController = self->_sectionsViewController;
    self->_sectionsViewController = v6;

    v8 = self->_sectionsViewController;
    v9 = [(SKUIViewController *)self clientContext];
    [(SKUIViewController *)v8 setClientContext:v9];

    v10 = self->_sectionsViewController;
    v11 = [(SKUIStackDocumentViewController *)self _resourceLoader];
    [(SKUIStorePageSectionsViewController *)v10 setResourceLoader:v11];

    [(SKUIStorePageSectionsViewController *)self->_sectionsViewController setColorScheme:v3];
    v12 = self->_sectionsViewController;
    v13 = [(SKUIViewController *)self operationQueue];
    [(SKUIViewController *)v12 setOperationQueue:v13];

    [(SKUIStorePageSectionsViewController *)self->_sectionsViewController setPinningTransitionStyle:[(SKUIStackDocumentViewController *)self _pinningTransitionStyle]];
    v14 = self->_sectionsViewController;
    [(SKUIStackDocumentViewController *)self preferredContentSize];
    [(SKUIStorePageSectionsViewController *)v14 setPreferredContentSize:?];
    [(SKUIStorePageSectionsViewController *)self->_sectionsViewController _setRendersWithPerspective:[(SKUIViewElement *)self->_templateElement rendersWithPerspective]];
    [(SKUIStorePageSectionsViewController *)self->_sectionsViewController _setRendersWithParallax:[(SKUIViewElement *)self->_templateElement rendersWithParallax]];
    v15 = self->_sectionsViewController;
    v16 = [(SKUIStackDocumentViewController *)self _pageSplitsDescription];
    [(SKUIStorePageSectionsViewController *)v15 setSectionsWithSplitsDescription:v16];

    v17 = self->_sectionsViewController;
    v18 = objc_alloc_init(SKUIMetricsImpressionSession);
    [(SKUIStorePageSectionsViewController *)v17 setActiveMetricsImpressionSession:v18];

    [(SKUIStorePageSectionsViewController *)self->_sectionsViewController setDelegate:self];
    [(SKUIStackDocumentViewController *)self addChildViewController:self->_sectionsViewController];
  }

  v19 = [(SKUIStackDocumentViewController *)self _indexBarViewElement];

  if (v19)
  {
    [(SKUIStackDocumentViewController *)self _updateEntryListControllersWithReload:1];
    [(SKUIStackDocumentViewController *)self _updateIndexBarVisibility];
    v20 = [(SKUIIndexBarControlController *)self->_indexBarControlController indexBarControl];
    [(SKUIStackDocumentViewController *)self _configureIndexBarControl:v20];
  }

  v21 = [(SKUIStackDocumentViewController *)self _pullToRefreshElement];
  if (v21)
  {
    [(SKUIStorePageSectionsViewController *)self->_sectionsViewController setUsePullToRefresh:1];
    [(SKUIStorePageSectionsViewController *)self->_sectionsViewController setPullToRefreshDelegate:self];
  }

  v22 = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController view];
  [v22 setAutoresizingMask:18];
  [v23 bounds];
  [v22 setFrame:?];
  [v23 addSubview:v22];
  [(SKUIStackDocumentViewController *)self setView:v23];
}

- (void)setPreferredContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = SKUIStackDocumentViewController;
  [(SKUIStackDocumentViewController *)&v6 setPreferredContentSize:?];
  [(SKUIStorePageSectionsViewController *)self->_sectionsViewController setPreferredContentSize:width, height];
}

- (void)documentDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 templateElement];
  [(SKUIStackDocumentViewController *)self documentDidUpdate:v4 withTemplate:?];

  if ([(SKUIResourceLoader *)self->_resourceLoader isIdleForReason:1])
  {
    [(SKUIStackDocumentViewController *)self resourceLoader:self->_resourceLoader didLoadAllForReason:1];
  }
}

- (id)indexBarControlController:(id)a3 entryDescriptorAtIndexPath:(id)a4
{
  if (self->_indexBarControlController == a3)
  {
    entryListControllers = self->_entryListControllers;
    v6 = a4;
    v7 = -[NSArray objectAtIndex:](entryListControllers, "objectAtIndex:", [v6 section]);
    v8 = [v6 item];

    v4 = [v7 entryDescriptorAtIndex:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)indexBarControlController:(id)a3 numberOfEntryDescriptorsInSection:(int64_t)a4
{
  if (self->_indexBarControlController != a3)
  {
    return 0;
  }

  v5 = [(NSArray *)self->_entryListControllers objectAtIndex:a4];
  v6 = [v5 numberOfEntryDescriptors];

  return v6;
}

- (int64_t)numberOfSectionsInIndexBarControlController:(id)a3
{
  if (self->_indexBarControlController == a3)
  {
    return [(NSArray *)self->_entryListControllers count];
  }

  else
  {
    return 0;
  }
}

- (void)indexBarControlController:(id)a3 didSelectEntryDescriptorAtIndexPath:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (![(SKUIStackDocumentViewController *)self _tryToScrollToSectionAtIndexPath:v6])
  {
    v7 = [(SKUIStackDocumentViewController *)self _globalIndexFromIndexPath:v6];
    v8 = [(SKUIStackDocumentViewController *)self _maxGlobalIndex];
    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = v8;
      v10 = 0;
      for (i = -1; ; --i)
      {
        if (v7 + i >= 0)
        {
          v12 = [(SKUIStackDocumentViewController *)self _indexPathFromGlobalIndex:v7 + i];
          v13 = [(SKUIStackDocumentViewController *)self _tryToScrollToSectionAtIndexPath:v12];

          if (v13)
          {
            break;
          }
        }

        if (v7 + v10 + 1 <= v9)
        {
          v14 = [(SKUIStackDocumentViewController *)self _indexPathFromGlobalIndex:?];
          v15 = [(SKUIStackDocumentViewController *)self _tryToScrollToSectionAtIndexPath:v14];

          if (v15)
          {
            break;
          }
        }

        if (v10 >= v9)
        {
          break;
        }

        ++v10;
      }
    }
  }
}

- (void)indexBarControlControllerDidSelectBeyondBottom:(id)a3
{
  v4 = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController sections];
  v5 = [v4 count];

  if (v5)
  {
    v7 = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController collectionView];
    [v7 contentSize];
    [v7 scrollRectToVisible:0 animated:{0.0, v6 + -1.0, 0.0, 0.0}];
  }
}

- (void)indexBarControlControllerDidSelectBeyondTop:(id)a3
{
  v4 = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController sections];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController collectionView];
    [v6 scrollRectToVisible:0 animated:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  }
}

- (void)indexBarEntryListControllerDidInvalidate:(id)a3
{
  if (a3)
  {
    entryListControllers = self->_entryListControllers;
    if (entryListControllers)
    {
      v5 = [(NSArray *)entryListControllers indexOfObject:?];
      if (v5 != 0x7FFFFFFFFFFFFFFFLL)
      {
        indexBarControlController = self->_indexBarControlController;
        v7 = [MEMORY[0x277CCAA78] indexSetWithIndex:v5];
        [(SKUIIndexBarControlController *)indexBarControlController reloadSections:v7];
      }
    }
  }
}

- (void)refresh:(id)a3 refreshControl:(id)a4
{
  v5 = a4;
  v6 = [(SKUIStackDocumentViewController *)self _pullToRefreshElement];
  if (v6)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__SKUIStackDocumentViewController_refresh_refreshControl___block_invoke;
    v7[3] = &unk_2781FAF50;
    v8 = v5;
    [v6 dispatchEventOfType:15 canBubble:1 isCancelable:0 extraInfo:0 completionBlock:v7];
  }
}

void __58__SKUIStackDocumentViewController_refresh_refreshControl___block_invoke(uint64_t a1)
{
  v2 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SKUIStackDocumentViewController_refresh_refreshControl___block_invoke_2;
  block[3] = &unk_2781F80F0;
  v4 = *(a1 + 32);
  dispatch_after(v2, MEMORY[0x277D85CD0], block);
}

- (void)getModalSourceViewForElementIdentifier:(id)a3 completionBlock:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(SKUIStorePageSectionsViewController *)self->_sectionsViewController sections];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v22 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v19 + 1) + 8 * v12);
      v14 = [v13 pageComponent];
      v15 = [v14 viewElement];

      v16 = [v15 elementWithIdentifier:v6];
      if (v16)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = v16;
    v18 = v13;

    if (!v18)
    {
      goto LABEL_12;
    }

    [v18 getModalSourceViewForViewElement:v17 completionBlock:v7];
  }

  else
  {
LABEL_9:

    v17 = 0;
LABEL_12:
    v7[2](v7, 0);
  }
}

- (BOOL)performTestWithName:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SKUIStorePageSectionsViewController *)self->_sectionsViewController conformsToProtocol:&unk_28291AB68])
  {
    v8 = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController performTestWithName:v6 options:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)sectionsViewController:(id)a3 willScrollToOffset:(CGPoint)a4 visibleRange:(SKUIIndexPathRange *)a5
{
  v7 = a3;
  v8 = [v7 sections];
  v9 = [v8 count];

  v10 = [v7 sections];

  v14 = [v10 lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v14 pageComponent];
    v12 = [v11 viewElement];
    v13 = [v12 elementType];

    v9 -= v13 == 4;
  }

  if (self->_lastNeedsMoreCount < v9 && a5->var2 + 2 >= v9)
  {
    self->_lastNeedsMoreCount = v9;
    [(SKUIStackTemplateElement *)self->_templateElement dispatchEventOfType:16 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }
}

- (void)resourceLoaderDidBeginLoading:(id)a3
{
  v5 = a3;
  v4 = [(SKUIStackDocumentViewController *)self parentViewController];
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
    [(SKUIStackTemplateElement *)self->_templateElement dispatchEvent:@"visibleimagesloaded" eventAttribute:@"onvisibleimagesloaded" canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
  }

  v6 = [(SKUIStackDocumentViewController *)self parentViewController];
  if ([v6 conformsToProtocol:&unk_28291FC00] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v6 resourceLoader:v7 didLoadAllForReason:a4];
  }
}

- (id)_colorScheme
{
  v2 = [(SKUIStackTemplateElement *)self->_templateElement style];
  v3 = [v2 ikBackgroundColor];
  v4 = [v3 color];

  if (v4)
  {
    v5 = objc_alloc_init(SKUIColorScheme);
    [(SKUIColorScheme *)v5 setBackgroundColor:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_configureIndexBarControl:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKUIStackDocumentViewController *)self _indexBarViewElement];
  v6 = [v5 style];
  v7 = [MEMORY[0x277D75348] whiteColor];
  if (v6)
  {
    v8 = [v6 ikBackgroundColor];
    v9 = SKUIViewElementPlainColorWithIKColor(v8, 0);

    if (v9)
    {
      v10 = v9;

      v7 = v10;
    }

    v11 = SKUIViewElementPlainColorWithStyle(v6, 0);
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }
  }

  else
  {
    v12 = 0;
  }

  [v4 setBackgroundColor:v7];
  [v4 setTintColor:v12];
  v14 = SKUIViewElementFontWithStyle(v6);
  v15 = v14;
  if (v14)
  {
    v17 = *MEMORY[0x277D740A8];
    v18[0] = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  }

  else
  {
    v16 = 0;
  }

  [v4 setDefaultTextAttributes:v16];
}

- (int64_t)_globalIndexFromIndexPath:(id)a3
{
  v4 = a3;
  if ([(NSArray *)self->_entryListControllers count])
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = [(NSArray *)self->_entryListControllers objectAtIndex:v6];
      v8 = [v7 numberOfEntryDescriptors];
      if (v6 == [v4 section])
      {
        break;
      }

      v5 += v8;

      if (++v6 >= [(NSArray *)self->_entryListControllers count])
      {
        goto LABEL_5;
      }
    }

    v9 = [v4 item] + v5;
  }

  else
  {
LABEL_5:
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (id)_indexBarControlController
{
  indexBarControlController = self->_indexBarControlController;
  if (!indexBarControlController)
  {
    v4 = [SKUIIndexBarControl alloc];
    v5 = [(SKUIIndexBarControl *)v4 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(SKUIIndexBarControl *)v5 contentEdgeInsets];
    [(SKUIIndexBarControl *)v5 setContentEdgeInsets:16.0];
    [(SKUIStackDocumentViewController *)self _configureIndexBarControl:v5];
    v6 = [[SKUIIndexBarControlController alloc] initWithIndexBarControl:v5];
    v7 = self->_indexBarControlController;
    self->_indexBarControlController = v6;

    [(SKUIIndexBarControlController *)self->_indexBarControlController setDataSource:self];
    [(SKUIIndexBarControlController *)self->_indexBarControlController setDelegate:self];
    v8 = self->_indexBarControlController;
    v9 = [(SKUIStackDocumentViewController *)self _resourceLoader];
    [(SKUIIndexBarControlController *)v8 setResourceLoader:v9];

    indexBarControlController = self->_indexBarControlController;
  }

  return indexBarControlController;
}

- (id)_indexPathFromGlobalIndex:(int64_t)a3
{
  if ([(NSArray *)self->_entryListControllers count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSArray *)self->_entryListControllers objectAtIndex:v5];
      v7 = a3 - [v6 numberOfEntryDescriptors];
      if (v7 < 0)
      {
        break;
      }

      ++v5;
      a3 = v7;
      if (v5 >= [(NSArray *)self->_entryListControllers count])
      {
        goto LABEL_5;
      }
    }

    v8 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:v5];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  return v8;
}

- (int64_t)_maxGlobalIndex
{
  if (![(NSArray *)self->_entryListControllers count])
  {
    return -1;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = [(NSArray *)self->_entryListControllers objectAtIndex:v4];
    v3 += [v5 numberOfEntryDescriptors];

    ++v4;
  }

  while (v4 < [(NSArray *)self->_entryListControllers count]);
  return v3 - 1;
}

- (id)_pageComponentsWithViewElements:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = SKUIPageComponentClassForComponentType([v10 pageComponentType]);
        if (v11)
        {
          v12 = [[v11 alloc] initWithViewElement:v10];
          if (v12)
          {
            [v4 addObject:v12];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_pageSplitsDescription
{
  v3 = objc_alloc_init(SKUIStorePageSplitsDescription);
  if ([(SKUIStackTemplateElement *)self->_templateElement numberOfSplits]== 2)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x3032000000;
    v37[3] = __Block_byref_object_copy__16;
    v37[4] = __Block_byref_object_dispose__16;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v38 = v5;
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__16;
    v35 = __Block_byref_object_dispose__16;
    v36 = 0;
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__16;
    v29 = __Block_byref_object_dispose__16;
    v30 = 0;
    templateElement = self->_templateElement;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __57__SKUIStackDocumentViewController__pageSplitsDescription__block_invoke;
    v20[3] = &unk_2781FAF78;
    v23 = &v25;
    v24 = v37;
    v22 = &v31;
    v20[4] = self;
    v7 = v4;
    v21 = v7;
    [(SKUIViewElement *)templateElement enumerateChildrenUsingBlock:v20];
    if ([v5 count])
    {
      v8 = objc_alloc_init(SKUIStorePageSplit);
      v9 = [(SKUIStackDocumentViewController *)self _pageComponentsWithViewElements:v5];
      [(SKUIStorePageSplit *)v8 setPageComponents:v9];

      [(SKUIStorePageSplitsDescription *)v3 setTopSplit:v8];
    }

    if ([v7 count])
    {
      v10 = objc_alloc_init(SKUIStorePageSplit);
      v11 = [(SKUIStackDocumentViewController *)self _pageComponentsWithViewElements:v7];
      [(SKUIStorePageSplit *)v10 setPageComponents:v11];

      [(SKUIStorePageSplitsDescription *)v3 setBottomSplit:v10];
    }

    [v32[5] widthFraction];
    if (v12 < 0.00000011920929)
    {
      [v26[5] widthFraction];
      if (v13 < 0.00000011920929)
      {
        [v32[5] setWidthFraction:0.600000024];
      }
    }

    [(SKUIStorePageSplitsDescription *)v3 setLeftSplit:v32[5]];
    [(SKUIStorePageSplitsDescription *)v3 setRightSplit:v26[5]];

    _Block_object_dispose(&v25, 8);
    _Block_object_dispose(&v31, 8);

    _Block_object_dispose(v37, 8);
  }

  else
  {
    v14 = objc_alloc_init(SKUIStorePageSplit);
    v15 = [MEMORY[0x277CBEB18] array];
    v16 = [(SKUIStackTemplateElement *)self->_templateElement collectionHeaderViewElement];
    if (v16)
    {
      [v15 addObject:v16];
    }

    v17 = [(SKUIStackTemplateElement *)self->_templateElement collectionElements];
    [v15 addObjectsFromArray:v17];

    v18 = [(SKUIStackDocumentViewController *)self _pageComponentsWithViewElements:v15];
    [(SKUIStorePageSplit *)v14 setPageComponents:v18];

    [(SKUIStorePageSplitsDescription *)v3 setTopSplit:v14];
  }

  return v3;
}

void __57__SKUIStackDocumentViewController__pageSplitsDescription__block_invoke(uint64_t a1, void *a2)
{
  v26 = a2;
  v3 = [v26 elementType];
  if (v3 == 128)
  {
    v6 = [v26 style];
    v7 = [v6 itemWidth];

    v8 = [v7 rangeOfString:@"%"];
    v9 = [v7 length] - 1;
    [v7 floatValue];
    v11 = v10;
    if (v8 == v9)
    {
      v12 = v11 / 100.0;
    }

    else
    {
      v12 = v11;
    }

    v13 = a1 + 48;
    if (!*(*(*(a1 + 48) + 8) + 40) || (v13 = a1 + 56, !*(*(*(a1 + 56) + 8) + 40)))
    {
      v14 = objc_alloc_init(SKUIStorePageSplit);
      v15 = *(*v13 + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v17 = *(*(*v13 + 8) + 40);
      v18 = *(a1 + 32);
      v19 = [v26 flattenedChildren];
      v20 = [v18 _pageComponentsWithViewElements:v19];
      [v17 setPageComponents:v20];

      [*(*(*v13 + 8) + 40) setWidthFraction:v12];
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(a1 + 40));
  }

  else
  {
    if (v3 == 32)
    {
      if (*(*(*(a1 + 48) + 8) + 40) && !*(*(*(a1 + 56) + 8) + 40))
      {
        v21 = [v26 style];
        v22 = SKUIViewElementPlainColorWithStyle(v21, 0);
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
        }

        v25 = v24;

        [*(*(*(a1 + 48) + 8) + 40) setDividerColor:v25];
        goto LABEL_15;
      }

      v4 = *(*(*(a1 + 64) + 8) + 40);
      v5 = v26;
    }

    else
    {
      v4 = *(*(*(a1 + 64) + 8) + 40);
      v5 = v26;
    }

    [v4 addObject:v5];
  }

LABEL_15:
}

- (int64_t)_pinningTransitionStyle
{
  v2 = [(SKUIStackTemplateElement *)self->_templateElement navigationBarElement];
  v3 = [v2 hidesShadow];

  if (v3)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)_resetStateForDocumentNotification:(id)a3
{
  document = self->_document;
  v5 = [a3 object];

  if (document == v5)
  {

    [(SKUIStackDocumentViewController *)self _resetState];
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

- (BOOL)_shouldShowIndexBar
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_entryListControllers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 numberOfEntryDescriptors];
        v8 = [v6 hidesIndexBar];
        v9 = v8;
        if (v7 >= 1 && (v8 & 1) != 0)
        {
          LOBYTE(v3) = 0;
          goto LABEL_12;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }

    LOBYTE(v3) = (v7 > 0) & (v9 ^ 1);
  }

LABEL_12:

  return v3;
}

- (BOOL)_tryToScrollToSectionAtIndexPath:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v72 = 0;
  v5 = -[NSArray objectAtIndex:](self->_entryListControllers, "objectAtIndex:", [v4 section]);
  v6 = [v5 targetIndexBarEntryIDForEntryDescriptorAtIndex:objc_msgSend(v4 returningRelativeSectionIndex:{"item"), &v72}];
  if (v72 == 0x7FFFFFFFFFFFFFFFLL)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v8 = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController sections];
    v7 = [v8 countByEnumeratingWithState:&v68 objects:v74 count:16];
    if (v7)
    {
      v9 = *v69;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v69 != v9)
          {
            objc_enumerationMutation(v8);
          }

          v11 = *(*(&v68 + 1) + 8 * i);
          if ([v11 containsElementWithIndexBarEntryID:v6])
          {
            v62 = v5;
            v63 = v4;
            v7 = [v11 targetScrollingIndexPathForElementWithIndexBarEntryID:v6 relativeSectionIndex:v72];
            v12 = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController collectionView];
            v13 = [v12 collectionViewLayout];
            v14 = [v13 layoutAttributesForUnpinnedItemAtIndexPath:v7];
            [v14 frame];
            v16 = v15;
            v18 = v17;
            v20 = v19;
            v22 = v21;

            [v12 bounds];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;
            [v12 contentSize];
            v57 = v31;
            v76.origin.x = v16;
            v76.origin.y = v18;
            v76.size.width = v20;
            v76.size.height = v22;
            MinX = CGRectGetMinX(v76);
            v60 = v18;
            v61 = v16;
            v77.origin.x = v16;
            v77.origin.y = v18;
            v58 = v22;
            v59 = v20;
            v77.size.width = v20;
            v77.size.height = v22;
            v32 = v24;
            MinY = CGRectGetMinY(v77);
            v78.origin.x = v24;
            v78.origin.y = v26;
            v78.size.width = v28;
            v78.size.height = v30;
            Width = CGRectGetWidth(v78);
            v79.origin.x = v24;
            v79.origin.y = v26;
            v79.size.width = v28;
            v79.size.height = v30;
            Height = CGRectGetHeight(v79);
            v36 = [v12 collectionViewLayout];
            v37 = [v36 pinnedLayoutAttributesForItemsInRect:{MinX, MinY, Width, Height}];

            v38 = [v37 sortedArrayUsingComparator:&__block_literal_global_9];

            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v39 = v38;
            v40 = [v39 countByEnumeratingWithState:&v64 objects:v73 count:16];
            if (v40)
            {
              v41 = v40;
              v42 = *v65;
              v43 = 0.0;
              while (2)
              {
                for (j = 0; j != v41; ++j)
                {
                  if (*v65 != v42)
                  {
                    objc_enumerationMutation(v39);
                  }

                  v45 = *(*(&v64 + 1) + 8 * j);
                  v46 = [v45 indexPath];
                  if ([v46 compare:v7] != -1)
                  {

                    goto LABEL_23;
                  }

                  [v45 frame];
                  v43 = v43 - CGRectGetHeight(v80);
                }

                v41 = [v39 countByEnumeratingWithState:&v64 objects:v73 count:16];
                if (v41)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v43 = 0.0;
            }

LABEL_23:

            [v12 contentOffset];
            v48 = v47;
            [v12 contentInset];
            v50 = v49;
            v52 = v51;
            v81.origin.y = v60;
            v81.origin.x = v61;
            v81.size.height = v58;
            v81.size.width = v59;
            v53 = v43 + CGRectGetMinY(v81);
            v82.origin.x = v32;
            v82.origin.y = v26;
            v82.size.width = v28;
            v82.size.height = v30;
            v54 = v52 + v50 + v57 - CGRectGetHeight(v82);
            if (v53 < v54)
            {
              v54 = v53;
            }

            [v12 setContentOffset:0 animated:{v48, v54 - v50, *&MinX}];

            LOBYTE(v7) = 1;
            v5 = v62;
            v4 = v63;
            goto LABEL_26;
          }
        }

        v7 = [v8 countByEnumeratingWithState:&v68 objects:v74 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_26:
  }

  return v7;
}

uint64_t __68__SKUIStackDocumentViewController__tryToScrollToSectionAtIndexPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 indexPath];
  v6 = [v4 indexPath];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_updateEntryListControllersWithReload:(BOOL)a3
{
  v22 = a3;
  v34 = *MEMORY[0x277D85DE8];
  v4 = [(NSMapTable *)self->_viewElementToEntryListController keyEnumerator];
  v5 = [v4 allObjects];
  v6 = [v5 mutableCopy];

  v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
  v9 = [(SKUIStackDocumentViewController *)self _indexBarViewElement];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __73__SKUIStackDocumentViewController__updateEntryListControllersWithReload___block_invoke;
  v28[3] = &unk_2781FAFC0;
  v10 = v6;
  v29 = v10;
  v30 = self;
  v11 = v7;
  v31 = v11;
  v12 = v8;
  v32 = v12;
  v23 = v9;
  [v9 enumerateChildrenUsingBlock:v28];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v10;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * i);
        v19 = [(NSMapTable *)self->_viewElementToEntryListController objectForKey:v18];
        [v19 setDelegate:0];
        [(NSMapTable *)self->_viewElementToEntryListController removeObjectForKey:v18];
        if (![(NSMapTable *)self->_viewElementToEntryListController count])
        {
          viewElementToEntryListController = self->_viewElementToEntryListController;
          self->_viewElementToEntryListController = 0;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v15);
  }

  if (![(NSArray *)v12 count])
  {

    v12 = 0;
  }

  entryListControllers = self->_entryListControllers;
  if (entryListControllers == v12 || [(NSArray *)entryListControllers isEqualToArray:v12])
  {
    if ([v11 count] && v22)
    {
      [(SKUIIndexBarControlController *)self->_indexBarControlController reloadSections:v11];
    }
  }

  else
  {
    objc_storeStrong(&self->_entryListControllers, v12);
    if (v22)
    {
      [(SKUIIndexBarControlController *)self->_indexBarControlController reloadData];
    }
  }
}

void __73__SKUIStackDocumentViewController__updateEntryListControllersWithReload___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  [*(a1 + 32) removeObject:v13];
  v3 = [*(*(a1 + 40) + 1128) objectForKey:v13];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 48) addIndex:{objc_msgSend(*(a1 + 56), "count")}];
LABEL_3:
    if ([v4 needsRootTargetViewElement])
    {
      v5 = [v4 rootTargetIndexBarEntryID];
      v6 = [*(*(a1 + 40) + 1120) firstDescendentWithIndexBarEntryID:v5];
      [v4 setRootTargetViewElement:v6];
    }

    [v4 reloadViewElementData];
    [*(a1 + 56) addObject:v4];
    v7 = *(*(a1 + 40) + 1128);
    if (!v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:1];
      v9 = *(a1 + 40);
      v10 = *(v9 + 1128);
      *(v9 + 1128) = v8;

      v7 = *(*(a1 + 40) + 1128);
    }

    [v7 setObject:v4 forKey:v13];

    goto LABEL_8;
  }

  v11 = [v13 elementType];
  if (v11 == 54)
  {
    v12 = [SKUIIndexBarEntryListController entryListControllerForEntryViewElement:v13];
  }

  else
  {
    if (v11 != 55)
    {
      [0 setDelegate:*(a1 + 40)];
      goto LABEL_8;
    }

    v12 = [SKUIIndexBarEntryListController entryListControllerForEntryListViewElement:v13];
  }

  v4 = v12;
  [v12 setDelegate:*(a1 + 40)];
  if (v4)
  {
    goto LABEL_3;
  }

LABEL_8:
}

- (void)_updateIndexBarVisibility
{
  v3 = [(SKUIStackDocumentViewController *)self _shouldShowIndexBar];
  v4 = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController indexBarControl];

  if (v3)
  {
    if (!v4)
    {
      sectionsViewController = self->_sectionsViewController;
      v8 = [(SKUIStackDocumentViewController *)self _indexBarControlController];
      v6 = [v8 indexBarControl];
      [(SKUIStorePageSectionsViewController *)sectionsViewController setIndexBarControl:v6];
    }
  }

  else if (v4)
  {
    v7 = self->_sectionsViewController;

    [(SKUIStorePageSectionsViewController *)v7 setIndexBarControl:0];
  }
}

- (void)initWithTemplateElement:layoutStyle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStackDocumentViewController initWithTemplateElement:layoutStyle:]";
}

@end