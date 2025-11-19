@interface TUICandidateView
- (BOOL)candidateBackdropViewShouldShowBackdropView:(id)a3;
- (BOOL)handleNumberKey:(unint64_t)a3;
- (BOOL)hasCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4;
- (BOOL)hasCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4 inGridType:(int64_t)a5;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)reloadPrimaryGridDataIfNeeded;
- (BOOL)shouldAutomaticallyHideAndShowSortControl;
- (BOOL)showingArrowButton;
- (BOOL)showingAutofillCandidate;
- (BOOL)toggleSortControl:(BOOL)a3 animated:(BOOL)a4;
- (CGRect)boundsForClipsToBoundsViewWithState:(id)a3;
- (CGRect)candidateViewFrame;
- (CGSize)getArrowButtonSizeForGrid;
- (NSIndexPath)disambiguationSelectedIndexPath;
- (NSIndexPath)selectedIndexPath;
- (TIKeyboardCandidate)selectedCandidate;
- (TIKeyboardCandidate)selectedDisambiguationCandidate;
- (TUICandidateView)initWithCoder:(id)a3;
- (TUICandidateView)initWithFrame:(CGRect)a3;
- (TUICandidateViewDelegate)delegate;
- (double)arrowButtonHeight;
- (double)arrowButtonWidth;
- (double)disambiguationHeight;
- (double)inlineTextHeight;
- (double)sortControlHeight;
- (id)candidateGroupsForCurrentState;
- (id)filteredCandidates;
- (id)gridOfType:(int64_t)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)indexPathForCandidate:(id)a3;
- (id)sortControlTitles;
- (id)visibleCandidates;
- (int64_t)effectiveCandidateArrowButonPosition;
- (int64_t)rowForCandidate:(id)a3;
- (int64_t)selectedSortControlIndex;
- (int64_t)viewOffsetForCandidate:(id)a3;
- (void)candidateGrid:(id)a3 didAcceptCandidate:(id)a4 atIndexPath:(id)a5;
- (void)candidateGrid:(id)a3 didChangeContentSize:(CGSize)a4;
- (void)candidateGrid:(id)a3 didMoveHighlightFrame:(CGRect)a4;
- (void)candidateGridNeedsToExpand:(id)a3;
- (void)candidateGridSelectionDidChange:(id)a3;
- (void)changeLayoutInsideAnimationBlock;
- (void)commonInit;
- (void)didTapArrowButton:(id)a3;
- (void)didTapInlineText:(id)a3;
- (void)finalizeLayoutChange;
- (void)handleSortControlValueChanged;
- (void)layoutSubviews;
- (void)prepareForLayoutChange:(BOOL)a3;
- (void)reloadDisambiguationGridDataIfNeeded;
- (void)reloadGridsIfNeeded;
- (void)resetSortControlIndex;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setCandidateResultSet:(id)a3;
- (void)setDisambiguationSelectedIndexPath:(id)a3;
- (void)setInlineText:(id)a3;
- (void)setSelectedIndexPath:(id)a3;
- (void)setSelectedIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5;
- (void)setState:(id)a3 animated:(BOOL)a4 animator:(id)a5 options:(unint64_t)a6 force:(BOOL)a7 completion:(id)a8;
- (void)setState:(id)a3 animated:(BOOL)a4 options:(unint64_t)a5 force:(BOOL)a6 completion:(id)a7;
- (void)showCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4;
- (void)showCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4 inGridType:(int64_t)a5;
- (void)updateArrowButtonVisibility;
- (void)updateCornerRadiusAfterFinalizingLayout:(BOOL)a3;
- (void)updateDisambiguationSelectionIndex;
- (void)updatePrimaryGridRowTypeWithOptions:(unint64_t)a3 animated:(BOOL)a4 animator:(id)a5 completion:(id)a6;
- (void)updateSortControlTitlesIfNeeded;
@end

@implementation TUICandidateView

- (TUICandidateViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)candidateViewFrame
{
  v3 = [(TUICandidateView *)self clipsToBoundsView];
  v4 = [(TUICandidateView *)self clipsToBoundsView];
  [v4 bounds];
  [v3 convertRect:self toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)filteredCandidates
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = [(TUICandidateView *)self candidateResultSet];
  v4 = [v3 hasCandidates];

  if (v4)
  {
    v5 = [(TUICandidateView *)self candidateResultSet];
    v6 = [v5 sortMethods];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(TUICandidateView *)self candidateResultSet];
      v9 = [v8 sortMethodGroups];
      v10 = [(TUICandidateView *)self candidateResultSet];
      v11 = [v10 sortMethods];
      v12 = [v11 objectAtIndex:0];
      v13 = [v9 objectForKey:v12];
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x1E69D95E0]);
      v16 = MEMORY[0x1E695DFB8];
      v17 = [(TUICandidateView *)self candidateResultSet];
      v18 = [v17 candidates];
      v19 = [v16 orderedSetWithArray:v18];
      v20 = [v15 initWithTitle:&stru_1F03BA8F8 candidates:v19];
      v24[0] = v20;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    }

    v21 = [v13 firstObject];
    v22 = [v21 candidates];
    v14 = [v22 array];
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

- (id)visibleCandidates
{
  v2 = [(TUICandidateView *)self primaryGrid];
  v3 = [v2 visibleCandidates];

  return v3;
}

- (BOOL)candidateBackdropViewShouldShowBackdropView:(id)a3
{
  v3 = [(TUICandidateView *)self state];
  v4 = [v3 arrowButtonDirection] == 1;

  return v4;
}

- (void)candidateGridNeedsToExpand:(id)a3
{
  v4 = a3;
  v8 = [(TUICandidateView *)self primaryGrid];

  v5 = v8;
  if (v8 == v4)
  {
    v6 = [(TUICandidateView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v9 = [(TUICandidateView *)self delegate];
    [v9 candidateViewNeedsToExpand:self];
    v5 = v9;
  }
}

- (void)candidateGrid:(id)a3 didMoveHighlightFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v40 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = [(TUICandidateView *)self primaryGrid];

  if (v10 == v9)
  {
    v11 = [(TUICandidateView *)self state];
    v12 = [v11 style];
    v13 = [v12 leftEdgeSeparatorImage];
    if (v13)
    {
    }

    else
    {
      v14 = [(TUICandidateView *)self state];
      v15 = [v14 style];
      v16 = [v15 rightEdgeSeparatorImage];

      if (!v16)
      {
        goto LABEL_13;
      }
    }

    [(TUICandidateView *)self convertRect:v9 fromView:x, y, width, height];
    UIRectInset();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v25 = [(UIView *)self _allLines];
    v26 = [v25 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v36;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v36 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v35 + 1) + 8 * i);
          [v30 frame];
          v42.origin.x = v31;
          v42.origin.y = v32;
          v42.size.width = v33;
          v42.size.height = v34;
          v41.origin.x = v18;
          v41.origin.y = v20;
          v41.size.width = v22;
          v41.size.height = v24;
          [v30 setHidden:{CGRectIntersectsRect(v41, v42)}];
        }

        v27 = [v25 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v27);
    }
  }

LABEL_13:
}

- (void)candidateGrid:(id)a3 didChangeContentSize:(CGSize)a4
{
  v5 = a3;
  v6 = [(TUICandidateView *)self primaryGrid];

  if (v6 == v5)
  {

    [(TUICandidateView *)self updateArrowButtonVisibility];
  }
}

- (void)candidateGridSelectionDidChange:(id)a3
{
  v8 = a3;
  v4 = [(TUICandidateView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(TUICandidateView *)self delegate];
    v7 = [(TUICandidateView *)self primaryGrid];
    [v6 candidateViewSelectionDidChange:self inGridType:v7 != v8];
  }
}

