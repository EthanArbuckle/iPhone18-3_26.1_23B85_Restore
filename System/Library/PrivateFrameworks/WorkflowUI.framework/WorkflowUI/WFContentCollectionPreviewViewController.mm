@interface WFContentCollectionPreviewViewController
- (BOOL)contentAllowsScrolling;
- (BOOL)shouldHideSashView;
- (CGRect)previewController:(id)controller frameForPreviewItem:(id)item inSourceView:(id *)view;
- (WFCompactHighlightedView)highlightView;
- (WFContentCollectionPreviewViewControllerDelegate)delegate;
- (double)contentHeightForWidth:(double)width;
- (double)targetHeightForAnimatingPreviewViewController:(id)controller toProposedHeight:(double)height;
- (id)displayConfiguration;
- (id)sourceViewForQuickLook;
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)configureTableCell:(id)cell;
- (void)handleTapGesture:(id)gesture;
- (void)loadSingleItemPreview;
- (void)loadView;
- (void)prepareContentCollection:(id)collection withCompletionHandler:(id)handler;
- (void)presentFullScreenPreviewWithIndex:(int64_t)index;
- (void)previewControllerWillDismiss:(id)dismiss;
- (void)previewViewControllerDidInvalidateSize:(id)size;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation WFContentCollectionPreviewViewController

- (WFCompactHighlightedView)highlightView
{
  WeakRetained = objc_loadWeakRetained(&self->_highlightView);

  return WeakRetained;
}

- (WFContentCollectionPreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)previewController:(id)controller frameForPreviewItem:(id)item inSourceView:(id *)view
{
  v6 = [(WFContentCollectionPreviewViewController *)self sourceViewForQuickLook:controller];
  v7 = v6;
  *view = v7;
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)sourceViewForQuickLook
{
  previewViewController = [(WFContentCollectionPreviewViewController *)self previewViewController];
  if ([previewViewController contentAllowsScrolling])
  {
    view = [(WFContentCollectionPreviewViewController *)self view];
  }

  else
  {
    previewViewController2 = [(WFContentCollectionPreviewViewController *)self previewViewController];
    view = [previewViewController2 sourceViewForQuickLook];
  }

  return view;
}

