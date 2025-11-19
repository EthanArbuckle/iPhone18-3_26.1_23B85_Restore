@interface TUICandidateGrid
+ (BOOL)isGradientContentLabelCandidate:(id)a3;
+ (BOOL)isSafariPasswordSuggestionCandidate:(id)a3;
+ (BOOL)isWritingToolSuggestionCandidate:(id)a3;
- (BOOL)canExpandCandidateGrid;
- (BOOL)handleNumberKey:(unint64_t)a3;
- (BOOL)hasCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4;
- (BOOL)indexPathIsFullyVisible:(id)a3 granularity:(int)a4;
- (BOOL)indexPathIsValid:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (CGPoint)arrowButtonOrigin;
- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4;
- (CGSize)arrowButtonSize;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)contentSize;
- (NSArray)visibleCandidates;
- (NSIndexPath)firstIndexPath;
- (TIKeyboardCandidate)selectedCandidate;
- (TUICandidateGrid)initWithCoder:(id)a3;
- (TUICandidateGrid)initWithFrame:(CGRect)a3;
- (TUICandidateGridDelegate)delegate;
- (TUICandidateLayout)multiRowLayout;
- (TUICandidateLayout)singleRowLayout;
- (UICollectionView)collectionView;
- (UIEdgeInsets)safeAreaInsets;
- (double)collectionView:(id)a3 layout:(id)a4 widthForGroupHeaderInSection:(int64_t)a5;
- (double)rowHeight;
- (id)_sectionIndexTitlesForCollectionView:(id)a3;
- (id)candidateAtIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewLayout;
- (id)indexPathForCandidate:(id)a3;
- (id)indexPathForCandidateNumber:(unint64_t)a3;
- (id)indexPathForVerticalCandidateNumber:(unint64_t)a3;
- (id)indexPathInForwardDirection:(BOOL)a3 granularity:(int)a4;
- (id)indexPathsForSelectedRow;
- (id)indexPathsInTheRowThatContainsFrame:(CGRect)a3;
- (id)lastIndexPath;
- (id)visibleAttributes;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (int64_t)numberOfNonPartialCandidatesInSection:(int64_t)a3;
- (int64_t)numberOfSectionsInCollectionView:(id)a3;
- (int64_t)numberOfTransliterationCandidatesInSection:(int64_t)a3;
- (int64_t)rowForCandidate:(id)a3;
- (int64_t)viewOffsetForCandidate:(id)a3;
- (unint64_t)candidateNumberForIndexPath:(id)a3;
- (unint64_t)candidateNumberInHorizontalLayoutForIndexPath:(id)a3;
- (unint64_t)candidateNumberInVerticalLayoutForIndexPath:(id)a3;
- (unint64_t)extraCandidatesCount;
- (unint64_t)slottedCandidatesCount;
- (void)addAppCandidatesRenderSignposts;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)commonInit;
- (void)didMoveHighlightFrame;
- (void)forceUpdateVisibleCells;
- (void)layoutSubviews;
- (void)scrollToCandidateAtIndexPath:(id)a3 animated:(BOOL)a4;
- (void)scrollToFirstCandidate;
- (void)scrollToTop;
- (void)scrollViewDidChangeContentSize:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)setCandidateGroups:(id)a3;
- (void)setCandidateNumberEnabled:(BOOL)a3;
- (void)setCustomHeader:(id)a3;
- (void)setRowType:(int64_t)a3 options:(unint64_t)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)setRowType:(int64_t)a3 options:(unint64_t)a4 style:(id)a5 animated:(BOOL)a6 animator:(id)a7 completion:(id)a8;
- (void)setSelectedIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5;
- (void)setSlottedSeparatorHidden:(BOOL)a3 inCollectionView:(id)a4 nearHighlightItemAtIndexPath:(id)a5;
- (void)setStyle:(id)a3;
- (void)setStyle:(id)a3 reload:(BOOL)a4;
- (void)setSuppressCollectionViewLayout:(BOOL)a3;
- (void)showCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4;
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

- (int64_t)numberOfNonPartialCandidatesInSection:(int64_t)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [(TUICandidateGrid *)self candidateGroups];
  v6 = [v5 count];

  if (v6 > a3)
  {
    v7 = [(TUICandidateGrid *)self candidateGroups];
    v8 = [v7 objectAtIndexedSubscript:a3];
    v9 = [v8 candidates];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__TUICandidateGrid_numberOfNonPartialCandidatesInSection___block_invoke;
    v12[3] = &unk_1E72D7DF8;
    v12[4] = &v13;
    [v9 enumerateObjectsUsingBlock:v12];
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

- (int64_t)numberOfTransliterationCandidatesInSection:(int64_t)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [(TUICandidateGrid *)self candidateGroups];
  v6 = [v5 count];

  if (v6 > a3)
  {
    v7 = [(TUICandidateGrid *)self candidateGroups];
    v8 = [v7 objectAtIndexedSubscript:a3];
    v9 = [v8 candidates];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __63__TUICandidateGrid_numberOfTransliterationCandidatesInSection___block_invoke;
    v12[3] = &unk_1E72D7DF8;
    v12[4] = &v13;
    [v9 enumerateObjectsUsingBlock:v12];
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

- (id)_sectionIndexTitlesForCollectionView:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [(TUICandidateGrid *)self style];
  v5 = [v4 showsIndex];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [(TUICandidateGrid *)self candidateGroups];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 title];
          v14 = [v13 length];

          if (v14)
          {
            v15 = [v12 title];
            [v6 addObject:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v16 = v6;
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

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 isEqualToString:@"Line"])
  {
    v12 = +[TUICandidateLine reuseIdentifier];
    v13 = @"Line";
LABEL_3:
    v5 = [v9 dequeueReusableSupplementaryViewOfKind:v13 withReuseIdentifier:v12 forIndexPath:v11];

    v14 = [(TUICandidateGrid *)self style];
    [v5 setStyle:v14];
LABEL_8:

    goto LABEL_9;
  }

  if ([v10 isEqualToString:@"GroupHeader"])
  {
    v15 = +[TUICandidateGroupHeader reuseIdentifier];
    v5 = [v9 dequeueReusableSupplementaryViewOfKind:@"GroupHeader" withReuseIdentifier:v15 forIndexPath:v11];

    v16 = [(TUICandidateGrid *)self style];
    [v5 setStyle:v16];

    v17 = [(TUICandidateGrid *)self style];
    [v5 setAlignment:{objc_msgSend(v17, "cellTextAlignment")}];

    v14 = [(TUICandidateGrid *)self candidateGroups];
    v18 = [v14 objectAtIndexedSubscript:{objc_msgSend(v11, "section")}];
    v19 = [v18 title];
    [v5 setText:v19];

    goto LABEL_8;
  }

  if ([v10 isEqualToString:@"CustomHeader"])
  {
    v5 = [v9 dequeueReusableSupplementaryViewOfKind:@"CustomHeader" withReuseIdentifier:@"CustomHeader" forIndexPath:v11];
    v20 = [v5 subviews];
    v21 = [v20 lastObject];
    [v21 removeFromSuperview];

    v14 = [(TUICandidateGrid *)self customHeader];
    [v5 addSubview:v14];
    goto LABEL_8;
  }

  if ([v10 isEqualToString:@"SlottedCellSeparator"])
  {
    v12 = +[TUICandidateSlottedSeparator reuseIdentifier];
    v13 = @"SlottedCellSeparator";
    goto LABEL_3;
  }

  if ([v10 isEqualToString:@"DummyCandidate"])
  {
    v5 = [v9 dequeueReusableSupplementaryViewOfKind:@"DummyCandidate" withReuseIdentifier:@"DummyCandidate" forIndexPath:v11];
    v23 = [(TUICandidateGrid *)self style];
    [v5 setStyle:v23];

    v24 = [(TUICandidateGrid *)self candidateAtIndexPath:v11];
    [v5 setCandidate:v24];

    v14 = [(TUICandidateGrid *)self selectedIndexPath];
    [v5 setSelected:{objc_msgSend(v11, "isEqual:", v14)}];
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TUICandidateGrid *)self candidateAtIndexPath:v7];
  if ([v8 isSecureContentCandidate])
  {
    v9 = +[TUIProactiveCandidateCell reuseIdentifier];
    v10 = [v6 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v7];

    v11 = [(TUICandidateGrid *)self style];
    [v10 setStyle:v11];

    [v10 setCandidate:v8];
    goto LABEL_8;
  }

  if ([v8 isAutofillExtraCandidate])
  {
    v12 = TUIAutofillExtraCandidateCell;
LABEL_7:
    v13 = [(__objc2_class *)v12 reuseIdentifier];
    v10 = [v6 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v7];

    [v10 setCandidate:v8];
    v14 = [(TUICandidateGrid *)self style];
    [v10 setStyle:v14];

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
    v10 = [v6 dequeueReusableCellWithReuseIdentifier:v16 forIndexPath:v7];

    v17 = [(TUICandidateGrid *)self style];
    [v10 setStyle:v17];

    [v10 setCandidate:v8];
    [v10 setPredictionPosition:{objc_msgSend(v7, "item")}];
  }

  else
  {
    if ([objc_opt_class() isSafariPasswordSuggestionCandidate:v8])
    {
      v12 = TUISuggestionCandidateCell;
      goto LABEL_7;
    }

    v18 = +[TUICandidateCell reuseIdentifier];
    v19 = [v6 dequeueReusableCellWithReuseIdentifier:v18 forIndexPath:v7];

    v20 = [(TUICandidateGrid *)self style];
    [v19 setStyle:v20];

    [(TUICandidateGrid *)self maximumRowHeight];
    [v19 setMinimumTextLabelHeight:?];
    [v19 setCandidateNumber:{-[TUICandidateGrid candidateNumberForIndexPath:](self, "candidateNumberForIndexPath:", v7)}];
    [v19 setCandidate:v8];
    v21 = [(TUICandidateGrid *)self style];
    [v19 setAlignment:{objc_msgSend(v21, "cellTextAlignment")}];

    v22 = [(TUICandidateGrid *)self selectedIndexPath];
    [v19 setSelected:{objc_msgSend(v7, "isEqual:", v22)}];

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

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = [(TUICandidateGrid *)self slottedCandidatesCount];
  v7 = [(TUICandidateGrid *)self extraCandidatesCount]+ v6;
  if (v7)
  {
    return v7;
  }

  v9 = [(TUICandidateGrid *)self style];
  v10 = [v9 hidesPartialCandidates];

  if (v10)
  {
    v7 = [(TUICandidateGrid *)self numberOfNonPartialCandidatesInSection:a4];
    v11 = v7 - [(TUICandidateGrid *)self numberOfTransliterationCandidatesInSection:a4];
    v12 = [(TUICandidateGrid *)self style];
    v13 = [v12 minimumNumberOfCandidates];

    if (v11 >= v13)
    {
      return v7;
    }
  }

  v14 = [(TUICandidateGrid *)self candidateGroups];
  v15 = [v14 objectAtIndexedSubscript:a4];
  v16 = [v15 candidates];
  v17 = [v16 count];

  return v17;
}

