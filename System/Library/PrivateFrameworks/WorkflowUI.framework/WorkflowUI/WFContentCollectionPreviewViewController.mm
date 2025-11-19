@interface WFContentCollectionPreviewViewController
- (BOOL)contentAllowsScrolling;
- (BOOL)shouldHideSashView;
- (CGRect)previewController:(id)a3 frameForPreviewItem:(id)a4 inSourceView:(id *)a5;
- (WFCompactHighlightedView)highlightView;
- (WFContentCollectionPreviewViewControllerDelegate)delegate;
- (double)contentHeightForWidth:(double)a3;
- (double)targetHeightForAnimatingPreviewViewController:(id)a3 toProposedHeight:(double)a4;
- (id)displayConfiguration;
- (id)sourceViewForQuickLook;
- (id)visualStylingProviderForCategory:(int64_t)a3;
- (void)configureTableCell:(id)a3;
- (void)handleTapGesture:(id)a3;
- (void)loadSingleItemPreview;
- (void)loadView;
- (void)prepareContentCollection:(id)a3 withCompletionHandler:(id)a4;
- (void)presentFullScreenPreviewWithIndex:(int64_t)a3;
- (void)previewControllerWillDismiss:(id)a3;
- (void)previewViewControllerDidInvalidateSize:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
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

- (CGRect)previewController:(id)a3 frameForPreviewItem:(id)a4 inSourceView:(id *)a5
{
  v6 = [(WFContentCollectionPreviewViewController *)self sourceViewForQuickLook:a3];
  v7 = v6;
  *a5 = v7;
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
  v3 = [(WFContentCollectionPreviewViewController *)self previewViewController];
  if ([v3 contentAllowsScrolling])
  {
    v4 = [(WFContentCollectionPreviewViewController *)self view];
  }

  else
  {
    v5 = [(WFContentCollectionPreviewViewController *)self previewViewController];
    v4 = [v5 sourceViewForQuickLook];
  }

  return v4;
}

- (void)previewControllerWillDismiss:(id)a3
{
  v4 = [(WFContentCollectionPreviewViewController *)self delegate];
  [v4 askContainerForHomeGestureUpdate];

  v5 = [(WFContentCollectionPreviewViewController *)self containerViewController];
  [v5 dismissViewControllerAnimated:1 completion:0];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  -[WFContentCollectionPreviewViewController presentFullScreenPreviewWithIndex:](self, "presentFullScreenPreviewWithIndex:", [v5 row]);
  v6 = [(WFContentCollectionPreviewViewController *)self tableView];
  [v6 deselectRowAtIndexPath:v5 animated:1];
}

- (void)configureTableCell:(id)a3
{
  v4 = a3;
  v5 = [(WFContentCollectionPreviewViewController *)self delegate];
  [v5 configureCell:v4];
}

- (id)visualStylingProviderForCategory:(int64_t)a3
{
  v4 = [(WFContentCollectionPreviewViewController *)self delegate];
  v5 = [v4 visualStylingProviderForCategory:a3];

  return v5;
}

- (id)displayConfiguration
{
  v2 = objc_alloc_init(MEMORY[0x277D7A040]);
  [v2 setTitleLineLimit:&unk_2883C2090];

  return v2;
}

- (void)previewViewControllerDidInvalidateSize:(id)a3
{
  v3 = [(WFContentCollectionPreviewViewController *)self delegate];
  [v3 invalidateContentSize];
}

- (double)targetHeightForAnimatingPreviewViewController:(id)a3 toProposedHeight:(double)a4
{
  v5 = [(WFContentCollectionPreviewViewController *)self delegate];
  [v5 targetHeightForAnimatingToProposedHeight:a4];
  v7 = v6;

  return v7;
}

- (BOOL)contentAllowsScrolling
{
  v3 = [(WFContentCollectionPreviewViewController *)self dataSource];
  v4 = [v3 numberOfItems];

  if (v4 > 1)
  {
    return 1;
  }

  v6 = [(WFContentCollectionPreviewViewController *)self previewViewController];
  v7 = [v6 contentAllowsScrolling];

  return v7;
}

- (BOOL)shouldHideSashView
{
  v3 = [(WFContentCollectionPreviewViewController *)self dataSource];
  v4 = [v3 numberOfItems];

  if (v4 > 1)
  {
    return 1;
  }

  if ([MEMORY[0x277CBEBD0] universalPreviewsEnabled])
  {
    v6 = [(WFContentCollectionPreviewViewController *)self previewViewController];
    v7 = [v6 contentItem];
    v8 = [v7 conformsToContentItemPreviewProviding];

    if (v8)
    {
      return 1;
    }
  }

  v9 = [(WFContentCollectionPreviewViewController *)self previewViewController];
  v10 = [v9 containsImageOrMediaThumbnail];

  return v10;
}

