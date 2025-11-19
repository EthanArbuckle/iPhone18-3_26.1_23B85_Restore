@interface TVRUITabSelectorControl
+ (double)defaultHeight;
- (TVRUITabSelectorControl)initWithItems:(id)a3 styleProvider:(id)a4;
- (TVRUITabSelectorControlDelegate)delegate;
- (id)_cellResolvedLayoutResultsForItems:(id)a3;
- (id)_layout;
- (unint64_t)selectedIndex;
- (void)_configure;
- (void)_updateFromItemsAnimated:(BOOL)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)setSelectedIndex:(unint64_t)a3;
- (void)updateItems:(id)a3 animated:(BOOL)a4;
@end

@implementation TVRUITabSelectorControl

- (TVRUITabSelectorControl)initWithItems:(id)a3 styleProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = TVRUITabSelectorControl;
  v8 = [(TVRUITabSelectorControl *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB70] orderedSetWithArray:v6];
    v10 = [v9 array];
    items = v8->_items;
    v8->_items = v10;

    objc_storeStrong(&v8->_styleProvider, a4);
    v8->_prefersCenteredItems = 1;
    previousSelectedItem = v8->_previousSelectedItem;
    v8->_previousSelectedItem = 0;

    [(TVRUITabSelectorControl *)v8 _configure];
    [(TVRUITabSelectorControl *)v8 _updateFromItemsAnimated:0];
    if ([v6 count])
    {
      [(TVRUITabSelectorControl *)v8 setSelectedIndex:0];
    }
  }

  return v8;
}

- (void)updateItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = [MEMORY[0x277CBEB70] orderedSetWithArray:a3];
  v6 = [v8 array];
  items = self->_items;
  self->_items = v6;

  [(TVRUITabSelectorControl *)self _updateFromItemsAnimated:v4];
}

- (void)setSelectedIndex:(unint64_t)a3
{
  v5 = [(TVRUITabSelectorControl *)self items];
  v6 = [v5 count];

  if (v6 > a3)
  {
    v7 = [(TVRUITabSelectorControl *)self collectionView];
    v8 = [MEMORY[0x277CCAA70] indexPathForItem:a3 inSection:0];
    [v7 selectItemAtIndexPath:v8 animated:0 scrollPosition:0];

    v11 = [(TVRUITabSelectorControl *)self items];
    if ([v11 count] <= a3)
    {
      [(TVRUITabSelectorControl *)self setPreviousSelectedItem:0];
    }

    else
    {
      v9 = [(TVRUITabSelectorControl *)self items];
      v10 = [v9 objectAtIndexedSubscript:a3];
      [(TVRUITabSelectorControl *)self setPreviousSelectedItem:v10];
    }
  }
}

