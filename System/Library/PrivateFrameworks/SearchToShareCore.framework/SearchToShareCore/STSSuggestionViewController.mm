@interface STSSuggestionViewController
- (STSSuggestionViewController)init;
- (STSSuggestionViewControllerDelegate)selectionDelegate;
- (UIEdgeInsets)contentInset;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_hideNoticeOverlay;
- (void)_updateFooterOrigin;
- (void)_updateFooterOriginForBoundsHeight:(double)a3;
- (void)clearSuggestions;
- (void)searchModelUpdatedQuerySuggestions:(id)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)suggestionViewDidTapLogo:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateContentOffset:(double)a3;
- (void)updateQuerySuggestions:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
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
    v4 = [(STSSuggestionView *)v3 tableView];
    [v4 setDataSource:v2];

    v5 = [(STSSuggestionView *)v3 tableView];
    [v5 setDelegate:v2];

    v6 = [(STSSuggestionView *)v3 tableView];
    [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"SuggestionCell"];

    v7 = [(STSSuggestionView *)v3 tableView];
    [v7 setSeparatorStyle:1];

    [(STSSuggestionViewController *)v2 setView:v3];
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)a3
{
  v5 = [(STSSuggestionViewController *)self view];
  v3 = +[STSImageCache sharedCache];
  v4 = [v3 searchProviderImage];
  [v5 updateFooterImage:v4];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(STSSuggestionViewController *)self _updateFooterOriginForBoundsHeight:height];
  [v7 animateAlongsideTransition:0 completion:0];
  v8.receiver = self;
  v8.super_class = STSSuggestionViewController;
  [(STSSuggestionViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
}

- (UIEdgeInsets)contentInset
{
  v2 = [(STSSuggestionViewController *)self view];
  [v2 contentInset];
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

- (void)setContentInset:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = [(STSSuggestionViewController *)self view];
  [v8 setContentInset:{top, left, bottom, right}];

  [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  [(STSSuggestionViewController *)self _updateFooterOrigin];
  v9 = MEMORY[0x277D75D18];

  [v9 setAnimationsEnabled:1];
}

- (void)updateContentOffset:(double)a3
{
  v9 = [(STSSuggestionViewController *)self view];
  v5 = [v9 tableView];
  v6 = [(STSSuggestionViewController *)self view];
  v7 = [v6 tableView];
  [v7 contentInset];
  [v5 setContentOffset:{-v8, a3}];
}

- (void)clearSuggestions
{
  [(STSSearchModel *)self->_searchModel removeQuerySuggestions];
  v3 = [(STSSuggestionViewController *)self view];
  v4 = [v3 tableView];
  [v4 reloadData];

  [(STSSuggestionViewController *)self _updateFooterOrigin];
}

- (void)updateQuerySuggestions:(id)a3
{
  [(STSSearchModel *)self->_searchModel setQuerySuggestions:a3];
  v4 = [(STSSuggestionViewController *)self view];
  v5 = [v4 tableView];
  [v5 reloadData];

  [(STSSuggestionViewController *)self _updateFooterOrigin];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(STSSearchModel *)self->_searchModel querySuggestions:a3];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"SuggestionCell" forIndexPath:v6];
  v8 = [MEMORY[0x277D75348] clearColor];
  [v7 setBackgroundColor:v8];

  v9 = [v7 textLabel];
  v10 = [(STSSearchModel *)self->_searchModel querySuggestions];
  v11 = [v6 row];

  v12 = [v10 objectAtIndex:v11];
  v13 = [v12 suggestion];
  [v9 setText:v13];

  v14 = [v7 textLabel];
  v15 = [MEMORY[0x277D75348] systemPinkColor];
  [v14 setTextColor:v15];

  v16 = [v7 textLabel];
  v17 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v16 setFont:v17];

  v18 = _UIImageGetSearchGlass();
  v19 = MEMORY[0x277D755B8];
  [v18 size];
  v21 = v20;
  v23 = v22;
  v24 = [MEMORY[0x277D75348] sts_magnifyingGlassGrayTintColor];
  v25 = _UIImageGetSearchGlass();
  v26 = [v19 _tintedImageForSize:v24 withTint:0 effectsImage:v25 maskImage:0 style:{v21, v23}];

  v27 = [v7 imageView];
  [v27 setImage:v26];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v7 = [(STSSuggestionViewController *)self selectionDelegate];
  v6 = [v5 row];

  [v7 suggestionViewController:self didSelectSuggestionAtIndex:v6];
}