- (int64_t)numberOfSectionsInCollectionView:(id)a3
{
  v3 = [(TUICandidateGrid *)self candidateGroups];
  v4 = [v3 count];

  return v4;
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(TUICandidateGrid *)self didMoveHighlightFrame];
  }
}

- (void)didMoveHighlightFrame
{
  v3 = [(TUICandidateGrid *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(TUICandidateGrid *)self collectionView];
    v6 = [v5 indexPathsForSelectedItems];
    v22 = [v6 firstObject];

    if (v22)
    {
      v7 = [(TUICandidateGrid *)self collectionView];
      v8 = [v7 layoutAttributesForItemAtIndexPath:v22];
      [v8 frame];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = [(TUICandidateGrid *)self collectionView];
      [v17 contentOffset];
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

    v21 = [(TUICandidateGrid *)self delegate];
    [v21 candidateGrid:self didMoveHighlightFrame:{v20, v12, v14, v16}];
  }
}

- (void)setSlottedSeparatorHidden:(BOOL)a3 inCollectionView:(id)a4 nearHighlightItemAtIndexPath:(id)a5
{
  v6 = a3;
  v39 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [(TUICandidateGrid *)self slottedCandidatesCount];
  if (v10 + [(TUICandidateGrid *)self extraCandidatesCount])
  {
    v11 = [v8 cellForItemAtIndexPath:v9];
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
    v20 = [v8 subviews];
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
            objc_enumerationMutation(v20);
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
              [v25 setHidden:v6];
            }
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v22);
    }

    v30 = [(TUICandidateGrid *)self delegate];
    v31 = objc_opt_respondsToSelector();

    if (v31)
    {
      v32 = [(TUICandidateGrid *)self delegate];
      v33 = v32;
      if (!v6)
      {
        v13 = *MEMORY[0x1E695F050];
        v15 = *(MEMORY[0x1E695F050] + 8);
        v17 = *(MEMORY[0x1E695F050] + 16);
        v19 = *(MEMORY[0x1E695F050] + 24);
      }

      [v32 candidateGrid:self didMoveHighlightFrame:{v13, v15, v17, v19}];
    }
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v31 = a3;
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v8;
    v11 = [v31 layoutAttributesForItemAtIndexPath:v9];
    v12 = [(TUICandidateGrid *)self style];
    v13 = [v12 showExtraLineBeforeFirstRow];

    [v11 frame];
    v15 = v14;
    [(TUICandidateGrid *)self selectedRowY];
    if (v15 == v16)
    {
      v17 = [(TUICandidateGrid *)self selectedIndexPath];
      v18 = v17 != 0;
    }

    else
    {
      v18 = 0;
    }

    v19 = [(TUICandidateGrid *)self selectedRowHighlightView];
    [v19 zPosition];
    [v10 setZPosition:v20 + 1.0];

    [v10 setRowSelected:v18];
    v21 = [(TUICandidateGrid *)self selectedIndexPath];
    [v10 setSelected:{objc_msgSend(v21, "isEqual:", v9)}];

    [v10 setCandidateNumber:{-[TUICandidateGrid candidateNumberForIndexPath:](self, "candidateNumberForIndexPath:", v9)}];
    if ([(TUICandidateGrid *)self candidateNumberEnabled])
    {
      v22 = [(TUICandidateGrid *)self style];
      v23 = [v22 layoutOrientation];

      if (v23 == 1)
      {
        v24 = 1;
      }

      else
      {
        v25 = [(TUICandidateGrid *)self rowType];
        v26 = v25 == 0;
        if ([(TUICandidateGrid *)self rowType]== 1)
        {
          v27 = [(TUICandidateGrid *)self style];
          v28 = [v27 columnsCount];

          v26 = v28 == 1 || v25 == 0;
        }

        v24 = v18 || v26;
        v30 = [(TUICandidateGrid *)self selectedIndexPath];
        if (v30)
        {
        }

        else
        {
          v24 |= [v11 row] == v13;
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

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v9 = a4;
  v5 = [(TUICandidateGrid *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(TUICandidateGrid *)self delegate];
    v8 = [(TUICandidateGrid *)self candidateAtIndexPath:v9];
    [v7 candidateGrid:self didAcceptCandidate:v8 atIndexPath:v9];
  }
}

- (CGPoint)collectionView:(id)a3 targetContentOffsetForProposedContentOffset:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = [a3 collectionViewLayout];
  v8 = [(TUICandidateGrid *)self firstVisibleIndexPath];
  if (v8 && [(TUICandidateGrid *)self indexPathIsValid:v8])
  {
    v9 = [(TUICandidateGrid *)self firstVisibleIndexPath];
    v10 = [v7 layoutAttributesForItemAtIndexPath:v9];
    [v10 frame];
    x = v11;
    y = v12;

    if ([v7 rowType] == 1)
    {
      v13 = [(TUICandidateGrid *)self style];
      [v13 rowHeight];
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

- (BOOL)respondsToSelector:(SEL)a3
{
  v10.receiver = self;
  v10.super_class = TUICandidateGrid;
  if ([(TUICandidateGrid *)&v10 respondsToSelector:?])
  {
    return 1;
  }

  v6 = [(TUICandidateGrid *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = NSStringFromSelector(a3);
  v5 = [v8 rangeOfString:@"scrollView" options:1] != 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

- (void)scrollViewDidScroll:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUICandidateGrid *)self collectionView];
  v6 = [v5 visibleSupplementaryViewsOfKind:@"GroupHeader"];

  v7 = [(TUICandidateGrid *)self collectionView];
  [v7 contentOffset];
  v9 = v8;
  v11 = v10;
  v12 = [(TUICandidateGrid *)self collectionView];
  [v12 bounds];
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
            v27 = [(TUICandidateGrid *)self collectionView];
            [v22 convertRect:v27 fromView:{x, y, width, height}];
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

  v36 = [(TUICandidateGrid *)self style];
  if ([v36 layoutOrientation] == 1)
  {

LABEL_13:
    [(TUICandidateGrid *)self forceUpdateVisibleCells];
    goto LABEL_18;
  }

  if ([(TUICandidateGrid *)self candidateNumberEnabled])
  {
    v37 = [(TUICandidateGrid *)self style];
    v38 = [v37 columnsCount];

    if (v38 == 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

LABEL_18:
  v39 = [(TUICandidateGrid *)self delegate];
  v40 = objc_opt_respondsToSelector();

  if (v40)
  {
    v41 = [(TUICandidateGrid *)self delegate];
    [v41 scrollViewDidScroll:v4];
  }

  [(TUICandidateGrid *)self updateGradientLayerToCollectionView];
}

- (void)scrollViewDidChangeContentSize:(id)a3
{
  v7 = a3;
  [(TUICandidateGrid *)self updateContentInset];
  [(TUICandidateGrid *)self updateGradientLayerToCollectionView];
  v4 = [(TUICandidateGrid *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(TUICandidateGrid *)self delegate];
    [v7 contentSize];
    [v6 candidateGrid:self didChangeContentSize:?];
  }
}

- (double)collectionView:(id)a3 layout:(id)a4 widthForGroupHeaderInSection:(int64_t)a5
{
  v7 = [(TUICandidateGrid *)self candidateGroups:a3];
  v8 = [v7 objectAtIndexedSubscript:a5];
  v9 = [v8 title];

  if ([v9 length])
  {
    v10 = [(TUICandidateGrid *)self style];
    v11 = [v10 candidateFont];
    [v9 tui_optimizedSizeWithFont:v11];
    v13 = v12 + 20.0;

    v14 = [(TUICandidateGrid *)self style];
    LOBYTE(v11) = objc_opt_respondsToSelector();

    if (v11)
    {
      v15 = [(TUICandidateGrid *)self style];
      [v15 groupHeaderPadding];
      v13 = v13 + v16;
    }
  }

  else
  {
    v13 = 0.0;
  }

  return v13;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(TUICandidateGrid *)self candidateAtIndexPath:a5];
  if (![v10 isSlottedCandidate] || (objc_msgSend(v10, "isStickerCandidate") & 1) != 0)
  {
    [(TUICandidateGrid *)self rowHeight];
    v12 = v11;
    if ([v9 rowType] != 1 || objc_msgSend(v9, "transitionState") != 1)
    {
LABEL_18:
      if ([v10 isStickerCandidate])
      {
        v25 = [(TUICandidateGrid *)self style];
        [v25 minimumCellWidth];
        v20 = v26;

        if (v12 >= v20)
        {
          v20 = v12;
        }
      }

      else
      {
        v27 = [(TUICandidateGrid *)self candidateNumberEnabled];
        v28 = [(TUICandidateGrid *)self style];
        [TUICandidateCell widthForCandidate:v10 showCandidateNumber:v27 style:v28];
        v20 = v29;
      }

      goto LABEL_23;
    }

    if ([(TUICandidateGrid *)self rowType])
    {
      v13 = [(TUICandidateGrid *)self style];
    }

    else
    {
      v13 = [(TUICandidateGrid *)self stylePending];
      if (!v13)
      {
        v32 = [(TUICandidateGrid *)self style];
        [v32 rowHeight];
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

    v22 = v13;
    [v13 rowHeight];
    v24 = v23;
    goto LABEL_16;
  }

  v14 = [(TUICandidateGrid *)self slottedCandidatesCount];
  v15 = [(TUICandidateGrid *)self style];
  v16 = [v15 maxNumberOfProactiveCells];

  if (v16 >= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  [v8 bounds];
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
  v6 = [(TUICandidateGrid *)self style];
  if ((objc_opt_respondsToSelector() & 1) == 0 || (([v6 widthOfGridGradient], v7 > 0.0) ? (v8 = v4 <= Width) : (v8 = 1), v8))
  {
    v9 = [(UICollectionView *)self->_collectionView layer];
    [v9 setMask:0];
  }

  else
  {
    v10 = [MEMORY[0x1E6979380] layer];
    [(UICollectionView *)self->_collectionView bounds];
    [v10 setFrame:?];
    v11 = [MEMORY[0x1E69DC888] whiteColor];
    v18[0] = [v11 CGColor];
    v12 = [MEMORY[0x1E69DC888] clearColor];
    v18[1] = [v12 CGColor];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    [v10 setColors:v13];

    [v10 setLocations:&unk_1F03D9050];
    [(UICollectionView *)self->_collectionView frame];
    v15 = v14;
    [v6 widthOfGridGradient];
    [v10 setStartPoint:{(v15 - v16) / v15, 0.5}];
    [v10 setEndPoint:{1.0, 0.5}];
    v17 = [(UICollectionView *)self->_collectionView layer];
    [v17 setMask:v10];
  }
}

- (void)forceUpdateVisibleCells
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(TUICandidateGrid *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];

  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(TUICandidateGrid *)self collectionView];
        v11 = [v10 cellForItemAtIndexPath:v9];

        v12 = [(TUICandidateGrid *)self collectionView];
        [(TUICandidateGrid *)self collectionView:v12 willDisplayCell:v11 forItemAtIndexPath:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)scrollToCandidateAtIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v40 = a3;
  v6 = [(TUICandidateGrid *)self collectionView];
  v7 = [v6 layoutAttributesForItemAtIndexPath:v40];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [(TUICandidateGrid *)self style];
  v17 = [v16 layoutOrientation];

  if (v17)
  {
    v42.origin.x = v9;
    v42.origin.y = v11;
    v42.size.width = v13;
    v42.size.height = v15;
    MaxX = CGRectGetMaxX(v42);
    v19 = [(TUICandidateGrid *)self collectionView];
    [v19 bounds];
    v21 = MaxX - v20;

    v11 = 0.0;
  }

  else
  {
    if ([v40 section] || objc_msgSend(v40, "item"))
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
        v35 = [(TUICandidateGrid *)self collectionView];
        [v35 bounds];
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

    v23 = [(TUICandidateGrid *)self style];
    [v23 rowHeight];
    if (v11 >= v24)
    {
    }

    else
    {
      v25 = [(TUICandidateGrid *)self style];
      [v25 gridLinePadding];
      v27 = v26;

      if (v27 == 0.0)
      {
        v11 = 0.0;
      }
    }

    v28 = [(TUICandidateGrid *)self rowType];
    if (v22 < 0.0 || v28 == 1)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v22;
    }
  }

  v30 = [(TUICandidateGrid *)self collectionView];
  [v30 setContentOffset:v4 animated:{v21, v11}];
}

- (void)updateSelectedRowHighlightView
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [(TUICandidateGrid *)self style];
  v4 = [v3 highlightedRowBackgroundColor];

  if (v4)
  {
    v5 = [(TUICandidateGrid *)self indexPathsForSelectedRow];
    [(TUICandidateGrid *)self bounds];
    Width = CGRectGetWidth(v31);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v5;
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
          v13 = [(TUICandidateGrid *)self collectionView];
          v14 = [v13 layoutAttributesForItemAtIndexPath:v12];

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
    v18 = [(TUICandidateGrid *)self style];
    [v18 rowHeight];
    v20 = v19;

    v21 = [(TUICandidateGrid *)self selectedRowHighlightView];
    [v21 setFrame:{Width, MinY, v17, v20}];

    v22 = [(TUICandidateGrid *)self selectedRowHighlightView];
    [v22 setHidden:0];
  }

  else
  {
    v23 = [(TUICandidateGrid *)self selectedRowHighlightView];
    [v23 setHidden:1];
  }
}

- (BOOL)handleNumberKey:(unint64_t)a3
{
  v4 = [(TUICandidateGrid *)self indexPathForCandidateNumber:a3];
  v5 = [(TUICandidateGrid *)self indexPathIsValid:v4];
  if (v5)
  {
    v6 = [(TUICandidateGrid *)self candidateAtIndexPath:v4];
    [(TUICandidateGrid *)self setSelectedIndexPath:v4];
    v7 = [(TUICandidateGrid *)self delegate];
    [v7 candidateGrid:self didAcceptCandidate:v6 atIndexPath:v4];
  }

  return v5;
}

- (int64_t)rowForCandidate:(id)a3
{
  v4 = [(TUICandidateGrid *)self indexPathForCandidate:a3];
  if (v4)
  {
    v5 = [(TUICandidateGrid *)self collectionView];
    v6 = [v5 layoutAttributesForItemAtIndexPath:v4];

    v7 = [v6 row];
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (int64_t)viewOffsetForCandidate:(id)a3
{
  v4 = [(TUICandidateGrid *)self indexPathForCandidate:a3];
  if (v4)
  {
    v5 = [(TUICandidateGrid *)self collectionView];
    v6 = [v5 layoutAttributesForItemAtIndexPath:v4];

    [v6 frame];
    MinX = CGRectGetMinX(v9);
  }

  else
  {
    MinX = 0x7FFFFFFFFFFFFFFFLL;
  }

  return MinX;
}

- (id)indexPathForCandidate:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(TUICandidateGrid *)self candidateGroups];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v5);
          }

          v11 = [*(*(&v15 + 1) + 8 * v9) candidates];
          v12 = v11;
          if (v11)
          {
            v13 = [v11 indexOfObject:v4];
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
        v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [(TUICandidateGrid *)self selectedIndexPath];
  if ((v3 && -[TUICandidateGrid indexPathIsValid:](self, "indexPathIsValid:", v3) || ([MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0], v4 = objc_claimAutoreleasedReturnValue(), v3, (v3 = v4) != 0)) && -[TUICandidateGrid indexPathIsValid:](self, "indexPathIsValid:", v3))
  {
    v5 = [(TUICandidateGrid *)self collectionView];
    v6 = [v5 layoutAttributesForItemAtIndexPath:v3];

    [v6 frame];
    v7 = [(TUICandidateGrid *)self indexPathsInTheRowThatContainsFrame:?];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (id)indexPathsInTheRowThatContainsFrame:(CGRect)a3
{
  height = a3.size.height;
  y = a3.origin.y;
  v25 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [(TUICandidateGrid *)self collectionView];
  [v7 bounds];
  v9 = v8;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [(TUICandidateGrid *)self collectionView];
  v11 = [v10 collectionViewLayout];
  v12 = [v11 layoutAttributesForElementsInRect:{0.0, y, v9, height}];

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
          v18 = [v17 indexPath];
          [v6 addObject:v18];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  return v6;
}

- (id)indexPathForCandidateNumber:(unint64_t)a3
{
  v37 = *MEMORY[0x1E69E9840];
  if (a3 - 1 <= 8)
  {
    v5 = [(TUICandidateGrid *)self style];
    v6 = [v5 layoutOrientation];

    if (v6 == 1)
    {
      v7 = [(TUICandidateGrid *)self indexPathForVerticalCandidateNumber:a3];
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
            v16 = [v15 indexPath];
            v17 = [(TUICandidateGrid *)self candidateNumberInVerticalLayoutForIndexPath:v16];

            if (v17 == a3)
            {
              v7 = [v15 indexPath];
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

      v18 = 0;
    }

    else
    {
      v18 = [(TUICandidateGrid *)self indexPathsForSelectedRow];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v18;
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
          v24 = [(TUICandidateGrid *)self collectionView];
          v25 = [v24 layoutAttributesForItemAtIndexPath:v23];

          if ([v25 candidateNumber] == a3)
          {
            v7 = [v25 indexPath];

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

  v7 = 0;
LABEL_29:

  return v7;
}

- (id)indexPathForVerticalCandidateNumber:(unint64_t)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [(TUICandidateGrid *)self collectionView];
  [v5 visibleBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(TUICandidateGrid *)self visibleAttributes];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = v29 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = 0;
    v17 = 0;
    v18 = *v27;
    v19 = a3 - 1;
    while (2)
    {
      v20 = 0;
      v21 = v19 - v16;
      v16 += v15;
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
            v15 = [v22 indexPath];
            goto LABEL_14;
          }
        }

        ++v20;
      }

      while (v15 != v20);
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v15;
}

- (unint64_t)candidateNumberInVerticalLayoutForIndexPath:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(TUICandidateGrid *)self candidateNumberEnabled])
  {
    v5 = [(TUICandidateGrid *)self collectionView];
    [v5 visibleBounds];
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

          v24 = [v22 indexPath];
          v25 = [v24 isEqual:v4];

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
  v3 = [(TUICandidateGrid *)self collectionView];
  [v3 visibleBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(TUICandidateGrid *)self collectionView];
  v13 = [v12 collectionViewLayout];
  v14 = [v13 layoutAttributesForElementsInRect:{v5, v7, v9, v11}];

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

- (unint64_t)candidateNumberInHorizontalLayoutForIndexPath:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUICandidateGrid *)self style];
  v6 = [v5 columnsCount];

  v7 = [(TUICandidateGrid *)self collectionView];
  v8 = v7;
  if (v6 == 1)
  {
    [v7 visibleBounds];
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

          v27 = [v25 indexPath];
          v28 = [v27 isEqual:v4];

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

    v29 = v21 - v20 + 1;
  }

  else
  {
    v17 = [v7 layoutAttributesForItemAtIndexPath:v4];

    v29 = [v17 candidateNumber];
  }

  return v29;
}

- (BOOL)canExpandCandidateGrid
{
  v3 = [(TUICandidateGrid *)self style];
  if ([v3 scrollDisabled])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(TUICandidateGrid *)self style];
    v4 = [v5 allowCandidateGridExpanding];
  }

  return v4;
}

