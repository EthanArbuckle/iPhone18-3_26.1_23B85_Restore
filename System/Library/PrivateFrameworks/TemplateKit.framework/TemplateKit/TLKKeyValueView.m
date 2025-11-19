@interface TLKKeyValueView
+ (unint64_t)visibleRowsInGrid:(id)a3;
- (BOOL)containerView:(id)a3 shouldRestartMeasurementDueToCompressionInAxis:(int64_t)a4 forReason:(int64_t)a5;
- (BOOL)leadingGridIsHidden;
- (BOOL)trailingGridIsHidden;
- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)a5;
- (id)leadingTextKeyLabels;
- (id)setupContentView;
- (int64_t)currentStackViewDistribution;
- (unint64_t)numberOfVisibleRowsForLeadingGrid;
- (unint64_t)numberOfVisibleRowsForTrailingGrid;
- (void)_reconfigureForCompressedState;
- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5;
- (void)observedPropertiesChanged;
- (void)setImage:(id)a3;
- (void)setLeadingTuples:(id)a3;
- (void)setTrailingTuples:(id)a3;
@end

@implementation TLKKeyValueView

- (id)setupContentView
{
  v3 = objc_opt_new();
  [v3 setDelegate:self];
  v4 = objc_opt_new();
  [v3 addArrangedSubview:v4];
  [(TLKKeyValueView *)self setLeadingGrid:v4];
  v5 = objc_opt_new();
  [v3 addArrangedSubview:v5];
  [(TLKKeyValueView *)self setTrailingGrid:v5];
  v6 = objc_opt_new();
  [TLKLayoutUtilities requireIntrinsicSizeForView:v6];
  [v3 addArrangedSubview:v6];
  [(TLKKeyValueView *)self setImageView:v6];

  return v3;
}

- (void)setLeadingTuples:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(NSArray *)self->_leadingTuples setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_leadingTuples;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v11 setObserver:0];
            }
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_leadingTuples, a3);
  if (objc_opt_respondsToSelector())
  {
    [(NSArray *)self->_leadingTuples setObserver:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = self->_leadingTuples;
      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v17 setObserver:self];
            }
          }

          v14 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  v18 = [(TLKView *)self observer];
  if (v18)
  {
    v19 = v18;
    v20 = [(TLKView *)self observer];
    v21 = [v20 batchUpdateCount];

    if (!v21)
    {
      v22 = [(TLKView *)self observer];
      [v22 propertiesDidChange];
    }
  }
}

- (void)setTrailingTuples:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(NSArray *)self->_trailingTuples setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v5;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v6 = self->_trailingTuples;
      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v11 setObserver:0];
            }
          }

          v8 = [(NSArray *)v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_trailingTuples, a3);
  if (objc_opt_respondsToSelector())
  {
    [(NSArray *)self->_trailingTuples setObserver:self];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = self->_trailingTuples;
      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v25;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v25 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v24 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v17 setObserver:self];
            }
          }

          v14 = [(NSArray *)v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        }

        while (v14);
      }
    }
  }

  v18 = [(TLKView *)self observer];
  if (v18)
  {
    v19 = v18;
    v20 = [(TLKView *)self observer];
    v21 = [v20 batchUpdateCount];

    if (!v21)
    {
      v22 = [(TLKView *)self observer];
      [v22 propertiesDidChange];
    }
  }
}

- (void)setImage:(id)a3
{
  v10 = a3;
  if (self->_image != v10)
  {
    objc_storeStrong(&self->_image, a3);
    v5 = [(TLKView *)self observer];
    if (v5)
    {
      v6 = v5;
      v7 = [(TLKView *)self observer];
      v8 = [v7 batchUpdateCount];

      if (!v8)
      {
        v9 = [(TLKView *)self observer];
        [v9 propertiesDidChange];
      }
    }
  }
}

- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5
{
  width = a4.width;
  if (self->_lastMeasuredWidth < a4.width)
  {
    [(TLKKeyValueView *)self observedPropertiesChanged:a3];
  }

  self->_lastMeasuredWidth = width;
}

- (void)_reconfigureForCompressedState
{
  v3 = [(TLKKeyValueView *)self trailingGrid];
  [v3 setHidden:1];

  v12 = objc_opt_new();
  for (i = 0; ; ++i)
  {
    v5 = [(TLKKeyValueView *)self leadingTuples];
    v6 = [v5 count];
    v7 = [(TLKKeyValueView *)self trailingTuples];
    v8 = [v7 count] + v6;

    if (i >= v8)
    {
      break;
    }

    if (i)
    {
      [(TLKKeyValueView *)self trailingTuples];
    }

    else
    {
      [(TLKKeyValueView *)self leadingTuples];
    }
    v9 = ;
    v10 = [v9 objectAtIndex:i >> 1];
    [v12 addObject:v10];
  }

  v11 = [(TLKKeyValueView *)self leadingGrid];
  [v11 updateWithTuples:v12 valueColumnIsTrailing:0 truncateKey:1];
}

- (BOOL)containerView:(id)a3 shouldRestartMeasurementDueToCompressionInAxis:(int64_t)a4 forReason:(int64_t)a5
{
  if (a5 | a4)
  {
    return 0;
  }

  v7 = [(TLKKeyValueView *)self trailingTuples];

  if (!v7)
  {
    return 0;
  }

  [(TLKKeyValueView *)self _reconfigureForCompressedState];
  return 1;
}

