@interface STSSuggestionViewController
- (STSSuggestionViewController)init;
- (STSSuggestionViewControllerDelegate)selectionDelegate;
- (UIEdgeInsets)contentInset;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_hideNoticeOverlay;
- (void)_updateFooterOrigin;
- (void)_updateFooterOriginForBoundsHeight:(double)height;
- (void)clearSuggestions;
- (void)searchModelUpdatedQuerySuggestions:(id)suggestions;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)suggestionViewDidTapLogo:(id)logo;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateContentOffset:(double)offset;
- (void)updateQuerySuggestions:(id)suggestions;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation STSSuggestionViewController

- (STSSuggestionViewController)init
{
  v9.receiver = self;
  v9.super_class = STSSuggestionViewController;
  v2 = [(STSSuggestionViewController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(STSSuggestionView);
    [(STSSuggestionView *)v3 setDelegate:v2];
    tableView = [(STSSuggestionView *)v3 tableView];
    [tableView setDataSource:v2];

    tableView2 = [(STSSuggestionView *)v3 tableView];
    [tableView2 setDelegate:v2];

    tableView3 = [(STSSuggestionView *)v3 tableView];
    [tableView3 registerClass:objc_opt_class() forCellReuseIdentifier:@"SuggestionCell"];

    tableView4 = [(STSSuggestionView *)v3 tableView];
    [tableView4 setSeparatorStyle:1];

    [(STSSuggestionViewController *)v2 setView:v3];
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  view = [(STSSuggestionViewController *)self view];
  v3 = +[STSImageCache sharedCache];
  searchProviderImage = [v3 searchProviderImage];
  [view updateFooterImage:searchProviderImage];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  coordinatorCopy = coordinator;
  [(STSSuggestionViewController *)self _updateFooterOriginForBoundsHeight:height];
  [coordinatorCopy animateAlongsideTransition:0 completion:0];
  v8.receiver = self;
  v8.super_class = STSSuggestionViewController;
  [(STSSuggestionViewController *)&v8 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (UIEdgeInsets)contentInset
{
  view = [(STSSuggestionViewController *)self view];
  [view contentInset];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  view = [(STSSuggestionViewController *)self view];
  [view setContentInset:{top, left, bottom, right}];

  [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  [(STSSuggestionViewController *)self _updateFooterOrigin];
  v9 = MEMORY[0x277D75D18];

  [v9 setAnimationsEnabled:1];
}

- (void)updateContentOffset:(double)offset
{
  view = [(STSSuggestionViewController *)self view];
  tableView = [view tableView];
  view2 = [(STSSuggestionViewController *)self view];
  tableView2 = [view2 tableView];
  [tableView2 contentInset];
  [tableView setContentOffset:{-v8, offset}];
}

- (void)clearSuggestions
{
  [(STSSearchModel *)self->_searchModel removeQuerySuggestions];
  view = [(STSSuggestionViewController *)self view];
  tableView = [view tableView];
  [tableView reloadData];

  [(STSSuggestionViewController *)self _updateFooterOrigin];
}

- (void)updateQuerySuggestions:(id)suggestions
{
  [(STSSearchModel *)self->_searchModel setQuerySuggestions:suggestions];
  view = [(STSSuggestionViewController *)self view];
  tableView = [view tableView];
  [tableView reloadData];

  [(STSSuggestionViewController *)self _updateFooterOrigin];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(STSSearchModel *)self->_searchModel querySuggestions:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"SuggestionCell" forIndexPath:pathCopy];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:clearColor];

  textLabel = [v7 textLabel];
  querySuggestions = [(STSSearchModel *)self->_searchModel querySuggestions];
  v11 = [pathCopy row];

  v12 = [querySuggestions objectAtIndex:v11];
  suggestion = [v12 suggestion];
  [textLabel setText:suggestion];

  textLabel2 = [v7 textLabel];
  systemPinkColor = [MEMORY[0x277D75348] systemPinkColor];
  [textLabel2 setTextColor:systemPinkColor];

  textLabel3 = [v7 textLabel];
  v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [textLabel3 setFont:v17];

  v18 = _UIImageGetSearchGlass();
  v19 = MEMORY[0x277D755B8];
  [v18 size];
  v21 = v20;
  v23 = v22;
  sts_magnifyingGlassGrayTintColor = [MEMORY[0x277D75348] sts_magnifyingGlassGrayTintColor];
  v25 = _UIImageGetSearchGlass();
  v26 = [v19 _tintedImageForSize:sts_magnifyingGlassGrayTintColor withTint:0 effectsImage:v25 maskImage:0 style:{v21, v23}];

  imageView = [v7 imageView];
  [imageView setImage:v26];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  selectionDelegate = [(STSSuggestionViewController *)self selectionDelegate];
  v6 = [pathCopy row];

  [selectionDelegate suggestionViewController:self didSelectSuggestionAtIndex:v6];
}

- (void)searchModelUpdatedQuerySuggestions:(id)suggestions
{
  view = [(STSSuggestionViewController *)self view];
  tableView = [view tableView];
  [tableView reloadData];

  [(STSSuggestionViewController *)self _updateFooterOrigin];
}

- (void)suggestionViewDidTapLogo:(id)logo
{
  selectionDelegate = [(STSSuggestionViewController *)self selectionDelegate];
  [selectionDelegate suggestionViewControllerDidTapLogo:self];
}

- (void)_hideNoticeOverlay
{
  view = [(STSSuggestionViewController *)self view];
  [view setOverlayView:0 animated:1];
}

- (void)_updateFooterOrigin
{
  view = [(STSSuggestionViewController *)self view];
  [view bounds];
  [(STSSuggestionViewController *)self _updateFooterOriginForBoundsHeight:CGRectGetHeight(v5)];
}

- (void)_updateFooterOriginForBoundsHeight:(double)height
{
  view = [(STSSuggestionViewController *)self view];
  readableContentGuide = [view readableContentGuide];
  [readableContentGuide layoutFrame];
  MinX = CGRectGetMinX(v55);
  view2 = [(STSSuggestionViewController *)self view];
  [view2 footerSize];
  v9 = 20.0;
  v11 = v10 + 20.0 + 10.0;

  if (MinX >= v11)
  {
    [(STSSuggestionViewController *)self contentInset];
    v42 = height - v41;
    view3 = [(STSSuggestionViewController *)self view];
    [view3 footerSize];
    v45 = v42 - v44;

    v20 = 1;
  }

  else
  {
    querySuggestions = [(STSSearchModel *)self->_searchModel querySuggestions];
    v13 = [querySuggestions count];

    if (v13)
    {
      v14 = MEMORY[0x277CCAA70];
      querySuggestions2 = [(STSSearchModel *)self->_searchModel querySuggestions];
      v16 = [v14 indexPathForRow:objc_msgSend(querySuggestions2 inSection:{"count") - 1, 0}];

      view4 = [(STSSuggestionViewController *)self view];
      tableView = [view4 tableView];
      v19 = [tableView cellForRowAtIndexPath:v16];

      v20 = v19 != 0;
      MaxY = height;
      if (v19)
      {
        view5 = [(STSSuggestionViewController *)self view];
        [v19 frame];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        view6 = [(STSSuggestionViewController *)self view];
        tableView2 = [view6 tableView];
        [view5 convertRect:tableView2 fromView:{v24, v26, v28, v30}];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v56.origin.x = v34;
        v56.origin.y = v36;
        v56.size.width = v38;
        v56.size.height = v40;
        MaxY = CGRectGetMaxY(v56);
      }
    }

    else
    {
      v20 = 0;
      MaxY = height;
    }

    view7 = [(STSSuggestionViewController *)self view];
    readableContentGuide2 = [view7 readableContentGuide];
    [readableContentGuide2 layoutFrame];
    v9 = CGRectGetMinX(v57);

    [(STSSuggestionViewController *)self contentInset];
    v49 = height - v48;
    view8 = [(STSSuggestionViewController *)self view];
    [view8 footerSize];
    v45 = v49 - v51;

    if (MaxY >= v45)
    {
      v45 = MaxY;
    }
  }

  view9 = [(STSSuggestionViewController *)self view];
  [view9 setFooterOffset:{v9, v45}];

  view10 = [(STSSuggestionViewController *)self view];
  [view10 setShowingFooter:v20];
}

- (STSSuggestionViewControllerDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

@end