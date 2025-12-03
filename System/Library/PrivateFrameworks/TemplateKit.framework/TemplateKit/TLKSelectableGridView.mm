@interface TLKSelectableGridView
+ (unint64_t)idealNumberOfColumnsForTitles:(id)titles fittingSize:(CGSize)size containerView:(id)view;
+ (unint64_t)maxColumns;
- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview;
- (TLKSelectableGridViewDelegate)delegate;
- (id)_createButton;
- (id)arrangedEntrySubviews;
- (id)setupContentView;
- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason;
- (void)observedPropertiesChanged;
- (void)selectableGridButtonPressed:(id)pressed;
- (void)setSelectedIndex:(int64_t)index;
- (void)setTuples:(id)tuples;
@end

@implementation TLKSelectableGridView

- (id)setupContentView
{
  [(TLKSelectableGridView *)self setSelectedIndex:-1];
  v3 = [objc_alloc(MEMORY[0x1E698B728]) initWithArrangedSubviewRows:0];
  [v3 setHorizontalDistribution:1];
  [v3 setHorizontalAlignment:3];
  [v3 setVerticalAlignment:1];
  [v3 setRowSpacing:14.0];
  [v3 setColumnSpacing:12.0];
  [v3 setDelegate:self];
  v4 = objc_opt_new();
  [(TLKSelectableGridView *)self setButtons:v4];

  return v3;
}

- (void)setTuples:(id)tuples
{
  v34 = *MEMORY[0x1E69E9840];
  tuplesCopy = tuples;
  if (objc_opt_respondsToSelector())
  {
    [(NSArray *)self->_tuples setObserver:0];
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
      v6 = self->_tuples;
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

  objc_storeStrong(&self->_tuples, tuples);
  if (objc_opt_respondsToSelector())
  {
    [(NSArray *)self->_tuples setObserver:self];
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
      v12 = self->_tuples;
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

- (void)observedPropertiesChanged
{
  tuples = [(TLKSelectableGridView *)self tuples];
  v4 = [tuples count];
  buttons = [(TLKSelectableGridView *)self buttons];
  v6 = [buttons count];

  if (v4 > v6)
  {
    buttons2 = [(TLKSelectableGridView *)self buttons];
    v8 = [buttons2 count];

    while (1)
    {
      tuples2 = [(TLKSelectableGridView *)self tuples];
      v10 = [tuples2 count];
      v11 = [objc_opt_class() maxColumns] + v10;

      if (v8 >= v11)
      {
        break;
      }

      buttons3 = [(TLKSelectableGridView *)self buttons];
      _createButton = [(TLKSelectableGridView *)self _createButton];
      [buttons3 addObject:_createButton];

      ++v8;
    }
  }

  contentView = [(TLKView *)self contentView];
  [contentView invalidateIntrinsicContentSize];

  [(TLKSelectableGridView *)self setNeedsLayout];
}

- (void)containerView:(id)view willMeasureArrangedSubviewsFittingSize:(CGSize)size forReason:(int64_t)reason
{
  height = size.height;
  width = size.width;
  viewCopy = view;
  if (!reason || ([(TLKSelectableGridView *)self lastMeasuredWidth], v9 != width))
  {
    [(TLKSelectableGridView *)self setLastMeasuredWidth:width];
    v10 = objc_opt_class();
    tuples = [(TLKSelectableGridView *)self tuples];
    v12 = [v10 idealNumberOfColumnsForTitles:tuples fittingSize:viewCopy containerView:{width, height}];

    if (v12)
    {
      tuples2 = [(TLKSelectableGridView *)self tuples];
      v14 = [tuples2 count] / v12;
    }

    else
    {
      v14 = 0;
    }

    tuples3 = [(TLKSelectableGridView *)self tuples];
    v16 = [tuples3 count] % v12;

    if (v16)
    {
      v17 = v14 + 1;
    }

    else
    {
      v17 = v14;
    }

    if ([viewCopy numberOfRows])
    {
      numberOfRows = [viewCopy numberOfRows];
      if (numberOfRows)
      {
        v19 = numberOfRows;
        do
        {
          [viewCopy removeRowAtIndex:0];
          --v19;
        }

        while (v19);
      }
    }

    if (v17)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        buttons = [(TLKSelectableGridView *)self buttons];
        buttons2 = [(TLKSelectableGridView *)self buttons];
        v24 = [buttons2 count] + v20;

        if (v12 >= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v12;
        }

        v26 = [buttons subarrayWithRange:{v21, v25}];
        v27 = [viewCopy addRowWithArrangedSubviews:v26];

        v21 += v12;
        v20 -= v12;
        --v17;
      }

      while (v17);
    }

    buttons3 = [(TLKSelectableGridView *)self buttons];
    v29 = [buttons3 count];

    if (v29)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        buttons4 = [(TLKSelectableGridView *)self buttons];
        v33 = [buttons4 objectAtIndexedSubscript:v30];

        tuples4 = [(TLKSelectableGridView *)self tuples];
        v35 = [tuples4 count];

        if (v30 >= v35)
        {
          [v33 setHidden:1];
        }

        else
        {
          [v33 setHidden:0];
          [v33 setCustomHighlight:{v30 == -[TLKSelectableGridView selectedIndex](self, "selectedIndex")}];
          tuples5 = [(TLKSelectableGridView *)self tuples];
          v37 = [tuples5 objectAtIndexedSubscript:v30];
          subtitle = [v37 subtitle];

          tuples6 = [(TLKSelectableGridView *)self tuples];
          v40 = [tuples6 objectAtIndexedSubscript:v30];
          title = [v40 title];
          [v33 setTitle:title subtitle:subtitle];

          v31 |= [subtitle length] != 0;
        }

        ++v30;
        buttons5 = [(TLKSelectableGridView *)self buttons];
        v43 = [buttons5 count];
      }

      while (v30 < v43);
      v44 = v31 ^ 1;
    }

    else
    {
      v44 = 1;
    }

    buttons6 = [(TLKSelectableGridView *)self buttons];
    v46 = [buttons6 count];

    if (v46)
    {
      v47 = 0;
      do
      {
        buttons7 = [(TLKSelectableGridView *)self buttons];
        v49 = [buttons7 objectAtIndexedSubscript:v47];

        tuples7 = [(TLKSelectableGridView *)self tuples];
        v51 = [tuples7 count];

        if (v47 < v51)
        {
          bottomLabel = [v49 bottomLabel];
          [bottomLabel setHidden:v44 & 1];
        }

        ++v47;
        buttons8 = [(TLKSelectableGridView *)self buttons];
        v54 = [buttons8 count];
      }

      while (v47 < v54);
    }
  }
}

