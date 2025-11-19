@interface WFContentCollectionTableView
- (WFContentCollectionTableView)initWithContentCollection:(id)a3;
- (WFContentCollectionTableView)initWithDialogItems:(id)a3;
- (WFContentCollectionTableViewDelegate)controllerDelegate;
- (double)contentHeightForWidth:(double)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)configureCell:(id)a3 forIndexPath:(id)a4;
- (void)updateCellSeparatorInsets;
- (void)updateContent:(id)a3;
@end

@implementation WFContentCollectionTableView

- (WFContentCollectionTableViewDelegate)controllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_controllerDelegate);

  return WeakRetained;
}

- (double)contentHeightForWidth:(double)a3
{
  v5 = [(WFContentCollectionTableView *)self cachedAggregateHeightsByWidth];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = [(WFContentCollectionTableView *)self cachedAggregateHeightsByWidth];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v10 = [v8 objectForKey:v9];

    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v15 = v11;

    [(WFContentCollectionTableViewCell *)v15 doubleValue];
    v20 = v21;
  }

  else
  {
    v12 = self->_prototypeCell;
    if (!v12)
    {
      v12 = [[WFContentCollectionTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
      prototypeCell = self->_prototypeCell;
      self->_prototypeCell = v12;
    }

    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v14 = [(WFContentCollectionTableView *)self items];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __54__WFContentCollectionTableView_contentHeightForWidth___block_invoke;
    v26 = &unk_279EE7590;
    v27 = self;
    v15 = v12;
    v28 = v15;
    v29 = &v31;
    v30 = a3;
    [v14 enumerateObjectsUsingBlock:&v23];

    [(WFContentCollectionTableView *)self contentInset:v23];
    v32[3] = v16 + v32[3];
    v17 = [(WFContentCollectionTableView *)self cachedAggregateHeightsByWidth];
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v32[3]];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [v17 setObject:v18 forKey:v19];

    v20 = v32[3];
    _Block_object_dispose(&v31, 8);
  }

  return v20;
}

double __54__WFContentCollectionTableView_contentHeightForWidth___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277CCAA70] indexPathForRow:a3 inSection:0];
  [v4 configureCell:v5 forIndexPath:v6];

  [*(a1 + 40) systemLayoutSizeFittingSize:{*(a1 + 56), *(MEMORY[0x277D76C78] + 8)}];
  v7 = *(*(a1 + 48) + 8);
  result = v8 + *(v7 + 24);
  *(v7 + 24) = result;
  return result;
}

- (void)updateCellSeparatorInsets
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(WFContentCollectionTableView *)self indexPathsForVisibleRows];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v9 = [v8 row];
        v10 = -[WFContentCollectionTableView numberOfRowsInSection:](self, "numberOfRowsInSection:", [v8 section]);
        v11 = [(WFContentCollectionTableView *)self cellForRowAtIndexPath:v8];
        if (v11)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v11;
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        v13 = v9 + 1;
        v14 = v12;

        if (v13 >= v10)
        {
          v17 = 0;
        }

        else
        {
          v15 = [MEMORY[0x277CCAA70] indexPathForRow:v13 inSection:{objc_msgSend(v8, "section")}];
          v16 = [(WFContentCollectionTableView *)self cellForRowAtIndexPath:v15];
          if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v17 = [v16 prefersSeparatorInsetForImage];
          }

          else
          {
            v17 = 0;
          }
        }

        [v14 preferredSeparatorInsetForCheckmark];
        v19 = v18;
        if ((v17 & [v14 prefersSeparatorInsetForImage]) != 0)
        {
          v20 = 66.0;
        }

        else
        {
          v20 = 24.0;
        }

        [v14 setSeparatorInset:{0.0, v19 + v20, 0.0, 10.0}];
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }
}

