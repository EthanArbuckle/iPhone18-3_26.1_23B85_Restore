@interface TUIPredictionView
- (BOOL)_ensureVisibleCellCount:(unint64_t)count forCellStackView:(id)view;
- (BOOL)_shouldPadWithEmptyCellsForAutocorrectionList:(id)list;
- (CGSize)intrinsicContentSize;
- (NSArray)displayedCandidates;
- (TUIPredictionView)initWithFrame:(CGRect)frame;
- (id)_candidatesToDisplayForAutocorrectionList:(id)list;
- (id)allVisibleCells;
- (id)labelFontForCandidate:(id)candidate;
- (id)test_cellForCandidate:(id)candidate;
- (id)visibleCells;
- (int64_t)_numberOfEmojisToDisplayForAutocorrectionList:(id)list withCandidatesShown:(id)shown;
- (int64_t)layoutDirection;
- (unint64_t)_predictionCellIndexAtLocation:(CGPoint)location;
- (void)_didRecognizeTapGesture:(id)gesture;
- (void)_reloadCellsAnimated:(BOOL)animated;
- (void)_setRenderConfig:(id)config;
- (void)_updateHighlightedCellForTouch:(id)touch;
- (void)_updateVisibleCellAppearance;
- (void)cancelTapGestureRecognizer;
- (void)configurePredictionCell:(id)cell forCandidate:(id)candidate animated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setAutocorrectionList:(id)list animated:(BOOL)animated;
- (void)setCurrentLocale:(id)locale;
- (void)setDrawsBackdropView:(BOOL)view;
- (void)setHighlightColor:(id)color;
- (void)setHighlightCornerRadius:(double)radius;
- (void)setHighlightMargin:(double)margin;
- (void)setRenderConfig:(id)config;
- (void)setSelectedIndex:(int64_t)index;
- (void)setSeparatorColor:(id)color;
- (void)setSeparatorMargin:(double)margin;
- (void)setUseContinuousCornerInHighlight:(BOOL)highlight;
@end

@implementation TUIPredictionView