- (unint64_t)candidateNumberForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(TUICandidateGrid *)self style];
  v6 = [v5 layoutOrientation];

  if (v6 == 1)
  {
    v7 = [(TUICandidateGrid *)self candidateNumberInVerticalLayoutForIndexPath:v4];
  }

  else
  {
    v7 = [(TUICandidateGrid *)self candidateNumberInHorizontalLayoutForIndexPath:v4];
  }

  v8 = v7;

  return v8;
}

- (void)showCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v7 = [TUICandidateGrid indexPathInForwardDirection:"indexPathInForwardDirection:granularity:" granularity:?];
  if (!v7)
  {
    v19 = [(TUICandidateGrid *)self selectedIndexPath];

    if (v19)
    {
      return;
    }

    if (v5)
    {
      v20 = [(TUICandidateGrid *)self firstIndexPath];
    }

    else
    {
      v29 = [(TUICandidateGrid *)self style];
      v30 = [v29 dontSelectLastItemByBackwardMoving];

      if (v30)
      {
        return;
      }

      v20 = [(TUICandidateGrid *)self lastIndexPath];
    }

    v7 = v20;
    if (!v20)
    {
      return;
    }
  }

  [(TUICandidateGrid *)self setSelectedIndexPath:v7 animated:0 scrollPosition:0];
  v31 = v7;
  v8 = [(TUICandidateGrid *)self style];
  v9 = [v8 showOneMoreCandidate];

  v10 = v31;
  if (v9)
  {
    v11 = [(TUICandidateGrid *)self indexPathInForwardDirection:v5 granularity:v4];
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
    if (-[TUICandidateGrid canExpandCandidateGrid](self, "canExpandCandidateGrid") && ((-[TUICandidateGrid style](self, "style"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 showOneMoreCandidate], v13, !v14) || v5))
    {
      v28 = [(TUICandidateGrid *)self delegate];
      [v28 candidateGridNeedsToExpand:self];
    }

    else
    {
      v15 = [(TUICandidateGrid *)self style];
      v16 = [v15 showOneMoreCandidate];

      if (v16 && v5)
      {
        v17 = 1;
        v18 = 36;
      }

      else
      {
        v21 = [(TUICandidateGrid *)self style];
        v22 = [v21 layoutOrientation];
        v17 = v4 != 1 || v22 != 1;

        if (v17)
        {
          v18 = 9;
        }

        else
        {
          v18 = 33;
        }
      }

      v24 = [(TUICandidateGrid *)self style];
      v25 = [v24 columnsCount];
      if (v4)
      {
        v26 = 0;
      }

      else
      {
        v26 = v25 == 1;
      }

      v27 = !v26;

      v28 = [(TUICandidateGrid *)self collectionView];
      [v28 scrollToItemAtIndexPath:v10 atScrollPosition:v18 animated:v27 & v17];
    }
  }
}