- (unint64_t)selectedIndex
{
  v2 = [(TVRUITabSelectorControl *)self collectionView];
  v3 = [v2 indexPathsForSelectedItems];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = [v4 item];
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

+ (double)defaultHeight
{
  v2 = +[TVRUIFeatures isSolariumEnabled];
  result = 54.0;
  if (!v2)
  {
    return 28.0;
  }

  return result;
}

- (void)_configure
{
  v28[4] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D752B0] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_6];
  v4 = objc_alloc(MEMORY[0x277D752A0]);
  v5 = [(TVRUITabSelectorControl *)self _layout];
  v6 = [v4 initWithFrame:v5 collectionViewLayout:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  [v6 setDelegate:self];
  v7 = objc_alloc(MEMORY[0x277D752D0]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __37__TVRUITabSelectorControl__configure__block_invoke_2;
  v26[3] = &unk_279D88128;
  v27 = v3;
  v25 = v3;
  v24 = [v7 initWithCollectionView:v6 cellProvider:v26];
  v8 = self;
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [MEMORY[0x277D75348] clearColor];
  [v6 setBackgroundColor:v9];

  [v6 setBouncesVertically:0];
  [v6 setClipsToBounds:0];
  [v6 setShowsHorizontalScrollIndicator:0];
  [v6 setShowsVerticalScrollIndicator:0];
  [(TVRUITabSelectorControl *)v8 addSubview:v6];
  v18 = MEMORY[0x277CCAAD0];
  v23 = [(TVRUITabSelectorControl *)v8 leadingAnchor];
  v22 = [v6 leadingAnchor];
  v21 = [v23 constraintEqualToAnchor:v22];
  v28[0] = v21;
  v20 = [(TVRUITabSelectorControl *)v8 trailingAnchor];
  v19 = [v6 trailingAnchor];
  v10 = [v20 constraintEqualToAnchor:v19];
  v28[1] = v10;
  v11 = [(TVRUITabSelectorControl *)v8 topAnchor];
  v12 = [v6 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v28[2] = v13;
  v14 = [(TVRUITabSelectorControl *)v8 bottomAnchor];
  v15 = [v6 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  v28[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [v18 activateConstraints:v17];

  [(TVRUITabSelectorControl *)v8 setCollectionView:v6];
  [(TVRUITabSelectorControl *)v8 setDataSource:v24];
}

void __37__TVRUITabSelectorControl__configure__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [a2 label];
  [v6 setText:v5];
}

- (id)_layout
{
  objc_initWeak(&location, self);
  v3 = objc_alloc(MEMORY[0x277D752B8]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__TVRUITabSelectorControl__layout__block_invoke;
  v6[3] = &unk_279D88150;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v4 = [v3 initWithSectionProvider:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

id __34__TVRUITabSelectorControl__layout__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = +[TVRUIFeatures isSolariumEnabled];
    v7 = [WeakRetained dataSource];
    v8 = [v7 snapshot];

    v9 = [v8 numberOfItems];
    v10 = *(a1 + 32);
    v60 = v8;
    v11 = [v8 itemIdentifiers];
    v12 = [v10 _cellResolvedLayoutResultsForItems:v11];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v64 objects:v68 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v65;
      v17 = 0.0;
      v18 = 0.0;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v65 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v64 + 1) + 8 * i);
          [v20 resolvedLayoutSize];
          v17 = v17 + v21;
          [v20 resolvedLayoutSize];
          if (v22 > v18)
          {
            v18 = v22;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v64 objects:v68 count:16];
      }

      while (v15);
    }

    else
    {
      v17 = 0.0;
      v18 = 0.0;
    }

    v24 = (v9 - 1) * 10.0 + v17;
    if (v6)
    {
      v25 = [WeakRetained styleProvider];
      [v25 solariumDefaultButtonHeight];
      [WeakRetained setLayoutHeight:?];
    }

    else
    {
      [WeakRetained setLayoutHeight:v18];
    }

    v62 = v4;
    v26 = [v4 container];
    [v26 effectiveContentSize];
    v28 = v27;

    v61 = WeakRetained;
    v29 = [WeakRetained prefersCenteredItems];
    if (v24 < v28)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    if (v6)
    {
      v31 = [*(a1 + 32) styleProvider];
      [v31 solariumDefaultButtonHeight];
      v18 = v32;
    }

    v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v9 >= 1)
    {
      v33 = 0;
      v34 = (v28 - v24) * 0.5;
      do
      {
        v35 = [v13 objectAtIndexedSubscript:v33];
        v36 = MEMORY[0x277CFB870];
        v37 = MEMORY[0x277CFB840];
        [v35 resolvedLayoutSize];
        v38 = [v37 absoluteDimension:?];
        v39 = [MEMORY[0x277CFB840] absoluteDimension:v18];
        v40 = [v36 sizeWithWidthDimension:v38 heightDimension:v39];

        v41 = [MEMORY[0x277CFB860] itemWithLayoutSize:v40];
        v42 = v30 ^ 1;
        if (v33)
        {
          v42 = 1;
        }

        if (v42)
        {
          v43 = 0;
        }

        else
        {
          v43 = [MEMORY[0x277CFB878] fixedSpacing:v34];
        }

        if (v9 == 1)
        {
          v44 = v30;
        }

        else
        {
          v44 = 0;
        }

        if (v44 == 1)
        {
          v45 = [MEMORY[0x277CFB878] fixedSpacing:v34];
        }

        else
        {
          v45 = 0;
        }

        v46 = [MEMORY[0x277CFB848] spacingForLeading:v43 top:0 trailing:v45 bottom:0];
        [v41 setEdgeSpacing:v46];
        [v63 addObject:v41];

        ++v33;
        --v9;
      }

      while (v9);
    }

    v47 = MEMORY[0x277CFB870];
    if (v30)
    {
      [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
    }

    else
    {
      [MEMORY[0x277CFB840] absoluteDimension:v24];
    }
    v48 = ;
    v49 = [MEMORY[0x277CFB840] absoluteDimension:v18];
    v50 = [v47 sizeWithWidthDimension:v48 heightDimension:v49];

    WeakRetained = v61;
    v4 = v62;
    if (![v63 count])
    {
      v51 = MEMORY[0x277CFB860];
      v52 = MEMORY[0x277CFB870];
      v53 = [MEMORY[0x277CFB840] fractionalWidthDimension:1.0];
      v54 = [MEMORY[0x277CFB840] fractionalHeightDimension:1.0];
      v55 = [v52 sizeWithWidthDimension:v53 heightDimension:v54];
      v56 = [v51 itemWithLayoutSize:v55];

      [v63 addObject:v56];
    }

    v57 = [MEMORY[0x277CFB850] horizontalGroupWithLayoutSize:v50 subitems:v63];
    v58 = [MEMORY[0x277CFB878] fixedSpacing:10.0];
    [v57 setInterItemSpacing:v58];

    v23 = [MEMORY[0x277CFB868] sectionWithGroup:v57];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)_updateFromItemsAnimated:(BOOL)a3
{
  v3 = a3;
  v9 = objc_alloc_init(MEMORY[0x277CFB890]);
  [v9 appendSectionsWithIdentifiers:&unk_287E84AB0];
  v5 = [(TVRUITabSelectorControl *)self items];
  [v9 appendItemsWithIdentifiers:v5];

  v6 = [(TVRUITabSelectorControl *)self dataSource];
  [v6 applySnapshot:v9 animatingDifferences:v3];

  if ([(TVRUITabSelectorControl *)self selectedIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(TVRUITabSelectorControl *)self items];
    v8 = [v7 count];

    if (v8)
    {
      [(TVRUITabSelectorControl *)self setSelectedIndex:0];
    }
  }
}

- (id)_cellResolvedLayoutResultsForItems:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (+[TVRUIFeatures isSolariumEnabled])
  {
    v5 = 15.0;
  }

  else
  {
    v5 = 0.0;
  }

  [(TVRUITabSelectorControl *)self bounds];
  Height = CGRectGetHeight(v28);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [_TVRUITabSelectorControlCell alloc];
        v15 = [(_TVRUITabSelectorControlCell *)v14 initWithFrame:0.0, 0.0, 20000.0, Height, v21];
        v16 = [(_TVRUITabSelectorControlCell *)v15 label];
        [v16 setText:v13];

        [(_TVRUITabSelectorControlCell *)v15 systemLayoutSizeFittingSize:20000.0, Height];
        v19 = [[_TVRUITabSelectorControlCellLayoutResult alloc] initWithResolvedLayoutSize:v5 + v17, v18];
        [v7 addObject:v19];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v15 = a4;
  [(TVRUITabSelectorControl *)self sendActionsForControlEvents:4096];
  v5 = [(TVRUITabSelectorControl *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [v15 item];
    v8 = [(TVRUITabSelectorControl *)self previousSelectedItem];
    if ([v8 length])
    {
      v9 = [(TVRUITabSelectorControl *)self items];
      v10 = [(TVRUITabSelectorControl *)self previousSelectedItem];
      v11 = [v9 indexOfObject:v10];
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v12 = [(TVRUITabSelectorControl *)self delegate];
    [v12 tabSelectorControl:self didSelectIndex:v7 previousIndex:v11];
  }

  v13 = [(TVRUITabSelectorControl *)self dataSource];
  v14 = [v13 itemIdentifierForIndexPath:v15];
  [(TVRUITabSelectorControl *)self setPreviousSelectedItem:v14];
}

- (TVRUITabSelectorControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end