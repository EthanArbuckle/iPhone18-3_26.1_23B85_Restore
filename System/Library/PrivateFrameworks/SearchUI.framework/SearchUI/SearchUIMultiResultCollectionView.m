@interface SearchUIMultiResultCollectionView
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (SearchUIFeedbackDelegateInternal)feedbackDelegate;
- (SearchUIMultiResultCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)deleteIcon:(id)a3;
- (void)didUpdateKeyboardFocusToResult:(id)a3 cardSection:(id)a4;
- (void)hideIcon:(id)a3;
- (void)removeIconWithBundleIdentifier:(id)a3;
- (void)setHighlightFirstCell:(BOOL)a3;
- (void)updateCountsAnimated:(BOOL)a3;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUIMultiResultCollectionView

- (SearchUIFeedbackDelegateInternal)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

- (SearchUIMultiResultCollectionView)initWithFrame:(CGRect)a3 collectionViewLayout:(id)a4
{
  v9.receiver = self;
  v9.super_class = SearchUIMultiResultCollectionView;
  v4 = [(SearchUIMultiResultCollectionView *)&v9 initWithFrame:a4 collectionViewLayout:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(SearchUIMultiResultCollectionView *)v4 setDataSource:v4];
    [(SearchUIMultiResultCollectionView *)v5 setDelegate:v5];
    [(SearchUIMultiResultCollectionView *)v5 setBackgroundColor:0];
    [(SearchUIMultiResultCollectionView *)v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"multicell"];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v5 selector:sel_deleteIcon_ name:*MEMORY[0x1E69D4170] object:0];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v5 selector:sel_hideIcon_ name:@"SearchUIHomeScreenAppIconViewDidHideIconNotification" object:0];
  }

  return v5;
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 nextFocusedItem];
  v6 = [v4 previouslyFocusedItem];
  v7 = v6;
  if (v5 != v6)
  {

LABEL_5:
    v12.receiver = self;
    v12.super_class = SearchUIMultiResultCollectionView;
    v10 = [(SearchUIMultiResultCollectionView *)&v12 shouldUpdateFocusInContext:v4];
    goto LABEL_6;
  }

  v8 = [v4 focusHeading];

  if (v8 != 1)
  {
    goto LABEL_5;
  }

  v9 = [v4 nextFocusedItem];
  [v9 setAddRoundedKeyboardHighlight:0];

  [(SearchUIMultiResultCollectionView *)self didUpdateKeyboardFocusToResult:0 cardSection:0];
  v10 = 0;
LABEL_6:

  return v10;
}

- (void)didUpdateKeyboardFocusToResult:(id)a3 cardSection:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(SearchUIMultiResultCollectionView *)self feedbackDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(SearchUIMultiResultCollectionView *)self feedbackDelegate];
    [v9 didUpdateKeyboardFocusToResult:v10 cardSection:v6];
  }

  [(SearchUIMultiResultCollectionView *)self setHighlightFirstCell:0];
}

- (void)hideIcon:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"SearchUIHomeScreenAppIconViewBundleIdUserInfoKey"];

  [(SearchUIMultiResultCollectionView *)self removeIconWithBundleIdentifier:v5];
}

- (void)deleteIcon:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69D4178]];
  v6 = [v5 nodeIdentifier];

  [(SearchUIMultiResultCollectionView *)self removeIconWithBundleIdentifier:v6];
}

- (void)removeIconWithBundleIdentifier:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [(SearchUIMultiResultCollectionView *)self visibleResults];
    v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [v10 applicationBundleIdentifier];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v13 = v10;

      if (!v13)
      {
        goto LABEL_19;
      }

      v14 = [(SearchUIMultiResultCollectionView *)self rowModel];
      v15 = [v14 results];
      if ([v15 count] == 1)
      {
        v16 = [(SearchUIMultiResultCollectionView *)self feedbackDelegate];
        v17 = objc_opt_respondsToSelector();

        if (v17)
        {
          v18 = [(SearchUIMultiResultCollectionView *)self feedbackDelegate];
          v19 = [(SearchUIMultiResultCollectionView *)self rowModel];
          [v18 removeRowModel:v19 completion:0];

LABEL_17:
          goto LABEL_18;
        }
      }

      else
      {
      }

      v20 = [(SearchUIMultiResultCollectionView *)self rowModel];
      v21 = [v20 removeResult:v13];

      v22 = [(SearchUIMultiResultCollectionView *)self visibleResults];
      v18 = [v22 mutableCopy];

      [v18 removeObject:v13];
      [(SearchUIMultiResultCollectionView *)self setVisibleResults:v18];
      v23 = [MEMORY[0x1E696AC88] indexPathForRow:v21 inSection:0];
      v29 = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      [(SearchUIMultiResultCollectionView *)self deleteItemsAtIndexPaths:v24];

      [(SearchUIMultiResultCollectionView *)self updateCountsAnimated:1];
      goto LABEL_17;
    }

LABEL_10:
    v13 = v5;
LABEL_18:
  }

LABEL_19:
}

