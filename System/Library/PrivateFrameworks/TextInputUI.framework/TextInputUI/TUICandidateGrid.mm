@interface TUICandidateGrid
+ (BOOL)isGradientContentLabelCandidate:(id)candidate;
+ (BOOL)isSafariPasswordSuggestionCandidate:(id)candidate;
+ (BOOL)isWritingToolSuggestionCandidate:(id)candidate;
- (BOOL)canExpandCandidateGrid;
- (BOOL)handleNumberKey:(unint64_t)key;
- (BOOL)hasCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity;
- (BOOL)indexPathIsFullyVisible:(id)visible granularity:(int)granularity;
- (BOOL)indexPathIsValid:(id)valid;
- (BOOL)respondsToSelector:(SEL)selector;
- (CGPoint)arrowButtonOrigin;
- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (CGSize)arrowButtonSize;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (CGSize)contentSize;
- (NSArray)visibleCandidates;
- (NSIndexPath)firstIndexPath;
- (TIKeyboardCandidate)selectedCandidate;
- (TUICandidateGrid)initWithCoder:(id)coder;
- (TUICandidateGrid)initWithFrame:(CGRect)frame;
- (TUICandidateGridDelegate)delegate;
- (TUICandidateLayout)multiRowLayout;
- (TUICandidateLayout)singleRowLayout;
- (UICollectionView)collectionView;
- (UIEdgeInsets)safeAreaInsets;
- (double)collectionView:(id)view layout:(id)layout widthForGroupHeaderInSection:(int64_t)section;
- (double)rowHeight;
- (id)_sectionIndexTitlesForCollectionView:(id)view;
- (id)candidateAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)collectionViewLayout;
- (id)indexPathForCandidate:(id)candidate;
- (id)indexPathForCandidateNumber:(unint64_t)number;
- (id)indexPathForVerticalCandidateNumber:(unint64_t)number;
- (id)indexPathInForwardDirection:(BOOL)direction granularity:(int)granularity;
- (id)indexPathsForSelectedRow;
- (id)indexPathsInTheRowThatContainsFrame:(CGRect)frame;
- (id)lastIndexPath;
- (id)visibleAttributes;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (int64_t)numberOfNonPartialCandidatesInSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (int64_t)numberOfTransliterationCandidatesInSection:(int64_t)section;
- (int64_t)rowForCandidate:(id)candidate;
- (int64_t)viewOffsetForCandidate:(id)candidate;
- (unint64_t)candidateNumberForIndexPath:(id)path;
- (unint64_t)candidateNumberInHorizontalLayoutForIndexPath:(id)path;
- (unint64_t)candidateNumberInVerticalLayoutForIndexPath:(id)path;
- (unint64_t)extraCandidatesCount;
- (unint64_t)slottedCandidatesCount;
- (void)addAppCandidatesRenderSignposts;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)commonInit;
- (void)didMoveHighlightFrame;
- (void)forceUpdateVisibleCells;
- (void)layoutSubviews;
- (void)scrollToCandidateAtIndexPath:(id)path animated:(BOOL)animated;
- (void)scrollToFirstCandidate;
- (void)scrollToTop;
- (void)scrollViewDidChangeContentSize:(id)size;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setCandidateGroups:(id)groups;
- (void)setCandidateNumberEnabled:(BOOL)enabled;
- (void)setCustomHeader:(id)header;
- (void)setRowType:(int64_t)type options:(unint64_t)options animated:(BOOL)animated completion:(id)completion;
- (void)setRowType:(int64_t)type options:(unint64_t)options style:(id)style animated:(BOOL)animated animator:(id)animator completion:(id)completion;
- (void)setSelectedIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position;
- (void)setSlottedSeparatorHidden:(BOOL)hidden inCollectionView:(id)view nearHighlightItemAtIndexPath:(id)path;
- (void)setStyle:(id)style;
- (void)setStyle:(id)style reload:(BOOL)reload;
- (void)setSuppressCollectionViewLayout:(BOOL)layout;
- (void)showCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity;
- (void)updateBounce;
- (void)updateCollectionViewFrameForArrowButton;
- (void)updateContentInset;
- (void)updateGradientLayerToCollectionView;
- (void)updateIndex;
- (void)updateSelectedRowHighlightView;
@end

@implementation TUICandidateGrid

- (CGSize)arrowButtonSize
{
  width = self->_arrowButtonSize.width;
  height = self->_arrowButtonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)arrowButtonOrigin
{
  x = self->_arrowButtonOrigin.x;
  y = self->_arrowButtonOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (TUICandidateGridDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)addAppCandidatesRenderSignposts
{
  v2 = arc4random();
  kdebug_trace();
  v3 = kac_get_log();
  v4 = os_signpost_id_make_with_pointer(v3, v2);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_18FFDC000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "appCandidatesRender", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v6 = *MEMORY[0x1E69DDA98];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__TUICandidateGrid_addAppCandidatesRenderSignposts__block_invoke;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = v2;
  [v6 _performBlockAfterCATransactionCommits:v7];
}

void __51__TUICandidateGrid_addAppCandidatesRenderSignposts__block_invoke(uint64_t a1)
{
  kdebug_trace();
  v2 = kac_get_log();
  v3 = os_signpost_id_make_with_pointer(v2, *(a1 + 32));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_18FFDC000, v2, OS_SIGNPOST_INTERVAL_END, v4, "appCandidatesRender", " enableTelemetry=YES ", v5, 2u);
    }
  }
}

- (int64_t)numberOfNonPartialCandidatesInSection:(int64_t)section
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  candidateGroups = [(TUICandidateGrid *)self candidateGroups];
  v6 = [candidateGroups count];

  if (v6 > section)
  {
    candidateGroups2 = [(TUICandidateGrid *)self candidateGroups];
    v8 = [candidateGroups2 objectAtIndexedSubscript:section];
    candidates = [v8 candidates];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__TUICandidateGrid_numberOfNonPartialCandidatesInSection___block_invoke;
    v12[3] = &unk_1E72D7DF8;
    v12[4] = &v13;
    [candidates enumerateObjectsUsingBlock:v12];
  }

  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void __58__TUICandidateGrid_numberOfNonPartialCandidatesInSection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 isPartialCandidate])
  {
    *a4 = 1;
  }

  else
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (int64_t)numberOfTransliterationCandidatesInSection:(int64_t)section
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  candidateGroups = [(TUICandidateGrid *)self candidateGroups];
  v6 = [candidateGroups count];

  if (v6 > section)
  {
    candidateGroups2 = [(TUICandidateGrid *)self candidateGroups];
    v8 = [candidateGroups2 objectAtIndexedSubscript:section];
    candidates = [v8 candidates];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__TUICandidateGrid_numberOfTransliterationCandidatesInSection___block_invoke;
    v12[3] = &unk_1E72D7DF8;
    v12[4] = &v13;
    [candidates enumerateObjectsUsingBlock:v12];
  }

  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void __63__TUICandidateGrid_numberOfTransliterationCandidatesInSection___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v6 isTransliterationCandidate])
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    *a4 = 1;
  }
}

- (id)_sectionIndexTitlesForCollectionView:(id)view
{
  v24 = *MEMORY[0x1E69E9840];
  style = [(TUICandidateGrid *)self style];
  showsIndex = [style showsIndex];

  if (showsIndex)
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    candidateGroups = [(TUICandidateGrid *)self candidateGroups];
    v8 = [candidateGroups countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(candidateGroups);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          title = [v12 title];
          v14 = [title length];

          if (v14)
          {
            title2 = [v12 title];
            [array addObject:title2];
          }
        }

        v9 = [candidateGroups countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    if ([array count])
    {
      v16 = array;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:@"Line"])
  {
    v12 = +[TUICandidateLine reuseIdentifier];
    v13 = @"Line";
LABEL_3:
    v5 = [viewCopy dequeueReusableSupplementaryViewOfKind:v13 withReuseIdentifier:v12 forIndexPath:pathCopy];

    style = [(TUICandidateGrid *)self style];
    [v5 setStyle:style];
LABEL_8:

    goto LABEL_9;
  }

  if ([kindCopy isEqualToString:@"GroupHeader"])
  {
    v15 = +[TUICandidateGroupHeader reuseIdentifier];
    v5 = [viewCopy dequeueReusableSupplementaryViewOfKind:@"GroupHeader" withReuseIdentifier:v15 forIndexPath:pathCopy];

    style2 = [(TUICandidateGrid *)self style];
    [v5 setStyle:style2];

    style3 = [(TUICandidateGrid *)self style];
    [v5 setAlignment:{objc_msgSend(style3, "cellTextAlignment")}];

    style = [(TUICandidateGrid *)self candidateGroups];
    v18 = [style objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    title = [v18 title];
    [v5 setText:title];

    goto LABEL_8;
  }

  if ([kindCopy isEqualToString:@"CustomHeader"])
  {
    v5 = [viewCopy dequeueReusableSupplementaryViewOfKind:@"CustomHeader" withReuseIdentifier:@"CustomHeader" forIndexPath:pathCopy];
    subviews = [v5 subviews];
    lastObject = [subviews lastObject];
    [lastObject removeFromSuperview];

    style = [(TUICandidateGrid *)self customHeader];
    [v5 addSubview:style];
    goto LABEL_8;
  }

  if ([kindCopy isEqualToString:@"SlottedCellSeparator"])
  {
    v12 = +[TUICandidateSlottedSeparator reuseIdentifier];
    v13 = @"SlottedCellSeparator";
    goto LABEL_3;
  }

  if ([kindCopy isEqualToString:@"DummyCandidate"])
  {
    v5 = [viewCopy dequeueReusableSupplementaryViewOfKind:@"DummyCandidate" withReuseIdentifier:@"DummyCandidate" forIndexPath:pathCopy];
    style4 = [(TUICandidateGrid *)self style];
    [v5 setStyle:style4];

    v24 = [(TUICandidateGrid *)self candidateAtIndexPath:pathCopy];
    [v5 setCandidate:v24];

    style = [(TUICandidateGrid *)self selectedIndexPath];
    [v5 setSelected:{objc_msgSend(pathCopy, "isEqual:", style)}];
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(TUICandidateGrid *)self candidateAtIndexPath:pathCopy];
  if ([v8 isSecureContentCandidate])
  {
    v9 = +[TUIProactiveCandidateCell reuseIdentifier];
    v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:pathCopy];

    style = [(TUICandidateGrid *)self style];
    [v10 setStyle:style];

    [v10 setCandidate:v8];
    goto LABEL_8;
  }

  if ([v8 isAutofillExtraCandidate])
  {
    v12 = TUIAutofillExtraCandidateCell;
LABEL_7:
    reuseIdentifier = [(__objc2_class *)v12 reuseIdentifier];
    v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:pathCopy];

    [v10 setCandidate:v8];
    style2 = [(TUICandidateGrid *)self style];
    [v10 setStyle:style2];

    goto LABEL_8;
  }

  if ([objc_opt_class() isWritingToolSuggestionCandidate:v8])
  {
    v12 = TUIWritingToolCandidateCell;
    goto LABEL_7;
  }

  if ([objc_opt_class() isGradientContentLabelCandidate:v8])
  {
    v16 = +[TUIGradientContentLabelCell reuseIdentifier];
    v10 = [viewCopy dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:pathCopy];

    style3 = [(TUICandidateGrid *)self style];
    [v10 setStyle:style3];

    [v10 setCandidate:v8];
    [v10 setPredictionPosition:{objc_msgSend(pathCopy, "item")}];
  }

  else
  {
    if ([objc_opt_class() isSafariPasswordSuggestionCandidate:v8])
    {
      v12 = TUISuggestionCandidateCell;
      goto LABEL_7;
    }

    v18 = +[TUICandidateCell reuseIdentifier];
    v19 = [viewCopy dequeueReusableCellWithReuseIdentifier:v18 forIndexPath:pathCopy];

    style4 = [(TUICandidateGrid *)self style];
    [v19 setStyle:style4];

    [(TUICandidateGrid *)self maximumRowHeight];
    [v19 setMinimumTextLabelHeight:?];
    [v19 setCandidateNumber:{-[TUICandidateGrid candidateNumberForIndexPath:](self, "candidateNumberForIndexPath:", pathCopy)}];
    [v19 setCandidate:v8];
    style5 = [(TUICandidateGrid *)self style];
    [v19 setAlignment:{objc_msgSend(style5, "cellTextAlignment")}];

    selectedIndexPath = [(TUICandidateGrid *)self selectedIndexPath];
    [v19 setSelected:{objc_msgSend(pathCopy, "isEqual:", selectedIndexPath)}];

    v23 = MEMORY[0x1E69DD250];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __58__TUICandidateGrid_collectionView_cellForItemAtIndexPath___block_invoke;
    v24[3] = &unk_1E72D83A0;
    v10 = v19;
    v25 = v10;
    [v23 performWithoutAnimation:v24];
  }

LABEL_8:

  return v10;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  slottedCandidatesCount = [(TUICandidateGrid *)self slottedCandidatesCount];
  v7 = [(TUICandidateGrid *)self extraCandidatesCount]+ slottedCandidatesCount;
  if (v7)
  {
    return v7;
  }

  style = [(TUICandidateGrid *)self style];
  hidesPartialCandidates = [style hidesPartialCandidates];

  if (hidesPartialCandidates)
  {
    v7 = [(TUICandidateGrid *)self numberOfNonPartialCandidatesInSection:section];
    v11 = v7 - [(TUICandidateGrid *)self numberOfTransliterationCandidatesInSection:section];
    style2 = [(TUICandidateGrid *)self style];
    minimumNumberOfCandidates = [style2 minimumNumberOfCandidates];

    if (v11 >= minimumNumberOfCandidates)
    {
      return v7;
    }
  }

  candidateGroups = [(TUICandidateGrid *)self candidateGroups];
  v15 = [candidateGroups objectAtIndexedSubscript:section];
  candidates = [v15 candidates];
  v17 = [candidates count];

  return v17;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  candidateGroups = [(TUICandidateGrid *)self candidateGroups];
  v4 = [candidateGroups count];

  return v4;
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(TUICandidateGrid *)self didMoveHighlightFrame];
  }
}