- (BOOL)hasCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v7 = [(TUICandidateGrid *)self selectedIndexPath];

  if (v7)
  {
    v8 = [(TUICandidateGrid *)self indexPathInForwardDirection:v5 granularity:v4];
    v9 = v8;
  }

  else
  {
    v9 = [(TUICandidateGrid *)self candidateGroups];
    v8 = [v9 count];
  }

  v10 = v8 != 0;

  return v10;
}

- (BOOL)indexPathIsFullyVisible:(id)a3 granularity:(int)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(TUICandidateGrid *)self collectionView];
  [v7 visibleBounds];
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
  v18 = [(TUICandidateGrid *)self collectionView];
  v19 = [v18 indexPathsForVisibleItems];

  v20 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
          objc_enumerationMutation(v19);
        }

        if ([v6 isEqual:*(*(&v36 + 1) + 8 * i)])
        {
          v26 = [(TUICandidateGrid *)self collectionView];
          v27 = [v26 layoutAttributesForItemAtIndexPath:v6];

          v28 = [(TUICandidateGrid *)self style];
          if (objc_opt_respondsToSelector())
          {
            v29 = [(TUICandidateGrid *)self style];
            v30 = [v29 shouldScrollIfShowingLastVisibleRow];

            if (((a4 == 1) & v30) != 0)
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

      v21 = [v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
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

- (id)indexPathInForwardDirection:(BOOL)a3 granularity:(int)a4
{
  v5 = a3;
  v104 = *MEMORY[0x1E69E9840];
  v7 = [(TUICandidateGrid *)self selectedIndexPath];
  if (![(TUICandidateGrid *)self indexPathIsValid:v7])
  {
    goto LABEL_63;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v8 = [(TUICandidateGrid *)self style];
      v9 = [v8 layoutOrientation];

      v10 = [(TUICandidateGrid *)self collectionView];
      v11 = [v10 layoutAttributesForItemAtIndexPath:v7];
      [v11 frame];
      v15 = v14;
      v17 = v16;
      if (v9 == 1)
      {
        v18 = v12;
        v19 = v13;

        v20 = [(TUICandidateGrid *)self collectionView];
        [v20 bounds];
        v22 = 1.0;
        if (v5)
        {
          v22 = -1.0;
        }

        v23 = v18 + v21 * v22;

        v24 = [(TUICandidateGrid *)self collectionView];
        v25 = [v24 collectionViewLayout];
        v26 = [v25 layoutAttributesForElementsInRect:{v23, v15, v19, v17}];

        v27 = [v26 sortedArrayUsingComparator:&__block_literal_global_55];

        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        if (v5)
        {
          v28 = v27;
        }

        else
        {
          v28 = [v27 reverseObjectEnumerator];
        }

        v67 = v28;
        v38 = [v28 countByEnumeratingWithState:&v98 objects:v103 count:16];
        if (v38)
        {
          v68 = *v99;
          while (2)
          {
            for (i = 0; i != v38; i = i + 1)
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
                  v38 = [v70 indexPath];
                  goto LABEL_51;
                }
              }
            }

            v38 = [v67 countByEnumeratingWithState:&v98 objects:v103 count:16];
            if (v38)
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
        if (v5)
        {
          v39 = 1.0;
        }

        v40 = v15 + v17 * v39;
        [(TUICandidateGrid *)self bounds];
        v42 = v41;
        v43 = [(TUICandidateGrid *)self collectionView];
        v44 = [v43 collectionViewLayout];
        v45 = [v44 layoutAttributesForElementsInRect:{0.0, v40, v42, v17}];

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v27 = v45;
        v46 = [v27 countByEnumeratingWithState:&v94 objects:v102 count:16];
        if (v46)
        {
          v47 = v46;
          v38 = 0;
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
                    v66 = [v51 indexPath];

                    v38 = v66;
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
                  v61 = [v51 indexPath];

                  v49 = v60;
                  v38 = v61;
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
          v38 = 0;
        }

LABEL_53:
      }
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v29 = [v7 section];
    v30 = [v7 row];
    if (v5)
    {
      v31 = v30 + 1;
    }

    else
    {
      v31 = v30 - 1;
    }

    if ((v31 & 0x8000000000000000) != 0)
    {
      if (v29-- < 1)
      {
        v31 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v63 = [(TUICandidateGrid *)self candidateGroups];
        v64 = [v63 objectAtIndexedSubscript:v29];
        v65 = [v64 candidates];
        v31 = [v65 count] - 1;
      }
    }

    else
    {
      v32 = [(TUICandidateGrid *)self candidateGroups];
      v33 = [v32 objectAtIndexedSubscript:v29];
      v34 = [v33 candidates];
      v35 = [v34 count];

      if (v31 >= v35)
      {
        ++v29;
        v36 = [(TUICandidateGrid *)self candidateGroups];
        v37 = [v36 count];

        if (v29 >= v37)
        {
          v31 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = 0;
        }
      }
    }

    v38 = [MEMORY[0x1E696AC88] indexPathForRow:v31 inSection:v29];
  }

  if (![(TUICandidateGrid *)self indexPathIsValid:v38, v94])
  {

LABEL_63:
    v38 = 0;
    goto LABEL_64;
  }

  if (!a4 && v38)
  {
    v75 = [(TUICandidateGrid *)self collectionView];
    v76 = [v75 layoutAttributesForItemAtIndexPath:v38];
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
      v88 = [(TUICandidateGrid *)self collectionView];
      [v88 bounds];
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

  return v38;
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
  v3 = [(TUICandidateGrid *)self selectedIndexPath];
  v4 = [(TUICandidateGrid *)self candidateAtIndexPath:v3];

  return v4;
}

- (BOOL)indexPathIsValid:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || [v4 section] < 0 || objc_msgSend(v5, "row") < 0)
  {
    v12 = 0;
  }

  else
  {
    v6 = [(TUICandidateGrid *)self candidateGroups];
    v7 = [v6 count];
    if (v7 <= [v5 section])
    {
      v12 = 0;
    }

    else
    {
      v8 = [(TUICandidateGrid *)self candidateGroups];
      v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v5, "section")}];
      v10 = [v9 candidates];
      v11 = [v10 count];
      v12 = v11 > [v5 row];
    }
  }

  return v12;
}