- (int64_t)layoutDirection
{
  currentLocale = [(TUIPredictionView *)self currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  IsDefaultRightToLeft = UIKeyboardInputModeIsDefaultRightToLeft();

  return IsDefaultRightToLeft;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = TUIPredictionView;
  [(TUIPredictionView *)&v13 layoutSubviews];
  [(TUIPredictionView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  cellStackView = [(TUIPredictionView *)self cellStackView];
  [cellStackView setFrame:{v4, v6, v8, v10}];

  if ([(TUIPredictionView *)self drawsBackdropView])
  {
    backdropView = [(TUIPredictionView *)self backdropView];
    [backdropView setFrame:{v4, v6, v8, v10}];
  }
}

- (void)_updateVisibleCellAppearance
{
  allVisibleCells = [(TUIPredictionView *)self allVisibleCells];
  v4 = [allVisibleCells count];

  allVisibleCells2 = [(TUIPredictionView *)self allVisibleCells];
  v6 = allVisibleCells2;
  if (v4 == 1)
  {
    firstObject = [allVisibleCells2 firstObject];

    [firstObject setVisibleSeparatorEdges:10];
    [firstObject setRoundedHighlightEdges:10];
  }

  else
  {
    v7 = [allVisibleCells2 indexesOfObjectsPassingTest:&__block_literal_global_39];

    allVisibleCells3 = [(TUIPredictionView *)self allVisibleCells];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__TUIPredictionView__updateVisibleCellAppearance__block_invoke_2;
    v11[3] = &unk_1E72D7900;
    v11[4] = self;
    v12 = v7;
    v13 = v4;
    v9 = v7;
    [allVisibleCells3 enumerateObjectsUsingBlock:v11];
  }
}

- (id)allVisibleCells
{
  cellStackView = [(TUIPredictionView *)self cellStackView];
  allVisibleCells = [cellStackView allVisibleCells];

  return allVisibleCells;
}

void __49__TUIPredictionView__updateVisibleCellAppearance__block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v12 = a2;
  v5 = [*(a1 + 32) allVisibleCells];
  if ([v5 count] - 1 <= a3)
  {

    goto LABEL_7;
  }

  v6 = [*(a1 + 40) containsIndex:a3 + 1];

  if (v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if ([*(a1 + 32) layoutDirection] == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 8;
  }

LABEL_8:
  [v12 setVisibleSeparatorEdges:v7];
  if (![*(a1 + 32) drawsBackdropView])
  {
    v11 = 10;
    goto LABEL_18;
  }

  if (a3)
  {
    if (*(a1 + 48) - 1 != a3)
    {
      v11 = 0;
      goto LABEL_18;
    }

    v8 = [*(a1 + 32) layoutDirection] == 1;
    v9 = 8;
    v10 = 2;
  }

  else
  {
    v8 = [*(a1 + 32) layoutDirection] == 1;
    v9 = 2;
    v10 = 8;
  }

  if (v8)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

LABEL_18:
  [v12 setRoundedHighlightEdges:v11];
}

- (id)visibleCells
{
  cellStackView = [(TUIPredictionView *)self cellStackView];
  visibleCells = [cellStackView visibleCells];

  return visibleCells;
}

- (void)_updateHighlightedCellForTouch:(id)touch
{
  [touch locationInView:self];
  v4 = [(TUIPredictionView *)self _predictionCellIndexAtLocation:?];

  [(TUIPredictionView *)self setSelectedIndex:v4];
}

- (unint64_t)_predictionCellIndexAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  allVisibleCells = [(TUIPredictionView *)self allVisibleCells];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__TUIPredictionView__predictionCellIndexAtLocation___block_invoke;
  v9[3] = &unk_1E72D7950;
  *&v9[6] = x;
  *&v9[7] = y;
  v9[4] = self;
  v9[5] = &v10;
  [allVisibleCells enumerateObjectsUsingBlock:v9];

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

BOOL __52__TUIPredictionView__predictionCellIndexAtLocation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v8 superview];

  [v7 convertRect:v17 fromView:{v10, v12, v14, v16}];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v27.origin.x = v19;
  v27.origin.y = v21;
  v27.size.width = v23;
  v27.size.height = v25;
  result = CGRectContainsPoint(v27, *(a1 + 48));
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)_didRecognizeTapGesture:(id)gesture
{
  gestureCopy = gesture;
  [gestureCopy locationInView:self];
  v5 = [(TUIPredictionView *)self _predictionCellIndexAtLocation:?];
  if ([gestureCopy state] == 1 || objc_msgSend(gestureCopy, "state") == 2)
  {
    [(TUIPredictionView *)self setSelectedIndex:v5];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      allVisibleCells = [(TUIPredictionView *)self allVisibleCells];
      v7 = [allVisibleCells objectAtIndex:v5];

      maskingScrollView = [v7 maskingScrollView];
      LODWORD(allVisibleCells) = [maskingScrollView isDragging];

      if (allVisibleCells)
      {
        [gestureCopy setEnabled:0];
        [gestureCopy setEnabled:1];
      }
    }
  }

  else if ([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4)
  {
    if ([gestureCopy state] == 3 && self->_selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy__5500;
      v27 = __Block_byref_object_dispose__5501;
      v28 = 0;
      _activeEvents = [gestureCopy _activeEvents];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __45__TUIPredictionView__didRecognizeTapGesture___block_invoke;
      v22[3] = &unk_1E72D7928;
      v22[4] = &v23;
      [_activeEvents enumerateObjectsUsingBlock:v22];

      activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
      [activeInstance _attemptAuthenticationWithMessage:v24[5]];

      allVisibleCells2 = [(TUIPredictionView *)self allVisibleCells];
      v12 = [allVisibleCells2 objectAtIndex:self->_selectedIndex];

      delegate = [(TUIPredictionView *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        candidate = [v12 candidate];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = objc_alloc(MEMORY[0x1E69D95F0]);
          v15Candidate = [candidate candidate];
          input = [candidate input];
          rawInput = [candidate rawInput];
          v20 = [v16 initWithCandidate:v15Candidate forInput:input rawInput:rawInput];

          candidate = v20;
        }

        delegate2 = [(TUIPredictionView *)self delegate];
        [delegate2 predictionView:self didSelectCandidate:candidate];
      }

      _Block_object_dispose(&v23, 8);
    }

    [(TUIPredictionView *)self setSelectedIndex:0x7FFFFFFFFFFFFFFFLL];
  }
}

void __45__TUIPredictionView__didRecognizeTapGesture___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 _authenticationMessage];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    *a3 = 1;
  }
}

- (void)cancelTapGestureRecognizer
{
  tapGestureRecognizer = [(TUIPredictionView *)self tapGestureRecognizer];
  [tapGestureRecognizer setEnabled:0];

  tapGestureRecognizer2 = [(TUIPredictionView *)self tapGestureRecognizer];
  [tapGestureRecognizer2 setEnabled:1];
}