- (void)didMoveHighlightFrame
{
  delegate = [(TUICandidateGrid *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    collectionView = [(TUICandidateGrid *)self collectionView];
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    firstObject = [indexPathsForSelectedItems firstObject];

    if (firstObject)
    {
      collectionView2 = [(TUICandidateGrid *)self collectionView];
      v8 = [collectionView2 layoutAttributesForItemAtIndexPath:firstObject];
      [v8 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      collectionView3 = [(TUICandidateGrid *)self collectionView];
      [collectionView3 contentOffset];
      v19 = v18;

      v20 = v10 - v19;
    }

    else
    {
      v20 = *MEMORY[0x1E695F050];
      v12 = *(MEMORY[0x1E695F050] + 8);
      v14 = *(MEMORY[0x1E695F050] + 16);
      v16 = *(MEMORY[0x1E695F050] + 24);
    }

    delegate2 = [(TUICandidateGrid *)self delegate];
    [delegate2 candidateGrid:self didMoveHighlightFrame:{v20, v12, v14, v16}];
  }
}

- (void)setSlottedSeparatorHidden:(BOOL)hidden inCollectionView:(id)view nearHighlightItemAtIndexPath:(id)path
{
  hiddenCopy = hidden;
  v39 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  pathCopy = path;
  slottedCandidatesCount = [(TUICandidateGrid *)self slottedCandidatesCount];
  if (slottedCandidatesCount + [(TUICandidateGrid *)self extraCandidatesCount])
  {
    v11 = [viewCopy cellForItemAtIndexPath:pathCopy];
    [v11 frame];

    UIRectInset();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    subviews = [viewCopy subviews];
    v21 = [subviews countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v35;
      do
      {
        v24 = 0;
        do
        {
          if (*v35 != v23)
          {
            objc_enumerationMutation(subviews);
          }

          v25 = *(*(&v34 + 1) + 8 * v24);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v25 frame];
            v41.origin.x = v26;
            v41.origin.y = v27;
            v41.size.width = v28;
            v41.size.height = v29;
            v40.origin.x = v13;
            v40.origin.y = v15;
            v40.size.width = v17;
            v40.size.height = v19;
            if (CGRectIntersectsRect(v40, v41))
            {
              [v25 setHidden:hiddenCopy];
            }
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [subviews countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v22);
    }

    delegate = [(TUICandidateGrid *)self delegate];
    v31 = objc_opt_respondsToSelector();

    if (v31)
    {
      delegate2 = [(TUICandidateGrid *)self delegate];
      v33 = delegate2;
      if (!hiddenCopy)
      {
        v13 = *MEMORY[0x1E695F050];
        v15 = *(MEMORY[0x1E695F050] + 8);
        v17 = *(MEMORY[0x1E695F050] + 16);
        v19 = *(MEMORY[0x1E695F050] + 24);
      }

      [delegate2 candidateGrid:self didMoveHighlightFrame:{v13, v15, v17, v19}];
    }
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = cellCopy;
    v11 = [viewCopy layoutAttributesForItemAtIndexPath:pathCopy];
    style = [(TUICandidateGrid *)self style];
    showExtraLineBeforeFirstRow = [style showExtraLineBeforeFirstRow];

    [v11 frame];
    v15 = v14;
    [(TUICandidateGrid *)self selectedRowY];
    if (v15 == v16)
    {
      selectedIndexPath = [(TUICandidateGrid *)self selectedIndexPath];
      v18 = selectedIndexPath != 0;
    }

    else
    {
      v18 = 0;
    }

    selectedRowHighlightView = [(TUICandidateGrid *)self selectedRowHighlightView];
    [selectedRowHighlightView zPosition];
    [v10 setZPosition:v20 + 1.0];

    [v10 setRowSelected:v18];
    selectedIndexPath2 = [(TUICandidateGrid *)self selectedIndexPath];
    [v10 setSelected:{objc_msgSend(selectedIndexPath2, "isEqual:", pathCopy)}];

    [v10 setCandidateNumber:{-[TUICandidateGrid candidateNumberForIndexPath:](self, "candidateNumberForIndexPath:", pathCopy)}];
    if ([(TUICandidateGrid *)self candidateNumberEnabled])
    {
      style2 = [(TUICandidateGrid *)self style];
      layoutOrientation = [style2 layoutOrientation];

      if (layoutOrientation == 1)
      {
        v24 = 1;
      }

      else
      {
        rowType = [(TUICandidateGrid *)self rowType];
        v26 = rowType == 0;
        if ([(TUICandidateGrid *)self rowType]== 1)
        {
          style3 = [(TUICandidateGrid *)self style];
          columnsCount = [style3 columnsCount];

          v26 = columnsCount == 1 || rowType == 0;
        }

        v24 = v18 || v26;
        selectedIndexPath3 = [(TUICandidateGrid *)self selectedIndexPath];
        if (selectedIndexPath3)
        {
        }

        else
        {
          v24 |= [v11 row] == showExtraLineBeforeFirstRow;
        }
      }
    }

    else
    {
      v24 = 0;
    }

    [v10 setShouldShowCandidateNumber:v24 & 1];
  }
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  delegate = [(TUICandidateGrid *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(TUICandidateGrid *)self delegate];
    v8 = [(TUICandidateGrid *)self candidateAtIndexPath:pathCopy];
    [delegate2 candidateGrid:self didAcceptCandidate:v8 atIndexPath:pathCopy];
  }
}

- (CGPoint)collectionView:(id)view targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  collectionViewLayout = [view collectionViewLayout];
  firstVisibleIndexPath = [(TUICandidateGrid *)self firstVisibleIndexPath];
  if (firstVisibleIndexPath && [(TUICandidateGrid *)self indexPathIsValid:firstVisibleIndexPath])
  {
    firstVisibleIndexPath2 = [(TUICandidateGrid *)self firstVisibleIndexPath];
    v10 = [collectionViewLayout layoutAttributesForItemAtIndexPath:firstVisibleIndexPath2];
    [v10 frame];
    x = v11;
    y = v12;

    if ([collectionViewLayout rowType] == 1)
    {
      style = [(TUICandidateGrid *)self style];
      [style rowHeight];
      v15 = v14;

      if (y < v15)
      {
        y = 0.0;
      }

      x = 0.0;
    }

    else
    {
      y = 0.0;
    }
  }

  v16 = x;
  v17 = y;
  result.y = v17;
  result.x = v16;
  return result;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v10.receiver = self;
  v10.super_class = TUICandidateGrid;
  if ([(TUICandidateGrid *)&v10 respondsToSelector:?])
  {
    return 1;
  }

  delegate = [(TUICandidateGrid *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = NSStringFromSelector(selector);
  v5 = [v8 rangeOfString:@"scrollView" options:1] != 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

- (void)scrollViewDidScroll:(id)scroll
{
  v47 = *MEMORY[0x1E69E9840];
  scrollCopy = scroll;
  collectionView = [(TUICandidateGrid *)self collectionView];
  v6 = [collectionView visibleSupplementaryViewsOfKind:@"GroupHeader"];

  collectionView2 = [(TUICandidateGrid *)self collectionView];
  [collectionView2 contentOffset];
  v9 = v8;
  v11 = v10;
  collectionView3 = [(TUICandidateGrid *)self collectionView];
  [collectionView3 bounds];
  v14 = v13;
  v16 = v15;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v17 = v6;
  v18 = [v17 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v43;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v43 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v42 + 1) + 8 * i);
        [v22 frame];
        v51.origin.x = v9;
        v51.origin.y = v11;
        v51.size.width = v14;
        v51.size.height = v16;
        v49 = CGRectIntersection(v48, v51);
        x = v49.origin.x;
        y = v49.origin.y;
        width = v49.size.width;
        height = v49.size.height;
        if (!CGRectIsNull(v49))
        {
          v50.origin.x = x;
          v50.origin.y = y;
          v50.size.width = width;
          v50.size.height = height;
          if (!CGRectIsEmpty(v50))
          {
            collectionView4 = [(TUICandidateGrid *)self collectionView];
            [v22 convertRect:collectionView4 fromView:{x, y, width, height}];
            v29 = v28;
            v31 = v30;
            v33 = v32;
            v35 = v34;

            [v22 setVisibleBounds:{v29, v31, v33, v35}];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v19);
  }

  style = [(TUICandidateGrid *)self style];
  if ([style layoutOrientation] == 1)
  {

LABEL_13:
    [(TUICandidateGrid *)self forceUpdateVisibleCells];
    goto LABEL_18;
  }

  if ([(TUICandidateGrid *)self candidateNumberEnabled])
  {
    style2 = [(TUICandidateGrid *)self style];
    columnsCount = [style2 columnsCount];

    if (columnsCount == 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

LABEL_18:
  delegate = [(TUICandidateGrid *)self delegate];
  v40 = objc_opt_respondsToSelector();

  if (v40)
  {
    delegate2 = [(TUICandidateGrid *)self delegate];
    [delegate2 scrollViewDidScroll:scrollCopy];
  }

  [(TUICandidateGrid *)self updateGradientLayerToCollectionView];
}

- (void)scrollViewDidChangeContentSize:(id)size
{
  sizeCopy = size;
  [(TUICandidateGrid *)self updateContentInset];
  [(TUICandidateGrid *)self updateGradientLayerToCollectionView];
  delegate = [(TUICandidateGrid *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(TUICandidateGrid *)self delegate];
    [sizeCopy contentSize];
    [delegate2 candidateGrid:self didChangeContentSize:?];
  }
}

- (double)collectionView:(id)view layout:(id)layout widthForGroupHeaderInSection:(int64_t)section
{
  v7 = [(TUICandidateGrid *)self candidateGroups:view];
  v8 = [v7 objectAtIndexedSubscript:section];
  title = [v8 title];

  if ([title length])
  {
    style = [(TUICandidateGrid *)self style];
    candidateFont = [style candidateFont];
    [title tui_optimizedSizeWithFont:candidateFont];
    v13 = v12 + 20.0;

    style2 = [(TUICandidateGrid *)self style];
    LOBYTE(candidateFont) = objc_opt_respondsToSelector();

    if (candidateFont)
    {
      style3 = [(TUICandidateGrid *)self style];
      [style3 groupHeaderPadding];
      v13 = v13 + v16;
    }
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  layoutCopy = layout;
  v10 = [(TUICandidateGrid *)self candidateAtIndexPath:path];
  if (![v10 isSlottedCandidate] || (objc_msgSend(v10, "isStickerCandidate") & 1) != 0)
  {
    [(TUICandidateGrid *)self rowHeight];
    v12 = v11;
    if ([layoutCopy rowType] != 1 || objc_msgSend(layoutCopy, "transitionState") != 1)
    {
LABEL_18:
      if ([v10 isStickerCandidate])
      {
        style = [(TUICandidateGrid *)self style];
        [style minimumCellWidth];
        v20 = v26;

        if (v12 >= v20)
        {
          v20 = v12;
        }
      }

      else
      {
        candidateNumberEnabled = [(TUICandidateGrid *)self candidateNumberEnabled];
        style2 = [(TUICandidateGrid *)self style];
        [TUICandidateCell widthForCandidate:v10 showCandidateNumber:candidateNumberEnabled style:style2];
        v20 = v29;
      }

      goto LABEL_23;
    }

    if ([(TUICandidateGrid *)self rowType])
    {
      style3 = [(TUICandidateGrid *)self style];
    }

    else
    {
      style3 = [(TUICandidateGrid *)self stylePending];
      if (!style3)
      {
        style4 = [(TUICandidateGrid *)self style];
        [style4 rowHeight];
        v24 = v33;

        v22 = 0;
LABEL_16:

        if (v24 > 0.0)
        {
          v12 = v24;
        }

        goto LABEL_18;
      }
    }

    v22 = style3;
    [style3 rowHeight];
    v24 = v23;
    goto LABEL_16;
  }

  slottedCandidatesCount = [(TUICandidateGrid *)self slottedCandidatesCount];
  style5 = [(TUICandidateGrid *)self style];
  maxNumberOfProactiveCells = [style5 maxNumberOfProactiveCells];

  if (maxNumberOfProactiveCells >= slottedCandidatesCount)
  {
    v17 = slottedCandidatesCount;
  }

  else
  {
    v17 = maxNumberOfProactiveCells;
  }

  if (v17 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  [viewCopy bounds];
  v20 = v19 / v18;
  [(TUICandidateGrid *)self rowHeight];
  v12 = v21;
LABEL_23:

  v30 = v20;
  v31 = v12;
  result.height = v31;
  result.width = v30;
  return result;
}

- (void)updateGradientLayerToCollectionView
{
  v18[2] = *MEMORY[0x1E69E9840];
  [(TUICandidateGrid *)self contentSize];
  v4 = v3;
  [(TUICandidateGrid *)self frame];
  Width = CGRectGetWidth(v19);
  style = [(TUICandidateGrid *)self style];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (([style widthOfGridGradient], v7 > 0.0) ? (v8 = v4 <= Width) : (v8 = 1), v8))
  {
    layer = [(UICollectionView *)self->_collectionView layer];
    [layer setMask:0];
  }

  else
  {
    layer2 = [MEMORY[0x1E6979380] layer];
    [(UICollectionView *)self->_collectionView bounds];
    [layer2 setFrame:?];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v18[0] = [whiteColor CGColor];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v18[1] = [clearColor CGColor];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    [layer2 setColors:v13];

    [layer2 setLocations:&unk_1F03D9050];
    [(UICollectionView *)self->_collectionView frame];
    v15 = v14;
    [style widthOfGridGradient];
    [layer2 setStartPoint:{(v15 - v16) / v15, 0.5}];
    [layer2 setEndPoint:{1.0, 0.5}];
    layer3 = [(UICollectionView *)self->_collectionView layer];
    [layer3 setMask:layer2];
  }
}

- (void)forceUpdateVisibleCells
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  collectionView = [(TUICandidateGrid *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        collectionView2 = [(TUICandidateGrid *)self collectionView];
        v11 = [collectionView2 cellForItemAtIndexPath:v9];

        collectionView3 = [(TUICandidateGrid *)self collectionView];
        [(TUICandidateGrid *)self collectionView:collectionView3 willDisplayCell:v11 forItemAtIndexPath:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)scrollToCandidateAtIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  collectionView = [(TUICandidateGrid *)self collectionView];
  v7 = [collectionView layoutAttributesForItemAtIndexPath:pathCopy];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  style = [(TUICandidateGrid *)self style];
  layoutOrientation = [style layoutOrientation];

  if (layoutOrientation)
  {
    v42.origin.x = v9;
    v42.origin.y = v11;
    v42.size.width = v13;
    v42.size.height = v15;
    MaxX = CGRectGetMaxX(v42);
    collectionView2 = [(TUICandidateGrid *)self collectionView];
    [collectionView2 bounds];
    v21 = MaxX - v20;

    v11 = 0.0;
  }

  else
  {
    if ([pathCopy section] || objc_msgSend(pathCopy, "item"))
    {
      v22 = v9;
    }

    else
    {
      v43.origin.x = v9;
      v43.origin.y = v11;
      v43.size.width = v13;
      v43.size.height = v15;
      v31 = CGRectGetMaxX(v43);
      [(TUICandidateGrid *)self bounds];
      Width = CGRectGetWidth(v44);
      [(TUICandidateGrid *)self arrowButtonSize];
      v34 = Width - v33;
      v22 = 0.0;
      if (v31 > v34 && ![(TUICandidateGrid *)self rowType]&& ![(TUICandidateGrid *)self showingSlottedCandidates])
      {
        collectionView3 = [(TUICandidateGrid *)self collectionView];
        [collectionView3 bounds];
        IsEmpty = CGRectIsEmpty(v45);

        if (!IsEmpty)
        {
          v46.origin.x = v9;
          v46.origin.y = v11;
          v46.size.width = v13;
          v46.size.height = v15;
          v37 = CGRectGetMaxX(v46);
          [(TUICandidateGrid *)self bounds];
          v38 = v37 - CGRectGetWidth(v47);
          [(TUICandidateGrid *)self arrowButtonSize];
          v22 = v38 + v39;
        }
      }
    }

    style2 = [(TUICandidateGrid *)self style];
    [style2 rowHeight];
    if (v11 >= v24)
    {
    }

    else
    {
      style3 = [(TUICandidateGrid *)self style];
      [style3 gridLinePadding];
      v27 = v26;

      if (v27 == 0.0)
      {
        v11 = 0.0;
      }
    }

    rowType = [(TUICandidateGrid *)self rowType];
    if (v22 < 0.0 || rowType == 1)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v22;
    }
  }

  collectionView4 = [(TUICandidateGrid *)self collectionView];
  [collectionView4 setContentOffset:animatedCopy animated:{v21, v11}];
}

- (void)updateSelectedRowHighlightView
{
  v29 = *MEMORY[0x1E69E9840];
  style = [(TUICandidateGrid *)self style];
  highlightedRowBackgroundColor = [style highlightedRowBackgroundColor];

  if (highlightedRowBackgroundColor)
  {
    indexPathsForSelectedRow = [(TUICandidateGrid *)self indexPathsForSelectedRow];
    [(TUICandidateGrid *)self bounds];
    Width = CGRectGetWidth(v31);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = indexPathsForSelectedRow;
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          collectionView = [(TUICandidateGrid *)self collectionView];
          v14 = [collectionView layoutAttributesForItemAtIndexPath:v12];

          [v14 frame];
          MinX = CGRectGetMinX(v32);
          if (Width >= MinX)
          {
            Width = MinX;
          }

          [v14 frame];
          MinY = CGRectGetMinY(v33);
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v9);
    }

    else
    {
      MinY = 0.0;
    }

    [(TUICandidateGrid *)self bounds];
    v17 = CGRectGetWidth(v34) - Width;
    style2 = [(TUICandidateGrid *)self style];
    [style2 rowHeight];
    v20 = v19;

    selectedRowHighlightView = [(TUICandidateGrid *)self selectedRowHighlightView];
    [selectedRowHighlightView setFrame:{Width, MinY, v17, v20}];

    selectedRowHighlightView2 = [(TUICandidateGrid *)self selectedRowHighlightView];
    [selectedRowHighlightView2 setHidden:0];
  }

  else
  {
    selectedRowHighlightView3 = [(TUICandidateGrid *)self selectedRowHighlightView];
    [selectedRowHighlightView3 setHidden:1];
  }
}

- (BOOL)handleNumberKey:(unint64_t)key
{
  v4 = [(TUICandidateGrid *)self indexPathForCandidateNumber:key];
  v5 = [(TUICandidateGrid *)self indexPathIsValid:v4];
  if (v5)
  {
    v6 = [(TUICandidateGrid *)self candidateAtIndexPath:v4];
    [(TUICandidateGrid *)self setSelectedIndexPath:v4];
    delegate = [(TUICandidateGrid *)self delegate];
    [delegate candidateGrid:self didAcceptCandidate:v6 atIndexPath:v4];
  }

  return v5;
}

- (int64_t)rowForCandidate:(id)candidate
{
  v4 = [(TUICandidateGrid *)self indexPathForCandidate:candidate];
  if (v4)
  {
    collectionView = [(TUICandidateGrid *)self collectionView];
    v6 = [collectionView layoutAttributesForItemAtIndexPath:v4];

    v7 = [v6 row];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (int64_t)viewOffsetForCandidate:(id)candidate
{
  v4 = [(TUICandidateGrid *)self indexPathForCandidate:candidate];
  if (v4)
  {
    collectionView = [(TUICandidateGrid *)self collectionView];
    v6 = [collectionView layoutAttributesForItemAtIndexPath:v4];

    [v6 frame];
    MinX = CGRectGetMinX(v9);
  }

  else
  {
    MinX = 0x7FFFFFFFFFFFFFFFLL;
  }

  return MinX;
}

- (id)indexPathForCandidate:(id)candidate
{
  v20 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  if (candidateCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    candidateGroups = [(TUICandidateGrid *)self candidateGroups];
    v6 = [candidateGroups countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = 0;
      v8 = *v16;
      while (2)
      {
        v9 = 0;
        v10 = v7;
        v7 += v6;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(candidateGroups);
          }

          candidates = [*(*(&v15 + 1) + 8 * v9) candidates];
          v12 = candidates;
          if (candidates)
          {
            v13 = [candidates indexOfObject:candidateCopy];
            if (v13 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v6 = [MEMORY[0x1E696AC88] indexPathForItem:v13 inSection:v10];

              goto LABEL_14;
            }
          }

          ++v10;

          ++v9;
        }

        while (v6 != v9);
        v6 = [candidateGroups countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)indexPathsForSelectedRow
{
  selectedIndexPath = [(TUICandidateGrid *)self selectedIndexPath];
  if ((selectedIndexPath && -[TUICandidateGrid indexPathIsValid:](self, "indexPathIsValid:", selectedIndexPath) || ([MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0], v4 = objc_claimAutoreleasedReturnValue(), selectedIndexPath, (selectedIndexPath = v4) != 0)) && -[TUICandidateGrid indexPathIsValid:](self, "indexPathIsValid:", selectedIndexPath))
  {
    collectionView = [(TUICandidateGrid *)self collectionView];
    v6 = [collectionView layoutAttributesForItemAtIndexPath:selectedIndexPath];

    [v6 frame];
    v7 = [(TUICandidateGrid *)self indexPathsInTheRowThatContainsFrame:?];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)indexPathsInTheRowThatContainsFrame:(CGRect)frame
{
  height = frame.size.height;
  y = frame.origin.y;
  v25 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  collectionView = [(TUICandidateGrid *)self collectionView];
  [collectionView bounds];
  v9 = v8;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  collectionView2 = [(TUICandidateGrid *)self collectionView];
  collectionViewLayout = [collectionView2 collectionViewLayout];
  v12 = [collectionViewLayout layoutAttributesForElementsInRect:{0.0, y, v9, height}];

  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        if (![v17 representedElementCategory])
        {
          indexPath = [v17 indexPath];
          [array addObject:indexPath];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  return array;
}

- (id)indexPathForCandidateNumber:(unint64_t)number
{
  v37 = *MEMORY[0x1E69E9840];
  if (number - 1 <= 8)
  {
    style = [(TUICandidateGrid *)self style];
    layoutOrientation = [style layoutOrientation];

    if (layoutOrientation == 1)
    {
      indexPath2 = [(TUICandidateGrid *)self indexPathForVerticalCandidateNumber:number];
      goto LABEL_29;
    }

    if (-[TUICandidateGrid rowType](self, "rowType") == 1 && (-[TUICandidateGrid style](self, "style"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 columnsCount], v8, v9 == 1))
    {
      [(TUICandidateGrid *)self visibleAttributes];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v10 = v34 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v32;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v32 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v31 + 1) + 8 * i);
            indexPath = [v15 indexPath];
            v17 = [(TUICandidateGrid *)self candidateNumberInVerticalLayoutForIndexPath:indexPath];

            if (v17 == number)
            {
              indexPath2 = [v15 indexPath];
LABEL_28:

              goto LABEL_29;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v31 objects:v36 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      indexPathsForSelectedRow = 0;
    }

    else
    {
      indexPathsForSelectedRow = [(TUICandidateGrid *)self indexPathsForSelectedRow];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = indexPathsForSelectedRow;
    v19 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v28;
      while (2)
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v10);
          }

          v23 = *(*(&v27 + 1) + 8 * j);
          collectionView = [(TUICandidateGrid *)self collectionView];
          v25 = [collectionView layoutAttributesForItemAtIndexPath:v23];

          if ([v25 candidateNumber] == number)
          {
            indexPath2 = [v25 indexPath];

            goto LABEL_28;
          }
        }

        v20 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }
  }

  indexPath2 = 0;
LABEL_29:

  return indexPath2;
}

- (id)indexPathForVerticalCandidateNumber:(unint64_t)number
{
  v31 = *MEMORY[0x1E69E9840];
  collectionView = [(TUICandidateGrid *)self collectionView];
  [collectionView visibleBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(TUICandidateGrid *)self visibleAttributes];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v29 = 0u;
  indexPath = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (indexPath)
  {
    v16 = 0;
    v17 = 0;
    v18 = *v27;
    v19 = number - 1;
    while (2)
    {
      v20 = 0;
      v21 = v19 - v16;
      v16 += indexPath;
      do
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v22 = *(*(&v26 + 1) + 8 * v20);
        [v22 frame];
        MidX = CGRectGetMidX(v33);
        v34.origin.x = v7;
        v34.origin.y = v9;
        v34.size.width = v11;
        v34.size.height = v13;
        if (MidX > CGRectGetMaxX(v34))
        {
          ++v17;
        }

        if (v21 + v17 == v20)
        {
          [v22 frame];
          v24 = CGRectGetMidX(v35);
          v36.origin.x = v7;
          v36.origin.y = v9;
          v36.size.width = v11;
          v36.size.height = v13;
          if (v24 > CGRectGetMinX(v36))
          {
            indexPath = [v22 indexPath];
            goto LABEL_14;
          }
        }

        ++v20;
      }

      while (indexPath != v20);
      indexPath = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (indexPath)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return indexPath;
}

- (unint64_t)candidateNumberInVerticalLayoutForIndexPath:(id)path
{
  v33 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([(TUICandidateGrid *)self candidateNumberEnabled])
  {
    collectionView = [(TUICandidateGrid *)self collectionView];
    [collectionView visibleBounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [(TUICandidateGrid *)self visibleAttributes];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = v31 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = 0;
      v19 = *v29;
      while (2)
      {
        v20 = 0;
        v21 = v18;
        v18 += v16;
        do
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v22 = *(*(&v28 + 1) + 8 * v20);
          [v22 frame];
          MidX = CGRectGetMidX(v34);
          v35.origin.x = v7;
          v35.origin.y = v9;
          v35.size.width = v11;
          v35.size.height = v13;
          if (MidX > CGRectGetMaxX(v35))
          {
            ++v17;
          }

          indexPath = [v22 indexPath];
          v25 = [indexPath isEqual:pathCopy];

          if (v25)
          {
            v18 = v21;
            goto LABEL_16;
          }

          ++v21;
          ++v20;
        }

        while (v16 != v20);
        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }

LABEL_16:

    v26 = v18 - v17 + 1;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)visibleAttributes
{
  collectionView = [(TUICandidateGrid *)self collectionView];
  [collectionView visibleBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  collectionView2 = [(TUICandidateGrid *)self collectionView];
  collectionViewLayout = [collectionView2 collectionViewLayout];
  v14 = [collectionViewLayout layoutAttributesForElementsInRect:{v5, v7, v9, v11}];

  v15 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_61];
  v16 = [v14 filteredArrayUsingPredicate:v15];

  v17 = [v16 sortedArrayUsingComparator:&__block_literal_global_63];

  return v17;
}

uint64_t __37__TUICandidateGrid_visibleAttributes__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 indexPath];
  v6 = [v4 indexPath];

  v7 = [v5 compare:v6];
  return v7;
}

- (unint64_t)candidateNumberInHorizontalLayoutForIndexPath:(id)path
{
  v36 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  style = [(TUICandidateGrid *)self style];
  columnsCount = [style columnsCount];

  collectionView = [(TUICandidateGrid *)self collectionView];
  v8 = collectionView;
  if (columnsCount == 1)
  {
    [collectionView visibleBounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [(TUICandidateGrid *)self visibleAttributes];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = v34 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = 0;
      v22 = *v32;
      while (2)
      {
        v23 = 0;
        v24 = v21;
        v21 += v19;
        do
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v17);
          }

          v25 = *(*(&v31 + 1) + 8 * v23);
          [v25 frame];
          MidY = CGRectGetMidY(v37);
          v38.origin.x = v10;
          v38.origin.y = v12;
          v38.size.width = v14;
          v38.size.height = v16;
          if (MidY < CGRectGetMinY(v38))
          {
            ++v20;
          }

          indexPath = [v25 indexPath];
          v28 = [indexPath isEqual:pathCopy];

          if (v28)
          {
            v21 = v24;
            goto LABEL_16;
          }

          ++v24;
          ++v23;
        }

        while (v19 != v23);
        v19 = [v17 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

LABEL_16:

    candidateNumber = v21 - v20 + 1;
  }

  else
  {
    v17 = [collectionView layoutAttributesForItemAtIndexPath:pathCopy];

    candidateNumber = [v17 candidateNumber];
  }

  return candidateNumber;
}

- (BOOL)canExpandCandidateGrid
{
  style = [(TUICandidateGrid *)self style];
  if ([style scrollDisabled])
  {
    allowCandidateGridExpanding = 1;
  }

  else
  {
    style2 = [(TUICandidateGrid *)self style];
    allowCandidateGridExpanding = [style2 allowCandidateGridExpanding];
  }

  return allowCandidateGridExpanding;
}

- (unint64_t)candidateNumberForIndexPath:(id)path
{
  pathCopy = path;
  style = [(TUICandidateGrid *)self style];
  layoutOrientation = [style layoutOrientation];

  if (layoutOrientation == 1)
  {
    v7 = [(TUICandidateGrid *)self candidateNumberInVerticalLayoutForIndexPath:pathCopy];
  }

  else
  {
    v7 = [(TUICandidateGrid *)self candidateNumberInHorizontalLayoutForIndexPath:pathCopy];
  }

  v8 = v7;

  return v8;
}

- (void)showCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity
{
  v4 = *&granularity;
  directionCopy = direction;
  v7 = [TUICandidateGrid indexPathInForwardDirection:"indexPathInForwardDirection:granularity:" granularity:?];
  if (!v7)
  {
    selectedIndexPath = [(TUICandidateGrid *)self selectedIndexPath];

    if (selectedIndexPath)
    {
      return;
    }

    if (directionCopy)
    {
      firstIndexPath = [(TUICandidateGrid *)self firstIndexPath];
    }

    else
    {
      style = [(TUICandidateGrid *)self style];
      dontSelectLastItemByBackwardMoving = [style dontSelectLastItemByBackwardMoving];

      if (dontSelectLastItemByBackwardMoving)
      {
        return;
      }

      firstIndexPath = [(TUICandidateGrid *)self lastIndexPath];
    }

    v7 = firstIndexPath;
    if (!firstIndexPath)
    {
      return;
    }
  }

  [(TUICandidateGrid *)self setSelectedIndexPath:v7 animated:0 scrollPosition:0];
  v31 = v7;
  style2 = [(TUICandidateGrid *)self style];
  showOneMoreCandidate = [style2 showOneMoreCandidate];

  v10 = v31;
  if (showOneMoreCandidate)
  {
    v11 = [(TUICandidateGrid *)self indexPathInForwardDirection:directionCopy granularity:v4];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v31;
    }

    v10 = v12;
  }

  if (![(TUICandidateGrid *)self indexPathIsFullyVisible:v10 granularity:v4])
  {
    if (-[TUICandidateGrid canExpandCandidateGrid](self, "canExpandCandidateGrid") && ((-[TUICandidateGrid style](self, "style"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 showOneMoreCandidate], v13, !v14) || directionCopy))
    {
      delegate = [(TUICandidateGrid *)self delegate];
      [delegate candidateGridNeedsToExpand:self];
    }

    else
    {
      style3 = [(TUICandidateGrid *)self style];
      showOneMoreCandidate2 = [style3 showOneMoreCandidate];

      if (showOneMoreCandidate2 && directionCopy)
      {
        v17 = 1;
        v18 = 36;
      }

      else
      {
        style4 = [(TUICandidateGrid *)self style];
        layoutOrientation = [style4 layoutOrientation];
        v17 = v4 != 1 || layoutOrientation != 1;

        if (v17)
        {
          v18 = 9;
        }

        else
        {
          v18 = 33;
        }
      }

      style5 = [(TUICandidateGrid *)self style];
      columnsCount = [style5 columnsCount];
      if (v4)
      {
        v26 = 0;
      }

      else
      {
        v26 = columnsCount == 1;
      }

      v27 = !v26;

      delegate = [(TUICandidateGrid *)self collectionView];
      [delegate scrollToItemAtIndexPath:v10 atScrollPosition:v18 animated:v27 & v17];
    }
  }
}

- (BOOL)hasCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity
{
  v4 = *&granularity;
  directionCopy = direction;
  selectedIndexPath = [(TUICandidateGrid *)self selectedIndexPath];

  if (selectedIndexPath)
  {
    v8 = [(TUICandidateGrid *)self indexPathInForwardDirection:directionCopy granularity:v4];
    candidateGroups = v8;
  }

  else
  {
    candidateGroups = [(TUICandidateGrid *)self candidateGroups];
    v8 = [candidateGroups count];
  }

  v10 = v8 != 0;

  return v10;
}

- (BOOL)indexPathIsFullyVisible:(id)visible granularity:(int)granularity
{
  v41 = *MEMORY[0x1E69E9840];
  visibleCopy = visible;
  collectionView = [(TUICandidateGrid *)self collectionView];
  [collectionView visibleBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(TUICandidateGrid *)self arrowButtonSize];
  v17 = v16;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  collectionView2 = [(TUICandidateGrid *)self collectionView];
  indexPathsForVisibleItems = [collectionView2 indexPathsForVisibleItems];

  v20 = [indexPathsForVisibleItems countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = v13 - v17;
    v23 = *v37;
    while (2)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        if ([visibleCopy isEqual:*(*(&v36 + 1) + 8 * i)])
        {
          collectionView3 = [(TUICandidateGrid *)self collectionView];
          v27 = [collectionView3 layoutAttributesForItemAtIndexPath:visibleCopy];

          style = [(TUICandidateGrid *)self style];
          if (objc_opt_respondsToSelector())
          {
            style2 = [(TUICandidateGrid *)self style];
            shouldScrollIfShowingLastVisibleRow = [style2 shouldScrollIfShowingLastVisibleRow];

            if (((granularity == 1) & shouldScrollIfShowingLastVisibleRow) != 0)
            {
              v15 = v15 + -1.0;
            }
          }

          else
          {
          }

          [v27 frame];
          v43.origin.x = v31;
          v43.origin.y = v32;
          v43.size.width = v33;
          v43.size.height = v34;
          v42.origin.x = v9;
          v42.origin.y = v11;
          v42.size.width = v22;
          v42.size.height = v15;
          v25 = CGRectContainsRect(v42, v43);

          goto LABEL_16;
        }
      }

      v21 = [indexPathsForVisibleItems countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0;
LABEL_16:

  return v25;
}

- (id)indexPathInForwardDirection:(BOOL)direction granularity:(int)granularity
{
  directionCopy = direction;
  v104 = *MEMORY[0x1E69E9840];
  selectedIndexPath = [(TUICandidateGrid *)self selectedIndexPath];
  if (![(TUICandidateGrid *)self indexPathIsValid:selectedIndexPath])
  {
    goto LABEL_63;
  }

  if (granularity)
  {
    if (granularity == 1)
    {
      style = [(TUICandidateGrid *)self style];
      layoutOrientation = [style layoutOrientation];

      collectionView = [(TUICandidateGrid *)self collectionView];
      v11 = [collectionView layoutAttributesForItemAtIndexPath:selectedIndexPath];
      [v11 frame];
      v15 = v14;
      v17 = v16;
      if (layoutOrientation == 1)
      {
        v18 = v12;
        v19 = v13;

        collectionView2 = [(TUICandidateGrid *)self collectionView];
        [collectionView2 bounds];
        v22 = 1.0;
        if (directionCopy)
        {
          v22 = -1.0;
        }

        v23 = v18 + v21 * v22;

        collectionView3 = [(TUICandidateGrid *)self collectionView];
        collectionViewLayout = [collectionView3 collectionViewLayout];
        v26 = [collectionViewLayout layoutAttributesForElementsInRect:{v23, v15, v19, v17}];

        v27 = [v26 sortedArrayUsingComparator:&__block_literal_global_55];

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        if (directionCopy)
        {
          reverseObjectEnumerator = v27;
        }

        else
        {
          reverseObjectEnumerator = [v27 reverseObjectEnumerator];
        }

        v67 = reverseObjectEnumerator;
        indexPath = [reverseObjectEnumerator countByEnumeratingWithState:&v98 objects:v103 count:16];
        if (indexPath)
        {
          v68 = *v99;
          while (2)
          {
            for (i = 0; i != indexPath; i = i + 1)
            {
              if (*v99 != v68)
              {
                objc_enumerationMutation(v67);
              }

              v70 = *(*(&v98 + 1) + 8 * i);
              if (![v70 representedElementCategory])
              {
                [v70 frame];
                v113.origin.x = v71;
                v113.origin.y = v72;
                v113.size.width = v73;
                v113.size.height = v74;
                v108.origin.x = v23;
                v108.origin.y = v15;
                v108.size.width = v19;
                v108.size.height = v17;
                v109 = CGRectIntersection(v108, v113);
                if (v109.size.width > v19 * 0.25)
                {
                  indexPath = [v70 indexPath];
                  goto LABEL_51;
                }
              }
            }

            indexPath = [v67 countByEnumeratingWithState:&v98 objects:v103 count:16];
            if (indexPath)
            {
              continue;
            }

            break;
          }
        }

LABEL_51:
      }

      else
      {

        v39 = -1.0;
        if (directionCopy)
        {
          v39 = 1.0;
        }

        v40 = v15 + v17 * v39;
        [(TUICandidateGrid *)self bounds];
        v42 = v41;
        collectionView4 = [(TUICandidateGrid *)self collectionView];
        collectionViewLayout2 = [collectionView4 collectionViewLayout];
        v45 = [collectionViewLayout2 layoutAttributesForElementsInRect:{0.0, v40, v42, v17}];

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v27 = v45;
        v46 = [v27 countByEnumeratingWithState:&v94 objects:v102 count:16];
        if (v46)
        {
          v47 = v46;
          indexPath = 0;
          v48 = *v95;
          v49 = 1.79769313e308;
          while (2)
          {
            for (j = 0; j != v47; ++j)
            {
              if (*v95 != v48)
              {
                objc_enumerationMutation(v27);
              }

              v51 = *(*(&v94 + 1) + 8 * j);
              if (![v51 representedElementCategory])
              {
                [v51 frame];
                MinX = CGRectGetMinX(v106);
                [(TUICandidateGrid *)self lastUserSelectedCursorX];
                if (MinX < v53)
                {
                  [v51 frame];
                  MaxX = CGRectGetMaxX(v107);
                  [(TUICandidateGrid *)self lastUserSelectedCursorX];
                  if (MaxX > v55)
                  {
                    indexPath2 = [v51 indexPath];

                    indexPath = indexPath2;
                    goto LABEL_53;
                  }
                }

                [v51 frame];
                UIRectGetCenter();
                v57 = v56;
                [(TUICandidateGrid *)self lastUserSelectedCursorX];
                v59 = v57 - v58;
                if (v59 >= 0.0)
                {
                  v60 = v59;
                }

                else
                {
                  v60 = -v59;
                }

                if (v60 < v49)
                {
                  indexPath3 = [v51 indexPath];

                  v49 = v60;
                  indexPath = indexPath3;
                }
              }
            }

            v47 = [v27 countByEnumeratingWithState:&v94 objects:v102 count:16];
            if (v47)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          indexPath = 0;
        }

LABEL_53:
      }
    }

    else
    {
      indexPath = 0;
    }
  }

  else
  {
    section = [selectedIndexPath section];
    v30 = [selectedIndexPath row];
    if (directionCopy)
    {
      v31 = v30 + 1;
    }

    else
    {
      v31 = v30 - 1;
    }

    if ((v31 & 0x8000000000000000) != 0)
    {
      if (section-- < 1)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        candidateGroups = [(TUICandidateGrid *)self candidateGroups];
        v64 = [candidateGroups objectAtIndexedSubscript:section];
        candidates = [v64 candidates];
        v31 = [candidates count] - 1;
      }
    }

    else
    {
      candidateGroups2 = [(TUICandidateGrid *)self candidateGroups];
      v33 = [candidateGroups2 objectAtIndexedSubscript:section];
      candidates2 = [v33 candidates];
      v35 = [candidates2 count];

      if (v31 >= v35)
      {
        ++section;
        candidateGroups3 = [(TUICandidateGrid *)self candidateGroups];
        v37 = [candidateGroups3 count];

        if (section >= v37)
        {
          v31 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = 0;
        }
      }
    }

    indexPath = [MEMORY[0x1E696AC88] indexPathForRow:v31 inSection:section];
  }

  if (![(TUICandidateGrid *)self indexPathIsValid:indexPath, v94])
  {

LABEL_63:
    indexPath = 0;
    goto LABEL_64;
  }

  if (!granularity && indexPath)
  {
    collectionView5 = [(TUICandidateGrid *)self collectionView];
    v76 = [collectionView5 layoutAttributesForItemAtIndexPath:indexPath];
    [v76 frame];
    v78 = v77;
    v80 = v79;
    v82 = v81;
    v84 = v83;

    v110.origin.x = v78;
    v110.origin.y = v80;
    v110.size.width = v82;
    v110.size.height = v84;
    if (CGRectGetMinX(v110) == 0.0)
    {
      v85 = 0.0;
    }

    else
    {
      v111.origin.x = v78;
      v111.origin.y = v80;
      v111.size.width = v82;
      v111.size.height = v84;
      v87 = CGRectGetMaxX(v111);
      collectionView6 = [(TUICandidateGrid *)self collectionView];
      [collectionView6 bounds];
      v89 = CGRectGetMaxX(v112);

      v90 = v78;
      v91 = v80;
      v92 = v82;
      v93 = v84;
      if (v87 == v89)
      {
        v85 = CGRectGetMaxX(*&v90);
      }

      else
      {
        UIRectGetCenter();
      }
    }

    [(TUICandidateGrid *)self setLastUserSelectedCursorX:v85];
  }

LABEL_64:

  return indexPath;
}

uint64_t __60__TUICandidateGrid_indexPathInForwardDirection_granularity___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 indexPath];
  v6 = [v4 indexPath];

  v7 = [v5 compare:v6];
  return v7;
}

- (TIKeyboardCandidate)selectedCandidate
{
  selectedIndexPath = [(TUICandidateGrid *)self selectedIndexPath];
  v4 = [(TUICandidateGrid *)self candidateAtIndexPath:selectedIndexPath];

  return v4;
}

- (BOOL)indexPathIsValid:(id)valid
{
  validCopy = valid;
  v5 = validCopy;
  if (!validCopy || [validCopy section] < 0 || objc_msgSend(v5, "row") < 0)
  {
    v12 = 0;
  }

  else
  {
    candidateGroups = [(TUICandidateGrid *)self candidateGroups];
    v7 = [candidateGroups count];
    if (v7 <= [v5 section])
    {
      v12 = 0;
    }

    else
    {
      candidateGroups2 = [(TUICandidateGrid *)self candidateGroups];
      v9 = [candidateGroups2 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
      candidates = [v9 candidates];
      v11 = [candidates count];
      v12 = v11 > [v5 row];
    }
  }

  return v12;
}

- (void)setSelectedIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position
{
  animatedCopy = animated;
  pathCopy = path;
  selectedIndexPath = self->_selectedIndexPath;
  if (selectedIndexPath != pathCopy || [(NSIndexPath *)selectedIndexPath isEqual:pathCopy])
  {
    objc_storeStrong(&self->_selectedIndexPath, path);
    if (pathCopy && -[TUICandidateGrid indexPathIsValid:](self, "indexPathIsValid:", pathCopy) && (-[TUICandidateGrid collectionView](self, "collectionView"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 numberOfItemsInSection:{-[NSIndexPath section](pathCopy, "section")}], v13 = -[NSIndexPath row](pathCopy, "row"), v11, v12 > v13))
    {
      collectionView = [(TUICandidateGrid *)self collectionView];
      [collectionView selectItemAtIndexPath:pathCopy animated:animatedCopy scrollPosition:position];

      collectionView2 = [(TUICandidateGrid *)self collectionView];
      firstObject = [collectionView2 layoutAttributesForItemAtIndexPath:pathCopy];

      [firstObject frame];
      [(TUICandidateGrid *)self setSelectedRowY:v17];
    }

    else
    {
      collectionView3 = [(TUICandidateGrid *)self collectionView];
      indexPathsForSelectedItems = [collectionView3 indexPathsForSelectedItems];
      firstObject = [indexPathsForSelectedItems firstObject];

      if (firstObject)
      {
        collectionView4 = [(TUICandidateGrid *)self collectionView];
        [collectionView4 deselectItemAtIndexPath:firstObject animated:0];
      }
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__TUICandidateGrid_setSelectedIndexPath_animated_scrollPosition___block_invoke;
    v22[3] = &unk_1E72D83A0;
    v22[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v22];
    delegate = [(TUICandidateGrid *)self delegate];
    [delegate candidateGridSelectionDidChange:self];

    [(TUICandidateGrid *)self didMoveHighlightFrame];
  }
}

uint64_t __65__TUICandidateGrid_setSelectedIndexPath_animated_scrollPosition___block_invoke(uint64_t a1)
{
  [*(a1 + 32) forceUpdateVisibleCells];
  v2 = *(a1 + 32);

  return [v2 updateSelectedRowHighlightView];
}

- (id)lastIndexPath
{
  candidateGroups = [(TUICandidateGrid *)self candidateGroups];
  if (![candidateGroups count])
  {
    v15 = 0;
    goto LABEL_5;
  }

  candidateGroups2 = [(TUICandidateGrid *)self candidateGroups];
  candidateGroups3 = [(TUICandidateGrid *)self candidateGroups];
  v6 = [candidateGroups2 objectAtIndexedSubscript:{objc_msgSend(candidateGroups3, "count") - 1}];
  candidates = [v6 candidates];
  v8 = [candidates count];

  if (v8)
  {
    v9 = MEMORY[0x1E696AC88];
    candidateGroups = [(TUICandidateGrid *)self candidateGroups];
    candidateGroups4 = [(TUICandidateGrid *)self candidateGroups];
    v11 = [candidateGroups objectAtIndexedSubscript:{objc_msgSend(candidateGroups4, "count") - 1}];
    candidates2 = [v11 candidates];
    v13 = [candidates2 count] - 1;
    candidateGroups5 = [(TUICandidateGrid *)self candidateGroups];
    v15 = [v9 indexPathForRow:v13 inSection:{objc_msgSend(candidateGroups5, "count") - 1}];

LABEL_5:
    goto LABEL_7;
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (NSIndexPath)firstIndexPath
{
  candidateGroups = [(TUICandidateGrid *)self candidateGroups];
  if (![candidateGroups count])
  {

    goto LABEL_10;
  }

  candidateGroups2 = [(TUICandidateGrid *)self candidateGroups];
  v5 = [candidateGroups2 objectAtIndexedSubscript:0];
  candidates = [v5 candidates];
  v7 = [candidates count];

  if (!v7)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v8 = [(TUICandidateGrid *)self numberOfTransliterationCandidatesInSection:0];
  style = [(TUICandidateGrid *)self style];
  skipInlineCandidate = [style skipInlineCandidate];

  if (skipInlineCandidate)
  {
    candidateGroups3 = [(TUICandidateGrid *)self candidateGroups];
    v12 = [candidateGroups3 objectAtIndexedSubscript:0];
    candidates2 = [v12 candidates];
    v14 = [candidates2 count];

    if (v8 < v14)
    {
      candidateGroups4 = [(TUICandidateGrid *)self candidateGroups];
      v16 = [candidateGroups4 objectAtIndexedSubscript:0];
      candidates3 = [v16 candidates];
      v18 = [candidates3 objectAtIndexedSubscript:v8];

      if (objc_opt_respondsToSelector())
      {
        v8 += [v18 isInlineCandidate];
      }
    }
  }

  v19 = [MEMORY[0x1E696AC88] indexPathForItem:v8 inSection:0];
LABEL_11:

  return v19;
}

- (void)updateCollectionViewFrameForArrowButton
{
  [(TUICandidateGrid *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(TUICandidateGrid *)self isArrowButtonVisible])
  {
    [(TUICandidateGrid *)self arrowButtonSize];
    v8 = v8 - v11;
  }

  style = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    style2 = [(TUICandidateGrid *)self style];
    if ([style2 shouldUpdateCollectionViewWidthForArrowButtonVisibility])
    {
      collectionView = [(TUICandidateGrid *)self collectionView];
      [collectionView frame];
      v16 = v15;

      if (v8 == v16)
      {
        goto LABEL_9;
      }

      style = [(TUICandidateGrid *)self collectionView];
      [style setFrame:{v4, v6, v8, v10}];
    }

    else
    {
    }
  }

LABEL_9:

  [(TUICandidateGrid *)self updateGradientLayerToCollectionView];
}

- (CGSize)contentSize
{
  collectionView = [(TUICandidateGrid *)self collectionView];
  [collectionView contentSize];
  v5 = v4;
  v7 = v6;

  firstIndexPath = [(TUICandidateGrid *)self firstIndexPath];
  v9 = [firstIndexPath row];
  style = [(TUICandidateGrid *)self style];
  [style rowHeight];
  v12 = v11 * v9;

  if (v12 >= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v7 - v12;
  }

  v14 = v5;
  result.height = v13;
  result.width = v14;
  return result;
}

- (unint64_t)extraCandidatesCount
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  candidateGroups = [(TUICandidateGrid *)self candidateGroups];
  firstObject = [candidateGroups firstObject];
  candidates = [firstObject candidates];

  v6 = [candidates countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(candidates);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v9 += [v12 isAutofillExtraCandidate];
        v8 += [v12 isWritingToolsButtonCandidate];
      }

      v7 = [candidates countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  style = [(TUICandidateGrid *)self style];
  maxNumberOfProactiveCells = [style maxNumberOfProactiveCells];

  return ((v8 - maxNumberOfProactiveCells) & ~((v8 - maxNumberOfProactiveCells) >> 63)) + v9;
}

- (unint64_t)slottedCandidatesCount
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  candidateGroups = [(TUICandidateGrid *)self candidateGroups];
  firstObject = [candidateGroups firstObject];
  candidates = [firstObject candidates];

  v6 = [candidates countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(candidates);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [v11 isWritingToolsButtonCandidate];
        if ([v11 isSlottedCandidate] && (objc_msgSend(v11, "isAutofillExtraCandidate") & 1) == 0)
        {
          v8 += [v11 isStickerCandidate] ^ 1;
        }
      }

      v7 = [candidates countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (![(TUICandidateGrid *)self rowType])
  {
    style = [(TUICandidateGrid *)self style];
    maxNumberOfProactiveCells = [style maxNumberOfProactiveCells];

    if (v8 >= maxNumberOfProactiveCells)
    {
      return maxNumberOfProactiveCells;
    }
  }

  return v8;
}

- (id)candidateAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(TUICandidateGrid *)self indexPathIsValid:pathCopy])
  {
    candidateGroups = [(TUICandidateGrid *)self candidateGroups];
    v6 = [candidateGroups objectAtIndexedSubscript:{objc_msgSend(pathCopy, "section")}];
    candidates = [v6 candidates];
    v8 = [candidates objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)scrollToTop
{
  collectionView = [(TUICandidateGrid *)self collectionView];
  [collectionView setShowsVerticalScrollIndicator:0];

  style = [(TUICandidateGrid *)self style];
  layoutOrientation = [style layoutOrientation];

  if (layoutOrientation == 1)
  {
    collectionView2 = [(TUICandidateGrid *)self collectionView];
    [collectionView2 contentSize];
    v8 = v7 + -1.0;
    v9 = 1.0;
  }

  else
  {
    v9 = 1.0;
    v8 = 0.0;
  }

  collectionView3 = [(TUICandidateGrid *)self collectionView];
  [collectionView3 scrollRectToVisible:0 animated:{v8, 0.0, v9, v9}];

  collectionView4 = [(TUICandidateGrid *)self collectionView];
  [collectionView4 setShowsVerticalScrollIndicator:1];
}

- (double)rowHeight
{
  style = [(TUICandidateGrid *)self style];
  [style rowHeight];
  v5 = v4;

  [(TUICandidateGrid *)self maximumRowHeight];
  if (v5 >= v6)
  {
    v6 = v5;
  }

  [(TUICandidateGrid *)self setMaximumRowHeight:v6];
  style2 = [(TUICandidateGrid *)self style];
  [style2 rowHeight];
  v9 = v8;

  return v9;
}

- (void)updateBounce
{
  rowType = [(TUICandidateGrid *)self rowType];
  if (rowType == 1)
  {
    style = [(TUICandidateGrid *)self style];
    v4 = [style layoutOrientation] == 0;
  }

  else
  {
    v4 = 0;
  }

  collectionView = [(TUICandidateGrid *)self collectionView];
  [collectionView setAlwaysBounceVertical:v4];

  if (rowType == 1)
  {
  }
}

- (void)updateContentInset
{
  collectionView = [(TUICandidateGrid *)self collectionView];
  [collectionView contentInset];

  v4 = 0.0;
  Height = 0.0;
  if ([(TUICandidateGrid *)self rowType])
  {
    customHeader = [(TUICandidateGrid *)self customHeader];
    [customHeader frame];
    Height = CGRectGetHeight(v48);
  }

  collectionView2 = [(TUICandidateGrid *)self collectionView];
  [collectionView2 contentSize];
  v9 = v8;
  v11 = v10;

  style = [(TUICandidateGrid *)self style];
  layoutOrientation = [style layoutOrientation];

  style2 = [(TUICandidateGrid *)self style];
  [style2 rowHeight];
  v16 = v15;
  firstIndexPath = [(TUICandidateGrid *)self firstIndexPath];
  v18 = [firstIndexPath row];

  v19 = v11 - v16 * v18;
  if (layoutOrientation)
  {
    v20 = v9 - v16 * v18;
  }

  else
  {
    v20 = v9;
  }

  if (layoutOrientation)
  {
    v21 = v11;
  }

  else
  {
    v21 = v19;
  }

  if ([(TUICandidateGrid *)self rowType]== 1)
  {
    collectionView3 = [(TUICandidateGrid *)self collectionView];
    [collectionView3 bounds];
    v24 = v23;

    if (v21 < v24)
    {
      collectionView4 = [(TUICandidateGrid *)self collectionView];
      [collectionView4 bounds];
      v4 = v26 - v21;
    }
  }

  v27 = 0.0;
  if ([(TUICandidateGrid *)self rowType]== 1)
  {
    style3 = [(TUICandidateGrid *)self style];
    if ([style3 layoutOrientation] == 1)
    {
      collectionView5 = [(TUICandidateGrid *)self collectionView];
      [collectionView5 bounds];
      v31 = v30;

      if (v20 >= v31)
      {
        goto LABEL_17;
      }

      style3 = [(TUICandidateGrid *)self collectionView];
      [style3 bounds];
      v27 = v32 - v20;
    }
  }

LABEL_17:
  style4 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    style5 = [(TUICandidateGrid *)self style];
    shouldUpdateCollectionViewWidthForArrowButtonVisibility = [style5 shouldUpdateCollectionViewWidthForArrowButtonVisibility];
  }

  else
  {
    shouldUpdateCollectionViewWidthForArrowButtonVisibility = 0;
  }

  v36 = 0.0;
  if (![(TUICandidateGrid *)self rowType])
  {
    [(TUICandidateGrid *)self bounds];
    if (!((v9 <= v37) | shouldUpdateCollectionViewWidthForArrowButtonVisibility & 1))
    {
      [(TUICandidateGrid *)self arrowButtonSize];
      v36 = v38;
    }
  }

  style6 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    [(TUICandidateGrid *)self bounds];
    v41 = v40;

    if (v9 <= v41)
    {
      goto LABEL_27;
    }

    style6 = [(TUICandidateGrid *)self style];
    [style6 widthOfGridGradient];
    v36 = v36 + v42;
  }

LABEL_27:
  collectionView6 = [(TUICandidateGrid *)self collectionView];
  [collectionView6 setContentInset:{Height, v27, v4, v36}];

  if ([(TUICandidateGrid *)self rowType])
  {
    [(TUICandidateGrid *)self arrowButtonSize];
    v45 = v44;
  }

  else
  {
    v45 = 0.0;
  }

  collectionView7 = [(TUICandidateGrid *)self collectionView];
  [collectionView7 setVerticalScrollIndicatorInsets:{v45, 0.0, 0.0, 0.0}];
}

- (UIEdgeInsets)safeAreaInsets
{
  window = [(TUICandidateGrid *)self window];
  [window bounds];
  MaxY = CGRectGetMaxY(v17);
  window2 = [(TUICandidateGrid *)self window];
  [(TUICandidateGrid *)self bounds];
  [window2 convertRect:self fromView:?];
  v6 = MaxY - CGRectGetMaxY(v18);

  v7 = *MEMORY[0x1E69DDCE0];
  v8 = *(MEMORY[0x1E69DDCE0] + 8);
  v9 = *(MEMORY[0x1E69DDCE0] + 24);
  window3 = [(TUICandidateGrid *)self window];
  [window3 safeAreaInsets];
  v12 = fmax(v11 - fmax(v6, 0.0), 0.0);

  v13 = v7;
  v14 = v8;
  v15 = v12;
  v16 = v9;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)setCustomHeader:(id)header
{
  headerCopy = header;
  v14 = headerCopy;
  if (self->_customHeader != headerCopy)
  {
    objc_storeStrong(&self->_customHeader, header);
    [(TUICandidateGrid *)self updateContentInset];
    headerCopy = v14;
  }

  if (headerCopy)
  {
    v6 = [(TUICandidateGrid *)self rowType]== 1;
    headerCopy = v14;
    if (v6)
    {
      customHeader = [(TUICandidateGrid *)self customHeader];
      [customHeader frame];
      Height = CGRectGetHeight(v16);
      collectionViewLayout = [(TUICandidateGrid *)self collectionViewLayout];
      [collectionViewLayout setCustomHeaderHeight:Height];

      collectionViewLayout2 = [(TUICandidateGrid *)self collectionViewLayout];
      [collectionViewLayout2 invalidateLayout];

      collectionView = [(TUICandidateGrid *)self collectionView];
      v12 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
      v13 = [collectionView supplementaryViewForElementKind:@"CustomHeader" atIndexPath:v12];
      [v13 addSubview:v14];

      headerCopy = v14;
    }
  }
}

- (void)setCandidateNumberEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_candidateNumberEnabled = enabled;
  collectionViewLayout = [(TUICandidateGrid *)self collectionViewLayout];
  [collectionViewLayout setCandidateNumberEnabled:enabledCopy];
}

- (void)setRowType:(int64_t)type options:(unint64_t)options style:(id)style animated:(BOOL)animated animator:(id)animator completion:(id)completion
{
  animatedCopy = animated;
  styleCopy = style;
  animatorCopy = animator;
  completionCopy = completion;
  if (self->_rowType == type)
  {
    [(TUICandidateGrid *)self setStyle:styleCopy];
  }

  else
  {
    self->_rowType = type;
    style = [(TUICandidateGrid *)self style];

    if (!style)
    {
      [(TUICandidateGrid *)self setStyle:styleCopy];
    }

    objc_initWeak(location, self->_collectionView);
    [(TUICandidateGrid *)self updateBounce];
    WeakRetained = objc_loadWeakRetained(location);
    indexPathsForVisibleItems = [WeakRetained indexPathsForVisibleItems];
    v19 = [indexPathsForVisibleItems valueForKeyPath:@"@min.self"];
    [(TUICandidateGrid *)self setFirstVisibleIndexPath:v19];

    if (!type)
    {
      [(TUICandidateGrid *)self setLastUserSelectedCursorX:0.0];
    }

    if (animatedCopy)
    {
      collectionView = [(TUICandidateGrid *)self collectionView];
      [collectionView setShowsVerticalScrollIndicator:0];

      [(TUICandidateGrid *)self setAnimating:1];
      [(TUICandidateGrid *)self setStylePending:styleCopy];
      v21 = objc_loadWeakRetained(location);
      firstVisibleIndexPath = [(TUICandidateGrid *)self firstVisibleIndexPath];
      v23 = [v21 layoutAttributesForItemAtIndexPath:firstVisibleIndexPath];

      if (type == 1)
      {
        style2 = styleCopy;
      }

      else
      {
        style2 = [(TUICandidateGrid *)self style];
      }

      v28 = style2;
      v29 = objc_alloc_init(TUICandidateLayout);
      [(TUICandidateLayout *)v29 setRowType:1];
      [(TUICandidateLayout *)v29 setCandidateNumberEnabled:[(TUICandidateGrid *)self candidateNumberEnabled]];
      [(TUICandidateLayout *)v29 setTransitionState:1];
      firstVisibleIndexPath2 = [(TUICandidateGrid *)self firstVisibleIndexPath];
      [(TUICandidateLayout *)v29 setOldFirstVisibleIndexPath:firstVisibleIndexPath2];

      [v23 frame];
      MinX = CGRectGetMinX(v78);
      collectionView2 = [(TUICandidateGrid *)self collectionView];
      [collectionView2 contentOffset];
      [(TUICandidateLayout *)v29 setOldFirstVisibleOffset:MinX - v33];

      if (objc_opt_respondsToSelector())
      {
        shouldJustifyRow = [v28 shouldJustifyRow];
      }

      else
      {
        shouldJustifyRow = 0;
      }

      [(TUICandidateLayout *)v29 setShouldJustifyRow:shouldJustifyRow];
      -[TUICandidateLayout setColumnsCount:](v29, "setColumnsCount:", [v28 columnsCount]);
      -[TUICandidateLayout setLayoutOrientation:](v29, "setLayoutOrientation:", [v28 layoutOrientation]);
      [v28 gridPadding];
      [(TUICandidateLayout *)v29 setGridPadding:?];
      [v28 gridLinePadding];
      [(TUICandidateLayout *)v29 setGridLinePadding:?];
      v35 = objc_opt_respondsToSelector();
      v36 = 0.0;
      v37 = 0.0;
      if (v35)
      {
        [v28 interRowSpacing];
      }

      [(TUICandidateLayout *)v29 setInterRowSpacing:v37];
      if (objc_opt_respondsToSelector())
      {
        [v28 slottedCandidatesIterItemSpacing];
        v36 = v38;
      }

      [(TUICandidateLayout *)v29 setSlottedCandidatesIterItemSpacing:v36];
      if (objc_opt_respondsToSelector())
      {
        hideSlottedCellSeparators = [v28 hideSlottedCellSeparators];
      }

      else
      {
        hideSlottedCellSeparators = 0;
      }

      [(TUICandidateLayout *)v29 setHideSlottedCellSeparators:hideSlottedCellSeparators];
      [v28 gridLineOffset];
      [(TUICandidateLayout *)v29 setGridLineOffset:?];
      [(TUICandidateGrid *)self frame];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      [(TUICandidateGrid *)self arrowButtonOrigin];
      v49 = v48;
      v51 = v50;
      [(TUICandidateGrid *)self arrowButtonSize];
      v80.size.width = v52;
      v80.size.height = v53;
      v79.origin.x = v41;
      v79.origin.y = v43;
      v79.size.width = v45;
      v79.size.height = v47;
      v80.origin.x = v49;
      v80.origin.y = v51;
      [(TUICandidateLayout *)v29 setGridContainsArrowButton:CGRectContainsRect(v79, v80)];
      if (type == 1)
      {
        stylePending = [(TUICandidateGrid *)self stylePending];
        [(TUICandidateGrid *)self setStyle:stylePending reload:0];

        v55 = objc_loadWeakRetained(location);
        [v55 setCollectionViewLayout:v29 animated:0];

        v56 = objc_loadWeakRetained(location);
        [v56 layoutIfNeeded];

        [(TUICandidateGrid *)self forceUpdateVisibleCells];
        firstVisibleIndexPath3 = [(TUICandidateGrid *)self firstVisibleIndexPath];
        v58 = [(TUICandidateGrid *)self indexPathIsValid:firstVisibleIndexPath3];

        if (v58)
        {
          firstVisibleIndexPath4 = [(TUICandidateGrid *)self firstVisibleIndexPath];
          [(TUICandidateGrid *)self scrollToCandidateAtIndexPath:firstVisibleIndexPath4 animated:0];
        }

        v60 = [(TUICandidateLayout *)v29 copy];
        [v60 setTransitionState:2];
        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __74__TUICandidateGrid_setRowType_options_style_animated_animator_completion___block_invoke;
        v74[3] = &unk_1E72D8138;
        objc_copyWeak(&v76, location);
        v75 = v60;
        v61 = v60;
        [animatorCopy addAnimations:v74];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __74__TUICandidateGrid_setRowType_options_style_animated_animator_completion___block_invoke_2;
        v71[3] = &unk_1E72D7D90;
        objc_copyWeak(&v73, location);
        v71[4] = self;
        v72 = completionCopy;
        [animatorCopy addCompletion:v71];

        objc_destroyWeak(&v73);
        objc_destroyWeak(&v76);
      }

      else
      {
        v62 = [(TUICandidateLayout *)v29 copy];
        [v62 setTransitionState:2];
        v63 = objc_loadWeakRetained(location);
        [v63 setCollectionViewLayout:v62 animated:0];

        v64 = objc_loadWeakRetained(location);
        [v64 layoutIfNeeded];

        [(TUICandidateGrid *)self forceUpdateVisibleCells];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __74__TUICandidateGrid_setRowType_options_style_animated_animator_completion___block_invoke_3;
        v68[3] = &unk_1E72D8138;
        objc_copyWeak(&v70, location);
        v69 = v29;
        [animatorCopy addAnimations:v68];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __74__TUICandidateGrid_setRowType_options_style_animated_animator_completion___block_invoke_4;
        v65[3] = &unk_1E72D7D90;
        v65[4] = self;
        objc_copyWeak(&v67, location);
        v66 = completionCopy;
        [animatorCopy addCompletion:v65];

        objc_destroyWeak(&v67);
        objc_destroyWeak(&v70);
      }
    }

    else
    {
      [(TUICandidateGrid *)self setStyle:styleCopy];
      v25 = objc_loadWeakRetained(location);
      collectionViewLayout = [(TUICandidateGrid *)self collectionViewLayout];
      [v25 setCollectionViewLayout:collectionViewLayout];

      firstVisibleIndexPath5 = [(TUICandidateGrid *)self firstVisibleIndexPath];
      [(TUICandidateGrid *)self scrollToCandidateAtIndexPath:firstVisibleIndexPath5 animated:0];

      [(TUICandidateGrid *)self setFirstVisibleIndexPath:0];
      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 1);
      }
    }

    objc_destroyWeak(location);
  }
}

void __74__TUICandidateGrid_setRowType_options_style_animated_animator_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCollectionViewLayout:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 layoutIfNeeded];
}