- (void)setSelectedIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5
{
  v6 = a4;
  v9 = a3;
  selectedIndexPath = self->_selectedIndexPath;
  if (selectedIndexPath != v9 || [(NSIndexPath *)selectedIndexPath isEqual:v9])
  {
    objc_storeStrong(&self->_selectedIndexPath, a3);
    if (v9 && -[TUICandidateGrid indexPathIsValid:](self, "indexPathIsValid:", v9) && (-[TUICandidateGrid collectionView](self, "collectionView"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 numberOfItemsInSection:{-[NSIndexPath section](v9, "section")}], v13 = -[NSIndexPath row](v9, "row"), v11, v12 > v13))
    {
      v14 = [(TUICandidateGrid *)self collectionView];
      [v14 selectItemAtIndexPath:v9 animated:v6 scrollPosition:a5];

      v15 = [(TUICandidateGrid *)self collectionView];
      v16 = [v15 layoutAttributesForItemAtIndexPath:v9];

      [v16 frame];
      [(TUICandidateGrid *)self setSelectedRowY:v17];
    }

    else
    {
      v18 = [(TUICandidateGrid *)self collectionView];
      v19 = [v18 indexPathsForSelectedItems];
      v16 = [v19 firstObject];

      if (v16)
      {
        v20 = [(TUICandidateGrid *)self collectionView];
        [v20 deselectItemAtIndexPath:v16 animated:0];
      }
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__TUICandidateGrid_setSelectedIndexPath_animated_scrollPosition___block_invoke;
    v22[3] = &unk_1E72D83A0;
    v22[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v22];
    v21 = [(TUICandidateGrid *)self delegate];
    [v21 candidateGridSelectionDidChange:self];

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
  v3 = [(TUICandidateGrid *)self candidateGroups];
  if (![v3 count])
  {
    v15 = 0;
    goto LABEL_5;
  }

  v4 = [(TUICandidateGrid *)self candidateGroups];
  v5 = [(TUICandidateGrid *)self candidateGroups];
  v6 = [v4 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 1}];
  v7 = [v6 candidates];
  v8 = [v7 count];

  if (v8)
  {
    v9 = MEMORY[0x1E696AC88];
    v3 = [(TUICandidateGrid *)self candidateGroups];
    v10 = [(TUICandidateGrid *)self candidateGroups];
    v11 = [v3 objectAtIndexedSubscript:{objc_msgSend(v10, "count") - 1}];
    v12 = [v11 candidates];
    v13 = [v12 count] - 1;
    v14 = [(TUICandidateGrid *)self candidateGroups];
    v15 = [v9 indexPathForRow:v13 inSection:{objc_msgSend(v14, "count") - 1}];

LABEL_5:
    goto LABEL_7;
  }

  v15 = 0;
LABEL_7:

  return v15;
}

- (NSIndexPath)firstIndexPath
{
  v3 = [(TUICandidateGrid *)self candidateGroups];
  if (![v3 count])
  {

    goto LABEL_10;
  }

  v4 = [(TUICandidateGrid *)self candidateGroups];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 candidates];
  v7 = [v6 count];

  if (!v7)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v8 = [(TUICandidateGrid *)self numberOfTransliterationCandidatesInSection:0];
  v9 = [(TUICandidateGrid *)self style];
  v10 = [v9 skipInlineCandidate];

  if (v10)
  {
    v11 = [(TUICandidateGrid *)self candidateGroups];
    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v12 candidates];
    v14 = [v13 count];

    if (v8 < v14)
    {
      v15 = [(TUICandidateGrid *)self candidateGroups];
      v16 = [v15 objectAtIndexedSubscript:0];
      v17 = [v16 candidates];
      v18 = [v17 objectAtIndexedSubscript:v8];

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

  v12 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    v13 = [(TUICandidateGrid *)self style];
    if ([v13 shouldUpdateCollectionViewWidthForArrowButtonVisibility])
    {
      v14 = [(TUICandidateGrid *)self collectionView];
      [v14 frame];
      v16 = v15;

      if (v8 == v16)
      {
        goto LABEL_9;
      }

      v12 = [(TUICandidateGrid *)self collectionView];
      [v12 setFrame:{v4, v6, v8, v10}];
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
  v3 = [(TUICandidateGrid *)self collectionView];
  [v3 contentSize];
  v5 = v4;
  v7 = v6;

  v8 = [(TUICandidateGrid *)self firstIndexPath];
  v9 = [v8 row];
  v10 = [(TUICandidateGrid *)self style];
  [v10 rowHeight];
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
  v3 = [(TUICandidateGrid *)self candidateGroups];
  v4 = [v3 firstObject];
  v5 = [v4 candidates];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v9 += [v12 isAutofillExtraCandidate];
        v8 += [v12 isWritingToolsButtonCandidate];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v13 = [(TUICandidateGrid *)self style];
  v14 = [v13 maxNumberOfProactiveCells];

  return ((v8 - v14) & ~((v8 - v14) >> 63)) + v9;
}

- (unint64_t)slottedCandidatesCount
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(TUICandidateGrid *)self candidateGroups];
  v4 = [v3 firstObject];
  v5 = [v4 candidates];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [v11 isWritingToolsButtonCandidate];
        if ([v11 isSlottedCandidate] && (objc_msgSend(v11, "isAutofillExtraCandidate") & 1) == 0)
        {
          v8 += [v11 isStickerCandidate] ^ 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  if (![(TUICandidateGrid *)self rowType])
  {
    v12 = [(TUICandidateGrid *)self style];
    v13 = [v12 maxNumberOfProactiveCells];

    if (v8 >= v13)
    {
      return v13;
    }
  }

  return v8;
}

- (id)candidateAtIndexPath:(id)a3
{
  v4 = a3;
  if ([(TUICandidateGrid *)self indexPathIsValid:v4])
  {
    v5 = [(TUICandidateGrid *)self candidateGroups];
    v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "section")}];
    v7 = [v6 candidates];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)scrollToTop
{
  v3 = [(TUICandidateGrid *)self collectionView];
  [v3 setShowsVerticalScrollIndicator:0];

  v4 = [(TUICandidateGrid *)self style];
  v5 = [v4 layoutOrientation];

  if (v5 == 1)
  {
    v6 = [(TUICandidateGrid *)self collectionView];
    [v6 contentSize];
    v8 = v7 + -1.0;
    v9 = 1.0;
  }

  else
  {
    v9 = 1.0;
    v8 = 0.0;
  }

  v10 = [(TUICandidateGrid *)self collectionView];
  [v10 scrollRectToVisible:0 animated:{v8, 0.0, v9, v9}];

  v11 = [(TUICandidateGrid *)self collectionView];
  [v11 setShowsVerticalScrollIndicator:1];
}

- (double)rowHeight
{
  v3 = [(TUICandidateGrid *)self style];
  [v3 rowHeight];
  v5 = v4;

  [(TUICandidateGrid *)self maximumRowHeight];
  if (v5 >= v6)
  {
    v6 = v5;
  }

  [(TUICandidateGrid *)self setMaximumRowHeight:v6];
  v7 = [(TUICandidateGrid *)self style];
  [v7 rowHeight];
  v9 = v8;

  return v9;
}

- (void)updateBounce
{
  v3 = [(TUICandidateGrid *)self rowType];
  if (v3 == 1)
  {
    v6 = [(TUICandidateGrid *)self style];
    v4 = [v6 layoutOrientation] == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(TUICandidateGrid *)self collectionView];
  [v5 setAlwaysBounceVertical:v4];

  if (v3 == 1)
  {
  }
}

