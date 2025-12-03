@interface SUStructuredPageGroupedTableDataSource
- (BOOL)canShowItemOfferButtonForItem:(id)item;
- (Class)cellClassForItem:(id)item reuseIdentifier:(id *)identifier;
- (Class)cellConfigurationClassForItem:(id)item;
- (double)heightForFooterInSection:(int64_t)section;
- (id)_subtitleForSectionIndex:(int64_t)index;
- (id)newHeaderViewForSection:(int64_t)section;
- (int64_t)tableViewStyle;
- (void)configureCell:(id)cell forIndexPath:(id)path;
- (void)reloadCellContexts;
@end

@implementation SUStructuredPageGroupedTableDataSource

- (BOOL)canShowItemOfferButtonForItem:(id)item
{
  itemType = [item itemType];
  v6 = (itemType - 1005) > 6 || itemType == 1010;
  if (v6 && itemType != 4000 && itemType != 11)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = SUStructuredPageGroupedTableDataSource;
  return [(SUStructuredPageTableDataSource *)&v8 canShowItemOfferButtonForItem:item];
}

- (Class)cellClassForItem:(id)item reuseIdentifier:(id *)identifier
{
  if ([item itemType] == 1008 && objc_msgSend(item, "itemDisplayType") == 2)
  {
    if (identifier)
    {
      *identifier = @"sunp";
    }

    return objc_opt_class();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUStructuredPageGroupedTableDataSource;
    return [(SUStructuredPageTableDataSource *)&v8 cellClassForItem:item reuseIdentifier:identifier];
  }
}