uint64_t __74__TUICandidateGrid_setRowType_options_style_animated_animator_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [*(a1 + 32) collectionViewLayout];
  [WeakRetained setCollectionViewLayout:v3];

  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 setShowsVerticalScrollIndicator:1];

  [*(a1 + 32) setFirstVisibleIndexPath:0];
  [*(a1 + 32) setAnimating:0];
  v5 = [*(a1 + 32) stylePending];

  if (v5)
  {
    v6 = [*(a1 + 32) stylePending];
    [*(a1 + 32) setStyle:v6];
  }

  [*(a1 + 32) setStylePending:0];
  result = *(a1 + 40);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void __74__TUICandidateGrid_setRowType_options_style_animated_animator_completion___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCollectionViewLayout:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 layoutIfNeeded];
}

uint64_t __74__TUICandidateGrid_setRowType_options_style_animated_animator_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 stylePending];
  [v2 setStyle:v3 reload:0];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) collectionViewLayout];
  [WeakRetained setCollectionViewLayout:v5 animated:0];

  v6 = objc_loadWeakRetained((a1 + 48));
  [v6 setShowsVerticalScrollIndicator:1];

  v7 = *(a1 + 32);
  v8 = [v7 firstVisibleIndexPath];
  LODWORD(v7) = [v7 indexPathIsValid:v8];

  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [v9 firstVisibleIndexPath];
    [v9 scrollToCandidateAtIndexPath:v10 animated:0];
  }

  [*(a1 + 32) setFirstVisibleIndexPath:0];
  [*(a1 + 32) setAnimating:0];
  [*(a1 + 32) setStylePending:0];
  result = *(a1 + 40);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

