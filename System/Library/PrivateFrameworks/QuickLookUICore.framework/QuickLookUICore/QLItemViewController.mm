@interface QLItemViewController
- (BOOL)canToggleFullScreen;
- (BOOL)draggableViewShouldStartDragSession:(id)a3;
- (BOOL)navigationBarShouldBeChromeless;
- (BOOL)toolbarShouldBeChromeless;
- (CGRect)contentFrame;
- (NSArray)registeredKeyCommands;
- (NSString)description;
- (OS_dispatch_queue)saveEditsQueue;
- (QLItemViewController)init;
- (QLItemViewControllerPresentingDelegate)presentingDelegate;
- (QLPreviewItemViewControllerDelegate)delegate;
- (id)additionalItemViewControllerDescription;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4;
- (void)_addDragInteractionIfNeeded;
- (void)_scrollScrollViewByPercentualOffset:(double)a3;
- (void)buttonPressedWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)createEditedCopyForItem:(id)a3 outputType:(id)a4 directoryURL:(id)a5 completionHandler:(id)a6;
- (void)didFinishSavingEdits;
- (void)didStartSavingEdits;
- (void)editedCopyToSaveChangesWithOutputType:(id)a3 completionHandler:(id)a4;
- (void)handlePerformedKeyCommandIfNeeded:(id)a3;
- (void)hideSaveEditProgressIndicator;
- (void)loadPreviewControllerIfNeededWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5;
- (void)notifyDelegateWantsChromelessBars;
- (void)notifyDelegatesDidFailWithError:(id)a3;
- (void)performCompletionBlocksWithError:(id)a3;
- (void)performFirstTimeAppearanceActionsIfNeeded:(unint64_t)a3;
- (void)prepareForInvalidationWithCompletionHandler:(id)a3;
- (void)savePreviewEditedCopyWithCompletionHandler:(id)a3;
- (void)setContentFrame:(CGRect)a3;
- (void)showSaveEditsProgressIndicatorAfterDelay;
- (void)updateInterfaceAfterSavingEdits;
- (void)updateInterfaceForSavingEdits;
- (void)updateScrollViewContentOffset:(BOOL)a3 withPreviousAppearance:(id)a4;
- (void)viewSafeAreaInsetsDidChange;
@end

@implementation QLItemViewController

- (void)setContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentFrame = &self->_contentFrame;
  if (!CGRectEqualToRect(self->_contentFrame, a3))
  {
    p_contentFrame->origin.x = x;
    p_contentFrame->origin.y = y;
    p_contentFrame->size.width = width;
    p_contentFrame->size.height = height;
    [(QLItemViewController *)self notifyDelegateWantsChromelessBars];
    v9 = [(QLItemViewController *)self delegate];
    [v9 previewItemViewControllerDidUpdateContentFrame:self];
  }
}

- (void)notifyDelegateWantsChromelessBars
{
  if (!CGRectIsEmpty(self->_contentFrame))
  {
    v3 = [(QLItemViewController *)self view];
    [v3 safeAreaInsets];
    v7 = v6;
    if (v8 == *(MEMORY[0x277D768C8] + 8) && v4 == *MEMORY[0x277D768C8] && v5 == *(MEMORY[0x277D768C8] + 24))
    {
      v11 = *(MEMORY[0x277D768C8] + 16);

      if (v7 == v11)
      {
        return;
      }
    }

    else
    {
    }

    v12 = [(QLItemViewController *)self delegate];
    [v12 previewItemViewController:self wantsChromelessNavigationBar:{-[QLItemViewController navigationBarShouldBeChromeless](self, "navigationBarShouldBeChromeless")}];

    v13 = [(QLItemViewController *)self delegate];
    [v13 previewItemViewController:self wantsChromelessToolbar:{-[QLItemViewController toolbarShouldBeChromeless](self, "toolbarShouldBeChromeless")}];
  }
}

- (BOOL)navigationBarShouldBeChromeless
{
  if (![(QLItemViewController *)self supportsChromeless])
  {
    return 0;
  }

  y = self->_contentFrame.origin.y;
  v4 = [(QLItemViewController *)self view];
  [v4 safeAreaInsets];
  v6 = y >= v5;

  return v6;
}

