@interface SearchUICardViewController
+ (void)_loadAndEnrichCardSectionsFromCard:(id)card withCompletionHandler:(id)handler;
- (BOOL)hasCustomViewControllersForCardSections;
- (BOOL)hasFocusableElementsInSnapshot:(id)snapshot;
- (BOOL)isInPreviewPlatter;
- (BOOL)rowSelectionAppearanceEnabled;
- (BOOL)scrollEnabled;
- (BOOL)shouldForceEnableThreeDTouch:(id)touch;
- (BOOL)shouldUseInsetRoundedSections;
- (BOOL)threeDTouchEnabled;
- (BOOL)topRowWillFillBackgroundWithContent;
- (CGSize)preferredContentSize;
- (SFCard)card;
- (SFFeedbackListener)feedbackListener;
- (SearchUICardViewController)initWithCard:(id)card feedbackListener:(id)listener;
- (SearchUICardViewDelegate)delegate;
- (SearchUICommandDelegate)commandDelegate;
- (UITextField)textField;
- (id)restorationContext;
- (id)scrollViewForPocketInteraction;
- (id)searchUIBackgroundColor;
- (id)viewContainingContent;
- (void)cardViewDidAppear;
- (void)contentSizeDidChange:(CGSize)change animated:(BOOL)animated;
- (void)displayLoadingViewAfterDelay:(double)delay;
- (void)prepareLoadingView;
- (void)scrollAndSelectLastSelectedIndexPath;
- (void)setCard:(id)card;
- (void)setCommandDelegate:(id)delegate;
- (void)setDelegate:(id)delegate;
- (void)setDisableLoadingView:(BOOL)view;
- (void)setFeedbackListener:(id)listener;
- (void)setFooterView:(id)view;
- (void)setInPreviewPlatter:(BOOL)platter;
- (void)setLoadingViewAlpha:(double)alpha;
- (void)setRestorationContext:(id)context;
- (void)setRowSelectionAppearanceEnabled:(BOOL)enabled;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)setShouldDrawBackgroundColor:(BOOL)color;
- (void)setShouldUseInsetRoundedSections:(BOOL)sections;
- (void)setTextField:(id)field;
- (void)setThreeDTouchEnabled:(BOOL)enabled;
- (void)updateBackgroundColor;
- (void)updateTimerAndCardSections:(id)sections;
- (void)updateWithCardSections:(id)sections;
@end

@implementation SearchUICardViewController

- (SearchUICardViewController)initWithCard:(id)card feedbackListener:(id)listener
{
  cardCopy = card;
  listenerCopy = listener;
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

    view = [(SearchUICardViewController *)v9 view];
    tableViewController = [(SearchUICardViewController *)v9 tableViewController];
    view2 = [tableViewController view];
    [view addSubview:view2];

    tableViewController2 = [(SearchUICardViewController *)v9 tableViewController];
    view3 = [tableViewController2 view];
    [SearchUIAutoLayout constrainViewToContainer:view3];

    tableViewController3 = [(SearchUICardViewController *)v9 tableViewController];
    [(SearchUICardViewController *)v9 addChildViewController:tableViewController3];

    v9->_shouldDrawBackgroundColor = 1;
    [(SearchUICardViewController *)v9 setCard:cardCopy];
    [(SearchUICardViewController *)v9 setFeedbackListener:listenerCopy];
    v18 = objc_alloc(MEMORY[0x1E69DC708]);
    v19 = [SearchUIUtilities localizedStringForKey:@"BACK_BUTTON_TITLE"];
    v20 = [v18 initWithTitle:v19 style:0 target:0 action:0];
    navigationItem = [(SearchUICardViewController *)v9 navigationItem];
    [navigationItem setBackBarButtonItem:v20];

    tableViewController4 = [(SearchUICardViewController *)v9 tableViewController];
    [tableViewController4 setSizingDelegate:v9];

    tableViewController5 = [(SearchUICardViewController *)v9 tableViewController];
    scrollViewForSizing = [tableViewController5 scrollViewForSizing];
    [(SearchUICardViewController *)v9 setContentScrollView:scrollViewForSizing forEdge:15];
  }

  return v9;
}