- (void)setRowType:(int64_t)type options:(unint64_t)options animated:(BOOL)animated completion:(id)completion
{
  if (animated)
  {
    v9 = MEMORY[0x1E69DD278];
    completionCopy = completion;
    style2 = [[v9 alloc] initWithDuration:(options >> 16) & 7 curve:&__block_literal_global_42 animations:0.25];
    style = [(TUICandidateGrid *)self style];
    [(TUICandidateGrid *)self setRowType:type options:options style:style animated:1 animator:style2 completion:completionCopy];

    [style2 startAnimation];
  }

  else
  {
    completionCopy2 = completion;
    style2 = [(TUICandidateGrid *)self style];
    [TUICandidateGrid setRowType:"setRowType:options:style:animated:animator:completion:" options:type style:options animated:? animator:? completion:?];
  }
}

- (void)setStyle:(id)style reload:(BOOL)reload
{
  reloadCopy = reload;
  styleCopy = style;
  v156 = *MEMORY[0x1E69E9840];
  styleCopy2 = style;
  if (([(TUICandidateViewStyle *)self->_style isEqual:styleCopy2]& 1) != 0)
  {
    goto LABEL_53;
  }

  backgroundColor = [(TUICandidateViewStyle *)self->_style backgroundColor];
  backgroundColor2 = [styleCopy2 backgroundColor];
  if (backgroundColor == backgroundColor2)
  {
LABEL_5:
    v149 = styleCopy;
    lineColor = [(TUICandidateViewStyle *)self->_style lineColor];
    lineColor2 = [styleCopy2 lineColor];
    if (lineColor == lineColor2)
    {
      LOBYTE(v16) = 0;
    }

    else
    {
      [(TUICandidateViewStyle *)self->_style lineColor];
      v14 = v146 = reloadCopy;
      lineColor3 = [styleCopy2 lineColor];
      v16 = [v14 isEqual:lineColor3] ^ 1;

      reloadCopy = v146;
    }

    backgroundColor4 = v147;
    backgroundColor3 = v148;
    v17 = v16;
    styleCopy = v149;
    if (backgroundColor == backgroundColor2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  backgroundColor3 = [(TUICandidateViewStyle *)self->_style backgroundColor];
  backgroundColor4 = [styleCopy2 backgroundColor];
  if ([backgroundColor3 isEqual:backgroundColor4])
  {
    v147 = backgroundColor4;
    v148 = backgroundColor3;
    goto LABEL_5;
  }

  v17 = 1;
LABEL_10:

LABEL_11:
  hidesPartialCandidates = [(TUICandidateViewStyle *)self->_style hidesPartialCandidates];
  hidesPartialCandidates2 = [styleCopy2 hidesPartialCandidates];
  if (reloadCopy)
  {
    v20 = v17 | hidesPartialCandidates ^ hidesPartialCandidates2;
  }

  else
  {
    v20 = 0;
  }

  style = self->_style;
  if (style)
  {
    showsIndex = [(TUICandidateViewStyle *)style showsIndex];
    v23 = showsIndex ^ [styleCopy2 showsIndex];
  }

  else
  {
    v23 = 1;
  }

  objc_storeStrong(&self->_style, styleCopy);
  gridBackgroundColor = [styleCopy2 gridBackgroundColor];
  [styleCopy2 backgroundOpacity];
  if (v25 < 1.0)
  {
    v154 = 0.0;
    [gridBackgroundColor getRed:0 green:0 blue:0 alpha:&v154];
    v26 = v154;
    [styleCopy2 backgroundOpacity];
    v28 = [gridBackgroundColor colorWithAlphaComponent:v26 * v27];

    gridBackgroundColor = v28;
  }

  [(TUICandidateGrid *)self setBackgroundColor:gridBackgroundColor];
  textColor = [styleCopy2 textColor];
  collectionView = [(TUICandidateGrid *)self collectionView];
  [collectionView setTintColor:textColor];

  [styleCopy2 cornerRadius];
  [(TUICandidateGrid *)self _setContinuousCornerRadius:?];
  gridMaskedCorners = [styleCopy2 gridMaskedCorners];
  layer = [(TUICandidateGrid *)self layer];
  [layer setMaskedCorners:gridMaskedCorners];

  highlightedRowBackgroundColor = [styleCopy2 highlightedRowBackgroundColor];
  selectedRowHighlightView = [(TUICandidateGrid *)self selectedRowHighlightView];
  [selectedRowHighlightView setBackgroundColor:highlightedRowBackgroundColor];

  if ([styleCopy2 scrollDisabled])
  {
    v35 = 0;
  }

  else
  {
    v35 = [styleCopy2 dragGestureDisabled] ^ 1;
  }

  collectionView2 = [(TUICandidateGrid *)self collectionView];
  [collectionView2 setScrollEnabled:v35];

  [styleCopy2 foregroundOpacity];
  v38 = v37;
  collectionView3 = [(TUICandidateGrid *)self collectionView];
  [collectionView3 setAlpha:v38];

  [styleCopy2 gridPadding];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  singleRowLayout = [(TUICandidateGrid *)self singleRowLayout];
  [singleRowLayout setGridPadding:{v41, v43, v45, v47}];

  [styleCopy2 gridLinePadding];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  singleRowLayout2 = [(TUICandidateGrid *)self singleRowLayout];
  [singleRowLayout2 setGridLinePadding:{v50, v52, v54, v56}];

  [styleCopy2 gridLineOffset];
  v59 = v58;
  v61 = v60;
  singleRowLayout3 = [(TUICandidateGrid *)self singleRowLayout];
  [singleRowLayout3 setGridLineOffset:{v59, v61}];

  layoutOrientation = [styleCopy2 layoutOrientation];
  singleRowLayout4 = [(TUICandidateGrid *)self singleRowLayout];
  [singleRowLayout4 setLayoutOrientation:layoutOrientation];

  showsIndex2 = [styleCopy2 showsIndex];
  singleRowLayout5 = [(TUICandidateGrid *)self singleRowLayout];
  [singleRowLayout5 setShowsIndex:showsIndex2];

  style = [(TUICandidateGrid *)self style];
  showExtraLineBeforeFirstRow = [style showExtraLineBeforeFirstRow];
  singleRowLayout6 = [(TUICandidateGrid *)self singleRowLayout];
  [singleRowLayout6 setShowExtraLineBeforeFirstRow:showExtraLineBeforeFirstRow];

  fillGridWithLines = [styleCopy2 fillGridWithLines];
  singleRowLayout7 = [(TUICandidateGrid *)self singleRowLayout];
  [singleRowLayout7 setFillGridWithLines:fillGridWithLines];

  v72 = 0.0;
  v73 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [styleCopy2 cellTopOffset];
    v73 = v74;
  }

  singleRowLayout8 = [(TUICandidateGrid *)self singleRowLayout];
  [singleRowLayout8 setCellTopOffset:v73];

  if (objc_opt_respondsToSelector())
  {
    [styleCopy2 lineTopOffset];
    v72 = v76;
  }

  singleRowLayout9 = [(TUICandidateGrid *)self singleRowLayout];
  [singleRowLayout9 setLineTopOffset:v72];

  [styleCopy2 gridPadding];
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  multiRowLayout = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout setGridPadding:{v79, v81, v83, v85}];

  [styleCopy2 gridLinePadding];
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  multiRowLayout2 = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout2 setGridLinePadding:{v88, v90, v92, v94}];

  v96 = 0.0;
  v97 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [styleCopy2 interRowSpacing];
    v97 = v98;
  }

  multiRowLayout3 = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout3 setInterRowSpacing:v97];

  if (objc_opt_respondsToSelector())
  {
    [styleCopy2 slottedCandidatesIterItemSpacing];
    v96 = v100;
  }

  multiRowLayout4 = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout4 setSlottedCandidatesIterItemSpacing:v96];

  if (objc_opt_respondsToSelector())
  {
    hideSlottedCellSeparators = [styleCopy2 hideSlottedCellSeparators];
  }

  else
  {
    hideSlottedCellSeparators = 0;
  }

  multiRowLayout5 = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout5 setHideSlottedCellSeparators:hideSlottedCellSeparators];

  [styleCopy2 gridLineOffset];
  v105 = v104;
  v107 = v106;
  multiRowLayout6 = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout6 setGridLineOffset:{v105, v107}];

  [styleCopy2 minimumInterItemSpacing];
  v110 = v109;
  multiRowLayout7 = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout7 setMinimumInterItemSpacing:v110];

  layoutOrientation2 = [styleCopy2 layoutOrientation];
  multiRowLayout8 = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout8 setLayoutOrientation:layoutOrientation2];

  if (objc_opt_respondsToSelector())
  {
    shouldJustifyRow = [styleCopy2 shouldJustifyRow];
  }

  else
  {
    shouldJustifyRow = 0;
  }

  multiRowLayout9 = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout9 setShouldJustifyRow:shouldJustifyRow];

  columnsCount = [styleCopy2 columnsCount];
  multiRowLayout10 = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout10 setColumnsCount:columnsCount];

  showsIndex3 = [styleCopy2 showsIndex];
  multiRowLayout11 = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout11 setShowsIndex:showsIndex3];

  style2 = [(TUICandidateGrid *)self style];
  showExtraLineBeforeFirstRow2 = [style2 showExtraLineBeforeFirstRow];
  multiRowLayout12 = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout12 setShowExtraLineBeforeFirstRow:showExtraLineBeforeFirstRow2];

  fillGridWithLines2 = [styleCopy2 fillGridWithLines];
  multiRowLayout13 = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout13 setFillGridWithLines:fillGridWithLines2];

  v125 = 0.0;
  v126 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [styleCopy2 cellTopOffset];
    v126 = v127;
  }

  multiRowLayout14 = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout14 setCellTopOffset:v126];

  if (objc_opt_respondsToSelector())
  {
    [styleCopy2 lineTopOffset];
    v125 = v129;
  }

  multiRowLayout15 = [(TUICandidateGrid *)self multiRowLayout];
  [multiRowLayout15 setLineTopOffset:v125];

  [styleCopy2 singleSlottedCellMargin];
  v132 = v131;
  singleRowLayout10 = [(TUICandidateGrid *)self singleRowLayout];
  [singleRowLayout10 setSingleSlottedCellMargin:v132];

  [styleCopy2 minimumInterItemSpacing];
  v135 = v134;
  singleRowLayout11 = [(TUICandidateGrid *)self singleRowLayout];
  [singleRowLayout11 setMinimumInterItemSpacing:v135];

  style3 = [(TUICandidateGrid *)self style];
  -[TUICandidateGrid setClipsToBounds:](self, "setClipsToBounds:", [style3 doNotClipToBounds] ^ 1);

  [(TUICandidateGrid *)self updateBounce];
  if (v20)
  {
    collectionView4 = [(TUICandidateGrid *)self collectionView];
    [collectionView4 reloadData];
  }

  else
  {
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    collectionView5 = [(TUICandidateGrid *)self collectionView];
    visibleCells = [collectionView5 visibleCells];

    v141 = [visibleCells countByEnumeratingWithState:&v150 objects:v155 count:16];
    if (v141)
    {
      v142 = v141;
      v143 = *v151;
      do
      {
        for (i = 0; i != v142; ++i)
        {
          if (*v151 != v143)
          {
            objc_enumerationMutation(visibleCells);
          }

          [*(*(&v150 + 1) + 8 * i) setStyle:styleCopy2];
        }

        v142 = [visibleCells countByEnumeratingWithState:&v150 objects:v155 count:16];
      }

      while (v142);
    }

    collectionView4 = [(TUICandidateGrid *)self collectionView];
    collectionViewLayout = [collectionView4 collectionViewLayout];
    [collectionViewLayout invalidateLayout];
  }

  if (v23)
  {
    [(TUICandidateGrid *)self updateIndex];
  }

