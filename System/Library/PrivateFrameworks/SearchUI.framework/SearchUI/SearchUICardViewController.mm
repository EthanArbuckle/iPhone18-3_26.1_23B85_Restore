@interface SearchUICardViewController
+ (void)_loadAndEnrichCardSectionsFromCard:(id)a3 withCompletionHandler:(id)a4;
- (BOOL)hasCustomViewControllersForCardSections;
- (BOOL)hasFocusableElementsInSnapshot:(id)a3;
- (BOOL)isInPreviewPlatter;
- (BOOL)rowSelectionAppearanceEnabled;
- (BOOL)scrollEnabled;
- (BOOL)shouldForceEnableThreeDTouch:(id)a3;
- (BOOL)shouldUseInsetRoundedSections;
- (BOOL)threeDTouchEnabled;
- (BOOL)topRowWillFillBackgroundWithContent;
- (CGSize)preferredContentSize;
- (SFCard)card;
- (SFFeedbackListener)feedbackListener;
- (SearchUICardViewController)initWithCard:(id)a3 feedbackListener:(id)a4;
- (SearchUICardViewDelegate)delegate;
- (SearchUICommandDelegate)commandDelegate;
- (UITextField)textField;
- (id)restorationContext;
- (id)scrollViewForPocketInteraction;
- (id)searchUIBackgroundColor;
- (id)viewContainingContent;
- (void)cardViewDidAppear;
- (void)contentSizeDidChange:(CGSize)a3 animated:(BOOL)a4;
- (void)displayLoadingViewAfterDelay:(double)a3;
- (void)prepareLoadingView;
- (void)scrollAndSelectLastSelectedIndexPath;
- (void)setCard:(id)a3;
- (void)setCommandDelegate:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDisableLoadingView:(BOOL)a3;
- (void)setFeedbackListener:(id)a3;
- (void)setFooterView:(id)a3;
- (void)setInPreviewPlatter:(BOOL)a3;
- (void)setLoadingViewAlpha:(double)a3;
- (void)setRestorationContext:(id)a3;
- (void)setRowSelectionAppearanceEnabled:(BOOL)a3;
- (void)setScrollEnabled:(BOOL)a3;
- (void)setShouldDrawBackgroundColor:(BOOL)a3;
- (void)setShouldUseInsetRoundedSections:(BOOL)a3;
- (void)setTextField:(id)a3;
- (void)setThreeDTouchEnabled:(BOOL)a3;
- (void)updateBackgroundColor;
- (void)updateTimerAndCardSections:(id)a3;
- (void)updateWithCardSections:(id)a3;
@end

@implementation SearchUICardViewController

- (SearchUICardViewController)initWithCard:(id)a3 feedbackListener:(id)a4
{
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = SearchUICardViewController;
  v8 = [(SearchUICardViewController *)&v26 init];
  v9 = v8;
  if (v8)
  {
    [(SearchUICardViewController *)v8 setLevel:1];
    v10 = objc_opt_new();
    [(SearchUICardViewController *)v9 setView:v10];

    v11 = objc_opt_new();
    [(SearchUICardViewController *)v9 setTableViewController:v11];

    v12 = [(SearchUICardViewController *)v9 view];
    v13 = [(SearchUICardViewController *)v9 tableViewController];
    v14 = [v13 view];
    [v12 addSubview:v14];

    v15 = [(SearchUICardViewController *)v9 tableViewController];
    v16 = [v15 view];
    [SearchUIAutoLayout constrainViewToContainer:v16];

    v17 = [(SearchUICardViewController *)v9 tableViewController];
    [(SearchUICardViewController *)v9 addChildViewController:v17];

    v9->_shouldDrawBackgroundColor = 1;
    [(SearchUICardViewController *)v9 setCard:v6];
    [(SearchUICardViewController *)v9 setFeedbackListener:v7];
    v18 = objc_alloc(MEMORY[0x1E69DC708]);
    v19 = [SearchUIUtilities localizedStringForKey:@"BACK_BUTTON_TITLE"];
    v20 = [v18 initWithTitle:v19 style:0 target:0 action:0];
    v21 = [(SearchUICardViewController *)v9 navigationItem];
    [v21 setBackBarButtonItem:v20];

    v22 = [(SearchUICardViewController *)v9 tableViewController];
    [v22 setSizingDelegate:v9];

    v23 = [(SearchUICardViewController *)v9 tableViewController];
    v24 = [v23 scrollViewForSizing];
    [(SearchUICardViewController *)v9 setContentScrollView:v24 forEdge:15];
  }

  return v9;
}