- (void)previewControllerWillDismiss:(id)dismiss
{
  delegate = [(WFContentCollectionPreviewViewController *)self delegate];
  [delegate askContainerForHomeGestureUpdate];

  containerViewController = [(WFContentCollectionPreviewViewController *)self containerViewController];
  [containerViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  -[WFContentCollectionPreviewViewController presentFullScreenPreviewWithIndex:](self, "presentFullScreenPreviewWithIndex:", [pathCopy row]);
  tableView = [(WFContentCollectionPreviewViewController *)self tableView];
  [tableView deselectRowAtIndexPath:pathCopy animated:1];
}

- (void)configureTableCell:(id)cell
{
  cellCopy = cell;
  delegate = [(WFContentCollectionPreviewViewController *)self delegate];
  [delegate configureCell:cellCopy];
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  delegate = [(WFContentCollectionPreviewViewController *)self delegate];
  v5 = [delegate visualStylingProviderForCategory:category];

  return v5;
}

- (id)displayConfiguration
{
  v2 = objc_alloc_init(MEMORY[0x277D7A040]);
  [v2 setTitleLineLimit:&unk_2883C2090];

  return v2;
}

- (void)previewViewControllerDidInvalidateSize:(id)size
{
  delegate = [(WFContentCollectionPreviewViewController *)self delegate];
  [delegate invalidateContentSize];
}

- (double)targetHeightForAnimatingPreviewViewController:(id)controller toProposedHeight:(double)height
{
  delegate = [(WFContentCollectionPreviewViewController *)self delegate];
  [delegate targetHeightForAnimatingToProposedHeight:height];
  v7 = v6;

  return v7;
}

- (BOOL)contentAllowsScrolling
{
  dataSource = [(WFContentCollectionPreviewViewController *)self dataSource];
  numberOfItems = [dataSource numberOfItems];

  if (numberOfItems > 1)
  {
    return 1;
  }

  previewViewController = [(WFContentCollectionPreviewViewController *)self previewViewController];
  contentAllowsScrolling = [previewViewController contentAllowsScrolling];

  return contentAllowsScrolling;
}

- (BOOL)shouldHideSashView
{
  dataSource = [(WFContentCollectionPreviewViewController *)self dataSource];
  numberOfItems = [dataSource numberOfItems];

  if (numberOfItems > 1)
  {
    return 1;
  }

  if ([MEMORY[0x277CBEBD0] universalPreviewsEnabled])
  {
    previewViewController = [(WFContentCollectionPreviewViewController *)self previewViewController];
    contentItem = [previewViewController contentItem];
    conformsToContentItemPreviewProviding = [contentItem conformsToContentItemPreviewProviding];

    if (conformsToContentItemPreviewProviding)
    {
      return 1;
    }
  }

  previewViewController2 = [(WFContentCollectionPreviewViewController *)self previewViewController];
  containsImageOrMediaThumbnail = [previewViewController2 containsImageOrMediaThumbnail];

  return containsImageOrMediaThumbnail;
}

- (void)presentFullScreenPreviewWithIndex:(int64_t)index
{
  dataSource = [(WFContentCollectionPreviewViewController *)self dataSource];

  if (dataSource)
  {
    previewViewController = [(WFContentCollectionPreviewViewController *)self previewViewController];
    if (!previewViewController || (v7 = previewViewController, -[WFContentCollectionPreviewViewController previewViewController](self, "previewViewController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 contentItem], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "shouldPresentFullScreenPreview"), v9, v8, v7, v10))
    {
      v11 = objc_alloc_init(MEMORY[0x277D75D28]);
      [v11 setModalPresentationStyle:5];
      objc_storeStrong(&self->_containerViewController, v11);
      dataSource2 = [(WFContentCollectionPreviewViewController *)self dataSource];
      v13 = [objc_alloc(MEMORY[0x277D7BDE0]) initWithInitialIndex:index];
      [v13 setDelegate:self];
      [v13 setDataSource:dataSource2];
      [v13 setModalPresentationStyle:5];
      [v13 setOverrideParentApplicationDisplayIdentifier:*MEMORY[0x277D7A338]];
      v25 = 0;
      v26 = &v25;
      v27 = 0x2020000000;
      v28 = 0;
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      items = [dataSource2 items];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __78__WFContentCollectionPreviewViewController_presentFullScreenPreviewWithIndex___block_invoke;
      v20[3] = &unk_279EE8BE0;
      v20[4] = &v25;
      v20[5] = &v21;
      [items enumerateObjectsUsingBlock:v20];

      [v13 setIsContentManaged:v22[3] > v26[3]];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __78__WFContentCollectionPreviewViewController_presentFullScreenPreviewWithIndex___block_invoke_2;
      v17[3] = &unk_279EE8CA8;
      v17[4] = self;
      v15 = v11;
      v18 = v15;
      v16 = v13;
      v19 = v16;
      [(WFContentCollectionPreviewViewController *)self presentViewController:v15 animated:1 completion:v17];

      _Block_object_dispose(&v21, 8);
      _Block_object_dispose(&v25, 8);
    }
  }
}

void __78__WFContentCollectionPreviewViewController_presentFullScreenPreviewWithIndex___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 attributionSet];
  v4 = [v3 isAllowedToBeSentToDestinationWithManagedLevel:1];

  if (v4)
  {
    v5 = 32;
    v6 = v9;
  }

  else
  {
    v7 = [v9 attributionSet];
    v8 = [v7 isAllowedToBeSentToDestinationWithManagedLevel:2];

    v6 = v9;
    if (!v8)
    {
      goto LABEL_6;
    }

    v5 = 40;
  }

  ++*(*(*(a1 + v5) + 8) + 24);
LABEL_6:
}

uint64_t __78__WFContentCollectionPreviewViewController_presentFullScreenPreviewWithIndex___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 askContainerForHomeGestureUpdate];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  return [v3 presentViewController:v4 animated:1 completion:0];
}

- (void)handleTapGesture:(id)gesture
{
  if ([gesture state] == 3)
  {

    [(WFContentCollectionPreviewViewController *)self presentFullScreenPreviewWithIndex:0];
  }
}

- (double)contentHeightForWidth:(double)width
{
  dataSource = [(WFContentCollectionPreviewViewController *)self dataSource];
  numberOfItems = [dataSource numberOfItems];

  if (numberOfItems < 2)
  {
    [(WFContentCollectionPreviewViewController *)self previewViewController];
  }

  else
  {
    [(WFContentCollectionPreviewViewController *)self tableView];
  }
  v7 = ;
  [v7 contentHeightForWidth:width];
  v9 = v8;

  return v9;
}

- (void)prepareContentCollection:(id)collection withCompletionHandler:(id)handler
{
  collectionCopy = collection;
  handlerCopy = handler;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__WFContentCollectionPreviewViewController_prepareContentCollection_withCompletionHandler___block_invoke;
  v15[3] = &unk_279EE8B90;
  objc_copyWeak(&v19, &location);
  v17 = v23;
  v18 = v21;
  v8 = handlerCopy;
  v16 = v8;
  [collectionCopy generatePreviewControllerDataSource:v15];
  v9 = dispatch_time(0, 1000000000);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__WFContentCollectionPreviewViewController_prepareContentCollection_withCompletionHandler___block_invoke_5;
  v11[3] = &unk_279EE8BB8;
  v13 = v21;
  v14 = v23;
  v12 = v8;
  v10 = v8;
  dispatch_after(v9, MEMORY[0x277D85CD0], v11);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);
}

