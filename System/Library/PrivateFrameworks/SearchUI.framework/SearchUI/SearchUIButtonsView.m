@interface SearchUIButtonsView
- (SearchUIButtonsView)initWithCardSectionView:(id)a3;
- (SearchUIMovieCardSectionView)cardSectionView;
- (id)buttonWithTitle:(id)a3 subtitle:(id)a4 punchoutURL:(id)a5;
- (void)fetchButtonsWithCompletionHandler:(id)a3;
@end

@implementation SearchUIButtonsView

- (SearchUIButtonsView)initWithCardSectionView:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SearchUIButtonsView *)self buttonWithTitle:&stru_1F55BC4E8 subtitle:@"\n" punchoutURL:0];
  [v5 setAlpha:0.0];
  v18[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v17.receiver = self;
  v17.super_class = SearchUIButtonsView;
  v7 = [(NUIContainerBoxView *)&v17 initWithArrangedSubviews:v6];

  if (v7)
  {
    [(SearchUIButtonsView *)v7 setCardSectionView:v4];
    v8 = [MEMORY[0x1E69DC938] currentDevice];
    v9 = [v8 userInterfaceIdiom] == 1;

    v10 = [MEMORY[0x1E69D91A8] isSuperLargeAccessibilitySize];
    if ((v9 | v10))
    {
      v11 = 1;
    }

    else
    {
      v11 = 3;
    }

    [(NUIContainerBoxView *)v7 setHorizontalAlignment:v11];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__SearchUIButtonsView_initWithCardSectionView___block_invoke;
    v13[3] = &unk_1E85B3460;
    v16 = v10;
    v14 = v5;
    v15 = v7;
    [(SearchUIButtonsView *)v15 fetchButtonsWithCompletionHandler:v13];
  }

  return v7;
}

void __47__SearchUIButtonsView_initWithCardSectionView___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x1E69D9200]) initWithArrangedSubviews:v3];
  [v4 setAlignment:1];
  [v4 setDistribution:1];
  [v4 setSpacing:15.0];
  [v4 setAxis:*(a1 + 48)];
  if ((*(a1 + 48) & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          [*(a1 + 32) frame];
          Height = CGRectGetHeight(v21);
          if (Height == 0.0)
          {
            [*(a1 + 32) intrinsicContentSize];
          }

          [v10 setMaximumLayoutSize:{100.0, Height}];
          [v10 setMinimumLayoutSize:{100.0, 1.79769313e308}];
          [SearchUIAutoLayout requireIntrinsicSizeForView:v10];
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  [*(a1 + 40) addArrangedSubview:v4];
  if (*(a1 + 48) == 1)
  {
    v12 = [*(a1 + 40) cardSectionView];
    [v12 didInvalidateSizeAnimate:1];
  }

  else
  {
    [v4 setAlpha:0.0];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__SearchUIButtonsView_initWithCardSectionView___block_invoke_2;
    v13[3] = &unk_1E85B24C8;
    v14 = v4;
    [SearchUIUtilities performAnimatableChanges:v13];
    v12 = v14;
  }
}

- (void)fetchButtonsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(SearchUIButtonsView *)self cardSectionView];
  v6 = [v5 section];

  v7 = +[SearchUIWatchListUtilities watchListTypeForType:isMediaContainer:](SearchUIWatchListUtilities, "watchListTypeForType:isMediaContainer:", [v6 watchListItemType], objc_msgSend(v6, "isMediaContainer"));
  v8 = [v6 watchListIdentifier];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__SearchUIButtonsView_fetchButtonsWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E85B2FD8;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [SearchUIWatchListUtilities fetchButtonsForWatchListIdentifier:v8 type:v7 isHorizontallySrollingStyle:0 completion:v10];
}

void __57__SearchUIButtonsView_fetchButtonsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57__SearchUIButtonsView_fetchButtonsWithCompletionHandler___block_invoke_2;
  v16[3] = &unk_1E85B3488;
  v7 = v5;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v17 = v7;
  v18 = v8;
  v19 = v9;
  [SearchUIUtilities dispatchMainIfNecessary:v16];
  if (v6)
  {
    v10 = [*(a1 + 32) cardSectionView];
    v11 = [v10 feedbackDelegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x1E69CA078]) initWithError:v6];
      v14 = [*(a1 + 32) cardSectionView];
      v15 = [v14 feedbackDelegate];
      [v15 didErrorOccur:v13];
    }
  }
}

void __57__SearchUIButtonsView_fetchButtonsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [v7 watchListState];

        if (v8)
        {
          v9 = [SearchUIMovieCardSectionUpNextButtonView alloc];
          v10 = [v7 watchListState];
          v11 = [v10 isWatchListed];
          v12 = [*(a1 + 40) cardSectionView];
          v13 = [(SearchUIMovieCardSectionUpNextButtonView *)v9 initIsInUpNext:v11 cardSectionView:v12];
        }

        else
        {
          v14 = *(a1 + 40);
          v10 = [v7 title];
          v12 = [v7 subtitle];
          v15 = [v7 punchoutURL];
          v13 = [v14 buttonWithTitle:v10 subtitle:v12 punchoutURL:v15];
        }

        [v2 addObject:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  (*(*(a1 + 48) + 16))();
}

- (id)buttonWithTitle:(id)a3 subtitle:(id)a4 punchoutURL:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [SearchUIMovieCardSectionBuyButtonView alloc];
  v12 = [MEMORY[0x1E69CA3A0] textWithString:v9];

  v13 = [MEMORY[0x1E69CA320] punchoutWithURL:v8];

  v14 = [(SearchUIButtonsView *)self cardSectionView];
  v15 = [(SearchUIMovieCardSectionBuyButtonView *)v11 initWithTitle:v10 subtitle:v12 punchout:v13 cardSectionView:v14];

  return v15;
}

- (SearchUIMovieCardSectionView)cardSectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_cardSectionView);

  return WeakRetained;
}

@end