- (void)candidateGrid:(id)a3 didAcceptCandidate:(id)a4 atIndexPath:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(TUICandidateView *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = self->_disambiguationGrid == v14;
    v13 = [(TUICandidateView *)self delegate];
    [v13 candidateView:self didAcceptCandidate:v8 atIndexPath:v9 inGridType:v12];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = [(TUICandidateView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(TUICandidateView *)self delegate];
    [v6 candidateViewWillBeginDragging:self];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v8 = a3;
  if ([(TUICandidateView *)self shouldAutomaticallyHideAndShowSortControl])
  {
    v4 = [v8 panGestureRecognizer];
    [v4 velocityInView:v8];
    v6 = v5;

    if (v6 > 200.0 || v6 < -5.0)
    {
      [(TUICandidateView *)self toggleSortControl:v6 > 200.0 animated:1];
    }
  }
}

- (CGSize)getArrowButtonSizeForGrid
{
  v3 = 0.0;
  v4 = 0.0;
  if ([(TUICandidateView *)self effectiveCandidateArrowButonPosition]== 1)
  {
    [(TUICandidateView *)self arrowButtonWidth];
    v4 = v5;
    v6 = [(TUICandidateView *)self state];
    if (![v6 inlineTextViewPosition])
    {
      [(TUICandidateView *)self arrowButtonHeight];
      v3 = v7;
    }
  }

  v8 = v4;
  v9 = v3;
  result.height = v9;
  result.width = v8;
  return result;
}

- (int64_t)effectiveCandidateArrowButonPosition
{
  v3 = [(TUICandidateView *)self state];
  v4 = [v3 arrowButtonPosition];

  v5 = [(TUICandidateView *)self effectiveUserInterfaceLayoutDirection];
  v6 = 5;
  if (v5 != 1)
  {
    v6 = 1;
  }

  v7 = 5;
  if (v5 == 1)
  {
    v7 = 1;
  }

  if (v4 != 6)
  {
    v7 = v4;
  }

  if (v4 == 7)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (BOOL)showingArrowButton
{
  arrowButton = self->_arrowButton;
  if (arrowButton)
  {
    LOBYTE(arrowButton) = [(TUICandidateArrowButton *)arrowButton isHidden]^ 1;
  }

  return arrowButton;
}

- (void)updateArrowButtonVisibility
{
  v3 = [(TUICandidateView *)self shouldShowArrowButton];
  v4 = [(TUICandidateView *)self effectiveCandidateArrowButonPosition];
  v5 = [(TUICandidateView *)self state];
  if ([v5 primaryGridRowType])
  {
    v6 = [(TUICandidateView *)self state];
    if ([v6 primaryGridRowType] != 1)
    {

LABEL_9:
      v12 = 1;
      goto LABEL_26;
    }

    if ((v4 & 0xFFFFFFFFFFFFFFFELL) != 4)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v7 = [(TUICandidateView *)self primaryGrid];
  [v7 contentSize];
  v9 = v8;
  v10 = [(TUICandidateView *)self primaryGrid];
  [v10 frame];
  if (v9 <= CGRectGetWidth(v46))
  {
    v13 = [(TUICandidateView *)self primaryGrid];
    [v13 contentSize];
    v15 = v14;
    v16 = [(TUICandidateView *)self primaryGrid];
    [v16 frame];
    v11 = v15 > CGRectGetHeight(v47);
  }

  else
  {
    v11 = 1;
  }

  v17 = [(TUICandidateView *)self state];
  v18 = [v17 style];
  v19 = [v18 arrowButtonImageName];
  v20 = [v19 hasPrefix:@"character.motion"];

  v12 = 1;
  if (v20)
  {
    v3 = 1;
  }

  else if (v4 > 3)
  {
    if (v4 == 4)
    {
      v3 = v11;
    }

    else if (v4 == 5 && !v11 && v3)
    {
      v21 = [(TUICandidateView *)self state];
      [v21 additionalHeight];
      v3 = v22 != 0.0;
    }
  }

  else if (v4 == 1)
  {
    if (!v11 && v3)
    {
      v23 = [(TUICandidateView *)self state];
      if ([v23 arrowButtonDirection] == 2)
      {
        v3 = 1;
      }

      else
      {
        v43 = [(TUICandidateView *)self state];
        v3 = [v43 arrowButtonDirection] == 3;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v12 = v4 != 2 || v11;
  }

LABEL_26:
  [(TUICandidateArrowButton *)self->_arrowButton setHidden:v3 ^ 1];
  [(TUICandidateArrowButton *)self->_arrowButton setEnabled:v12];
  v44 = [(TUICandidateView *)self state];
  v24 = [v44 style];
  if (objc_opt_respondsToSelector())
  {
    v25 = [(TUICandidateView *)self state];
    v26 = [v25 style];
    v27 = [v26 shouldUpdateCollectionViewWidthForArrowButtonVisibility];

    if (!v27)
    {
      return;
    }

    v28 = [(TUICandidateView *)self primaryGrid];
    [v28 setIsArrowButtonVisible:v3];

    if (!v3)
    {
      return;
    }

    v29 = [(TUICandidateView *)self state];
    v30 = [v29 sortControlPosition];

    if (v30 != 4)
    {
      return;
    }

    v31 = [(TUICandidateView *)self sortControl];
    [v31 frame];
    v33 = v32;
    v35 = v34;
    v37 = v36;

    [(TUICandidateView *)self bounds];
    v39 = v38;
    [(TUICandidateView *)self getArrowButtonSizeForGrid];
    v41 = v39 - v40;
    v42 = [(TUICandidateView *)self sortControl];
    [v42 setFrame:{v33, v35, v41, v37}];

    v44 = [(TUICandidateView *)self sortControl];
    [v44 layoutIfNeeded];
  }

  else
  {
  }
}

- (void)handleSortControlValueChanged
{
  v7 = [(TUICandidateView *)self selectedIndexPath];
  [(TUICandidateView *)self reloadPrimaryGridDataIfNeeded];
  v3 = [(TUICandidateView *)self primaryGrid];
  [v3 scrollToFirstCandidate];

  if (v7)
  {
    v4 = [(TUICandidateView *)self primaryGrid];
    v5 = [v4 firstIndexPath];
    if (v5)
    {
      [(TUICandidateView *)self setSelectedIndexPath:v5];
    }

    else
    {
      v6 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
      [(TUICandidateView *)self setSelectedIndexPath:v6];
    }
  }
}

- (BOOL)toggleSortControl:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a4 && [(TUICandidateView *)self showingSortControl]== a3)
  {
    return 0;
  }

  [(TUICandidateView *)self setShowingSortControl:v5];
  v7 = [(TUICandidateView *)self sortControl];
  [v7 setHidden:0];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__TUICandidateView_toggleSortControl_animated___block_invoke;
  aBlock[3] = &unk_1E72D83A0;
  aBlock[4] = self;
  v8 = _Block_copy(aBlock);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__TUICandidateView_toggleSortControl_animated___block_invoke_2;
  v11[3] = &unk_1E72D2C30;
  v11[4] = self;
  v12 = v5;
  v9 = _Block_copy(v11);
  if (v4)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:v9 completion:0.1];
  }

  else
  {
    v8[2](v8);
    v9[2](v9, 1);
  }

  return 1;
}

- (BOOL)shouldAutomaticallyHideAndShowSortControl
{
  v2 = [(TUICandidateView *)self state];
  v3 = [v2 sortControlPosition] == 3;

  return v3;
}

- (id)sortControlTitles
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [(TUICandidateView *)self candidateResultSet];
  v5 = [v4 sortMethods];

  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = UIKeyboardLocalizedString();
        v12 = v11;
        if (v11)
        {
          v13 = v11;
        }

        else
        {
          v13 = v10;
        }

        v14 = v13;

        [v3 addObject:v14];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return v3;
}

- (void)didTapInlineText:(id)a3
{
  v4 = [(TUICandidateView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(TUICandidateView *)self delegate];
    [v6 candidateViewDidTapInlineText:self];
  }
}

- (void)didTapArrowButton:(id)a3
{
  v4 = [(TUICandidateView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(TUICandidateView *)self delegate];
    [v6 candidateViewDidTapArrowButton:self];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(TUICandidateView *)self clipsToBoundsView];
  [v8 frame];
  v21.x = x;
  v21.y = y;
  v9 = CGRectContainsPoint(v23, v21);

  if (v9)
  {
    v10 = [(TUICandidateView *)self clipsToBoundsView];
    v11 = [(TUICandidateView *)self clipsToBoundsView];
LABEL_6:
    v16 = v11;
    [v11 convertPoint:self fromView:{x, y}];
    v17 = [v10 hitTest:v7 withEvent:?];

    goto LABEL_8;
  }

  v12 = [(TUICandidateView *)self arrowButton];
  if (v12)
  {
    v13 = v12;
    v14 = [(TUICandidateView *)self arrowButton];
    [v14 frame];
    v22.x = x;
    v22.y = y;
    v15 = CGRectContainsPoint(v24, v22);

    if (v15)
    {
      v10 = [(TUICandidateView *)self arrowButton];
      v11 = [(TUICandidateView *)self arrowButton];
      goto LABEL_6;
    }
  }

  v19.receiver = self;
  v19.super_class = TUICandidateView;
  v17 = [(TUICandidateView *)&v19 hitTest:v7 withEvent:x, y];
LABEL_8:

  return v17;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = TUICandidateView;
  if (![(TUICandidateView *)&v17 pointInside:v9 withEvent:x, y])
  {
    v11 = [(TUICandidateView *)self clipsToBoundsView];
    v12 = [v11 isHidden];
    if ((v12 & 1) != 0 || (-[TUICandidateView clipsToBoundsView](self, "clipsToBoundsView"), v4 = objc_claimAutoreleasedReturnValue(), -[TUICandidateView clipsToBoundsView](self, "clipsToBoundsView"), v5 = objc_claimAutoreleasedReturnValue(), [v5 convertPoint:self fromView:{x, y}], (objc_msgSend(v4, "pointInside:withEvent:", v9) & 1) == 0))
    {
      v13 = [(TUICandidateView *)self arrowButton];
      if ([v13 isHidden])
      {

        v10 = 0;
        if (v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v14 = [(TUICandidateView *)self arrowButton];
        v15 = [(TUICandidateView *)self arrowButton];
        [v15 convertPoint:self fromView:{x, y}];
        v10 = [v14 pointInside:v9 withEvent:?];

        if (v12)
        {
LABEL_11:

          goto LABEL_12;
        }
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_11;
  }

  v10 = 1;
LABEL_12:

  return v10;
}

- (TIKeyboardCandidate)selectedDisambiguationCandidate
{
  v2 = [(TUICandidateView *)self disambiguationGrid];
  v3 = [v2 selectedCandidate];

  return v3;
}

- (TIKeyboardCandidate)selectedCandidate
{
  v2 = [(TUICandidateView *)self primaryGrid];
  v3 = [v2 selectedCandidate];

  return v3;
}

- (void)setDisambiguationSelectedIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(TUICandidateView *)self disambiguationGrid];
  [v5 setSelectedIndexPath:v4];
}

- (NSIndexPath)disambiguationSelectedIndexPath
{
  v2 = [(TUICandidateView *)self disambiguationGrid];
  v3 = [v2 selectedIndexPath];

  return v3;
}

- (void)setSelectedIndexPath:(id)a3 animated:(BOOL)a4 scrollPosition:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v9 = [(TUICandidateView *)self primaryGrid];
  [v9 setSelectedIndexPath:v8 animated:v6 scrollPosition:a5];
}

- (void)setSelectedIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(TUICandidateView *)self primaryGrid];
  [v5 setSelectedIndexPath:v4];
}

- (NSIndexPath)selectedIndexPath
{
  v2 = [(TUICandidateView *)self primaryGrid];
  v3 = [v2 selectedIndexPath];

  return v3;
}

- (BOOL)handleNumberKey:(unint64_t)a3
{
  v4 = [(TUICandidateView *)self primaryGrid];
  LOBYTE(a3) = [v4 handleNumberKey:a3];

  return a3;
}

- (int64_t)rowForCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TUICandidateView *)self primaryGrid];
  v6 = [v5 rowForCandidate:v4];

  return v6;
}

- (int64_t)viewOffsetForCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TUICandidateView *)self primaryGrid];
  v6 = [v5 viewOffsetForCandidate:v4];

  return v6;
}

- (id)indexPathForCandidate:(id)a3
{
  v4 = a3;
  v5 = [(TUICandidateView *)self primaryGrid];
  v6 = [v5 indexPathForCandidate:v4];

  return v6;
}

- (void)showCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4 inGridType:(int64_t)a5
{
  v5 = *&a4;
  v6 = a3;
  v7 = [(TUICandidateView *)self gridOfType:a5];
  [v7 showCandidateInForwardDirection:v6 granularity:v5];
}

- (BOOL)hasCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4 inGridType:(int64_t)a5
{
  v5 = *&a4;
  v6 = a3;
  v7 = [(TUICandidateView *)self gridOfType:a5];
  LOBYTE(v5) = [v7 hasCandidateInForwardDirection:v6 granularity:v5];

  return v5;
}

- (void)showCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4
{
  v4 = a3;
  if (a4 == 3)
  {
    v6 = [(TUICandidateSortControl *)self->_sortControl titles];
    v7 = [v6 count];

    if (v7 >= 2)
    {
      v8 = [(TUICandidateView *)self sortControl];
      v9 = [v8 selectedIndex];
      v10 = v7 - 1;
      if (v4)
      {
        v10 = v7 + 1;
      }

      v11 = (v10 + v9) % v7;
      v12 = [(TUICandidateView *)self sortControl];
      [v12 setSelectedIndex:v11];

      [(TUICandidateView *)self handleSortControlValueChanged];
    }
  }

  else
  {

    [TUICandidateView showCandidateInForwardDirection:"showCandidateInForwardDirection:granularity:inGridType:" granularity:? inGridType:?];
  }
}

