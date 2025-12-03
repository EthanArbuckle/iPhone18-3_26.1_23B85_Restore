@interface TLKKeyValueView
+ (unint64_t)visibleRowsInGrid:(id)grid;
- (BOOL)containerView:(id)view shouldRestartMeasurementDueToCompressionInAxis:(int64_t)axis forReason:(int64_t)reason;
- (BOOL)leadingGridIsHidden;
- (BOOL)trailingGridIsHidden;
- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame;
- (id)leadingTextKeyLabels;
- (id)setupContentView;
- (int64_t)currentStackViewDistribution;
- (unint64_t)numberOfVisibleRowsForLeadingGrid;
- (unint64_t)numberOfVisibleRowsForTrailingGrid;
- (void)_reconfigureForCompressedState;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)observedPropertiesChanged;
- (void)setImage:(id)image;
- (void)setLeadingTuples:(id)tuples;
- (void)setTrailingTuples:(id)tuples;
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

- (void)setLeadingTuples:(id)tuples
{
  v34 = *MEMORY[0x1E69E9840];
  tuplesCopy = tuples;
  if (objc_opt_respondsToSelector())
  {
    [(NSArray *)self->_leadingTuples setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = tuplesCopy;
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

      tuplesCopy = v23;
    }
  }

  objc_storeStrong(&self->_leadingTuples, tuples);
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

  observer = [(TLKView *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKView *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKView *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (void)setTrailingTuples:(id)tuples
{
  v34 = *MEMORY[0x1E69E9840];
  tuplesCopy = tuples;
  if (objc_opt_respondsToSelector())
  {
    [(NSArray *)self->_trailingTuples setObserver:0];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = tuplesCopy;
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

      tuplesCopy = v23;
    }
  }

  objc_storeStrong(&self->_trailingTuples, tuples);
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

  observer = [(TLKView *)self observer];
  if (observer)
  {
    v19 = observer;
    observer2 = [(TLKView *)self observer];
    batchUpdateCount = [observer2 batchUpdateCount];

    if (!batchUpdateCount)
    {
      observer3 = [(TLKView *)self observer];
      [observer3 propertiesDidChange];
    }
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (self->_image != imageCopy)
  {
    objc_storeStrong(&self->_image, image);
    observer = [(TLKView *)self observer];
    if (observer)
    {
      v6 = observer;
      observer2 = [(TLKView *)self observer];
      batchUpdateCount = [observer2 batchUpdateCount];

      if (!batchUpdateCount)
      {
        observer3 = [(TLKView *)self observer];
        [observer3 propertiesDidChange];
      }
    }
  }
}

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  width = size.width;
  if (self->_lastMeasuredWidth < size.width)
  {
    [(TLKKeyValueView *)self observedPropertiesChanged:view];
  }

  self->_lastMeasuredWidth = width;
}

- (void)_reconfigureForCompressedState
{
  trailingGrid = [(TLKKeyValueView *)self trailingGrid];
  [trailingGrid setHidden:1];

  v12 = objc_opt_new();
  for (i = 0; ; ++i)
  {
    leadingTuples = [(TLKKeyValueView *)self leadingTuples];
    v6 = [leadingTuples count];
    trailingTuples = [(TLKKeyValueView *)self trailingTuples];
    v8 = [trailingTuples count] + v6;

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

  leadingGrid = [(TLKKeyValueView *)self leadingGrid];
  [leadingGrid updateWithTuples:v12 valueColumnIsTrailing:0 truncateKey:1];
}

- (BOOL)containerView:(id)view shouldRestartMeasurementDueToCompressionInAxis:(int64_t)axis forReason:(int64_t)reason
{
  if (reason | axis)
  {
    return 0;
  }

  trailingTuples = [(TLKKeyValueView *)self trailingTuples];

  if (!trailingTuples)
  {
    return 0;
  }

  [(TLKKeyValueView *)self _reconfigureForCompressedState];
  return 1;
}

- (void)observedPropertiesChanged
{
  image = [(TLKKeyValueView *)self image];
  imageView = [(TLKKeyValueView *)self imageView];
  [imageView setTlkImage:image];

  image2 = [(TLKKeyValueView *)self image];
  imageView2 = [(TLKKeyValueView *)self imageView];
  [imageView2 setHidden:image2 == 0];

  leadingTuples = [(TLKKeyValueView *)self leadingTuples];
  leadingGrid = [(TLKKeyValueView *)self leadingGrid];
  [leadingGrid setHidden:leadingTuples == 0];

  trailingTuples = [(TLKKeyValueView *)self trailingTuples];
  trailingGrid = [(TLKKeyValueView *)self trailingGrid];
  [trailingGrid setHidden:trailingTuples == 0];

  trailingTuples2 = [(TLKKeyValueView *)self trailingTuples];
  v12 = trailingTuples2 != 0;

  leadingGrid2 = [(TLKKeyValueView *)self leadingGrid];
  leadingTuples2 = [(TLKKeyValueView *)self leadingTuples];
  [leadingGrid2 updateWithTuples:leadingTuples2 valueColumnIsTrailing:v12 truncateKey:v12];

  trailingGrid2 = [(TLKKeyValueView *)self trailingGrid];
  trailingTuples3 = [(TLKKeyValueView *)self trailingTuples];
  [trailingGrid2 updateWithTuples:trailingTuples3 valueColumnIsTrailing:v12 truncateKey:v12];

  image3 = [(TLKKeyValueView *)self image];
  if (image3)
  {
    v18 = 0;
  }

  else
  {
    leadingTuples3 = [(TLKKeyValueView *)self leadingTuples];
    if (leadingTuples3)
    {
      trailingTuples4 = [(TLKKeyValueView *)self trailingTuples];
      v18 = trailingTuples4 != 0;
    }

    else
    {
      v18 = 0;
    }
  }

  contentView = [(TLKView *)self contentView];
  [contentView setDistribution:v18];

  contentView2 = [(TLKView *)self contentView];
  v23 = contentView2;
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

  [contentView2 setAlignment:v24];

  contentView3 = [(TLKView *)self contentView];
  [contentView3 setSpacing:v25];
}

- (CGRect)containerView:(id)view layoutFrameForArrangedSubview:(id)subview withProposedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  subviewCopy = subview;
  imageView = [(TLKKeyValueView *)self imageView];
  if (imageView == subviewCopy)
  {
LABEL_11:

    goto LABEL_12;
  }

  trailingGrid = [(TLKKeyValueView *)self trailingGrid];
  isHidden = [trailingGrid isHidden];

  if ((isHidden & 1) == 0)
  {
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v14 = CGRectGetWidth(v30);
    leadingGrid = [(TLKKeyValueView *)self leadingGrid];
    v16 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
    [leadingGrid systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], v17}];
    v19 = v18;

    trailingGrid2 = [(TLKKeyValueView *)self trailingGrid];
    [trailingGrid2 systemLayoutSizeFittingSize:{v16, v17}];
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
    imageView = [(TLKKeyValueView *)self trailingGrid];
    v25 = 0.0;
    if (imageView == subviewCopy)
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
  contentView = [(TLKView *)self contentView];
  distribution = [contentView distribution];

  return distribution;
}

- (BOOL)leadingGridIsHidden
{
  leadingGrid = [(TLKKeyValueView *)self leadingGrid];
  isHidden = [leadingGrid isHidden];

  return isHidden;
}

- (BOOL)trailingGridIsHidden
{
  trailingGrid = [(TLKKeyValueView *)self trailingGrid];
  isHidden = [trailingGrid isHidden];

  return isHidden;
}

- (unint64_t)numberOfVisibleRowsForLeadingGrid
{
  v3 = objc_opt_class();
  leadingGrid = [(TLKKeyValueView *)self leadingGrid];
  v5 = [v3 visibleRowsInGrid:leadingGrid];

  return v5;
}

- (unint64_t)numberOfVisibleRowsForTrailingGrid
{
  v3 = objc_opt_class();
  trailingGrid = [(TLKKeyValueView *)self trailingGrid];
  v5 = [v3 visibleRowsInGrid:trailingGrid];

  return v5;
}

- (id)leadingTextKeyLabels
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  leadingGrid = [(TLKKeyValueView *)self leadingGrid];
  v6 = [v4 visibleRowsInGrid:leadingGrid];

  if (v6)
  {
    v7 = 0;
    do
    {
      leadingGrid2 = [(TLKKeyValueView *)self leadingGrid];
      keyLabels = [leadingGrid2 keyLabels];
      v10 = [keyLabels objectAtIndexedSubscript:v7];
      text = [v10 text];

      if (text)
      {
        leadingGrid3 = [(TLKKeyValueView *)self leadingGrid];
        keyLabels2 = [leadingGrid3 keyLabels];
        v14 = [keyLabels2 objectAtIndexedSubscript:v7];
        text2 = [v14 text];
        [v3 addObject:text2];
      }

      else
      {
        [v3 addObject:&stru_1F3A9C928];
      }

      ++v7;
      v16 = objc_opt_class();
      leadingGrid4 = [(TLKKeyValueView *)self leadingGrid];
      v18 = [v16 visibleRowsInGrid:leadingGrid4];
    }

    while (v7 < v18);
  }

  return v3;
}

+ (unint64_t)visibleRowsInGrid:(id)grid
{
  gridCopy = grid;
  if ([gridCopy numberOfRows])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = [gridCopy rowAtIndex:v4];
      isHidden = [v6 isHidden];

      v5 += isHidden ^ 1u;
      ++v4;
    }

    while (v4 < [gridCopy numberOfRows]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end