- (BOOL)toolbarShouldBeChromeless
{
  if (![(QLItemViewController *)self supportsChromeless])
  {
    return 0;
  }

  v3 = self->_contentFrame.origin.y + self->_contentFrame.size.height;
  v4 = [(QLItemViewController *)self view];
  [v4 frame];
  v6 = v5;
  v7 = [(QLItemViewController *)self view];
  [v7 safeAreaInsets];
  v9 = v3 <= v6 - v8;

  return v9;
}

- (void)viewSafeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = QLItemViewController;
  [(QLItemViewController *)&v3 viewSafeAreaInsetsDidChange];
  [(QLItemViewController *)self notifyDelegateWantsChromelessBars];
}

- (void)updateScrollViewContentOffset:(BOOL)a3 withPreviousAppearance:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(QLItemViewController *)self scrollView];
  if (([(QLItemViewController *)self automaticallyUpdateScrollViewContentOffset]|| [(QLItemViewController *)self automaticallyUpdateScrollViewContentInset]) && v7)
  {
    v8 = [(QLItemViewController *)self appearance];
    [v8 peripheryInsets];
    v10 = v9;

    [v6 topInset];
    v12 = v11;
    [v6 peripheryInsets];
    if (v12 >= v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    v15 = [(QLItemViewController *)self appearance];
    [v15 topInset];
    v17 = v16;

    v18 = [(QLItemViewController *)self appearance];
    [v18 peripheryInsets];
    v20 = v19;

    if (v17 >= v20)
    {
      v21 = v17;
    }

    else
    {
      v21 = v20;
    }

    v22 = [(QLItemViewController *)self appearance];
    [v22 bottomInset];
    v24 = v23;

    v25 = [(QLItemViewController *)self appearance];
    [v25 peripheryInsets];
    v27 = v26;

    if (v24 >= v27)
    {
      v28 = v24;
    }

    else
    {
      v28 = v27;
    }

    [v7 contentOffset];
    v31 = v30;
    v32 = v29;
    if (v21 <= 0.0 || v29 != -v14)
    {
      if (v21 == v10)
      {
        v33 = -v10;
        if (v29 < -v10)
        {
LABEL_22:
          if (v33 >= -v21)
          {
            v39 = v33;
          }

          else
          {
            v39 = -v21;
          }

          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __77__QLItemViewController_updateScrollViewContentOffset_withPreviousAppearance___block_invoke;
          v48[3] = &unk_279AE14E0;
          v50 = v21;
          v51 = v28;
          v48[4] = self;
          v49 = v7;
          v52 = v31;
          v53 = v39;
          v40 = MEMORY[0x266708AD0](v48);
          v41 = v40;
          if (v4)
          {
            v42 = MEMORY[0x277D75D18];
            v43 = *MEMORY[0x277D76DA0];
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v46[2] = __77__QLItemViewController_updateScrollViewContentOffset_withPreviousAppearance___block_invoke_2;
            v46[3] = &unk_279AE1338;
            v47 = v40;
            [v42 animateWithDuration:v46 animations:v43];
          }

          else
          {
            v40[2](v40);
          }

          v44 = [(QLItemViewController *)self view];
          v45 = [v44 window];
          self->_lastScrollViewUpdateInterfaceOrientation = [v45 _windowInterfaceOrientation];

          goto LABEL_29;
        }
      }

      if (!v6 || ([v6 topInset], v32 != -v34))
      {
        lastScrollViewUpdateInterfaceOrientation = self->_lastScrollViewUpdateInterfaceOrientation;
        v36 = [(QLItemViewController *)self view];
        v37 = [v36 window];
        v38 = [v37 _windowInterfaceOrientation];

        v33 = v14 + v32 - v21;
        if (lastScrollViewUpdateInterfaceOrientation == v38)
        {
          v33 = v32;
        }

        goto LABEL_22;
      }
    }

    v33 = -v21;
    goto LABEL_22;
  }

LABEL_29:
}