- (void)setHighlightMargin:(double)margin
{
  v15 = *MEMORY[0x1E69E9840];
  self->_highlightMargin = margin;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  cellStackView = [(TUIPredictionView *)self cellStackView];
  allVisibleCells = [cellStackView allVisibleCells];

  v6 = [allVisibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allVisibleCells);
        }

        [*(*(&v10 + 1) + 8 * v9++) setHighlightMargin:margin];
      }

      while (v7 != v9);
      v7 = [allVisibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setUseContinuousCornerInHighlight:(BOOL)highlight
{
  highlightCopy = highlight;
  v15 = *MEMORY[0x1E69E9840];
  self->_useContinuousCornerInHighlight = highlight;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  cellStackView = [(TUIPredictionView *)self cellStackView];
  allVisibleCells = [cellStackView allVisibleCells];

  v6 = [allVisibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allVisibleCells);
        }

        [*(*(&v10 + 1) + 8 * v9++) setUseContinuousCornerInHighlight:highlightCopy];
      }

      while (v7 != v9);
      v7 = [allVisibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setHighlightCornerRadius:(double)radius
{
  v15 = *MEMORY[0x1E69E9840];
  self->_highlightCornerRadius = radius;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  cellStackView = [(TUIPredictionView *)self cellStackView];
  allVisibleCells = [cellStackView allVisibleCells];

  v6 = [allVisibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allVisibleCells);
        }

        [*(*(&v10 + 1) + 8 * v9++) setHighlightCornerRadius:radius];
      }

      while (v7 != v9);
      v7 = [allVisibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setHighlightColor:(id)color
{
  v17 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  objc_storeStrong(&self->_highlightColor, color);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  cellStackView = [(TUIPredictionView *)self cellStackView];
  allVisibleCells = [cellStackView allVisibleCells];

  v8 = [allVisibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(allVisibleCells);
        }

        [*(*(&v12 + 1) + 8 * v11++) setHighlightColor:colorCopy];
      }

      while (v9 != v11);
      v9 = [allVisibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setSeparatorMargin:(double)margin
{
  v15 = *MEMORY[0x1E69E9840];
  self->_separatorMargin = margin;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  cellStackView = [(TUIPredictionView *)self cellStackView];
  allVisibleCells = [cellStackView allVisibleCells];

  v6 = [allVisibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allVisibleCells);
        }

        [*(*(&v10 + 1) + 8 * v9++) setSeparatorMargin:margin];
      }

      while (v7 != v9);
      v7 = [allVisibleCells countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setSeparatorColor:(id)color
{
  v17 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  objc_storeStrong(&self->_separatorColor, color);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  cellStackView = [(TUIPredictionView *)self cellStackView];
  allVisibleCells = [cellStackView allVisibleCells];

  v8 = [allVisibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(allVisibleCells);
        }

        [*(*(&v12 + 1) + 8 * v11++) setSeparatorColor:colorCopy];
      }

      while (v9 != v11);
      v9 = [allVisibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setCurrentLocale:(id)locale
{
  localeCopy = locale;
  if (([(NSLocale *)self->_currentLocale isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_currentLocale, locale);
    layoutDirection = [(TUIPredictionView *)self layoutDirection];
    cellStackView = [(TUIPredictionView *)self cellStackView];
    [cellStackView setLayoutDirection:layoutDirection];
  }
}

- (void)_setRenderConfig:(id)config
{
  configCopy = config;
  v5.receiver = self;
  v5.super_class = TUIPredictionView;
  [(TUIPredictionView *)&v5 _setRenderConfig:configCopy];
  if (self->_renderConfig != configCopy)
  {
    [(TUIPredictionView *)self setRenderConfig:configCopy];
  }
}

- (void)setRenderConfig:(id)config
{
  v17 = *MEMORY[0x1E69E9840];
  configCopy = config;
  objc_storeStrong(&self->_renderConfig, config);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  cellStackView = [(TUIPredictionView *)self cellStackView];
  allVisibleCells = [cellStackView allVisibleCells];

  v8 = [allVisibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(allVisibleCells);
        }

        [*(*(&v12 + 1) + 8 * v11++) setRenderConfig:configCopy];
      }

      while (v9 != v11);
      v9 = [allVisibleCells countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setAutocorrectionList:(id)list animated:(BOOL)animated
{
  animatedCopy = animated;
  objc_storeStrong(&self->_autocorrectionList, list);

  [(TUIPredictionView *)self _reloadCellsAnimated:animatedCopy];
}

- (void)setSelectedIndex:(int64_t)index
{
  indexCopy = index;
  selectedIndex = self->_selectedIndex;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL && selectedIndex != index)
  {
    allVisibleCells = [(TUIPredictionView *)self allVisibleCells];
    v9 = [allVisibleCells objectAtIndex:self->_selectedIndex];

    [v9 setHighlighted:0];
    [v9 setShouldShowScalingAnimation:0];
  }

  if (indexCopy != 0x7FFFFFFFFFFFFFFFLL)
  {
    allVisibleCells2 = [(TUIPredictionView *)self allVisibleCells];
    v11 = [allVisibleCells2 count];

    if (v11 > indexCopy)
    {
      allVisibleCells3 = [(TUIPredictionView *)self allVisibleCells];
      v13 = [allVisibleCells3 objectAtIndex:indexCopy];

      candidate = [v13 candidate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        indexCopy = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        [v13 setShouldShowScalingAnimation:1];
        [v13 setHighlighted:1];
      }
    }

    v6 = indexCopy;
  }

  self->_selectedIndex = v6;

  [(TUIPredictionView *)self _updateVisibleCellAppearance];
}

- (NSArray)displayedCandidates
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allVisibleCells = [(TUIPredictionView *)self allVisibleCells];
  v5 = [allVisibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allVisibleCells);
        }

        candidate = [*(*(&v13 + 1) + 8 * i) candidate];
        v9Candidate = [candidate candidate];
        v11 = [v9Candidate length];

        if (v11)
        {
          [array addObject:candidate];
        }
      }

      v6 = [allVisibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return array;
}

- (BOOL)_ensureVisibleCellCount:(unint64_t)count forCellStackView:(id)view
{
  viewCopy = view;
  visibleCells = [viewCopy visibleCells];
  v7 = [visibleCells count];

  if (v7 != count)
  {
    while (1)
    {
      visibleCells2 = [viewCopy visibleCells];
      v9 = [visibleCells2 count];

      if (v9 <= count)
      {
        break;
      }

      arrangedSubviews = [viewCopy arrangedSubviews];
      lastObject = [arrangedSubviews lastObject];
      [lastObject removeFromSuperview];
    }

    visibleCells3 = [viewCopy visibleCells];
    v13 = [visibleCells3 count];

    if (v13 < count)
    {
      v14 = *MEMORY[0x1E695F058];
      v15 = *(MEMORY[0x1E695F058] + 8);
      v16 = *(MEMORY[0x1E695F058] + 16);
      v17 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        v18 = [[TUIPredictionViewCell alloc] initWithFrame:v14, v15, v16, v17];
        [viewCopy addArrangedSubview:v18 beforeLastSubview:0];

        visibleCells4 = [viewCopy visibleCells];
        v20 = [visibleCells4 count];
      }

      while (v20 < count);
    }
  }

  return v7 != count;
}

- (void)configurePredictionCell:(id)cell forCandidate:(id)candidate animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  candidateCopy = candidate;
  renderConfig = [(TUIPredictionView *)self renderConfig];
  [cellCopy setRenderConfig:renderConfig];

  separatorColor = [(TUIPredictionView *)self separatorColor];
  [cellCopy setSeparatorColor:separatorColor];

  [(TUIPredictionView *)self separatorMargin];
  [cellCopy setSeparatorMargin:?];
  highlightColor = [(TUIPredictionView *)self highlightColor];
  [cellCopy setHighlightColor:highlightColor];

  [(TUIPredictionView *)self highlightMargin];
  [cellCopy setHighlightMargin:?];
  [(TUIPredictionView *)self highlightCornerRadius];
  [cellCopy setHighlightCornerRadius:?];
  [cellCopy setUseContinuousCornerInHighlight:{-[TUIPredictionView useContinuousCornerInHighlight](self, "useContinuousCornerInHighlight")}];
  v13 = [(TUIPredictionView *)self labelFontForCandidate:candidateCopy];
  [cellCopy setLabelFont:v13];

  autocorrectionList = [(TUIPredictionView *)self autocorrectionList];
  corrections = [autocorrectionList corrections];
  autocorrection = [corrections autocorrection];

  disablesHighlight = [(TUIPredictionView *)self disablesHighlight];
  v18 = 0;
  if (!disablesHighlight && autocorrection == candidateCopy)
  {
    if (([candidateCopy candidateProperty] & 4) != 0)
    {
      v18 = 1;
    }

    else
    {
      candidate = [autocorrection candidate];
      input = [autocorrection input];
      v21 = [candidate isEqualToString:input];

      v18 = v21 ^ 1u;
    }
  }

  [cellCopy setHighlighted:v18];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __67__TUIPredictionView_configurePredictionCell_forCandidate_animated___block_invoke;
  v37[3] = &unk_1E72D78B8;
  v22 = candidateCopy;
  v38 = v22;
  selfCopy = self;
  v23 = cellCopy;
  v40 = v23;
  v24 = __67__TUIPredictionView_configurePredictionCell_forCandidate_animated___block_invoke(v37);
  if (v24)
  {
    [v23 setImage:v24];
    autocorrectionList2 = [(TUIPredictionView *)self autocorrectionList];
    predictions = [autocorrectionList2 predictions];
    v27 = [predictions count];

    if (v27 == 1)
    {
      v29 = 1132068864;
    }

    else
    {
      v29 = 1148846080;
    }

    LODWORD(v28) = v29;
    [v23 setContentHuggingPriority:0 forAxis:v28];
  }

  else
  {
    [v23 setImage:0];
  }

  if (objc_opt_respondsToSelector())
  {
    customView = [v22 customView];
    [v23 setCustomView:customView];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textSuggestion = [v22 textSuggestion];
    if (objc_opt_respondsToSelector())
    {
      foregroundColor = [textSuggestion foregroundColor];
      [v23 setPreferredForegroundColor:foregroundColor];
    }

    else
    {
      [v23 setPreferredForegroundColor:0];
    }

    if (objc_opt_respondsToSelector())
    {
      backgroundColor = [textSuggestion backgroundColor];

      if (backgroundColor)
      {
        cellStackView = [(TUIPredictionView *)self cellStackView];
        [cellStackView setCellsHaveBackgroundColor:1];

        backgroundColor2 = [textSuggestion backgroundColor];
        [v23 setPreferredBackgroundColor:backgroundColor2];
      }
    }

    else
    {
      cellStackView2 = [(TUIPredictionView *)self cellStackView];
      [cellStackView2 setCellsHaveBackgroundColor:0];

      [v23 setPreferredBackgroundColor:0];
    }
  }

  else
  {
    [v23 setPreferredForegroundColor:0];
    [v23 setPreferredBackgroundColor:0];
    textSuggestion = [(TUIPredictionView *)self cellStackView];
    [textSuggestion setCellsHaveBackgroundColor:0];
  }

  [v23 setCandidate:v22 animated:animatedCopy];
}