- (BOOL)hasCandidateInForwardDirection:(BOOL)a3 granularity:(int)a4
{
  if (a4 == 3)
  {
    v5 = [(TUICandidateView *)self sortControl];
    if (v5 && (v6 = v5, -[TUICandidateView sortControl](self, "sortControl"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isHidden], v7, v6, (v8 & 1) == 0))
    {
      v11 = [(TUICandidateView *)self sortControl];
      v12 = [v11 titles];
      if ([v12 count] < 2)
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        v13 = [(TUICandidateView *)self state];
        v14 = [v13 style];
        v9 = [v14 disableSwitchingSortingMethodByTabKey] ^ 1;
      }
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    return v9;
  }

  else
  {

    return [TUICandidateView hasCandidateInForwardDirection:"hasCandidateInForwardDirection:granularity:inGridType:" granularity:a3 inGridType:?];
  }
}

- (id)gridOfType:(int64_t)a3
{
  if (a3)
  {
    [(TUICandidateView *)self disambiguationGrid];
  }

  else
  {
    [(TUICandidateView *)self primaryGrid];
  }
  v3 = ;

  return v3;
}

- (id)candidateGroupsForCurrentState
{
  v37[1] = *MEMORY[0x1E69E9840];
  v3 = [(TUICandidateView *)self candidateResultSet];
  v4 = [v3 sortMethods];
  v5 = [v4 count];

  v6 = [(TUICandidateView *)self state];
  if ([v6 primaryGridRowType])
  {

LABEL_4:
    v8 = [(TUICandidateView *)self sortControl];
    v9 = [v8 selectedIndex];

    if (v9 > (v5 - 1) || v9 < 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = v9;
    }

    v12 = [(TUICandidateView *)self candidateResultSet];
    v13 = [v12 sortMethodGroups];
    v14 = [(TUICandidateView *)self candidateResultSet];
    v15 = [v14 sortMethods];
    v16 = [v15 objectAtIndex:v11];
    v17 = [v13 objectForKey:v16];

    if (v17)
    {
      goto LABEL_17;
    }

    v18 = objc_alloc(MEMORY[0x1E69D95E0]);
    v19 = MEMORY[0x1E695DFB8];
    v20 = [(TUICandidateView *)self candidateResultSet];
    v21 = [v20 candidates];
    v22 = [v19 orderedSetWithArray:v21];
    v23 = [v18 initWithTitle:&stru_1F03BA8F8 candidates:v22];
    v36 = v23;
    v24 = MEMORY[0x1E695DEC8];
    v25 = &v36;
    goto LABEL_12;
  }

  v7 = [(TUICandidateView *)self changingLayout];

  if (v7)
  {
    goto LABEL_4;
  }

  v26 = [(TUICandidateView *)self candidateResultSet];
  v27 = [v26 hasCandidates];

  if (v27)
  {
    if (!v5)
    {
      v34 = objc_alloc(MEMORY[0x1E69D95E0]);
      v35 = MEMORY[0x1E695DFB8];
      v20 = [(TUICandidateView *)self candidateResultSet];
      v21 = [v20 candidates];
      v22 = [v35 orderedSetWithArray:v21];
      v23 = [v34 initWithTitle:&stru_1F03BA8F8 candidates:v22];
      v37[0] = v23;
      v24 = MEMORY[0x1E695DEC8];
      v25 = v37;
LABEL_12:
      v17 = [v24 arrayWithObjects:v25 count:1];

      goto LABEL_17;
    }

    v28 = [(TUICandidateView *)self candidateResultSet];
    v29 = [v28 sortMethodGroups];
    v30 = [(TUICandidateView *)self candidateResultSet];
    v31 = [v30 sortMethods];
    v32 = [v31 objectAtIndex:0];
    v17 = [v29 objectForKey:v32];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

LABEL_17:

  return v17;
}

- (void)setInlineText:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_inlineText isEqualToString:?])
  {
    v4 = [v8 copy];
    inlineText = self->_inlineText;
    self->_inlineText = v4;

    v6 = self->_inlineText;
    v7 = [(TUICandidateView *)self inlineTextView];
    [v7 setText:v6];
  }
}

- (void)updateDisambiguationSelectionIndex
{
  v3 = [(TUICandidateView *)self candidateResultSet];
  if (v3 && (v4 = v3, -[TUICandidateView candidateResultSet](self, "candidateResultSet"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 selectedDisambiguationCandidateIndex], v5, v4, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = MEMORY[0x1E696AC88];
    v11 = [(TUICandidateView *)self candidateResultSet];
    v9 = [v8 indexPathForRow:objc_msgSend(v11 inSection:{"selectedDisambiguationCandidateIndex"), 0}];
    v10 = [(TUICandidateView *)self disambiguationGrid];
    [v10 setSelectedIndexPath:v9];
  }

  else
  {
    v7 = [(TUICandidateView *)self disambiguationGrid];
    [v7 setSelectedIndexPath:0];

    v11 = [(TUICandidateView *)self disambiguationGrid];
    [v11 scrollToFirstCandidate];
  }
}

- (void)reloadDisambiguationGridDataIfNeeded
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69D95E0]);
  v4 = MEMORY[0x1E695DFB8];
  v5 = [(TUICandidateView *)self candidateResultSet];
  v6 = [v5 disambiguationCandidates];
  v7 = [v4 orderedSetWithArray:v6];
  v8 = [v3 initWithTitle:&stru_1F03BA8F8 candidates:v7];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v10 = [(TUICandidateView *)self disambiguationGrid];
  [v10 setCandidateGroups:v9];

  [(TUICandidateView *)self updateDisambiguationSelectionIndex];
}

- (BOOL)reloadPrimaryGridDataIfNeeded
{
  v3 = [(TUICandidateView *)self candidateGroupsForCurrentState];
  v4 = [(TUICandidateView *)self primaryGrid];
  v5 = [v4 candidateGroups];
  v6 = [v5 isEqual:v3];

  if ((v6 & 1) == 0)
  {
    v7 = [(TUICandidateView *)self candidateGroupsForCurrentState];
    v8 = [(TUICandidateView *)self primaryGrid];
    [v8 setCandidateGroups:v7];
  }

  return v6 ^ 1;
}

- (void)updateCornerRadiusAfterFinalizingLayout:(BOOL)a3
{
  v3 = a3;
  v5 = [(TUICandidateView *)self _inheritedRenderConfig];
  if (![v5 colorAdaptiveBackground])
  {
    goto LABEL_6;
  }

  v6 = [(TUICandidateView *)self state];
  v7 = [v6 style];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  v8 = [(TUICandidateView *)self state];
  v9 = [v8 style];
  v10 = [v9 performSelector:sel_backgroundMaterial];

  if (v10)
  {
    v135 = [(TUICandidateView *)self state];
    v11 = [v135 style];
    [v11 cornerRadius];
    v13 = v12;
    v14 = [(TUICandidateView *)self clipsToBoundsView];
    [v14 _setCornerRadius:v13];
    goto LABEL_32;
  }

LABEL_7:
  v15 = [(TUICandidateView *)self state];
  v16 = [v15 style];
  if ([v16 doNotClipToBounds])
  {
    v17 = [(TUICandidateView *)self state];
    v18 = [v17 hasBackdrop];

    if (v18)
    {
      v135 = [(TUICandidateView *)self backdropView];
      v19 = [(TUICandidateView *)self clipsToBoundsView];
      goto LABEL_12;
    }
  }

  else
  {
  }

  v135 = [(TUICandidateView *)self clipsToBoundsView];
  v19 = [(TUICandidateView *)self backdropView];
LABEL_12:
  v11 = v19;
  [v19 _setContinuousCornerRadius:0.0];
  v20 = [v11 layer];
  [v20 setMaskedCorners:15];

  v21 = [(TUICandidateView *)self state];
  v22 = [v21 style];
  [v22 cornerRadius];
  [v135 _setContinuousCornerRadius:?];

  v23 = [(TUICandidateView *)self state];
  v24 = [v23 style];
  v25 = [v24 maskedCorners];
  v26 = [v135 layer];
  [v26 setMaskedCorners:v25];

  v27 = [(TUICandidateView *)self state];
  v28 = [v27 style];
  LOBYTE(v25) = objc_opt_respondsToSelector();

  if (v25)
  {
    v29 = [(TUICandidateView *)self state];
    v30 = [v29 style];
    [v30 borderWidth];
    v32 = v31;
    v33 = [v135 layer];
    [v33 setBorderWidth:v32];
  }

  v34 = [(TUICandidateView *)self state];
  v35 = [v34 style];
  v36 = objc_opt_respondsToSelector();

  if (v36)
  {
    v37 = [(TUICandidateView *)self state];
    v38 = [v37 style];
    v39 = [v38 borderColor];
    v40 = [v39 CGColor];
    v41 = [v135 layer];
    [v41 setBorderColor:v40];
  }

  v42 = [(TUICandidateView *)self roundedBorderLayer];
  [v42 removeFromSuperlayer];

  v43 = [(TUICandidateView *)self state];
  v44 = [v43 style];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_23;
  }

  v45 = [(TUICandidateView *)self state];
  v46 = [v45 style];
  v47 = [v46 performSelector:sel_roundsArrowButtonEdge];

  if (!v47)
  {
LABEL_23:
    v14 = [v135 layer];
    [v14 setMask:0];
    goto LABEL_32;
  }

  v48 = [(TUICandidateView *)self state];
  v49 = [v48 arrowButtonPosition];

  v50 = [(TUICandidateView *)self state];
  v51 = [v50 arrowButtonPosition];

  [v135 bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  if (v51 && v3)
  {
    [v135 bounds];
    v61 = v60 * 0.5;
    v62 = [(TUICandidateView *)self effectiveCandidateArrowButonPosition];
    v63 = [(TUICandidateView *)self arrowButton];
    v64 = v63;
    if (v62 == 5)
    {
      [v63 setArrowImageOffset:{v61 * 0.25, 0.0}];

      v65 = [(TUICandidateView *)self arrowButton];
      [v65 arrowImageOffset];
      v67 = v53 + v66;
      v68 = [(TUICandidateView *)self arrowButton];
      [v68 arrowImageOffset];
      v70 = v57 - v69;
      v71 = [(TUICandidateView *)self arrowButton];
      [v71 arrowImageOffset];
      v73 = v59 + v72;

      v74 = MEMORY[0x1E69DC728];
      v75 = [(TUICandidateView *)self state];
      v76 = [v75 style];
      [v76 cornerRadius];
      v78 = v77;
      v79 = [(TUICandidateView *)self state];
      v80 = [v79 style];
      [v80 cornerRadius];
      v82 = v81;
      v83 = v74;
      v84 = v67;
      v85 = v55;
      v86 = v70;
      v87 = v73;
      v88 = v61;
      v89 = v78;
      v90 = v61;
    }

    else
    {
      [v63 setArrowImageOffset:{v61 * -0.25, 0.0}];

      v106 = [(TUICandidateView *)self arrowButton];
      [v106 arrowImageOffset];
      v108 = v57 + v107;
      v109 = [(TUICandidateView *)self arrowButton];
      [v109 arrowImageOffset];
      v111 = v59 + v110;

      v112 = MEMORY[0x1E69DC728];
      v75 = [(TUICandidateView *)self state];
      v76 = [v75 style];
      [v76 cornerRadius];
      v114 = v113;
      v79 = [(TUICandidateView *)self state];
      v80 = [v79 style];
      [v80 cornerRadius];
      v90 = v115;
      v83 = v112;
      v84 = v53;
      v85 = v55;
      v86 = v108;
      v87 = v111;
      v88 = v114;
      v89 = v61;
      v82 = v61;
    }

    v14 = [v83 _bezierPathRect:v84 topLeftRadius:v85 topRightRadius:v86 bottomRightRadius:v87 bottomLeftRadius:{v88, v89, v82, v90}];

    v116 = [(TUICandidateView *)self arrowButton];
    [v116 layoutSubviews];

    v100 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [v100 setPath:{objc_msgSend(v14, "CGPath")}];
    v117 = [v135 layer];
    [v117 setMask:v100];

    v101 = [(TUICandidateView *)self arrowButton];
    v118 = [v101 layer];
    [v118 setHidden:0];

    goto LABEL_30;
  }

  if (v49 && !v3)
  {
    v91 = MEMORY[0x1E69DC728];
    v92 = [(TUICandidateView *)self state];
    v93 = [v92 style];
    [v93 cornerRadius];
    v95 = v94;
    v96 = [(TUICandidateView *)self state];
    v97 = [v96 style];
    [v97 cornerRadius];
    v14 = [v91 _bezierPathRect:v53 topLeftRadius:v55 topRightRadius:v57 bottomRightRadius:v59 bottomLeftRadius:{v95, v98, 0.0, 0.0}];

    v99 = [v135 layer];
    [v99 setMask:0];

    v100 = [(TUICandidateView *)self arrowButton];
    v101 = [v100 layer];
    [v101 setHidden:1];
LABEL_30:

    goto LABEL_31;
  }

  v102 = [(TUICandidateView *)self state];
  v103 = [v102 style];
  [v103 cornerRadius];
  v105 = v104;

  v14 = [MEMORY[0x1E69DC728] _bezierPathRect:v53 topLeftRadius:v55 topRightRadius:v57 bottomRightRadius:v59 bottomLeftRadius:{v105, v105, v105, v105}];
  v100 = [v135 layer];
  [v100 setMask:0];
LABEL_31:

  v119 = [v135 layer];
  [v119 setBorderWidth:0.0];

  v120 = [v14 CGPath];
  v121 = [(TUICandidateView *)self roundedBorderLayer];
  [v121 setPath:v120];

  v122 = [(TUICandidateView *)self roundedBorderLayer];
  [v122 setLineWidth:1.3];

  v123 = [(TUICandidateView *)self state];
  v124 = [v123 style];
  v125 = [v124 lineColor];
  v126 = [v125 CGColor];
  v127 = [(TUICandidateView *)self roundedBorderLayer];
  [v127 setStrokeColor:v126];

  v128 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
  v129 = [v128 CGColor];
  v130 = [(TUICandidateView *)self roundedBorderLayer];
  [v130 setFillColor:v129];

  v131 = [v135 layer];
  v132 = [(TUICandidateView *)self roundedBorderLayer];
  [v131 addSublayer:v132];

  v133 = [(TUICandidateView *)self arrowButton];
  v134 = [v133 contentView];
  [v134 setHidden:0];

LABEL_32:
}