+ (unint64_t)maxColumns
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    v3 = 6;
  }

  else
  {
    v3 = 4;
  }

  return v3;
}

+ (unint64_t)idealNumberOfColumnsForTitles:(id)titles fittingSize:(CGSize)size containerView:(id)view
{
  height = size.height;
  width = size.width;
  v37 = *MEMORY[0x1E69E9840];
  titlesCopy = titles;
  viewCopy = view;
  v10 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INTERACTIVE, 0);
  v11 = [titlesCopy count];
  v12 = dispatch_queue_create("concurrent", v10);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__TLKSelectableGridView_idealNumberOfColumnsForTitles_fittingSize_containerView___block_invoke;
  block[3] = &unk_1E7FD9000;
  v13 = titlesCopy;
  v33 = v13;
  v34 = width;
  v35 = height;
  dispatch_apply(v11, v12, block);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    v18 = 0.0;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v28 + 1) + 8 * i) size];
        if (v18 < v20)
        {
          v18 = v20;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v16);
    v21 = v18 + 10.0;
  }

  else
  {
    v21 = 10.0;
  }

  [viewCopy layoutMargins];
  v23 = width + v22 * -2.0;
  [viewCopy columnSpacing];
  v25 = floor(v23 / (v21 + v24));
  maxColumns = [objc_opt_class() maxColumns];
  if (v25 >= maxColumns)
  {
    v25 = maxColumns;
  }

  return v25;
}

void __81__TLKSelectableGridView_idealNumberOfColumnsForTitles_fittingSize_containerView___block_invoke(uint64_t a1, uint64_t a2)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v5 = [v4 title];
  v24 = *MEMORY[0x1E69DB648];
  v6 = v24;
  v7 = +[TLKFontUtilities subheadFont];
  v25[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  [v5 boundingRectWithSize:1 options:v8 attributes:0 context:{*(a1 + 40), *(a1 + 48)}];
  v10 = v9;
  v11 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [v11 setSize:v10];

  v12 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [v12 size];
  v14 = v13;

  v15 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v16 = [v15 subtitle];
  v22 = v6;
  v17 = +[TLKFontUtilities footnoteFont];
  v23 = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  [v16 boundingRectWithSize:1 options:v18 attributes:0 context:{*(a1 + 40), *(a1 + 48)}];
  v20 = v19;

  if (v14 < v20)
  {
    v14 = v20;
  }

  v21 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [v21 setSize:v14];
}

- (id)_createButton
{
  v3 = +[TLKSelectableGridButton selectableGridButton];
  [v3 addTarget:self action:sel_selectableGridButtonPressed_ forControlEvents:64];

  return v3;
}

- (void)setSelectedIndex:(int64_t)index
{
  if (self->_selectedIndex != index)
  {
    self->_selectedIndex = index;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      [v5 selectableGridView:self didChangeSelectedIndex:self->_selectedIndex];
    }

    observer = [(TLKView *)self observer];
    [observer propertiesDidChange];
  }
}

- (void)selectableGridButtonPressed:(id)pressed
{
  v25 = *MEMORY[0x1E69E9840];
  pressedCopy = pressed;
  contentView = [(TLKView *)self contentView];
  numberOfRows = [contentView numberOfRows];

  if (numberOfRows)
  {
    for (i = 0; i != numberOfRows; ++i)
    {
      contentView2 = [(TLKView *)self contentView];
      v9 = [contentView2 rowAtIndex:i];
      arrangedSubviews = [v9 arrangedSubviews];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = arrangedSubviews;
      v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v21;
        while (2)
        {
          v16 = 0;
          v17 = -v14;
          v14 += v13;
          do
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v11);
            }

            if ([*(*(&v20 + 1) + 8 * v16) isEqual:pressedCopy])
            {
              contentView3 = [(TLKView *)self contentView];
              v19 = [contentView3 numberOfColumns] * i - v17;

              [(TLKSelectableGridView *)self setSelectedIndex:v19];
              goto LABEL_14;
            }

            ++v16;
            --v17;
          }

          while (v13 != v16);
          v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }
  }

LABEL_14:
}

- (CGSize)containerView:(id)view systemLayoutSizeFittingSize:(CGSize)size forArrangedSubview:(id)subview
{
  [subview systemLayoutSizeFittingSize:{view, size.width, size.height}];
  if (v5 < 58.0)
  {
    v5 = 58.0;
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (id)arrangedEntrySubviews
{
  contentView = [(TLKView *)self contentView];
  arrangedSubviews = [contentView arrangedSubviews];

  return arrangedSubviews;
}

- (TLKSelectableGridViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end