- (void)presentFullScreenPreviewWithIndex:(int64_t)a3
{
  v5 = [(WFContentCollectionPreviewViewController *)self dataSource];

  if (v5)
  {
    v6 = [(WFContentCollectionPreviewViewController *)self previewViewController];
    if (!v6 || (v7 = v6, -[WFContentCollectionPreviewViewController previewViewController](self, "previewViewController"), v8 = objc_claimAutoreleasedReturnValue(), [v8 contentItem], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "shouldPresentFullScreenPreview"), v9, v8, v7, v10))
    {
      v11 = objc_alloc_init(MEMORY[0x277D75D28]);
      [v11 setModalPresentationStyle:5];
      objc_storeStrong(&self->_containerViewController, v11);
      v12 = [(WFContentCollectionPreviewViewController *)self dataSource];
      v13 = [objc_alloc(MEMORY[0x277D7BDE0]) initWithInitialIndex:a3];
      [v13 setDelegate:self];
      [v13 setDataSource:v12];
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
      v14 = [v12 items];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __78__WFContentCollectionPreviewViewController_presentFullScreenPreviewWithIndex___block_invoke;
      v20[3] = &unk_279EE8BE0;
      v20[4] = &v25;
      v20[5] = &v21;
      [v14 enumerateObjectsUsingBlock:v20];

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

- (void)handleTapGesture:(id)a3
{
  if ([a3 state] == 3)
  {

    [(WFContentCollectionPreviewViewController *)self presentFullScreenPreviewWithIndex:0];
  }
}

- (double)contentHeightForWidth:(double)a3
{
  v5 = [(WFContentCollectionPreviewViewController *)self dataSource];
  v6 = [v5 numberOfItems];

  if (v6 < 2)
  {
    [(WFContentCollectionPreviewViewController *)self previewViewController];
  }

  else
  {
    [(WFContentCollectionPreviewViewController *)self tableView];
  }
  v7 = ;
  [v7 contentHeightForWidth:a3];
  v9 = v8;

  return v9;
}

- (void)prepareContentCollection:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v7;
  v16 = v8;
  [v6 generatePreviewControllerDataSource:v15];
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
  v4 = [v3 requiredVisualStyleCategories];
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * v8) integerValue];
        v10 = [(WFContentCollectionPreviewViewController *)self delegate];
        v11 = [v10 visualStylingProviderForCategory:v9];

        [v3 setVisualStylingProvider:v11 forCategory:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v12 = objc_opt_new();
  [v12 setDelegate:self];
  [(WFContentCollectionPreviewViewController *)self addChildViewController:v12];
  [(WFContentCollectionPreviewViewController *)self setPreviewViewController:v12];
  v13 = [v12 view];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v13];
  v14 = [v13 wf_addConstraintsToFillSuperview:v3];
  [v12 didMoveToParentViewController:self];
  v15 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTapGesture_];
  [v3 addGestureRecognizer:v15];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = WFContentCollectionPreviewViewController;
  [(WFContentCollectionPreviewViewController *)&v6 viewDidAppear:a3];
  v4 = [(WFContentCollectionPreviewViewController *)self installThumbnailHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4);
    [(WFContentCollectionPreviewViewController *)self setInstallThumbnailHandler:0];
  }
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = WFContentCollectionPreviewViewController;
  [(WFContentCollectionPreviewViewController *)&v11 loadView];
  v3 = [(WFContentCollectionPreviewViewController *)self dataSource];
  v4 = [v3 numberOfItems];

  if (v4 < 2)
  {
    [(WFContentCollectionPreviewViewController *)self loadSingleItemPreview];
  }

  else
  {
    v5 = [WFContentCollectionTableView alloc];
    v6 = [(WFContentCollectionPreviewViewController *)self dataSource];
    v7 = [(WFContentCollectionTableView *)v5 initWithContentCollection:v6];

    [(WFContentCollectionTableView *)v7 setDelegate:self];
    [(WFContentCollectionTableView *)v7 setControllerDelegate:self];
    objc_storeStrong(&self->_tableView, v7);
    v8 = [(WFContentCollectionPreviewViewController *)self view];
    [v8 addSubview:v7];

    v9 = [(WFContentCollectionPreviewViewController *)self view];
    v10 = [(UIView *)v7 wf_addConstraintsToFillSuperview:v9];
  }
}

@end