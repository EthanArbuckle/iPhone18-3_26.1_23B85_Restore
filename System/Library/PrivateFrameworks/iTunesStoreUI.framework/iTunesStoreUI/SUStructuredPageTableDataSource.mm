@interface SUStructuredPageTableDataSource
- (BOOL)_shouldShowItemOfferButtonForItem:(id)item;
- (BOOL)canDeleteIndexPath:(id)path;
- (BOOL)canSelectIndexPath:(id)path;
- (BOOL)deleteIndexPath:(id)path;
- (Class)cellClassForItem:(id)item reuseIdentifier:(id *)identifier;
- (Class)cellConfigurationClassForItem:(id)item;
- (double)cellHeightForIndexPath:(id)path;
- (id)_itemOfferButtonForCell:(id)cell item:(id)item;
- (id)cellConfigurationForIndex:(int64_t)index item:(id)item;
- (id)cellForIndexPath:(id)path;
- (id)headerViewForSection:(int64_t)section;
- (id)sectionIndexTitles;
- (id)titleForDeleteConfirmationForIndexPath:(id)path;
- (id)titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfRowsInSection:(int64_t)section;
- (int64_t)numberOfSections;
- (int64_t)sectionIndexForIndexTitle:(id)title atIndex:(int64_t)index;
- (void)_configureLoadMoreCell:(id)cell forItem:(id)item;
- (void)configureCell:(id)cell forIndexPath:(id)path;
- (void)dealloc;
- (void)reloadCellContexts;
- (void)reloadData;
- (void)setStructuredPage:(id)page;
@end

@implementation SUStructuredPageTableDataSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUStructuredPageTableDataSource;
  [(SUTableDataSource *)&v3 dealloc];
}

- (Class)cellClassForItem:(id)item reuseIdentifier:(id *)identifier
{
  itemType = [item itemType];
  result = objc_opt_class();
  if (identifier)
  {
    v7 = @"su0";
    if (itemType == 8)
    {
      v7 = @"su1";
    }

    *identifier = v7;
  }

  return result;
}

- (Class)cellConfigurationClassForItem:(id)item
{
  itemType = [item itemType];
  if (itemType <= 8)
  {
    if ((itemType - 4) < 2 || itemType == 8)
    {
      goto LABEL_8;
    }

LABEL_11:
    NSLog(&cfstr_UnknownItemTyp.isa, [item itemType]);
    return 0;
  }

  if (itemType != 9 && itemType != 10)
  {
    goto LABEL_11;
  }

LABEL_8:

  return objc_opt_class();
}

- (id)cellConfigurationForIndex:(int64_t)index item:(id)item
{
  v7 = [(SUStructuredPageTableDataSource *)self cellConfigurationClassForItem:item];
  if (!v7)
  {
    return 0;
  }

  v8 = [(SUTableDataSource *)self cachedConfigurationForClass:v7 index:index];
  [v8 setRepresentedObject:item];
  return v8;
}

- (void)setStructuredPage:(id)page
{
  structuredPage = self->_structuredPage;
  if (structuredPage != page)
  {

    pageCopy = page;
    self->_structuredPage = pageCopy;
    itemList = [(SUStructuredPage *)pageCopy itemList];
    v8 = [(SUStructuredPageTableDataSource *)self tableViewStyle]!= 1;

    [(SUItemList *)itemList setIgnoresEmptySections:v8];
  }
}