- (BOOL)shouldUseInsetRoundedSections
{
  v2 = [(SearchUICardViewController *)self view];
  v3 = [v2 shouldUseInsetRoundedSections];

  return v3;
}

- (void)setShouldUseInsetRoundedSections:(BOOL)a3
{
  v3 = a3;
  v5 = [(SearchUICardViewController *)self view];
  [v5 setShouldUseInsetRoundedSections:v3];

  v6 = [(SearchUICardViewController *)self tableViewController];
  [v6 setShouldUseInsetRoundedSections:v3];
}

- (BOOL)rowSelectionAppearanceEnabled
{
  v2 = [(SearchUICardViewController *)self tableViewController];
  v3 = [v2 rowSelectionAppearanceEnabled];

  return v3;
}

- (void)setRowSelectionAppearanceEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = [(SearchUICardViewController *)self tableViewController];
  [v4 setRowSelectionAppearanceEnabled:v3];
}

- (BOOL)isInPreviewPlatter
{
  v2 = [(SearchUICardViewController *)self view];
  v3 = [v2 isInPreviewPlatter];

  return v3;
}

- (void)setInPreviewPlatter:(BOOL)a3
{
  v3 = a3;
  v5 = [(SearchUICardViewController *)self view];
  [v5 setInPreviewPlatter:v3];

  v6 = [(SearchUICardViewController *)self tableViewController];
  [v6 setInPreviewPlatter:v3];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICardViewController *)self tableViewController];
  [v5 setCardViewDelegate:v4];

  if (v4)
  {
    v8 = [(SearchUICardViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [(SearchUICardViewController *)self tableViewController];
      v7 = [v6 tableModel];

      if (!v7)
      {
        return;
      }

      v8 = [(SearchUICardViewController *)self tableViewController];
      [v8 reloadViews];
    }
  }
}

- (SearchUICardViewDelegate)delegate
{
  v2 = [(SearchUICardViewController *)self tableViewController];
  v3 = [v2 cardViewDelegate];

  return v3;
}

- (void)setFeedbackListener:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICardViewController *)self tableViewController];
  [v5 setFeedbackListener:v4];
}

- (SFFeedbackListener)feedbackListener
{
  v2 = [(SearchUICardViewController *)self tableViewController];
  v3 = [v2 feedbackListener];

  return v3;
}

- (void)setDisableLoadingView:(BOOL)a3
{
  self->_disableLoadingView = a3;
  if (a3)
  {
    [(SearchUICardViewController *)self setLoadingViewAlpha:0.0];
  }
}

- (void)displayLoadingViewAfterDelay:(double)a3
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__SearchUICardViewController_displayLoadingViewAfterDelay___block_invoke;
  v5[3] = &unk_1E85B4768;
  v5[4] = self;
  v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v5 block:a3];
  [(SearchUICardViewController *)self setLoadingScreenTimer:v4];
}

uint64_t __59__SearchUICardViewController_displayLoadingViewAfterDelay___block_invoke(uint64_t a1)
{
  [*(a1 + 32) prepareLoadingView];
  [*(a1 + 32) setLoadingViewAlpha:0.0];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__SearchUICardViewController_displayLoadingViewAfterDelay___block_invoke_2;
  v3[3] = &unk_1E85B24C8;
  v3[4] = *(a1 + 32);
  return [SearchUIUtilities performAnimatableChanges:v3 animated:1];
}

- (void)prepareLoadingView
{
  if (![(SearchUICardViewController *)self disableLoadingView])
  {
    v3 = [(SearchUICardViewController *)self loadingView];

    if (!v3)
    {
      v4 = objc_opt_new();
      [(SearchUICardViewController *)self setLoadingView:v4];

      v5 = [(SearchUICardViewController *)self view];
      v6 = [(SearchUICardViewController *)self loadingView];
      [v5 addSubview:v6];

      v7 = [(SearchUICardViewController *)self loadingView];
      [SearchUIAutoLayout fillContainerWithView:v7];
    }

    [(SearchUICardViewController *)self setLoadingViewAlpha:0.0];
    v8 = [(SearchUICardViewController *)self loadingView];
    [v8 setHidden:0];

    v9 = [(SearchUICardViewController *)self loadingView];
    [v9 setLoadingState:0];
  }
}