uint64_t __77__QLItemViewController_updateScrollViewContentOffset_withPreviousAppearance___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  if ([*(a1 + 32) automaticallyUpdateScrollViewContentInset])
  {
    [*(a1 + 40) setContentInset:{v2, 0.0, v3, 0.0}];
  }

  if ([*(a1 + 32) automaticallyUpdateScrollViewIndicatorInset])
  {
    [*(a1 + 40) setScrollIndicatorInsets:{v2, 0.0, v3, 0.0}];
  }

  result = [*(a1 + 40) isDecelerating];
  if ((result & 1) == 0)
  {
    result = [*(a1 + 32) automaticallyUpdateScrollViewContentOffset];
    if (result)
    {
      v5 = *(a1 + 64);
      v6 = *(a1 + 72);
      v7 = *(a1 + 40);

      return [v7 setContentOffset:{v5, v6}];
    }
  }

  return result;
}

- (QLItemViewController)init
{
  v3.receiver = self;
  v3.super_class = QLItemViewController;
  return [(QLItemViewController *)&v3 init];
}

- (void)loadPreviewControllerIfNeededWithContents:(id)a3 context:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (self->_isLoaded)
  {
    (*(v11 + 2))(v11, 0);
  }

  else if (self->_isLoading)
  {
    completionBlocks = self->_completionBlocks;
    v14 = MEMORY[0x266708AD0](v11);
    [(NSMutableArray *)completionBlocks addObject:v14];
  }

  else
  {
    self->_isLoaded = 0;
    self->_isLoading = 1;
    objc_storeStrong(&self->_contents, a3);
    objc_storeStrong(&self->_context, a4);
    v15 = objc_opt_new();
    v16 = self->_completionBlocks;
    self->_completionBlocks = v15;

    if (v12)
    {
      v17 = self->_completionBlocks;
      v18 = MEMORY[0x266708AD0](v12);
      [(NSMutableArray *)v17 addObject:v18];
    }

    objc_initWeak(&location, self);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __92__QLItemViewController_loadPreviewControllerIfNeededWithContents_context_completionHandler___block_invoke;
    v23[3] = &unk_279AE1508;
    objc_copyWeak(&v25, &location);
    v19 = v10;
    v24 = v19;
    [(QLItemViewController *)self loadPreviewControllerWithContents:v9 context:v19 completionHandler:v23];
    v20 = [v19 backgroundColor];

    if (v20)
    {
      v21 = [v19 backgroundColor];
      v22 = [(QLItemViewController *)self view];
      [v22 setBackgroundColor:v21];
    }

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }
}

void __92__QLItemViewController_loadPreviewControllerIfNeededWithContents_context_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setIsLoaded:v3 == 0];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 setLoadingFailed:v3 != 0];

  v6 = objc_loadWeakRetained((a1 + 40));
  [v6 setIsLoading:0];

  if (v3)
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v13 = 138412546;
      v14 = v9;
      v15 = 2112;
      v16 = v3;
      _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_ERROR, "Error while attempting to load preview controller for context '%@': %@ #ItemViewController", &v13, 0x16u);
    }
  }

  v10 = objc_loadWeakRetained((a1 + 40));
  [v10 _addDragInteractionIfNeeded];

  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 performCompletionBlocksWithError:v3];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)performCompletionBlocksWithError:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_completionBlocks;
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

        (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_completionBlocks removeAllObjects];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)canToggleFullScreen
{
  v3 = [(QLItemViewController *)self scrollView];
  if (v3)
  {
    v4 = [(QLItemViewController *)self scrollView];
    v5 = [v4 isDecelerating] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)prepareForInvalidationWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3);
  }
}

- (void)buttonPressedWithIdentifier:(id)a3 completionHandler:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (NSArray)registeredKeyCommands
{
  v3 = objc_opt_new();
  v4 = [(QLItemViewController *)self scrollView];
  if (v4)
  {
    v5 = v4;
    v6 = [(QLItemViewController *)self supportsScrollingUpAndDownUsingKeyCommands];

    if (v6)
    {
      v7 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76AC0] modifierFlags:0 action:sel__scrollScrollViewDown];
      v8 = QLLocalizedString(@"Scroll Down");
      [v7 setDiscoverabilityTitle:v8];

      v9 = [MEMORY[0x277D75650] keyCommandWithInput:*MEMORY[0x277D76B68] modifierFlags:0 action:sel__scrollScrollViewUp];
      v10 = QLLocalizedString(@"Scroll Up");
      [v9 setDiscoverabilityTitle:v10];

      v11 = [QLKeyCommand keyCommandWithKeyCommand:v7 identifier:3];
      [v3 addObject:v11];

      v12 = [QLKeyCommand keyCommandWithKeyCommand:v9 identifier:2];
      [v3 addObject:v12];
    }
  }

  return v3;
}