- (void)updateContentInset
{
  v3 = [(TUICandidateGrid *)self collectionView];
  [v3 contentInset];

  v4 = 0.0;
  Height = 0.0;
  if ([(TUICandidateGrid *)self rowType])
  {
    v6 = [(TUICandidateGrid *)self customHeader];
    [v6 frame];
    Height = CGRectGetHeight(v48);
  }

  v7 = [(TUICandidateGrid *)self collectionView];
  [v7 contentSize];
  v9 = v8;
  v11 = v10;

  v12 = [(TUICandidateGrid *)self style];
  v13 = [v12 layoutOrientation];

  v14 = [(TUICandidateGrid *)self style];
  [v14 rowHeight];
  v16 = v15;
  v17 = [(TUICandidateGrid *)self firstIndexPath];
  v18 = [v17 row];

  v19 = v11 - v16 * v18;
  if (v13)
  {
    v20 = v9 - v16 * v18;
  }

  else
  {
    v20 = v9;
  }

  if (v13)
  {
    v21 = v11;
  }

  else
  {
    v21 = v19;
  }

  if ([(TUICandidateGrid *)self rowType]== 1)
  {
    v22 = [(TUICandidateGrid *)self collectionView];
    [v22 bounds];
    v24 = v23;

    if (v21 < v24)
    {
      v25 = [(TUICandidateGrid *)self collectionView];
      [v25 bounds];
      v4 = v26 - v21;
    }
  }

  v27 = 0.0;
  if ([(TUICandidateGrid *)self rowType]== 1)
  {
    v28 = [(TUICandidateGrid *)self style];
    if ([v28 layoutOrientation] == 1)
    {
      v29 = [(TUICandidateGrid *)self collectionView];
      [v29 bounds];
      v31 = v30;

      if (v20 >= v31)
      {
        goto LABEL_17;
      }

      v28 = [(TUICandidateGrid *)self collectionView];
      [v28 bounds];
      v27 = v32 - v20;
    }
  }

LABEL_17:
  v33 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    v34 = [(TUICandidateGrid *)self style];
    v35 = [v34 shouldUpdateCollectionViewWidthForArrowButtonVisibility];
  }

  else
  {
    v35 = 0;
  }

  v36 = 0.0;
  if (![(TUICandidateGrid *)self rowType])
  {
    [(TUICandidateGrid *)self bounds];
    if (!((v9 <= v37) | v35 & 1))
    {
      [(TUICandidateGrid *)self arrowButtonSize];
      v36 = v38;
    }
  }

  v39 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    [(TUICandidateGrid *)self bounds];
    v41 = v40;

    if (v9 <= v41)
    {
      goto LABEL_27;
    }

    v39 = [(TUICandidateGrid *)self style];
    [v39 widthOfGridGradient];
    v36 = v36 + v42;
  }

LABEL_27:
  v43 = [(TUICandidateGrid *)self collectionView];
  [v43 setContentInset:{Height, v27, v4, v36}];

  if ([(TUICandidateGrid *)self rowType])
  {
    [(TUICandidateGrid *)self arrowButtonSize];
    v45 = v44;
  }

  else
  {
    v45 = 0.0;
  }

  v46 = [(TUICandidateGrid *)self collectionView];
  [v46 setVerticalScrollIndicatorInsets:{v45, 0.0, 0.0, 0.0}];
}