- (Class)cellConfigurationClassForItem:(id)item
{
  itemType = [item itemType];
  if (itemType <= 1003)
  {
    if (itemType > 5)
    {
      if ((itemType - 1000) < 4 || itemType == 6)
      {
        goto LABEL_24;
      }

      if (itemType == 11)
      {
LABEL_5:
        if (self->super._style != 1)
        {
          [item itemDisplayType];
        }

        goto LABEL_24;
      }
    }

    else if ((itemType - 4) < 2 || itemType == 1 || itemType == 3)
    {
      goto LABEL_24;
    }

LABEL_23:
    v7.receiver = self;
    v7.super_class = SUStructuredPageGroupedTableDataSource;
    return [(SUStructuredPageTableDataSource *)&v7 cellConfigurationClassForItem:item];
  }

  if (itemType > 1999)
  {
    if (itemType == 4000 || itemType == 3000 || itemType == 2000)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((itemType - 1005) > 6)
  {
    if (itemType == 1004)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (((1 << (itemType + 19)) & 0x4D) != 0)
  {
    goto LABEL_5;
  }

LABEL_24:

  return objc_opt_class();
}

- (void)configureCell:(id)cell forIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = SUStructuredPageGroupedTableDataSource;
  [SUStructuredPageTableDataSource configureCell:sel_configureCell_forIndexPath_ forIndexPath:?];
  v7 = [-[SUItemList itemAtIndexPath:](-[SUStructuredPage itemList](self->super._structuredPage "itemList")];
  if ((v7 - 4) >= 2)
  {
    if (v7 == 6)
    {
      [cell setBackgroundView:0];
    }
  }

  else if (self->super._style != 2)
  {
    configuration = [cell configuration];
    if ([path row])
    {
      -[SUStructuredPageTableDataSource cellHeightForIndexPath:](self, "cellHeightForIndexPath:", [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(path inSection:{"row") - 1, objc_msgSend(path, "section")}]);
    }

    else
    {
      v9 = 0.0;
    }

    [configuration setPreviousCellHeight:v9];
  }
}

- (double)heightForFooterInSection:(int64_t)section
{
  v13.receiver = self;
  v13.super_class = SUStructuredPageGroupedTableDataSource;
  [(SUTableDataSource *)&v13 heightForFooterInSection:?];
  v6 = v5;
  itemList = [(SUStructuredPage *)self->super._structuredPage itemList];
  if ([(SUItemList *)itemList numberOfSections]- 1 > section && [(SUStructuredPageGroupedTableDataSource *)self tableViewStyle]== 1)
  {
    v8 = [(SUItemList *)itemList itemsForSectionAtIndex:section];
    v9 = [(SUItemList *)itemList itemsForSectionAtIndex:section + 1];
    if ([v8 count])
    {
      if ([v9 count])
      {
        lastObject = [v8 lastObject];
        v11 = [v9 objectAtIndex:0];
        if ([lastObject itemType] == 8 && objc_msgSend(v11, "itemType") == 8)
        {
          return 1.0;
        }
      }
    }
  }

  return v6;
}

- (id)newHeaderViewForSection:(int64_t)section
{
  if (![(SUStructuredPageGroupedTableDataSource *)self tableViewStyle])
  {
    return 0;
  }

  v5 = [-[SUItemList sectionItemForSectionAtIndex:](-[SUStructuredPage itemList](self->super._structuredPage "itemList")];
  v6 = [(SUStructuredPageGroupedTableDataSource *)self _subtitleForSectionIndex:section];
  if (![v5 length] && !objc_msgSend(v6, "length"))
  {
    return 0;
  }

  v7 = [SUTableHeaderView alloc];
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v8 = [(SUTableHeaderView *)v7 initWithFrame:?];
  -[SUTableHeaderView setBackgroundColor:](v8, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
  [(SUTableHeaderView *)v8 setIndex:section];
  [(SUTableHeaderView *)v8 setSubtitle:v6];
  [(SUTableHeaderView *)v8 setTitle:v5];
  [(SUTableHeaderView *)v8 setUserInteractionEnabled:0];
  [(SUTableHeaderView *)v8 sizeToFit];
  return v8;
}

- (void)reloadCellContexts
{
  selfCopy = self;
  v72 = *MEMORY[0x1E69E9840];
  v68.receiver = self;
  v68.super_class = SUStructuredPageGroupedTableDataSource;
  [(SUStructuredPageTableDataSource *)&v68 reloadCellContexts];
  caches = [(SUVariableCellConfigurationCache *)selfCopy->super.super._configurationCache caches];
  artworkShouldFitWidth = [(SUStructuredPage *)selfCopy->super._structuredPage artworkShouldFitWidth];
  v55 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v42 = selfCopy;
  if (selfCopy->super._style == 1)
  {
    v4 = 0;
    v5 = 2;
    goto LABEL_45;
  }

  copyItems = [(SUItemList *)[(SUStructuredPage *)selfCopy->super._structuredPage itemList] copyItems];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = copyItems;
  v48 = [copyItems countByEnumeratingWithState:&v64 objects:v71 count:16];
  v4 = 0;
  if (!v48)
  {
    v5 = 2;
    goto LABEL_44;
  }

  v7 = 0;
  v8 = 0;
  v47 = *v65;
  v45 = *MEMORY[0x1E69D4CE8];
  v44 = *MEMORY[0x1E69D4D00];
  do
  {
    v9 = 0;
    do
    {
      if (*v65 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v64 + 1) + 8 * v9);
      itemMediaKind = [v10 itemMediaKind];
      v12 = itemMediaKind;
      if (v8)
      {
        v13 = 1;
        if ((v7 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = [itemMediaKind isEqualToString:v45];
        if ((v7 & 1) == 0)
        {
LABEL_10:
          v50 = [v12 isEqualToString:v44];
          goto LABEL_13;
        }
      }

      v50 = 1;
LABEL_13:
      itemImageCollection = [v10 itemImageCollection];
      v15 = itemImageCollection;
      v49 = v13;
      v16 = (v4 & 1) != 0 || [objc_msgSend(itemImageCollection "itemImages")] != 0;
      v53 = v16;
      if (artworkShouldFitWidth)
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v17 = [(NSArray *)caches countByEnumeratingWithState:&v60 objects:v70 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v61;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v61 != v19)
              {
                objc_enumerationMutation(caches);
              }

              cellContext = [*(*(&v60 + 1) + 8 * i) cellContext];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                imageProvider = [cellContext imageProvider];
                if (imageProvider)
                {
                  [imageProvider finalSize];
                  v23 = [v15 bestImageForSize:?];
                  if (v23)
                  {
                    v24 = v23;
                    [cellContext artworkWidth];
                    v26 = v25;
                    width = [v24 width];
                    if (v26 >= width)
                    {
                      width = v26;
                    }

                    [cellContext setArtworkWidth:width];
                  }
                }
              }
            }

            v18 = [(NSArray *)caches countByEnumeratingWithState:&v60 objects:v70 count:16];
          }

          while (v18);
        }
      }

      itemType = [v10 itemType];
      if (SUItemTypeIsMediaType(itemType) || itemType == 11 || itemType == 4000 || itemType == 3000)
      {
        [v55 addIndex:itemType];
      }

      ++v9;
      v4 = v53;
      v8 = v49;
      v7 = v50;
    }

    while (v9 != v48);
    v29 = [obj countByEnumeratingWithState:&v64 objects:v71 count:16];
    v48 = v29;
  }

  while (v29);
  if ((v50 & v49) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  selfCopy = v42;
LABEL_44:

LABEL_45:
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v30 = [(NSArray *)caches countByEnumeratingWithState:&v56 objects:v69 count:16, v42];
  if (v30)
  {
    v31 = v30;
    v32 = *v57;
    v54 = v4;
    v51 = v5;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v57 != v32)
        {
          objc_enumerationMutation(caches);
        }

        cellContext2 = [*(*(&v56 + 1) + 8 * j) cellContext];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (selfCopy->super._style == 1)
          {
            v35 = 0;
          }

          else
          {
            v35 = v5;
          }

          [cellContext2 setHiddenMediaIconTypes:v35];
          [cellContext2 setItemsHaveArtwork:v4];
          if ([v55 count] == 1)
          {
            firstIndex = [v55 firstIndex];
            if (firstIndex == 3000)
            {
              v37 = @"PlaceholderBookPoster.png";
LABEL_59:
              imageProvider2 = [cellContext2 imageProvider];
              [imageProvider2 setFinalSize:{58.0, 88.0}];
              v39 = [imageProvider2 newImageFromImage:{objc_msgSend(MEMORY[0x1E69DCAB8], "imageNamed:inBundle:", v37, objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()))}];
              [cellContext2 setPlaceholderImage:v39];

              selfCopy = v43;
              v4 = v54;
              v5 = v51;
            }

            else if (firstIndex == 1002)
            {
              v37 = @"PlaceholderVideoPoster.png";
              goto LABEL_59;
            }
          }

          [(SUStructuredPage *)selfCopy->super._structuredPage artworkWidth];
          v41 = v40 <= 0.00000011920929 || artworkShouldFitWidth;
          if ((v41 & 1) == 0)
          {
            [cellContext2 setArtworkWidth:?];
          }

          continue;
        }
      }

      v31 = [(NSArray *)caches countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v31);
  }
}

