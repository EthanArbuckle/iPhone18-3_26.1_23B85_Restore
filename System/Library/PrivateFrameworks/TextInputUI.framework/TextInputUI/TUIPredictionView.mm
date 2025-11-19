@interface TUIPredictionView
- (BOOL)_ensureVisibleCellCount:(unint64_t)a3 forCellStackView:(id)a4;
- (BOOL)_shouldPadWithEmptyCellsForAutocorrectionList:(id)a3;
- (CGSize)intrinsicContentSize;
- (NSArray)displayedCandidates;
- (TUIPredictionView)initWithFrame:(CGRect)a3;
- (id)_candidatesToDisplayForAutocorrectionList:(id)a3;
- (id)allVisibleCells;
- (id)labelFontForCandidate:(id)a3;
- (id)test_cellForCandidate:(id)a3;
- (id)visibleCells;
- (int64_t)_numberOfEmojisToDisplayForAutocorrectionList:(id)a3 withCandidatesShown:(id)a4;
- (int64_t)layoutDirection;
- (unint64_t)_predictionCellIndexAtLocation:(CGPoint)a3;
- (void)_didRecognizeTapGesture:(id)a3;
- (void)_reloadCellsAnimated:(BOOL)a3;
- (void)_setRenderConfig:(id)a3;
- (void)_updateHighlightedCellForTouch:(id)a3;
- (void)_updateVisibleCellAppearance;
- (void)cancelTapGestureRecognizer;
- (void)configurePredictionCell:(id)a3 forCandidate:(id)a4 animated:(BOOL)a5;
- (void)layoutSubviews;
- (void)setAutocorrectionList:(id)a3 animated:(BOOL)a4;
- (void)setCurrentLocale:(id)a3;
- (void)setDrawsBackdropView:(BOOL)a3;
- (void)setHighlightColor:(id)a3;
- (void)setHighlightCornerRadius:(double)a3;
- (void)setHighlightMargin:(double)a3;
- (void)setRenderConfig:(id)a3;
- (void)setSelectedIndex:(int64_t)a3;
- (void)setSeparatorColor:(id)a3;
- (void)setSeparatorMargin:(double)a3;
- (void)setUseContinuousCornerInHighlight:(BOOL)a3;
@end

@implementation TUIPredictionView

- (int64_t)layoutDirection
{
  v2 = [(TUIPredictionView *)self currentLocale];
  v3 = [v2 localeIdentifier];
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
  v11 = [(TUIPredictionView *)self cellStackView];
  [v11 setFrame:{v4, v6, v8, v10}];

  if ([(TUIPredictionView *)self drawsBackdropView])
  {
    v12 = [(TUIPredictionView *)self backdropView];
    [v12 setFrame:{v4, v6, v8, v10}];
  }
}

- (void)_updateVisibleCellAppearance
{
  v3 = [(TUIPredictionView *)self allVisibleCells];
  v4 = [v3 count];

  v5 = [(TUIPredictionView *)self allVisibleCells];
  v6 = v5;
  if (v4 == 1)
  {
    v10 = [v5 firstObject];

    [v10 setVisibleSeparatorEdges:10];
    [v10 setRoundedHighlightEdges:10];
  }

  else
  {
    v7 = [v5 indexesOfObjectsPassingTest:&__block_literal_global_39];

    v8 = [(TUIPredictionView *)self allVisibleCells];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __49__TUIPredictionView__updateVisibleCellAppearance__block_invoke_2;
    v11[3] = &unk_1E72D7900;
    v11[4] = self;
    v12 = v7;
    v13 = v4;
    v9 = v7;
    [v8 enumerateObjectsUsingBlock:v11];
  }
}

- (id)allVisibleCells
{
  v2 = [(TUIPredictionView *)self cellStackView];
  v3 = [v2 allVisibleCells];

  return v3;
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
  v2 = [(TUIPredictionView *)self cellStackView];
  v3 = [v2 visibleCells];

  return v3;
}