- (UIEdgeInsets)safeAreaInsets
{
  v3 = [(TUICandidateGrid *)self window];
  [v3 bounds];
  MaxY = CGRectGetMaxY(v17);
  v5 = [(TUICandidateGrid *)self window];
  [(TUICandidateGrid *)self bounds];
  [v5 convertRect:self fromView:?];
  v6 = MaxY - CGRectGetMaxY(v18);

  v7 = *MEMORY[0x1E69DDCE0];
  v8 = *(MEMORY[0x1E69DDCE0] + 8);
  v9 = *(MEMORY[0x1E69DDCE0] + 24);
  v10 = [(TUICandidateGrid *)self window];
  [v10 safeAreaInsets];
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

- (void)setCustomHeader:(id)a3
{
  v5 = a3;
  v14 = v5;
  if (self->_customHeader != v5)
  {
    objc_storeStrong(&self->_customHeader, a3);
    [(TUICandidateGrid *)self updateContentInset];
    v5 = v14;
  }

  if (v5)
  {
    v6 = [(TUICandidateGrid *)self rowType]== 1;
    v5 = v14;
    if (v6)
    {
      v7 = [(TUICandidateGrid *)self customHeader];
      [v7 frame];
      Height = CGRectGetHeight(v16);
      v9 = [(TUICandidateGrid *)self collectionViewLayout];
      [v9 setCustomHeaderHeight:Height];

      v10 = [(TUICandidateGrid *)self collectionViewLayout];
      [v10 invalidateLayout];

      v11 = [(TUICandidateGrid *)self collectionView];
      v12 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
      v13 = [v11 supplementaryViewForElementKind:@"CustomHeader" atIndexPath:v12];
      [v13 addSubview:v14];

      v5 = v14;
    }
  }
}

- (void)setCandidateNumberEnabled:(BOOL)a3
{
  v3 = a3;
  self->_candidateNumberEnabled = a3;
  v4 = [(TUICandidateGrid *)self collectionViewLayout];
  [v4 setCandidateNumberEnabled:v3];
}

- (void)setRowType:(int64_t)a3 options:(unint64_t)a4 style:(id)a5 animated:(BOOL)a6 animator:(id)a7 completion:(id)a8
{
  v10 = a6;
  v13 = a5;
  v14 = a7;
  v15 = a8;
  if (self->_rowType == a3)
  {
    [(TUICandidateGrid *)self setStyle:v13];
  }

  else
  {
    self->_rowType = a3;
    v16 = [(TUICandidateGrid *)self style];

    if (!v16)
    {
      [(TUICandidateGrid *)self setStyle:v13];
    }

    objc_initWeak(location, self->_collectionView);
    [(TUICandidateGrid *)self updateBounce];
    WeakRetained = objc_loadWeakRetained(location);
    v18 = [WeakRetained indexPathsForVisibleItems];
    v19 = [v18 valueForKeyPath:@"@min.self"];
    [(TUICandidateGrid *)self setFirstVisibleIndexPath:v19];

    if (!a3)
    {
      [(TUICandidateGrid *)self setLastUserSelectedCursorX:0.0];
    }

    if (v10)
    {
      v20 = [(TUICandidateGrid *)self collectionView];
      [v20 setShowsVerticalScrollIndicator:0];

      [(TUICandidateGrid *)self setAnimating:1];
      [(TUICandidateGrid *)self setStylePending:v13];
      v21 = objc_loadWeakRetained(location);
      v22 = [(TUICandidateGrid *)self firstVisibleIndexPath];
      v23 = [v21 layoutAttributesForItemAtIndexPath:v22];

      if (a3 == 1)
      {
        v24 = v13;
      }

      else
      {
        v24 = [(TUICandidateGrid *)self style];
      }

      v28 = v24;
      v29 = objc_alloc_init(TUICandidateLayout);
      [(TUICandidateLayout *)v29 setRowType:1];
      [(TUICandidateLayout *)v29 setCandidateNumberEnabled:[(TUICandidateGrid *)self candidateNumberEnabled]];
      [(TUICandidateLayout *)v29 setTransitionState:1];
      v30 = [(TUICandidateGrid *)self firstVisibleIndexPath];
      [(TUICandidateLayout *)v29 setOldFirstVisibleIndexPath:v30];

      [v23 frame];
      MinX = CGRectGetMinX(v78);
      v32 = [(TUICandidateGrid *)self collectionView];
      [v32 contentOffset];
      [(TUICandidateLayout *)v29 setOldFirstVisibleOffset:MinX - v33];

      if (objc_opt_respondsToSelector())
      {
        v34 = [v28 shouldJustifyRow];
      }

      else
      {
        v34 = 0;
      }

      [(TUICandidateLayout *)v29 setShouldJustifyRow:v34];
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
        v39 = [v28 hideSlottedCellSeparators];
      }

      else
      {
        v39 = 0;
      }

      [(TUICandidateLayout *)v29 setHideSlottedCellSeparators:v39];
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
      if (a3 == 1)
      {
        v54 = [(TUICandidateGrid *)self stylePending];
        [(TUICandidateGrid *)self setStyle:v54 reload:0];

        v55 = objc_loadWeakRetained(location);
        [v55 setCollectionViewLayout:v29 animated:0];

        v56 = objc_loadWeakRetained(location);
        [v56 layoutIfNeeded];

        [(TUICandidateGrid *)self forceUpdateVisibleCells];
        v57 = [(TUICandidateGrid *)self firstVisibleIndexPath];
        v58 = [(TUICandidateGrid *)self indexPathIsValid:v57];

        if (v58)
        {
          v59 = [(TUICandidateGrid *)self firstVisibleIndexPath];
          [(TUICandidateGrid *)self scrollToCandidateAtIndexPath:v59 animated:0];
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
        [v14 addAnimations:v74];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __74__TUICandidateGrid_setRowType_options_style_animated_animator_completion___block_invoke_2;
        v71[3] = &unk_1E72D7D90;
        objc_copyWeak(&v73, location);
        v71[4] = self;
        v72 = v15;
        [v14 addCompletion:v71];

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
        [v14 addAnimations:v68];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __74__TUICandidateGrid_setRowType_options_style_animated_animator_completion___block_invoke_4;
        v65[3] = &unk_1E72D7D90;
        v65[4] = self;
        objc_copyWeak(&v67, location);
        v66 = v15;
        [v14 addCompletion:v65];

        objc_destroyWeak(&v67);
        objc_destroyWeak(&v70);
      }
    }

    else
    {
      [(TUICandidateGrid *)self setStyle:v13];
      v25 = objc_loadWeakRetained(location);
      v26 = [(TUICandidateGrid *)self collectionViewLayout];
      [v25 setCollectionViewLayout:v26];

      v27 = [(TUICandidateGrid *)self firstVisibleIndexPath];
      [(TUICandidateGrid *)self scrollToCandidateAtIndexPath:v27 animated:0];

      [(TUICandidateGrid *)self setFirstVisibleIndexPath:0];
      if (v15)
      {
        (*(v15 + 2))(v15, 1);
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

- (void)setRowType:(int64_t)a3 options:(unint64_t)a4 animated:(BOOL)a5 completion:(id)a6
{
  if (a5)
  {
    v9 = MEMORY[0x1E69DD278];
    v10 = a6;
    v13 = [[v9 alloc] initWithDuration:(a4 >> 16) & 7 curve:&__block_literal_global_42 animations:0.25];
    v11 = [(TUICandidateGrid *)self style];
    [(TUICandidateGrid *)self setRowType:a3 options:a4 style:v11 animated:1 animator:v13 completion:v10];

    [v13 startAnimation];
  }

  else
  {
    v12 = a6;
    v13 = [(TUICandidateGrid *)self style];
    [TUICandidateGrid setRowType:"setRowType:options:style:animated:animator:completion:" options:a3 style:a4 animated:? animator:? completion:?];
  }
}

- (void)setStyle:(id)a3 reload:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v156 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (([(TUICandidateViewStyle *)self->_style isEqual:v7]& 1) != 0)
  {
    goto LABEL_53;
  }

  v8 = [(TUICandidateViewStyle *)self->_style backgroundColor];
  v9 = [v7 backgroundColor];
  if (v8 == v9)
  {
LABEL_5:
    v149 = v5;
    v12 = [(TUICandidateViewStyle *)self->_style lineColor];
    v13 = [v7 lineColor];
    if (v12 == v13)
    {
      LOBYTE(v16) = 0;
    }

    else
    {
      [(TUICandidateViewStyle *)self->_style lineColor];
      v14 = v146 = v4;
      v15 = [v7 lineColor];
      v16 = [v14 isEqual:v15] ^ 1;

      v4 = v146;
    }

    v11 = v147;
    v10 = v148;
    v17 = v16;
    v5 = v149;
    if (v8 == v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v10 = [(TUICandidateViewStyle *)self->_style backgroundColor];
  v11 = [v7 backgroundColor];
  if ([v10 isEqual:v11])
  {
    v147 = v11;
    v148 = v10;
    goto LABEL_5;
  }

  v17 = 1;
LABEL_10:

LABEL_11:
  v18 = [(TUICandidateViewStyle *)self->_style hidesPartialCandidates];
  v19 = [v7 hidesPartialCandidates];
  if (v4)
  {
    v20 = v17 | v18 ^ v19;
  }

  else
  {
    v20 = 0;
  }

  style = self->_style;
  if (style)
  {
    v22 = [(TUICandidateViewStyle *)style showsIndex];
    v23 = v22 ^ [v7 showsIndex];
  }

  else
  {
    v23 = 1;
  }

  objc_storeStrong(&self->_style, v5);
  v24 = [v7 gridBackgroundColor];
  [v7 backgroundOpacity];
  if (v25 < 1.0)
  {
    v154 = 0.0;
    [v24 getRed:0 green:0 blue:0 alpha:&v154];
    v26 = v154;
    [v7 backgroundOpacity];
    v28 = [v24 colorWithAlphaComponent:v26 * v27];

    v24 = v28;
  }

  [(TUICandidateGrid *)self setBackgroundColor:v24];
  v29 = [v7 textColor];
  v30 = [(TUICandidateGrid *)self collectionView];
  [v30 setTintColor:v29];

  [v7 cornerRadius];
  [(TUICandidateGrid *)self _setContinuousCornerRadius:?];
  v31 = [v7 gridMaskedCorners];
  v32 = [(TUICandidateGrid *)self layer];
  [v32 setMaskedCorners:v31];

  v33 = [v7 highlightedRowBackgroundColor];
  v34 = [(TUICandidateGrid *)self selectedRowHighlightView];
  [v34 setBackgroundColor:v33];

  if ([v7 scrollDisabled])
  {
    v35 = 0;
  }

  else
  {
    v35 = [v7 dragGestureDisabled] ^ 1;
  }

  v36 = [(TUICandidateGrid *)self collectionView];
  [v36 setScrollEnabled:v35];

  [v7 foregroundOpacity];
  v38 = v37;
  v39 = [(TUICandidateGrid *)self collectionView];
  [v39 setAlpha:v38];

  [v7 gridPadding];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = [(TUICandidateGrid *)self singleRowLayout];
  [v48 setGridPadding:{v41, v43, v45, v47}];

  [v7 gridLinePadding];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = [(TUICandidateGrid *)self singleRowLayout];
  [v57 setGridLinePadding:{v50, v52, v54, v56}];

  [v7 gridLineOffset];
  v59 = v58;
  v61 = v60;
  v62 = [(TUICandidateGrid *)self singleRowLayout];
  [v62 setGridLineOffset:{v59, v61}];

  v63 = [v7 layoutOrientation];
  v64 = [(TUICandidateGrid *)self singleRowLayout];
  [v64 setLayoutOrientation:v63];

  v65 = [v7 showsIndex];
  v66 = [(TUICandidateGrid *)self singleRowLayout];
  [v66 setShowsIndex:v65];

  v67 = [(TUICandidateGrid *)self style];
  v68 = [v67 showExtraLineBeforeFirstRow];
  v69 = [(TUICandidateGrid *)self singleRowLayout];
  [v69 setShowExtraLineBeforeFirstRow:v68];

  v70 = [v7 fillGridWithLines];
  v71 = [(TUICandidateGrid *)self singleRowLayout];
  [v71 setFillGridWithLines:v70];

  v72 = 0.0;
  v73 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v7 cellTopOffset];
    v73 = v74;
  }

  v75 = [(TUICandidateGrid *)self singleRowLayout];
  [v75 setCellTopOffset:v73];

  if (objc_opt_respondsToSelector())
  {
    [v7 lineTopOffset];
    v72 = v76;
  }

  v77 = [(TUICandidateGrid *)self singleRowLayout];
  [v77 setLineTopOffset:v72];

  [v7 gridPadding];
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v85 = v84;
  v86 = [(TUICandidateGrid *)self multiRowLayout];
  [v86 setGridPadding:{v79, v81, v83, v85}];

  [v7 gridLinePadding];
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  v95 = [(TUICandidateGrid *)self multiRowLayout];
  [v95 setGridLinePadding:{v88, v90, v92, v94}];

  v96 = 0.0;
  v97 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v7 interRowSpacing];
    v97 = v98;
  }

  v99 = [(TUICandidateGrid *)self multiRowLayout];
  [v99 setInterRowSpacing:v97];

  if (objc_opt_respondsToSelector())
  {
    [v7 slottedCandidatesIterItemSpacing];
    v96 = v100;
  }

  v101 = [(TUICandidateGrid *)self multiRowLayout];
  [v101 setSlottedCandidatesIterItemSpacing:v96];

  if (objc_opt_respondsToSelector())
  {
    v102 = [v7 hideSlottedCellSeparators];
  }

  else
  {
    v102 = 0;
  }

  v103 = [(TUICandidateGrid *)self multiRowLayout];
  [v103 setHideSlottedCellSeparators:v102];

  [v7 gridLineOffset];
  v105 = v104;
  v107 = v106;
  v108 = [(TUICandidateGrid *)self multiRowLayout];
  [v108 setGridLineOffset:{v105, v107}];

  [v7 minimumInterItemSpacing];
  v110 = v109;
  v111 = [(TUICandidateGrid *)self multiRowLayout];
  [v111 setMinimumInterItemSpacing:v110];

  v112 = [v7 layoutOrientation];
  v113 = [(TUICandidateGrid *)self multiRowLayout];
  [v113 setLayoutOrientation:v112];

  if (objc_opt_respondsToSelector())
  {
    v114 = [v7 shouldJustifyRow];
  }

  else
  {
    v114 = 0;
  }

  v115 = [(TUICandidateGrid *)self multiRowLayout];
  [v115 setShouldJustifyRow:v114];

  v116 = [v7 columnsCount];
  v117 = [(TUICandidateGrid *)self multiRowLayout];
  [v117 setColumnsCount:v116];

  v118 = [v7 showsIndex];
  v119 = [(TUICandidateGrid *)self multiRowLayout];
  [v119 setShowsIndex:v118];

  v120 = [(TUICandidateGrid *)self style];
  v121 = [v120 showExtraLineBeforeFirstRow];
  v122 = [(TUICandidateGrid *)self multiRowLayout];
  [v122 setShowExtraLineBeforeFirstRow:v121];

  v123 = [v7 fillGridWithLines];
  v124 = [(TUICandidateGrid *)self multiRowLayout];
  [v124 setFillGridWithLines:v123];

  v125 = 0.0;
  v126 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [v7 cellTopOffset];
    v126 = v127;
  }

  v128 = [(TUICandidateGrid *)self multiRowLayout];
  [v128 setCellTopOffset:v126];

  if (objc_opt_respondsToSelector())
  {
    [v7 lineTopOffset];
    v125 = v129;
  }

  v130 = [(TUICandidateGrid *)self multiRowLayout];
  [v130 setLineTopOffset:v125];

  [v7 singleSlottedCellMargin];
  v132 = v131;
  v133 = [(TUICandidateGrid *)self singleRowLayout];
  [v133 setSingleSlottedCellMargin:v132];

  [v7 minimumInterItemSpacing];
  v135 = v134;
  v136 = [(TUICandidateGrid *)self singleRowLayout];
  [v136 setMinimumInterItemSpacing:v135];

  v137 = [(TUICandidateGrid *)self style];
  -[TUICandidateGrid setClipsToBounds:](self, "setClipsToBounds:", [v137 doNotClipToBounds] ^ 1);

  [(TUICandidateGrid *)self updateBounce];
  if (v20)
  {
    v138 = [(TUICandidateGrid *)self collectionView];
    [v138 reloadData];
  }

  else
  {
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v139 = [(TUICandidateGrid *)self collectionView];
    v140 = [v139 visibleCells];

    v141 = [v140 countByEnumeratingWithState:&v150 objects:v155 count:16];
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
            objc_enumerationMutation(v140);
          }

          [*(*(&v150 + 1) + 8 * i) setStyle:v7];
        }

        v142 = [v140 countByEnumeratingWithState:&v150 objects:v155 count:16];
      }

      while (v142);
    }

    v138 = [(TUICandidateGrid *)self collectionView];
    v145 = [v138 collectionViewLayout];
    [v145 invalidateLayout];
  }

  if (v23)
  {
    [(TUICandidateGrid *)self updateIndex];
  }

LABEL_53:
}