- (void)cardViewDidAppear
{
  v3 = [(SearchUICardViewController *)self feedbackListener];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69C9F20]);
    v6 = [(SearchUICardViewController *)self card];
    v8 = [v5 initWithCard:v6];

    [v8 setLevel:{-[SearchUICardViewController level](self, "level")}];
    v7 = [(SearchUICardViewController *)self feedbackListener];
    [v7 cardViewDidAppear:v8];
  }
}

- (id)searchUIBackgroundColor
{
  v2 = [(SearchUICardViewController *)self card];
  v3 = [v2 backgroundColor];

  return v3;
}

- (void)setShouldDrawBackgroundColor:(BOOL)a3
{
  if (self->_shouldDrawBackgroundColor != a3)
  {
    self->_shouldDrawBackgroundColor = a3;
    [(SearchUICardViewController *)self updateBackgroundColor];
  }
}

- (void)updateBackgroundColor
{
  v3 = [(SearchUICardViewController *)self shouldDrawBackgroundColor];
  if (v3)
  {
    v4 = [(SearchUICardViewController *)self searchUIBackgroundColor];
    if (v4)
    {
      v5 = [(SearchUICardViewController *)self colorView];

      if (!v5)
      {
        v6 = objc_opt_new();
        [(SearchUICardViewController *)self setColorView:v6];

        v7 = [(SearchUICardViewController *)self colorView];
        [v7 setDelegate:self];

        v8 = [(SearchUICardViewController *)self colorView];
        [v8 setShowsPlaceholderPlatterView:0];

        v9 = [(SearchUICardViewController *)self view];
        v10 = [(SearchUICardViewController *)self colorView];
        [v9 insertSubview:v10 atIndex:0];

        v11 = [(SearchUICardViewController *)self colorView];
        [SearchUIAutoLayout fillContainerWithView:v11];
      }
    }

    v12 = [(SearchUICardViewController *)self colorView];
    [v12 setColor:v4];

    v13 = [(SearchUICardViewController *)self card];
    v14 = [v13 backgroundImage];
    v15 = [(SearchUICardViewController *)self colorView];
    [v15 setBackgroundImage:v14];
  }

  v16 = [(SearchUICardViewController *)self colorView];
  [v16 setHidden:!v3];
}

- (id)viewContainingContent
{
  v2 = [(SearchUICardViewController *)self tableViewController];
  v3 = [v2 view];

  return v3;
}

+ (void)_loadAndEnrichCardSectionsFromCard:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__SearchUICardViewController__loadAndEnrichCardSectionsFromCard_withCompletionHandler___block_invoke;
  v7[3] = &unk_1E85B47B8;
  v8 = v5;
  v6 = v5;
  [a3 loadCardSectionsWithCompletionHandler:v7];
}

void __87__SearchUICardViewController__loadAndEnrichCardSectionsFromCard_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 firstObject];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __87__SearchUICardViewController__loadAndEnrichCardSectionsFromCard_withCompletionHandler___block_invoke_2;
    v7[3] = &unk_1E85B4790;
    v9 = *(a1 + 32);
    v8 = v3;
    [SearchUIFlightCardSectionView getAdditionalCardSectionsForFlightCardSection:v6 completionHandler:v7];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __87__SearchUICardViewController__loadAndEnrichCardSectionsFromCard_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) arrayByAddingObjectsFromArray:a2];
  (*(v2 + 16))(v2, v3);
}