- (void)resetSortControlIndex
{
  v2 = [(TUICandidateView *)self sortControl];
  [v2 setSelectedIndex:0];
}

- (int64_t)selectedSortControlIndex
{
  v3 = [(TUICandidateView *)self sortControl];
  if (!v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = v3;
  v5 = [(TUICandidateView *)self sortControl];
  v6 = [v5 isHidden];

  if (v6)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = [(TUICandidateView *)self sortControl];
  v9 = [v8 selectedIndex];

  return v9;
}

- (void)updateSortControlTitlesIfNeeded
{
  v6 = [(TUICandidateView *)self state];
  if ([v6 sortControlPosition])
  {
    v3 = [(TUICandidateView *)self state];
    v4 = [v3 sortControlPosition];

    if (v4 == 5)
    {
      return;
    }

    v6 = [(TUICandidateView *)self sortControlTitles];
    v5 = [(TUICandidateView *)self sortControl];
    [v5 setTitles:v6];
  }
}

- (void)reloadGridsIfNeeded
{
  if ([(TUICandidateView *)self reloadPrimaryGridDataIfNeeded])
  {
    v3 = [(TUICandidateView *)self primaryGrid];
    [v3 scrollToFirstCandidate];
  }

  [(TUICandidateView *)self reloadDisambiguationGridDataIfNeeded];

  [(TUICandidateView *)self updateSortControlTitlesIfNeeded];
}

- (void)setCandidateResultSet:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_candidateResultSet != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_candidateResultSet, a3);
    v5 = [(TUICandidateView *)self changingLayout];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      v5 = [(TUICandidateView *)self reloadGridsIfNeeded];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setState:(id)a3 animated:(BOOL)a4 animator:(id)a5 options:(unint64_t)a6 force:(BOOL)a7 completion:(id)a8
{
  v12 = a4;
  v15 = a3;
  v16 = a5;
  v17 = a8;
  state = self->_state;
  if (state != v15 || a7 || v12)
  {
    v19 = [(TUICandidateViewState *)state primaryGridRowType];
    v20 = v19 != [(TUICandidateViewState *)v15 primaryGridRowType];
    objc_storeStrong(&self->_state, a3);
    [(TUICandidateView *)self prepareForLayoutChange:v20];
    if (v12)
    {
      [(TUICandidateView *)self layoutIfNeeded];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __72__TUICandidateView_setState_animated_animator_options_force_completion___block_invoke;
      v24[3] = &unk_1E72D83A0;
      v24[4] = self;
      [v16 addAnimations:v24];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __72__TUICandidateView_setState_animated_animator_options_force_completion___block_invoke_2;
      v23[3] = &unk_1E72D84D8;
      v23[4] = self;
      [v16 addCompletion:v23];
      [(TUICandidateView *)self updatePrimaryGridRowTypeWithOptions:a6 animated:1 animator:v16 completion:&__block_literal_global_43];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __72__TUICandidateView_setState_animated_animator_options_force_completion___block_invoke_4;
      v21[3] = &unk_1E72D2AF8;
      v21[4] = self;
      v22 = v17;
      [v16 addCompletion:v21];
    }

    else
    {
      [(TUICandidateView *)self changeLayoutInsideAnimationBlock];
      [(TUICandidateView *)self updatePrimaryGridRowTypeWithOptions:a6 animated:0 animator:0 completion:0];
      [(TUICandidateView *)self finalizeLayoutChange];
      if (v17)
      {
        (*(v17 + 2))(v17, 1);
      }
    }
  }
}

uint64_t __72__TUICandidateView_setState_animated_animator_options_force_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) reloadGridsIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setState:(id)a3 animated:(BOOL)a4 options:(unint64_t)a5 force:(BOOL)a6 completion:(id)a7
{
  v7 = a6;
  if (a4)
  {
    v11 = MEMORY[0x1E69DD278];
    v12 = a7;
    v13 = a3;
    v15 = [[v11 alloc] initWithDuration:(a5 >> 16) & 7 curve:&__block_literal_global_1748 animations:0.25];
    [(TUICandidateView *)self setState:v13 animated:1 animator:v15 options:a5 force:v7 completion:v12];

    [v15 startAnimation];
  }

  else
  {
    v14 = a7;
    v15 = a3;
    [TUICandidateView setState:"setState:animated:animator:options:force:completion:" animated:? animator:? options:? force:? completion:?];
  }
}