LABEL_53:
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if ([(TUICandidateGrid *)self animating])
  {
    [(TUICandidateGrid *)self setStylePending:styleCopy];
  }

  else
  {
    [(TUICandidateGrid *)self setStyle:styleCopy reload:1];
  }
}

- (void)updateIndex
{
  collectionView = [(TUICandidateGrid *)self collectionView];
  [collectionView _reloadSectionIndexTitles];

  collectionView2 = [(TUICandidateGrid *)self collectionView];
  v5 = [collectionView2 accessoryViewAtEdge:1];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:clearColor];

  [v5 _removeAllAnimations:0];
  style = [(TUICandidateGrid *)self style];
  if ([style showsIndex])
  {
    collectionView3 = [(TUICandidateGrid *)self collectionView];
    v9 = [(TUICandidateGrid *)self _sectionIndexTitlesForCollectionView:collectionView3];
    v10 = [v9 count];
    v11 = v10 != 0;
    if (v10)
    {
      v12 = 1.0;
    }

    else
    {
      v12 = 0.0;
    }
  }

  else
  {
    v11 = 0;
    v12 = 0.0;
  }

  [v5 alpha];
  if (v12 != v13)
  {
    if (v11)
    {
      [v5 setHidden:0];
      [v5 setAlpha:v12];
    }

    else
    {
      v14 = MEMORY[0x1E69DD250];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __31__TUICandidateGrid_updateIndex__block_invoke;
      v16[3] = &unk_1E72D83A0;
      v17 = v5;
      [v14 performWithoutAnimation:v16];
    }
  }

  collectionView4 = [(TUICandidateGrid *)self collectionView];
  [collectionView4 setShowsVerticalScrollIndicator:1];
}