- (BOOL)shouldUseInsetRoundedSections
{
  view = [(SearchUICardViewController *)self view];
  shouldUseInsetRoundedSections = [view shouldUseInsetRoundedSections];

  return shouldUseInsetRoundedSections;
}

- (void)setShouldUseInsetRoundedSections:(BOOL)sections
{
  sectionsCopy = sections;
  view = [(SearchUICardViewController *)self view];
  [view setShouldUseInsetRoundedSections:sectionsCopy];

  tableViewController = [(SearchUICardViewController *)self tableViewController];
  [tableViewController setShouldUseInsetRoundedSections:sectionsCopy];
}

- (BOOL)rowSelectionAppearanceEnabled
{
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  rowSelectionAppearanceEnabled = [tableViewController rowSelectionAppearanceEnabled];

  return rowSelectionAppearanceEnabled;
}

- (void)setRowSelectionAppearanceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  [tableViewController setRowSelectionAppearanceEnabled:enabledCopy];
}

- (BOOL)isInPreviewPlatter
{
  view = [(SearchUICardViewController *)self view];
  isInPreviewPlatter = [view isInPreviewPlatter];

  return isInPreviewPlatter;
}

- (void)setInPreviewPlatter:(BOOL)platter
{
  platterCopy = platter;
  view = [(SearchUICardViewController *)self view];
  [view setInPreviewPlatter:platterCopy];

  tableViewController = [(SearchUICardViewController *)self tableViewController];
  [tableViewController setInPreviewPlatter:platterCopy];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  [tableViewController setCardViewDelegate:delegateCopy];

  if (delegateCopy)
  {
    delegate = [(SearchUICardViewController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      tableViewController2 = [(SearchUICardViewController *)self tableViewController];
      tableModel = [tableViewController2 tableModel];

      if (!tableModel)
      {
        return;
      }

      delegate = [(SearchUICardViewController *)self tableViewController];
      [delegate reloadViews];
    }
  }
}

- (SearchUICardViewDelegate)delegate
{
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  cardViewDelegate = [tableViewController cardViewDelegate];

  return cardViewDelegate;
}

- (void)setFeedbackListener:(id)listener
{
  listenerCopy = listener;
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  [tableViewController setFeedbackListener:listenerCopy];
}

- (SFFeedbackListener)feedbackListener
{
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  feedbackListener = [tableViewController feedbackListener];

  return feedbackListener;
}

- (void)setDisableLoadingView:(BOOL)view
{
  self->_disableLoadingView = view;
  if (view)
  {
    [(SearchUICardViewController *)self setLoadingViewAlpha:0.0];
  }
}

- (void)displayLoadingViewAfterDelay:(double)delay
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__SearchUICardViewController_displayLoadingViewAfterDelay___block_invoke;
  v5[3] = &unk_1E85B4768;
  v5[4] = self;
  v4 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:0 repeats:v5 block:delay];
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
    loadingView = [(SearchUICardViewController *)self loadingView];

    if (!loadingView)
    {
      v4 = objc_opt_new();
      [(SearchUICardViewController *)self setLoadingView:v4];

      view = [(SearchUICardViewController *)self view];
      loadingView2 = [(SearchUICardViewController *)self loadingView];
      [view addSubview:loadingView2];

      loadingView3 = [(SearchUICardViewController *)self loadingView];
      [SearchUIAutoLayout fillContainerWithView:loadingView3];
    }

    [(SearchUICardViewController *)self setLoadingViewAlpha:0.0];
    loadingView4 = [(SearchUICardViewController *)self loadingView];
    [loadingView4 setHidden:0];

    loadingView5 = [(SearchUICardViewController *)self loadingView];
    [loadingView5 setLoadingState:0];
  }
}

- (void)cardViewDidAppear
{
  feedbackListener = [(SearchUICardViewController *)self feedbackListener];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E69C9F20]);
    card = [(SearchUICardViewController *)self card];
    v8 = [v5 initWithCard:card];

    [v8 setLevel:{-[SearchUICardViewController level](self, "level")}];
    feedbackListener2 = [(SearchUICardViewController *)self feedbackListener];
    [feedbackListener2 cardViewDidAppear:v8];
  }
}