- (void)finalizeLayoutChange
{
  v10 = [(TUICandidateView *)self state];
  if (([v10 hasBackdrop] & 1) == 0)
  {
    v3 = [(TUICandidateView *)self backdropView];
    [v3 setHidden:1];
  }

  v4 = [(TUICandidateView *)self effectiveCandidateArrowButonPosition];
  if (![v10 arrowButtonPosition])
  {
    [(TUICandidateView *)self setShouldShowArrowButton:0];
    [(TUICandidateView *)self updateArrowButtonVisibility];
    goto LABEL_10;
  }

  if ((v4 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v5 = [(TUICandidateView *)self clipsToBoundsView];
    v6 = [(TUICandidateView *)self arrowButton];
    [v5 addSubview:v6];
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = [(TUICandidateView *)self arrowButton];
    [(TUICandidateView *)self addSubview:v5];
  }

LABEL_10:
  if (![v10 inlineTextViewPosition])
  {
    v7 = [(TUICandidateView *)self inlineTextView];
    [v7 setHidden:1];
  }

  if (![v10 sortControlPosition])
  {
    v8 = [(TUICandidateView *)self sortControl];
    [v8 setHidden:1];

    goto LABEL_16;
  }

  if ([v10 sortControlPosition] == 5)
  {
LABEL_16:
    [(TUICandidateView *)self setShowingSortControl:0];
  }

  [(TUICandidateView *)self updateCornerRadiusAfterFinalizingLayout:1];
  v9 = [(TUICandidateView *)self primaryGrid];
  [v9 setSuppressCollectionViewLayout:0];

  [(TUICandidateView *)self setChangingLayout:0];
}

- (void)updatePrimaryGridRowTypeWithOptions:(unint64_t)a3 animated:(BOOL)a4 animator:(id)a5 completion:(id)a6
{
  v7 = a4;
  v10 = a6;
  v11 = a5;
  v16 = [(TUICandidateView *)self primaryGrid];
  v12 = [(TUICandidateView *)self state];
  v13 = [v12 primaryGridRowType];
  v14 = [(TUICandidateView *)self state];
  v15 = [v14 style];
  [v16 setRowType:v13 options:a3 style:v15 animated:v7 animator:v11 completion:v10];
}

- (void)changeLayoutInsideAnimationBlock
{
  v3 = [(TUICandidateView *)self state];
  [(TUICandidateView *)self boundsForClipsToBoundsViewWithState:v3];
  v305 = v4;
  v6 = v5;
  v312 = v7;
  v309 = v8;
  v9 = [(TUICandidateView *)self primaryGrid];
  [v9 bounds];
  v304 = v10;
  v12 = v11;
  v14 = v13;
  rect = v15;

  v16 = [(TUICandidateView *)self sortControl];
  [v16 frame];
  v306 = v17;
  v307 = v18;
  v20 = v19;
  v22 = v21;

  v23 = [(TUICandidateView *)self state];
  v24 = [v23 style];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    v26 = [(TUICandidateView *)self state];
    v27 = [v26 style];
    v28 = [v27 shouldUpdateCollectionViewWidthForArrowButtonVisibility];
  }

  else
  {
    v28 = 0;
  }

  v29 = [(TUICandidateView *)self showingAutofillCandidate];
  v30 = 0.0;
  if (!v29 && (v28 & 1) == 0)
  {
    [(TUICandidateView *)self arrowButtonWidth];
  }

  v299 = v30;
  v31 = [(TUICandidateView *)self backdropView];
  [v31 setFrame:{0.0, 0.0, v312, v309}];

  v32 = [v3 style];
  v33 = [(TUICandidateView *)self backdropView];
  [v33 setStyle:v32];

  v34 = [v3 style];
  LODWORD(v33) = [v34 doNotClipToBounds];

  if (v33)
  {
    v35 = [(TUICandidateView *)self clipsToBoundsView];
    v36 = [v3 style];
    [v35 _setShowsLinesOnEdges:0 style:v36];

    [(TUICandidateView *)self backdropView];
  }

  else
  {
    v37 = [(TUICandidateView *)self backdropView];
    v38 = [v3 style];
    [v37 _setShowsLinesOnEdges:0 style:v38];

    [(TUICandidateView *)self clipsToBoundsView];
  }
  v39 = ;
  v40 = [v3 borders];
  v41 = [v3 style];
  [v39 _setShowsLinesOnEdges:v40 style:v41];

  v42 = [(TUICandidateView *)self effectiveCandidateArrowButonPosition];
  v43 = [v3 style];
  v44 = [(TUICandidateView *)self sortControl];
  [v44 setStyle:v43];

  if ([v3 sortControlPosition] == 1)
  {
    v45 = [(TUICandidateView *)self sortControl];
    [v45 setAlpha:1.0];

    v46 = 0.0;
    v306 = 0.0;
    if (v42 == 1)
    {
      [(TUICandidateView *)self arrowButtonWidth];
    }

    v307 = v312 - v46;
    [(TUICandidateView *)self sortControlHeight];
    v303 = v47;
    [(TUICandidateView *)self sortControlHeight];
    v310 = v309 - (v48 + 0.0);
    v311 = v48 + 0.0;
    v20 = 0.0;
    v308 = v312;
    goto LABEL_46;
  }

  if ([v3 sortControlPosition] == 2)
  {
    v49 = [(TUICandidateView *)self sortControl];
    [v49 setAlpha:1.0];

    [(TUICandidateView *)self sortControlHeight];
    v51 = v50;
    v52 = 0.0;
    v306 = 0.0;
    if (v42 == 3)
    {
      [(TUICandidateView *)self arrowButtonWidth];
    }

    v20 = v309 - v51;
    v307 = v312 - v52;
    [(TUICandidateView *)self sortControlHeight];
    v303 = v53;
    [(TUICandidateView *)self sortControlHeight];
    v310 = v309 - (v54 + 0.0);
    v308 = v312;
    goto LABEL_18;
  }

  if ([v3 sortControlPosition] != 3)
  {
    v303 = v22;
    if ([v3 sortControlPosition] == 4)
    {
      v61 = [(TUICandidateView *)self state];
      v62 = [v61 arrowButtonPosition];

      if (v62 == 5)
      {
        v63 = v299 + 0.0;
        v64 = v312 - (v299 + 0.0);
      }

      else
      {
        v69 = [(TUICandidateView *)self state];
        v70 = [v69 style];
        v44 = [v70 arrowButtonBackgroundHidden];

        v63 = 0.0;
        v64 = v312 - (v299 + 0.0);
        if (!v44)
        {
          v64 = v312;
        }
      }

      v308 = v64;
      v71 = [(TUICandidateView *)self sortControl];
      [v71 setAlpha:1.0];

      v311 = 0.0;
      goto LABEL_38;
    }

    v65 = [(TUICandidateView *)self sortControl];
    [v65 setAlpha:0.0];

    v66 = [v3 sortControlPosition];
    v67 = v307;
    if (v66 == 5)
    {
      v67 = v312;
    }

    v307 = v67;
    if (v66 == 5)
    {
      v20 = v309;
    }

    v68 = [(TUICandidateView *)self state];
    v44 = [v68 arrowButtonPosition];

    if (v44 == 5)
    {
      v311 = 0.0;
      v63 = v299 + 0.0;
      v308 = v312 - (v299 + 0.0);
LABEL_38:
      v310 = v309;
      goto LABEL_47;
    }

    v72 = [(TUICandidateView *)self state];
    v44 = [v72 style];
    if ([v44 arrowButtonBackgroundHidden])
    {
      v73 = [(TUICandidateView *)self state];
      v74 = [v73 style];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

LABEL_122:
        v311 = 0.0;
        v308 = v312 - (v299 + 0.0);
        v293 = [(TUICandidateView *)self primaryGrid];
        [v293 arrowButtonSize];
        v295 = v294;
        v296 = [(TUICandidateView *)self primaryGrid];
        [v296 setArrowButtonSize:{0.0, v295}];

        v310 = v309;
        goto LABEL_46;
      }

      v75 = [(TUICandidateView *)self state];
      v76 = [v75 style];
      v77 = [v76 shouldUpdateCollectionViewWidthForArrowButtonVisibility];

      v311 = 0.0;
      if ((v77 & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else
    {

      v311 = 0.0;
    }

    v310 = v309;
    v60 = v312;
    goto LABEL_45;
  }

  v55 = [(TUICandidateView *)self sortControl];
  [v55 setAlpha:1.0];

  v56 = [(TUICandidateView *)self showingSortControl];
  v57 = 0.0;
  v306 = 0.0;
  if (v56)
  {
    [(TUICandidateView *)self sortControlHeight];
  }

  v20 = v309 - v57;
  [(TUICandidateView *)self sortControlHeight];
  v303 = v58;
  if ([(TUICandidateView *)self showingSortControl])
  {
    [(TUICandidateView *)self sortControlHeight];
    v311 = 0.0;
    v310 = v309 - (v59 + 0.0);
    v60 = v312;
    v307 = v312;
LABEL_45:
    v308 = v60;
    goto LABEL_46;
  }

  v307 = v312;
  v308 = v312;
  v310 = v309;
LABEL_18:
  v311 = 0.0;
LABEL_46:
  v63 = 0.0;
LABEL_47:
  v302 = v20;
  if ([v3 inlineTextViewPosition] == 1)
  {
    v78 = v14;
    v79 = v12;
    v80 = v6;
    v81 = [v3 style];
    v82 = [(TUICandidateView *)self inlineTextView];
    [v82 setStyle:v81];

    [(TUICandidateView *)self arrowButtonWidth];
    v84 = v312 - v83;
    [(TUICandidateView *)self inlineTextHeight];
    v86 = v85;
    v87 = 0.0;
    if ([v3 sortControlPosition] == 1)
    {
      v317.origin.x = 0.0;
      v317.origin.y = 0.0;
      v317.size.width = v84;
      v317.size.height = v86;
      v87 = CGRectGetHeight(v317) + 0.0;
    }

    v88 = [(TUICandidateView *)self inlineTextView];
    [v88 setAlpha:1.0];

    v89 = [(TUICandidateView *)self inlineTextView];
    [v89 setFrame:{0.0, v87, v84, v86}];

    [(TUICandidateView *)self inlineTextHeight];
    v63 = v63 + 0.0;
    v310 = v310 - (v90 + 0.0);
    v311 = v311 + v90;
    v6 = v80;
    v12 = v79;
    v14 = v78;
  }

  else
  {
    v91 = [(TUICandidateView *)self inlineTextView];
    [v91 setAlpha:0.0];
  }

  if ([v3 inlineTextViewPosition] == 1)
  {
    goto LABEL_53;
  }

  v95 = [v3 style];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_62:
    v92 = [(TUICandidateView *)self arrowButton];
    [v92 setShowsBackground:1];
    goto LABEL_63;
  }

  v96 = [v3 style];
  v44 = [v96 arrowButtonBackgroundHidden];

  if (!v44)
  {
    goto LABEL_62;
  }

LABEL_53:
  v92 = [(TUICandidateView *)self _inheritedRenderConfig];
  v93 = [v92 colorAdaptiveBackground];
  if (v93)
  {
    v44 = [MEMORY[0x1E69DCBE0] activeInstance];
    v94 = [v44 isMinimized];
  }

  else
  {
    v94 = 0;
  }

  v97 = [(TUICandidateView *)self arrowButton];
  [v97 setShowsBackground:v94];

  if (v93)
  {
  }

LABEL_63:

  if ([v3 disambiguationGridPosition] == 2)
  {
    [(TUICandidateView *)self disambiguationHeight];
    v99 = v98;
    [(TUICandidateView *)self disambiguationHeight];
    v301 = v63 + 0.0;
    v101 = v311 + v100;
    v310 = v310 - (v100 + 0.0);
    v102 = [(TUICandidateView *)self disambiguationGrid];
    [v102 setFrame:{0.0, v311, v312, v99}];

    [(TUICandidateView *)self disambiguationHeight];
    v104 = v103;
LABEL_67:
    v311 = v101;
    goto LABEL_69;
  }

  v104 = 0.0;
  if ([v3 disambiguationGridPosition] == 1)
  {
    v301 = v63 + 0.0;
    v101 = v311 + 0.0;
    v308 = v308 + -68.0;
    v105 = [(TUICandidateView *)self disambiguationGrid];
    [v105 setFrame:{v312 + -68.0, v311, 68.0, v310}];

    goto LABEL_67;
  }

  v301 = v63;
LABEL_69:
  if (!v42)
  {
    [(TUICandidateView *)self setShouldShowArrowButton:0];
    goto LABEL_83;
  }

  [(TUICandidateView *)self setShouldShowArrowButton:1];
  v106 = [v3 style];
  v107 = [(TUICandidateView *)self arrowButton];
  [v107 setStyle:v106];

  v108 = [v3 arrowButtonDirection];
  v109 = [(TUICandidateView *)self arrowButton];
  [v109 setArrowDirection:v108];

  if (v42 > 2)
  {
    if (v42 != 3)
    {
      if (v42 == 4)
      {
        [(TUICandidateView *)self arrowButtonHeight];
        v175 = v309 - v174;
        [(TUICandidateView *)self arrowButtonHeight];
        v177 = v176;
        v178 = [(TUICandidateView *)self arrowButton];
        [v178 setFrame:{0.0, v175, v312, v177}];

        v179 = [(TUICandidateView *)self arrowButton];
        v180 = [v3 style];
        [v179 _setImage:0 onEdges:2 outside:1 style:v180];

        v181 = [v3 style];
        [v181 cornerRadius];
        v183 = v182;
        v184 = [(TUICandidateView *)self arrowButton];
        [v184 _setContinuousCornerRadius:v183];

        v185 = [(TUICandidateView *)self arrowButton];
        v186 = [v185 layer];
        [v186 setMaskedCorners:0];

        v187 = [(TUICandidateView *)self arrowButton];
        v188 = [v187 layer];
        [v188 setMasksToBounds:0];

        [(TUICandidateView *)self arrowButtonHeight];
        v310 = v310 - v189;
      }

      else if (v42 == 5)
      {
        v110 = v6;
        [(TUICandidateView *)self arrowButtonWidth];
        v112 = v111;
        [(TUICandidateView *)self arrowButtonHeight];
        v114 = v113;
        v115 = [(TUICandidateView *)self arrowButton];
        [v115 setFrame:{0.0, v104, v112, v114}];

        v116 = [(TUICandidateView *)self arrowButton];
        v117 = [v3 style];
        v118 = [v117 arrowButtonSeparatorImage];
        v119 = [v3 style];
        [v116 _setImage:v118 onEdges:8 outside:1 style:v119];

        v120 = [(TUICandidateView *)self arrowButton];
        [v120 _setContinuousCornerRadius:0.0];

        v121 = [(TUICandidateView *)self arrowButton];
        v122 = [v121 layer];
        [v122 setMasksToBounds:0];

        v123 = [v3 style];
        [v123 cornerRadius];
        v125 = v124;

        v126 = [v3 style];
        LODWORD(v122) = [v126 doNotClipToBounds];

        if (v122)
        {
          v127 = [(TUICandidateView *)self state];
          v128 = [v127 borders] & 2;

          v129 = [v3 style];
          [v129 cornerRadius];
          v125 = v130;

          v131 = v104 == 0.0;
          v132 = 1;
        }

        else
        {
          v131 = 0;
          v128 = 0;
          v132 = 15;
        }

        v6 = v110;
        v190 = v302;
        v282 = [(TUICandidateView *)self arrowButton];
        v283 = [v282 contentView];
        v284 = [v3 style];
        [v283 _setShowsLinesOnEdges:v128 style:v284];

        v285 = [(TUICandidateView *)self arrowButton];
        v286 = [v285 contentView];
        [v286 _setContinuousCornerRadius:v125];

        v287 = [(TUICandidateView *)self arrowButton];
        v288 = [v287 contentView];
        v289 = [v288 layer];
        [v289 setMaskedCorners:v132];

        v290 = [(TUICandidateView *)self arrowButton];
        v291 = [v290 contentView];
        v292 = [v291 layer];
        [v292 setMasksToBounds:v131];

        goto LABEL_84;
      }

LABEL_83:
      v190 = v302;
      goto LABEL_84;
    }

    [(TUICandidateView *)self arrowButtonWidth];
    v157 = v312 - v156;
    [(TUICandidateView *)self arrowButtonHeight];
    v159 = v309 - v158;
    [(TUICandidateView *)self arrowButtonWidth];
    v160 = v6;
    v162 = v161;
    [(TUICandidateView *)self arrowButtonHeight];
    v163 = v12;
    v165 = v164;
    v166 = [(TUICandidateView *)self arrowButton];
    v167 = v162;
    v6 = v160;
    v168 = v165;
    v12 = v163;
    [v166 setFrame:{v157, v159, v167, v168}];

    v169 = [(TUICandidateView *)self arrowButton];
    v170 = [v3 style];
    v171 = [v170 arrowButtonSeparatorImage];
    v172 = [v3 style];
    [v169 _setImage:v171 onEdges:2 outside:1 style:v172];

    v173 = [(TUICandidateView *)self arrowButton];
    [v173 _setContinuousCornerRadius:0.0];

    v154 = [(TUICandidateView *)self arrowButton];
    v155 = [v154 layer];
    [v155 setMasksToBounds:0];
LABEL_81:

    goto LABEL_83;
  }

  if (v42 != 1)
  {
    if (v42 != 2)
    {
      goto LABEL_83;
    }

    [v3 arrowButtonOffset];
    v134 = v312 + v133;
    [v3 arrowButtonOffset];
    v136 = v104 + v135;
    [(TUICandidateView *)self arrowButtonWidth];
    v137 = v6;
    v139 = v138;
    [(TUICandidateView *)self arrowButtonHeight];
    v140 = v12;
    v142 = v141;
    v143 = [(TUICandidateView *)self arrowButton];
    v144 = v139;
    v6 = v137;
    v145 = v142;
    v12 = v140;
    [v143 setFrame:{v134, v136, v144, v145}];

    v146 = [(TUICandidateView *)self arrowButton];
    v147 = [v3 style];
    [v146 _setImage:0 onEdges:2 outside:1 style:v147];

    v148 = [v3 style];
    [v148 cornerRadius];
    v150 = v149;
    v151 = [(TUICandidateView *)self arrowButton];
    [v151 _setContinuousCornerRadius:v150];

    v152 = [(TUICandidateView *)self arrowButton];
    v153 = [v152 layer];
    [v153 setMasksToBounds:1];

    v154 = [(TUICandidateView *)self arrowButton];
    v155 = [v154 layer];
    [v155 setMaskedCorners:1];
    goto LABEL_81;
  }

  v297 = v12;
  v298 = v6;
  [(TUICandidateView *)self arrowButtonWidth];
  v234 = v312 - v233;
  [v3 arrowButtonOffset];
  v236 = v104 + v235;
  [(TUICandidateView *)self arrowButtonWidth];
  v238 = v237;
  [(TUICandidateView *)self arrowButtonHeight];
  v240 = v239;
  v241 = [(TUICandidateView *)self arrowButton];
  [v241 setFrame:{v234, v236, v238, v240}];

  v242 = [(TUICandidateView *)self arrowButton];
  v243 = [v3 style];
  v244 = [v243 arrowButtonSeparatorImage];
  v245 = [v3 style];
  [v242 _setImage:v244 onEdges:2 outside:1 style:v245];

  v246 = [(TUICandidateView *)self arrowButton];
  [v246 _setContinuousCornerRadius:0.0];

  v247 = [(TUICandidateView *)self arrowButton];
  v248 = [v247 layer];
  [v248 setMasksToBounds:0];

  v249 = [v3 style];
  [v249 cornerRadius];
  v251 = v250;

  v252 = [v3 style];
  LODWORD(v248) = [v252 doNotClipToBounds];

  if (v248)
  {
    v253 = [(TUICandidateView *)self state];
    v254 = [v253 borders] & 8;

    v255 = [v3 style];
    [v255 cornerRadius];
    v251 = v256;

    v257 = v104 == 0.0;
    v258 = 2;
  }

  else
  {
    v257 = 0;
    v254 = 0;
    v258 = 15;
  }

  v190 = v302;
  v259 = [(TUICandidateView *)self arrowButton];
  v260 = [v259 contentView];
  v261 = [v3 style];
  [v260 _setShowsLinesOnEdges:v254 style:v261];

  v262 = [(TUICandidateView *)self arrowButton];
  v263 = [v262 contentView];
  [v263 _setContinuousCornerRadius:v251];

  v264 = [(TUICandidateView *)self arrowButton];
  v265 = [v264 contentView];
  v266 = [v265 layer];
  [v266 setMaskedCorners:v258];

  v267 = [(TUICandidateView *)self arrowButton];
  v268 = [v267 contentView];
  v269 = [v268 layer];
  [v269 setMasksToBounds:v257];

  [(TUICandidateView *)self bounds];
  v270 = v308;
  if (v308 >= v271)
  {
    v270 = v308 - v299;
  }

  v308 = v270;
  v272 = [(TUICandidateView *)self _inheritedRenderConfig];
  v273 = [v272 colorAdaptiveBackground];
  if (v273)
  {
    v268 = [MEMORY[0x1E69DCBE0] activeInstance];
    v274 = [v268 isMinimized];
  }

  else
  {
    v274 = 0;
  }

  v275 = [(TUICandidateView *)self arrowButton];
  [v275 setShowsBackground:v274];

  if (v273)
  {
  }

  v276 = [(TUICandidateView *)self arrowButton];
  v277 = [v276 _allLines];
  v278 = [v277 firstObject];

  v279 = [v278 subviews];
  v280 = [v279 firstObject];

  [v280 frame];
  v281 = [(TUICandidateView *)self _inheritedRenderConfig];
  [v281 colorAdaptiveBackground];
  UIRectInset();
  [v280 setFrame:?];

  v12 = v297;
  v6 = v298;
LABEL_84:
  if ([v3 sortControlPosition] == 4)
  {
    v191 = v308;
  }

  else
  {
    v191 = v307;
  }

  v192 = [(TUICandidateView *)self sortControl];
  [v192 frame];
  v194 = v193;

  if (v194 == 0.0)
  {
    v316[0] = MEMORY[0x1E69E9820];
    v316[1] = 3221225472;
    v316[2] = __52__TUICandidateView_changeLayoutInsideAnimationBlock__block_invoke;
    v316[3] = &unk_1E72D2AD0;
    v316[4] = self;
    *&v316[5] = v306;
    *&v316[6] = v190;
    *&v316[7] = v191;
    *&v316[8] = v303;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v316];
  }

  else
  {
    v195 = [(TUICandidateView *)self sortControl];
    [v195 setFrame:{v306, v190, v191, v303}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__TUICandidateView_changeLayoutInsideAnimationBlock__block_invoke_2;
  aBlock[3] = &unk_1E72D2AD0;
  aBlock[4] = self;
  *&aBlock[5] = v301;
  *&aBlock[6] = v311;
  *&aBlock[7] = v308;
  *&aBlock[8] = v310;
  v196 = _Block_copy(aBlock);
  if (v310 >= 0.0)
  {
    v197 = v310;
  }

  else
  {
    v197 = 0.0;
  }

  v198 = v301;
  v199 = v311;
  v200 = v308;
  Height = CGRectGetHeight(*(&v197 - 3));
  v318.origin.x = v304;
  v318.origin.y = v12;
  v318.size.width = v14;
  v318.size.height = rect;
  if (Height <= CGRectGetHeight(v318))
  {
    v205 = [v3 style];
    v206 = [v205 doNotClipToBounds];

    if (v206)
    {
      v207 = [(TUICandidateView *)self primaryGrid];
      [v207 setSuppressCollectionViewLayout:1];
    }

    v196[2](v196);
    v204 = [(TUICandidateView *)self primaryGrid];
    [v204 layoutIfNeeded];
  }

  else
  {
    v202 = [(TUICandidateView *)self primaryGrid];
    [v202 setOrigin:{v301, v311}];

    v203 = MEMORY[0x1E69DD250];
    v313[0] = MEMORY[0x1E69E9820];
    v313[1] = 3221225472;
    v313[2] = __52__TUICandidateView_changeLayoutInsideAnimationBlock__block_invoke_3;
    v313[3] = &unk_1E72D77D8;
    v313[4] = self;
    v314 = v196;
    [v203 performWithoutAnimation:v313];
    v204 = v314;
  }

  [(TUICandidateView *)self updateArrowButtonVisibility];
  v208 = [v3 style];
  v209 = [v208 leftEdgeSeparatorImage];
  v210 = [v3 style];
  [(UIView *)self _setImage:v209 onEdges:2 outside:0 style:v210];

  v211 = [v3 style];
  v212 = [v211 rightEdgeSeparatorImage];
  v213 = [v3 style];
  [(UIView *)self _setImage:v212 onEdges:8 outside:0 style:v213];

  v214 = [(TUICandidateView *)self clipsToBoundsView];
  [v214 setFrame:{v305, v6, v312, v309}];

  v215 = [v3 style];
  v216 = [v215 backgroundColor];
  v217 = [(TUICandidateView *)self clipsToBoundsView];
  [v217 setBackgroundColor:v216];

  v218 = [(TUICandidateView *)self _inheritedRenderConfig];
  if ([v218 colorAdaptiveBackground])
  {
    v219 = [(TUICandidateView *)self state];
    v220 = [v219 style];
    if (objc_opt_respondsToSelector())
    {
      v221 = [(TUICandidateView *)self state];
      v222 = [v221 style];
      v223 = [v222 performSelector:sel_backgroundMaterial];

      if (!v223)
      {
        goto LABEL_105;
      }

      v224 = [(TUICandidateView *)self state];
      v225 = [v224 style];
      v218 = [v225 performSelector:sel_backgroundMaterial];

      v226 = [(TUICandidateView *)self clipsToBoundsView];
      [v226 _setBackground:v218];

      v219 = [(TUICandidateView *)self clipsToBoundsView];
      [v219 setClipsToBounds:1];
    }

    else
    {
    }
  }

LABEL_105:
  v227 = [(TUICandidateView *)self clipsToBoundsView];
  v228 = [v227 layer];
  [v228 setMask:0];

  v229 = [(TUICandidateView *)self state];
  v230 = [v229 style];
  [v230 cornerRadius];
  v232 = v231;

  if (v232 > 0.0)
  {
    [(TUICandidateView *)self updateCornerRadiusAfterFinalizingLayout:0];
  }
}

void __52__TUICandidateView_changeLayoutInsideAnimationBlock__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) sortControl];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void __52__TUICandidateView_changeLayoutInsideAnimationBlock__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _inheritedRenderConfig];
  if (![v2 colorAdaptiveBackground])
  {
    v8 = 0.0;
    v10 = 0.0;
    v12 = 0.0;
    v14 = 0.0;
    goto LABEL_5;
  }

  v3 = [*(a1 + 32) state];
  v4 = [v3 style];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v2 = [*(a1 + 32) state];
    v6 = [v2 style];
    [v6 outerGridPadding];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