- (BOOL)canDeleteIndexPath:(id)path
{
  if ([objc_msgSend(-[SUItemList itemAtIndexPath:](-[SUStructuredPage itemList](self->_structuredPage "itemList")])
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SUStructuredPageTableDataSource;
  return [(SUTableDataSource *)&v6 canDeleteIndexPath:path];
}

- (BOOL)canSelectIndexPath:(id)path
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

- (id)cellForIndexPath:(id)path
{
  v8 = 0;
  v4 = [(SUStructuredPageTableDataSource *)self cellClassForItem:[(SUItemList *)[(SUStructuredPage *)self->_structuredPage itemList] itemAtIndexPath:path] reuseIdentifier:&v8];
  cellReuseSource = [(SUTableDataSource *)self cellReuseSource];
  result = [cellReuseSource dequeueReusableCellWithIdentifier:v8];
  if (!result)
  {
    v7 = [v4 alloc];
    return [v7 initWithStyle:0 reuseIdentifier:v8];
  }

  return result;
}

- (double)cellHeightForIndexPath:(id)path
{
  v4 = [(SUItemList *)[(SUStructuredPage *)self->_structuredPage itemList] itemAtIndexPath:path];
  v5 = [(SUStructuredPageTableDataSource *)self cellConfigurationClassForItem:v4];
  v6 = [-[SUVariableCellConfigurationCache cacheForClass:](self->super._configurationCache cacheForClass:{v5), "cellContext"}];
  [v6 setTableViewStyle:{-[SUStructuredPageTableDataSource tableViewStyle](self, "tableViewStyle")}];

  [(objc_class *)v5 rowHeightForContext:v6 representedObject:v4];
  return result;
}

- (void)configureCell:(id)cell forIndexPath:(id)path
{
  cellReuseSource = [(SUTableDataSource *)self cellReuseSource];
  itemList = [(SUStructuredPage *)self->_structuredPage itemList];
  v9 = [(SUItemList *)itemList itemAtIndexPath:path];
  if ([(SUStructuredPageTableDataSource *)self _shouldShowItemOfferButtonForItem:v9])
  {
    v10 = [(SUStructuredPageTableDataSource *)self _itemOfferButtonForCell:cell item:v9];
    if ([v10 isShowingConfirmation])
    {
      [v10 setShowingConfirmation:0 duration:0.0];
      [cell setNeedsLayout];
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [cellReuseSource globalRowForRowAtIndexPath:path];
  v12 = [(SUStructuredPageTableDataSource *)self cellConfigurationForIndex:v11 item:v9];
  [cell setAccessoryView:v10];
  [cell setConfiguration:v12];
  v13 = self->_style == 1 && [v9 itemType] == 3;
  [cell setHighlightsOnlyContentView:v13];
  v18[0] = [path row];
  v18[1] = [-[SUItemList itemsForSectionAtIndex:](itemList itemsForSectionAtIndex:{objc_msgSend(path, "section")), "count"}];
  v18[2] = v11;
  v18[3] = [(SUItemList *)itemList numberOfItems];
  [cell setPosition:v18];
  itemType = [v9 itemType];
  if (itemType <= 3)
  {
    if (itemType == 1)
    {
      [cell setAccessoryType:0];
      [cell setHighlightsOnlyContentView:{-[SUStructuredPageTableDataSource canSelectIndexPath:](self, "canSelectIndexPath:", path)}];
      return;
    }

    if (itemType != 2)
    {
      if (itemType == 3 && self->_style == 1)
      {
        [cell setAccessoryType:0];
        goto LABEL_24;
      }

LABEL_18:
      v17 = !v10 && ![(SUStructuredPage *)self->_structuredPage wantsIndexBar];
      [cell setAccessoryType:v17];
      [cell setDrawAsDisabled:0];
      [cell setHighlightsOnlyContentView:0];
      if ([v10 isUserInteractionEnabled])
      {
        v16 = 1;
LABEL_25:
        cellCopy3 = cell;
        goto LABEL_29;
      }

LABEL_24:
      v16 = [(SUStructuredPageTableDataSource *)self canSelectIndexPath:path];
      goto LABEL_25;
    }

    [cell setAccessoryType:0];
LABEL_28:
    cellCopy3 = cell;
    v16 = 0;
    goto LABEL_29;
  }

  if ((itemType - 9) < 2)
  {
    [cell setAccessoryType:0];
    [cell setDrawAsDisabled:0];
    goto LABEL_28;
  }

  if (itemType == 4)
  {
    [cell setAccessoryType:0];
    [(SUStructuredPageTableDataSource *)self _configureLoadMoreCell:cell forItem:v9];
    return;
  }

  if (itemType != 8)
  {
    goto LABEL_18;
  }

  [cell setAccessoryType:0];
  [cell setBackgroundView:0];
  cellCopy3 = cell;
  v16 = 1;
LABEL_29:
  [cellCopy3 setUserInteractionEnabled:v16];
}

- (BOOL)deleteIndexPath:(id)path
{
  itemList = [(SUStructuredPage *)self->_structuredPage itemList];
  v6 = [-[SUItemList itemAtIndexPath:](itemList itemAtIndexPath:{path), "firstItemLinkForType:", 4}];
  if ([v6 URL])
  {
    v7 = objc_alloc_init(MEMORY[0x1E69E47E0]);
    v8 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:{objc_msgSend(v6, "URL")}];
    [v7 setRequestProperties:v8];
    [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];

    [(SUItemList *)itemList removeItemAtIndexPath:path];
    return 1;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SUStructuredPageTableDataSource;
    return [(SUTableDataSource *)&v10 deleteIndexPath:path];
  }
}

- (id)headerViewForSection:(int64_t)section
{
  if ([(NSMutableArray *)self->_cachedHeaderViews count]> section && (v5 = [(NSMutableArray *)self->_cachedHeaderViews objectAtIndex:section]) != 0 && (v6 = v5, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (v6 = [(SUStructuredPageTableDataSource *)self newHeaderViewForSection:section]) != 0)
  {
    if (!self->_cachedHeaderViews)
    {
      self->_cachedHeaderViews = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    null = [MEMORY[0x1E695DFB0] null];
    while ([(NSMutableArray *)self->_cachedHeaderViews count]<= section)
    {
      [(NSMutableArray *)self->_cachedHeaderViews addObject:null];
    }

    [(NSMutableArray *)self->_cachedHeaderViews replaceObjectAtIndex:section withObject:v6];
  }

  return v6;
}

- (int64_t)numberOfSections
{
  itemList = [(SUStructuredPage *)self->_structuredPage itemList];

  return [(SUItemList *)itemList numberOfSections];
}

- (int64_t)numberOfRowsInSection:(int64_t)section
{
  v3 = [(SUItemList *)[(SUStructuredPage *)self->_structuredPage itemList] itemsForSectionAtIndex:section];

  return [v3 count];
}

- (void)reloadCellContexts
{
  v27 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = SUStructuredPageTableDataSource;
  [(SUTableDataSource *)&v25 reloadCellContexts];
  imageCache = [(SUTableDataSource *)self imageCache];
  imagePool = [(SUTableDataSource *)self imagePool];
  v5 = objc_alloc_init(SUItemCellContext);
  [(SUArtworkCellContext *)v5 setImageCache:imageCache];
  v19 = imagePool;
  [(SUArtworkCellContext *)v5 setImagePool:imagePool];
  [(SUVariableCellConfigurationCache *)self->super._configurationCache setCellContext:v5];

  copyItems = [(SUItemList *)[(SUStructuredPage *)self->_structuredPage itemList] copyItems];
  v7 = objc_alloc_init(SUItemOfferButton);
  self->_offerButtonWidth = 0.0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = copyItems;
  v8 = [copyItems countByEnumeratingWithState:&v21 objects:v26 count:16];
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
          copyDefaultContext = [(objc_class *)v13 copyDefaultContext];
          [copyDefaultContext setImageCache:imageCache];
          [copyDefaultContext setImagePool:v19];
          [v14 setCellContext:copyDefaultContext];
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

- (int64_t)sectionIndexForIndexTitle:(id)title atIndex:(int64_t)index
{
  itemList = [(SUStructuredPage *)self->_structuredPage itemList];

  return [(SUItemList *)itemList sectionIndexForIndexTitle:title atIndex:index];
}

- (id)sectionIndexTitles
{
  if (![(SUStructuredPage *)self->_structuredPage wantsIndexBar])
  {
    return 0;
  }

  itemList = [(SUStructuredPage *)self->_structuredPage itemList];

  return [(SUItemList *)itemList sectionIndexTitles];
}

- (id)titleForDeleteConfirmationForIndexPath:(id)path
{
  result = [objc_msgSend(-[SUItemList itemAtIndexPath:](-[SUStructuredPage itemList](self->_structuredPage "itemList")];
  if (!result)
  {
    v6.receiver = self;
    v6.super_class = SUStructuredPageTableDataSource;
    return [(SUTableDataSource *)&v6 titleForDeleteConfirmationForIndexPath:path];
  }

  return result;
}

- (id)titleForHeaderInSection:(int64_t)section
{
  v3 = [(SUItemList *)[(SUStructuredPage *)self->_structuredPage itemList] sectionItemForSectionAtIndex:section];

  return [v3 title];
}

- (void)_configureLoadMoreCell:(id)cell forItem:(id)item
{
  if (self->_activeLoadMoreItem == item)
  {
    accessoryView = [cell accessoryView];
    if (!accessoryView)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:2];
      [v6 sizeToFit];
      [v6 startAnimating];
      accessoryView = v6;
    }
  }

  else
  {
    accessoryView = 0;
  }

  [cell setAccessoryView:accessoryView];
  v7 = accessoryView != 0;
  v8 = accessoryView == 0;
  [cell setDrawAsDisabled:v7];

  [cell setUserInteractionEnabled:v8];
}

- (id)_itemOfferButtonForCell:(id)cell item:(id)item
{
  itemOfferButton = [cell itemOfferButton];
  [itemOfferButton addTarget:0 action:sel_itemOfferButtonAction_ forControlEvents:64];
  [itemOfferButton setAnimationHorizontalAlignment:2];
  [itemOfferButton configureForItem:item offer:{objc_msgSend(item, "defaultStoreOffer")}];
  [itemOfferButton frame];
  [itemOfferButton setFrame:?];
  return itemOfferButton;
}

- (BOOL)_shouldShowItemOfferButtonForItem:(id)item
{
  defaultStoreOffer = [item defaultStoreOffer];
  if (-[SUPurchaseManager itemIdentifierIsPurchased:](-[SUClientInterface purchaseManager](-[SUStructuredPageTableDataSource clientInterface](self, "clientInterface"), "purchaseManager"), "itemIdentifierIsPurchased:", [item itemIdentifier]))
  {
    return 0;
  }

  if (![defaultStoreOffer priceDisplay])
  {
    return 0;
  }

  actionType = [defaultStoreOffer actionType];
  if (![actionType isEqualToString:*MEMORY[0x1E69D4D08]])
  {
    return 0;
  }

  return [(SUStructuredPageTableDataSource *)self canShowItemOfferButtonForItem:item];
}

@end