@interface SearchUIMultiResultCollectionView
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (SearchUIFeedbackDelegateInternal)feedbackDelegate;
- (SearchUIMultiResultCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)deleteIcon:(id)icon;
- (void)didUpdateKeyboardFocusToResult:(id)result cardSection:(id)section;
- (void)hideIcon:(id)icon;
- (void)removeIconWithBundleIdentifier:(id)identifier;
- (void)setHighlightFirstCell:(BOOL)cell;
- (void)updateCountsAnimated:(BOOL)animated;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUIMultiResultCollectionView

- (SearchUIFeedbackDelegateInternal)feedbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_feedbackDelegate);

  return WeakRetained;
}

- (SearchUIMultiResultCollectionView)initWithFrame:(CGRect)frame collectionViewLayout:(id)layout
{
  v9.receiver = self;
  v9.super_class = SearchUIMultiResultCollectionView;
  v4 = [(SearchUIMultiResultCollectionView *)&v9 initWithFrame:layout collectionViewLayout:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v5 = v4;
  if (v4)
  {
    [(SearchUIMultiResultCollectionView *)v4 setDataSource:v4];
    [(SearchUIMultiResultCollectionView *)v5 setDelegate:v5];
    [(SearchUIMultiResultCollectionView *)v5 setBackgroundColor:0];
    [(SearchUIMultiResultCollectionView *)v5 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"multicell"];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_deleteIcon_ name:*MEMORY[0x1E69D4170] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel_hideIcon_ name:@"SearchUIHomeScreenAppIconViewDidHideIconNotification" object:0];
  }

  return v5;
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  nextFocusedItem = [contextCopy nextFocusedItem];
  previouslyFocusedItem = [contextCopy previouslyFocusedItem];
  v7 = previouslyFocusedItem;
  if (nextFocusedItem != previouslyFocusedItem)
  {

LABEL_5:
    v12.receiver = self;
    v12.super_class = SearchUIMultiResultCollectionView;
    v10 = [(SearchUIMultiResultCollectionView *)&v12 shouldUpdateFocusInContext:contextCopy];
    goto LABEL_6;
  }

  focusHeading = [contextCopy focusHeading];

  if (focusHeading != 1)
  {
    goto LABEL_5;
  }

  nextFocusedItem2 = [contextCopy nextFocusedItem];
  [nextFocusedItem2 setAddRoundedKeyboardHighlight:0];

  [(SearchUIMultiResultCollectionView *)self didUpdateKeyboardFocusToResult:0 cardSection:0];
  v10 = 0;
LABEL_6:

  return v10;
}

- (void)didUpdateKeyboardFocusToResult:(id)result cardSection:(id)section
{
  resultCopy = result;
  sectionCopy = section;
  feedbackDelegate = [(SearchUIMultiResultCollectionView *)self feedbackDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    feedbackDelegate2 = [(SearchUIMultiResultCollectionView *)self feedbackDelegate];
    [feedbackDelegate2 didUpdateKeyboardFocusToResult:resultCopy cardSection:sectionCopy];
  }

  [(SearchUIMultiResultCollectionView *)self setHighlightFirstCell:0];
}

- (void)hideIcon:(id)icon
{
  userInfo = [icon userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"SearchUIHomeScreenAppIconViewBundleIdUserInfoKey"];

  [(SearchUIMultiResultCollectionView *)self removeIconWithBundleIdentifier:v5];
}

- (void)deleteIcon:(id)icon
{
  userInfo = [icon userInfo];
  v5 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69D4178]];
  nodeIdentifier = [v5 nodeIdentifier];

  [(SearchUIMultiResultCollectionView *)self removeIconWithBundleIdentifier:nodeIdentifier];
}