id __67__TUIPredictionView_configurePredictionCell_forCandidate_animated___block_invoke(uint64_t a1)
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([*(a1 + 32) icon], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = [*(a1 + 32) icon];
  }

  else if ([*(a1 + 32) customInfoType] == 32)
  {
    v4 = MEMORY[0x1E69DCAB8];
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [v4 imageNamed:@"kb-autofill-key" inBundle:v5];
    v7 = [*(a1 + 48) textColor];
    v3 = [v6 _flatImageWithColor:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [*(a1 + 32) textSuggestion];
      if (objc_opt_respondsToSelector())
      {
        v3 = [v8 image];
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)labelFontForCandidate:(id)candidate
{
  if ([candidate isSupplementalItemCandidate])
  {
    v4 = MEMORY[0x1E69DB878];
    renderConfig = [(TUIPredictionView *)self renderConfig];
    colorAdaptiveBackground = [renderConfig colorAdaptiveBackground];
    v7 = MEMORY[0x1E69DDCF8];
    if (!colorAdaptiveBackground)
    {
      v7 = MEMORY[0x1E69DDD40];
    }

    v8 = [v4 preferredFontForTextStyle:*v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_reloadCellsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(TUIPredictionView *)self setSelectedIndex:0x7FFFFFFFFFFFFFFFLL];
  v51 = [(TUIPredictionView *)self _candidatesToDisplayForAutocorrectionList:self->_autocorrectionList];
  lastObject = [v51 lastObject];
  customInfoType = [lastObject customInfoType];

  v7 = [v51 indexOfObjectPassingTest:&__block_literal_global_18];
  v8 = [(TUIPredictionView *)self _numberOfEmojisToDisplayForAutocorrectionList:self->_autocorrectionList withCandidatesShown:v51];
  v49 = customInfoType;
  if (!v8)
  {
    v15 = v51;
    goto LABEL_12;
  }

  if (customInfoType != 0x8000 && v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_10:
    v13 = [v51 subarrayWithRange:{0, objc_msgSend(v51, "count", customInfoType) - 1}];
    v14 = v51;
    goto LABEL_11;
  }

  if ([v51 count] < 2)
  {
    v15 = v51;
    if (customInfoType == 0x8000)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  lastObject2 = [v51 lastObject];
  v11 = [v51 subarrayWithRange:{0, objc_msgSend(v51, "count") - 2}];
  lastObject3 = [v51 lastObject];
  v13 = [v11 arrayByAddingObject:lastObject3];

  v14 = lastObject2;
LABEL_11:

  v15 = v13;
LABEL_12:
  v52 = v15;
  v16 = [v15 count];
  cellStackView = [(TUIPredictionView *)self cellStackView];
  [(TUIPredictionView *)self _ensureVisibleCellCount:v16 forCellStackView:cellStackView];

  shouldAnimateCells = [(TUIPredictionView *)self shouldAnimateCells];
  v19 = [v52 count];
  v20 = v52;
  if (v19)
  {
    for (i = 0; i < v27; ++i)
    {
      v22 = [v20 objectAtIndex:i];
      cellStackView2 = [(TUIPredictionView *)self cellStackView];
      visibleCells = [cellStackView2 visibleCells];
      v25 = [visibleCells objectAtIndex:i];

      v26 = [v22 candidateProperty] == 2 || objc_msgSend(v22, "candidateProperty") == 128 || shouldAnimateCells;
      [(TUIPredictionView *)self configurePredictionCell:v25 forCandidate:v22 animated:v26 & 1];

      v27 = [v52 count];
      v20 = v52;
    }
  }

  emojiList = [(TIAutocorrectionList *)self->_autocorrectionList emojiList];
  v29 = emojiList;
  if (v8)
  {
    if ([emojiList count] > v8)
    {
      v30 = [v29 subarrayWithRange:{0, v8}];

      v29 = v30;
    }

    cellStackView3 = [(TUIPredictionView *)self cellStackView];
    subStackViews = [cellStackView3 subStackViews];
    v33 = [subStackViews count];

    if (v33)
    {
      cellStackView4 = [(TUIPredictionView *)self cellStackView];
      subStackViews2 = [cellStackView4 subStackViews];
      firstObject = [subStackViews2 firstObject];
    }

    else
    {
      v39 = [TUIPredictionViewStackView alloc];
      firstObject = [(TUIPredictionViewStackView *)v39 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    [(TUIPredictionViewStackView *)firstObject setLayoutDirection:[(TUIPredictionView *)self layoutDirection]];
    -[TUIPredictionView _ensureVisibleCellCount:forCellStackView:](self, "_ensureVisibleCellCount:forCellStackView:", [v29 count], firstObject);
    if ([v29 count])
    {
      v40 = 0;
      do
      {
        v41 = [v29 objectAtIndex:v40];
        visibleCells2 = [(TUIPredictionViewStackView *)firstObject visibleCells];
        v43 = [visibleCells2 objectAtIndex:v40];

        [(TUIPredictionView *)self configurePredictionCell:v43 forCandidate:v41 animated:animatedCopy];
        ++v40;
      }

      while (v40 < [v29 count]);
    }

    cellStackView5 = [(TUIPredictionView *)self cellStackView];
    [cellStackView5 addArrangedSubview:firstObject beforeLastSubview:v50 == 0x8000];
  }

  else
  {
    firstObject = [(TUIPredictionView *)self cellStackView];
    cellStackView5 = [(TUIPredictionViewStackView *)firstObject subStackViews];
    firstObject2 = [cellStackView5 firstObject];
    [firstObject2 removeFromSuperview];
  }

  [(TUIPredictionView *)self _updateVisibleCellAppearance];
  visibleCells3 = [(TUIPredictionView *)self visibleCells];
  v45 = [visibleCells3 count];

  if (v45 == 1)
  {
    v46 = 30.0;
  }

  else
  {
    v46 = 0.0;
  }

  cellStackView6 = [(TUIPredictionView *)self cellStackView];
  [cellStackView6 setContentMargin:{0.0, v46, 0.0, v46}];

  cellStackView7 = [(TUIPredictionView *)self cellStackView];
  [cellStackView7 setNeedsLayout];
}

- (int64_t)_numberOfEmojisToDisplayForAutocorrectionList:(id)list withCandidatesShown:(id)shown
{
  listCopy = list;
  maximumEmojiCells = [(TUIPredictionView *)self maximumEmojiCells];
  autocorrectionList = [(TUIPredictionView *)self autocorrectionList];
  emojiList = [autocorrectionList emojiList];
  v9 = [emojiList count];

  if (maximumEmojiCells >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = maximumEmojiCells;
  }

  predictions = [listCopy predictions];
  if (predictions)
  {
    v12 = predictions;
    predictions2 = [listCopy predictions];
    v14 = [predictions2 indexOfObjectPassingTest:&__block_literal_global_16];

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_candidatesToDisplayForAutocorrectionList:(id)list
{
  v75 = *MEMORY[0x1E69E9840];
  listCopy = list;
  array = [MEMORY[0x1E695DF70] array];
  corrections = [listCopy corrections];
  autocorrection = [corrections autocorrection];

  v67 = listCopy;
  predictions = [listCopy predictions];
  input = [autocorrection input];
  if ([input length])
  {
  }

  else
  {
    candidate = [autocorrection candidate];
    v11 = [candidate length];

    if (!v11)
    {
      selfCopy4 = self;

      autocorrection = 0;
      goto LABEL_11;
    }
  }

  if (!autocorrection)
  {
    selfCopy4 = self;
    goto LABEL_11;
  }

  if ([autocorrection isContinuousPathConversion])
  {
    selfCopy4 = self;
    [array addObject:autocorrection];
LABEL_11:
    v20 = 0;
    v66 = 0;
    goto LABEL_29;
  }

  input2 = [autocorrection input];
  rawInput = [autocorrection rawInput];
  activeInstance = [MEMORY[0x1E69DCBE0] activeInstance];
  smartPunctuationController = [activeInstance smartPunctuationController];

  v65 = rawInput;
  v17 = predictions;
  if (smartPunctuationController)
  {
    v18 = [smartPunctuationController smartPunctuationedStringForString:input2];
    v19 = [smartPunctuationController smartPunctuationedStringForString:rawInput];
  }

  else
  {
    v18 = input2;
    v19 = rawInput;
  }

  v21 = v19;
  currentLocale = [(TUIPredictionView *)self currentLocale];
  v63 = v21;
  v64 = v18;
  v23 = [TUITypedStringCandidate typedStringCandidateWithLocale:currentLocale candidateString:v18 inputString:v18 rawInputString:v21];

  v66 = v23;
  [array addObject:v23];
  candidate2 = [autocorrection candidate];
  if ([candidate2 isEqualToString:input2])
  {

LABEL_16:
    if ([autocorrection candidateProperty] != 4 && !objc_msgSend(autocorrection, "isSupplementalItemCandidate"))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [autocorrection candidate];
  v26 = v25 = input2;
  v27 = [v26 isEqualToString:v65];

  input2 = v25;
  if (v27)
  {
    goto LABEL_16;
  }

LABEL_18:
  [array addObject:autocorrection];
LABEL_19:
  if (v17)
  {
    v62 = input2;
    v28 = [v17 indexOfObjectWithOptions:0 passingTest:&__block_literal_global_5532];
    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 0;
      predictions = v17;
    }

    else
    {
      v29 = v28;
      v61 = v17;
      v30 = [v17 objectAtIndex:v28];
      candidate3 = [v30 candidate];

      if (smartPunctuationController)
      {
        v32 = [smartPunctuationController smartPunctuationedStringForString:candidate3];
      }

      else
      {
        v32 = candidate3;
      }

      v33 = v32;
      currentLocale2 = [(TUIPredictionView *)self currentLocale];
      v20 = [TUITypedStringCandidate typedStringCandidateWithLocale:currentLocale2 candidateString:v33 inputString:v64 rawInputString:v63];

      v35 = [v61 mutableCopy];
      [v35 removeObjectAtIndex:v29];
      predictions = [v35 copy];
    }

    input2 = v62;
  }

  else
  {
    predictions = 0;
    v20 = 0;
  }

  selfCopy4 = self;

LABEL_29:
  v36 = predictions;
  [array addObjectsFromArray:predictions];
  lastObject = [array lastObject];
  customInfoType = [lastObject customInfoType];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v39 = array;
  v40 = [v39 countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v71;
    while (2)
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v71 != v42)
        {
          objc_enumerationMutation(v39);
        }

        if ([*(*(&v70 + 1) + 8 * i) candidateProperty] == 8)
        {

          goto LABEL_40;
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v70 objects:v74 count:16];
      if (v41)
      {
        continue;
      }

      break;
    }
  }

  if (customInfoType == 0x8000)
  {
LABEL_40:
    v44 = 1;
    v46 = 4;
    v45 = 1;
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 3;
  }

  if ([v39 count] > v46)
  {
    lastObject2 = [v39 lastObject];
    customInfoType2 = [lastObject2 customInfoType];

    if (customInfoType2 == 32)
    {
      v49 = 1;
    }

    else
    {
      v49 = v45;
    }

    [v39 removeObjectsInRange:{v46 - v49, objc_msgSend(v39, "count") - v46}];
  }

  v50 = [v39 count];
  if ([(TUIPredictionView *)selfCopy4 _shouldPadWithEmptyCellsForAutocorrectionList:v67])
  {
    v51 = [(TUIPredictionView *)selfCopy4 minimumNumberOfCells]+ v44;
    while ([v39 count] < v51)
    {
      v52 = +[TUIPlaceholderCandidate placeholderCandidate];
      if (v45)
      {
        [v39 insertObject:v52 atIndex:{objc_msgSend(v39, "count") - 1}];
      }

      else
      {
        [v39 addObject:v52];
      }
    }
  }

  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __63__TUIPredictionView__candidatesToDisplayForAutocorrectionList___block_invoke_2;
  v68[3] = &unk_1E72D7890;
  v53 = autocorrection;
  v69 = v53;
  v54 = [v39 indexOfObjectWithOptions:0 passingTest:v68];
  if (v54 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v55 = v66;
    if (v50 == 1)
    {
      v54 = [v39 indexOfObjectWithOptions:0 passingTest:&__block_literal_global_14];
    }
  }

  else
  {
    v55 = v66;
  }

  if (v54 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v39 exchangeObjectAtIndex:1 withObjectAtIndex:?];
  }

  if (v20)
  {
    v56 = [v39 count];
    lastObject3 = [v39 lastObject];
    customInfoType3 = [lastObject3 customInfoType];

    v59 = -2;
    if (customInfoType3 != 0x8000)
    {
      v59 = -1;
    }

    if (__CFADD__(v59, v56))
    {
      [v39 replaceObjectAtIndex:v59 + v56 withObject:v20];
    }
  }

  return v39;
}

- (BOOL)_shouldPadWithEmptyCellsForAutocorrectionList:(id)list
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  predictions = [list predictions];
  v4 = [predictions countByEnumeratingWithState:&v16 objects:v20 count:16];
  v5 = 1;
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(predictions);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        type = [objc_opt_class() type];
        candidateProperty = [v9 candidateProperty];
        if (type > 8 || ((1 << type) & 0x124) == 0)
        {
          v13 = candidateProperty;
          if ([v9 customInfoType] != 0x8000 && (objc_msgSend(v9, "isAlternativeInput") & 1) == 0 && v13 != 8)
          {
            v5 = 0;
            goto LABEL_18;
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v14 = [predictions countByEnumeratingWithState:&v16 objects:v20 count:16];
      v6 = v14;
    }

    while (v14);
    v5 = 1;
  }

LABEL_18:

  return v5;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  v3 = 45.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setDrawsBackdropView:(BOOL)view
{
  viewCopy = view;
  self->_drawsBackdropView = view;
  backdropView = [(TUIPredictionView *)self backdropView];
  v15 = backdropView;
  if (viewCopy)
  {

    if (!v15)
    {
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(TUIPredictionView *)self setBackdropView:v7];

      tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      backdropView2 = [(TUIPredictionView *)self backdropView];
      [backdropView2 setBackgroundColor:tertiarySystemFillColor];

      renderConfig = [(TUIPredictionView *)self renderConfig];
      if ([renderConfig colorAdaptiveBackground])
      {
        v11 = 19.0;
      }

      else
      {
        v11 = 10.0;
      }

      backdropView3 = [(TUIPredictionView *)self backdropView];
      [backdropView3 _setContinuousCornerRadius:v11];

      backdropView4 = [(TUIPredictionView *)self backdropView];
      [(TUIPredictionView *)self insertSubview:backdropView4 atIndex:0];

      [(TUIPredictionView *)self setNeedsLayout];
    }

    backdropView = [(TUIPredictionView *)self backdropView];
    v15 = backdropView;
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  [backdropView setHidden:v14];
}

- (TUIPredictionView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = TUIPredictionView;
  v3 = [(TUIPredictionView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [TUIPredictionViewStackView alloc];
    v5 = [(TUIPredictionViewStackView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(TUIPredictionView *)v3 setCellStackView:v5];

    cellStackView = [(TUIPredictionView *)v3 cellStackView];
    [(TUIPredictionView *)v3 addSubview:cellStackView];

    v3->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v3 action:sel__didRecognizeTapGesture_];
    [(TUIPredictionView *)v3 setTapGestureRecognizer:v7];

    tapGestureRecognizer = [(TUIPredictionView *)v3 tapGestureRecognizer];
    [tapGestureRecognizer setMinimumPressDuration:0.0];

    tapGestureRecognizer2 = [(TUIPredictionView *)v3 tapGestureRecognizer];
    [tapGestureRecognizer2 setCancelsTouchesInView:0];

    tapGestureRecognizer3 = [(TUIPredictionView *)v3 tapGestureRecognizer];
    [tapGestureRecognizer3 setDelegate:v3];

    tapGestureRecognizer4 = [(TUIPredictionView *)v3 tapGestureRecognizer];
    [(TUIPredictionView *)v3 addGestureRecognizer:tapGestureRecognizer4];

    [(TUIPredictionView *)v3 setMinimumNumberOfCells:3];
    [(TUIPredictionView *)v3 setMaximumEmojiCells:3];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [(TUIPredictionView *)v3 setCurrentLocale:currentLocale];

    [(TUIPredictionView *)v3 setSeparatorMargin:10.0];
    [(TUIPredictionView *)v3 setShouldAnimateCells:1];
    layer = [(TUIPredictionView *)v3 layer];
    [layer setHitTestsAsOpaque:1];
  }

  return v3;
}

- (id)test_cellForCandidate:(id)candidate
{
  v18 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allVisibleCells = [(TUIPredictionView *)self allVisibleCells];
  v6 = [allVisibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allVisibleCells);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        candidate = [v9 candidate];
        v11 = [candidate isEqual:candidateCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allVisibleCells countByEnumeratingWithState:&v13 objects:v17 count:16];
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

@end