- (void)setCard:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];
  [(SearchUICardViewController *)self setTitle:v7];

  v8 = [(SearchUICardViewController *)self tableViewController];
  [v8 setTableModel:0];

  v9 = [(SearchUICardViewController *)self tableViewController];
  [v9 setCard:v4];

  v10 = [(SearchUICardViewController *)self tableViewController];
  v11 = [v10 view];
  [v11 setAlpha:0.0];

  [(SearchUICardViewController *)self setLoadingViewAlpha:0.0];
  v12 = [(SearchUICardViewController *)self colorView];
  [v12 setHidden:1];

  if (v4)
  {
    [(SearchUICardViewController *)self displayLoadingViewAfterDelay:0.7];
    v13 = objc_opt_class();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __38__SearchUICardViewController_setCard___block_invoke;
    v14[3] = &unk_1E85B29E8;
    v15 = v4;
    v16 = self;
    [v13 _loadAndEnrichCardSectionsFromCard:v15 withCompletionHandler:v14];
  }

  else
  {
    [(SearchUICardViewController *)self prepareLoadingView];
    [(SearchUICardViewController *)self updateWithCardSections:0];
  }
}

void __38__SearchUICardViewController_setCard___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__SearchUICardViewController_setCard___block_invoke_2;
  v7[3] = &unk_1E85B26A8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v4;
  v9 = v5;
  v10 = v3;
  v6 = v3;
  [SearchUIUtilities dispatchMainIfNecessary:v7];
}

void __38__SearchUICardViewController_setCard___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) card];

  if (v2 == v3)
  {
    [*(a1 + 40) updateBackgroundColor];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 updateTimerAndCardSections:v5];
  }
}

- (SFCard)card
{
  v2 = [(SearchUICardViewController *)self tableViewController];
  v3 = [v2 card];

  return v3;
}

- (void)updateTimerAndCardSections:(id)a3
{
  v7 = a3;
  v4 = [(SearchUICardViewController *)self loadingScreenTimer];
  if ([v4 isValid])
  {
    v5 = [v7 count];

    if (!v5)
    {
      [(SearchUICardViewController *)self prepareLoadingView];
    }
  }

  else
  {
  }

  v6 = [(SearchUICardViewController *)self loadingScreenTimer];
  [v6 invalidate];

  [(SearchUICardViewController *)self setLoadingScreenTimer:0];
  [(SearchUICardViewController *)self updateWithCardSections:v7];
}

- (BOOL)hasCustomViewControllersForCardSections
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(SearchUICardViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    v3 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(SearchUICardViewController *)self card];
  v5 = [v4 cardSections];

  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v3 customViewControllerForCardSection:v9];
        if (v10)
        {

LABEL_15:
          LOBYTE(v6) = 1;
          goto LABEL_16;
        }

        if (![SearchUICardSectionCreator viewClassForCardSection:v9 horizontal:0]&& ![SnippetUIUtilities supportsConfigurationForCardSection:v9])
        {
          goto LABEL_15;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  return v6;
}

- (void)updateWithCardSections:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICardViewController *)self card];
  v6 = +[SearchUITableModel tableModelWithCardSections:result:isInline:queryId:shouldCombine:](SearchUITableModel, "tableModelWithCardSections:result:isInline:queryId:shouldCombine:", v4, 0, 0, [v5 queryId], -[SearchUICardViewController hasCustomViewControllersForCardSections](self, "hasCustomViewControllersForCardSections") ^ 1);

  v7 = [(SearchUICardViewController *)self loadingView];
  [v7 setLoadingState:1];

  v8 = [v4 count];
  if (v8)
  {
    v9 = [(SearchUICardViewController *)self tableViewController];
    [v9 setTableModel:v6];

    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __53__SearchUICardViewController_updateWithCardSections___block_invoke;
    v33 = &unk_1E85B24C8;
    v34 = self;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __53__SearchUICardViewController_updateWithCardSections___block_invoke_2;
    v28 = &unk_1E85B24C8;
    v29 = self;
    v10 = &v30;
    v11 = &v25;
  }

  else
  {
    v19 = self;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __53__SearchUICardViewController_updateWithCardSections___block_invoke_3;
    v23 = &unk_1E85B24C8;
    v24 = self;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __53__SearchUICardViewController_updateWithCardSections___block_invoke_4;
    v18 = &unk_1E85B24C8;
    v10 = &v20;
    v11 = &v15;
  }

  [SearchUIUtilities performAnimatableChanges:v10 animated:1 completion:v11, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34];
  v12 = [(SearchUICardViewController *)self tableViewController];
  v13 = [v12 dataSource];
  v14 = [v13 snapshot];
  [(SearchUICardViewController *)self setHasFocusableElements:[(SearchUICardViewController *)self hasFocusableElementsInSnapshot:v14]];
}