- (void)searchModelUpdatedQuerySuggestions:(id)a3
{
  v4 = [(STSSuggestionViewController *)self view];
  v5 = [v4 tableView];
  [v5 reloadData];

  [(STSSuggestionViewController *)self _updateFooterOrigin];
}

- (void)suggestionViewDidTapLogo:(id)a3
{
  v4 = [(STSSuggestionViewController *)self selectionDelegate];
  [v4 suggestionViewControllerDidTapLogo:self];
}

- (void)_hideNoticeOverlay
{
  v2 = [(STSSuggestionViewController *)self view];
  [v2 setOverlayView:0 animated:1];
}

- (void)_updateFooterOrigin
{
  v3 = [(STSSuggestionViewController *)self view];
  [v3 bounds];
  [(STSSuggestionViewController *)self _updateFooterOriginForBoundsHeight:CGRectGetHeight(v5)];
}

- (void)_updateFooterOriginForBoundsHeight:(double)a3
{
  v5 = [(STSSuggestionViewController *)self view];
  v6 = [v5 readableContentGuide];
  [v6 layoutFrame];
  MinX = CGRectGetMinX(v55);
  v8 = [(STSSuggestionViewController *)self view];
  [v8 footerSize];
  v9 = 20.0;
  v11 = v10 + 20.0 + 10.0;

  if (MinX >= v11)
  {
    [(STSSuggestionViewController *)self contentInset];
    v42 = a3 - v41;
    v43 = [(STSSuggestionViewController *)self view];
    [v43 footerSize];
    v45 = v42 - v44;

    v20 = 1;
  }

  else
  {
    v12 = [(STSSearchModel *)self->_searchModel querySuggestions];
    v13 = [v12 count];

    if (v13)
    {
      v14 = MEMORY[0x277CCAA70];
      v15 = [(STSSearchModel *)self->_searchModel querySuggestions];
      v16 = [v14 indexPathForRow:objc_msgSend(v15 inSection:{"count") - 1, 0}];

      v17 = [(STSSuggestionViewController *)self view];
      v18 = [v17 tableView];
      v19 = [v18 cellForRowAtIndexPath:v16];

      v20 = v19 != 0;
      MaxY = a3;
      if (v19)
      {
        v22 = [(STSSuggestionViewController *)self view];
        [v19 frame];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v31 = [(STSSuggestionViewController *)self view];
        v32 = [v31 tableView];
        [v22 convertRect:v32 fromView:{v24, v26, v28, v30}];
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
      MaxY = a3;
    }

    v46 = [(STSSuggestionViewController *)self view];
    v47 = [v46 readableContentGuide];
    [v47 layoutFrame];
    v9 = CGRectGetMinX(v57);

    [(STSSuggestionViewController *)self contentInset];
    v49 = a3 - v48;
    v50 = [(STSSuggestionViewController *)self view];
    [v50 footerSize];
    v45 = v49 - v51;

    if (MaxY >= v45)
    {
      v45 = MaxY;
    }
  }

  v52 = [(STSSuggestionViewController *)self view];
  [v52 setFooterOffset:{v9, v45}];

  v53 = [(STSSuggestionViewController *)self view];
  [v53 setShowingFooter:v20];
}

- (STSSuggestionViewControllerDelegate)selectionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionDelegate);

  return WeakRetained;
}

@end