@interface SUStructuredPageTableDataSource
- (BOOL)_shouldShowItemOfferButtonForItem:(id)a3;
- (BOOL)canDeleteIndexPath:(id)a3;
- (BOOL)canSelectIndexPath:(id)a3;
- (BOOL)deleteIndexPath:(id)a3;
- (Class)cellClassForItem:(id)a3 reuseIdentifier:(id *)a4;
- (Class)cellConfigurationClassForItem:(id)a3;
- (double)cellHeightForIndexPath:(id)a3;
- (id)_itemOfferButtonForCell:(id)a3 item:(id)a4;
- (id)cellConfigurationForIndex:(int64_t)a3 item:(id)a4;
- (id)cellForIndexPath:(id)a3;
- (id)headerViewForSection:(int64_t)a3;
- (id)sectionIndexTitles;
- (id)titleForDeleteConfirmationForIndexPath:(id)a3;
- (id)titleForHeaderInSection:(int64_t)a3;
- (int64_t)numberOfRowsInSection:(int64_t)a3;
- (int64_t)numberOfSections;
- (int64_t)sectionIndexForIndexTitle:(id)a3 atIndex:(int64_t)a4;
- (void)_configureLoadMoreCell:(id)a3 forItem:(id)a4;
- (void)configureCell:(id)a3 forIndexPath:(id)a4;
- (void)dealloc;
- (void)reloadCellContexts;
- (void)reloadData;
- (void)setStructuredPage:(id)a3;
@end

@implementation SUStructuredPageTableDataSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUStructuredPageTableDataSource;
  [(SUTableDataSource *)&v3 dealloc];
}

- (Class)cellClassForItem:(id)a3 reuseIdentifier:(id *)a4
{
  v5 = [a3 itemType];
  result = objc_opt_class();
  if (a4)
  {
    v7 = @"su0";
    if (v5 == 8)
    {
      v7 = @"su1";
    }

    *a4 = v7;
  }

  return result;
}

- (Class)cellConfigurationClassForItem:(id)a3
{
  v4 = [a3 itemType];
  if (v4 <= 8)
  {
    if ((v4 - 4) < 2 || v4 == 8)
    {
      goto LABEL_8;
    }

LABEL_11:
    NSLog(&cfstr_UnknownItemTyp.isa, [a3 itemType]);
    return 0;
  }

  if (v4 != 9 && v4 != 10)
  {
    goto LABEL_11;
  }

LABEL_8:

  return objc_opt_class();
}

- (id)cellConfigurationForIndex:(int64_t)a3 item:(id)a4
{
  v7 = [(SUStructuredPageTableDataSource *)self cellConfigurationClassForItem:a4];
  if (!v7)
  {
    return 0;
  }

  v8 = [(SUTableDataSource *)self cachedConfigurationForClass:v7 index:a3];
  [v8 setRepresentedObject:a4];
  return v8;
}

- (void)setStructuredPage:(id)a3
{
  structuredPage = self->_structuredPage;
  if (structuredPage != a3)
  {

    v6 = a3;
    self->_structuredPage = v6;
    v7 = [(SUStructuredPage *)v6 itemList];
    v8 = [(SUStructuredPageTableDataSource *)self tableViewStyle]!= 1;

    [(SUItemList *)v7 setIgnoresEmptySections:v8];
  }
}