- (void)handlePerformedKeyCommandIfNeeded:(id)a3
{
  v4 = a3;
  if ([v4 keyCommandIdentifier] == 2)
  {
    [(QLItemViewController *)self _scrollScrollViewUp];
  }

  else if ([v4 keyCommandIdentifier] == 3)
  {
    [(QLItemViewController *)self _scrollScrollViewDown];
  }
}

- (void)_scrollScrollViewByPercentualOffset:(double)a3
{
  v5 = [(QLItemViewController *)self scrollView];

  if (v5)
  {
    v6 = [(QLItemViewController *)self scrollView];
    [v6 contentInset];
    v8 = v7;

    v9 = [(QLItemViewController *)self scrollView];
    [v9 frame];
    Height = CGRectGetHeight(v27);
    v11 = [(QLItemViewController *)self scrollView];
    [v11 contentInset];
    v13 = Height - v12;
    v14 = [(QLItemViewController *)self scrollView];
    [v14 contentInset];
    v16 = v13 - v15;

    v17 = [(QLItemViewController *)self scrollView];
    [v17 contentSize];
    v19 = v18;

    v20 = [(QLItemViewController *)self scrollView];
    [v20 contentOffset];
    v22 = v21 - v16 * a3;

    v23 = v19 - v16 - v8;
    if (v22 < v23)
    {
      v23 = v22;
    }

    if (v23 >= -v8)
    {
      v24 = v23;
    }

    else
    {
      v24 = -v8;
    }

    v25 = [(QLItemViewController *)self scrollView];
    [v25 flashScrollIndicators];

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __60__QLItemViewController__scrollScrollViewByPercentualOffset___block_invoke;
    v26[3] = &unk_279AE0F00;
    v26[4] = self;
    *&v26[5] = v24;
    [MEMORY[0x277D75D18] animateWithDuration:v26 animations:0.4];
  }
}

void __60__QLItemViewController__scrollScrollViewByPercentualOffset___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) scrollView];
  [v6 contentOffset];
  v3 = v2;
  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) scrollView];
  [v5 setContentOffset:{v3, v4}];
}

- (void)performFirstTimeAppearanceActionsIfNeeded:(unint64_t)a3
{
  if (a3 && [(QLItemViewController *)self canPerformFirstTimeAppearanceActions:?])
  {

    [(QLItemViewController *)self performFirstTimeAppearanceActions:a3];
  }
}

- (void)notifyDelegatesDidFailWithError:(id)a3
{
  v4 = a3;
  v5 = [(QLItemViewController *)self presentingDelegate];
  [v5 previewItemViewController:self didFailWithError:v4];

  v6 = [(QLItemViewController *)self delegate];
  [v6 previewItemViewController:self didFailWithError:v4];
}