- (void)_updateHighlightedCellForTouch:(id)a3
{
  [a3 locationInView:self];
  v4 = [(TUIPredictionView *)self _predictionCellIndexAtLocation:?];

  [(TUIPredictionView *)self setSelectedIndex:v4];
}

- (unint64_t)_predictionCellIndexAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = [(TUIPredictionView *)self allVisibleCells];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__TUIPredictionView__predictionCellIndexAtLocation___block_invoke;
  v9[3] = &unk_1E72D7950;
  *&v9[6] = x;
  *&v9[7] = y;
  v9[4] = self;
  v9[5] = &v10;
  [v6 enumerateObjectsUsingBlock:v9];

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

- (void)_didRecognizeTapGesture:(id)a3
{
  v4 = a3;
  [v4 locationInView:self];
  v5 = [(TUIPredictionView *)self _predictionCellIndexAtLocation:?];
  if ([v4 state] == 1 || objc_msgSend(v4, "state") == 2)
  {
    [(TUIPredictionView *)self setSelectedIndex:v5];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [(TUIPredictionView *)self allVisibleCells];
      v7 = [v6 objectAtIndex:v5];

      v8 = [v7 maskingScrollView];
      LODWORD(v6) = [v8 isDragging];

      if (v6)
      {
        [v4 setEnabled:0];
        [v4 setEnabled:1];
      }
    }
  }

  else if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4)
  {
    if ([v4 state] == 3 && self->_selectedIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy__5500;
      v27 = __Block_byref_object_dispose__5501;
      v28 = 0;
      v9 = [v4 _activeEvents];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __45__TUIPredictionView__didRecognizeTapGesture___block_invoke;
      v22[3] = &unk_1E72D7928;
      v22[4] = &v23;
      [v9 enumerateObjectsUsingBlock:v22];

      v10 = [MEMORY[0x1E69DCBE0] activeInstance];
      [v10 _attemptAuthenticationWithMessage:v24[5]];

      v11 = [(TUIPredictionView *)self allVisibleCells];
      v12 = [v11 objectAtIndex:self->_selectedIndex];

      v13 = [(TUIPredictionView *)self delegate];
      v14 = objc_opt_respondsToSelector();

      if (v14)
      {
        v15 = [v12 candidate];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = objc_alloc(MEMORY[0x1E69D95F0]);
          v17 = [v15 candidate];
          v18 = [v15 input];
          v19 = [v15 rawInput];
          v20 = [v16 initWithCandidate:v17 forInput:v18 rawInput:v19];

          v15 = v20;
        }

        v21 = [(TUIPredictionView *)self delegate];
        [v21 predictionView:self didSelectCandidate:v15];
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
  v3 = [(TUIPredictionView *)self tapGestureRecognizer];
  [v3 setEnabled:0];

  v4 = [(TUIPredictionView *)self tapGestureRecognizer];
  [v4 setEnabled:1];
}

- (void)setHighlightMargin:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  self->_highlightMargin = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(TUIPredictionView *)self cellStackView];
  v5 = [v4 allVisibleCells];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setHighlightMargin:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setUseContinuousCornerInHighlight:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x1E69E9840];
  self->_useContinuousCornerInHighlight = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(TUIPredictionView *)self cellStackView];
  v5 = [v4 allVisibleCells];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setUseContinuousCornerInHighlight:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setHighlightCornerRadius:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  self->_highlightCornerRadius = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(TUIPredictionView *)self cellStackView];
  v5 = [v4 allVisibleCells];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setHighlightCornerRadius:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setHighlightColor:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_highlightColor, a3);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(TUIPredictionView *)self cellStackView];
  v7 = [v6 allVisibleCells];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setHighlightColor:v5];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setSeparatorMargin:(double)a3
{
  v15 = *MEMORY[0x1E69E9840];
  self->_separatorMargin = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(TUIPredictionView *)self cellStackView];
  v5 = [v4 allVisibleCells];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) setSeparatorMargin:a3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setSeparatorColor:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_separatorColor, a3);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(TUIPredictionView *)self cellStackView];
  v7 = [v6 allVisibleCells];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setSeparatorColor:v5];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setCurrentLocale:(id)a3
{
  v7 = a3;
  if (([(NSLocale *)self->_currentLocale isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_currentLocale, a3);
    v5 = [(TUIPredictionView *)self layoutDirection];
    v6 = [(TUIPredictionView *)self cellStackView];
    [v6 setLayoutDirection:v5];
  }
}

- (void)_setRenderConfig:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = TUIPredictionView;
  [(TUIPredictionView *)&v5 _setRenderConfig:v4];
  if (self->_renderConfig != v4)
  {
    [(TUIPredictionView *)self setRenderConfig:v4];
  }
}