void __91__WFContentCollectionPreviewViewController_prepareContentCollection_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__WFContentCollectionPreviewViewController_prepareContentCollection_withCompletionHandler___block_invoke_2;
  block[3] = &unk_279EE8B68;
  block[4] = WeakRetained;
  v9 = v3;
  v5 = v3;
  objc_copyWeak(&v12, (a1 + 56));
  v11 = *(a1 + 48);
  v7 = *(a1 + 32);
  v6 = v7;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void *__91__WFContentCollectionPreviewViewController_prepareContentCollection_withCompletionHandler___block_invoke_5(void *result)
{
  if ((*(*(result[5] + 8) + 24) & 1) == 0)
  {
    *(*(result[6] + 8) + 24) = 1;
    return (*(result[4] + 16))();
  }

  return result;
}

void __91__WFContentCollectionPreviewViewController_prepareContentCollection_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setDataSource:*(a1 + 40)];
  [*(a1 + 32) loadViewIfNeeded];
  if ([*(a1 + 40) numberOfItems])
  {
    v2 = [*(a1 + 32) previewViewController];
    v3 = [*(a1 + 40) items];
    v4 = [v3 firstObject];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __91__WFContentCollectionPreviewViewController_prepareContentCollection_withCompletionHandler___block_invoke_3;
    v7[3] = &unk_279EE8B40;
    objc_copyWeak(&v10, (a1 + 72));
    v9 = *(a1 + 64);
    v6 = *(a1 + 48);
    v5 = v6;
    v8 = v6;
    [v2 setContentItem:v4 completionHandler:v7];

    objc_destroyWeak(&v10);
  }
}

void __91__WFContentCollectionPreviewViewController_prepareContentCollection_withCompletionHandler___block_invoke_3(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__WFContentCollectionPreviewViewController_prepareContentCollection_withCompletionHandler___block_invoke_4;
  v9[3] = &unk_279EE8B18;
  v9[4] = WeakRetained;
  v10 = v5;
  v7 = _Block_copy(v9);
  v8 = v7;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    if ([WeakRetained isBeingPresented])
    {
      [WeakRetained setInstallThumbnailHandler:v8];
    }

    else
    {
      v8[2](v8);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (a2)
    {
      [WeakRetained setInstallThumbnailHandler:v7];
    }

    else
    {
      v7[2](v7);
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32));
  }
}

void __91__WFContentCollectionPreviewViewController_prepareContentCollection_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) highlightView];
  [v2 setUserInteractionEnabled:1];
}

- (void)loadSingleItemPreview
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setUserInteractionEnabled:0];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WFContentCollectionPreviewViewController *)self setHighlightView:v3];
  [(WFContentCollectionPreviewViewController *)self setView:v3];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  requiredVisualStyleCategories = [v3 requiredVisualStyleCategories];
  v5 = [requiredVisualStyleCategories countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(requiredVisualStyleCategories);
        }

        integerValue = [*(*(&v16 + 1) + 8 * v8) integerValue];
        delegate = [(WFContentCollectionPreviewViewController *)self delegate];
        v11 = [delegate visualStylingProviderForCategory:integerValue];

        [v3 setVisualStylingProvider:v11 forCategory:integerValue];
        ++v8;
      }

      while (v6 != v8);
      v6 = [requiredVisualStyleCategories countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v12 = objc_opt_new();
  [v12 setDelegate:self];
  [(WFContentCollectionPreviewViewController *)self addChildViewController:v12];
  [(WFContentCollectionPreviewViewController *)self setPreviewViewController:v12];
  view = [v12 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:view];
  v14 = [view wf_addConstraintsToFillSuperview:v3];
  [v12 didMoveToParentViewController:self];
  v15 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTapGesture_];
  [v3 addGestureRecognizer:v15];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = WFContentCollectionPreviewViewController;
  [(WFContentCollectionPreviewViewController *)&v6 viewDidAppear:appear];
  installThumbnailHandler = [(WFContentCollectionPreviewViewController *)self installThumbnailHandler];
  v5 = installThumbnailHandler;
  if (installThumbnailHandler)
  {
    (*(installThumbnailHandler + 16))(installThumbnailHandler);
    [(WFContentCollectionPreviewViewController *)self setInstallThumbnailHandler:0];
  }
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = WFContentCollectionPreviewViewController;
  [(WFContentCollectionPreviewViewController *)&v11 loadView];
  dataSource = [(WFContentCollectionPreviewViewController *)self dataSource];
  numberOfItems = [dataSource numberOfItems];

  if (numberOfItems < 2)
  {
    [(WFContentCollectionPreviewViewController *)self loadSingleItemPreview];
  }

  else
  {
    v5 = [WFContentCollectionTableView alloc];
    dataSource2 = [(WFContentCollectionPreviewViewController *)self dataSource];
    v7 = [(WFContentCollectionTableView *)v5 initWithContentCollection:dataSource2];

    [(WFContentCollectionTableView *)v7 setDelegate:self];
    [(WFContentCollectionTableView *)v7 setControllerDelegate:self];
    objc_storeStrong(&self->_tableView, v7);
    view = [(WFContentCollectionPreviewViewController *)self view];
    [view addSubview:v7];

    view2 = [(WFContentCollectionPreviewViewController *)self view];
    v10 = [(UIView *)v7 wf_addConstraintsToFillSuperview:view2];
  }
}

@end