- (BOOL)draggableViewShouldStartDragSession:(id)a3
{
  v4 = [(QLItemViewController *)self draggableView];
  if (v4)
  {
    v5 = [(QLItemViewController *)self context];
    v6 = [v5 canBeShared];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_addDragInteractionIfNeeded
{
  v3 = [(QLItemViewController *)self draggableView];
  if (v3 && !self->_dragInteraction)
  {
    v6 = v3;
    v4 = [objc_alloc(MEMORY[0x277D75468]) initWithDelegate:self];
    dragInteraction = self->_dragInteraction;
    self->_dragInteraction = v4;

    [v6 addInteraction:self->_dragInteraction];
    v3 = v6;
  }
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  if ([(QLItemViewController *)self draggableViewShouldStartDragSession:a4])
  {
    v5 = [(QLItemViewController *)self context];
    v6 = [v5 item];
    v7 = [v6 editedFileURL];

    if (v7 && ([MEMORY[0x277CCAA00] defaultManager], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "path"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "fileExistsAtPath:", v9), v9, v8, v10))
    {
      v11 = [objc_alloc(MEMORY[0x277CCAA88]) initWithContentsOfURL:v7];
    }

    else
    {
      v13 = [(QLItemViewController *)self context];
      v14 = [v13 item];
      v15 = [v14 fetcher];
      v11 = [v15 newItemProvider];
    }

    v16 = [(QLItemViewController *)self context];
    v17 = [v16 previewTitle];
    [v11 setSuggestedName:v17];

    v18 = [objc_alloc(MEMORY[0x277D75470]) initWithItemProvider:v11];
    v21[0] = v18;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v12;
}

- (int64_t)_dragInteraction:(id)a3 dataOwnerForSession:(id)a4
{
  v5 = [(QLItemViewController *)self delegate:a3];
  v6 = [v5 dragDataOwnerForPreviewItemViewController:self];

  return v6;
}

- (void)savePreviewEditedCopyWithCompletionHandler:(id)a3
{
  if (a3)
  {
    (*(a3 + 2))(a3, 0);
  }
}

- (void)editedCopyToSaveChangesWithOutputType:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(QLItemViewController *)self context];
  v9 = [v8 item];

  v10 = [(QLItemViewController *)self saveEditsQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__QLItemViewController_editedCopyToSaveChangesWithOutputType_completionHandler___block_invoke;
  v14[3] = &unk_279AE15A8;
  v15 = v9;
  v16 = v6;
  v17 = self;
  v18 = v7;
  v11 = v6;
  v12 = v7;
  v13 = v9;
  dispatch_async(v10, v14);
}

void __80__QLItemViewController_editedCopyToSaveChangesWithOutputType_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 editedCopy];
    if (v3)
    {
      v4 = v3;
      v5 = [*(a1 + 32) editedCopy];
      if ([v5 containerStillExists])
      {
        v6 = MEMORY[0x277CE1CB8];
        v7 = [*(a1 + 32) editedCopy];
        v8 = [v7 outputURLContentType];
        v9 = [v6 typeWithIdentifier:v8];
        v10 = [v9 isEqual:*(a1 + 40)];

        if (v10)
        {
          v11 = [*(a1 + 32) editedCopy];
          v23 = [v11 containerURL];

          if ([*(a1 + 32) shouldCreateTemporaryDirectoryInHost])
          {
            v12 = [v23 startAccessingSecurityScopedResource];
            v13 = *(a1 + 56);
            v14 = [*(a1 + 32) editedCopy];
            (*(v13 + 16))(v13, v14, 0);

            if (v12)
            {
              [v23 stopAccessingSecurityScopedResource];
            }
          }

          else
          {
            v21 = *(a1 + 56);
            v22 = [*(a1 + 32) editedCopy];
            (*(v21 + 16))(v21, v22, 0);
          }

          return;
        }
      }

      else
      {
      }
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __80__QLItemViewController_editedCopyToSaveChangesWithOutputType_completionHandler___block_invoke_2;
    v25[3] = &unk_279AE1580;
    v24 = *(a1 + 48);
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(a1 + 56);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    *&v20 = v24;
    *(&v20 + 1) = v16;
    v26 = v20;
    v27 = v19;
    [v16 prepareSaveURL:v25];

    return;
  }

  v15 = *(*(a1 + 56) + 16);

  v15();
}

void __80__QLItemViewController_editedCopyToSaveChangesWithOutputType_completionHandler___block_invoke_2(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] saveEditsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__QLItemViewController_editedCopyToSaveChangesWithOutputType_completionHandler___block_invoke_3;
  block[3] = &unk_279AE1580;
  *&v4 = a1[5];
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  dispatch_async(v3, block);
}

void __80__QLItemViewController_editedCopyToSaveChangesWithOutputType_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldCreateTemporaryDirectoryInHost];
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [v3 delegate];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __80__QLItemViewController_editedCopyToSaveChangesWithOutputType_completionHandler___block_invoke_4;
    v13[3] = &unk_279AE1558;
    v12 = *(a1 + 32);
    v5 = v12.i64[0];
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    *&v8 = v6;
    *(&v8 + 1) = v7;
    v14 = vextq_s8(v12, v12, 8uLL);
    v15 = v8;
    [v4 previewItemViewController:v12.i64[1] requestsTemporaryEditDirectoryWithCompletionHandler:v13];
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);

    [v3 createEditedCopyForItem:v9 outputType:v10 directoryURL:0 completionHandler:v11];
  }
}