- (void)setRenderConfig:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_renderConfig, a3);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(TUIPredictionView *)self cellStackView];
  v7 = [v6 allVisibleCells];

  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) setRenderConfig:v5];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setAutocorrectionList:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  objc_storeStrong(&self->_autocorrectionList, a3);

  [(TUIPredictionView *)self _reloadCellsAnimated:v4];
}

- (void)setSelectedIndex:(int64_t)a3
{
  v3 = a3;
  selectedIndex = self->_selectedIndex;
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (selectedIndex != 0x7FFFFFFFFFFFFFFFLL && selectedIndex != a3)
  {
    v8 = [(TUIPredictionView *)self allVisibleCells];
    v9 = [v8 objectAtIndex:self->_selectedIndex];

    [v9 setHighlighted:0];
    [v9 setShouldShowScalingAnimation:0];
  }

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [(TUIPredictionView *)self allVisibleCells];
    v11 = [v10 count];

    if (v11 > v3)
    {
      v12 = [(TUIPredictionView *)self allVisibleCells];
      v13 = [v12 objectAtIndex:v3];

      v14 = [v13 candidate];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v3 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        [v13 setShouldShowScalingAnimation:1];
        [v13 setHighlighted:1];
      }
    }

    v6 = v3;
  }

  self->_selectedIndex = v6;

  [(TUIPredictionView *)self _updateVisibleCellAppearance];
}

- (NSArray)displayedCandidates
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(TUIPredictionView *)self allVisibleCells];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) candidate];
        v10 = [v9 candidate];
        v11 = [v10 length];

        if (v11)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)_ensureVisibleCellCount:(unint64_t)a3 forCellStackView:(id)a4
{
  v5 = a4;
  v6 = [v5 visibleCells];
  v7 = [v6 count];

  if (v7 != a3)
  {
    while (1)
    {
      v8 = [v5 visibleCells];
      v9 = [v8 count];

      if (v9 <= a3)
      {
        break;
      }

      v10 = [v5 arrangedSubviews];
      v11 = [v10 lastObject];
      [v11 removeFromSuperview];
    }

    v12 = [v5 visibleCells];
    v13 = [v12 count];

    if (v13 < a3)
    {
      v14 = *MEMORY[0x1E695F058];
      v15 = *(MEMORY[0x1E695F058] + 8);
      v16 = *(MEMORY[0x1E695F058] + 16);
      v17 = *(MEMORY[0x1E695F058] + 24);
      do
      {
        v18 = [[TUIPredictionViewCell alloc] initWithFrame:v14, v15, v16, v17];
        [v5 addArrangedSubview:v18 beforeLastSubview:0];

        v19 = [v5 visibleCells];
        v20 = [v19 count];
      }

      while (v20 < a3);
    }
  }

  return v7 != a3;
}