void __53__SearchUICardViewController_updateWithCardSections___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setLoadingViewAlpha:0.0];
  v3 = [*(a1 + 32) tableViewController];
  v2 = [v3 view];
  [v2 setAlpha:1.0];
}

uint64_t __53__SearchUICardViewController_updateWithCardSections___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingView];
  [v2 setHidden:1];

  v3 = *(a1 + 32);

  return [v3 cardViewDidAppear];
}

uint64_t __53__SearchUICardViewController_updateWithCardSections___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) loadingView];
  [v2 setLoadingState:2];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__SearchUICardViewController_updateWithCardSections___block_invoke_5;
  v4[3] = &unk_1E85B24C8;
  v4[4] = *(a1 + 32);
  return [SearchUIUtilities performAnimatableChanges:v4];
}

- (void)setLoadingViewAlpha:(double)a3
{
  if ([(SearchUICardViewController *)self disableLoadingView])
  {
    a3 = 0.0;
  }

  v5 = [(SearchUICardViewController *)self loadingView];
  [v5 setAlpha:a3];
}

- (BOOL)hasFocusableElementsInSnapshot:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [a3 itemIdentifiers];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v8 + 1) + 8 * i) isFocusable])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (BOOL)topRowWillFillBackgroundWithContent
{
  v2 = [(SearchUICardViewController *)self tableViewController];
  v3 = [v2 tableModel];
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v5 = [v3 rowWillFillBackgroundWithContentAtIndexPath:v4];

  return v5;
}

- (void)setCommandDelegate:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICardViewController *)self tableViewController];
  [v5 setCommandDelegate:v4];
}

- (SearchUICommandDelegate)commandDelegate
{
  v2 = [(SearchUICardViewController *)self tableViewController];
  v3 = [v2 commandDelegate];

  return v3;
}

- (void)setTextField:(id)a3
{
  v4 = a3;
  v5 = [(SearchUICardViewController *)self tableViewController];
  [v5 setTextField:v4];
}

- (UITextField)textField
{
  v2 = [(SearchUICardViewController *)self tableViewController];
  v3 = [v2 textField];

  return v3;
}

- (void)setScrollEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(SearchUICardViewController *)self tableViewController];
  v6 = [v5 scrollViewForSizing];
  [v6 setScrollEnabled:v3];

  v8 = [(SearchUICardViewController *)self tableViewController];
  v7 = [v8 scrollViewForSizing];
  [v7 _setSafeAreaInsetsFrozen:v3 ^ 1];
}

- (BOOL)scrollEnabled
{
  v2 = [(SearchUICardViewController *)self tableViewController];
  v3 = [v2 scrollViewForSizing];
  v4 = [v3 isScrollEnabled];

  return v4;
}

- (BOOL)threeDTouchEnabled
{
  v2 = [(SearchUICardViewController *)self tableViewController];
  v3 = [v2 threeDTouchEnabled];

  return v3;
}

- (void)setThreeDTouchEnabled:(BOOL)a3
{
  v3 = a3;
  v7 = [(SearchUICardViewController *)self card];
  v5 = [(SearchUICardViewController *)self shouldForceEnableThreeDTouch:v7];
  v6 = [(SearchUICardViewController *)self tableViewController];
  [v6 setThreeDTouchEnabled:v5 | v3];
}

- (void)contentSizeDidChange:(CGSize)a3 animated:(BOOL)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(SearchUICardViewController *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if ((v9 & 1) != 0 && height != 0.0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__SearchUICardViewController_contentSizeDidChange_animated___block_invoke;
    block[3] = &unk_1E85B2988;
    block[4] = self;
    *&block[5] = width;
    *&block[6] = height;
    v12 = a4;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if ([(SearchUICardViewController *)self isInPreviewPlatter])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__SearchUICardViewController_contentSizeDidChange_animated___block_invoke_2;
    v10[3] = &unk_1E85B47E0;
    v10[4] = self;
    *&v10[5] = width;
    *&v10[6] = height;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void __60__SearchUICardViewController_contentSizeDidChange_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 cardViewController:*(a1 + 32) preferredContentSizeDidChange:*(a1 + 56) animated:{*(a1 + 40), *(a1 + 48)}];
}