- (id)searchUIBackgroundColor
{
  card = [(SearchUICardViewController *)self card];
  backgroundColor = [card backgroundColor];

  return backgroundColor;
}

- (void)setShouldDrawBackgroundColor:(BOOL)color
{
  if (self->_shouldDrawBackgroundColor != color)
  {
    self->_shouldDrawBackgroundColor = color;
    [(SearchUICardViewController *)self updateBackgroundColor];
  }
}

- (void)updateBackgroundColor
{
  shouldDrawBackgroundColor = [(SearchUICardViewController *)self shouldDrawBackgroundColor];
  if (shouldDrawBackgroundColor)
  {
    searchUIBackgroundColor = [(SearchUICardViewController *)self searchUIBackgroundColor];
    if (searchUIBackgroundColor)
    {
      colorView = [(SearchUICardViewController *)self colorView];

      if (!colorView)
      {
        v6 = objc_opt_new();
        [(SearchUICardViewController *)self setColorView:v6];

        colorView2 = [(SearchUICardViewController *)self colorView];
        [colorView2 setDelegate:self];

        colorView3 = [(SearchUICardViewController *)self colorView];
        [colorView3 setShowsPlaceholderPlatterView:0];

        view = [(SearchUICardViewController *)self view];
        colorView4 = [(SearchUICardViewController *)self colorView];
        [view insertSubview:colorView4 atIndex:0];

        colorView5 = [(SearchUICardViewController *)self colorView];
        [SearchUIAutoLayout fillContainerWithView:colorView5];
      }
    }

    colorView6 = [(SearchUICardViewController *)self colorView];
    [colorView6 setColor:searchUIBackgroundColor];

    card = [(SearchUICardViewController *)self card];
    backgroundImage = [card backgroundImage];
    colorView7 = [(SearchUICardViewController *)self colorView];
    [colorView7 setBackgroundImage:backgroundImage];
  }

  colorView8 = [(SearchUICardViewController *)self colorView];
  [colorView8 setHidden:!shouldDrawBackgroundColor];
}

- (id)viewContainingContent
{
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  view = [tableViewController view];

  return view;
}

+ (void)_loadAndEnrichCardSectionsFromCard:(id)card withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__SearchUICardViewController__loadAndEnrichCardSectionsFromCard_withCompletionHandler___block_invoke;
  v7[3] = &unk_1E85B47B8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [card loadCardSectionsWithCompletionHandler:v7];
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