- (void)configurePredictionCell:(id)a3 forCandidate:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(TUIPredictionView *)self renderConfig];
  [v8 setRenderConfig:v10];

  v11 = [(TUIPredictionView *)self separatorColor];
  [v8 setSeparatorColor:v11];

  [(TUIPredictionView *)self separatorMargin];
  [v8 setSeparatorMargin:?];
  v12 = [(TUIPredictionView *)self highlightColor];
  [v8 setHighlightColor:v12];

  [(TUIPredictionView *)self highlightMargin];
  [v8 setHighlightMargin:?];
  [(TUIPredictionView *)self highlightCornerRadius];
  [v8 setHighlightCornerRadius:?];
  [v8 setUseContinuousCornerInHighlight:{-[TUIPredictionView useContinuousCornerInHighlight](self, "useContinuousCornerInHighlight")}];
  v13 = [(TUIPredictionView *)self labelFontForCandidate:v9];
  [v8 setLabelFont:v13];

  v14 = [(TUIPredictionView *)self autocorrectionList];
  v15 = [v14 corrections];
  v16 = [v15 autocorrection];

  v17 = [(TUIPredictionView *)self disablesHighlight];
  v18 = 0;
  if (!v17 && v16 == v9)
  {
    if (([v9 candidateProperty] & 4) != 0)
    {
      v18 = 1;
    }

    else
    {
      v19 = [v16 candidate];
      v20 = [v16 input];
      v21 = [v19 isEqualToString:v20];

      v18 = v21 ^ 1u;
    }
  }

  [v8 setHighlighted:v18];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __67__TUIPredictionView_configurePredictionCell_forCandidate_animated___block_invoke;
  v37[3] = &unk_1E72D78B8;
  v22 = v9;
  v38 = v22;
  v39 = self;
  v23 = v8;
  v40 = v23;
  v24 = __67__TUIPredictionView_configurePredictionCell_forCandidate_animated___block_invoke(v37);
  if (v24)
  {
    [v23 setImage:v24];
    v25 = [(TUIPredictionView *)self autocorrectionList];
    v26 = [v25 predictions];
    v27 = [v26 count];

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
    v30 = [v22 customView];
    [v23 setCustomView:v30];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [v22 textSuggestion];
    if (objc_opt_respondsToSelector())
    {
      v32 = [v31 foregroundColor];
      [v23 setPreferredForegroundColor:v32];
    }

    else
    {
      [v23 setPreferredForegroundColor:0];
    }

    if (objc_opt_respondsToSelector())
    {
      v33 = [v31 backgroundColor];

      if (v33)
      {
        v34 = [(TUIPredictionView *)self cellStackView];
        [v34 setCellsHaveBackgroundColor:1];

        v35 = [v31 backgroundColor];
        [v23 setPreferredBackgroundColor:v35];
      }
    }

    else
    {
      v36 = [(TUIPredictionView *)self cellStackView];
      [v36 setCellsHaveBackgroundColor:0];

      [v23 setPreferredBackgroundColor:0];
    }
  }

  else
  {
    [v23 setPreferredForegroundColor:0];
    [v23 setPreferredBackgroundColor:0];
    v31 = [(TUIPredictionView *)self cellStackView];
    [v31 setCellsHaveBackgroundColor:0];
  }

  [v23 setCandidate:v22 animated:v5];
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