uint64_t __60__SearchUICardViewController_contentSizeDidChange_animated___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __60__SearchUICardViewController_contentSizeDidChange_animated___block_invoke_3;
  v2[3] = &unk_1E85B47E0;
  v2[4] = *(a1 + 32);
  v3 = *(a1 + 40);
  return [SearchUIUtilities performAnimatableChanges:v2];
}

uint64_t __60__SearchUICardViewController_contentSizeDidChange_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) initialPreviewPlatterHeight];
  if (v2 == 0.0)
  {
    v3 = [*(a1 + 32) view];
    [v3 bounds];
    [*(a1 + 32) setInitialPreviewPlatterHeight:CGRectGetHeight(v9)];
  }

  [*(a1 + 32) initialPreviewPlatterHeight];
  v5 = *(a1 + 48);
  if (v4 < v5)
  {
    v5 = v4;
  }

  v6 = *(a1 + 32);

  return [v6 setPreferredContentSize:{0.0, v5}];
}

- (CGSize)preferredContentSize
{
  v3 = [(SearchUICardViewController *)self tableViewController];
  [v3 collectionViewContentSize];
  if (v5 == *MEMORY[0x1E695F060] && v4 == *(MEMORY[0x1E695F060] + 8))
  {
    v12 = [(SearchUICardViewController *)self view];
    [v12 frame];
    v9 = v13;
    v11 = 44.0;
  }

  else
  {
    v7 = [(SearchUICardViewController *)self tableViewController];
    [v7 collectionViewContentSize];
    v9 = v8;
    v11 = v10;

    if (v11 == 0.0 && [MEMORY[0x1E69D9240] isSiri])
    {
      v11 = 1.0;
    }
  }

  if ([(SearchUICardViewController *)self isInPreviewPlatter])
  {
    v18.receiver = self;
    v18.super_class = SearchUICardViewController;
    [(SearchUICardViewController *)&v18 preferredContentSize];
    v9 = v14;
    v11 = v15;
  }

  v16 = v9;
  v17 = v11;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)setFooterView:(id)a3
{
  v7 = a3;
  v4 = [(SearchUICardViewController *)self tableViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [(SearchUICardViewController *)self tableViewController];
    [v6 setFooterView:v7];
  }
}

- (void)scrollAndSelectLastSelectedIndexPath
{
  v2 = [(SearchUICardViewController *)self tableViewController];
  [v2 scrollAndSelectLastSelectedIndexPath];
}

- (void)setRestorationContext:(id)a3
{
  v8 = a3;
  v4 = [(SearchUICardViewController *)self tableViewController];
  [v4 setRestorationContext:v8];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v8 card];
    [(SearchUICardViewController *)self setCard:v5];

    -[SearchUICardViewController setLevel:](self, "setLevel:", [v8 level]);
    v6 = [v8 card];

    if (v6)
    {
      v7 = [(SearchUICardViewController *)self loadingView];
      [v7 removeFromSuperview];
    }
  }
}

- (id)restorationContext
{
  v3 = [(SearchUICardViewController *)self tableViewController];
  v4 = [v3 restorationContext];

  [v4 setLevel:{-[SearchUICardViewController level](self, "level")}];
  v5 = [(SearchUICardViewController *)self card];
  [v4 setCard:v5];

  return v4;
}

- (BOOL)shouldForceEnableThreeDTouch:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [a3 cardSections];
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        if ([v8 forceEnable3DTouch])
        {
LABEL_21:
          v15 = 1;
          goto LABEL_23;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v10 = [v9 cardSections];
          v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            while (2)
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                if ([*(*(&v17 + 1) + 8 * j) forceEnable3DTouch])
                {

                  goto LABEL_21;
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
      v15 = 0;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_23:

  return v15;
}

- (id)scrollViewForPocketInteraction
{
  v2 = [(SearchUICardViewController *)self tableViewController];
  v3 = [v2 scrollViewForPocketInteraction];

  return v3;
}

@end