- (BOOL)canDeleteIndexPath:(id)a3
{
  if ([objc_msgSend(-[SUItemList itemAtIndexPath:](-[SUStructuredPage itemList](self->_structuredPage "itemList")])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SUStructuredPageTableDataSource;
  return [(SUTableDataSource *)&v6 canDeleteIndexPath:a3];
}

- (BOOL)canSelectIndexPath:(id)a3
{
  v9.receiver = self;
  v9.super_class = SUStructuredPageTableDataSource;
  v5 = [(SUTableDataSource *)&v9 canSelectIndexPath:?];
  v6 = [-[SUItemList itemAtIndexPath:](-[SUStructuredPage itemList](self->_structuredPage "itemList")];
  if (v6 == 8 || v6 == 2)
  {
    return 0;
  }

  return v5;
}

- (id)cellForIndexPath:(id)a3
{
  v8 = 0;
  v4 = [(SUStructuredPageTableDataSource *)self cellClassForItem:[(SUItemList *)[(SUStructuredPage *)self->_structuredPage itemList] itemAtIndexPath:a3] reuseIdentifier:&v8];
  v5 = [(SUTableDataSource *)self cellReuseSource];
  result = [v5 dequeueReusableCellWithIdentifier:v8];
  if (!result)
  {
    v7 = [v4 alloc];
    return [v7 initWithStyle:0 reuseIdentifier:v8];
  }

  return result;
}

- (double)cellHeightForIndexPath:(id)a3
{
  v4 = [(SUItemList *)[(SUStructuredPage *)self->_structuredPage itemList] itemAtIndexPath:a3];
  v5 = [(SUStructuredPageTableDataSource *)self cellConfigurationClassForItem:v4];
  v6 = [-[SUVariableCellConfigurationCache cacheForClass:](self->super._configurationCache cacheForClass:{v5), "cellContext"}];
  [v6 setTableViewStyle:{-[SUStructuredPageTableDataSource tableViewStyle](self, "tableViewStyle")}];

  [(objc_class *)v5 rowHeightForContext:v6 representedObject:v4];
  return result;
}

- (void)configureCell:(id)a3 forIndexPath:(id)a4
{
  v7 = [(SUTableDataSource *)self cellReuseSource];
  v8 = [(SUStructuredPage *)self->_structuredPage itemList];
  v9 = [(SUItemList *)v8 itemAtIndexPath:a4];
  if ([(SUStructuredPageTableDataSource *)self _shouldShowItemOfferButtonForItem:v9])
  {
    v10 = [(SUStructuredPageTableDataSource *)self _itemOfferButtonForCell:a3 item:v9];
    if ([v10 isShowingConfirmation])
    {
      [v10 setShowingConfirmation:0 duration:0.0];
      [a3 setNeedsLayout];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 globalRowForRowAtIndexPath:a4];
  v12 = [(SUStructuredPageTableDataSource *)self cellConfigurationForIndex:v11 item:v9];
  [a3 setAccessoryView:v10];
  [a3 setConfiguration:v12];
  v13 = self->_style == 1 && [v9 itemType] == 3;
  [a3 setHighlightsOnlyContentView:v13];
  v18[0] = [a4 row];
  v18[1] = [-[SUItemList itemsForSectionAtIndex:](v8 itemsForSectionAtIndex:{objc_msgSend(a4, "section")), "count"}];
  v18[2] = v11;
  v18[3] = [(SUItemList *)v8 numberOfItems];
  [a3 setPosition:v18];
  v14 = [v9 itemType];
  if (v14 <= 3)
  {
    if (v14 == 1)
    {
      [a3 setAccessoryType:0];
      [a3 setHighlightsOnlyContentView:{-[SUStructuredPageTableDataSource canSelectIndexPath:](self, "canSelectIndexPath:", a4)}];
      return;
    }

    if (v14 != 2)
    {
      if (v14 == 3 && self->_style == 1)
      {
        [a3 setAccessoryType:0];
        goto LABEL_24;
      }

LABEL_18:
      v17 = !v10 && ![(SUStructuredPage *)self->_structuredPage wantsIndexBar];
      [a3 setAccessoryType:v17];
      [a3 setDrawAsDisabled:0];
      [a3 setHighlightsOnlyContentView:0];
      if ([v10 isUserInteractionEnabled])
      {
        v16 = 1;
LABEL_25:
        v15 = a3;
        goto LABEL_29;
      }

LABEL_24:
      v16 = [(SUStructuredPageTableDataSource *)self canSelectIndexPath:a4];
      goto LABEL_25;
    }

    [a3 setAccessoryType:0];
LABEL_28:
    v15 = a3;
    v16 = 0;
    goto LABEL_29;
  }

  if ((v14 - 9) < 2)
  {
    [a3 setAccessoryType:0];
    [a3 setDrawAsDisabled:0];
    goto LABEL_28;
  }

  if (v14 == 4)
  {
    [a3 setAccessoryType:0];
    [(SUStructuredPageTableDataSource *)self _configureLoadMoreCell:a3 forItem:v9];
    return;
  }

  if (v14 != 8)
  {
    goto LABEL_18;
  }

  [a3 setAccessoryType:0];
  [a3 setBackgroundView:0];
  v15 = a3;
  v16 = 1;
LABEL_29:
  [v15 setUserInteractionEnabled:v16];
}

- (BOOL)deleteIndexPath:(id)a3
{
  v5 = [(SUStructuredPage *)self->_structuredPage itemList];
  v6 = [-[SUItemList itemAtIndexPath:](v5 itemAtIndexPath:{a3), "firstItemLinkForType:", 4}];
  if ([v6 URL])
  {
    v7 = objc_alloc_init(MEMORY[0x1E69E47E0]);
    v8 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:{objc_msgSend(v6, "URL")}];
    [v7 setRequestProperties:v8];
    [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];

    [(SUItemList *)v5 removeItemAtIndexPath:a3];
    return 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SUStructuredPageTableDataSource;
    return [(SUTableDataSource *)&v10 deleteIndexPath:a3];
  }
}

- (id)headerViewForSection:(int64_t)a3
{
  if ([(NSMutableArray *)self->_cachedHeaderViews count]> a3 && (v5 = [(NSMutableArray *)self->_cachedHeaderViews objectAtIndex:a3]) != 0 && (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (v6 = [(SUStructuredPageTableDataSource *)self newHeaderViewForSection:a3]) != 0)
  {
    if (!self->_cachedHeaderViews)
    {
      self->_cachedHeaderViews = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v7 = [MEMORY[0x1E695DFB0] null];
    while ([(NSMutableArray *)self->_cachedHeaderViews count]<= a3)
    {
      [(NSMutableArray *)self->_cachedHeaderViews addObject:v7];
    }

    [(NSMutableArray *)self->_cachedHeaderViews replaceObjectAtIndex:a3 withObject:v6];
  }

  return v6;
}

- (int64_t)numberOfSections
{
  v2 = [(SUStructuredPage *)self->_structuredPage itemList];

  return [(SUItemList *)v2 numberOfSections];
}

- (int64_t)numberOfRowsInSection:(int64_t)a3
{
  v3 = [(SUItemList *)[(SUStructuredPage *)self->_structuredPage itemList] itemsForSectionAtIndex:a3];

  return [v3 count];
}

- (void)reloadCellContexts
{
  v27 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = SUStructuredPageTableDataSource;
  [(SUTableDataSource *)&v25 reloadCellContexts];
  v3 = [(SUTableDataSource *)self imageCache];
  v4 = [(SUTableDataSource *)self imagePool];
  v5 = objc_alloc_init(SUItemCellContext);
  [(SUArtworkCellContext *)v5 setImageCache:v3];
  v19 = v4;
  [(SUArtworkCellContext *)v5 setImagePool:v4];
  [(SUVariableCellConfigurationCache *)self->super._configurationCache setCellContext:v5];

  v6 = [(SUItemList *)[(SUStructuredPage *)self->_structuredPage itemList] copyItems];
  v7 = objc_alloc_init(SUItemOfferButton);
  self->_offerButtonWidth = 0.0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v6;
  v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [(SUStructuredPageTableDataSource *)self cellConfigurationClassForItem:v12];
        v14 = [(SUVariableCellConfigurationCache *)self->super._configurationCache cacheForClass:v13];
        if (![v14 cellContext])
        {
          v15 = [(objc_class *)v13 copyDefaultContext];
          [v15 setImageCache:v3];
          [v15 setImagePool:v19];
          [v14 setCellContext:v15];
        }

        if ([(SUStructuredPageTableDataSource *)self _shouldShowItemOfferButtonForItem:v12])
        {
          -[SUItemOfferButton configureForItem:offer:](v7, "configureForItem:offer:", v12, [v12 defaultStoreOffer]);
          [(SUItemOfferButton *)v7 sizeToFit];
          offerButtonWidth = self->_offerButtonWidth;
          [(SUItemOfferButton *)v7 frame];
          if (offerButtonWidth >= v17)
          {
            v18 = offerButtonWidth;
          }

          else
          {
            v18 = v17;
          }

          self->_offerButtonWidth = v18;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }
}

- (void)reloadData
{
  [(NSMutableArray *)self->_cachedHeaderViews removeAllObjects];
  [(SUStructuredPageTableDataSource *)self setActiveLoadMoreItem:0];
  v3.receiver = self;
  v3.super_class = SUStructuredPageTableDataSource;
  [(SUTableDataSource *)&v3 reloadData];
}

- (int64_t)sectionIndexForIndexTitle:(id)a3 atIndex:(int64_t)a4
{
  v6 = [(SUStructuredPage *)self->_structuredPage itemList];

  return [(SUItemList *)v6 sectionIndexForIndexTitle:a3 atIndex:a4];
}

- (id)sectionIndexTitles
{
  if (![(SUStructuredPage *)self->_structuredPage wantsIndexBar])
  {
    return 0;
  }

  v3 = [(SUStructuredPage *)self->_structuredPage itemList];

  return [(SUItemList *)v3 sectionIndexTitles];
}

- (id)titleForDeleteConfirmationForIndexPath:(id)a3
{
  result = [objc_msgSend(-[SUItemList itemAtIndexPath:](-[SUStructuredPage itemList](self->_structuredPage "itemList")];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = SUStructuredPageTableDataSource;
    return [(SUTableDataSource *)&v6 titleForDeleteConfirmationForIndexPath:a3];
  }

  return result;
}

- (id)titleForHeaderInSection:(int64_t)a3
{
  v3 = [(SUItemList *)[(SUStructuredPage *)self->_structuredPage itemList] sectionItemForSectionAtIndex:a3];

  return [v3 title];
}

- (void)_configureLoadMoreCell:(id)a3 forItem:(id)a4
{
  if (self->_activeLoadMoreItem == a4)
  {
    v5 = [a3 accessoryView];
    if (!v5)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:2];
      [v6 sizeToFit];
      [v6 startAnimating];
      v5 = v6;
    }
  }

  else
  {
    v5 = 0;
  }

  [a3 setAccessoryView:v5];
  v7 = v5 != 0;
  v8 = v5 == 0;
  [a3 setDrawAsDisabled:v7];

  [a3 setUserInteractionEnabled:v8];
}

- (id)_itemOfferButtonForCell:(id)a3 item:(id)a4
{
  v5 = [a3 itemOfferButton];
  [v5 addTarget:0 action:sel_itemOfferButtonAction_ forControlEvents:64];
  [v5 setAnimationHorizontalAlignment:2];
  [v5 configureForItem:a4 offer:{objc_msgSend(a4, "defaultStoreOffer")}];
  [v5 frame];
  [v5 setFrame:?];
  return v5;
}

- (BOOL)_shouldShowItemOfferButtonForItem:(id)a3
{
  v5 = [a3 defaultStoreOffer];
  if (-[SUPurchaseManager itemIdentifierIsPurchased:](-[SUClientInterface purchaseManager](-[SUStructuredPageTableDataSource clientInterface](self, "clientInterface"), "purchaseManager"), "itemIdentifierIsPurchased:", [a3 itemIdentifier]))
  {
    return 0;
  }

  if (![v5 priceDisplay])
  {
    return 0;
  }

  v6 = [v5 actionType];
  if (![v6 isEqualToString:*MEMORY[0x1E69D4D08]])
  {
    return 0;
  }

  return [(SUStructuredPageTableDataSource *)self canShowItemOfferButtonForItem:a3];
}

@end