- (void)observedPropertiesChanged
{
  v3 = [(TLKKeyValueView *)self image];
  v4 = [(TLKKeyValueView *)self imageView];
  [v4 setTlkImage:v3];

  v5 = [(TLKKeyValueView *)self image];
  v6 = [(TLKKeyValueView *)self imageView];
  [v6 setHidden:v5 == 0];

  v7 = [(TLKKeyValueView *)self leadingTuples];
  v8 = [(TLKKeyValueView *)self leadingGrid];
  [v8 setHidden:v7 == 0];

  v9 = [(TLKKeyValueView *)self trailingTuples];
  v10 = [(TLKKeyValueView *)self trailingGrid];
  [v10 setHidden:v9 == 0];

  v11 = [(TLKKeyValueView *)self trailingTuples];
  v12 = v11 != 0;

  v13 = [(TLKKeyValueView *)self leadingGrid];
  v14 = [(TLKKeyValueView *)self leadingTuples];
  [v13 updateWithTuples:v14 valueColumnIsTrailing:v12 truncateKey:v12];

  v15 = [(TLKKeyValueView *)self trailingGrid];
  v16 = [(TLKKeyValueView *)self trailingTuples];
  [v15 updateWithTuples:v16 valueColumnIsTrailing:v12 truncateKey:v12];

  v17 = [(TLKKeyValueView *)self image];
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v19 = [(TLKKeyValueView *)self leadingTuples];
    if (v19)
    {
      v20 = [(TLKKeyValueView *)self trailingTuples];
      v18 = v20 != 0;
    }

    else
    {
      v18 = 0;
    }
  }

  v21 = [(TLKView *)self contentView];
  [v21 setDistribution:v18];

  v22 = [(TLKView *)self contentView];
  v23 = v22;
  if (v18)
  {
    v24 = 1;
  }

  else
  {
    v24 = 3;
  }

  if (v18)
  {
    v25 = 24.0;
  }

  else
  {
    v25 = 10.0;
  }

  [v22 setAlignment:v24];

  v26 = [(TLKView *)self contentView];
  [v26 setSpacing:v25];
}

- (CGRect)containerView:(id)a3 layoutFrameForArrangedSubview:(id)a4 withProposedFrame:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v10 = a4;
  v11 = [(TLKKeyValueView *)self imageView];
  if (v11 == v10)
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(TLKKeyValueView *)self trailingGrid];
  v13 = [v12 isHidden];

  if ((v13 & 1) == 0)
  {
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v14 = CGRectGetWidth(v30);
    v15 = [(TLKKeyValueView *)self leadingGrid];
    v16 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
    [v15 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], v17}];
    v19 = v18;

    v20 = [(TLKKeyValueView *)self trailingGrid];
    [v20 systemLayoutSizeFittingSize:{v16, v17}];
    v22 = v21;

    if (v19 >= v22)
    {
      v23 = v19;
    }

    else
    {
      v23 = v22;
    }

    if (v14 >= v23)
    {
      v14 = v23;
    }

    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v24 = CGRectGetWidth(v31) - v14;
    v11 = [(TLKKeyValueView *)self trailingGrid];
    v25 = 0.0;
    if (v11 == v10)
    {
      v25 = v24;
    }

    x = x + v25;
    width = v14;
    goto LABEL_11;
  }

LABEL_12:

  v26 = x;
  v27 = y;
  v28 = width;
  v29 = height;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (int64_t)currentStackViewDistribution
{
  v2 = [(TLKView *)self contentView];
  v3 = [v2 distribution];

  return v3;
}

- (BOOL)leadingGridIsHidden
{
  v2 = [(TLKKeyValueView *)self leadingGrid];
  v3 = [v2 isHidden];

  return v3;
}

- (BOOL)trailingGridIsHidden
{
  v2 = [(TLKKeyValueView *)self trailingGrid];
  v3 = [v2 isHidden];

  return v3;
}

- (unint64_t)numberOfVisibleRowsForLeadingGrid
{
  v3 = objc_opt_class();
  v4 = [(TLKKeyValueView *)self leadingGrid];
  v5 = [v3 visibleRowsInGrid:v4];

  return v5;
}

- (unint64_t)numberOfVisibleRowsForTrailingGrid
{
  v3 = objc_opt_class();
  v4 = [(TLKKeyValueView *)self trailingGrid];
  v5 = [v3 visibleRowsInGrid:v4];

  return v5;
}

- (id)leadingTextKeyLabels
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = [(TLKKeyValueView *)self leadingGrid];
  v6 = [v4 visibleRowsInGrid:v5];

  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [(TLKKeyValueView *)self leadingGrid];
      v9 = [v8 keyLabels];
      v10 = [v9 objectAtIndexedSubscript:v7];
      v11 = [v10 text];

      if (v11)
      {
        v12 = [(TLKKeyValueView *)self leadingGrid];
        v13 = [v12 keyLabels];
        v14 = [v13 objectAtIndexedSubscript:v7];
        v15 = [v14 text];
        [v3 addObject:v15];
      }

      else
      {
        [v3 addObject:&stru_1F3A9C928];
      }

      ++v7;
      v16 = objc_opt_class();
      v17 = [(TLKKeyValueView *)self leadingGrid];
      v18 = [v16 visibleRowsInGrid:v17];
    }

    while (v7 < v18);
  }

  return v3;
}

+ (unint64_t)visibleRowsInGrid:(id)a3
{
  v3 = a3;
  if ([v3 numberOfRows])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [v3 rowAtIndex:v4];
      v7 = [v6 isHidden];

      v5 += v7 ^ 1u;
      ++v4;
    }

    while (v4 < [v3 numberOfRows]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end