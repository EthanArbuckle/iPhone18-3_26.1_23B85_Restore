@interface SUStructuredPageGroupedTableDataSource
- (BOOL)canShowItemOfferButtonForItem:(id)a3;
- (Class)cellClassForItem:(id)a3 reuseIdentifier:(id *)a4;
- (Class)cellConfigurationClassForItem:(id)a3;
- (double)heightForFooterInSection:(int64_t)a3;
- (id)_subtitleForSectionIndex:(int64_t)a3;
- (id)newHeaderViewForSection:(int64_t)a3;
- (int64_t)tableViewStyle;
- (void)configureCell:(id)a3 forIndexPath:(id)a4;
- (void)reloadCellContexts;
@end

@implementation SUStructuredPageGroupedTableDataSource

- (BOOL)canShowItemOfferButtonForItem:(id)a3
{
  v5 = [a3 itemType];
  v6 = (v5 - 1005) > 6 || v5 == 1010;
  if (v6 && v5 != 4000 && v5 != 11)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = SUStructuredPageGroupedTableDataSource;
  return [(SUStructuredPageTableDataSource *)&v8 canShowItemOfferButtonForItem:a3];
}

- (Class)cellClassForItem:(id)a3 reuseIdentifier:(id *)a4
{
  if ([a3 itemType] == 1008 && objc_msgSend(a3, "itemDisplayType") == 2)
  {
    if (a4)
    {
      *a4 = @"sunp";
    }

    return objc_opt_class();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SUStructuredPageGroupedTableDataSource;
    return [(SUStructuredPageTableDataSource *)&v8 cellClassForItem:a3 reuseIdentifier:a4];
  }
}