- (void)configureCell:(id)a3 forIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WFContentCollectionTableView *)self items];
  v9 = [v6 row];

  v17 = [v8 objectAtIndexedSubscript:v9];

  [v7 setTableView:self];
  v10 = [(WFContentCollectionTableView *)self imageCache];
  [v7 setImageCache:v10];

  v11 = [(WFContentCollectionTableView *)self controllerDelegate];
  [v7 setCheckmarkStyle:{objc_msgSend(v11, "checkmarkStyleForListItem:", v17)}];

  v12 = [(WFContentCollectionTableView *)self controllerDelegate];
  v13 = [v12 displayConfiguration];
  [v7 setDisplayConfiguration:v13];

  [v7 setListItem:v17];
  v14 = [(WFContentCollectionTableView *)self controllerDelegate];
  v15 = [v14 visualStylingProviderForCategory:2];
  [v7 setFillVisualStylingProvider:v15];

  v16 = [(WFContentCollectionTableView *)self controllerDelegate];
  [v16 configureTableCell:v7];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 dequeueReusableCellWithIdentifier:v9 forIndexPath:v6];

  [(WFContentCollectionTableView *)self configureCell:v10 forIndexPath:v6];

  return v10;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(WFContentCollectionTableView *)self items:a3];
  v5 = [v4 count];

  return v5;
}

- (void)updateContent:(id)a3
{
  v4 = [a3 items];
  v5 = [v4 if_map:&__block_literal_global_169];

  items = self->_items;
  self->_items = v5;
  v7 = v5;

  v8 = objc_opt_new();
  cachedAggregateHeightsByWidth = self->_cachedAggregateHeightsByWidth;
  self->_cachedAggregateHeightsByWidth = v8;

  [(WFContentCollectionTableView *)self reloadData];
}

id __46__WFContentCollectionTableView_updateContent___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7C358];
  v3 = a2;
  v4 = [[v2 alloc] initWithContentItem:v3 encodedTypedValue:0 selected:0 hideSubtitle:1];

  return v4;
}

- (WFContentCollectionTableView)initWithContentCollection:(id)a3
{
  v4 = [a3 items];
  v5 = [v4 if_map:&__block_literal_global];

  v6 = [(WFContentCollectionTableView *)self initWithDialogItems:v5];
  return v6;
}

id __58__WFContentCollectionTableView_initWithContentCollection___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D7C358];
  v3 = a2;
  v4 = [[v2 alloc] initWithContentItem:v3 encodedTypedValue:0 selected:0 hideSubtitle:1];

  return v4;
}

- (WFContentCollectionTableView)initWithDialogItems:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = WFContentCollectionTableView;
  v6 = [(WFContentCollectionTableView *)&v20 initWithFrame:0 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, a3);
    v8 = objc_opt_new();
    imageCache = v7->_imageCache;
    v7->_imageCache = v8;

    v10 = objc_opt_new();
    cachedAggregateHeightsByWidth = v7->_cachedAggregateHeightsByWidth;
    v7->_cachedAggregateHeightsByWidth = v10;

    [(WFContentCollectionTableView *)v7 setDataSource:v7];
    v12 = [MEMORY[0x277D75348] clearColor];
    [(WFContentCollectionTableView *)v7 setBackgroundColor:v12];

    [(WFContentCollectionTableView *)v7 setAlwaysBounceVertical:0];
    -[WFContentCollectionTableView setScrollEnabled:](v7, "setScrollEnabled:", [MEMORY[0x277CBEBD0] universalPreviewsEnabled]);
    [(WFContentCollectionTableView *)v7 setScrollIndicatorInsets:22.0, 0.0, 22.0, 0.0];
    [(WFContentCollectionTableView *)v7 setSeparatorInsetReference:0];
    v13 = [MEMORY[0x277D75210] effectWithStyle:1200];
    v14 = [MEMORY[0x277D75D00] effectForBlurEffect:v13 style:6];
    [(WFContentCollectionTableView *)v7 setSeparatorEffect:v14];

    [(WFContentCollectionTableView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    [(WFContentCollectionTableView *)v7 registerClass:v15 forCellReuseIdentifier:v17];

    v18 = v7;
  }

  return v7;
}

@end