LABEL_5:
    goto LABEL_7;
  }

  v8 = 0.0;
  v10 = 0.0;
  v12 = 0.0;
  v14 = 0.0;
LABEL_7:
  v15 = *(a1 + 40) + v10;
  v16 = v8 + *(a1 + 48);
  v17 = v10 + v14;
  v18 = *(a1 + 56) - (v10 + v14);
  v19 = v8 + v12;
  v20 = *(a1 + 64) - (v8 + v12);
  v21 = [*(a1 + 32) candidateMask];
  [v21 setFrame:{v15, v16, v18, v20}];

  v22 = v10 + *(a1 + 40);
  v23 = v8 + *(a1 + 48);
  v24 = *(a1 + 56) - v17;
  v25 = *(a1 + 64) - v19;
  v26 = [*(a1 + 32) primaryGrid];
  [v26 setFrame:{v22, v23, v24, v25}];
}

void __52__TUICandidateView_changeLayoutInsideAnimationBlock__block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(a1 + 32) primaryGrid];
  [v2 layoutIfNeeded];
}

- (BOOL)showingAutofillCandidate
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(TUICandidateView *)self primaryGrid];
  v3 = [v2 candidateGroups];
  v4 = [v3 firstObject];
  v5 = [v4 candidates];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) isAutofillExtraCandidate])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)prepareForLayoutChange:(BOOL)a3
{
  v3 = a3;
  v146[1] = *MEMORY[0x1E69E9840];
  [(TUICandidateView *)self setChangingLayout:1];
  v5 = [(TUICandidateView *)self state];
  v6 = [v5 style];
  v7 = [v6 doNotClipToBounds];
  v8 = [(TUICandidateView *)self clipsToBoundsView];
  [v8 setClipsToBounds:v7 ^ 1u];

  [(TUICandidateView *)self boundsForClipsToBoundsViewWithState:v5];
  v10 = v9;
  if ([v5 hasBackdrop])
  {
    v11 = [(TUICandidateView *)self backdropView];

    if (!v11)
    {
      v12 = [TUICandidateBackdropView alloc];
      [(TUICandidateView *)self bounds];
      v13 = [(TUICandidateBackdropView *)v12 initWithFrame:?];
      [(TUICandidateView *)self setBackdropView:v13];

      v14 = [v5 style];
      v15 = [(TUICandidateView *)self backdropView];
      [v15 setStyle:v14];

      v16 = [(TUICandidateView *)self backdropView];
      [v16 setDelegate:self];

      v17 = [(TUICandidateView *)self clipsToBoundsView];
      v18 = [(TUICandidateView *)self backdropView];
      [v17 insertSubview:v18 atIndex:0];
    }

    v19 = [v5 style];
    v20 = [v19 doNotClipToBounds];
    v21 = [(TUICandidateView *)self backdropView];
    [v21 setClipsToBounds:v20];

    v22 = [(TUICandidateView *)self backdropView];
    [v22 setHidden:0];
  }

  if ([v5 inlineTextViewPosition])
  {
    v23 = [(TUICandidateView *)self inlineTextView];

    if (!v23)
    {
      v24 = [TUICandidateInlineTextView alloc];
      [(TUICandidateView *)self bounds];
      v25 = [(TUICandidateInlineTextView *)v24 initWithFrame:?];
      [(TUICandidateView *)self setInlineTextView:v25];

      v26 = [(TUICandidateView *)self clipsToBoundsView];
      v27 = [(TUICandidateView *)self inlineTextView];
      v28 = [(TUICandidateView *)self primaryGrid];
      [v26 insertSubview:v27 belowSubview:v28];

      v29 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapInlineText_];
      v30 = [(TUICandidateView *)self inlineTextView];
      [v30 addGestureRecognizer:v29];

      v31 = [(TUICandidateView *)self inlineTextView];
      [v31 setHidden:1];
    }

    v32 = [(TUICandidateView *)self inlineTextView];
    v33 = [v32 isHidden];

    if (v33)
    {
      v34 = [(TUICandidateView *)self inlineTextView];
      [v34 setHidden:0];

      v35 = [(TUICandidateView *)self inlineTextView];
      [v35 setAlpha:0.0];
    }

    v36 = [(TUICandidateView *)self inlineText];
    v37 = [(TUICandidateView *)self inlineTextView];
    [v37 setText:v36];
  }

  v38 = [(TUICandidateView *)self disambiguationGrid];

  if (!v38)
  {
    v39 = [TUICandidateGrid alloc];
    [(TUICandidateView *)self disambiguationHeight];
    v41 = [(TUICandidateGrid *)v39 initWithFrame:0.0, 0.0, v10, v40];
    [(TUICandidateView *)self setDisambiguationGrid:v41];

    v42 = [(TUICandidateView *)self disambiguationGrid];
    [v42 setDelegate:self];
  }

  if ([v5 disambiguationGridPosition])
  {
    v43 = [(TUICandidateView *)self clipsToBoundsView];
    v44 = [(TUICandidateView *)self disambiguationGrid];
    v45 = [(TUICandidateView *)self primaryGrid];
    [v43 insertSubview:v44 aboveSubview:v45];

    v46 = [v5 disambiguationStyle];
    v47 = [(TUICandidateView *)self disambiguationGrid];
    [v47 setStyle:v46];

    v48 = [v5 disambiguationGridRowType];
    v49 = [(TUICandidateView *)self disambiguationGrid];
    [v49 setRowType:v48];

    v50 = objc_alloc(MEMORY[0x1E69D95E0]);
    v51 = MEMORY[0x1E695DFB8];
    v52 = [(TUICandidateView *)self candidateResultSet];
    v53 = [v52 disambiguationCandidates];
    v54 = [v51 orderedSetWithArray:v53];
    v55 = [v50 initWithTitle:&stru_1F03BA8F8 candidates:v54];
    v146[0] = v55;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v146 count:1];
    v57 = [(TUICandidateView *)self disambiguationGrid];
    [v57 setCandidateGroups:v56];

    [(TUICandidateView *)self updateDisambiguationSelectionIndex];
    v58 = [(TUICandidateView *)self disambiguationGrid];
    [v58 setHidden:0];
  }

  if ([v5 disambiguationGridPosition] == 2)
  {
    if ([v5 inlineTextViewPosition] == 1)
    {
      v59 = 5;
    }

    else
    {
      v59 = 4;
    }

    v60 = [(TUICandidateView *)self disambiguationGrid];
    v61 = [v60 style];
    if (objc_opt_respondsToSelector())
    {
      v62 = [(TUICandidateView *)self disambiguationGrid];
      v63 = [v62 style];
      v64 = [v63 hideLinesOnDisambiguationGridEdges];

      if (v64)
      {
        v59 = 0;
      }
    }

    else
    {
    }
  }

  else
  {
    v65 = [v5 disambiguationGridPosition];
    v66 = [(TUICandidateView *)self disambiguationGrid];
    v67 = v66;
    if (v65 == 1)
    {
      v68 = [v66 style];
      if (objc_opt_respondsToSelector())
      {
        v69 = [(TUICandidateView *)self disambiguationGrid];
        v70 = [v69 style];
        v71 = [v70 hideLinesOnDisambiguationGridEdges];

        if (v71)
        {
          v59 = 0;
        }

        else
        {
          v59 = 2;
        }
      }

      else
      {

        v59 = 2;
      }
    }

    else
    {
      [v66 setHidden:1];

      v59 = 0;
    }
  }

  v72 = [(TUICandidateView *)self disambiguationGrid];
  v73 = [v5 style];
  [v72 _setShowsLinesOnEdges:v59 style:v73];

  if ([v5 sortControlPosition] && (-[TUICandidateView state](self, "state"), v74 = objc_claimAutoreleasedReturnValue(), v75 = objc_msgSend(v74, "sortControlPosition"), v74, v75 != 5))
  {
    v77 = [(TUICandidateView *)self sortControl];
    [v77 setHidden:0];

    [(TUICandidateView *)self updateSortControlTitlesIfNeeded];
  }

  else
  {
    v76 = [(TUICandidateView *)self sortControl];
    [v76 setHidden:1];

    [(TUICandidateView *)self resetSortControlIndex];
  }

  if ([v5 sortControlPosition] == 4)
  {
    v78 = [(TUICandidateView *)self sortControl];
    v79 = [v78 superview];
    v80 = [(TUICandidateView *)self clipsToBoundsView];

    if (v79 == v80)
    {
      v81 = [(TUICandidateView *)self sortControl];
      [v81 removeFromSuperview];
    }

    v82 = [(TUICandidateView *)self sortControl];
    v83 = [(TUICandidateView *)self primaryGrid];
    [v83 setCustomHeader:v82];

    v84 = [(TUICandidateView *)self sortControl];
    [v84 setAlpha:1.0];

    [(TUICandidateView *)self sortControlHeight];
    v86 = v85;
    v87 = [(TUICandidateView *)self sortControl];
    [v87 setFrame:{0.0, 0.0, v10, v86}];

    v88 = [(TUICandidateView *)self sortControl];
    v89 = [v5 style];
    [v88 _setShowsLinesOnEdges:0 style:v89];
  }

  else
  {
    v90 = [(TUICandidateView *)self primaryGrid];
    [v90 setCustomHeader:0];

    v91 = [(TUICandidateView *)self sortControl];
    v92 = [v91 superview];
    v93 = [(TUICandidateView *)self clipsToBoundsView];

    if (v92 == v93)
    {
      goto LABEL_42;
    }

    v94 = [(TUICandidateView *)self sortControl];
    [v94 removeFromSuperview];

    v88 = [(TUICandidateView *)self clipsToBoundsView];
    v89 = [(TUICandidateView *)self sortControl];
    [v88 addSubview:v89];
  }