- (int64_t)tableViewStyle
{
  if (![(SUStructuredPage *)self->super._structuredPage displayStyle])
  {
    return self->super._style != 2;
  }

  v4.receiver = self;
  v4.super_class = SUStructuredPageGroupedTableDataSource;
  return [(SUStructuredPageTableDataSource *)&v4 tableViewStyle];
}

- (id)_subtitleForSectionIndex:(int64_t)index
{
  itemList = [(SUStructuredPage *)self->super._structuredPage itemList];
  v6 = [(SUItemList *)itemList itemsForSectionAtIndex:index];
  v7 = [v6 count];
  if (v7 < 1)
  {
    return 0;
  }

  v8 = v7;
  v9 = 0;
  LOBYTE(v10) = 0;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v12 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:index];
    v10 = v10 || [(SUTableDataSource *)self canDoubleTapIndexPath:v12];
    v13 = [objc_msgSend(v6 objectAtIndex:{v9), "itemType"}];
    IsMediaType = SUItemTypeIsMediaType(v13);
    if (v13 == v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = v13;
    }

    if (IsMediaType)
    {
      v11 = v15;
    }

    ++v9;
  }

  while (v8 != v9);
  if (!v10)
  {
    return 0;
  }

  if (v11 == 1008)
  {
    v16 = @"song";
  }

  else
  {
    v16 = @"ringtone";
    if (v11 != 1011 && v11 != 1005)
    {
      result = [(SUItemList *)itemList hintTextForKey:@"*"];
      if (result)
      {
        return result;
      }

LABEL_26:
      v18 = @"DOUBLE_TAP_GENERIC_HINT";
      goto LABEL_27;
    }
  }

  result = [(SUItemList *)itemList hintTextForKey:v16];
  if (result)
  {
    return result;
  }

  result = [(SUItemList *)itemList hintTextForKey:@"*"];
  if (result)
  {
    return result;
  }

  if (v11 != 1008)
  {
    goto LABEL_26;
  }

  v18 = @"DOUBLE_TAP_HINT";
LABEL_27:
  v19 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return [v19 localizedStringForKey:v18 value:&stru_1F41B3660 table:0];
}

@end