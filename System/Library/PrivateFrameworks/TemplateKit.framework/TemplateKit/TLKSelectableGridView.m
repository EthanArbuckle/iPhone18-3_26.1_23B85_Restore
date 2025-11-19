@interface TLKSelectableGridView
+ (unint64_t)idealNumberOfColumnsForTitles:(id)a3 fittingSize:(CGSize)a4 containerView:(id)a5;
+ (unint64_t)maxColumns;
- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5;
- (TLKSelectableGridViewDelegate)delegate;
- (id)_createButton;
- (id)arrangedEntrySubviews;
- (id)setupContentView;
- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5;
- (void)observedPropertiesChanged;
- (void)selectableGridButtonPressed:(id)a3;
- (void)setSelectedIndex:(int64_t)a3;
- (void)setTuples:(id)a3;
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

- (void)setTuples:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(NSArray *)self->_tuples setObserver:0];
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

      v5 = v23;
    }
  }

  objc_storeStrong(&self->_tuples, a3);
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

- (void)observedPropertiesChanged
{
  v3 = [(TLKSelectableGridView *)self tuples];
  v4 = [v3 count];
  v5 = [(TLKSelectableGridView *)self buttons];
  v6 = [v5 count];

  if (v4 > v6)
  {
    v7 = [(TLKSelectableGridView *)self buttons];
    v8 = [v7 count];

    while (1)
    {
      v9 = [(TLKSelectableGridView *)self tuples];
      v10 = [v9 count];
      v11 = [objc_opt_class() maxColumns] + v10;

      if (v8 >= v11)
      {
        break;
      }

      v12 = [(TLKSelectableGridView *)self buttons];
      v13 = [(TLKSelectableGridView *)self _createButton];
      [v12 addObject:v13];

      ++v8;
    }
  }

  v14 = [(TLKView *)self contentView];
  [v14 invalidateIntrinsicContentSize];

  [(TLKSelectableGridView *)self setNeedsLayout];
}

- (void)containerView:(id)a3 willMeasureArrangedSubviewsFittingSize:(CGSize)a4 forReason:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v55 = a3;
  if (!a5 || ([(TLKSelectableGridView *)self lastMeasuredWidth], v9 != width))
  {
    [(TLKSelectableGridView *)self setLastMeasuredWidth:width];
    v10 = objc_opt_class();
    v11 = [(TLKSelectableGridView *)self tuples];
    v12 = [v10 idealNumberOfColumnsForTitles:v11 fittingSize:v55 containerView:{width, height}];

    if (v12)
    {
      v13 = [(TLKSelectableGridView *)self tuples];
      v14 = [v13 count] / v12;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(TLKSelectableGridView *)self tuples];
    v16 = [v15 count] % v12;

    if (v16)
    {
      v17 = v14 + 1;
    }

    else
    {
      v17 = v14;
    }

    if ([v55 numberOfRows])
    {
      v18 = [v55 numberOfRows];
      if (v18)
      {
        v19 = v18;
        do
        {
          [v55 removeRowAtIndex:0];
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
        v22 = [(TLKSelectableGridView *)self buttons];
        v23 = [(TLKSelectableGridView *)self buttons];
        v24 = [v23 count] + v20;

        if (v12 >= v24)
        {
          v25 = v24;
        }

        else
        {
          v25 = v12;
        }

        v26 = [v22 subarrayWithRange:{v21, v25}];
        v27 = [v55 addRowWithArrangedSubviews:v26];

        v21 += v12;
        v20 -= v12;
        --v17;
      }

      while (v17);
    }

    v28 = [(TLKSelectableGridView *)self buttons];
    v29 = [v28 count];

    if (v29)
    {
      v30 = 0;
      v31 = 0;
      do
      {
        v32 = [(TLKSelectableGridView *)self buttons];
        v33 = [v32 objectAtIndexedSubscript:v30];

        v34 = [(TLKSelectableGridView *)self tuples];
        v35 = [v34 count];

        if (v30 >= v35)
        {
          [v33 setHidden:1];
        }

        else
        {
          [v33 setHidden:0];
          [v33 setCustomHighlight:{v30 == -[TLKSelectableGridView selectedIndex](self, "selectedIndex")}];
          v36 = [(TLKSelectableGridView *)self tuples];
          v37 = [v36 objectAtIndexedSubscript:v30];
          v38 = [v37 subtitle];

          v39 = [(TLKSelectableGridView *)self tuples];
          v40 = [v39 objectAtIndexedSubscript:v30];
          v41 = [v40 title];
          [v33 setTitle:v41 subtitle:v38];

          v31 |= [v38 length] != 0;
        }

        ++v30;
        v42 = [(TLKSelectableGridView *)self buttons];
        v43 = [v42 count];
      }

      while (v30 < v43);
      v44 = v31 ^ 1;
    }

    else
    {
      v44 = 1;
    }

    v45 = [(TLKSelectableGridView *)self buttons];
    v46 = [v45 count];

    if (v46)
    {
      v47 = 0;
      do
      {
        v48 = [(TLKSelectableGridView *)self buttons];
        v49 = [v48 objectAtIndexedSubscript:v47];

        v50 = [(TLKSelectableGridView *)self tuples];
        v51 = [v50 count];

        if (v47 < v51)
        {
          v52 = [v49 bottomLabel];
          [v52 setHidden:v44 & 1];
        }

        ++v47;
        v53 = [(TLKSelectableGridView *)self buttons];
        v54 = [v53 count];
      }

      while (v47 < v54);
    }
  }
}

+ (unint64_t)maxColumns
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = 6;
  }

  else
  {
    v3 = 4;
  }

  return v3;
}

+ (unint64_t)idealNumberOfColumnsForTitles:(id)a3 fittingSize:(CGSize)a4 containerView:(id)a5
{
  height = a4.height;
  width = a4.width;
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x1E69E96A8], QOS_CLASS_USER_INTERACTIVE, 0);
  v11 = [v8 count];
  v12 = dispatch_queue_create("concurrent", v10);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__TLKSelectableGridView_idealNumberOfColumnsForTitles_fittingSize_containerView___block_invoke;
  block[3] = &unk_1E7FD9000;
  v13 = v8;
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

  [v9 layoutMargins];
  v23 = width + v22 * -2.0;
  [v9 columnSpacing];
  v25 = floor(v23 / (v21 + v24));
  v26 = [objc_opt_class() maxColumns];
  if (v25 >= v26)
  {
    v25 = v26;
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

- (void)setSelectedIndex:(int64_t)a3
{
  if (self->_selectedIndex != a3)
  {
    self->_selectedIndex = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      [v5 selectableGridView:self didChangeSelectedIndex:self->_selectedIndex];
    }

    v6 = [(TLKView *)self observer];
    [v6 propertiesDidChange];
  }
}

- (void)selectableGridButtonPressed:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TLKView *)self contentView];
  v6 = [v5 numberOfRows];

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [(TLKView *)self contentView];
      v9 = [v8 rowAtIndex:i];
      v10 = [v9 arrangedSubviews];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v11 = v10;
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

            if ([*(*(&v20 + 1) + 8 * v16) isEqual:v4])
            {
              v18 = [(TLKView *)self contentView];
              v19 = [v18 numberOfColumns] * i - v17;

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

- (CGSize)containerView:(id)a3 systemLayoutSizeFittingSize:(CGSize)a4 forArrangedSubview:(id)a5
{
  [a5 systemLayoutSizeFittingSize:{a3, a4.width, a4.height}];
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
  v2 = [(TLKView *)self contentView];
  v3 = [v2 arrangedSubviews];

  return v3;
}

- (TLKSelectableGridViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end