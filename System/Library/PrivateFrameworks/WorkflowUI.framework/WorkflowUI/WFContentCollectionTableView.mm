@interface WFContentCollectionTableView
- (WFContentCollectionTableView)initWithContentCollection:(id)collection;
- (WFContentCollectionTableView)initWithDialogItems:(id)items;
- (WFContentCollectionTableViewDelegate)controllerDelegate;
- (double)contentHeightForWidth:(double)width;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)configureCell:(id)cell forIndexPath:(id)path;
- (void)updateCellSeparatorInsets;
- (void)updateContent:(id)content;
@end

@implementation WFContentCollectionTableView

- (WFContentCollectionTableViewDelegate)controllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_controllerDelegate);

  return WeakRetained;
}

- (double)contentHeightForWidth:(double)width
{
  cachedAggregateHeightsByWidth = [(WFContentCollectionTableView *)self cachedAggregateHeightsByWidth];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:width];
  v7 = [cachedAggregateHeightsByWidth objectForKey:v6];

  if (v7)
  {
    cachedAggregateHeightsByWidth2 = [(WFContentCollectionTableView *)self cachedAggregateHeightsByWidth];
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:width];
    v10 = [cachedAggregateHeightsByWidth2 objectForKey:v9];

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
    items = [(WFContentCollectionTableView *)self items];
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __54__WFContentCollectionTableView_contentHeightForWidth___block_invoke;
    v26 = &unk_279EE7590;
    selfCopy = self;
    v15 = v12;
    v28 = v15;
    v29 = &v31;
    widthCopy = width;
    [items enumerateObjectsUsingBlock:&v23];

    [(WFContentCollectionTableView *)self contentInset:v23];
    v32[3] = v16 + v32[3];
    cachedAggregateHeightsByWidth3 = [(WFContentCollectionTableView *)self cachedAggregateHeightsByWidth];
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v32[3]];
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:width];
    [cachedAggregateHeightsByWidth3 setObject:v18 forKey:v19];

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
  indexPathsForVisibleRows = [(WFContentCollectionTableView *)self indexPathsForVisibleRows];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [indexPathsForVisibleRows countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleRows);
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
          prefersSeparatorInsetForImage = 0;
        }

        else
        {
          v15 = [MEMORY[0x277CCAA70] indexPathForRow:v13 inSection:{objc_msgSend(v8, "section")}];
          v16 = [(WFContentCollectionTableView *)self cellForRowAtIndexPath:v15];
          if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            prefersSeparatorInsetForImage = [v16 prefersSeparatorInsetForImage];
          }

          else
          {
            prefersSeparatorInsetForImage = 0;
          }
        }

        [v14 preferredSeparatorInsetForCheckmark];
        v19 = v18;
        if ((prefersSeparatorInsetForImage & [v14 prefersSeparatorInsetForImage]) != 0)
        {
          v20 = 66.0;
        }

        else
        {
          v20 = 24.0;
        }

        [v14 setSeparatorInset:{0.0, v19 + v20, 0.0, 10.0}];
      }

      v5 = [indexPathsForVisibleRows countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }
}

- (void)configureCell:(id)cell forIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  items = [(WFContentCollectionTableView *)self items];
  v9 = [pathCopy row];

  v17 = [items objectAtIndexedSubscript:v9];

  [cellCopy setTableView:self];
  imageCache = [(WFContentCollectionTableView *)self imageCache];
  [cellCopy setImageCache:imageCache];

  controllerDelegate = [(WFContentCollectionTableView *)self controllerDelegate];
  [cellCopy setCheckmarkStyle:{objc_msgSend(controllerDelegate, "checkmarkStyleForListItem:", v17)}];

  controllerDelegate2 = [(WFContentCollectionTableView *)self controllerDelegate];
  displayConfiguration = [controllerDelegate2 displayConfiguration];
  [cellCopy setDisplayConfiguration:displayConfiguration];

  [cellCopy setListItem:v17];
  controllerDelegate3 = [(WFContentCollectionTableView *)self controllerDelegate];
  v15 = [controllerDelegate3 visualStylingProviderForCategory:2];
  [cellCopy setFillVisualStylingProvider:v15];

  controllerDelegate4 = [(WFContentCollectionTableView *)self controllerDelegate];
  [controllerDelegate4 configureTableCell:cellCopy];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [viewCopy dequeueReusableCellWithIdentifier:v9 forIndexPath:pathCopy];

  [(WFContentCollectionTableView *)self configureCell:v10 forIndexPath:pathCopy];

  return v10;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(WFContentCollectionTableView *)self items:view];
  v5 = [v4 count];

  return v5;
}

- (void)updateContent:(id)content
{
  items = [content items];
  v5 = [items if_map:&__block_literal_global_169];

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

- (WFContentCollectionTableView)initWithContentCollection:(id)collection
{
  items = [collection items];
  v5 = [items if_map:&__block_literal_global];

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

- (WFContentCollectionTableView)initWithDialogItems:(id)items
{
  itemsCopy = items;
  v20.receiver = self;
  v20.super_class = WFContentCollectionTableView;
  v6 = [(WFContentCollectionTableView *)&v20 initWithFrame:0 style:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, items);
    v8 = objc_opt_new();
    imageCache = v7->_imageCache;
    v7->_imageCache = v8;

    v10 = objc_opt_new();
    cachedAggregateHeightsByWidth = v7->_cachedAggregateHeightsByWidth;
    v7->_cachedAggregateHeightsByWidth = v10;

    [(WFContentCollectionTableView *)v7 setDataSource:v7];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WFContentCollectionTableView *)v7 setBackgroundColor:clearColor];

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