LABEL_42:
  v95 = [v5 style];
  if (objc_opt_respondsToSelector())
  {
    v96 = [v5 style];
    v97 = [v96 performSelector:sel_hasShadow];

    if (!v97)
    {
      goto LABEL_46;
    }

    v98 = [MEMORY[0x1E69DC888] blackColor];
    v99 = [v98 CGColor];
    v100 = [(TUICandidateView *)self layer];
    [v100 setShadowColor:v99];

    v101 = [(TUICandidateView *)self layer];
    [v101 setShadowOffset:{0.0, 3.0}];

    v102 = [(TUICandidateView *)self layer];
    LODWORD(v103) = 1045220557;
    [v102 setShadowOpacity:v103];

    v95 = [(TUICandidateView *)self layer];
    [v95 setShadowRadius:8.0];
  }

LABEL_46:
  v104 = [v5 style];
  v105 = [v104 sortControlBackgroundColor];
  [v105 alphaComponent];
  if (v106 <= 0.0)
  {
  }

  else
  {
    if ([v5 sortControlPosition] == 2 || objc_msgSend(v5, "sortControlPosition") == 3)
    {

LABEL_50:
      v107 = 1;
      goto LABEL_53;
    }

    v145 = [v5 sortControlPosition];

    if (v145 == 5)
    {
      goto LABEL_50;
    }
  }

  v107 = 0;
