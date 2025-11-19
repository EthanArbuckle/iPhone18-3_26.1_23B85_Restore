@interface VUIScorecardView
- (CGSize)_calculateMetricsOfScorecard;
- (CGSize)scorecardSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (VUIScorecardViewDelegate)delegate;
- (void)_calculateColumnSpacing;
- (void)drawRect:(CGRect)a3;
- (void)invalidateData;
- (void)setDelegate:(id)a3;
@end

@implementation VUIScorecardView

- (void)setDelegate:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_delegate, v4);
  self->_delegateRespondsToBackgroundImageForScorecardViewMaterial = objc_opt_respondsToSelector() & 1;
  v5 = objc_opt_respondsToSelector();

  self->_delegateRespondsToBackgroundBlendModeForScoreValueInRowAtIndex = v5 & 1;
}

- (void)invalidateData
{
  self->_didCalculatedSize = 0;
  self->_scorecardSize = *MEMORY[0x1E695F060];
  self->_interitemSpacing = 0.0;
  rowScoreValueSizes = self->_rowScoreValueSizes;
  self->_rowScoreValueSizes = 0;

  self->_delegateRespondsToBackgroundImageForScorecardViewMaterial = 0;
  self->_delegateRespondsToBackgroundBlendModeForScoreValueInRowAtIndex = 0;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (!self->_didCalculatedSize)
  {
    [(VUIScorecardView *)self _calculateMetricsOfScorecard:a3.width];
  }

  width = self->_scorecardSize.width;
  height = self->_scorecardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_calculateColumnSpacing
{
  v19 = [(VUIScorecardView *)self delegate];
  if ([v19 styleForScorecardView:self] == 1)
  {
    v3 = [(NSArray *)self->_rowScoreValueSizes count];

    if (!v3)
    {
      return;
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = [(NSArray *)self->_rowScoreValueSizes objectAtIndexedSubscript:0];
    v5 = [v4 count];

    if (v5)
    {
      v6 = 0;
      do
      {
        if ([(NSArray *)self->_rowScoreValueSizes count])
        {
          v7 = 0;
          v8 = 0.0;
          do
          {
            v9 = [(NSArray *)self->_rowScoreValueSizes objectAtIndexedSubscript:v7];
            v10 = [v9 objectAtIndexedSubscript:v6];
            [v10 CGSizeValue];
            v12 = v11;

            if (v12 >= v8)
            {
              v8 = v12;
            }

            ++v7;
          }

          while (v7 < [(NSArray *)self->_rowScoreValueSizes count]);
        }

        v13 = MEMORY[0x1E696AD98];
        VUIRoundValue();
        v14 = [v13 numberWithDouble:?];
        [v19 setObject:v14 atIndexedSubscript:v6];

        ++v6;
        v15 = [(NSArray *)self->_rowScoreValueSizes objectAtIndexedSubscript:0];
        v16 = [v15 count];
      }

      while (v6 < v16);
    }

    v17 = [v19 copy];
    columnWidths = self->_columnWidths;
    self->_columnWidths = v17;
  }
}

- (void)drawRect:(CGRect)a3
{
  if (self->_delegateRespondsToBackgroundImageForScorecardViewMaterial)
  {
    if (!self->_didCalculatedSize)
    {
      [(VUIScorecardView *)self _calculateMetricsOfScorecard:a3.origin.x];
    }

    v55 = [(VUIScorecardView *)self delegate:a3.origin.x];
    v49 = [v55 backgroundImageForScorecardViewMaterial:self];
    if (v49)
    {
      [v49 drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      v5 = [v55 styleForScorecardView:self];
      v6 = [v55 numberOfRowsInScorecardView:self];
      [(VUIScoreboardLayout *)self->_scoreboardLayout padding];
      v52 = v7;
      v50 = v6;
      if (v6 >= 1)
      {
        v8 = 0;
        v51 = *MEMORY[0x1E69DB648];
        v9 = &OBJC_IVAR___VUITextLayout__numberOfLinesAXSmall;
        v10 = &OBJC_IVAR___VUITextLayout__numberOfLinesAXSmall;
        v11 = 0.0;
        do
        {
          v12 = [v55 numberOfScoreValuesForScorecardView:self inRow:{v8, v49}];
          scoreboardLayout = self->_scoreboardLayout;
          if (v8 == 2)
          {
            [(VUIScoreboardLayout *)scoreboardLayout bottomRowLayout];
          }

          else
          {
            [(VUIScoreboardLayout *)scoreboardLayout topRowLayout];
          }
          v54 = ;
          if (v12 >= 1)
          {
            v14 = 0;
            v15 = 0.0;
            v53 = v12;
            do
            {
              v16 = [v55 scoreValue:self inRow:v8 atIndex:v14];
              v17 = [*(&self->super.super.super.isa + v9[29]) objectAtIndexedSubscript:v8];
              v18 = [v17 objectAtIndexedSubscript:v14];
              [v18 CGSizeValue];
              v20 = v19;
              v22 = v21;

              if (v5)
              {
                v23 = [(NSArray *)self->_columnWidths objectAtIndexedSubscript:v14];
                [v23 floatValue];
                v20 = v24;
              }

              else
              {
                if (v15 != 0.0)
                {
                  width = self->_scorecardSize.width;
                  if (v15 + v20 < width)
                  {
                    v20 = width - v15;
                  }
                }

                if (v8 == 2)
                {
                  v20 = self->_scorecardSize.width;
                }
              }

              if (*(&self->super.super.super.isa + v10[25]) == 1)
              {
                v26 = v9;
                v27 = v5;
                v28 = v22 + v52 * 2.0;
                v29 = [v54 backgroundColor];

                if (v29)
                {
                  v30 = [v54 backgroundColor];
                  [v30 setFill];

                  v31 = [v54 backgroundBlendMode];
                  v56.origin.x = v15;
                  v56.origin.y = v11;
                  v56.size.width = v20;
                  v56.size.height = v28;
                  UIRectFillUsingBlendMode(v56, v31);
                }

                v32 = [(VUIScoreboardLayout *)self->_scoreboardLayout textLayout];
                v33 = [v32 color];

                [v33 set];
                v34 = [(VUIScoreboardLayout *)self->_scoreboardLayout textLayout];
                v35 = v34;
                if (v8 == 2)
                {
                  v36 = 1;
                }

                else
                {
                  v36 = 2 * (v14 != 0);
                }

                [v34 setAlignment:v36];
                v37 = [v35 attributedStringWithString:v16 view:self];
                v38 = [v37 attribute:v51 atIndex:0 effectiveRange:0];
                [v55 marginsForRow:v8 atIndex:v14];
                v42 = v41;
                if (v8 == 2)
                {
                  v43 = 0.0;
                }

                else
                {
                  v43 = v39;
                }

                v44 = v15 + v43;
                if (v8 == 2)
                {
                  v45 = 0.0;
                }

                else
                {
                  v45 = v40;
                }

                [v38 ascender];
                VUIRoundValue();
                [v37 drawWithRect:32 options:0 context:{v44, v42 + v11 + v46, v20 - v45, v28}];

                v5 = v27;
                v9 = v26;
                v10 = &OBJC_IVAR___VUITextLayout__numberOfLinesAXSmall;
                v12 = v53;
              }

              v15 = v15 + v20;

              ++v14;
            }

            while (v12 != v14);
          }

          v47 = [(NSArray *)self->_rowHeights objectAtIndexedSubscript:v8];
          [v47 doubleValue];
          v11 = v11 + v48;

          ++v8;
        }

        while (v8 != v50);
      }
    }
  }
}

- (CGSize)_calculateMetricsOfScorecard
{
  if (self->_didCalculatedSize)
  {
    width = self->_scorecardSize.width;
    height = self->_scorecardSize.height;
  }

  else
  {
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(VUIScorecardView *)self delegate];
    v6 = [v5 numberOfRowsInScorecardView:self];
    v42 = [MEMORY[0x1E695DF70] array];
    v40 = v6;
    if (v6 < 1)
    {
      v11 = 0.0;
      v10 = 0.0;
    }

    else
    {
      v7 = 0;
      v8 = *MEMORY[0x1E695F060];
      v9 = *(MEMORY[0x1E695F060] + 8);
      v10 = 0.0;
      v11 = 0.0;
      do
      {
        v44 = v11;
        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v13 = [v5 numberOfScoreValuesForScorecardView:self inRow:v7];
        v14 = 0.0;
        v15 = 0.0;
        v43 = v13 - 1;
        if (v13 >= 1)
        {
          v16 = v13;
          for (i = 0; i != v16; ++i)
          {
            v18 = [v5 scoreValue:self inRow:v7 atIndex:i];
            v19 = [(VUIScoreboardLayout *)self->_scoreboardLayout textLayout];
            v20 = [v19 attributedStringWithString:v18];

            [v20 boundingRectWithSize:41 options:0 context:{v8, v9}];
            [v20 boundingRectWithSize:33 options:0 context:{v8, v9}];
            [v5 marginsForRow:v7 atIndex:i];
            v22 = v21;
            v24 = v23;
            VUIRoundValue();
            v26 = v24 + v25 + v22;
            VUIRoundValue();
            if (v15 <= v27)
            {
              v15 = v27;
            }

            v28 = [MEMORY[0x1E696B098] valueWithCGSize:{v26, v27}];
            [v12 addObject:v28];

            v14 = v14 + v26;
          }
        }

        [v5 marginsForRow:v7 atIndex:0];
        v31 = v30 + v15 + v29;
        v32 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
        [v42 setObject:v32 atIndexedSubscript:v7];

        v11 = v44 + v31;
        [v41 addObject:v12];
        if (v10 < v14 + v43 * 8.0)
        {
          v10 = v14 + v43 * 8.0;
        }

        ++v7;
      }

      while (v7 != v40);
    }

    v33 = [v42 copy];
    rowHeights = self->_rowHeights;
    self->_rowHeights = v33;

    for (j = 8.0; v10 < v11; v10 = v10 + 1.0)
    {
      j = j + 1.0;
    }

    self->_interitemSpacing = j;
    v36 = [v41 copy];
    rowScoreValueSizes = self->_rowScoreValueSizes;
    self->_rowScoreValueSizes = v36;

    self->_scorecardSize.width = v10;
    self->_scorecardSize.height = v11;
    [(VUIScorecardView *)self _calculateColumnSpacing];
    self->_didCalculatedSize = 1;
    width = self->_scorecardSize.width;
    height = self->_scorecardSize.height;
  }

  v38 = width;
  v39 = height;
  result.height = v39;
  result.width = v38;
  return result;
}

- (VUIScorecardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)scorecardSize
{
  width = self->_scorecardSize.width;
  height = self->_scorecardSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end