- (void)setStyle:(id)a3
{
  v4 = a3;
  if ([(TUICandidateGrid *)self animating])
  {
    [(TUICandidateGrid *)self setStylePending:v4];
  }

  else
  {
    [(TUICandidateGrid *)self setStyle:v4 reload:1];
  }
}

- (void)updateIndex
{
  v3 = [(TUICandidateGrid *)self collectionView];
  [v3 _reloadSectionIndexTitles];

  v4 = [(TUICandidateGrid *)self collectionView];
  v5 = [v4 accessoryViewAtEdge:1];

  v6 = [MEMORY[0x1E69DC888] clearColor];
  [v5 setBackgroundColor:v6];

  [v5 _removeAllAnimations:0];
  v7 = [(TUICandidateGrid *)self style];
  if ([v7 showsIndex])
  {
    v8 = [(TUICandidateGrid *)self collectionView];
    v9 = [(TUICandidateGrid *)self _sectionIndexTitlesForCollectionView:v8];
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

  v15 = [(TUICandidateGrid *)self collectionView];
  [v15 setShowsVerticalScrollIndicator:1];
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
  v3 = [(TUICandidateGrid *)self suppressCollectionViewLayout];
  if (!v3)
  {
    [(TUICandidateGrid *)self bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(TUICandidateGrid *)self collectionView];
    [v12 setFrame:{v5, v7, v9, v11}];

    [(TUICandidateGrid *)self updateContentInset];
    [(TUICandidateGrid *)self updateSelectedRowHighlightView];
    [(TUICandidateGrid *)self updateCollectionViewFrameForArrowButton];
  }

  [(TUICandidateGrid *)self setCollectionViewLayoutWasSkipped:v3];
}

- (void)setSuppressCollectionViewLayout:(BOOL)a3
{
  if (self->_suppressCollectionViewLayout != a3)
  {
    self->_suppressCollectionViewLayout = a3;
    if (!a3)
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
  v41 = [MEMORY[0x1E695DF70] array];
  v3 = [(TUICandidateGrid *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];
  v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_9151];

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
        v12 = [(TUICandidateGrid *)self collectionView];
        v13 = [v12 cellForItemAtIndexPath:v11];

        v14 = [v13 window];

        if (v14)
        {
          v15 = [(TUICandidateGrid *)self window];
          [v13 frame];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v24 = [(TUICandidateGrid *)self collectionView];
          [v15 convertRect:v24 fromView:{v17, v19, v21, v23}];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          v33 = [(TUICandidateGrid *)self window];
          v49.origin.x = v26;
          v49.origin.y = v28;
          v49.size.width = v30;
          v49.size.height = v32;
          MinX = CGRectGetMinX(v49);
          v50.origin.x = v26;
          v50.origin.y = v28;
          v50.size.width = v30;
          v50.size.height = v32;
          v35 = [v33 hitTest:0 withEvent:{MinX, CGRectGetMidY(v50)}];

          v36 = [(TUICandidateGrid *)self window];
          v51.origin.x = v26;
          v51.origin.y = v28;
          v51.size.width = v30;
          v51.size.height = v32;
          v37 = CGRectGetMaxX(v51) + -0.01;
          v52.origin.x = v26;
          v52.origin.y = v28;
          v52.size.width = v30;
          v52.size.height = v32;
          v38 = [v36 hitTest:0 withEvent:{v37, CGRectGetMidY(v52)}];

          if (([v35 isDescendantOfView:v13] & 1) != 0 || objc_msgSend(v38, "isDescendantOfView:", v13))
          {
            v39 = [(TUICandidateGrid *)self candidateAtIndexPath:v11];
            if (v39)
            {
              [v41 addObject:v39];
            }
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v42 objects:v46 count:16];
    }

    while (v8);
  }

  return v41;
}

- (void)scrollToFirstCandidate
{
  v6 = [(TUICandidateGrid *)self firstIndexPath];
  if (-[TUICandidateGrid indexPathIsValid:](self, "indexPathIsValid:") && (-[TUICandidateGrid collectionView](self, "collectionView"), v3 = objc_claimAutoreleasedReturnValue(), [v3 contentOffset], v5 = v4, v3, v5 >= 0.0))
  {
    [(TUICandidateGrid *)self scrollToCandidateAtIndexPath:v6 animated:0];
  }

  else
  {
    [(TUICandidateGrid *)self scrollToTop];
  }
}

- (void)setCandidateGroups:(id)a3
{
  v8 = a3;
  if (([(NSArray *)self->_candidateGroups isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_candidateGroups, a3);
    v5 = [(TUICandidateGrid *)self collectionView];
    [v5 reloadData];

    [(TUICandidateGrid *)self updateIndex];
    if (self->_selectedIndexPath)
    {
      v6 = [(TUICandidateGrid *)self collectionView];
      [v6 deselectItemAtIndexPath:self->_selectedIndexPath animated:0];

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
  v4 = [(TUICandidateGrid *)self customHeader];
  [v4 frame];
  [v3 setCustomHeaderHeight:CGRectGetHeight(v43)];

  v5 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    v6 = [(TUICandidateGrid *)self style];
    [v3 setShouldJustifyRow:{objc_msgSend(v6, "shouldJustifyRow")}];
  }

  else
  {
    [v3 setShouldJustifyRow:0];
  }

  v7 = [(TUICandidateGrid *)self style];
  [v3 setColumnsCount:{objc_msgSend(v7, "columnsCount")}];

  v8 = [(TUICandidateGrid *)self style];
  [v3 setLayoutOrientation:{objc_msgSend(v8, "layoutOrientation")}];

  v9 = [(TUICandidateGrid *)self style];
  [v9 gridPadding];
  [v3 setGridPadding:?];

  v10 = [(TUICandidateGrid *)self style];
  [v10 gridLinePadding];
  [v3 setGridLinePadding:?];

  v11 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    v12 = [(TUICandidateGrid *)self style];
    [v12 interRowSpacing];
    [v3 setInterRowSpacing:?];
  }

  else
  {
    [v3 setInterRowSpacing:0.0];
  }

  v13 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    v14 = [(TUICandidateGrid *)self style];
    [v14 slottedCandidatesIterItemSpacing];
    [v3 setSlottedCandidatesIterItemSpacing:?];
  }

  else
  {
    [v3 setSlottedCandidatesIterItemSpacing:0.0];
  }

  v15 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    v16 = [(TUICandidateGrid *)self style];
    [v3 setHideSlottedCellSeparators:{objc_msgSend(v16, "hideSlottedCellSeparators")}];
  }

  else
  {
    [v3 setHideSlottedCellSeparators:0];
  }

  v17 = [(TUICandidateGrid *)self style];
  [v17 gridLineOffset];
  [v3 setGridLineOffset:?];

  v18 = [(TUICandidateGrid *)self style];
  [v18 minimumInterItemSpacing];
  [v3 setMinimumInterItemSpacing:?];

  v19 = [(TUICandidateGrid *)self style];
  [v19 singleSlottedCellMargin];
  [v3 setSingleSlottedCellMargin:?];

  v20 = [(TUICandidateGrid *)self style];
  [v3 setShowExtraLineBeforeFirstRow:{objc_msgSend(v20, "showExtraLineBeforeFirstRow")}];

  v21 = [(TUICandidateGrid *)self style];
  [v3 setFillGridWithLines:{objc_msgSend(v21, "fillGridWithLines")}];

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
  v36 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    v37 = [(TUICandidateGrid *)self style];
    [v37 cellTopOffset];
    [v3 setCellTopOffset:?];
  }

  else
  {
    [v3 setCellTopOffset:0.0];
  }

  v38 = [(TUICandidateGrid *)self style];
  if (objc_opt_respondsToSelector())
  {
    v39 = [(TUICandidateGrid *)self style];
    [v39 lineTopOffset];
    [v3 setLineTopOffset:?];
  }

  else
  {
    [v3 setLineTopOffset:0.0];
  }

  v40 = [(TUICandidateGrid *)self _inheritedRenderConfig];
  [v3 set_inheritedRenderConfig:v40];

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
    v13 = [(TUICandidateGrid *)self collectionViewLayout];
    v14 = [(TUICandidateCollectionView *)v4 initWithFrame:v13 collectionViewLayout:v6, v8, v10, v12];
    v15 = self->_collectionView;
    self->_collectionView = v14;

    [(UICollectionView *)self->_collectionView setShowsHorizontalScrollIndicator:0];
    [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UICollectionView *)self->_collectionView setDelegate:self];
    [(UICollectionView *)self->_collectionView setDataSource:self];
    [(UICollectionView *)self->_collectionView setAllowsMultipleSelection:0];
    v16 = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)self->_collectionView setBackgroundColor:v16];

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

- (TUICandidateGrid)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TUICandidateGrid;
  v3 = [(TUICandidateGrid *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateGrid *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateGrid)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUICandidateGrid;
  v3 = [(TUICandidateGrid *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v5 = [(TUICandidateGrid *)self selectedRowHighlightView];
  [v5 setZPosition:-1.0];

  v6 = [(TUICandidateGrid *)self selectedRowHighlightView];
  [v6 setUserInteractionEnabled:0];

  v8 = [(TUICandidateGrid *)self collectionView];
  v7 = [(TUICandidateGrid *)self selectedRowHighlightView];
  [v8 insertSubview:v7 atIndex:0];
}

+ (BOOL)isSafariPasswordSuggestionCandidate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isWritingToolsButtonCandidate] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (BOOL)isGradientContentLabelCandidate:(id)a3
{
  v3 = a3;
  if (([v3 candidateProperty] & 2) != 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = ([v3 candidateProperty] >> 7) & 1;
  }

  return v4;
}

+ (BOOL)isWritingToolSuggestionCandidate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isWritingToolsButtonCandidate];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end