LABEL_53:
  v108 = [(TUICandidateView *)self sortControl];
  v109 = [v5 style];
  [v108 _setShowsLinesOnEdges:v107 style:v109];

  if ([(TUICandidateView *)self effectiveCandidateArrowButonPosition])
  {
    v110 = [(TUICandidateView *)self arrowButton];

    if (!v110)
    {
      v111 = [TUICandidateArrowButton alloc];
      [(TUICandidateView *)self arrowButtonWidth];
      v113 = v112;
      [(TUICandidateView *)self arrowButtonHeight];
      v115 = [(TUICandidateArrowButton *)v111 initWithFrame:0.0, 0.0, v113, v114];
      [(TUICandidateView *)self setArrowButton:v115];

      v116 = [(TUICandidateView *)self arrowButton];
      [v116 addTarget:self action:sel_didTapArrowButton_ forControlEvents:64];

      v117 = [(TUICandidateView *)self clipsToBoundsView];
      v118 = [(TUICandidateView *)self arrowButton];
      [v117 addSubview:v118];
    }

    [(TUICandidateView *)self setShouldShowArrowButton:1];
    [(TUICandidateView *)self updateArrowButtonVisibility];
  }

  v119 = [v5 candidateNumberEnabled];
  v120 = [(TUICandidateView *)self primaryGrid];
  [v120 setCandidateNumberEnabled:v119];

  v121 = [(TUICandidateView *)self arrowButton];
  [v121 frame];
  v123 = v122;
  v125 = v124;
  v126 = [(TUICandidateView *)self primaryGrid];
  [v126 setArrowButtonOrigin:{v123, v125}];

  [(TUICandidateView *)self getArrowButtonSizeForGrid];
  v128 = v127;
  v130 = v129;
  v131 = [(TUICandidateView *)self primaryGrid];
  [v131 setArrowButtonSize:{v128, v130}];

  v132 = [(TUICandidateView *)self state];
  v133 = [v132 style];
  v134 = [v133 leftEdgeMaskImage];
  if (v134)
  {
  }

  else
  {
    v135 = [(TUICandidateView *)self state];
    v136 = [v135 style];
    v137 = [v136 rightEdgeMaskImage];

    if (!v137)
    {
      v143 = [(TUICandidateView *)self primaryGrid];
      [v143 setMaskView:0];
      goto LABEL_63;
    }
  }

  v138 = [(TUICandidateView *)self candidateMask];

  if (!v138)
  {
    v139 = [TUICandidateMask alloc];
    [(TUICandidateView *)self bounds];
    v140 = [(TUICandidateMask *)v139 initWithFrame:?];
    [(TUICandidateView *)self setCandidateMask:v140];
  }

  v141 = [v5 style];
  v142 = [(TUICandidateView *)self candidateMask];
  [v142 setStyle:v141];

  v143 = [(TUICandidateView *)self candidateMask];
  v144 = [(TUICandidateView *)self primaryGrid];
  [v144 setMaskView:v143];

LABEL_63:
  if (v3)
  {
    [(TUICandidateView *)self reloadPrimaryGridDataIfNeeded];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TUICandidateView;
  [(TUICandidateView *)&v3 layoutSubviews];
  if (![(TUICandidateView *)self changingLayout])
  {
    [(TUICandidateView *)self prepareForLayoutChange:0];
    [(TUICandidateView *)self changeLayoutInsideAnimationBlock];
    [(TUICandidateView *)self updatePrimaryGridRowTypeWithOptions:0 animated:0 animator:0 completion:0];
    [(TUICandidateView *)self finalizeLayoutChange];
  }
}

- (double)arrowButtonWidth
{
  v3 = [(TUICandidateView *)self state];
  v4 = [v3 style];
  [v4 arrowButtonPadding];
  v6 = v5;
  v7 = [(TUICandidateView *)self state];
  v8 = [v7 style];
  [v8 arrowButtonPadding];
  v10 = v6 + v9;
  [(TUICandidateView *)self arrowButtonHeight];
  if (v11 == 0.0)
  {
    v11 = 42.0;
  }

  v12 = v10 + v11;

  return v12;
}

- (double)arrowButtonHeight
{
  v3 = [(TUICandidateView *)self state];
  v4 = [v3 style];
  [v4 arrowButtonHeight];
  if (v5 == 0.0)
  {
    v6 = [(TUICandidateView *)self state];
    v7 = [v6 style];
    [v7 rowHeight];
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (double)disambiguationHeight
{
  v3 = [(TUICandidateView *)self state];
  v4 = [v3 disambiguationStyle];
  [v4 rowHeight];
  v6 = v5;
  v7 = [(TUICandidateView *)self state];
  v8 = [v7 disambiguationStyle];
  [v8 gridPadding];
  v10 = v6 + v9;

  return v10;
}

- (double)inlineTextHeight
{
  v2 = [(TUICandidateView *)self state];
  v3 = [v2 style];
  [v3 rowHeight];
  v5 = v4;

  return v5;
}

- (double)sortControlHeight
{
  v3 = [(TUICandidateView *)self state];
  v4 = [v3 style];
  [v4 rowHeight];
  v6 = v5;
  v7 = [(TUICandidateView *)self state];
  v8 = [v7 style];
  [v8 sortControlPadding];
  v10 = v6 + v9;
  v11 = [(TUICandidateView *)self state];
  v12 = [v11 style];
  [v12 sortControlPadding];
  v14 = v10 + v13;

  return v14;
}

- (CGRect)boundsForClipsToBoundsViewWithState:(id)a3
{
  v4 = a3;
  [(TUICandidateView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 yOffset];
  v14 = v13 + v8;
  [v4 additionalHeight];
  v16 = v15;

  v17 = v12 + v16;
  v18 = v6;
  v19 = v14;
  v20 = v10;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (TUICandidateView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TUICandidateView;
  v3 = [(TUICandidateView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateView *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUICandidateView;
  v3 = [(TUICandidateView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  [(TUICandidateView *)self setClipsToBounds:0];
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  [(TUICandidateView *)self bounds];
  v4 = [v3 initWithFrame:?];
  [(TUICandidateView *)self setClipsToBoundsView:v4];

  v5 = [(TUICandidateView *)self clipsToBoundsView];
  [v5 setClipsToBounds:1];

  v6 = [(TUICandidateView *)self clipsToBoundsView];
  [(TUICandidateView *)self addSubview:v6];

  v7 = [MEMORY[0x1E69794A0] layer];
  [(TUICandidateView *)self setRoundedBorderLayer:v7];

  v8 = [TUICandidateGrid alloc];
  [(TUICandidateView *)self bounds];
  v9 = [(TUICandidateGrid *)v8 initWithFrame:?];
  [(TUICandidateView *)self setPrimaryGrid:v9];

  v10 = [(TUICandidateView *)self primaryGrid];
  [v10 setDelegate:self];

  v11 = [(TUICandidateView *)self clipsToBoundsView];
  v12 = [(TUICandidateView *)self primaryGrid];
  [v11 addSubview:v12];

  v13 = [TUICandidateSortControl alloc];
  [(TUICandidateView *)self bounds];
  v14 = [(TUICandidateSortControl *)v13 initWithFrame:?];
  [(TUICandidateView *)self setSortControl:v14];

  v15 = [(TUICandidateView *)self sortControl];
  [v15 setHidden:1];

  v16 = [(TUICandidateView *)self sortControl];
  [v16 addTarget:self action:sel_handleSortControlValueChanged forControlEvents:4096];

  v18 = [(TUICandidateView *)self clipsToBoundsView];
  v17 = [(TUICandidateView *)self sortControl];
  [v18 addSubview:v17];
}

@end