uint64_t __31__TUICandidateGrid_updateIndex__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHidden:1];
  v2 = *(a1 + 32);

  return [v2 setAlpha:0.0];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = TUICandidateGrid;
  [(TUICandidateGrid *)&v13 layoutSubviews];
  suppressCollectionViewLayout = [(TUICandidateGrid *)self suppressCollectionViewLayout];
  if (!suppressCollectionViewLayout)
  {
    [(TUICandidateGrid *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    collectionView = [(TUICandidateGrid *)self collectionView];
    [collectionView setFrame:{v5, v7, v9, v11}];

    [(TUICandidateGrid *)self updateContentInset];
    [(TUICandidateGrid *)self updateSelectedRowHighlightView];
    [(TUICandidateGrid *)self updateCollectionViewFrameForArrowButton];
  }

  [(TUICandidateGrid *)self setCollectionViewLayoutWasSkipped:suppressCollectionViewLayout];
}

- (void)setSuppressCollectionViewLayout:(BOOL)layout
{
  if (self->_suppressCollectionViewLayout != layout)
  {
    self->_suppressCollectionViewLayout = layout;
    if (!layout)
    {
      if ([(TUICandidateGrid *)self collectionViewLayoutWasSkipped])
      {

        [(TUICandidateGrid *)self setNeedsLayout];
      }
    }
  }
}

- (NSArray)visibleCandidates
{
  v47 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  collectionView = [(TUICandidateGrid *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];
  v5 = [indexPathsForVisibleItems sortedArrayUsingComparator:&__block_literal_global_9151];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        collectionView2 = [(TUICandidateGrid *)self collectionView];
        v13 = [collectionView2 cellForItemAtIndexPath:v11];

        window = [v13 window];

        if (window)
        {
          window2 = [(TUICandidateGrid *)self window];
          [v13 frame];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          collectionView3 = [(TUICandidateGrid *)self collectionView];
          [window2 convertRect:collectionView3 fromView:{v17, v19, v21, v23}];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          window3 = [(TUICandidateGrid *)self window];
          v49.origin.x = v26;
          v49.origin.y = v28;
          v49.size.width = v30;
          v49.size.height = v32;
          MinX = CGRectGetMinX(v49);
          v50.origin.x = v26;
          v50.origin.y = v28;
          v50.size.width = v30;
          v50.size.height = v32;
          v35 = [window3 hitTest:0 withEvent:{MinX, CGRectGetMidY(v50)}];

          window4 = [(TUICandidateGrid *)self window];
          v51.origin.x = v26;
          v51.origin.y = v28;
          v51.size.width = v30;
          v51.size.height = v32;
          v37 = CGRectGetMaxX(v51) + -0.01;
          v52.origin.x = v26;
          v52.origin.y = v28;
          v52.size.width = v30;
          v52.size.height = v32;
          v38 = [window4 hitTest:0 withEvent:{v37, CGRectGetMidY(v52)}];

          if (([v35 isDescendantOfView:v13] & 1) != 0 || objc_msgSend(v38, "isDescendantOfView:", v13))
          {
            v39 = [(TUICandidateGrid *)self candidateAtIndexPath:v11];
            if (v39)
            {
              [array addObject:v39];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)scrollToFirstCandidate
{
  firstIndexPath = [(TUICandidateGrid *)self firstIndexPath];
  if (-[TUICandidateGrid indexPathIsValid:](self, "indexPathIsValid:") && (-[TUICandidateGrid collectionView](self, "collectionView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 contentOffset], v5 = v4, v3, v5 >= 0.0))
  {
    [(TUICandidateGrid *)self scrollToCandidateAtIndexPath:firstIndexPath animated:0];
  }

  else
  {
    [(TUICandidateGrid *)self scrollToTop];
  }
}

- (void)setCandidateGroups:(id)groups
{
  groupsCopy = groups;
  if (([(NSArray *)self->_candidateGroups isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_candidateGroups, groups);
    collectionView = [(TUICandidateGrid *)self collectionView];
    [collectionView reloadData];

    [(TUICandidateGrid *)self updateIndex];
    if (self->_selectedIndexPath)
    {
      collectionView2 = [(TUICandidateGrid *)self collectionView];
      [collectionView2 deselectItemAtIndexPath:self->_selectedIndexPath animated:0];

      selectedIndexPath = self->_selectedIndexPath;
      self->_selectedIndexPath = 0;

      [(TUICandidateGrid *)self didMoveHighlightFrame];
    }

    self->_lastUserSelectedCursorX = 0.0;
    [(TUICandidateGrid *)self updateSelectedRowHighlightView];
    [(TUICandidateGrid *)self addAppCandidatesRenderSignposts];
  }
}

- (TUICandidateLayout)multiRowLayout
{
  multiRowLayout = self->_multiRowLayout;
  if (!multiRowLayout)
  {
    v4 = objc_alloc_init(TUICandidateLayout);
    v5 = self->_multiRowLayout;
    self->_multiRowLayout = v4;

    [(TUICandidateLayout *)self->_multiRowLayout setRowType:1];
    multiRowLayout = self->_multiRowLayout;
  }

  return multiRowLayout;
}

- (TUICandidateLayout)singleRowLayout
{
  singleRowLayout = self->_singleRowLayout;
  if (!singleRowLayout)
  {
    v4 = objc_alloc_init(TUICandidateLayout);
    v5 = self->_singleRowLayout;
    self->_singleRowLayout = v4;

    [(TUICandidateLayout *)self->_singleRowLayout setRowType:0];
    singleRowLayout = self->_singleRowLayout;
  }

  return singleRowLayout;
}

- (id)collectionViewLayout
{
  if ([(TUICandidateGrid *)self rowType])
  {
    [(TUICandidateGrid *)self multiRowLayout];
  }

  else
  {
    [(TUICandidateGrid *)self singleRowLayout];
  }
  v3 = ;
  [v3 setCandidateNumberEnabled:{-[TUICandidateGrid candidateNumberEnabled](self, "candidateNumberEnabled")}];
  customHeader = [(TUICandidateGrid *)self customHeader];
  [customHeader frame];
  [v3 setCustomHeaderHeight:CGRectGetHeight(v43)];

  style = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    style2 = [(TUICandidateGrid *)self style];
    [v3 setShouldJustifyRow:{objc_msgSend(style2, "shouldJustifyRow")}];
  }

  else
  {
    [v3 setShouldJustifyRow:0];
  }

  style3 = [(TUICandidateGrid *)self style];
  [v3 setColumnsCount:{objc_msgSend(style3, "columnsCount")}];

  style4 = [(TUICandidateGrid *)self style];
  [v3 setLayoutOrientation:{objc_msgSend(style4, "layoutOrientation")}];

  style5 = [(TUICandidateGrid *)self style];
  [style5 gridPadding];
  [v3 setGridPadding:?];

  style6 = [(TUICandidateGrid *)self style];
  [style6 gridLinePadding];
  [v3 setGridLinePadding:?];

  style7 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    style8 = [(TUICandidateGrid *)self style];
    [style8 interRowSpacing];
    [v3 setInterRowSpacing:?];
  }

  else
  {
    [v3 setInterRowSpacing:0.0];
  }

  style9 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    style10 = [(TUICandidateGrid *)self style];
    [style10 slottedCandidatesIterItemSpacing];
    [v3 setSlottedCandidatesIterItemSpacing:?];
  }

  else
  {
    [v3 setSlottedCandidatesIterItemSpacing:0.0];
  }

  style11 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    style12 = [(TUICandidateGrid *)self style];
    [v3 setHideSlottedCellSeparators:{objc_msgSend(style12, "hideSlottedCellSeparators")}];
  }

  else
  {
    [v3 setHideSlottedCellSeparators:0];
  }

  style13 = [(TUICandidateGrid *)self style];
  [style13 gridLineOffset];
  [v3 setGridLineOffset:?];

  style14 = [(TUICandidateGrid *)self style];
  [style14 minimumInterItemSpacing];
  [v3 setMinimumInterItemSpacing:?];

  style15 = [(TUICandidateGrid *)self style];
  [style15 singleSlottedCellMargin];
  [v3 setSingleSlottedCellMargin:?];

  style16 = [(TUICandidateGrid *)self style];
  [v3 setShowExtraLineBeforeFirstRow:{objc_msgSend(style16, "showExtraLineBeforeFirstRow")}];

  style17 = [(TUICandidateGrid *)self style];
  [v3 setFillGridWithLines:{objc_msgSend(style17, "fillGridWithLines")}];

  [(TUICandidateGrid *)self frame];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [(TUICandidateGrid *)self arrowButtonOrigin];
  v31 = v30;
  v33 = v32;
  [(TUICandidateGrid *)self arrowButtonSize];
  v45.size.width = v34;
  v45.size.height = v35;
  v44.origin.x = v23;
  v44.origin.y = v25;
  v44.size.width = v27;
  v44.size.height = v29;
  v45.origin.x = v31;
  v45.origin.y = v33;
  [v3 setGridContainsArrowButton:{CGRectContainsRect(v44, v45)}];
  style18 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    style19 = [(TUICandidateGrid *)self style];
    [style19 cellTopOffset];
    [v3 setCellTopOffset:?];
  }

  else
  {
    [v3 setCellTopOffset:0.0];
  }

  style20 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    style21 = [(TUICandidateGrid *)self style];
    [style21 lineTopOffset];
    [v3 setLineTopOffset:?];
  }

  else
  {
    [v3 setLineTopOffset:0.0];
  }

  _inheritedRenderConfig = [(TUICandidateGrid *)self _inheritedRenderConfig];
  [v3 set_inheritedRenderConfig:_inheritedRenderConfig];

  return v3;
}

- (UICollectionView)collectionView
{
  collectionView = self->_collectionView;
  if (!collectionView)
  {
    v4 = [TUICandidateCollectionView alloc];
    [(TUICandidateGrid *)self bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    collectionViewLayout = [(TUICandidateGrid *)self collectionViewLayout];
    v14 = [(TUICandidateCollectionView *)v4 initWithFrame:collectionViewLayout collectionViewLayout:v6, v8, v10, v12];
    v15 = self->_collectionView;
    self->_collectionView = v14;

    [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UICollectionView *)self->_collectionView setDelegate:self];
    [(UICollectionView *)self->_collectionView setDataSource:self];
    [(UICollectionView *)self->_collectionView setAllowsMultipleSelection:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)self->_collectionView setBackgroundColor:clearColor];

    [(UICollectionView *)self->_collectionView setDelaysContentTouches:0];
    [(UICollectionView *)self->_collectionView _setAutomaticContentOffsetAdjustmentEnabled:0];
    v17 = self->_collectionView;
    v18 = objc_opt_class();
    v19 = +[TUICandidateCell reuseIdentifier];
    [(UICollectionView *)v17 registerClass:v18 forCellWithReuseIdentifier:v19];

    v20 = self->_collectionView;
    v21 = objc_opt_class();
    v22 = +[TUIAutofillExtraCandidateCell reuseIdentifier];
    [(UICollectionView *)v20 registerClass:v21 forCellWithReuseIdentifier:v22];

    v23 = self->_collectionView;
    v24 = objc_opt_class();
    v25 = +[TUISuggestionCandidateCell reuseIdentifier];
    [(UICollectionView *)v23 registerClass:v24 forCellWithReuseIdentifier:v25];

    v26 = self->_collectionView;
    v27 = objc_opt_class();
    v28 = +[TUIWritingToolCandidateCell reuseIdentifier];
    [(UICollectionView *)v26 registerClass:v27 forCellWithReuseIdentifier:v28];

    v29 = self->_collectionView;
    v30 = objc_opt_class();
    v31 = +[TUIGradientContentLabelCell reuseIdentifier];
    [(UICollectionView *)v29 registerClass:v30 forCellWithReuseIdentifier:v31];

    v32 = self->_collectionView;
    v33 = objc_opt_class();
    v34 = +[TUIProactiveCandidateCell reuseIdentifier];
    [(UICollectionView *)v32 registerClass:v33 forCellWithReuseIdentifier:v34];

    v35 = self->_collectionView;
    v36 = objc_opt_class();
    v37 = +[TUICandidateLine reuseIdentifier];
    [(UICollectionView *)v35 registerClass:v36 forSupplementaryViewOfKind:@"Line" withReuseIdentifier:v37];

    v38 = self->_collectionView;
    v39 = objc_opt_class();
    v40 = +[TUICandidateSlottedSeparator reuseIdentifier];
    [(UICollectionView *)v38 registerClass:v39 forSupplementaryViewOfKind:@"SlottedCellSeparator" withReuseIdentifier:v40];

    v41 = self->_collectionView;
    v42 = objc_opt_class();
    v43 = +[TUICandidateGroupHeader reuseIdentifier];
    [(UICollectionView *)v41 registerClass:v42 forSupplementaryViewOfKind:@"GroupHeader" withReuseIdentifier:v43];

    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"CustomHeader" withReuseIdentifier:@"CustomHeader"];
    [(UICollectionView *)self->_collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"DummyCandidate" withReuseIdentifier:@"DummyCandidate"];
    [(TUICandidateGrid *)self addSubview:self->_collectionView];
    collectionView = self->_collectionView;
  }

  return collectionView;
}

- (TUICandidateGrid)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TUICandidateGrid;
  v3 = [(TUICandidateGrid *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateGrid *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateGrid)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUICandidateGrid;
  v3 = [(TUICandidateGrid *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateGrid *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  [(TUICandidateGrid *)self setRowType:0];
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [(TUICandidateGrid *)self setSelectedRowHighlightView:v4];

  selectedRowHighlightView = [(TUICandidateGrid *)self selectedRowHighlightView];
  [selectedRowHighlightView setZPosition:-1.0];

  selectedRowHighlightView2 = [(TUICandidateGrid *)self selectedRowHighlightView];
  [selectedRowHighlightView2 setUserInteractionEnabled:0];

  collectionView = [(TUICandidateGrid *)self collectionView];
  selectedRowHighlightView3 = [(TUICandidateGrid *)self selectedRowHighlightView];
  [collectionView insertSubview:selectedRowHighlightView3 atIndex:0];
}

+ (BOOL)isSafariPasswordSuggestionCandidate:(id)candidate
{
  candidateCopy = candidate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [candidateCopy isWritingToolsButtonCandidate] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (BOOL)isGradientContentLabelCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (([candidateCopy candidateProperty] & 2) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = ([candidateCopy candidateProperty] >> 7) & 1;
  }

  return v4;
}

+ (BOOL)isWritingToolSuggestionCandidate:(id)candidate
{
  candidateCopy = candidate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isWritingToolsButtonCandidate = [candidateCopy isWritingToolsButtonCandidate];
  }

  else
  {
    isWritingToolsButtonCandidate = 0;
  }

  return isWritingToolsButtonCandidate;
}

@end