- (void)setCard:(id)card
{
  cardCopy = card;
  title = [cardCopy title];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v7 = [title stringByTrimmingCharactersInSet:whitespaceCharacterSet];
  [(SearchUICardViewController *)self setTitle:v7];

  tableViewController = [(SearchUICardViewController *)self tableViewController];
  [tableViewController setTableModel:0];

  tableViewController2 = [(SearchUICardViewController *)self tableViewController];
  [tableViewController2 setCard:cardCopy];

  tableViewController3 = [(SearchUICardViewController *)self tableViewController];
  view = [tableViewController3 view];
  [view setAlpha:0.0];

  [(SearchUICardViewController *)self setLoadingViewAlpha:0.0];
  colorView = [(SearchUICardViewController *)self colorView];
  [colorView setHidden:1];

  if (cardCopy)
  {
    [(SearchUICardViewController *)self displayLoadingViewAfterDelay:0.7];
    v13 = objc_opt_class();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __38__SearchUICardViewController_setCard___block_invoke;
    v14[3] = &unk_1E85B29E8;
    v15 = cardCopy;
    selfCopy = self;
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
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  card = [tableViewController card];

  return card;
}

- (void)updateTimerAndCardSections:(id)sections
{
  sectionsCopy = sections;
  loadingScreenTimer = [(SearchUICardViewController *)self loadingScreenTimer];
  if ([loadingScreenTimer isValid])
  {
    v5 = [sectionsCopy count];

    if (!v5)
    {
      [(SearchUICardViewController *)self prepareLoadingView];
    }
  }

  else
  {
  }

  loadingScreenTimer2 = [(SearchUICardViewController *)self loadingScreenTimer];
  [loadingScreenTimer2 invalidate];

  [(SearchUICardViewController *)self setLoadingScreenTimer:0];
  [(SearchUICardViewController *)self updateWithCardSections:sectionsCopy];
}

- (BOOL)hasCustomViewControllersForCardSections
{
  v17 = *MEMORY[0x1E69E9840];
  delegate = [(SearchUICardViewController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    delegate = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  card = [(SearchUICardViewController *)self card];
  cardSections = [card cardSections];

  v6 = [cardSections countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(cardSections);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [delegate customViewControllerForCardSection:v9];
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

      v6 = [cardSections countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)updateWithCardSections:(id)sections
{
  sectionsCopy = sections;
  card = [(SearchUICardViewController *)self card];
  v6 = +[SearchUITableModel tableModelWithCardSections:result:isInline:queryId:shouldCombine:](SearchUITableModel, "tableModelWithCardSections:result:isInline:queryId:shouldCombine:", sectionsCopy, 0, 0, [card queryId], -[SearchUICardViewController hasCustomViewControllersForCardSections](self, "hasCustomViewControllersForCardSections") ^ 1);

  loadingView = [(SearchUICardViewController *)self loadingView];
  [loadingView setLoadingState:1];

  v8 = [sectionsCopy count];
  if (v8)
  {
    tableViewController = [(SearchUICardViewController *)self tableViewController];
    [tableViewController setTableModel:v6];

    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32 = __53__SearchUICardViewController_updateWithCardSections___block_invoke;
    v33 = &unk_1E85B24C8;
    selfCopy = self;
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __53__SearchUICardViewController_updateWithCardSections___block_invoke_2;
    v28 = &unk_1E85B24C8;
    selfCopy2 = self;
    v10 = &v30;
    v11 = &v25;
  }

  else
  {
    selfCopy3 = self;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __53__SearchUICardViewController_updateWithCardSections___block_invoke_3;
    v23 = &unk_1E85B24C8;
    selfCopy4 = self;
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __53__SearchUICardViewController_updateWithCardSections___block_invoke_4;
    v18 = &unk_1E85B24C8;
    v10 = &v20;
    v11 = &v15;
  }

  [SearchUIUtilities performAnimatableChanges:v10 animated:1 completion:v11, v15, v16, v17, v18, selfCopy3, v20, v21, v22, v23, selfCopy4, v25, v26, v27, v28, selfCopy2, v30, v31, v32, v33, selfCopy];
  tableViewController2 = [(SearchUICardViewController *)self tableViewController];
  dataSource = [tableViewController2 dataSource];
  snapshot = [dataSource snapshot];
  [(SearchUICardViewController *)self setHasFocusableElements:[(SearchUICardViewController *)self hasFocusableElementsInSnapshot:snapshot]];
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

- (void)setLoadingViewAlpha:(double)alpha
{
  if ([(SearchUICardViewController *)self disableLoadingView])
  {
    alpha = 0.0;
  }

  loadingView = [(SearchUICardViewController *)self loadingView];
  [loadingView setAlpha:alpha];
}

- (BOOL)hasFocusableElementsInSnapshot:(id)snapshot
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  itemIdentifiers = [snapshot itemIdentifiers];
  v4 = [itemIdentifiers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(itemIdentifiers);
        }

        if ([*(*(&v8 + 1) + 8 * i) isFocusable])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [itemIdentifiers countByEnumeratingWithState:&v8 objects:v12 count:16];
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
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  tableModel = [tableViewController tableModel];
  v4 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
  v5 = [tableModel rowWillFillBackgroundWithContentAtIndexPath:v4];

  return v5;
}

- (void)setCommandDelegate:(id)delegate
{
  delegateCopy = delegate;
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  [tableViewController setCommandDelegate:delegateCopy];
}

- (SearchUICommandDelegate)commandDelegate
{
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  commandDelegate = [tableViewController commandDelegate];

  return commandDelegate;
}

- (void)setTextField:(id)field
{
  fieldCopy = field;
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  [tableViewController setTextField:fieldCopy];
}

- (UITextField)textField
{
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  textField = [tableViewController textField];

  return textField;
}

- (void)setScrollEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  scrollViewForSizing = [tableViewController scrollViewForSizing];
  [scrollViewForSizing setScrollEnabled:enabledCopy];

  tableViewController2 = [(SearchUICardViewController *)self tableViewController];
  scrollViewForSizing2 = [tableViewController2 scrollViewForSizing];
  [scrollViewForSizing2 _setSafeAreaInsetsFrozen:enabledCopy ^ 1];
}

- (BOOL)scrollEnabled
{
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  scrollViewForSizing = [tableViewController scrollViewForSizing];
  isScrollEnabled = [scrollViewForSizing isScrollEnabled];

  return isScrollEnabled;
}

- (BOOL)threeDTouchEnabled
{
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  threeDTouchEnabled = [tableViewController threeDTouchEnabled];

  return threeDTouchEnabled;
}

- (void)setThreeDTouchEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  card = [(SearchUICardViewController *)self card];
  v5 = [(SearchUICardViewController *)self shouldForceEnableThreeDTouch:card];
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  [tableViewController setThreeDTouchEnabled:v5 | enabledCopy];
}

- (void)contentSizeDidChange:(CGSize)change animated:(BOOL)animated
{
  height = change.height;
  width = change.width;
  delegate = [(SearchUICardViewController *)self delegate];
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
    animatedCopy = animated;
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
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  [tableViewController collectionViewContentSize];
  if (v5 == *MEMORY[0x1E695F060] && v4 == *(MEMORY[0x1E695F060] + 8))
  {
    view = [(SearchUICardViewController *)self view];
    [view frame];
    v9 = v13;
    v11 = 44.0;
  }

  else
  {
    tableViewController2 = [(SearchUICardViewController *)self tableViewController];
    [tableViewController2 collectionViewContentSize];
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

- (void)setFooterView:(id)view
{
  viewCopy = view;
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    tableViewController2 = [(SearchUICardViewController *)self tableViewController];
    [tableViewController2 setFooterView:viewCopy];
  }
}

- (void)scrollAndSelectLastSelectedIndexPath
{
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  [tableViewController scrollAndSelectLastSelectedIndexPath];
}

- (void)setRestorationContext:(id)context
{
  contextCopy = context;
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  [tableViewController setRestorationContext:contextCopy];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    card = [contextCopy card];
    [(SearchUICardViewController *)self setCard:card];

    -[SearchUICardViewController setLevel:](self, "setLevel:", [contextCopy level]);
    card2 = [contextCopy card];

    if (card2)
    {
      loadingView = [(SearchUICardViewController *)self loadingView];
      [loadingView removeFromSuperview];
    }
  }
}

- (id)restorationContext
{
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  restorationContext = [tableViewController restorationContext];

  [restorationContext setLevel:{-[SearchUICardViewController level](self, "level")}];
  card = [(SearchUICardViewController *)self card];
  [restorationContext setCard:card];

  return restorationContext;
}

- (BOOL)shouldForceEnableThreeDTouch:(id)touch
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  cardSections = [touch cardSections];
  v4 = [cardSections countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          objc_enumerationMutation(cardSections);
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
          cardSections2 = [v9 cardSections];
          v11 = [cardSections2 countByEnumeratingWithState:&v17 objects:v25 count:16];
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
                  objc_enumerationMutation(cardSections2);
                }

                if ([*(*(&v17 + 1) + 8 * j) forceEnable3DTouch])
                {

                  goto LABEL_21;
                }
              }

              v12 = [cardSections2 countByEnumeratingWithState:&v17 objects:v25 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }
        }
      }

      v5 = [cardSections countByEnumeratingWithState:&v21 objects:v26 count:16];
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
  tableViewController = [(SearchUICardViewController *)self tableViewController];
  scrollViewForPocketInteraction = [tableViewController scrollViewForPocketInteraction];

  return scrollViewForPocketInteraction;
}

@end