- (void)removeIconWithBundleIdentifier:(id)identifier
{
  v31 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    visibleResults = [(SearchUIMultiResultCollectionView *)self visibleResults];
    v6 = [visibleResults countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(visibleResults);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        applicationBundleIdentifier = [v10 applicationBundleIdentifier];
        v12 = [applicationBundleIdentifier isEqualToString:identifierCopy];

        if (v12)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [visibleResults countByEnumeratingWithState:&v25 objects:v30 count:16];
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

      rowModel = [(SearchUIMultiResultCollectionView *)self rowModel];
      results = [rowModel results];
      if ([results count] == 1)
      {
        feedbackDelegate = [(SearchUIMultiResultCollectionView *)self feedbackDelegate];
        v17 = objc_opt_respondsToSelector();

        if (v17)
        {
          feedbackDelegate2 = [(SearchUIMultiResultCollectionView *)self feedbackDelegate];
          rowModel2 = [(SearchUIMultiResultCollectionView *)self rowModel];
          [feedbackDelegate2 removeRowModel:rowModel2 completion:0];

LABEL_17:
          goto LABEL_18;
        }
      }

      else
      {
      }

      rowModel3 = [(SearchUIMultiResultCollectionView *)self rowModel];
      v21 = [rowModel3 removeResult:v13];

      visibleResults2 = [(SearchUIMultiResultCollectionView *)self visibleResults];
      feedbackDelegate2 = [visibleResults2 mutableCopy];

      [feedbackDelegate2 removeObject:v13];
      [(SearchUIMultiResultCollectionView *)self setVisibleResults:feedbackDelegate2];
      v23 = [MEMORY[0x1E696AC88] indexPathForRow:v21 inSection:0];
      v29 = v23;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
      [(SearchUIMultiResultCollectionView *)self deleteItemsAtIndexPaths:v24];

      [(SearchUIMultiResultCollectionView *)self updateCountsAnimated:1];
      goto LABEL_17;
    }

LABEL_10:
    v13 = visibleResults;
LABEL_18:
  }

LABEL_19:
}

- (void)updateCountsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isExpanded = [(SearchUIMultiResultCollectionView *)self isExpanded];
  rowModel = [(SearchUIMultiResultCollectionView *)self rowModel];
  results = [rowModel results];
  if (!isExpanded)
  {
    rowModel2 = [(SearchUIMultiResultCollectionView *)self rowModel];
    results2 = [rowModel2 results];
    v10 = [results2 count];

    v11 = +[SearchUIAppIconUtilities numberOfAppIconsPerRow];
    if (v10 >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    v13 = [results subarrayWithRange:{0, v12}];

    results = v13;
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  visibleCells = [(SearchUIMultiResultCollectionView *)self visibleCells];
  v15 = [visibleCells count];

  v37 = v15;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  visibleResults = [(SearchUIMultiResultCollectionView *)self visibleResults];
  v17 = [visibleResults count];

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
    v27 = results;
    v18 = _Block_copy(aBlock);
    v19 = v18;
    if (animatedCopy)
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
    [(SearchUIMultiResultCollectionView *)self setVisibleResults:results];
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

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  results = [modelCopy results];
  rowModel = [(SearchUIMultiResultCollectionView *)self rowModel];
  results2 = [rowModel results];
  v7 = [results isEqualToArray:results2];

  if ((v7 & 1) == 0)
  {
    [(SearchUIMultiResultCollectionView *)self setRowModel:modelCopy];
    [(SearchUIMultiResultCollectionView *)self updateCountsAnimated:0];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(SearchUIMultiResultCollectionView *)self visibleResults:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"multicell" forIndexPath:pathCopy];
  visibleResults = [(SearchUIMultiResultCollectionView *)self visibleResults];
  v10 = [visibleResults objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  [v8 updateWithResult:v10];

  feedbackDelegate = [(SearchUIMultiResultCollectionView *)self feedbackDelegate];
  appIconView = [v8 appIconView];
  [appIconView setFeedbackDelegate:feedbackDelegate];

  appIconView2 = [v8 appIconView];
  [appIconView2 setEngagementDelegate:self];

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Identifier:ResultCell, Section:%ld, Row:%ld", objc_msgSend(pathCopy, "section"), objc_msgSend(pathCopy, "row")];
  [v8 setAccessibilityIdentifier:v14];

  if ([(SearchUIMultiResultCollectionView *)self highlightFirstCell])
  {
    v15 = [pathCopy item] == 0;
  }

  else
  {
    v15 = 0;
  }

  appIconView3 = [v8 appIconView];
  [appIconView3 setAddRoundedKeyboardHighlight:v15];

  collectionViewLayout = [viewCopy collectionViewLayout];

  [collectionViewLayout minimumInteritemSpacing];
  v19 = v18;
  [collectionViewLayout minimumLineSpacing];
  [v8 setHoverHighlightMargins:{v19, v20}];

  return v8;
}

- (void)setHighlightFirstCell:(BOOL)cell
{
  cellCopy = cell;
  v5 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
  v6 = [(SearchUIMultiResultCollectionView *)self cellForItemAtIndexPath:v5];
  appIconView = [v6 appIconView];
  [appIconView setAddRoundedKeyboardHighlight:cellCopy];

  self->_highlightFirstCell = cellCopy;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  [SearchUIAppIconUtilities preferredHorizontalPlatterInsetForAppIcons:view];
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