- (id)labelFontForCandidate:(id)a3
{
  if ([a3 isSupplementalItemCandidate])
  {
    v4 = MEMORY[0x1E69DB878];
    v5 = [(TUIPredictionView *)self renderConfig];
    v6 = [v5 colorAdaptiveBackground];
    v7 = MEMORY[0x1E69DDCF8];
    if (!v6)
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

- (void)_reloadCellsAnimated:(BOOL)a3
{
  v3 = a3;
  [(TUIPredictionView *)self setSelectedIndex:0x7FFFFFFFFFFFFFFFLL];
  v51 = [(TUIPredictionView *)self _candidatesToDisplayForAutocorrectionList:self->_autocorrectionList];
  v5 = [v51 lastObject];
  v6 = [v5 customInfoType];

  v7 = [v51 indexOfObjectPassingTest:&__block_literal_global_18];
  v8 = [(TUIPredictionView *)self _numberOfEmojisToDisplayForAutocorrectionList:self->_autocorrectionList withCandidatesShown:v51];
  v49 = v6;
  if (!v8)
  {
    v15 = v51;
    goto LABEL_12;
  }

  if (v6 != 0x8000 && v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_10:
    v13 = [v51 subarrayWithRange:{0, objc_msgSend(v51, "count", v6) - 1}];
    v14 = v51;
    goto LABEL_11;
  }

  if ([v51 count] < 2)
  {
    v15 = v51;
    if (v6 == 0x8000)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v10 = [v51 lastObject];
  v11 = [v51 subarrayWithRange:{0, objc_msgSend(v51, "count") - 2}];
  v12 = [v51 lastObject];
  v13 = [v11 arrayByAddingObject:v12];

  v14 = v10;
LABEL_11:

  v15 = v13;
LABEL_12:
  v52 = v15;
  v16 = [v15 count];
  v17 = [(TUIPredictionView *)self cellStackView];
  [(TUIPredictionView *)self _ensureVisibleCellCount:v16 forCellStackView:v17];

  v18 = [(TUIPredictionView *)self shouldAnimateCells];
  v19 = [v52 count];
  v20 = v52;
  if (v19)
  {
    for (i = 0; i < v27; ++i)
    {
      v22 = [v20 objectAtIndex:i];
      v23 = [(TUIPredictionView *)self cellStackView];
      v24 = [v23 visibleCells];
      v25 = [v24 objectAtIndex:i];

      v26 = [v22 candidateProperty] == 2 || objc_msgSend(v22, "candidateProperty") == 128 || v18;
      [(TUIPredictionView *)self configurePredictionCell:v25 forCandidate:v22 animated:v26 & 1];

      v27 = [v52 count];
      v20 = v52;
    }
  }

  v28 = [(TIAutocorrectionList *)self->_autocorrectionList emojiList];
  v29 = v28;
  if (v8)
  {
    if ([v28 count] > v8)
    {
      v30 = [v29 subarrayWithRange:{0, v8}];

      v29 = v30;
    }

    v31 = [(TUIPredictionView *)self cellStackView];
    v32 = [v31 subStackViews];
    v33 = [v32 count];

    if (v33)
    {
      v34 = [(TUIPredictionView *)self cellStackView];
      v35 = [v34 subStackViews];
      v36 = [v35 firstObject];
    }

    else
    {
      v39 = [TUIPredictionViewStackView alloc];
      v36 = [(TUIPredictionViewStackView *)v39 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    [(TUIPredictionViewStackView *)v36 setLayoutDirection:[(TUIPredictionView *)self layoutDirection]];
    -[TUIPredictionView _ensureVisibleCellCount:forCellStackView:](self, "_ensureVisibleCellCount:forCellStackView:", [v29 count], v36);
    if ([v29 count])
    {
      v40 = 0;
      do
      {
        v41 = [v29 objectAtIndex:v40];
        v42 = [(TUIPredictionViewStackView *)v36 visibleCells];
        v43 = [v42 objectAtIndex:v40];

        [(TUIPredictionView *)self configurePredictionCell:v43 forCandidate:v41 animated:v3];
        ++v40;
      }

      while (v40 < [v29 count]);
    }

    v37 = [(TUIPredictionView *)self cellStackView];
    [v37 addArrangedSubview:v36 beforeLastSubview:v50 == 0x8000];
  }

  else
  {
    v36 = [(TUIPredictionView *)self cellStackView];
    v37 = [(TUIPredictionViewStackView *)v36 subStackViews];
    v38 = [v37 firstObject];
    [v38 removeFromSuperview];
  }

  [(TUIPredictionView *)self _updateVisibleCellAppearance];
  v44 = [(TUIPredictionView *)self visibleCells];
  v45 = [v44 count];

  if (v45 == 1)
  {
    v46 = 30.0;
  }

  else
  {
    v46 = 0.0;
  }

  v47 = [(TUIPredictionView *)self cellStackView];
  [v47 setContentMargin:{0.0, v46, 0.0, v46}];

  v48 = [(TUIPredictionView *)self cellStackView];
  [v48 setNeedsLayout];
}

- (int64_t)_numberOfEmojisToDisplayForAutocorrectionList:(id)a3 withCandidatesShown:(id)a4
{
  v5 = a3;
  v6 = [(TUIPredictionView *)self maximumEmojiCells];
  v7 = [(TUIPredictionView *)self autocorrectionList];
  v8 = [v7 emojiList];
  v9 = [v8 count];

  if (v6 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  v11 = [v5 predictions];
  if (v11)
  {
    v12 = v11;
    v13 = [v5 predictions];
    v14 = [v13 indexOfObjectPassingTest:&__block_literal_global_16];

    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_candidatesToDisplayForAutocorrectionList:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [v4 corrections];
  v7 = [v6 autocorrection];

  v67 = v4;
  v8 = [v4 predictions];
  v9 = [v7 input];
  if ([v9 length])
  {
  }

  else
  {
    v10 = [v7 candidate];
    v11 = [v10 length];

    if (!v11)
    {
      v12 = self;

      v7 = 0;
      goto LABEL_11;
    }
  }

  if (!v7)
  {
    v12 = self;
    goto LABEL_11;
  }

  if ([v7 isContinuousPathConversion])
  {
    v12 = self;
    [v5 addObject:v7];
LABEL_11:
    v20 = 0;
    v66 = 0;
    goto LABEL_29;
  }

  v13 = [v7 input];
  v14 = [v7 rawInput];
  v15 = [MEMORY[0x1E69DCBE0] activeInstance];
  v16 = [v15 smartPunctuationController];

  v65 = v14;
  v17 = v8;
  if (v16)
  {
    v18 = [v16 smartPunctuationedStringForString:v13];
    v19 = [v16 smartPunctuationedStringForString:v14];
  }

  else
  {
    v18 = v13;
    v19 = v14;
  }

  v21 = v19;
  v22 = [(TUIPredictionView *)self currentLocale];
  v63 = v21;
  v64 = v18;
  v23 = [TUITypedStringCandidate typedStringCandidateWithLocale:v22 candidateString:v18 inputString:v18 rawInputString:v21];

  v66 = v23;
  [v5 addObject:v23];
  v24 = [v7 candidate];
  if ([v24 isEqualToString:v13])
  {

LABEL_16:
    if ([v7 candidateProperty] != 4 && !objc_msgSend(v7, "isSupplementalItemCandidate"))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  [v7 candidate];
  v26 = v25 = v13;
  v27 = [v26 isEqualToString:v65];

  v13 = v25;
  if (v27)
  {
    goto LABEL_16;
  }

LABEL_18:
  [v5 addObject:v7];
LABEL_19:
  if (v17)
  {
    v62 = v13;
    v28 = [v17 indexOfObjectWithOptions:0 passingTest:&__block_literal_global_5532];
    if (v28 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 0;
      v8 = v17;
    }

    else
    {
      v29 = v28;
      v61 = v17;
      v30 = [v17 objectAtIndex:v28];
      v31 = [v30 candidate];

      if (v16)
      {
        v32 = [v16 smartPunctuationedStringForString:v31];
      }

      else
      {
        v32 = v31;
      }

      v33 = v32;
      v34 = [(TUIPredictionView *)self currentLocale];
      v20 = [TUITypedStringCandidate typedStringCandidateWithLocale:v34 candidateString:v33 inputString:v64 rawInputString:v63];

      v35 = [v61 mutableCopy];
      [v35 removeObjectAtIndex:v29];
      v8 = [v35 copy];
    }

    v13 = v62;
  }

  else
  {
    v8 = 0;
    v20 = 0;
  }

  v12 = self;

LABEL_29:
  v36 = v8;
  [v5 addObjectsFromArray:v8];
  v37 = [v5 lastObject];
  v38 = [v37 customInfoType];

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v39 = v5;
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

  if (v38 == 0x8000)
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
    v47 = [v39 lastObject];
    v48 = [v47 customInfoType];

    if (v48 == 32)
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
  if ([(TUIPredictionView *)v12 _shouldPadWithEmptyCellsForAutocorrectionList:v67])
  {
    v51 = [(TUIPredictionView *)v12 minimumNumberOfCells]+ v44;
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
  v53 = v7;
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
    v57 = [v39 lastObject];
    v58 = [v57 customInfoType];

    v59 = -2;
    if (v58 != 0x8000)
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

- (BOOL)_shouldPadWithEmptyCellsForAutocorrectionList:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [a3 predictions];
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [objc_opt_class() type];
        v11 = [v9 candidateProperty];
        if (v10 > 8 || ((1 << v10) & 0x124) == 0)
        {
          v13 = v11;
          if ([v9 customInfoType] != 0x8000 && (objc_msgSend(v9, "isAlternativeInput") & 1) == 0 && v13 != 8)
          {
            v5 = 0;
            goto LABEL_18;
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v14 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)setDrawsBackdropView:(BOOL)a3
{
  v3 = a3;
  self->_drawsBackdropView = a3;
  v5 = [(TUIPredictionView *)self backdropView];
  v15 = v5;
  if (v3)
  {

    if (!v15)
    {
      v6 = objc_alloc(MEMORY[0x1E69DD250]);
      v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      [(TUIPredictionView *)self setBackdropView:v7];

      v8 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      v9 = [(TUIPredictionView *)self backdropView];
      [v9 setBackgroundColor:v8];

      v10 = [(TUIPredictionView *)self renderConfig];
      if ([v10 colorAdaptiveBackground])
      {
        v11 = 19.0;
      }

      else
      {
        v11 = 10.0;
      }

      v12 = [(TUIPredictionView *)self backdropView];
      [v12 _setContinuousCornerRadius:v11];

      v13 = [(TUIPredictionView *)self backdropView];
      [(TUIPredictionView *)self insertSubview:v13 atIndex:0];

      [(TUIPredictionView *)self setNeedsLayout];
    }

    v5 = [(TUIPredictionView *)self backdropView];
    v15 = v5;
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  [v5 setHidden:v14];
}

- (TUIPredictionView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = TUIPredictionView;
  v3 = [(TUIPredictionView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [TUIPredictionViewStackView alloc];
    v5 = [(TUIPredictionViewStackView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(TUIPredictionView *)v3 setCellStackView:v5];

    v6 = [(TUIPredictionView *)v3 cellStackView];
    [(TUIPredictionView *)v3 addSubview:v6];

    v3->_selectedIndex = 0x7FFFFFFFFFFFFFFFLL;
    v7 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v3 action:sel__didRecognizeTapGesture_];
    [(TUIPredictionView *)v3 setTapGestureRecognizer:v7];

    v8 = [(TUIPredictionView *)v3 tapGestureRecognizer];
    [v8 setMinimumPressDuration:0.0];

    v9 = [(TUIPredictionView *)v3 tapGestureRecognizer];
    [v9 setCancelsTouchesInView:0];

    v10 = [(TUIPredictionView *)v3 tapGestureRecognizer];
    [v10 setDelegate:v3];

    v11 = [(TUIPredictionView *)v3 tapGestureRecognizer];
    [(TUIPredictionView *)v3 addGestureRecognizer:v11];

    [(TUIPredictionView *)v3 setMinimumNumberOfCells:3];
    [(TUIPredictionView *)v3 setMaximumEmojiCells:3];
    v12 = [MEMORY[0x1E695DF58] currentLocale];
    [(TUIPredictionView *)v3 setCurrentLocale:v12];

    [(TUIPredictionView *)v3 setSeparatorMargin:10.0];
    [(TUIPredictionView *)v3 setShouldAnimateCells:1];
    v13 = [(TUIPredictionView *)v3 layer];
    [v13 setHitTestsAsOpaque:1];
  }

  return v3;
}

- (id)test_cellForCandidate:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(TUIPredictionView *)self allVisibleCells];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 candidate];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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