void __80__QLItemViewController_editedCopyToSaveChangesWithOutputType_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) saveEditsQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __80__QLItemViewController_editedCopyToSaveChangesWithOutputType_completionHandler___block_invoke_5;
  block[3] = &unk_279AE1530;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = *(a1 + 48);
  v10 = v3;
  v11 = *(a1 + 56);
  v6 = v3;
  dispatch_async(v4, block);
}

void __80__QLItemViewController_editedCopyToSaveChangesWithOutputType_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) url];
  [v2 createEditedCopyForItem:v3 outputType:v4 directoryURL:v5 completionHandler:*(a1 + 64)];
}

- (void)createEditedCopyForItem:(id)a3 outputType:(id)a4 directoryURL:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a5;
  v11 = a6;
  v12 = v10;
  v13 = a4;
  v14 = [v9 shouldCreateTemporaryDirectoryInHost];
  v15 = [v9 saveURL];

  v16 = MEMORY[0x277CBEBC0];
  if (v15)
  {
    v17 = [v9 saveURL];
    v29 = v12;
    v30 = 0;
    v18 = [v9 uuid];
    [v16 _QLTemporaryFileURLWithType:v13 forOriginalFileAtURL:v17 temporaryFileURL:&v30 temporaryDirectoryURL:&v29 fallbackUUID:v18];

    v19 = v30;
    v20 = v29;

    if (!v19)
    {
      goto LABEL_10;
    }

    *v28 = 2;
    v21 = copyfile_state_alloc();
    copyfile_state_set(v21, 0x100u, v28);
    v22 = [v9 saveURL];
    copyfile([v22 fileSystemRepresentation], objc_msgSend(v19, "fileSystemRepresentation"), v21, 4u);

    copyfile_state_free(v21);
    goto LABEL_5;
  }

  v23 = [v9 uuid];
  v19 = [v16 _QLTemporaryFileURLWithType:v13 uuid:v23];

  v20 = v12;
  if (v19)
  {
LABEL_5:
    if (v20)
    {
      v24 = [[QLPreviewItemEditedCopy alloc] initWithEditedCopyURL:v19 containerTemporaryURL:v20 temporaryDirectoryCreatedInHost:v14];
      goto LABEL_9;
    }
  }

  if (v19)
  {
    v24 = [[QLPreviewItemEditedCopy alloc] initWithEditedCopyURL:v19];
LABEL_9:
    v25 = v24;
    if (v24)
    {
      goto LABEL_15;
    }
  }

LABEL_10:
  v26 = MEMORY[0x277D43EF8];
  v27 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v27 = *v26;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *v28 = 0;
    _os_log_impl(&dword_261653000, v27, OS_LOG_TYPE_ERROR, "Could not create QLPreviewItemEditedCopy because could not generate a URL to save the file. #AnyItemViewController", v28, 2u);
  }

  v25 = 0;
LABEL_15:
  [v9 setEditedCopy:v25];
  if (v14)
  {
    LODWORD(v14) = [v20 startAccessingSecurityScopedResource];
  }

  if (v11)
  {
    v11[2](v11, v25, 0);
  }

  if (v14)
  {
    [v20 stopAccessingSecurityScopedResource];
  }
}

- (void)showSaveEditsProgressIndicatorAfterDelay
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __64__QLItemViewController_showSaveEditsProgressIndicatorAfterDelay__block_invoke;
  v2[3] = &unk_279AE1158;
  v2[4] = self;
  QLRunInMainThread(v2);
}

