@interface TUICandidateView
- (BOOL)candidateBackdropViewShouldShowBackdropView:(id)view;
- (BOOL)handleNumberKey:(unint64_t)key;
- (BOOL)hasCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity;
- (BOOL)hasCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity inGridType:(int64_t)type;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (BOOL)reloadPrimaryGridDataIfNeeded;
- (BOOL)shouldAutomaticallyHideAndShowSortControl;
- (BOOL)showingArrowButton;
- (BOOL)showingAutofillCandidate;
- (BOOL)toggleSortControl:(BOOL)control animated:(BOOL)animated;
- (CGRect)boundsForClipsToBoundsViewWithState:(id)state;
- (CGRect)candidateViewFrame;
- (CGSize)getArrowButtonSizeForGrid;
- (NSIndexPath)disambiguationSelectedIndexPath;
- (NSIndexPath)selectedIndexPath;
- (TIKeyboardCandidate)selectedCandidate;
- (TIKeyboardCandidate)selectedDisambiguationCandidate;
- (TUICandidateView)initWithCoder:(id)coder;
- (TUICandidateView)initWithFrame:(CGRect)frame;
- (TUICandidateViewDelegate)delegate;
- (double)arrowButtonHeight;
- (double)arrowButtonWidth;
- (double)disambiguationHeight;
- (double)inlineTextHeight;
- (double)sortControlHeight;
- (id)candidateGroupsForCurrentState;
- (id)filteredCandidates;
- (id)gridOfType:(int64_t)type;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)indexPathForCandidate:(id)candidate;
- (id)sortControlTitles;
- (id)visibleCandidates;
- (int64_t)effectiveCandidateArrowButonPosition;
- (int64_t)rowForCandidate:(id)candidate;
- (int64_t)selectedSortControlIndex;
- (int64_t)viewOffsetForCandidate:(id)candidate;
- (void)candidateGrid:(id)grid didAcceptCandidate:(id)candidate atIndexPath:(id)path;
- (void)candidateGrid:(id)grid didChangeContentSize:(CGSize)size;
- (void)candidateGrid:(id)grid didMoveHighlightFrame:(CGRect)frame;
- (void)candidateGridNeedsToExpand:(id)expand;
- (void)candidateGridSelectionDidChange:(id)change;
- (void)changeLayoutInsideAnimationBlock;
- (void)commonInit;
- (void)didTapArrowButton:(id)button;
- (void)didTapInlineText:(id)text;
- (void)finalizeLayoutChange;
- (void)handleSortControlValueChanged;
- (void)layoutSubviews;
- (void)prepareForLayoutChange:(BOOL)change;
- (void)reloadDisambiguationGridDataIfNeeded;
- (void)reloadGridsIfNeeded;
- (void)resetSortControlIndex;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setCandidateResultSet:(id)set;
- (void)setDisambiguationSelectedIndexPath:(id)path;
- (void)setInlineText:(id)text;
- (void)setSelectedIndexPath:(id)path;
- (void)setSelectedIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position;
- (void)setState:(id)state animated:(BOOL)animated animator:(id)animator options:(unint64_t)options force:(BOOL)force completion:(id)completion;
- (void)setState:(id)state animated:(BOOL)animated options:(unint64_t)options force:(BOOL)force completion:(id)completion;
- (void)showCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity;
- (void)showCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity inGridType:(int64_t)type;
- (void)updateArrowButtonVisibility;
- (void)updateCornerRadiusAfterFinalizingLayout:(BOOL)layout;
- (void)updateDisambiguationSelectionIndex;
- (void)updatePrimaryGridRowTypeWithOptions:(unint64_t)options animated:(BOOL)animated animator:(id)animator completion:(id)completion;
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
  clipsToBoundsView = [(TUICandidateView *)self clipsToBoundsView];
  clipsToBoundsView2 = [(TUICandidateView *)self clipsToBoundsView];
  [clipsToBoundsView2 bounds];
  [clipsToBoundsView convertRect:self toView:?];
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
  candidateResultSet = [(TUICandidateView *)self candidateResultSet];
  hasCandidates = [candidateResultSet hasCandidates];

  if (hasCandidates)
  {
    candidateResultSet2 = [(TUICandidateView *)self candidateResultSet];
    sortMethods = [candidateResultSet2 sortMethods];
    v7 = [sortMethods count];

    if (v7)
    {
      candidateResultSet3 = [(TUICandidateView *)self candidateResultSet];
      sortMethodGroups = [candidateResultSet3 sortMethodGroups];
      candidateResultSet4 = [(TUICandidateView *)self candidateResultSet];
      sortMethods2 = [candidateResultSet4 sortMethods];
      v12 = [sortMethods2 objectAtIndex:0];
      v13 = [sortMethodGroups objectForKey:v12];
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x1E69D95E0]);
      v16 = MEMORY[0x1E695DFB8];
      candidateResultSet5 = [(TUICandidateView *)self candidateResultSet];
      candidates = [candidateResultSet5 candidates];
      v19 = [v16 orderedSetWithArray:candidates];
      v20 = [v15 initWithTitle:&stru_1F03BA8F8 candidates:v19];
      v24[0] = v20;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    }

    firstObject = [v13 firstObject];
    candidates2 = [firstObject candidates];
    array = [candidates2 array];
  }

  else
  {
    array = MEMORY[0x1E695E0F0];
  }

  return array;
}

- (id)visibleCandidates
{
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  visibleCandidates = [primaryGrid visibleCandidates];

  return visibleCandidates;
}

- (BOOL)candidateBackdropViewShouldShowBackdropView:(id)view
{
  state = [(TUICandidateView *)self state];
  v4 = [state arrowButtonDirection] == 1;

  return v4;
}

- (void)candidateGridNeedsToExpand:(id)expand
{
  expandCopy = expand;
  primaryGrid = [(TUICandidateView *)self primaryGrid];

  v5 = primaryGrid;
  if (primaryGrid == expandCopy)
  {
    delegate = [(TUICandidateView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    delegate2 = [(TUICandidateView *)self delegate];
    [delegate2 candidateViewNeedsToExpand:self];
    v5 = delegate2;
  }
}

- (void)candidateGrid:(id)grid didMoveHighlightFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v40 = *MEMORY[0x1E69E9840];
  gridCopy = grid;
  primaryGrid = [(TUICandidateView *)self primaryGrid];

  if (primaryGrid == gridCopy)
  {
    state = [(TUICandidateView *)self state];
    style = [state style];
    leftEdgeSeparatorImage = [style leftEdgeSeparatorImage];
    if (leftEdgeSeparatorImage)
    {
    }

    else
    {
      state2 = [(TUICandidateView *)self state];
      style2 = [state2 style];
      rightEdgeSeparatorImage = [style2 rightEdgeSeparatorImage];

      if (!rightEdgeSeparatorImage)
      {
        goto LABEL_13;
      }
    }

    [(TUICandidateView *)self convertRect:gridCopy fromView:x, y, width, height];
    UIRectInset();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    _allLines = [(UIView *)self _allLines];
    v26 = [_allLines countByEnumeratingWithState:&v35 objects:v39 count:16];
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
            objc_enumerationMutation(_allLines);
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

        v27 = [_allLines countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v27);
    }
  }

LABEL_13:
}

- (void)candidateGrid:(id)grid didChangeContentSize:(CGSize)size
{
  gridCopy = grid;
  primaryGrid = [(TUICandidateView *)self primaryGrid];

  if (primaryGrid == gridCopy)
  {

    [(TUICandidateView *)self updateArrowButtonVisibility];
  }
}

- (void)candidateGridSelectionDidChange:(id)change
{
  changeCopy = change;
  delegate = [(TUICandidateView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(TUICandidateView *)self delegate];
    primaryGrid = [(TUICandidateView *)self primaryGrid];
    [delegate2 candidateViewSelectionDidChange:self inGridType:primaryGrid != changeCopy];
  }
}