- (void)updateCountsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SearchUIMultiResultCollectionView *)self isExpanded];
  v6 = [(SearchUIMultiResultCollectionView *)self rowModel];
  v7 = [v6 results];
  if (!v5)
  {
    v8 = [(SearchUIMultiResultCollectionView *)self rowModel];
    v9 = [v8 results];
    v10 = [v9 count];

    v11 = +[SearchUIAppIconUtilities numberOfAppIconsPerRow];
    if (v10 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = [v7 subarrayWithRange:{0, v12}];

    v7 = v13;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v14 = [(SearchUIMultiResultCollectionView *)self visibleCells];
  v15 = [v14 count];

  v37 = v15;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v16 = [(SearchUIMultiResultCollectionView *)self visibleResults];
  v17 = [v16 count];

  v33 = v17;
  if (v35[3] && v31[3])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__SearchUIMultiResultCollectionView_updateCountsAnimated___block_invoke;
    aBlock[3] = &unk_1E85B26F8;
    v28 = &v34;
    aBlock[4] = self;
    v29 = &v30;
    v27 = v7;
    v18 = _Block_copy(aBlock);
    v19 = v18;
    if (v3)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __58__SearchUIMultiResultCollectionView_updateCountsAnimated___block_invoke_2;
      v24[3] = &unk_1E85B2680;
      v25 = v18;
      [(SearchUIMultiResultCollectionView *)self performBatchUpdates:v24 completion:0];
      v20 = v25;
    }

    else
    {
      v21 = MEMORY[0x1E69DD250];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __58__SearchUIMultiResultCollectionView_updateCountsAnimated___block_invoke_3;
      v22[3] = &unk_1E85B2720;
      v22[4] = self;
      v23 = v18;
      [v21 performWithoutAnimation:v22];
      v20 = v23;
    }
  }

  else
  {
    [(SearchUIMultiResultCollectionView *)self setVisibleResults:v7];
    [(SearchUIMultiResultCollectionView *)self reloadData];
    [(SearchUIMultiResultCollectionView *)self layoutBelowIfNeeded];
  }

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);
}

void __58__SearchUIMultiResultCollectionView_updateCountsAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visibleResults];
  *(*(*(a1 + 48) + 8) + 24) = [v2 count];

  *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) count];
  [*(a1 + 32) setVisibleResults:*(a1 + 40)];
  v9 = objc_opt_new();
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  if (*(*(*(a1 + 48) + 8) + 24) | *(*(*(a1 + 56) + 8) + 24))
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x1E696AC88] indexPathForRow:v5 inSection:0];
      v7 = v4;
      if (v5 < *(*(*(a1 + 56) + 8) + 24))
      {
        v7 = v9;
        if (v5 >= *(*(*(a1 + 48) + 8) + 24))
        {
          v7 = v3;
        }
      }

      [v7 addObject:v6];

      ++v5;
      v8 = *(*(*(a1 + 48) + 8) + 24);
      if (v8 <= *(*(*(a1 + 56) + 8) + 24))
      {
        v8 = *(*(*(a1 + 56) + 8) + 24);
      }
    }

    while (v5 < v8);
  }

  if ([v9 count])
  {
    [*(a1 + 32) reconfigureItemsAtIndexPaths:v9];
  }

  if ([v4 count])
  {
    [*(a1 + 32) deleteItemsAtIndexPaths:v4];
  }

  if ([v3 count])
  {
    [*(a1 + 32) insertItemsAtIndexPaths:v3];
  }

  [*(a1 + 32) layoutBelowIfNeeded];
}

void __58__SearchUIMultiResultCollectionView_updateCountsAnimated___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __58__SearchUIMultiResultCollectionView_updateCountsAnimated___block_invoke_4;
  v2[3] = &unk_1E85B2680;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performBatchUpdates:v2 completion:0];
}

- (void)updateWithRowModel:(id)a3
{
  v8 = a3;
  v4 = [v8 results];
  v5 = [(SearchUIMultiResultCollectionView *)self rowModel];
  v6 = [v5 results];
  v7 = [v4 isEqualToArray:v6];

  if ((v7 & 1) == 0)
  {
    [(SearchUIMultiResultCollectionView *)self setRowModel:v8];
    [(SearchUIMultiResultCollectionView *)self updateCountsAnimated:0];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(SearchUIMultiResultCollectionView *)self visibleResults:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 dequeueReusableCellWithReuseIdentifier:@"multicell" forIndexPath:v6];
  v9 = [(SearchUIMultiResultCollectionView *)self visibleResults];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];
  [v8 updateWithResult:v10];

  v11 = [(SearchUIMultiResultCollectionView *)self feedbackDelegate];
  v12 = [v8 appIconView];
  [v12 setFeedbackDelegate:v11];

  v13 = [v8 appIconView];
  [v13 setEngagementDelegate:self];

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Identifier:ResultCell, Section:%ld, Row:%ld", objc_msgSend(v6, "section"), objc_msgSend(v6, "row")];
  [v8 setAccessibilityIdentifier:v14];

  if ([(SearchUIMultiResultCollectionView *)self highlightFirstCell])
  {
    v15 = [v6 item] == 0;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v8 appIconView];
  [v16 setAddRoundedKeyboardHighlight:v15];

  v17 = [v7 collectionViewLayout];

  [v17 minimumInteritemSpacing];
  v19 = v18;
  [v17 minimumLineSpacing];
  [v8 setHoverHighlightMargins:{v19, v20}];

  return v8;
}

- (void)setHighlightFirstCell:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v6 = [(SearchUIMultiResultCollectionView *)self cellForItemAtIndexPath:v5];
  v7 = [v6 appIconView];
  [v7 setAddRoundedKeyboardHighlight:v3];

  self->_highlightFirstCell = v3;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  [SearchUIAppIconUtilities preferredHorizontalPlatterInsetForAppIcons:a3];
  v6 = v5;
  if (+[SearchUIUtilities isIpad])
  {
    +[SearchUIUtilities standardTableCellContentInset];
    v6 = v6 + v7;
  }

  +[SearchUIAppIconUtilities distanceToTopOfAppIconsForMultiResultCell];
  v9 = v8;
  +[SearchUIAppIconUtilities distanceToBottomOfAppIconsForMultiResultCell];
  v11 = v10;
  v12 = v9;
  v13 = v6;
  v14 = v6;
  result.right = v14;
  result.bottom = v11;
  result.left = v13;
  result.top = v12;
  return result;
}

@end