uint64_t __64__QLItemViewController_showSaveEditsProgressIndicatorAfterDelay__block_invoke(uint64_t a1, double a2)
{
  if (*(*(a1 + 32) + 1080))
  {
    v3 = MEMORY[0x277D43EF8];
    v4 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_261653000, v4, OS_LOG_TYPE_FAULT, "_saveEditProgressView should be nil when showSaveEditsProgressIndicatorAfterDelay is called. #Media", v21, 2u);
    }

    [*(a1 + 32) hideSaveEditProgressIndicator];
  }

  gotLoadHelper_x8__OBJC_CLASS___PUProgressIndicatorView(a2);
  v6 = [objc_alloc(*(v5 + 64)) initWithStyle:0];
  v7 = *(a1 + 32);
  v8 = *(v7 + 1080);
  *(v7 + 1080) = v6;

  v9 = [*(a1 + 32) editProgressIndicatorMessage];
  [*(*(a1 + 32) + 1080) setLocalizedMessage:v9];

  [*(*(a1 + 32) + 1080) setShowsBackground:1];
  [*(*(a1 + 32) + 1080) setDeterminate:0];
  [*(*(a1 + 32) + 1080) setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [*(a1 + 32) view];
  [v10 addSubview:*(*(a1 + 32) + 1080)];

  v11 = [*(a1 + 32) view];
  v12 = MEMORY[0x277CCAAD0];
  v13 = [*(a1 + 32) view];
  v14 = [v12 constraintWithItem:v13 attribute:9 relatedBy:0 toItem:*(*(a1 + 32) + 1080) attribute:9 multiplier:1.0 constant:0.0];
  [v11 addConstraint:v14];

  v15 = [*(a1 + 32) view];
  v16 = MEMORY[0x277CCAAD0];
  v17 = [*(a1 + 32) view];
  v18 = [v16 constraintWithItem:v17 attribute:10 relatedBy:0 toItem:*(*(a1 + 32) + 1080) attribute:10 multiplier:1.0 constant:0.0];
  [v15 addConstraint:v18];

  v19 = [*(a1 + 32) view];
  [v19 bringSubviewToFront:*(*(a1 + 32) + 1080)];

  return [*(*(a1 + 32) + 1080) beginShowingProgressWithDelay:1 animated:0.6];
}

- (void)hideSaveEditProgressIndicator
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __53__QLItemViewController_hideSaveEditProgressIndicator__block_invoke;
  v2[3] = &unk_279AE1158;
  v2[4] = self;
  QLRunInMainThread(v2);
}

void __53__QLItemViewController_hideSaveEditProgressIndicator__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1080) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1080);
  *(v2 + 1080) = 0;
}

- (OS_dispatch_queue)saveEditsQueue
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_saveEditsQueue)
  {
    v3 = dispatch_queue_create("com.apple.quicklook.editing.saveEditsQueue", 0);
    saveEditsQueue = v2->_saveEditsQueue;
    v2->_saveEditsQueue = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_saveEditsQueue;

  return v5;
}

- (void)didStartSavingEdits
{
  self->_isSavingEdits = 1;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __43__QLItemViewController_didStartSavingEdits__block_invoke;
  v2[3] = &unk_279AE1158;
  v2[4] = self;
  QLRunInMainThread(v2);
}

- (void)didFinishSavingEdits
{
  self->_isSavingEdits = 0;
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44__QLItemViewController_didFinishSavingEdits__block_invoke;
  v2[3] = &unk_279AE1158;
  v2[4] = self;
  QLRunInMainThread(v2);
}

- (void)updateInterfaceForSavingEdits
{
  v2 = [(QLItemViewController *)self view];
  [v2 setUserInteractionEnabled:0];
}

- (void)updateInterfaceAfterSavingEdits
{
  v2 = [(QLItemViewController *)self view];
  [v2 setUserInteractionEnabled:1];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = QLItemViewController;
  v4 = [(QLItemViewController *)&v8 description];
  v5 = [(QLItemViewController *)self additionalItemViewControllerDescription];
  v6 = [v3 stringWithFormat:@"%@ {\n%@\n}", v4, v5];

  return v6;
}

- (id)additionalItemViewControllerDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(QLItemViewController *)self contents];
  v4 = [v2 stringWithFormat:@"\tContents: %@", v3];

  return v4;
}

- (QLPreviewItemViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (QLItemViewControllerPresentingDelegate)presentingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingDelegate);

  return WeakRetained;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end