- (void)candidateGrid:(id)grid didAcceptCandidate:(id)candidate atIndexPath:(id)path
{
  gridCopy = grid;
  candidateCopy = candidate;
  pathCopy = path;
  delegate = [(TUICandidateView *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = self->_disambiguationGrid == gridCopy;
    delegate2 = [(TUICandidateView *)self delegate];
    [delegate2 candidateView:self didAcceptCandidate:candidateCopy atIndexPath:pathCopy inGridType:v12];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  delegate = [(TUICandidateView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(TUICandidateView *)self delegate];
    [delegate2 candidateViewWillBeginDragging:self];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(TUICandidateView *)self shouldAutomaticallyHideAndShowSortControl])
  {
    panGestureRecognizer = [scrollCopy panGestureRecognizer];
    [panGestureRecognizer velocityInView:scrollCopy];
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
    state = [(TUICandidateView *)self state];
    if (![state inlineTextViewPosition])
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
  state = [(TUICandidateView *)self state];
  arrowButtonPosition = [state arrowButtonPosition];

  effectiveUserInterfaceLayoutDirection = [(TUICandidateView *)self effectiveUserInterfaceLayoutDirection];
  v6 = 5;
  if (effectiveUserInterfaceLayoutDirection != 1)
  {
    v6 = 1;
  }

  v7 = 5;
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v7 = 1;
  }

  if (arrowButtonPosition != 6)
  {
    v7 = arrowButtonPosition;
  }

  if (arrowButtonPosition == 7)
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
  shouldShowArrowButton = [(TUICandidateView *)self shouldShowArrowButton];
  effectiveCandidateArrowButonPosition = [(TUICandidateView *)self effectiveCandidateArrowButonPosition];
  state = [(TUICandidateView *)self state];
  if ([state primaryGridRowType])
  {
    state2 = [(TUICandidateView *)self state];
    if ([state2 primaryGridRowType] != 1)
    {

LABEL_9:
      v12 = 1;
      goto LABEL_26;
    }

    if ((effectiveCandidateArrowButonPosition & 0xFFFFFFFFFFFFFFFELL) != 4)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  primaryGrid = [(TUICandidateView *)self primaryGrid];
  [primaryGrid contentSize];
  v9 = v8;
  primaryGrid2 = [(TUICandidateView *)self primaryGrid];
  [primaryGrid2 frame];
  if (v9 <= CGRectGetWidth(v46))
  {
    primaryGrid3 = [(TUICandidateView *)self primaryGrid];
    [primaryGrid3 contentSize];
    v15 = v14;
    primaryGrid4 = [(TUICandidateView *)self primaryGrid];
    [primaryGrid4 frame];
    v11 = v15 > CGRectGetHeight(v47);
  }

  else
  {
    v11 = 1;
  }

  state3 = [(TUICandidateView *)self state];
  style = [state3 style];
  arrowButtonImageName = [style arrowButtonImageName];
  v20 = [arrowButtonImageName hasPrefix:@"character.motion"];

  v12 = 1;
  if (v20)
  {
    shouldShowArrowButton = 1;
  }

  else if (effectiveCandidateArrowButonPosition > 3)
  {
    if (effectiveCandidateArrowButonPosition == 4)
    {
      shouldShowArrowButton = v11;
    }

    else if (effectiveCandidateArrowButonPosition == 5 && !v11 && shouldShowArrowButton)
    {
      state4 = [(TUICandidateView *)self state];
      [state4 additionalHeight];
      shouldShowArrowButton = v22 != 0.0;
    }
  }

  else if (effectiveCandidateArrowButonPosition == 1)
  {
    if (!v11 && shouldShowArrowButton)
    {
      state5 = [(TUICandidateView *)self state];
      if ([state5 arrowButtonDirection] == 2)
      {
        shouldShowArrowButton = 1;
      }

      else
      {
        state6 = [(TUICandidateView *)self state];
        shouldShowArrowButton = [state6 arrowButtonDirection] == 3;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v12 = effectiveCandidateArrowButonPosition != 2 || v11;
  }

LABEL_26:
  [(TUICandidateArrowButton *)self->_arrowButton setHidden:shouldShowArrowButton ^ 1];
  [(TUICandidateArrowButton *)self->_arrowButton setEnabled:v12];
  state7 = [(TUICandidateView *)self state];
  style2 = [state7 style];
  if (objc_opt_respondsToSelector())
  {
    state8 = [(TUICandidateView *)self state];
    style3 = [state8 style];
    shouldUpdateCollectionViewWidthForArrowButtonVisibility = [style3 shouldUpdateCollectionViewWidthForArrowButtonVisibility];

    if (!shouldUpdateCollectionViewWidthForArrowButtonVisibility)
    {
      return;
    }

    primaryGrid5 = [(TUICandidateView *)self primaryGrid];
    [primaryGrid5 setIsArrowButtonVisible:shouldShowArrowButton];

    if (!shouldShowArrowButton)
    {
      return;
    }

    state9 = [(TUICandidateView *)self state];
    sortControlPosition = [state9 sortControlPosition];

    if (sortControlPosition != 4)
    {
      return;
    }

    sortControl = [(TUICandidateView *)self sortControl];
    [sortControl frame];
    v33 = v32;
    v35 = v34;
    v37 = v36;

    [(TUICandidateView *)self bounds];
    v39 = v38;
    [(TUICandidateView *)self getArrowButtonSizeForGrid];
    v41 = v39 - v40;
    sortControl2 = [(TUICandidateView *)self sortControl];
    [sortControl2 setFrame:{v33, v35, v41, v37}];

    state7 = [(TUICandidateView *)self sortControl];
    [state7 layoutIfNeeded];
  }

  else
  {
  }
}

- (void)handleSortControlValueChanged
{
  selectedIndexPath = [(TUICandidateView *)self selectedIndexPath];
  [(TUICandidateView *)self reloadPrimaryGridDataIfNeeded];
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  [primaryGrid scrollToFirstCandidate];

  if (selectedIndexPath)
  {
    primaryGrid2 = [(TUICandidateView *)self primaryGrid];
    firstIndexPath = [primaryGrid2 firstIndexPath];
    if (firstIndexPath)
    {
      [(TUICandidateView *)self setSelectedIndexPath:firstIndexPath];
    }

    else
    {
      v6 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
      [(TUICandidateView *)self setSelectedIndexPath:v6];
    }
  }
}

- (BOOL)toggleSortControl:(BOOL)control animated:(BOOL)animated
{
  animatedCopy = animated;
  controlCopy = control;
  if (animated && [(TUICandidateView *)self showingSortControl]== control)
  {
    return 0;
  }

  [(TUICandidateView *)self setShowingSortControl:controlCopy];
  sortControl = [(TUICandidateView *)self sortControl];
  [sortControl setHidden:0];

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
  v12 = controlCopy;
  v9 = _Block_copy(v11);
  if (animatedCopy)
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
  state = [(TUICandidateView *)self state];
  v3 = [state sortControlPosition] == 3;

  return v3;
}

- (id)sortControlTitles
{
  v21 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  candidateResultSet = [(TUICandidateView *)self candidateResultSet];
  sortMethods = [candidateResultSet sortMethods];

  v6 = [sortMethods countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(sortMethods);
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

        [array addObject:v14];
      }

      v7 = [sortMethods countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  return array;
}

- (void)didTapInlineText:(id)text
{
  delegate = [(TUICandidateView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(TUICandidateView *)self delegate];
    [delegate2 candidateViewDidTapInlineText:self];
  }
}

- (void)didTapArrowButton:(id)button
{
  delegate = [(TUICandidateView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(TUICandidateView *)self delegate];
    [delegate2 candidateViewDidTapArrowButton:self];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  clipsToBoundsView = [(TUICandidateView *)self clipsToBoundsView];
  [clipsToBoundsView frame];
  v21.x = x;
  v21.y = y;
  v9 = CGRectContainsPoint(v23, v21);

  if (v9)
  {
    clipsToBoundsView2 = [(TUICandidateView *)self clipsToBoundsView];
    clipsToBoundsView3 = [(TUICandidateView *)self clipsToBoundsView];
LABEL_6:
    v16 = clipsToBoundsView3;
    [clipsToBoundsView3 convertPoint:self fromView:{x, y}];
    v17 = [clipsToBoundsView2 hitTest:eventCopy withEvent:?];

    goto LABEL_8;
  }

  arrowButton = [(TUICandidateView *)self arrowButton];
  if (arrowButton)
  {
    v13 = arrowButton;
    arrowButton2 = [(TUICandidateView *)self arrowButton];
    [arrowButton2 frame];
    v22.x = x;
    v22.y = y;
    v15 = CGRectContainsPoint(v24, v22);

    if (v15)
    {
      clipsToBoundsView2 = [(TUICandidateView *)self arrowButton];
      clipsToBoundsView3 = [(TUICandidateView *)self arrowButton];
      goto LABEL_6;
    }
  }

  v19.receiver = self;
  v19.super_class = TUICandidateView;
  v17 = [(TUICandidateView *)&v19 hitTest:eventCopy withEvent:x, y];
LABEL_8:

  return v17;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = TUICandidateView;
  if (![(TUICandidateView *)&v17 pointInside:eventCopy withEvent:x, y])
  {
    clipsToBoundsView = [(TUICandidateView *)self clipsToBoundsView];
    isHidden = [clipsToBoundsView isHidden];
    if ((isHidden & 1) != 0 || (-[TUICandidateView clipsToBoundsView](self, "clipsToBoundsView"), v4 = objc_claimAutoreleasedReturnValue(), -[TUICandidateView clipsToBoundsView](self, "clipsToBoundsView"), v5 = objc_claimAutoreleasedReturnValue(), [v5 convertPoint:self fromView:{x, y}], (objc_msgSend(v4, "pointInside:withEvent:", eventCopy) & 1) == 0))
    {
      arrowButton = [(TUICandidateView *)self arrowButton];
      if ([arrowButton isHidden])
      {

        v10 = 0;
        if (isHidden)
        {
          goto LABEL_11;
        }
      }

      else
      {
        arrowButton2 = [(TUICandidateView *)self arrowButton];
        arrowButton3 = [(TUICandidateView *)self arrowButton];
        [arrowButton3 convertPoint:self fromView:{x, y}];
        v10 = [arrowButton2 pointInside:eventCopy withEvent:?];

        if (isHidden)
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
  disambiguationGrid = [(TUICandidateView *)self disambiguationGrid];
  selectedCandidate = [disambiguationGrid selectedCandidate];

  return selectedCandidate;
}

- (TIKeyboardCandidate)selectedCandidate
{
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  selectedCandidate = [primaryGrid selectedCandidate];

  return selectedCandidate;
}

- (void)setDisambiguationSelectedIndexPath:(id)path
{
  pathCopy = path;
  disambiguationGrid = [(TUICandidateView *)self disambiguationGrid];
  [disambiguationGrid setSelectedIndexPath:pathCopy];
}

- (NSIndexPath)disambiguationSelectedIndexPath
{
  disambiguationGrid = [(TUICandidateView *)self disambiguationGrid];
  selectedIndexPath = [disambiguationGrid selectedIndexPath];

  return selectedIndexPath;
}

- (void)setSelectedIndexPath:(id)path animated:(BOOL)animated scrollPosition:(unint64_t)position
{
  animatedCopy = animated;
  pathCopy = path;
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  [primaryGrid setSelectedIndexPath:pathCopy animated:animatedCopy scrollPosition:position];
}

- (void)setSelectedIndexPath:(id)path
{
  pathCopy = path;
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  [primaryGrid setSelectedIndexPath:pathCopy];
}

- (NSIndexPath)selectedIndexPath
{
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  selectedIndexPath = [primaryGrid selectedIndexPath];

  return selectedIndexPath;
}

- (BOOL)handleNumberKey:(unint64_t)key
{
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  LOBYTE(key) = [primaryGrid handleNumberKey:key];

  return key;
}

- (int64_t)rowForCandidate:(id)candidate
{
  candidateCopy = candidate;
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  v6 = [primaryGrid rowForCandidate:candidateCopy];

  return v6;
}

- (int64_t)viewOffsetForCandidate:(id)candidate
{
  candidateCopy = candidate;
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  v6 = [primaryGrid viewOffsetForCandidate:candidateCopy];

  return v6;
}

- (id)indexPathForCandidate:(id)candidate
{
  candidateCopy = candidate;
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  v6 = [primaryGrid indexPathForCandidate:candidateCopy];

  return v6;
}

- (void)showCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity inGridType:(int64_t)type
{
  v5 = *&granularity;
  directionCopy = direction;
  v7 = [(TUICandidateView *)self gridOfType:type];
  [v7 showCandidateInForwardDirection:directionCopy granularity:v5];
}

- (BOOL)hasCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity inGridType:(int64_t)type
{
  v5 = *&granularity;
  directionCopy = direction;
  v7 = [(TUICandidateView *)self gridOfType:type];
  LOBYTE(v5) = [v7 hasCandidateInForwardDirection:directionCopy granularity:v5];

  return v5;
}

- (void)showCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity
{
  directionCopy = direction;
  if (granularity == 3)
  {
    titles = [(TUICandidateSortControl *)self->_sortControl titles];
    v7 = [titles count];

    if (v7 >= 2)
    {
      sortControl = [(TUICandidateView *)self sortControl];
      selectedIndex = [sortControl selectedIndex];
      v10 = v7 - 1;
      if (directionCopy)
      {
        v10 = v7 + 1;
      }

      v11 = (v10 + selectedIndex) % v7;
      sortControl2 = [(TUICandidateView *)self sortControl];
      [sortControl2 setSelectedIndex:v11];

      [(TUICandidateView *)self handleSortControlValueChanged];
    }
  }

  else
  {

    [TUICandidateView showCandidateInForwardDirection:"showCandidateInForwardDirection:granularity:inGridType:" granularity:? inGridType:?];
  }
}

- (BOOL)hasCandidateInForwardDirection:(BOOL)direction granularity:(int)granularity
{
  if (granularity == 3)
  {
    sortControl = [(TUICandidateView *)self sortControl];
    if (sortControl && (v6 = sortControl, -[TUICandidateView sortControl](self, "sortControl"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isHidden], v7, v6, (v8 & 1) == 0))
    {
      sortControl2 = [(TUICandidateView *)self sortControl];
      titles = [sortControl2 titles];
      if ([titles count] < 2)
      {
        LOBYTE(v9) = 0;
      }

      else
      {
        state = [(TUICandidateView *)self state];
        style = [state style];
        v9 = [style disableSwitchingSortingMethodByTabKey] ^ 1;
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

    return [TUICandidateView hasCandidateInForwardDirection:"hasCandidateInForwardDirection:granularity:inGridType:" granularity:direction inGridType:?];
  }
}

- (id)gridOfType:(int64_t)type
{
  if (type)
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
  candidateResultSet = [(TUICandidateView *)self candidateResultSet];
  sortMethods = [candidateResultSet sortMethods];
  v5 = [sortMethods count];

  state = [(TUICandidateView *)self state];
  if ([state primaryGridRowType])
  {

LABEL_4:
    sortControl = [(TUICandidateView *)self sortControl];
    selectedIndex = [sortControl selectedIndex];

    if (selectedIndex > (v5 - 1) || selectedIndex < 0)
    {
      v11 = 0;
    }

    else
    {
      v11 = selectedIndex;
    }

    candidateResultSet2 = [(TUICandidateView *)self candidateResultSet];
    sortMethodGroups = [candidateResultSet2 sortMethodGroups];
    candidateResultSet3 = [(TUICandidateView *)self candidateResultSet];
    sortMethods2 = [candidateResultSet3 sortMethods];
    v16 = [sortMethods2 objectAtIndex:v11];
    v17 = [sortMethodGroups objectForKey:v16];

    if (v17)
    {
      goto LABEL_17;
    }

    v18 = objc_alloc(MEMORY[0x1E69D95E0]);
    v19 = MEMORY[0x1E695DFB8];
    candidateResultSet4 = [(TUICandidateView *)self candidateResultSet];
    candidates = [candidateResultSet4 candidates];
    v22 = [v19 orderedSetWithArray:candidates];
    v23 = [v18 initWithTitle:&stru_1F03BA8F8 candidates:v22];
    v36 = v23;
    v24 = MEMORY[0x1E695DEC8];
    v25 = &v36;
    goto LABEL_12;
  }

  changingLayout = [(TUICandidateView *)self changingLayout];

  if (changingLayout)
  {
    goto LABEL_4;
  }

  candidateResultSet5 = [(TUICandidateView *)self candidateResultSet];
  hasCandidates = [candidateResultSet5 hasCandidates];

  if (hasCandidates)
  {
    if (!v5)
    {
      v34 = objc_alloc(MEMORY[0x1E69D95E0]);
      v35 = MEMORY[0x1E695DFB8];
      candidateResultSet4 = [(TUICandidateView *)self candidateResultSet];
      candidates = [candidateResultSet4 candidates];
      v22 = [v35 orderedSetWithArray:candidates];
      v23 = [v34 initWithTitle:&stru_1F03BA8F8 candidates:v22];
      v37[0] = v23;
      v24 = MEMORY[0x1E695DEC8];
      v25 = v37;
LABEL_12:
      v17 = [v24 arrayWithObjects:v25 count:1];

      goto LABEL_17;
    }

    candidateResultSet6 = [(TUICandidateView *)self candidateResultSet];
    sortMethodGroups2 = [candidateResultSet6 sortMethodGroups];
    candidateResultSet7 = [(TUICandidateView *)self candidateResultSet];
    sortMethods3 = [candidateResultSet7 sortMethods];
    v32 = [sortMethods3 objectAtIndex:0];
    v17 = [sortMethodGroups2 objectForKey:v32];
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

LABEL_17:

  return v17;
}

- (void)setInlineText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_inlineText isEqualToString:?])
  {
    v4 = [textCopy copy];
    inlineText = self->_inlineText;
    self->_inlineText = v4;

    v6 = self->_inlineText;
    inlineTextView = [(TUICandidateView *)self inlineTextView];
    [inlineTextView setText:v6];
  }
}

- (void)updateDisambiguationSelectionIndex
{
  candidateResultSet = [(TUICandidateView *)self candidateResultSet];
  if (candidateResultSet && (v4 = candidateResultSet, -[TUICandidateView candidateResultSet](self, "candidateResultSet"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 selectedDisambiguationCandidateIndex], v5, v4, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = MEMORY[0x1E696AC88];
    candidateResultSet2 = [(TUICandidateView *)self candidateResultSet];
    v9 = [v8 indexPathForRow:objc_msgSend(candidateResultSet2 inSection:{"selectedDisambiguationCandidateIndex"), 0}];
    disambiguationGrid = [(TUICandidateView *)self disambiguationGrid];
    [disambiguationGrid setSelectedIndexPath:v9];
  }

  else
  {
    disambiguationGrid2 = [(TUICandidateView *)self disambiguationGrid];
    [disambiguationGrid2 setSelectedIndexPath:0];

    candidateResultSet2 = [(TUICandidateView *)self disambiguationGrid];
    [candidateResultSet2 scrollToFirstCandidate];
  }
}

- (void)reloadDisambiguationGridDataIfNeeded
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69D95E0]);
  v4 = MEMORY[0x1E695DFB8];
  candidateResultSet = [(TUICandidateView *)self candidateResultSet];
  disambiguationCandidates = [candidateResultSet disambiguationCandidates];
  v7 = [v4 orderedSetWithArray:disambiguationCandidates];
  v8 = [v3 initWithTitle:&stru_1F03BA8F8 candidates:v7];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  disambiguationGrid = [(TUICandidateView *)self disambiguationGrid];
  [disambiguationGrid setCandidateGroups:v9];

  [(TUICandidateView *)self updateDisambiguationSelectionIndex];
}

- (BOOL)reloadPrimaryGridDataIfNeeded
{
  candidateGroupsForCurrentState = [(TUICandidateView *)self candidateGroupsForCurrentState];
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  candidateGroups = [primaryGrid candidateGroups];
  v6 = [candidateGroups isEqual:candidateGroupsForCurrentState];

  if ((v6 & 1) == 0)
  {
    candidateGroupsForCurrentState2 = [(TUICandidateView *)self candidateGroupsForCurrentState];
    primaryGrid2 = [(TUICandidateView *)self primaryGrid];
    [primaryGrid2 setCandidateGroups:candidateGroupsForCurrentState2];
  }

  return v6 ^ 1;
}

- (void)updateCornerRadiusAfterFinalizingLayout:(BOOL)layout
{
  layoutCopy = layout;
  _inheritedRenderConfig = [(TUICandidateView *)self _inheritedRenderConfig];
  if (![_inheritedRenderConfig colorAdaptiveBackground])
  {
    goto LABEL_6;
  }

  state = [(TUICandidateView *)self state];
  style = [state style];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_6:
    goto LABEL_7;
  }

  state2 = [(TUICandidateView *)self state];
  style2 = [state2 style];
  v10 = [style2 performSelector:sel_backgroundMaterial];

  if (v10)
  {
    state3 = [(TUICandidateView *)self state];
    style3 = [state3 style];
    [style3 cornerRadius];
    v13 = v12;
    clipsToBoundsView = [(TUICandidateView *)self clipsToBoundsView];
    [clipsToBoundsView _setCornerRadius:v13];
    goto LABEL_32;
  }

LABEL_7:
  state4 = [(TUICandidateView *)self state];
  style4 = [state4 style];
  if ([style4 doNotClipToBounds])
  {
    state5 = [(TUICandidateView *)self state];
    hasBackdrop = [state5 hasBackdrop];

    if (hasBackdrop)
    {
      state3 = [(TUICandidateView *)self backdropView];
      clipsToBoundsView2 = [(TUICandidateView *)self clipsToBoundsView];
      goto LABEL_12;
    }
  }

  else
  {
  }

  state3 = [(TUICandidateView *)self clipsToBoundsView];
  clipsToBoundsView2 = [(TUICandidateView *)self backdropView];
LABEL_12:
  style3 = clipsToBoundsView2;
  [clipsToBoundsView2 _setContinuousCornerRadius:0.0];
  layer = [style3 layer];
  [layer setMaskedCorners:15];

  state6 = [(TUICandidateView *)self state];
  style5 = [state6 style];
  [style5 cornerRadius];
  [state3 _setContinuousCornerRadius:?];

  state7 = [(TUICandidateView *)self state];
  style6 = [state7 style];
  maskedCorners = [style6 maskedCorners];
  layer2 = [state3 layer];
  [layer2 setMaskedCorners:maskedCorners];

  state8 = [(TUICandidateView *)self state];
  style7 = [state8 style];
  LOBYTE(maskedCorners) = objc_opt_respondsToSelector();

  if (maskedCorners)
  {
    state9 = [(TUICandidateView *)self state];
    style8 = [state9 style];
    [style8 borderWidth];
    v32 = v31;
    layer3 = [state3 layer];
    [layer3 setBorderWidth:v32];
  }

  state10 = [(TUICandidateView *)self state];
  style9 = [state10 style];
  v36 = objc_opt_respondsToSelector();

  if (v36)
  {
    state11 = [(TUICandidateView *)self state];
    style10 = [state11 style];
    borderColor = [style10 borderColor];
    cGColor = [borderColor CGColor];
    layer4 = [state3 layer];
    [layer4 setBorderColor:cGColor];
  }

  roundedBorderLayer = [(TUICandidateView *)self roundedBorderLayer];
  [roundedBorderLayer removeFromSuperlayer];

  state12 = [(TUICandidateView *)self state];
  style11 = [state12 style];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_23;
  }

  state13 = [(TUICandidateView *)self state];
  style12 = [state13 style];
  v47 = [style12 performSelector:sel_roundsArrowButtonEdge];

  if (!v47)
  {
LABEL_23:
    clipsToBoundsView = [state3 layer];
    [clipsToBoundsView setMask:0];
    goto LABEL_32;
  }

  state14 = [(TUICandidateView *)self state];
  arrowButtonPosition = [state14 arrowButtonPosition];

  state15 = [(TUICandidateView *)self state];
  arrowButtonPosition2 = [state15 arrowButtonPosition];

  [state3 bounds];
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  if (arrowButtonPosition2 && layoutCopy)
  {
    [state3 bounds];
    v61 = v60 * 0.5;
    effectiveCandidateArrowButonPosition = [(TUICandidateView *)self effectiveCandidateArrowButonPosition];
    arrowButton = [(TUICandidateView *)self arrowButton];
    v64 = arrowButton;
    if (effectiveCandidateArrowButonPosition == 5)
    {
      [arrowButton setArrowImageOffset:{v61 * 0.25, 0.0}];

      arrowButton2 = [(TUICandidateView *)self arrowButton];
      [arrowButton2 arrowImageOffset];
      v67 = v53 + v66;
      arrowButton3 = [(TUICandidateView *)self arrowButton];
      [arrowButton3 arrowImageOffset];
      v70 = v57 - v69;
      arrowButton4 = [(TUICandidateView *)self arrowButton];
      [arrowButton4 arrowImageOffset];
      v73 = v59 + v72;

      v74 = MEMORY[0x1E69DC728];
      state16 = [(TUICandidateView *)self state];
      style13 = [state16 style];
      [style13 cornerRadius];
      v78 = v77;
      state17 = [(TUICandidateView *)self state];
      style14 = [state17 style];
      [style14 cornerRadius];
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
      [arrowButton setArrowImageOffset:{v61 * -0.25, 0.0}];

      arrowButton5 = [(TUICandidateView *)self arrowButton];
      [arrowButton5 arrowImageOffset];
      v108 = v57 + v107;
      arrowButton6 = [(TUICandidateView *)self arrowButton];
      [arrowButton6 arrowImageOffset];
      v111 = v59 + v110;

      v112 = MEMORY[0x1E69DC728];
      state16 = [(TUICandidateView *)self state];
      style13 = [state16 style];
      [style13 cornerRadius];
      v114 = v113;
      state17 = [(TUICandidateView *)self state];
      style14 = [state17 style];
      [style14 cornerRadius];
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

    clipsToBoundsView = [v83 _bezierPathRect:v84 topLeftRadius:v85 topRightRadius:v86 bottomRightRadius:v87 bottomLeftRadius:{v88, v89, v82, v90}];

    arrowButton7 = [(TUICandidateView *)self arrowButton];
    [arrowButton7 layoutSubviews];

    arrowButton9 = objc_alloc_init(MEMORY[0x1E69794A0]);
    [arrowButton9 setPath:{objc_msgSend(clipsToBoundsView, "CGPath")}];
    layer5 = [state3 layer];
    [layer5 setMask:arrowButton9];

    arrowButton8 = [(TUICandidateView *)self arrowButton];
    layer6 = [arrowButton8 layer];
    [layer6 setHidden:0];

    goto LABEL_30;
  }

  if (arrowButtonPosition && !layoutCopy)
  {
    v91 = MEMORY[0x1E69DC728];
    state18 = [(TUICandidateView *)self state];
    style15 = [state18 style];
    [style15 cornerRadius];
    v95 = v94;
    state19 = [(TUICandidateView *)self state];
    style16 = [state19 style];
    [style16 cornerRadius];
    clipsToBoundsView = [v91 _bezierPathRect:v53 topLeftRadius:v55 topRightRadius:v57 bottomRightRadius:v59 bottomLeftRadius:{v95, v98, 0.0, 0.0}];

    layer7 = [state3 layer];
    [layer7 setMask:0];

    arrowButton9 = [(TUICandidateView *)self arrowButton];
    arrowButton8 = [arrowButton9 layer];
    [arrowButton8 setHidden:1];
LABEL_30:

    goto LABEL_31;
  }

  state20 = [(TUICandidateView *)self state];
  style17 = [state20 style];
  [style17 cornerRadius];
  v105 = v104;

  clipsToBoundsView = [MEMORY[0x1E69DC728] _bezierPathRect:v53 topLeftRadius:v55 topRightRadius:v57 bottomRightRadius:v59 bottomLeftRadius:{v105, v105, v105, v105}];
  arrowButton9 = [state3 layer];
  [arrowButton9 setMask:0];
LABEL_31:

  layer8 = [state3 layer];
  [layer8 setBorderWidth:0.0];

  cGPath = [clipsToBoundsView CGPath];
  roundedBorderLayer2 = [(TUICandidateView *)self roundedBorderLayer];
  [roundedBorderLayer2 setPath:cGPath];

  roundedBorderLayer3 = [(TUICandidateView *)self roundedBorderLayer];
  [roundedBorderLayer3 setLineWidth:1.3];

  state21 = [(TUICandidateView *)self state];
  style18 = [state21 style];
  lineColor = [style18 lineColor];
  cGColor2 = [lineColor CGColor];
  roundedBorderLayer4 = [(TUICandidateView *)self roundedBorderLayer];
  [roundedBorderLayer4 setStrokeColor:cGColor2];

  v128 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
  cGColor3 = [v128 CGColor];
  roundedBorderLayer5 = [(TUICandidateView *)self roundedBorderLayer];
  [roundedBorderLayer5 setFillColor:cGColor3];

  layer9 = [state3 layer];
  roundedBorderLayer6 = [(TUICandidateView *)self roundedBorderLayer];
  [layer9 addSublayer:roundedBorderLayer6];

  arrowButton10 = [(TUICandidateView *)self arrowButton];
  contentView = [arrowButton10 contentView];
  [contentView setHidden:0];

LABEL_32:
}

- (void)resetSortControlIndex
{
  sortControl = [(TUICandidateView *)self sortControl];
  [sortControl setSelectedIndex:0];
}

- (int64_t)selectedSortControlIndex
{
  sortControl = [(TUICandidateView *)self sortControl];
  if (!sortControl)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = sortControl;
  sortControl2 = [(TUICandidateView *)self sortControl];
  isHidden = [sortControl2 isHidden];

  if (isHidden)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  sortControl3 = [(TUICandidateView *)self sortControl];
  selectedIndex = [sortControl3 selectedIndex];

  return selectedIndex;
}

- (void)updateSortControlTitlesIfNeeded
{
  state = [(TUICandidateView *)self state];
  if ([state sortControlPosition])
  {
    state2 = [(TUICandidateView *)self state];
    sortControlPosition = [state2 sortControlPosition];

    if (sortControlPosition == 5)
    {
      return;
    }

    state = [(TUICandidateView *)self sortControlTitles];
    sortControl = [(TUICandidateView *)self sortControl];
    [sortControl setTitles:state];
  }
}

- (void)reloadGridsIfNeeded
{
  if ([(TUICandidateView *)self reloadPrimaryGridDataIfNeeded])
  {
    primaryGrid = [(TUICandidateView *)self primaryGrid];
    [primaryGrid scrollToFirstCandidate];
  }

  [(TUICandidateView *)self reloadDisambiguationGridDataIfNeeded];

  [(TUICandidateView *)self updateSortControlTitlesIfNeeded];
}

- (void)setCandidateResultSet:(id)set
{
  setCopy = set;
  v6 = setCopy;
  if (self->_candidateResultSet != setCopy)
  {
    v7 = setCopy;
    objc_storeStrong(&self->_candidateResultSet, set);
    setCopy = [(TUICandidateView *)self changingLayout];
    v6 = v7;
    if ((setCopy & 1) == 0)
    {
      setCopy = [(TUICandidateView *)self reloadGridsIfNeeded];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](setCopy, v6);
}

- (void)setState:(id)state animated:(BOOL)animated animator:(id)animator options:(unint64_t)options force:(BOOL)force completion:(id)completion
{
  animatedCopy = animated;
  stateCopy = state;
  animatorCopy = animator;
  completionCopy = completion;
  state = self->_state;
  if (state != stateCopy || force || animatedCopy)
  {
    primaryGridRowType = [(TUICandidateViewState *)state primaryGridRowType];
    v20 = primaryGridRowType != [(TUICandidateViewState *)stateCopy primaryGridRowType];
    objc_storeStrong(&self->_state, state);
    [(TUICandidateView *)self prepareForLayoutChange:v20];
    if (animatedCopy)
    {
      [(TUICandidateView *)self layoutIfNeeded];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __72__TUICandidateView_setState_animated_animator_options_force_completion___block_invoke;
      v24[3] = &unk_1E72D83A0;
      v24[4] = self;
      [animatorCopy addAnimations:v24];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __72__TUICandidateView_setState_animated_animator_options_force_completion___block_invoke_2;
      v23[3] = &unk_1E72D84D8;
      v23[4] = self;
      [animatorCopy addCompletion:v23];
      [(TUICandidateView *)self updatePrimaryGridRowTypeWithOptions:options animated:1 animator:animatorCopy completion:&__block_literal_global_43];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __72__TUICandidateView_setState_animated_animator_options_force_completion___block_invoke_4;
      v21[3] = &unk_1E72D2AF8;
      v21[4] = self;
      v22 = completionCopy;
      [animatorCopy addCompletion:v21];
    }

    else
    {
      [(TUICandidateView *)self changeLayoutInsideAnimationBlock];
      [(TUICandidateView *)self updatePrimaryGridRowTypeWithOptions:options animated:0 animator:0 completion:0];
      [(TUICandidateView *)self finalizeLayoutChange];
      if (completionCopy)
      {
        (*(completionCopy + 2))(completionCopy, 1);
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

- (void)setState:(id)state animated:(BOOL)animated options:(unint64_t)options force:(BOOL)force completion:(id)completion
{
  forceCopy = force;
  if (animated)
  {
    v11 = MEMORY[0x1E69DD278];
    completionCopy = completion;
    stateCopy = state;
    stateCopy2 = [[v11 alloc] initWithDuration:(options >> 16) & 7 curve:&__block_literal_global_1748 animations:0.25];
    [(TUICandidateView *)self setState:stateCopy animated:1 animator:stateCopy2 options:options force:forceCopy completion:completionCopy];

    [stateCopy2 startAnimation];
  }

  else
  {
    completionCopy2 = completion;
    stateCopy2 = state;
    [TUICandidateView setState:"setState:animated:animator:options:force:completion:" animated:? animator:? options:? force:? completion:?];
  }
}

- (void)finalizeLayoutChange
{
  state = [(TUICandidateView *)self state];
  if (([state hasBackdrop] & 1) == 0)
  {
    backdropView = [(TUICandidateView *)self backdropView];
    [backdropView setHidden:1];
  }

  effectiveCandidateArrowButonPosition = [(TUICandidateView *)self effectiveCandidateArrowButonPosition];
  if (![state arrowButtonPosition])
  {
    [(TUICandidateView *)self setShouldShowArrowButton:0];
    [(TUICandidateView *)self updateArrowButtonVisibility];
    goto LABEL_10;
  }

  if ((effectiveCandidateArrowButonPosition & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    clipsToBoundsView = [(TUICandidateView *)self clipsToBoundsView];
    arrowButton = [(TUICandidateView *)self arrowButton];
    [clipsToBoundsView addSubview:arrowButton];
  }

  else
  {
    if (effectiveCandidateArrowButonPosition != 2)
    {
      goto LABEL_10;
    }

    clipsToBoundsView = [(TUICandidateView *)self arrowButton];
    [(TUICandidateView *)self addSubview:clipsToBoundsView];
  }

LABEL_10:
  if (![state inlineTextViewPosition])
  {
    inlineTextView = [(TUICandidateView *)self inlineTextView];
    [inlineTextView setHidden:1];
  }

  if (![state sortControlPosition])
  {
    sortControl = [(TUICandidateView *)self sortControl];
    [sortControl setHidden:1];

    goto LABEL_16;
  }

  if ([state sortControlPosition] == 5)
  {
LABEL_16:
    [(TUICandidateView *)self setShowingSortControl:0];
  }

  [(TUICandidateView *)self updateCornerRadiusAfterFinalizingLayout:1];
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  [primaryGrid setSuppressCollectionViewLayout:0];

  [(TUICandidateView *)self setChangingLayout:0];
}

- (void)updatePrimaryGridRowTypeWithOptions:(unint64_t)options animated:(BOOL)animated animator:(id)animator completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  animatorCopy = animator;
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  state = [(TUICandidateView *)self state];
  primaryGridRowType = [state primaryGridRowType];
  state2 = [(TUICandidateView *)self state];
  style = [state2 style];
  [primaryGrid setRowType:primaryGridRowType options:options style:style animated:animatedCopy animator:animatorCopy completion:completionCopy];
}

- (void)changeLayoutInsideAnimationBlock
{
  state = [(TUICandidateView *)self state];
  [(TUICandidateView *)self boundsForClipsToBoundsViewWithState:state];
  v305 = v4;
  v6 = v5;
  v312 = v7;
  v309 = v8;
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  [primaryGrid bounds];
  v304 = v10;
  v12 = v11;
  v14 = v13;
  rect = v15;

  sortControl = [(TUICandidateView *)self sortControl];
  [sortControl frame];
  v306 = v17;
  v307 = v18;
  v20 = v19;
  v22 = v21;

  state2 = [(TUICandidateView *)self state];
  style = [state2 style];
  v25 = objc_opt_respondsToSelector();

  if (v25)
  {
    state3 = [(TUICandidateView *)self state];
    style2 = [state3 style];
    shouldUpdateCollectionViewWidthForArrowButtonVisibility = [style2 shouldUpdateCollectionViewWidthForArrowButtonVisibility];
  }

  else
  {
    shouldUpdateCollectionViewWidthForArrowButtonVisibility = 0;
  }

  showingAutofillCandidate = [(TUICandidateView *)self showingAutofillCandidate];
  v30 = 0.0;
  if (!showingAutofillCandidate && (shouldUpdateCollectionViewWidthForArrowButtonVisibility & 1) == 0)
  {
    [(TUICandidateView *)self arrowButtonWidth];
  }

  v299 = v30;
  backdropView = [(TUICandidateView *)self backdropView];
  [backdropView setFrame:{0.0, 0.0, v312, v309}];

  style3 = [state style];
  backdropView2 = [(TUICandidateView *)self backdropView];
  [backdropView2 setStyle:style3];

  style4 = [state style];
  LODWORD(backdropView2) = [style4 doNotClipToBounds];

  if (backdropView2)
  {
    clipsToBoundsView = [(TUICandidateView *)self clipsToBoundsView];
    style5 = [state style];
    [clipsToBoundsView _setShowsLinesOnEdges:0 style:style5];

    [(TUICandidateView *)self backdropView];
  }

  else
  {
    backdropView3 = [(TUICandidateView *)self backdropView];
    style6 = [state style];
    [backdropView3 _setShowsLinesOnEdges:0 style:style6];

    [(TUICandidateView *)self clipsToBoundsView];
  }
  v39 = ;
  borders = [state borders];
  style7 = [state style];
  [v39 _setShowsLinesOnEdges:borders style:style7];

  effectiveCandidateArrowButonPosition = [(TUICandidateView *)self effectiveCandidateArrowButonPosition];
  style8 = [state style];
  sortControl2 = [(TUICandidateView *)self sortControl];
  [sortControl2 setStyle:style8];

  if ([state sortControlPosition] == 1)
  {
    sortControl3 = [(TUICandidateView *)self sortControl];
    [sortControl3 setAlpha:1.0];

    v46 = 0.0;
    v306 = 0.0;
    if (effectiveCandidateArrowButonPosition == 1)
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

  if ([state sortControlPosition] == 2)
  {
    sortControl4 = [(TUICandidateView *)self sortControl];
    [sortControl4 setAlpha:1.0];

    [(TUICandidateView *)self sortControlHeight];
    v51 = v50;
    v52 = 0.0;
    v306 = 0.0;
    if (effectiveCandidateArrowButonPosition == 3)
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

  if ([state sortControlPosition] != 3)
  {
    v303 = v22;
    if ([state sortControlPosition] == 4)
    {
      state4 = [(TUICandidateView *)self state];
      arrowButtonPosition = [state4 arrowButtonPosition];

      if (arrowButtonPosition == 5)
      {
        v63 = v299 + 0.0;
        v64 = v312 - (v299 + 0.0);
      }

      else
      {
        state5 = [(TUICandidateView *)self state];
        style9 = [state5 style];
        sortControl2 = [style9 arrowButtonBackgroundHidden];

        v63 = 0.0;
        v64 = v312 - (v299 + 0.0);
        if (!sortControl2)
        {
          v64 = v312;
        }
      }

      v308 = v64;
      sortControl5 = [(TUICandidateView *)self sortControl];
      [sortControl5 setAlpha:1.0];

      v311 = 0.0;
      goto LABEL_38;
    }

    sortControl6 = [(TUICandidateView *)self sortControl];
    [sortControl6 setAlpha:0.0];

    sortControlPosition = [state sortControlPosition];
    v67 = v307;
    if (sortControlPosition == 5)
    {
      v67 = v312;
    }

    v307 = v67;
    if (sortControlPosition == 5)
    {
      v20 = v309;
    }

    state6 = [(TUICandidateView *)self state];
    sortControl2 = [state6 arrowButtonPosition];

    if (sortControl2 == 5)
    {
      v311 = 0.0;
      v63 = v299 + 0.0;
      v308 = v312 - (v299 + 0.0);
LABEL_38:
      v310 = v309;
      goto LABEL_47;
    }

    state7 = [(TUICandidateView *)self state];
    sortControl2 = [state7 style];
    if ([sortControl2 arrowButtonBackgroundHidden])
    {
      state8 = [(TUICandidateView *)self state];
      style10 = [state8 style];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {

LABEL_122:
        v311 = 0.0;
        v308 = v312 - (v299 + 0.0);
        primaryGrid2 = [(TUICandidateView *)self primaryGrid];
        [primaryGrid2 arrowButtonSize];
        v295 = v294;
        primaryGrid3 = [(TUICandidateView *)self primaryGrid];
        [primaryGrid3 setArrowButtonSize:{0.0, v295}];

        v310 = v309;
        goto LABEL_46;
      }

      state9 = [(TUICandidateView *)self state];
      style11 = [state9 style];
      shouldUpdateCollectionViewWidthForArrowButtonVisibility2 = [style11 shouldUpdateCollectionViewWidthForArrowButtonVisibility];

      v311 = 0.0;
      if ((shouldUpdateCollectionViewWidthForArrowButtonVisibility2 & 1) == 0)
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

  sortControl7 = [(TUICandidateView *)self sortControl];
  [sortControl7 setAlpha:1.0];

  showingSortControl = [(TUICandidateView *)self showingSortControl];
  v57 = 0.0;
  v306 = 0.0;
  if (showingSortControl)
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
  if ([state inlineTextViewPosition] == 1)
  {
    v78 = v14;
    v79 = v12;
    v80 = v6;
    style12 = [state style];
    inlineTextView = [(TUICandidateView *)self inlineTextView];
    [inlineTextView setStyle:style12];

    [(TUICandidateView *)self arrowButtonWidth];
    v84 = v312 - v83;
    [(TUICandidateView *)self inlineTextHeight];
    v86 = v85;
    v87 = 0.0;
    if ([state sortControlPosition] == 1)
    {
      v317.origin.x = 0.0;
      v317.origin.y = 0.0;
      v317.size.width = v84;
      v317.size.height = v86;
      v87 = CGRectGetHeight(v317) + 0.0;
    }

    inlineTextView2 = [(TUICandidateView *)self inlineTextView];
    [inlineTextView2 setAlpha:1.0];

    inlineTextView3 = [(TUICandidateView *)self inlineTextView];
    [inlineTextView3 setFrame:{0.0, v87, v84, v86}];

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
    inlineTextView4 = [(TUICandidateView *)self inlineTextView];
    [inlineTextView4 setAlpha:0.0];
  }

  if ([state inlineTextViewPosition] == 1)
  {
    goto LABEL_53;
  }

  style13 = [state style];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_62:
    arrowButton = [(TUICandidateView *)self arrowButton];
    [arrowButton setShowsBackground:1];
    goto LABEL_63;
  }

  style14 = [state style];
  sortControl2 = [style14 arrowButtonBackgroundHidden];

  if (!sortControl2)
  {
    goto LABEL_62;
  }

LABEL_53:
  arrowButton = [(TUICandidateView *)self _inheritedRenderConfig];
  colorAdaptiveBackground = [arrowButton colorAdaptiveBackground];
  if (colorAdaptiveBackground)
  {
    sortControl2 = [MEMORY[0x1E69DCBE0] activeInstance];
    isMinimized = [sortControl2 isMinimized];
  }

  else
  {
    isMinimized = 0;
  }

  arrowButton2 = [(TUICandidateView *)self arrowButton];
  [arrowButton2 setShowsBackground:isMinimized];

  if (colorAdaptiveBackground)
  {
  }

LABEL_63:

  if ([state disambiguationGridPosition] == 2)
  {
    [(TUICandidateView *)self disambiguationHeight];
    v99 = v98;
    [(TUICandidateView *)self disambiguationHeight];
    v301 = v63 + 0.0;
    v101 = v311 + v100;
    v310 = v310 - (v100 + 0.0);
    disambiguationGrid = [(TUICandidateView *)self disambiguationGrid];
    [disambiguationGrid setFrame:{0.0, v311, v312, v99}];

    [(TUICandidateView *)self disambiguationHeight];
    v104 = v103;
LABEL_67:
    v311 = v101;
    goto LABEL_69;
  }

  v104 = 0.0;
  if ([state disambiguationGridPosition] == 1)
  {
    v301 = v63 + 0.0;
    v101 = v311 + 0.0;
    v308 = v308 + -68.0;
    disambiguationGrid2 = [(TUICandidateView *)self disambiguationGrid];
    [disambiguationGrid2 setFrame:{v312 + -68.0, v311, 68.0, v310}];

    goto LABEL_67;
  }

  v301 = v63;
LABEL_69:
  if (!effectiveCandidateArrowButonPosition)
  {
    [(TUICandidateView *)self setShouldShowArrowButton:0];
    goto LABEL_83;
  }

  [(TUICandidateView *)self setShouldShowArrowButton:1];
  style15 = [state style];
  arrowButton3 = [(TUICandidateView *)self arrowButton];
  [arrowButton3 setStyle:style15];

  arrowButtonDirection = [state arrowButtonDirection];
  arrowButton4 = [(TUICandidateView *)self arrowButton];
  [arrowButton4 setArrowDirection:arrowButtonDirection];

  if (effectiveCandidateArrowButonPosition > 2)
  {
    if (effectiveCandidateArrowButonPosition != 3)
    {
      if (effectiveCandidateArrowButonPosition == 4)
      {
        [(TUICandidateView *)self arrowButtonHeight];
        v175 = v309 - v174;
        [(TUICandidateView *)self arrowButtonHeight];
        v177 = v176;
        arrowButton5 = [(TUICandidateView *)self arrowButton];
        [arrowButton5 setFrame:{0.0, v175, v312, v177}];

        arrowButton6 = [(TUICandidateView *)self arrowButton];
        style16 = [state style];
        [arrowButton6 _setImage:0 onEdges:2 outside:1 style:style16];

        style17 = [state style];
        [style17 cornerRadius];
        v183 = v182;
        arrowButton7 = [(TUICandidateView *)self arrowButton];
        [arrowButton7 _setContinuousCornerRadius:v183];

        arrowButton8 = [(TUICandidateView *)self arrowButton];
        layer = [arrowButton8 layer];
        [layer setMaskedCorners:0];

        arrowButton9 = [(TUICandidateView *)self arrowButton];
        layer2 = [arrowButton9 layer];
        [layer2 setMasksToBounds:0];

        [(TUICandidateView *)self arrowButtonHeight];
        v310 = v310 - v189;
      }

      else if (effectiveCandidateArrowButonPosition == 5)
      {
        v110 = v6;
        [(TUICandidateView *)self arrowButtonWidth];
        v112 = v111;
        [(TUICandidateView *)self arrowButtonHeight];
        v114 = v113;
        arrowButton10 = [(TUICandidateView *)self arrowButton];
        [arrowButton10 setFrame:{0.0, v104, v112, v114}];

        arrowButton11 = [(TUICandidateView *)self arrowButton];
        style18 = [state style];
        arrowButtonSeparatorImage = [style18 arrowButtonSeparatorImage];
        style19 = [state style];
        [arrowButton11 _setImage:arrowButtonSeparatorImage onEdges:8 outside:1 style:style19];

        arrowButton12 = [(TUICandidateView *)self arrowButton];
        [arrowButton12 _setContinuousCornerRadius:0.0];

        arrowButton13 = [(TUICandidateView *)self arrowButton];
        layer3 = [arrowButton13 layer];
        [layer3 setMasksToBounds:0];

        style20 = [state style];
        [style20 cornerRadius];
        v125 = v124;

        style21 = [state style];
        LODWORD(layer3) = [style21 doNotClipToBounds];

        if (layer3)
        {
          state10 = [(TUICandidateView *)self state];
          v128 = [state10 borders] & 2;

          style22 = [state style];
          [style22 cornerRadius];
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
        arrowButton14 = [(TUICandidateView *)self arrowButton];
        contentView = [arrowButton14 contentView];
        style23 = [state style];
        [contentView _setShowsLinesOnEdges:v128 style:style23];

        arrowButton15 = [(TUICandidateView *)self arrowButton];
        contentView2 = [arrowButton15 contentView];
        [contentView2 _setContinuousCornerRadius:v125];

        arrowButton16 = [(TUICandidateView *)self arrowButton];
        contentView3 = [arrowButton16 contentView];
        layer4 = [contentView3 layer];
        [layer4 setMaskedCorners:v132];

        arrowButton17 = [(TUICandidateView *)self arrowButton];
        contentView4 = [arrowButton17 contentView];
        layer5 = [contentView4 layer];
        [layer5 setMasksToBounds:v131];

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
    arrowButton18 = [(TUICandidateView *)self arrowButton];
    v167 = v162;
    v6 = v160;
    v168 = v165;
    v12 = v163;
    [arrowButton18 setFrame:{v157, v159, v167, v168}];

    arrowButton19 = [(TUICandidateView *)self arrowButton];
    style24 = [state style];
    arrowButtonSeparatorImage2 = [style24 arrowButtonSeparatorImage];
    style25 = [state style];
    [arrowButton19 _setImage:arrowButtonSeparatorImage2 onEdges:2 outside:1 style:style25];

    arrowButton20 = [(TUICandidateView *)self arrowButton];
    [arrowButton20 _setContinuousCornerRadius:0.0];

    arrowButton21 = [(TUICandidateView *)self arrowButton];
    layer6 = [arrowButton21 layer];
    [layer6 setMasksToBounds:0];
LABEL_81:

    goto LABEL_83;
  }

  if (effectiveCandidateArrowButonPosition != 1)
  {
    if (effectiveCandidateArrowButonPosition != 2)
    {
      goto LABEL_83;
    }

    [state arrowButtonOffset];
    v134 = v312 + v133;
    [state arrowButtonOffset];
    v136 = v104 + v135;
    [(TUICandidateView *)self arrowButtonWidth];
    v137 = v6;
    v139 = v138;
    [(TUICandidateView *)self arrowButtonHeight];
    v140 = v12;
    v142 = v141;
    arrowButton22 = [(TUICandidateView *)self arrowButton];
    v144 = v139;
    v6 = v137;
    v145 = v142;
    v12 = v140;
    [arrowButton22 setFrame:{v134, v136, v144, v145}];

    arrowButton23 = [(TUICandidateView *)self arrowButton];
    style26 = [state style];
    [arrowButton23 _setImage:0 onEdges:2 outside:1 style:style26];

    style27 = [state style];
    [style27 cornerRadius];
    v150 = v149;
    arrowButton24 = [(TUICandidateView *)self arrowButton];
    [arrowButton24 _setContinuousCornerRadius:v150];

    arrowButton25 = [(TUICandidateView *)self arrowButton];
    layer7 = [arrowButton25 layer];
    [layer7 setMasksToBounds:1];

    arrowButton21 = [(TUICandidateView *)self arrowButton];
    layer6 = [arrowButton21 layer];
    [layer6 setMaskedCorners:1];
    goto LABEL_81;
  }

  v297 = v12;
  v298 = v6;
  [(TUICandidateView *)self arrowButtonWidth];
  v234 = v312 - v233;
  [state arrowButtonOffset];
  v236 = v104 + v235;
  [(TUICandidateView *)self arrowButtonWidth];
  v238 = v237;
  [(TUICandidateView *)self arrowButtonHeight];
  v240 = v239;
  arrowButton26 = [(TUICandidateView *)self arrowButton];
  [arrowButton26 setFrame:{v234, v236, v238, v240}];

  arrowButton27 = [(TUICandidateView *)self arrowButton];
  style28 = [state style];
  arrowButtonSeparatorImage3 = [style28 arrowButtonSeparatorImage];
  style29 = [state style];
  [arrowButton27 _setImage:arrowButtonSeparatorImage3 onEdges:2 outside:1 style:style29];

  arrowButton28 = [(TUICandidateView *)self arrowButton];
  [arrowButton28 _setContinuousCornerRadius:0.0];

  arrowButton29 = [(TUICandidateView *)self arrowButton];
  layer8 = [arrowButton29 layer];
  [layer8 setMasksToBounds:0];

  style30 = [state style];
  [style30 cornerRadius];
  v251 = v250;

  style31 = [state style];
  LODWORD(layer8) = [style31 doNotClipToBounds];

  if (layer8)
  {
    state11 = [(TUICandidateView *)self state];
    v254 = [state11 borders] & 8;

    style32 = [state style];
    [style32 cornerRadius];
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
  arrowButton30 = [(TUICandidateView *)self arrowButton];
  contentView5 = [arrowButton30 contentView];
  style33 = [state style];
  [contentView5 _setShowsLinesOnEdges:v254 style:style33];

  arrowButton31 = [(TUICandidateView *)self arrowButton];
  contentView6 = [arrowButton31 contentView];
  [contentView6 _setContinuousCornerRadius:v251];

  arrowButton32 = [(TUICandidateView *)self arrowButton];
  contentView7 = [arrowButton32 contentView];
  layer9 = [contentView7 layer];
  [layer9 setMaskedCorners:v258];

  arrowButton33 = [(TUICandidateView *)self arrowButton];
  contentView8 = [arrowButton33 contentView];
  layer10 = [contentView8 layer];
  [layer10 setMasksToBounds:v257];

  [(TUICandidateView *)self bounds];
  v270 = v308;
  if (v308 >= v271)
  {
    v270 = v308 - v299;
  }

  v308 = v270;
  _inheritedRenderConfig = [(TUICandidateView *)self _inheritedRenderConfig];
  colorAdaptiveBackground2 = [_inheritedRenderConfig colorAdaptiveBackground];
  if (colorAdaptiveBackground2)
  {
    contentView8 = [MEMORY[0x1E69DCBE0] activeInstance];
    isMinimized2 = [contentView8 isMinimized];
  }

  else
  {
    isMinimized2 = 0;
  }

  arrowButton34 = [(TUICandidateView *)self arrowButton];
  [arrowButton34 setShowsBackground:isMinimized2];

  if (colorAdaptiveBackground2)
  {
  }

  arrowButton35 = [(TUICandidateView *)self arrowButton];
  _allLines = [arrowButton35 _allLines];
  firstObject = [_allLines firstObject];

  subviews = [firstObject subviews];
  firstObject2 = [subviews firstObject];

  [firstObject2 frame];
  _inheritedRenderConfig2 = [(TUICandidateView *)self _inheritedRenderConfig];
  [_inheritedRenderConfig2 colorAdaptiveBackground];
  UIRectInset();
  [firstObject2 setFrame:?];

  v12 = v297;
  v6 = v298;
LABEL_84:
  if ([state sortControlPosition] == 4)
  {
    v191 = v308;
  }

  else
  {
    v191 = v307;
  }

  sortControl8 = [(TUICandidateView *)self sortControl];
  [sortControl8 frame];
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
    sortControl9 = [(TUICandidateView *)self sortControl];
    [sortControl9 setFrame:{v306, v190, v191, v303}];
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
    style34 = [state style];
    doNotClipToBounds = [style34 doNotClipToBounds];

    if (doNotClipToBounds)
    {
      primaryGrid4 = [(TUICandidateView *)self primaryGrid];
      [primaryGrid4 setSuppressCollectionViewLayout:1];
    }

    v196[2](v196);
    primaryGrid5 = [(TUICandidateView *)self primaryGrid];
    [primaryGrid5 layoutIfNeeded];
  }

  else
  {
    primaryGrid6 = [(TUICandidateView *)self primaryGrid];
    [primaryGrid6 setOrigin:{v301, v311}];

    v203 = MEMORY[0x1E69DD250];
    v313[0] = MEMORY[0x1E69E9820];
    v313[1] = 3221225472;
    v313[2] = __52__TUICandidateView_changeLayoutInsideAnimationBlock__block_invoke_3;
    v313[3] = &unk_1E72D77D8;
    v313[4] = self;
    v314 = v196;
    [v203 performWithoutAnimation:v313];
    primaryGrid5 = v314;
  }

  [(TUICandidateView *)self updateArrowButtonVisibility];
  style35 = [state style];
  leftEdgeSeparatorImage = [style35 leftEdgeSeparatorImage];
  style36 = [state style];
  [(UIView *)self _setImage:leftEdgeSeparatorImage onEdges:2 outside:0 style:style36];

  style37 = [state style];
  rightEdgeSeparatorImage = [style37 rightEdgeSeparatorImage];
  style38 = [state style];
  [(UIView *)self _setImage:rightEdgeSeparatorImage onEdges:8 outside:0 style:style38];

  clipsToBoundsView2 = [(TUICandidateView *)self clipsToBoundsView];
  [clipsToBoundsView2 setFrame:{v305, v6, v312, v309}];

  style39 = [state style];
  backgroundColor = [style39 backgroundColor];
  clipsToBoundsView3 = [(TUICandidateView *)self clipsToBoundsView];
  [clipsToBoundsView3 setBackgroundColor:backgroundColor];

  _inheritedRenderConfig3 = [(TUICandidateView *)self _inheritedRenderConfig];
  if ([_inheritedRenderConfig3 colorAdaptiveBackground])
  {
    state12 = [(TUICandidateView *)self state];
    style40 = [state12 style];
    if (objc_opt_respondsToSelector())
    {
      state13 = [(TUICandidateView *)self state];
      style41 = [state13 style];
      v223 = [style41 performSelector:sel_backgroundMaterial];

      if (!v223)
      {
        goto LABEL_105;
      }

      state14 = [(TUICandidateView *)self state];
      style42 = [state14 style];
      _inheritedRenderConfig3 = [style42 performSelector:sel_backgroundMaterial];

      clipsToBoundsView4 = [(TUICandidateView *)self clipsToBoundsView];
      [clipsToBoundsView4 _setBackground:_inheritedRenderConfig3];

      state12 = [(TUICandidateView *)self clipsToBoundsView];
      [state12 setClipsToBounds:1];
    }

    else
    {
    }
  }

LABEL_105:
  clipsToBoundsView5 = [(TUICandidateView *)self clipsToBoundsView];
  layer11 = [clipsToBoundsView5 layer];
  [layer11 setMask:0];

  state15 = [(TUICandidateView *)self state];
  style43 = [state15 style];
  [style43 cornerRadius];
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
  primaryGrid = [(TUICandidateView *)self primaryGrid];
  candidateGroups = [primaryGrid candidateGroups];
  firstObject = [candidateGroups firstObject];
  candidates = [firstObject candidates];

  v6 = [candidates countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(candidates);
        }

        if ([*(*(&v10 + 1) + 8 * i) isAutofillExtraCandidate])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [candidates countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)prepareForLayoutChange:(BOOL)change
{
  changeCopy = change;
  v146[1] = *MEMORY[0x1E69E9840];
  [(TUICandidateView *)self setChangingLayout:1];
  state = [(TUICandidateView *)self state];
  style = [state style];
  doNotClipToBounds = [style doNotClipToBounds];
  clipsToBoundsView = [(TUICandidateView *)self clipsToBoundsView];
  [clipsToBoundsView setClipsToBounds:doNotClipToBounds ^ 1u];

  [(TUICandidateView *)self boundsForClipsToBoundsViewWithState:state];
  v10 = v9;
  if ([state hasBackdrop])
  {
    backdropView = [(TUICandidateView *)self backdropView];

    if (!backdropView)
    {
      v12 = [TUICandidateBackdropView alloc];
      [(TUICandidateView *)self bounds];
      v13 = [(TUICandidateBackdropView *)v12 initWithFrame:?];
      [(TUICandidateView *)self setBackdropView:v13];

      style2 = [state style];
      backdropView2 = [(TUICandidateView *)self backdropView];
      [backdropView2 setStyle:style2];

      backdropView3 = [(TUICandidateView *)self backdropView];
      [backdropView3 setDelegate:self];

      clipsToBoundsView2 = [(TUICandidateView *)self clipsToBoundsView];
      backdropView4 = [(TUICandidateView *)self backdropView];
      [clipsToBoundsView2 insertSubview:backdropView4 atIndex:0];
    }

    style3 = [state style];
    doNotClipToBounds2 = [style3 doNotClipToBounds];
    backdropView5 = [(TUICandidateView *)self backdropView];
    [backdropView5 setClipsToBounds:doNotClipToBounds2];

    backdropView6 = [(TUICandidateView *)self backdropView];
    [backdropView6 setHidden:0];
  }

  if ([state inlineTextViewPosition])
  {
    inlineTextView = [(TUICandidateView *)self inlineTextView];

    if (!inlineTextView)
    {
      v24 = [TUICandidateInlineTextView alloc];
      [(TUICandidateView *)self bounds];
      v25 = [(TUICandidateInlineTextView *)v24 initWithFrame:?];
      [(TUICandidateView *)self setInlineTextView:v25];

      clipsToBoundsView3 = [(TUICandidateView *)self clipsToBoundsView];
      inlineTextView2 = [(TUICandidateView *)self inlineTextView];
      primaryGrid = [(TUICandidateView *)self primaryGrid];
      [clipsToBoundsView3 insertSubview:inlineTextView2 belowSubview:primaryGrid];

      v29 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapInlineText_];
      inlineTextView3 = [(TUICandidateView *)self inlineTextView];
      [inlineTextView3 addGestureRecognizer:v29];

      inlineTextView4 = [(TUICandidateView *)self inlineTextView];
      [inlineTextView4 setHidden:1];
    }

    inlineTextView5 = [(TUICandidateView *)self inlineTextView];
    isHidden = [inlineTextView5 isHidden];

    if (isHidden)
    {
      inlineTextView6 = [(TUICandidateView *)self inlineTextView];
      [inlineTextView6 setHidden:0];

      inlineTextView7 = [(TUICandidateView *)self inlineTextView];
      [inlineTextView7 setAlpha:0.0];
    }

    inlineText = [(TUICandidateView *)self inlineText];
    inlineTextView8 = [(TUICandidateView *)self inlineTextView];
    [inlineTextView8 setText:inlineText];
  }

  disambiguationGrid = [(TUICandidateView *)self disambiguationGrid];

  if (!disambiguationGrid)
  {
    v39 = [TUICandidateGrid alloc];
    [(TUICandidateView *)self disambiguationHeight];
    v41 = [(TUICandidateGrid *)v39 initWithFrame:0.0, 0.0, v10, v40];
    [(TUICandidateView *)self setDisambiguationGrid:v41];

    disambiguationGrid2 = [(TUICandidateView *)self disambiguationGrid];
    [disambiguationGrid2 setDelegate:self];
  }

  if ([state disambiguationGridPosition])
  {
    clipsToBoundsView4 = [(TUICandidateView *)self clipsToBoundsView];
    disambiguationGrid3 = [(TUICandidateView *)self disambiguationGrid];
    primaryGrid2 = [(TUICandidateView *)self primaryGrid];
    [clipsToBoundsView4 insertSubview:disambiguationGrid3 aboveSubview:primaryGrid2];

    disambiguationStyle = [state disambiguationStyle];
    disambiguationGrid4 = [(TUICandidateView *)self disambiguationGrid];
    [disambiguationGrid4 setStyle:disambiguationStyle];

    disambiguationGridRowType = [state disambiguationGridRowType];
    disambiguationGrid5 = [(TUICandidateView *)self disambiguationGrid];
    [disambiguationGrid5 setRowType:disambiguationGridRowType];

    v50 = objc_alloc(MEMORY[0x1E69D95E0]);
    v51 = MEMORY[0x1E695DFB8];
    candidateResultSet = [(TUICandidateView *)self candidateResultSet];
    disambiguationCandidates = [candidateResultSet disambiguationCandidates];
    v54 = [v51 orderedSetWithArray:disambiguationCandidates];
    v55 = [v50 initWithTitle:&stru_1F03BA8F8 candidates:v54];
    v146[0] = v55;
    v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:v146 count:1];
    disambiguationGrid6 = [(TUICandidateView *)self disambiguationGrid];
    [disambiguationGrid6 setCandidateGroups:v56];

    [(TUICandidateView *)self updateDisambiguationSelectionIndex];
    disambiguationGrid7 = [(TUICandidateView *)self disambiguationGrid];
    [disambiguationGrid7 setHidden:0];
  }

  if ([state disambiguationGridPosition] == 2)
  {
    if ([state inlineTextViewPosition] == 1)
    {
      v59 = 5;
    }

    else
    {
      v59 = 4;
    }

    disambiguationGrid8 = [(TUICandidateView *)self disambiguationGrid];
    style4 = [disambiguationGrid8 style];
    if (objc_opt_respondsToSelector())
    {
      disambiguationGrid9 = [(TUICandidateView *)self disambiguationGrid];
      style5 = [disambiguationGrid9 style];
      hideLinesOnDisambiguationGridEdges = [style5 hideLinesOnDisambiguationGridEdges];

      if (hideLinesOnDisambiguationGridEdges)
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
    disambiguationGridPosition = [state disambiguationGridPosition];
    disambiguationGrid10 = [(TUICandidateView *)self disambiguationGrid];
    v67 = disambiguationGrid10;
    if (disambiguationGridPosition == 1)
    {
      style6 = [disambiguationGrid10 style];
      if (objc_opt_respondsToSelector())
      {
        disambiguationGrid11 = [(TUICandidateView *)self disambiguationGrid];
        style7 = [disambiguationGrid11 style];
        hideLinesOnDisambiguationGridEdges2 = [style7 hideLinesOnDisambiguationGridEdges];

        if (hideLinesOnDisambiguationGridEdges2)
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
      [disambiguationGrid10 setHidden:1];

      v59 = 0;
    }
  }

  disambiguationGrid12 = [(TUICandidateView *)self disambiguationGrid];
  style8 = [state style];
  [disambiguationGrid12 _setShowsLinesOnEdges:v59 style:style8];

  if ([state sortControlPosition] && (-[TUICandidateView state](self, "state"), v74 = objc_claimAutoreleasedReturnValue(), v75 = objc_msgSend(v74, "sortControlPosition"), v74, v75 != 5))
  {
    sortControl = [(TUICandidateView *)self sortControl];
    [sortControl setHidden:0];

    [(TUICandidateView *)self updateSortControlTitlesIfNeeded];
  }

  else
  {
    sortControl2 = [(TUICandidateView *)self sortControl];
    [sortControl2 setHidden:1];

    [(TUICandidateView *)self resetSortControlIndex];
  }

  if ([state sortControlPosition] == 4)
  {
    sortControl3 = [(TUICandidateView *)self sortControl];
    superview = [sortControl3 superview];
    clipsToBoundsView5 = [(TUICandidateView *)self clipsToBoundsView];

    if (superview == clipsToBoundsView5)
    {
      sortControl4 = [(TUICandidateView *)self sortControl];
      [sortControl4 removeFromSuperview];
    }

    sortControl5 = [(TUICandidateView *)self sortControl];
    primaryGrid3 = [(TUICandidateView *)self primaryGrid];
    [primaryGrid3 setCustomHeader:sortControl5];

    sortControl6 = [(TUICandidateView *)self sortControl];
    [sortControl6 setAlpha:1.0];

    [(TUICandidateView *)self sortControlHeight];
    v86 = v85;
    sortControl7 = [(TUICandidateView *)self sortControl];
    [sortControl7 setFrame:{0.0, 0.0, v10, v86}];

    sortControl8 = [(TUICandidateView *)self sortControl];
    style9 = [state style];
    [sortControl8 _setShowsLinesOnEdges:0 style:style9];
  }

  else
  {
    primaryGrid4 = [(TUICandidateView *)self primaryGrid];
    [primaryGrid4 setCustomHeader:0];

    sortControl9 = [(TUICandidateView *)self sortControl];
    superview2 = [sortControl9 superview];
    clipsToBoundsView6 = [(TUICandidateView *)self clipsToBoundsView];

    if (superview2 == clipsToBoundsView6)
    {
      goto LABEL_42;
    }

    sortControl10 = [(TUICandidateView *)self sortControl];
    [sortControl10 removeFromSuperview];

    sortControl8 = [(TUICandidateView *)self clipsToBoundsView];
    style9 = [(TUICandidateView *)self sortControl];
    [sortControl8 addSubview:style9];
  }

LABEL_42:
  style10 = [state style];
  if (objc_opt_respondsToSelector())
  {
    style11 = [state style];
    v97 = [style11 performSelector:sel_hasShadow];

    if (!v97)
    {
      goto LABEL_46;
    }

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    layer = [(TUICandidateView *)self layer];
    [layer setShadowColor:cGColor];

    layer2 = [(TUICandidateView *)self layer];
    [layer2 setShadowOffset:{0.0, 3.0}];

    layer3 = [(TUICandidateView *)self layer];
    LODWORD(v103) = 1045220557;
    [layer3 setShadowOpacity:v103];

    style10 = [(TUICandidateView *)self layer];
    [style10 setShadowRadius:8.0];
  }

LABEL_46:
  style12 = [state style];
  sortControlBackgroundColor = [style12 sortControlBackgroundColor];
  [sortControlBackgroundColor alphaComponent];
  if (v106 <= 0.0)
  {
  }

  else
  {
    if ([state sortControlPosition] == 2 || objc_msgSend(state, "sortControlPosition") == 3)
    {

LABEL_50:
      v107 = 1;
      goto LABEL_53;
    }

    sortControlPosition = [state sortControlPosition];

    if (sortControlPosition == 5)
    {
      goto LABEL_50;
    }
  }

  v107 = 0;
LABEL_53:
  sortControl11 = [(TUICandidateView *)self sortControl];
  style13 = [state style];
  [sortControl11 _setShowsLinesOnEdges:v107 style:style13];

  if ([(TUICandidateView *)self effectiveCandidateArrowButonPosition])
  {
    arrowButton = [(TUICandidateView *)self arrowButton];

    if (!arrowButton)
    {
      v111 = [TUICandidateArrowButton alloc];
      [(TUICandidateView *)self arrowButtonWidth];
      v113 = v112;
      [(TUICandidateView *)self arrowButtonHeight];
      v114 = [(TUICandidateArrowButton *)v111 initWithFrame:0.0, 0.0, v113, v114];
      [(TUICandidateView *)self setArrowButton:v114];

      arrowButton2 = [(TUICandidateView *)self arrowButton];
      [arrowButton2 addTarget:self action:sel_didTapArrowButton_ forControlEvents:64];

      clipsToBoundsView7 = [(TUICandidateView *)self clipsToBoundsView];
      arrowButton3 = [(TUICandidateView *)self arrowButton];
      [clipsToBoundsView7 addSubview:arrowButton3];
    }

    [(TUICandidateView *)self setShouldShowArrowButton:1];
    [(TUICandidateView *)self updateArrowButtonVisibility];
  }

  candidateNumberEnabled = [state candidateNumberEnabled];
  primaryGrid5 = [(TUICandidateView *)self primaryGrid];
  [primaryGrid5 setCandidateNumberEnabled:candidateNumberEnabled];

  arrowButton4 = [(TUICandidateView *)self arrowButton];
  [arrowButton4 frame];
  v123 = v122;
  v125 = v124;
  primaryGrid6 = [(TUICandidateView *)self primaryGrid];
  [primaryGrid6 setArrowButtonOrigin:{v123, v125}];

  [(TUICandidateView *)self getArrowButtonSizeForGrid];
  v128 = v127;
  v130 = v129;
  primaryGrid7 = [(TUICandidateView *)self primaryGrid];
  [primaryGrid7 setArrowButtonSize:{v128, v130}];

  state2 = [(TUICandidateView *)self state];
  style14 = [state2 style];
  leftEdgeMaskImage = [style14 leftEdgeMaskImage];
  if (leftEdgeMaskImage)
  {
  }

  else
  {
    state3 = [(TUICandidateView *)self state];
    style15 = [state3 style];
    rightEdgeMaskImage = [style15 rightEdgeMaskImage];

    if (!rightEdgeMaskImage)
    {
      primaryGrid8 = [(TUICandidateView *)self primaryGrid];
      [primaryGrid8 setMaskView:0];
      goto LABEL_63;
    }
  }

  candidateMask = [(TUICandidateView *)self candidateMask];

  if (!candidateMask)
  {
    v139 = [TUICandidateMask alloc];
    [(TUICandidateView *)self bounds];
    v140 = [(TUICandidateMask *)v139 initWithFrame:?];
    [(TUICandidateView *)self setCandidateMask:v140];
  }

  style16 = [state style];
  candidateMask2 = [(TUICandidateView *)self candidateMask];
  [candidateMask2 setStyle:style16];

  primaryGrid8 = [(TUICandidateView *)self candidateMask];
  primaryGrid9 = [(TUICandidateView *)self primaryGrid];
  [primaryGrid9 setMaskView:primaryGrid8];

LABEL_63:
  if (changeCopy)
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
  state = [(TUICandidateView *)self state];
  style = [state style];
  [style arrowButtonPadding];
  v6 = v5;
  state2 = [(TUICandidateView *)self state];
  style2 = [state2 style];
  [style2 arrowButtonPadding];
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
  state = [(TUICandidateView *)self state];
  style = [state style];
  [style arrowButtonHeight];
  if (v5 == 0.0)
  {
    state2 = [(TUICandidateView *)self state];
    style2 = [state2 style];
    [style2 rowHeight];
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
  state = [(TUICandidateView *)self state];
  disambiguationStyle = [state disambiguationStyle];
  [disambiguationStyle rowHeight];
  v6 = v5;
  state2 = [(TUICandidateView *)self state];
  disambiguationStyle2 = [state2 disambiguationStyle];
  [disambiguationStyle2 gridPadding];
  v10 = v6 + v9;

  return v10;
}

- (double)inlineTextHeight
{
  state = [(TUICandidateView *)self state];
  style = [state style];
  [style rowHeight];
  v5 = v4;

  return v5;
}

- (double)sortControlHeight
{
  state = [(TUICandidateView *)self state];
  style = [state style];
  [style rowHeight];
  v6 = v5;
  state2 = [(TUICandidateView *)self state];
  style2 = [state2 style];
  [style2 sortControlPadding];
  v10 = v6 + v9;
  state3 = [(TUICandidateView *)self state];
  style3 = [state3 style];
  [style3 sortControlPadding];
  v14 = v10 + v13;

  return v14;
}

- (CGRect)boundsForClipsToBoundsViewWithState:(id)state
{
  stateCopy = state;
  [(TUICandidateView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [stateCopy yOffset];
  v14 = v13 + v8;
  [stateCopy additionalHeight];
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

- (TUICandidateView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TUICandidateView;
  v3 = [(TUICandidateView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateView *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUICandidateView;
  v3 = [(TUICandidateView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

  clipsToBoundsView = [(TUICandidateView *)self clipsToBoundsView];
  [clipsToBoundsView setClipsToBounds:1];

  clipsToBoundsView2 = [(TUICandidateView *)self clipsToBoundsView];
  [(TUICandidateView *)self addSubview:clipsToBoundsView2];

  layer = [MEMORY[0x1E69794A0] layer];
  [(TUICandidateView *)self setRoundedBorderLayer:layer];

  v8 = [TUICandidateGrid alloc];
  [(TUICandidateView *)self bounds];
  v9 = [(TUICandidateGrid *)v8 initWithFrame:?];
  [(TUICandidateView *)self setPrimaryGrid:v9];

  primaryGrid = [(TUICandidateView *)self primaryGrid];
  [primaryGrid setDelegate:self];

  clipsToBoundsView3 = [(TUICandidateView *)self clipsToBoundsView];
  primaryGrid2 = [(TUICandidateView *)self primaryGrid];
  [clipsToBoundsView3 addSubview:primaryGrid2];

  v13 = [TUICandidateSortControl alloc];
  [(TUICandidateView *)self bounds];
  v14 = [(TUICandidateSortControl *)v13 initWithFrame:?];
  [(TUICandidateView *)self setSortControl:v14];

  sortControl = [(TUICandidateView *)self sortControl];
  [sortControl setHidden:1];

  sortControl2 = [(TUICandidateView *)self sortControl];
  [sortControl2 addTarget:self action:sel_handleSortControlValueChanged forControlEvents:4096];

  clipsToBoundsView4 = [(TUICandidateView *)self clipsToBoundsView];
  sortControl3 = [(TUICandidateView *)self sortControl];
  [clipsToBoundsView4 addSubview:sortControl3];
}

@end