- (Class)cellConfigurationClassForItem:(id)a3
{
  v5 = [a3 itemType];
  if (v5 <= 1003)
  {
    if (v5 > 5)
    {
      if ((v5 - 1000) < 4 || v5 == 6)
      {
        goto LABEL_24;
      }

      if (v5 == 11)
      {
LABEL_5:
        if (self->super._style != 1)
        {
          [a3 itemDisplayType];
        }

        goto LABEL_24;
      }
    }

    else if ((v5 - 4) < 2 || v5 == 1 || v5 == 3)
    {
      goto LABEL_24;
    }

LABEL_23:
    v7.receiver = self;
    v7.super_class = SUStructuredPageGroupedTableDataSource;
    return [(SUStructuredPageTableDataSource *)&v7 cellConfigurationClassForItem:a3];
  }

  if (v5 > 1999)
  {
    if (v5 == 4000 || v5 == 3000 || v5 == 2000)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if ((v5 - 1005) > 6)
  {
    if (v5 == 1004)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (((1 << (v5 + 19)) & 0x4D) != 0)
  {
    goto LABEL_5;
  }

LABEL_24:

  return objc_opt_class();
}

- (void)configureCell:(id)a3 forIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = SUStructuredPageGroupedTableDataSource;
  [SUStructuredPageTableDataSource configureCell:sel_configureCell_forIndexPath_ forIndexPath:?];
  v7 = [-[SUItemList itemAtIndexPath:](-[SUStructuredPage itemList](self->super._structuredPage "itemList")];
  if ((v7 - 4) >= 2)
  {
    if (v7 == 6)
    {
      [a3 setBackgroundView:0];
    }
  }

  else if (self->super._style != 2)
  {
    v8 = [a3 configuration];
    if ([a4 row])
    {
      -[SUStructuredPageTableDataSource cellHeightForIndexPath:](self, "cellHeightForIndexPath:", [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(a4 inSection:{"row") - 1, objc_msgSend(a4, "section")}]);
    }

    else
    {
      v9 = 0.0;
    }

    [v8 setPreviousCellHeight:v9];
  }
}

- (double)heightForFooterInSection:(int64_t)a3
{
  v13.receiver = self;
  v13.super_class = SUStructuredPageGroupedTableDataSource;
  [(SUTableDataSource *)&v13 heightForFooterInSection:?];
  v6 = v5;
  v7 = [(SUStructuredPage *)self->super._structuredPage itemList];
  if ([(SUItemList *)v7 numberOfSections]- 1 > a3 && [(SUStructuredPageGroupedTableDataSource *)self tableViewStyle]== 1)
  {
    v8 = [(SUItemList *)v7 itemsForSectionAtIndex:a3];
    v9 = [(SUItemList *)v7 itemsForSectionAtIndex:a3 + 1];
    if ([v8 count])
    {
      if ([v9 count])
      {
        v10 = [v8 lastObject];
        v11 = [v9 objectAtIndex:0];
        if ([v10 itemType] == 8 && objc_msgSend(v11, "itemType") == 8)
        {
          return 1.0;
        }
      }
    }
  }

  return v6;
}

- (id)newHeaderViewForSection:(int64_t)a3
{
  if (![(SUStructuredPageGroupedTableDataSource *)self tableViewStyle])
  {
    return 0;
  }

  v5 = [-[SUItemList sectionItemForSectionAtIndex:](-[SUStructuredPage itemList](self->super._structuredPage "itemList")];
  v6 = [(SUStructuredPageGroupedTableDataSource *)self _subtitleForSectionIndex:a3];
  if (![v5 length] && !objc_msgSend(v6, "length"))
  {
    return 0;
  }

  v7 = [SUTableHeaderView alloc];
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  v8 = [(SUTableHeaderView *)v7 initWithFrame:?];
  -[SUTableHeaderView setBackgroundColor:](v8, "setBackgroundColor:", [MEMORY[0x1E69DC888] clearColor]);
  [(SUTableHeaderView *)v8 setIndex:a3];
  [(SUTableHeaderView *)v8 setSubtitle:v6];
  [(SUTableHeaderView *)v8 setTitle:v5];
  [(SUTableHeaderView *)v8 setUserInteractionEnabled:0];
  [(SUTableHeaderView *)v8 sizeToFit];
  return v8;
}

- (void)reloadCellContexts
{
  v2 = self;
  v72 = *MEMORY[0x1E69E9840];
  v68.receiver = self;
  v68.super_class = SUStructuredPageGroupedTableDataSource;
  [(SUStructuredPageTableDataSource *)&v68 reloadCellContexts];
  v3 = [(SUVariableCellConfigurationCache *)v2->super.super._configurationCache caches];
  v52 = [(SUStructuredPage *)v2->super._structuredPage artworkShouldFitWidth];
  v55 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v42 = v2;
  if (v2->super._style == 1)
  {
    v4 = 0;
    v5 = 2;
    goto LABEL_45;
  }

  v6 = [(SUItemList *)[(SUStructuredPage *)v2->super._structuredPage itemList] copyItems];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = v6;
  v48 = [v6 countByEnumeratingWithState:&v64 objects:v71 count:16];
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
      v11 = [v10 itemMediaKind];
      v12 = v11;
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
        v13 = [v11 isEqualToString:v45];
        if ((v7 & 1) == 0)
        {
LABEL_10:
          v50 = [v12 isEqualToString:v44];
          goto LABEL_13;
        }
      }

      v50 = 1;
LABEL_13:
      v14 = [v10 itemImageCollection];
      v15 = v14;
      v49 = v13;
      v16 = (v4 & 1) != 0 || [objc_msgSend(v14 "itemImages")] != 0;
      v53 = v16;
      if (v52)
      {
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v17 = [(NSArray *)v3 countByEnumeratingWithState:&v60 objects:v70 count:16];
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
                objc_enumerationMutation(v3);
              }

              v21 = [*(*(&v60 + 1) + 8 * i) cellContext];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v22 = [v21 imageProvider];
                if (v22)
                {
                  [v22 finalSize];
                  v23 = [v15 bestImageForSize:?];
                  if (v23)
                  {
                    v24 = v23;
                    [v21 artworkWidth];
                    v26 = v25;
                    v27 = [v24 width];
                    if (v26 >= v27)
                    {
                      v27 = v26;
                    }

                    [v21 setArtworkWidth:v27];
                  }
                }
              }
            }

            v18 = [(NSArray *)v3 countByEnumeratingWithState:&v60 objects:v70 count:16];
          }

          while (v18);
        }
      }

      v28 = [v10 itemType];
      if (SUItemTypeIsMediaType(v28) || v28 == 11 || v28 == 4000 || v28 == 3000)
      {
        [v55 addIndex:v28];
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

  v2 = v42;
LABEL_44:

LABEL_45:
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v30 = [(NSArray *)v3 countByEnumeratingWithState:&v56 objects:v69 count:16, v42];
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
          objc_enumerationMutation(v3);
        }

        v34 = [*(*(&v56 + 1) + 8 * j) cellContext];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v2->super._style == 1)
          {
            v35 = 0;
          }

          else
          {
            v35 = v5;
          }

          [v34 setHiddenMediaIconTypes:v35];
          [v34 setItemsHaveArtwork:v4];
          if ([v55 count] == 1)
          {
            v36 = [v55 firstIndex];
            if (v36 == 3000)
            {
              v37 = @"PlaceholderBookPoster.png";
LABEL_59:
              v38 = [v34 imageProvider];
              [v38 setFinalSize:{58.0, 88.0}];
              v39 = [v38 newImageFromImage:{objc_msgSend(MEMORY[0x1E69DCAB8], "imageNamed:inBundle:", v37, objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()))}];
              [v34 setPlaceholderImage:v39];

              v2 = v43;
              v4 = v54;
              v5 = v51;
            }

            else if (v36 == 1002)
            {
              v37 = @"PlaceholderVideoPoster.png";
              goto LABEL_59;
            }
          }

          [(SUStructuredPage *)v2->super._structuredPage artworkWidth];
          v41 = v40 <= 0.00000011920929 || v52;
          if ((v41 & 1) == 0)
          {
            [v34 setArtworkWidth:?];
          }

          continue;
        }
      }

      v31 = [(NSArray *)v3 countByEnumeratingWithState:&v56 objects:v69 count:16];
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

- (id)_subtitleForSectionIndex:(int64_t)a3
{
  v5 = [(SUStructuredPage *)self->super._structuredPage itemList];
  v6 = [(SUItemList *)v5 itemsForSectionAtIndex:a3];
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
    v12 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:a3];
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
      result = [(SUItemList *)v5 hintTextForKey:@"*"];
      if (result)
      {
        return result;
      }

LABEL_26:
      v18 = @"DOUBLE_TAP_GENERIC_HINT";
      goto LABEL_27;
    }
  }

  result = [(SUItemList *)v5 hintTextForKey:v16];
  if (result)
  {
    return result;
  }

  result = [(SUItemList *)v5 hintTextForKey:@"*"];
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